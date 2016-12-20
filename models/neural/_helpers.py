from enum import Enum
from typing import List

import numpy

from music import Note, Chord

NUM_OCTAVES = 16


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
        indices = numpy.arange(len(inputs))
        numpy.random.shuffle(indices)
    for start_idx in range(0, len(inputs) - batchsize + 1, batchsize):
        if shuffle:
            excerpt = indices[start_idx:start_idx + batchsize]
        else:
            excerpt = slice(start_idx, start_idx + batchsize)
        yield inputs[excerpt], targets[excerpt]

