from typing import Tuple, Union, Sequence
from bidict import bidict, inverted
import numpy as np
from utils import nwise
from itertools import chain

# Type aliases (typedefs)
State = Union[int, Sequence[int]]  # A scalar or a vector
StateInternal = Sequence[int]      # Internally, scalars are converted to vectors of length 1 for uniform handling

Sequence.register(np.ndarray)


class Markov:
    """ Class for generating Markov chains. It supports multidimensional values and higher-order chains as well. """
    def __init__(self, order: int = 1):
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
        print("Learning...")
        self.dim = len(seq[0]) if isinstance(seq[0], Sequence) else 1
        if not isinstance(seq[0], Sequence):
            seq = [[x] for x in seq]
        # determine the set of possible values for each dimension
        val_sets = [{x[i] for x in seq} for i in range(self.dim)]
        # create a mapping from values to indices
        self.ind_maps = [bidict(inverted(enumerate(sorted(s)))) for s in val_sets]
        # which, together with the order, gives us the shape of the transition matrix
        subshape = tuple(len(im) for im in self.ind_maps)
        shape = subshape * (self.order + 1)
        print("Attempting to allocate transition matrix of shape", shape, end="... ")
        self.tr_matrix = np.zeros(shape)
        print("successful!")

        # count occurrences of transitions
        for np1gram in nwise(seq, self.order + 1):
            np1gram = tuple(self.__val2ind(val) for val in np1gram)
            np1gram = tuple(chain.from_iterable(np1gram))  # flatten
            self.tr_matrix[np1gram] += 1

        # now to divide all counts
        for I in np.ndindex(subshape * self.order):
            submatrix = self.tr_matrix[I]  # here's a potential bug if submatrix becomes a copy instead of a view
            submatrix /= submatrix.sum() or 1

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
        if not isinstance(state[0], Sequence):
            state = [[x] for x in state]
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
