from typing import List, Tuple, Union

import numpy as np
import keras
import itertools

from models.interfaces import UniversalGenerator
from ._helpers import encode_int, encode_chord, encode_pitch, weighted_nlargest
from music import Chord, ChordProgression, Note
from helpers import nwise, nwise_disjoint


class TwoLayer(UniversalGenerator):

    def __init__(self, changes: ChordProgression, order=3):
        """ :param changes: the chord progression to use when generating the output melody """
        self._order = order
        self.changes = changes
        self.chord_lookahead = 2
        self.model = None  # type: keras.models.Model
        self.past = []  # type: List[Note]
        self.current_beat = 0
        self.maxtsbq = 0
        self.maxdq = 0
        self.outfun = weighted_nlargest  # choice function for the output of the output layers

    @property
    def order(self) -> int:
        return self._order

    @property
    def chord_order(self):
        return self.chord_lookahead + 1

    def _build_net(self):
        input_tensor = keras.layers.Input(shape=self.inputshape())
        hidden_tensor1 = keras.layers.Dense(800, activation='relu')(input_tensor)
        hidden_tensor2 = keras.layers.Dense(800, activation='relu')(hidden_tensor1)

        pitch_tensor = keras.layers.Dense(127, activation='softmax')(hidden_tensor2)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation='softmax')(hidden_tensor2)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation='softmax')(hidden_tensor2)

        self.model = keras.models.Model(inputs=input_tensor, outputs=[pitch_tensor, tsbq_tensor, dq_tensor])
        self.model.compile(optimizer='adagrad', loss='categorical_crossentropy')

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

    def _all_training_data(self, training_set: List[Union[Tuple[List[Note], ChordProgression]]]) ->\
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
        self._build_net()
        x, p, t, d = self._all_training_data(training_set)
        self.model.fit(x, [p, t, d])

    def start(self, beat: int):
        self.current_beat = beat

    def next(self) -> Tuple[int, int, int]:
        i = self.current_beat
        j = i + self.chord_order
        encoded_input = np.array([self._encode_network_input(self.past, self.changes[i:j])])
        ret = tuple(self.outfun(arr.ravel()) for arr in self.model.predict(encoded_input))
        return ret

    def add_past(self, *notes: List[Note]):
        self.past += notes
        self.past = self.past[-self.order:]
