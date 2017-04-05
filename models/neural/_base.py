from abc import ABCMeta, abstractmethod

import keras
import numpy as np
from typing import List, Tuple, Union

from helpers import nwise_disjoint, nwise
from models.interfaces import UniversalGenerator, MelodyAndRhythmGenerator
from music import ChordProgression, Note, Chord
from ._helpers import encode_int, encode_pitch, encode_chord, sampler, lsum


class NeuralBase(UniversalGenerator, MelodyAndRhythmGenerator, metaclass=ABCMeta):
    """ Base class for all neural network based models.
        Contains all the code necessary to process the training set and generate outputs.
        This way the only code you have to implement in derived classes is the actual neural architecture. """

    def __init__(self, changes: ChordProgression, order=3):
        """ :param changes: the chord progression to use when generating the output melody """
        self._order = order
        self.changes = changes
        self.chord_lookahead = 2
        self.model = None  # type: keras.models.Model
        self.pitch_model = None  # type: keras.models.Model
        self.tsbq_model = None  # type: keras.models.Model
        self.dq_model = None  # type: keras.models.Model
        self.past = []  # type: List[Note]
        self.current_beat = 0
        self.maxtsbq = 0
        self.maxdq = 0
        self.outfuns = (sampler(1.5),) * 3  # choice functions for the output layers
        self.epochs = 1

    @property
    def order(self) -> int:
        return self._order

    @property
    def chord_order(self):
        return self.chord_lookahead + 1

    @abstractmethod
    def _build_net(self) -> keras.models.Model:
        """ You have to implement this method in the derived classes.
        
        :return: A Keras Model whose input tensor's shape is self.inputshape()
        and who has three output tensors corresponding to pitch, tsbq and dq
        """
        pass

    def _encode_network_input(self, past: List[Note], chords: List[Chord]) -> List[np.ndarray]:
        """ 1-of-N binary encoding of a complete input to the network: past notes, present and future chords """
        assert len(past) == self.order
        assert len(chords) == self.chord_order

        return [np.array(lsum(encode_pitch(note)
                              + encode_int(note.ticks_since_beat_quantised, self.maxtsbq + 1)
                              + encode_int(note.duration_quantised, self.maxdq + 1)
                              for note in past)
                         + lsum(encode_chord(chord) for chord in chords), dtype=bool)]

    def _encoded_input_for_generation(self):
        i = self.current_beat
        j = i + self.chord_order
        ret = self._encode_network_input(self.past, self.changes[i:j])
        return np.array(ret)

    def inputshape(self) -> Tuple[int]:
        """ Generates a dummy input matrix for the network and returns its shape. """
        return self._encode_network_input([Note()] * self.order, [Chord.parse('C7')] * self.chord_order)[0].shape

    def _all_training_data(self, training_set: List[Union[Tuple[List[Note], ChordProgression]]]):
        """ 1-of-N binary encoding of all pairs of inputs (past notes and current chord) and outputs (next note)
        on the training set """
        x, p, t, d = [], [], [], []
        for notes, changes in nwise_disjoint(training_set, 2):
            for v in nwise(notes, self.order + 1):
                i = v[-1].beat - 1
                j = i + self.chord_order
                xx = self._encode_network_input(v[:self.order], changes[i:j])
                if not x:
                    x = [[] for _ in xx]
                for xi, xxi in zip(x, xx):
                    xi.append(xxi)
                p.append(encode_int(v[-1].pitch, 127))
                t.append(encode_int(v[-1].ticks_since_beat_quantised, self.maxtsbq + 1))
                d.append(encode_int(v[-1].duration_quantised, self.maxdq + 1))
        return [np.array(xi, dtype=bool) for xi in x], \
               [np.array(p, dtype=bool), np.array(t, dtype=bool), np.array(d, dtype=bool)]

    def learn(self, *training_set: List[Union[Tuple[List[Note], ChordProgression]]]):
        self.maxtsbq = max(n.ticks_since_beat_quantised for notes, _ in nwise_disjoint(training_set, 2) for n in notes)
        self.maxdq = max(n.duration_quantised for notes, changes in nwise_disjoint(training_set, 2) for n in notes)
        self.model = self._build_net()
        self.pitch_model = keras.models.Model(inputs=self.model.input, outputs=self.model.outputs[0])
        self.tsbq_model = keras.models.Model(inputs=self.model.input, outputs=self.model.outputs[1])
        self.dq_model = keras.models.Model(inputs=self.model.input, outputs=self.model.outputs[2])
        x, y = self._all_training_data(training_set)
        self.model.fit(x, y, epochs=self.epochs)

    def start(self, beat: int):
        self.current_beat = beat

    def next(self) -> Tuple[int, int, int]:
        encoded_input = self._encoded_input_for_generation()
        ret = tuple(fun(arr.ravel()) for fun, arr in zip(self.outfuns, self.model.predict(encoded_input)))
        return ret

    def next_pitch(self) -> int:
        encoded_input = self._encoded_input_for_generation()
        return self.outfuns[0](self.pitch_model.predict(encoded_input).ravel())

    def next_rhythm(self) -> Tuple[int, int]:
        encoded_input = self._encoded_input_for_generation()
        tsbq = self.outfuns[1](self.tsbq_model.predict(encoded_input).ravel())
        dq = self.outfuns[2](self.dq_model.predict(encoded_input).ravel())
        return tsbq, dq

    def add_past(self, *notes: List[Note]):
        self.past += notes
        self.past = self.past[-self.order:]
