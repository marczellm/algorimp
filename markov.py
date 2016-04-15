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

    def val2index(self, val):
        return tuple(val[i] - self.mins[i] for i in range(self.dim))

    def learn(self, seq: Sequence):
        self.dim = len(seq[0]) if isinstance(seq[0], Sequence) else 1
        if not isinstance(seq[0], Sequence):
            seq = [[x] for x in seq]
        # determine the minimum possible value for each dimension
        self.mins = [min(x[i] for x in seq) for i in range(self.dim)]
        # which, together with the order, gives us the shape of the transition matrix
        shape = [max(x[i] for x in seq) - self.mins[i] + 1 for i in range(self.dim)] * (self.order + 1)
        self.tr_matrix = np.zeros(shape, dtype='b')

        # count occurrences of transitions
        for np1gram in nwise(seq, self.order + 1):
            np1gram = tuple(self.val2index(val) for val in np1gram) # needs flattening
            np1gram = tuple(chain.from_iterable(np1gram))
            self.tr_matrix[np1gram] += 1


