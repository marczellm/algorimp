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

    def val2index(self, val):
        return tuple(val[i] - self.mins[i] for i in range(self.dim))

    def learn(self, seq: Sequence):
        print("Learning...")
        self.dim = len(seq[0]) if isinstance(seq[0], Sequence) else 1
        if not isinstance(seq[0], Sequence):
            seq = [[x] for x in seq]
        # determine the minimum possible value for each dimension
        self.mins = [min(x[i] for x in seq) for i in range(self.dim)]
        # which, together with the order, gives us the shape of the transition matrix
        subshape = [max(x[i] for x in seq) - self.mins[i] + 1 for i in range(self.dim)]
        shape = subshape * (self.order + 1)
        print("Attempting to allocate transition matrix of shape", shape)
        self.tr_matrix = np.zeros(shape)

        # count occurrences of transitions
        for np1gram in nwise(seq, self.order + 1):
            np1gram = tuple(self.val2index(val) for val in np1gram)
            np1gram = tuple(chain.from_iterable(np1gram))  # flatten
            self.tr_matrix[np1gram] += 1

        # now to divide all counts
        indexrange = None  # TODO do it with np.indices
        # I need a cartesian product of these ranges
        I = next(indexrange)
        print(I, shape)
        return
        for I in indexrange:
            submatrix = self.tr_matrix[I]
            submatrix /= submatrix.sum()
        

    def sparseness(self):
        """ zeros, nonzeros = markov.sparseness() """
        nz = np.count_nonzero(self.tr_matrix)
        z = self.tr_matrix.size - nz
        return z, nz

    def start(self, state):
        self.state = state

    def next(self):
        submat = self.tr_matrix[self.state]
        options = submat.nonzero()
        p = submat[options]
        
        


