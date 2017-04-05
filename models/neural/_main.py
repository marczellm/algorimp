from typing import List

import numpy as np
import keras
from keras.activations import softmax, relu
from keras.losses import categorical_crossentropy
from keras.optimizers import adagrad, rmsprop

from music import Note, Chord
from ._helpers import encode_chord, lsum, encode_int, encode_pitch
from ._base import NeuralBase


class OneLayer(NeuralBase):
    """ Algorithmic improviser based on a feedforward neural network with one hidden layer. """

    def _build_net(self) -> keras.models.Model:
        input_tensor = keras.layers.Input(shape=self.inputshape())
        hidden_tensor = keras.layers.Dense(800, activation=relu)(input_tensor)

        pitch_tensor = keras.layers.Dense(127, activation=softmax)(hidden_tensor)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation=softmax)(hidden_tensor)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation=softmax)(hidden_tensor)

        model = keras.models.Model(inputs=input_tensor, outputs=[pitch_tensor, tsbq_tensor, dq_tensor])
        model.compile(optimizer=adagrad(), loss=categorical_crossentropy)

        self.epochs = 1
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
        return model


class LSTM(NeuralBase):
    """ Algorithmic improviser based on an LSTM network. """

    def _build_net(self) -> keras.models.Model:
        dummy_input = self._encode_network_input([Note()] * self.order, [Chord.parse('C7')] * self.chord_order)
        in_notes = keras.layers.Input(shape=dummy_input[0].shape)
        in_chords = keras.layers.Input(shape=dummy_input[1].shape)

        lstm_out = keras.layers.LSTM(256)(in_notes)
        x = keras.layers.concatenate([lstm_out, in_chords])
        x = keras.layers.Dense(256)(x)

        pitch_tensor = keras.layers.Dense(127, activation=softmax)(x)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation=softmax)(x)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation=softmax)(x)

        model = keras.models.Model(inputs=[in_notes, in_chords], outputs=[pitch_tensor, tsbq_tensor, dq_tensor])
        model.compile(optimizer=rmsprop(), loss=categorical_crossentropy)

        self.epochs = 30
        self.outfuns = (np.argmax,) * 3
        return model

    def _encode_network_input(self, past: List[Note], chords: List[Chord]) -> List[np.ndarray]:
        return [np.array([encode_pitch(note)
                          + encode_int(note.ticks_since_beat_quantised, self.maxtsbq + 1)
                          + encode_int(note.duration_quantised, self.maxdq + 1)
                          for note in past], dtype=bool),
                np.array(lsum(encode_chord(chord) for chord in chords), dtype=bool)]
