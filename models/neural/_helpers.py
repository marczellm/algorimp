import itertools
from enum import Enum
from typing import List, Iterable

import numpy as np

from music import Note, Chord

NUM_OCTAVES = 10


def encode_int(i: int, n: int) -> List[int]:
    """ 1-of-N binary encoding

    :param i: the integer to encode
    :param n: the length of the desired binary vector. Should be greater than i.
    :return: a sequence of zeros with the i-th set to one
    """
    assert 0 <= i < n, "0 <= {} < {} doesn't hold".format(i, n)
    ret = [0] * n
    ret[i] = 1
    return ret


def encode_enum(e: Enum) -> List[int]:
    """ 1-of-N binary encoding of an enum value """
    return encode_int(e.value, len(type(e)))


def encode_pitch(note: Note) -> List[int]:
    """ 1-of N binary encoding of both the pitch and the octave """
    return encode_enum(note.abcnote) + encode_int(note.octave, NUM_OCTAVES)


def encode_chord(chord: Chord) -> List[int]:
    """ 1-of-N binary encoding of the chord root and chord type """
    return encode_enum(chord.root) + encode_enum(chord.type)


# Taken directly from the Lasagne tutorial
def iterate_minibatches(inputs, targets, batchsize, shuffle=False):
    assert len(inputs) == len(targets)
    indices = None
    if shuffle:
        indices = np.arange(len(inputs))
        np.random.shuffle(indices)
    for start_idx in range(0, len(inputs) - batchsize + 1, batchsize):
        if shuffle:
            excerpt = indices[start_idx:start_idx + batchsize]
        else:
            excerpt = slice(start_idx, start_idx + batchsize)
        yield inputs[excerpt], targets[excerpt]


# Choice functions for the output of a softmax layer
def weighted_choice(p) -> int:
    return np.random.choice(len(p), p=p)


def random_nlargest(p) -> int:
    ind_nlargest = np.argpartition(p, -5)[-5:]
    return np.random.choice(ind_nlargest)


def weighted_nlargest(p) -> int:
    nlargest = np.partition(p, -5)[-5:]
    ind_nlargest = np.argpartition(p, -5)[-5:]
    nlargest /= np.sum(nlargest)
    return np.random.choice(ind_nlargest, p=nlargest)


def sampler(temperature=1.0):
    def sample(p):
        p = np.asarray(p, np.float64) ** (1 / temperature)
        return np.argmax(np.random.multinomial(1, p / p.sum(), 1))
    return sample


def lsum(x: Iterable[Iterable]) -> List:
    """ Concatenate iterables into a list """
    return list(itertools.chain(*x))
