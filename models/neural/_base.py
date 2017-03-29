from abc import ABCMeta, abstractmethod
from typing import List, Tuple, Union
import itertools

import numpy as np
import keras

from helpers import nwise_disjoint, nwise
from models.interfaces import UniversalGenerator, MelodyAndRhythmGenerator
from ._helpers import encode_int, encode_pitch, encode_chord, sampler
from music import ChordProgression, Note, Chord


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
        self.outfuns = (sampler(1.5),)*3  # choice functions for the output layers
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

    def _encode_network_input(self, past: List[Note], chords: List[Chord]) -> np.ndarray:
        """ 1-of-N binary encoding of a complete input to the network: past notes, present and future chords """
        assert len(past) == self.order
        assert len(chords) == self.chord_order

        def lsum(x):
            return list(itertools.chain(*x))

        return np.array(lsum((encode_pitch(note)
                              + encode_int(note.ticks_since_beat_quantised, self.maxtsbq + 1)
                              + encode_int(note.duration_quantised, self.maxdq + 1)
                              for note in past))
                        + lsum(encode_chord(chord) for chord in chords))

    def inputshape(self) -> Tuple[int]:
        """ Generates a dummy input matrix for the network and returns its shape.

        Don't remove the comma! """
        return len(self._encode_network_input([Note()] * self.order, [Chord.parse('C7')] * self.chord_order)),

    def _all_training_data(self, training_set: List[Union[Tuple[List[Note], ChordProgression]]]) -> \
            Tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
        """ 1-of-N binary encoding of all pairs of inputs (past notes and current chord) and outputs (next note)
        on the training set """
        x, p, t, d = [], [], [], []
        for notes, changes in nwise_disjoint(training_set, 2):
            for v in nwise(notes, self.order + 1):
                i = v[-1].beat - 1
                j = i + self.chord_order
                x.append(self._encode_network_input(v[:self.order], changes[i:j]))
                p.append(encode_int(v[-1].pitch, 127))
                t.append(encode_int(v[-1].ticks_since_beat_quantised, self.maxtsbq + 1))
                d.append(encode_int(v[-1].duration_quantised, self.maxdq + 1))
        return np.array(x), np.array(p), np.array(t), np.array(d)

    def learn(self, *training_set: List[Union[Tuple[List[Note], ChordProgression]]]):
        self.maxtsbq = max(n.ticks_since_beat_quantised for notes, _ in nwise_disjoint(training_set, 2) for n in notes)
        self.maxdq = max(n.duration_quantised for notes, changes in nwise_disjoint(training_set, 2) for n in notes)
        self.model = self._build_net()
        self.pitch_model = keras.models.Model(inputs=self.model.input, outputs=self.model.outputs[0])
        self.tsbq_model = keras.models.Model(inputs=self.model.input, outputs=self.model.outputs[1])
        self.dq_model = keras.models.Model(inputs=self.model.input, outputs=self.model.outputs[2])
        x, p, t, d = self._all_training_data(training_set)
        self.model.fit(x, [p, t, d], epochs=self.epochs)

    def start(self, beat: int):
        self.current_beat = beat

    def next(self) -> Tuple[int, int, int]:
        i = self.current_beat
        j = i + self.chord_order
        encoded_input = np.array([self._encode_network_input(self.past, self.changes[i:j])])
        ret = tuple(fun(arr.ravel()) for fun, arr in zip(self.outfuns, self.model.predict(encoded_input)))
        return ret

    def next_pitch(self) -> int:
        i = self.current_beat
        j = i + self.chord_order
        encoded_input = np.array([self._encode_network_input(self.past, self.changes[i:j])])
        return self.outfuns[0](self.pitch_model.predict(encoded_input).ravel())

    def next_rhythm(self) -> Tuple[int, int]:
        i = self.current_beat
        j = i + self.chord_order
        encoded_input = np.array([self._encode_network_input(self.past, self.changes[i:j])])
        tsbq = self.outfuns[1](self.tsbq_model.predict(encoded_input).ravel())
        dq = self.outfuns[2](self.dq_model.predict(encoded_input).ravel())
        return tsbq, dq

    def add_past(self, *notes: List[Note]):
        self.past += notes
        self.past = self.past[-self.order:]
