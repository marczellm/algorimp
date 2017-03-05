from typing import Tuple, List

import lasagne
import numpy
import theano

from ._helpers import NUM_OCTAVES, iterate_minibatches, encode_pitch, encode_chord, encode_int
from music import Note, Chord, ChordProgression, ABCNote, ChordType
from helpers import nwise


class OneHiddenLayerMelodyGenerator:
    """ The first implementation of the neural network based algorithmic improviser, built on Theano and Lasagne.
    I later reimplemented it in Keras which I found more convenient and it also required less code.
    This implementation is now frozen, it only has one hidden layer and no chord lookahead.
    I'll leave it here because it might be useful for comparison.
    """

    def __init__(self, changes: ChordProgression, order=3):
        self.order = order
        self.changes = changes
        self.inputshape = order * (len(ABCNote) + NUM_OCTAVES) + len(ABCNote) + len(ChordType)
        self.input_var = theano.tensor.bmatrix()
        net = lasagne.layers.InputLayer(shape=(None, self.inputshape), input_var=self.input_var)
        net = lasagne.layers.DenseLayer(net, num_units=800, nonlinearity=lasagne.nonlinearities.rectify)
        self.net = lasagne.layers.DenseLayer(net, num_units=128, nonlinearity=lasagne.nonlinearities.softmax)

        self.net_fn = None  # type: theano.compile.Function
        self.current_chord = None  # type: Chord
        self.past = None  # type: List[Note]

    @staticmethod
    def _encode_network_input(past: List[Note], current_chord: Chord) -> List[int]:
        """ 1-of-N binary encoding of a number of past notes together with the current chord """
        return sum((encode_pitch(note) for note in past), encode_chord(current_chord))

    def _all_training_pairs(self, notes: List[Note]) -> Tuple[numpy.ndarray, numpy.ndarray]:
        """ 1-of-N binary encoding of all pairs of inputs (past notes and current chord) and outputs (next note)
        on the training set """
        x, y = [], []
        for v in nwise(notes, self.order + 1):
            x.append(self._encode_network_input(v[:self.order], self.changes[v[-1].beat - 1]))
            y.append(v[-1].pitch)
        return numpy.array(x), numpy.array(y)

    def learn(self, notes: List[Note], _):
        target_var = theano.tensor.ivector()
        net_output_var = lasagne.layers.get_output(self.net)
        loss_fn = lasagne.objectives.categorical_crossentropy(net_output_var, target_var).mean()
        params = lasagne.layers.get_all_params(self.net, trainable=True)
        updates = lasagne.updates.adagrad(loss_fn, params, learning_rate=.01)
        train_fn = theano.function([self.input_var, target_var], loss_fn, updates=updates, allow_input_downcast=True)
        x, y = self._all_training_pairs(notes)
        for epoch in range(20):
            for batch in iterate_minibatches(x, y, batchsize=128, shuffle=True):
                inputs, targets = batch
                train_fn(inputs, targets)
        self.net_fn = theano.function([self.input_var], net_output_var)
        self.past = notes[:self.order]

    def start(self, beat: int):
        self.current_chord = self.changes[beat]

    def next_pitch(self) -> int:
        n = Note()
        n.pitch = numpy.argmax(self.net_fn([self._encode_network_input(self.past, self.current_chord)]))
        self.past.append(n)
        self.past = self.past[-self.order:]
        return n.pitch


