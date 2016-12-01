from typing import Tuple, Union, Sequence, List
from bidict import bidict, inverted
import numpy as np
from utils import nwise
from itertools import chain
from music import Note, Chord, ChordProgression

# Type aliases (typedefs)
State = Union[int, Sequence[int]]  # A scalar or a vector
StateInternal = Sequence[int]      # Internally, scalars are converted to vectors of length 1 for uniform handling

Sequence.register(np.ndarray)


class Markov:
    """ Class for generating Markov chains. It supports multidimensional values and higher-order chains as well. """
    def __init__(self, order=1):
        """ :param order: the order of the Markov chain """
        self.order = order
        self.tr_matrix = None
        self.ind_maps = []
        self.dim = 1
        self.state = None

    def __val2ind(self, val: StateInternal) -> State:
        """
        For each dimension, there is a mapping between the possible values of the state space and 0 based indices.
        This reduces the size of the transition matrix considerably, which is necessary to fit in memory.
        This function converts from a state space value to its index vector.
        """
        return tuple(self.ind_maps[i][val[i]] for i in range(self.dim))

    def __ind2val(self, val: StateInternal) -> State:
        """ Converts an index vector back to the state space. """
        ret = tuple(self.ind_maps[i].inv[val[i]] for i in range(self.dim))
        return ret if len(ret) > 1 else ret[0]

    def learn(self, seq: Sequence[State]):
        """ High-level interface to train the Markov-chain.

        :param seq: The complete sequence on which to train.
        """
        print("Learning...")
        seq = self._ensure_seq(seq)
        self.training_prep(seq)

        for np1gram in nwise(seq, self.order + 1):
            self.training_step(np1gram)

        self.training_finish_normalize()

    def training_prep(self, seq: Sequence[State]):
        """ Preparation for training the chain on a sequence. """
        seq = self._ensure_seq(seq)
        self.dim = len(seq[0])
        # Determine the set of possible values for each dimension
        val_sets = [{x[i] for x in seq} for i in range(self.dim)]
        # Create a mapping from values to indices
        self.ind_maps = [bidict(inverted(enumerate(sorted(s)))) for s in val_sets]
        # which, together with the order, gives us the shape of the transition matrix
        shape = self._subshape * (self.order + 1)
        print("Attempting to allocate transition matrix of shape", shape, end="... ")
        self.tr_matrix = np.zeros(shape)
        print("successful!")

    def training_step(self, np1gram: Sequence[State]):
        """ One training step of a Markov chain

        :param np1gram: A sequence of length self.order + 1, containing the past and current values of the chain
        """
        np1gram = self._ensure_seq(np1gram)
        np1gram = tuple(self.__val2ind(val) for val in np1gram)
        np1gram = tuple(chain.from_iterable(np1gram))  # flatten
        self.tr_matrix[np1gram] += 1

    def training_finish_normalize(self):
        """ Normalize the appropriate submatrices so that they sum to 1. """
        for I in np.ndindex(self._subshape * self.order):
            submatrix = self.tr_matrix[I]  # here's a potential bug if submatrix becomes a copy instead of a view
            submatrix /= submatrix.sum() or 1

    @property
    def _subshape(self) -> Tuple[int, ...]:
        return tuple(len(im) for im in self.ind_maps)

    @staticmethod
    def _ensure_seq(seq: Sequence[State]) -> Sequence[StateInternal]:
        if not isinstance(seq[0], Sequence):
            seq = [[x] for x in seq]
        return seq

    def sparseness(self) -> Tuple[int, int]:
        """ Returns the number of zeros and nonzeros in the transition matrix.

        Usage: ``zeros, nonzeros = markov.sparseness()``
        """
        nz = np.count_nonzero(self.tr_matrix)
        z = self.tr_matrix.size - nz
        return z, nz

    def start(self, state: Sequence[State]):
        """ Sets the initial state(s) of the Markov chain.

        :param state: a list of states the same length as the order """
        state = self._ensure_seq(state)
        self.state = [self.__val2ind(x) for x in state]

    def next(self) -> State:
        """ Computes and returns the next state of the Markov chain. """
        state = chain.from_iterable(self.state) \
            if isinstance(self.state[0], Sequence) \
            else self.state
        state = tuple(state)
        submat = self.tr_matrix[state]
        options = submat.nonzero()
        p = submat[options]
        options = np.transpose(options)
        assert options.any(), "No future for state " + str(state)
        ret = options[np.random.choice(len(options), p=p)].tolist()
        self.state = self.state[1:] + [ret] if self.order > 1 else ret
        return self.__ind2val(ret)


class MarkovRhythmGenerator:
    def __init__(self, order=1):
        self.markov = Markov(order)

    def learn(self, notes: List[Note]):
        self.markov.learn([(n.ticks_since_beat_quantised, n.duration_quantised) for n in notes])
        self.markov.start([(n.ticks_since_beat_quantised, n.duration_quantised) for n in notes[:self.markov.order]])

    def next_rhythm(self):
        return self.markov.next()

    @property
    def order(self) -> int:
        return self.markov.order


class ChordAgnosticMarkovMelodyGenerator:
    def __init__(self, order=3):
        self.markov = Markov(order)

    def learn(self, notes: List[Note]):
        self.markov.learn([n.pitch for n in notes])
        self.markov.start([n.pitch for n in notes[:self.markov.order]])

    def next_pitch(self):
        return self.markov.next()

    @property
    def order(self) -> int:
        return self.markov.order

    def start(self, chord: Chord):
        pass


class StaticChordMarkovMelodyGenerator:
    def __init__(self, changes: ChordProgression, order=3):
        self.order = order
        self.notes_by_chord = {chord: [] for chord in changes}
        self.markovs_by_chord = {}
        self.current_markov = None  # type: Markov
        self.changes = changes
        self.past = []  # type: List[int]

    def learn(self, notes: List[Note]):
        self.markovs_by_chord = {chord: Markov(self.order) for chord in self.changes}
        for markov in self.markovs_by_chord.values():
            markov.training_prep([n.pitch for n in notes])
        for np1gram in nwise(notes, self.order + 1):
            chord = self.changes[(np1gram[-1].beat - 1) % len(self.changes)]
            self.markovs_by_chord[chord].training_step([n.pitch for n in np1gram])
        for markov in self.markovs_by_chord.values():
            markov.training_finish_normalize()
        self.past = [n.pitch for n in notes[:self.order]]

    def start(self, chord: Chord):
        self.current_markov = self.markovs_by_chord[chord]
        self.current_markov.start(self.past)

    def next_pitch(self):
        ret = self.current_markov.next()
        self.past.append(ret)
        self.past = self.past[-self.order:]
        return ret
