from collections.abc import Sequence
import numpy as np
from utils import nwise
from itertools import chain

Sequence.register(np.ndarray)


class Markov:
    def __init__(self, order=1):
        self.order = order
        self.tr_matrix = None
        self.mins = []
        self.dim = 1
        self.state = None        

    def val2ind(self, val):
        return tuple(val[i] - self.mins[i] for i in range(self.dim))

    def ind2val(self, val):
        return tuple(val[i] + self.mins[i] for i in range(self.dim))

    def learn(self, seq: Sequence):
        print("Learning...")
        self.dim = len(seq[0]) if isinstance(seq[0], Sequence) else 1
        if not isinstance(seq[0], Sequence):
            seq = [[x] for x in seq]
        # determine the minimum possible value for each dimension
        self.mins = [min(x[i] for x in seq) for i in range(self.dim)]
        # which, together with the order, gives us the shape of the transition matrix
        subshape = tuple(max(x[i] for x in seq) - self.mins[i] + 1 for i in range(self.dim))
        shape = subshape * (self.order + 1)
        print("Attempting to allocate transition matrix of shape", shape, end="... ")
        self.tr_matrix = np.zeros(shape)
        print("successful!")

        # count occurrences of transitions
        for np1gram in nwise(seq, self.order + 1):
            np1gram = tuple(self.val2ind(val) for val in np1gram)
            np1gram = tuple(chain.from_iterable(np1gram))  # flatten
            self.tr_matrix[np1gram] += 1

        # now to divide all counts
        for I in np.ndindex(subshape * self.order):
            submatrix = self.tr_matrix[I]  # here's a potential bug if submatrix becomes a copy instead of a view
            submatrix /= submatrix.sum() or 1

    def sparseness(self):
        """ zeros, nonzeros = markov.sparseness() """
        nz = np.count_nonzero(self.tr_matrix)
        z = self.tr_matrix.size - nz
        return z, nz

    def start(self, state: Sequence):
        """ :param state: a list of states the same length as the order """
        if not isinstance(state[0], Sequence):
            state = [[x] for x in state]
        self.state = [self.val2ind(x) for x in state]

    def next(self):
        state = chain.from_iterable(self.state) \
            if isinstance(self.state[0], Sequence) \
            else self.state
        submat = self.tr_matrix[tuple(state)]
        options = submat.nonzero()
        p = submat[options]
        # ret = np.random.choice(np.transpose(options), p=p)
        # this would not work because random.choice only accepts 1D arrays
        options = np.transpose(options)
        assert options.any(), "No future for state " + str(state)
        ret = options[np.random.choice(len(options), p=p)].tolist()
        self.state = self.state[1:] + ret if self.order > 1 else ret
        return self.ind2val(ret)
