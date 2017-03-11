from typing import List, Tuple

import numpy as np
import keras
import itertools

from models.interfaces import MelodyGenerator, RhythmGenerator
from ._helpers import encode_int, encode_chord, encode_pitch, weighted_nlargest
from music import Chord, ChordProgression, Note
from helpers import nwise


class OneLayer(MelodyGenerator, RhythmGenerator):
    """ Algorithmic improviser built on Keras.
    The implementation is a feedforward neural network with one hidden layer.
    A limitation is that it can only be trained and then ran on a fixed chord progression.
    """

    def __init__(self, changes: ChordProgression, order=3):
        self._order = order
        self.chord_lookahead = 2
        self.changes = changes
        self.model = None  # type: keras.models.Model
        self.pitch_model = None  # type: keras.models.Model
        self.tsbq_model = None  # type: keras.models.Model
        self.dq_model = None  # type: keras.models.Model
        self.past = None  # type: List[Note]
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
        hidden_tensor = keras.layers.Dense(800, activation='relu')(input_tensor)

        pitch_layer = keras.layers.Dense(127, activation='softmax')
        tsbq_layer = keras.layers.Dense(self.maxtsbq + 1, activation='softmax')
        dq_layer = keras.layers.Dense(self.maxdq + 1, activation='softmax')

        pitch_tensor = pitch_layer(hidden_tensor)
        tsbq_tensor = tsbq_layer(hidden_tensor)
        dq_tensor = dq_layer(hidden_tensor)

        self.model = keras.models.Model(input=input_tensor, output=[pitch_tensor, tsbq_tensor, dq_tensor])
        self.model.compile(optimizer='adagrad', loss='categorical_crossentropy')

        self.pitch_model = keras.models.Model(input=input_tensor, output=pitch_layer.output)
        self.tsbq_model = keras.models.Model(input=input_tensor, output=tsbq_layer.output)
        self.dq_model = keras.models.Model(input=input_tensor, output=dq_layer.output)

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

    def _all_training_data(self, notes: List[Note]) -> Tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
        """ 1-of-N binary encoding of all pairs of inputs (past notes and current chord) and outputs (next note)
        on the training set """
        x, p, t, d = [], [], [], []
        for v in nwise(notes, self.order + 1):
            i = v[-1].beat - 1
            j = i + self.chord_order
            x.append(self._encode_network_input(v[:self.order], self.changes[i:j]))
            p.append(encode_int(v[-1].pitch, 127))
            t.append(encode_int(v[-1].ticks_since_beat_quantised, self.maxtsbq + 1))
            d.append(encode_int(v[-1].duration_quantised, self.maxdq + 1))
        return np.array(x), np.array(p), np.array(t), np.array(d)

    def learn(self, notes: List[Note], *args):
        self.maxtsbq = max(n.ticks_since_beat_quantised for n in notes)
        self.maxdq = max(n.duration_quantised for n in notes)
        self._build_net()
        x, p, t, d = self._all_training_data(notes)
        self.model.fit(x, [p, t, d])
        self.past = notes[:self.order]

    def start(self, beat: int):
        self.current_beat = beat

    def next_pitch(self) -> int:
        i = self.current_beat
        j = i + self.chord_order
        encoded_input = np.array([self._encode_network_input(self.past, self.changes[i:j])])
        ret = self.outfun(self.pitch_model.predict(encoded_input).ravel())  # type: int
        return ret

    def next_rhythm(self) -> Tuple[int, int]:
        i = self.current_beat
        j = i + self.chord_order
        encoded_input = np.array([self._encode_network_input(self.past, self.changes[i:j])])
        tsbq = self.outfun(self.tsbq_model.predict(encoded_input).ravel())  # type: int
        dq = self.outfun(self.dq_model.predict(encoded_input).ravel())  # type: int
        return tsbq, dq

    def add_past(self, note: Note):
        """ Construction of the next note involves external corrections after the neural output has been obtained.
        Therefore the method that drives the generator has to pass it back the fully constructed note.

        :param note: the last note generated and corrected
        """
        self.past.append(note)
        self.past = self.past[-self.order:]
