import numpy
import theano
import lasagne
from music import ABCNote, Note, Chord, ChordType, ChordProgression
from utils import nwise
from typing import List, Tuple

EncodedABCNote = Tuple[(int,) * 12]
EncodedNote = Tuple[(int,) * 20]  # 12 notes, 8 octaves
EncodedChord = Tuple[(int,) * (20 + len(ChordType))]


def encode_abcnote(note: ABCNote) -> EncodedABCNote:
    """ 1-of-N binary encoding """
    return tuple(int(i == note) for i in ABCNote)


def encode_note(note: Note) -> EncodedNote:
    """ 1-of N binary encoding of both the pitch and the octave """
    return encode_abcnote(note.abcnote) + tuple(int(i == note.octave) for i in range(8))


def encode_chord(chord: Chord) -> EncodedChord:
    """ 1-of-N binary encoding of the chord root and chord type """
    tipe = [0] * len(ChordType)
    tipe[chord.type.value] = 1
    return encode_abcnote(chord.root) + tuple(tipe)


def encode_network_input(past: List[Note], current_chord: Chord) -> Tuple[int, ...]:
    """ 1-of-N binary encoding of a number of past notes together with the current chord """
    return sum((encode_note(note) for note in past), encode_chord(current_chord))


def all_training_pairs(notes: List[Note], changes: ChordProgression, order: int) -> Tuple[numpy.ndarray, numpy.ndarray]:
    """ 1-of-N binary encoding of all pairs of inputs (past notes and current chord) and outputs (next note)
    on the training set """
    x, y = [], []
    for v in nwise(notes, order + 1):
        x.append(encode_network_input(v[:order], changes[(v[-1].beat - 1) % len(changes)]))
        y.append(v[-1].pitch)
    return numpy.array(x), numpy.array(y)


# Taken directly from the Lasagne tutorial
def iterate_minibatches(inputs, targets, batchsize, shuffle=False):
    assert len(inputs) == len(targets)
    indices = None
    if shuffle:
        indices = numpy.arange(len(inputs))
        numpy.random.shuffle(indices)
    for start_idx in range(0, len(inputs) - batchsize + 1, batchsize):
        if shuffle:
            excerpt = indices[start_idx:start_idx + batchsize]
        else:
            excerpt = slice(start_idx, start_idx + batchsize)
        yield inputs[excerpt], targets[excerpt]


class OneHiddenLayerMelodyGenerator:
    def __init__(self, changes: ChordProgression, order=3):
        self.order = order
        self.changes = changes
        self.__inputshape = order * 20 + 12 + len(ChordType)
        self.__input_var = theano.tensor.bmatrix('input')
        net = lasagne.layers.InputLayer(shape=(None, self.__inputshape), input_var=self.__input_var)
        net = lasagne.layers.DenseLayer(net, num_units=800, nonlinearity=lasagne.nonlinearities.rectify)
        self.net = lasagne.layers.DenseLayer(net, num_units=128, nonlinearity=lasagne.nonlinearities.softmax)

        self.net_fn = None  # type: theano.compile.Function
        self.current_chord = None  # type: Chord
        self.past = None  # type: numpy.ndarray

    def learn(self, notes: List[Note]):
        target_var = theano.tensor.ivector('target')
        net_output_var = lasagne.layers.get_output(self.net)
        loss_fn = lasagne.objectives.categorical_crossentropy(net_output_var, target_var).mean()
        params = lasagne.layers.get_all_params(self.net, trainable=True)
        updates = lasagne.updates.adagrad(loss_fn, params, learning_rate=.01)
        train_fn = theano.function([self.__input_var, target_var], loss_fn, updates=updates, allow_input_downcast=True)
        x, y = all_training_pairs(notes, self.changes, self.order)
        for epoch in range(20):
            for batch in iterate_minibatches(x, y, batchsize=128, shuffle=True):
                inputs, targets = batch
                train_fn(inputs, targets)
        self.net_fn = theano.function([self.__input_var], net_output_var)
        self.past = notes[:self.order]

    def start(self, chord: Chord):
        self.current_chord = chord

    def next(self):
        n = Note()
        n.pitch = numpy.argmax(self.net_fn([encode_network_input(self.past, self.current_chord)]))
        self.past.append(n)
        self.past = self.past[-self.order:]
        return n.pitch

