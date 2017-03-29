import keras

from ._base import NeuralBase


class OneLayer(NeuralBase):
    """ Algorithmic improviser built on Keras.
        The implementation is a feedforward neural network with one hidden layer. """

    def _build_net(self) -> keras.models.Model:
        input_tensor = keras.layers.Input(shape=self.inputshape())
        hidden_tensor = keras.layers.Dense(800, activation='relu')(input_tensor)

        pitch_tensor = keras.layers.Dense(127, activation='softmax')(hidden_tensor)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation='softmax')(hidden_tensor)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation='softmax')(hidden_tensor)

        model = keras.models.Model(inputs=input_tensor, outputs=[pitch_tensor, tsbq_tensor, dq_tensor])
        model.compile(optimizer='adagrad', loss='categorical_crossentropy')

        return model


class TwoLayer(NeuralBase):
    """ Algorithmic improviser built on Keras.
        The implementation is a feedforward neural network with two hidden layers. """

    def _build_net(self) -> keras.models.Model:
        input_tensor = keras.layers.Input(shape=self.inputshape())
        hidden_tensor = keras.layers.Dense(800, activation='relu')(input_tensor)
        hidden_tensor = keras.layers.Dense(800, activation='relu')(hidden_tensor)

        pitch_tensor = keras.layers.Dense(127, activation='softmax')(hidden_tensor)
        tsbq_tensor = keras.layers.Dense(self.maxtsbq + 1, activation='softmax')(hidden_tensor)
        dq_tensor = keras.layers.Dense(self.maxdq + 1, activation='softmax')(hidden_tensor)

        model = keras.models.Model(inputs=input_tensor, outputs=[pitch_tensor, tsbq_tensor, dq_tensor])
        model.compile(optimizer='adagrad', loss='categorical_crossentropy')

        return model
