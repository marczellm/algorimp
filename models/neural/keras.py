from typing import List, Tuple

import numpy
import keras

from ._helpers import encode_int, encode_chord, encode_pitch, NUM_OCTAVES
from music import Chord, ChordType, ABCNote
from music import ChordProgression
from music import Note
from utils import nwise


class OneHiddenLayerMelodyAndRhythmGenerator:
    PITCH = 0
    TSBQ = 1
    DQ = 2

    def __init__(self, changes: ChordProgression, order=3):
        self.order = order
        self.changes = changes
        self.model = None  # type: keras.models.Model
        self.pitch_model = None  # type: keras.models.Model
        self.tsbq_model = None  # type: keras.models.Model
        self.dq_model = None  # type: keras.models.Model
        self.past = None  # type: List[Note]
        self.current_chord = None  # type: Chord
        self.maxtsbq = 0
        self.maxdq = 0

    def _build_net(self):
        inputshape = self.order * (len(ABCNote) + NUM_OCTAVES + self.maxtsbq + self.maxdq + 2) + len(ABCNote) + len(
            ChordType)
        input_tensor = keras.layers.Input(shape=(inputshape,))
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

    def _encode_network_input(self, past: List[Note], current_chord: Chord) -> numpy.ndarray:
        """ 1-of-N binary encoding of a number of past notes together with the current chord """
        return numpy.array(sum((encode_pitch(note)
                                + encode_int(note.ticks_since_beat_quantised, self.maxtsbq + 1)
                                + encode_int(note.duration_quantised, self.maxdq + 1)
                                for note in past), encode_chord(current_chord)))

    def _all_training_data(self, notes: List[Note]) -> Tuple[numpy.ndarray, numpy.ndarray, numpy.ndarray, numpy.ndarray]:
        """ 1-of-N binary encoding of all pairs of inputs (past notes and current chord) and outputs (next note)
        on the training set """
        x, p, t, d = [], [], [], []
        for v in nwise(notes, self.order + 1):
            x.append(self._encode_network_input(v[:self.order], self.changes[(v[-1].beat - 1) % len(self.changes)]))
            p.append(encode_int(v[-1].pitch, 127))
            t.append(encode_int(v[-1].ticks_since_beat_quantised, self.maxtsbq + 1))
            d.append(encode_int(v[-1].duration_quantised, self.maxdq + 1))
        return numpy.array(x), numpy.array(p), numpy.array(t), numpy.array(d)

    def learn(self, notes: List[Note]):
        self.maxtsbq = max(n.ticks_since_beat_quantised for n in notes)
        self.maxdq = max(n.duration_quantised for n in notes)
        self._build_net()
        x, p, t, d = self._all_training_data(notes)
        self.model.fit(x, [p, t, d])
        self.past = notes[:self.order]

    def start(self, chord: Chord):
        self.current_chord = chord

    def next_pitch(self) -> int:
        return self.pitch_model.predict(self._encode_network_input(self.past, self.current_chord).transpose())

    def next_rhythm(self) -> Tuple[int, int]:
        encoded_input = self._encode_network_input(self.past, self.current_chord).transpose()
        return self.tsbq_model.predict(encoded_input), self.dq_model.predict(encoded_input)

    def add_past(self, note: Note):
        """ Construction of the next note involves external corrections after the neural output has been obtained.
        Therefore the method that drives the generator has to pass it back the fully constructed note.

        :param note: the last note generated and corrected
        """
        self.past.append(note)
        self.past = self.past[-self.order:]