class OneHiddenLayerMelodyAndRhythmGenerator:
    PITCH = 0
    TSBQ = 1
    DQ = 2

    def __init__(self, changes: ChordProgression, order=3):
        self.order = order
        self.changes = changes
        self.net_fns = []  # type: List[theano.compile.Function]
        self.output_layers = []  # type: List[lasagne.layers.Layer]
        self.past = None  # type: List[Note]
        self.current_chord = None  # type: Chord
        self.input_var = None  # type: theano.tensor.TensorVariable
        self.maxtsbq = 0
        self.maxdq = 0

    def _build_net(self):
        self.input_var = theano.tensor.bmatrix('input_var')
        inputshape = self.order * (len(ABCNote) + NUM_OCTAVES + self.maxtsbq + self.maxdq + 2) + len(ABCNote) + len(ChordType)
        net = lasagne.layers.InputLayer(shape=(None, inputshape), input_var=self.input_var)
        net = lasagne.layers.DenseLayer(net, num_units=800, nonlinearity=lasagne.nonlinearities.rectify)
        pitch_layer = lasagne.layers.DenseLayer(net, num_units=127, nonlinearity=lasagne.nonlinearities.softmax)
        tsbq_layer = lasagne.layers.DenseLayer(net, num_units=self.maxtsbq + 1, nonlinearity=lasagne.nonlinearities.softmax)
        dq_layer = lasagne.layers.DenseLayer(net, num_units=self.maxdq + 1, nonlinearity=lasagne.nonlinearities.softmax)
        self.output_layers = [pitch_layer, tsbq_layer, dq_layer]

    def _encode_network_input(self, past: List[Note], current_chord: Chord) -> List[int]:
        """ 1-of-N binary encoding of a number of past notes together with the current chord """
        return sum((encode_pitch(note)
                    + encode_int(note.ticks_since_beat_quantised, self.maxtsbq + 1)
                    + encode_int(note.duration_quantised, self.maxdq + 1)
                    for note in past), encode_chord(current_chord))

    def _all_training_pairs(self, notes: List[Note]) -> Tuple[numpy.ndarray, numpy.ndarray]:
        """ 1-of-N binary encoding of all pairs of inputs (past notes and current chord) and outputs (next note)
        on the training set """
        x, y = [], []
        for v in nwise(notes, self.order + 1):
            x.append(self._encode_network_input(v[:self.order], self.changes[v[-1].beat - 1]))
            y.append((v[-1].pitch, v[-1].ticks_since_beat_quantised, v[-1].duration_quantised))
        return numpy.array(x), numpy.array(y)

    def learn(self, notes: List[Note], _):
        self.maxtsbq = max(n.ticks_since_beat_quantised for n in notes)
        self.maxdq = max(n.duration_quantised for n in notes)
        self._build_net()

        target_vars = [theano.tensor.ivector('pitch_target'),
                       theano.tensor.ivector('tsbq_target'),
                       theano.tensor.ivector('dq_target')]
        output_vars = lasagne.layers.get_output(self.output_layers)
        loss_fns = [lasagne.objectives.categorical_crossentropy(out, tar).mean()
                    for out, tar in zip(output_vars, target_vars)]
        loss_fn = sum(loss_fns)
        params = lasagne.layers.get_all_params(self.output_layers, trainable=True)
        updates = lasagne.updates.adagrad(loss_fn, params, learning_rate=.01)
        train_fn = theano.function([self.input_var, *target_vars],
                                   loss_fn, updates=updates, allow_input_downcast=True, name='train_fn')
        x, y = self._all_training_pairs(notes)
        for epoch in range(20):
            for batch in iterate_minibatches(x, y, batchsize=128, shuffle=True):
                inputs, targets = batch
                p, t, d = targets.transpose()
                train_fn(inputs, p, t, d)

        self.net_fns = [theano.function([self.input_var], out_var, name='net_fn{}'.format(i))
                        for i, out_var in enumerate(output_vars)]
        self.past = notes[:self.order]

    def start(self, beat: int):
        self.current_chord = self.changes[beat]

    def next_pitch(self) -> int:
        p = numpy.argmax(self.net_fns[self.PITCH](
            [self._encode_network_input(self.past, self.current_chord)]))  # type: int
        return p

    def next_rhythm(self) -> Tuple[int, int]:
        encoded_network_input = [self._encode_network_input(self.past, self.current_chord)]
        dq = numpy.argmax(self.net_fns[self.DQ](encoded_network_input))  # type: int
        tsbq = numpy.argmax(self.net_fns[self.TSBQ](encoded_network_input))  # type: int
        return tsbq, dq

    def add_past(self, note: Note):
        """ Construction of the next note involves external corrections after the neural output has been obtained.
        Therefore the method that drives the generator has to pass it back the fully constructed note.

        :param note: the last note generated and corrected
        """
        self.past.append(note)
        self.past = self.past[-self.order:]
