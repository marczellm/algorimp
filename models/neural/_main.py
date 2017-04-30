from typing import List, Union, Iterable

import numpy as np
import keras
from keras.activations import softmax, relu
from keras.losses import categorical_crossentropy
from keras.optimizers import adagrad, rmsprop

from helpers import nwise, nwise_disjoint, lsum
from music import Note, Chord, ChordProgression
from ._helpers import encode_chord, encode_int, encode_pitch, sampler, NUM_OCTAVES
from ._base import NeuralBase


class OneLayer(NeuralBase):
    """ Algorithmic improviser based on a feedforward neural network with one hidden layer. """

    def __init__(self, changes: ChordProgression, order=3):
        super().__init__(changes, order)
        self.chord_lookahead = 0

    def _build_net(self) -> keras.models.Model:
        input_tensor = keras.layers.Input(shape=self.inputshape())
        hidden_tensor = keras.layers.Dense(800, activation=relu)(input_tensor)

        pitch_tensor = keras.layers.Dense(127, activation=softmax)(hidden_tensor)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation=softmax)(hidden_tensor)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation=softmax)(hidden_tensor)

        model = keras.models.Model(inputs=input_tensor, outputs=[pitch_tensor, tsbq_tensor, dq_tensor])
        model.compile(optimizer=adagrad(), loss=categorical_crossentropy)

        self.epochs = 20
        return model


class TwoLayer(NeuralBase):
    """ Algorithmic improviser based on a feedforward neural network with two hidden layers. """

    def _build_net(self) -> keras.models.Model:
        input_tensor = keras.layers.Input(shape=self.inputshape())
        hidden_tensor = keras.layers.Dense(800, activation=relu)(input_tensor)
        hidden_tensor = keras.layers.Dense(800, activation=relu)(hidden_tensor)

        pitch_tensor = keras.layers.Dense(127, activation=softmax)(hidden_tensor)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation=softmax)(hidden_tensor)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation=softmax)(hidden_tensor)

        model = keras.models.Model(inputs=input_tensor, outputs=[pitch_tensor, tsbq_tensor, dq_tensor])
        model.compile(optimizer=adagrad(), loss=categorical_crossentropy)

        self.epochs = 25
        self.outfuns = (sampler(1.5),) * 3
        return model


class LSTM(NeuralBase):
    """ Algorithmic improviser based on an LSTM network.
        Also featuring a separate output layer for octave selection. """

    def __init__(self, changes: ChordProgression, order=16, stateful=False):
        super().__init__(changes, order)
        self.octave_model = None  # type: keras.models.Model
        self.stateful = stateful
        self._implementation = 2

    def _build_net(self) -> keras.models.Model:
        dummy_input = self._encode_network_input([Note()] * self.order,
                                                 [Chord('C7')] * self.chord_order, self.changes)
        in_notes = keras.layers.Input(batch_shape=(1,) + dummy_input[0].shape) if self.stateful\
            else keras.layers.Input(shape=dummy_input[0].shape)
        in_chords = keras.layers.Input(batch_shape=(1,) + dummy_input[1].shape) if self.stateful\
            else keras.layers.Input(shape=dummy_input[1].shape)

        lstm_out = keras.layers.LSTM(256, stateful=self.stateful, implementation=self._implementation)(in_notes)
        x = keras.layers.concatenate([lstm_out, in_chords])
        x = keras.layers.Dense(800)(x)

        pitch_tensor = keras.layers.Dense(12, activation=softmax)(x)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation=softmax)(x)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation=softmax)(x)
        octave_tensor = keras.layers.Dense(NUM_OCTAVES, activation=softmax)(x)
        beatdiff_tensor = keras.layers.Dense(self.maxbeatdiff + 1, activation=softmax)(x)

        model = keras.models.Model(inputs=[in_notes, in_chords],
                                   outputs=[pitch_tensor, tsbq_tensor, dq_tensor, octave_tensor, beatdiff_tensor])
        model.compile(optimizer=rmsprop(), loss=categorical_crossentropy)

        self.octave_model = keras.models.Model(inputs=model.inputs, outputs=model.outputs[3])
        self.epochs = 30
        self.outfuns = (sampler(0.5),) + (sampler(0.3),) * 2 + (np.argmax,) * 2
        return model

    def _encode_network_input(self, past: List[Note], chords: List[Chord], changes: ChordProgression)\
            -> List[np.ndarray]:
        return [np.array([encode_pitch(note)
                          + encode_chord(changes[note.beat])
                          + encode_int(note.beat_in_measure, Note.meter)
                          + encode_int(note.ticks_since_beat_quantised, self.maxtsbq + 1)
                          + encode_int(note.duration_quantised, self.maxdq + 1)
                          for note in past], dtype=bool),
                np.array(lsum(encode_chord(chord) for chord in chords), dtype=bool)]

    def _all_training_data(self, training_set: Iterable[Union[List[Note], ChordProgression]]):
        print('Processing training data...')
        progressbar = keras.utils.Progbar(sum(len(notes) - self.order + 1 for notes in training_set[::2]))
        x, p, t, d, o, b = [], [], [], [], [], []
        for notes, changes in nwise_disjoint(training_set, 2):
            for v in nwise(notes, self.order + 1):
                progressbar.add(1)
                xx = self._encode_network_input(v[:self.order],
                                                changes.unique(v[-1].beat - 1, self.chord_radius),
                                                changes)
                if not x:
                    x = [[] for _ in xx]
                for xi, xxi in zip(x, xx):
                    xi.append(xxi)
                p.append(encode_int(v[-1].abcnote.value, 12))
                t.append(encode_int(v[-1].ticks_since_beat_quantised, self.maxtsbq + 1))
                d.append(encode_int(v[-1].duration_quantised, self.maxdq + 1))
                o.append(encode_int(v[-1].octave, NUM_OCTAVES))
                b.append(encode_int(v[-1].beat - v[-2].beat, self.maxbeatdiff + 1))
        progressbar.update(progressbar.target, force=True)
        return [np.array(xi, dtype=bool) for xi in x],\
               [np.array(arr, dtype=bool) for arr in [p, t, d, o, b]]

    def next_pitch(self):
        encoded_input = self._encode_input_for_generation()
        abcnote = self.outfuns[0](self.pitch_model.predict(encoded_input).ravel())
        octave = self.outfuns[3](self.octave_model.predict(encoded_input).ravel())
        return octave * 12 + abcnote

    def next(self):
        p, t, d, o, b = super().next()
        return o * 12 + p, t, d, b
