import itertools
from typing import Tuple, Iterable, List

import numpy as np


def nwise(iterable, n):
    """ Converts an iterable into an iterable of n-tuples with overlap
    For example if n=2: s -> (s0, s1), (s1, s2), (s2, s3), ... """
    iterators = itertools.tee(iterable, n)
    for i in range(len(iterators)):
        for j in range(i):
            next(iterators[i], None)
    return zip(*iterators)


def nwise_disjoint(iterable, n):
    """ Converts an iterable into an iterable of n-tuples without overlap 
    For example if n=2: s -> (s0, s1), (s2, s3), (s4, s5)... """
    return zip(*[iter(iterable)] * n)


def princomp(m: np.ndarray) -> Tuple[np.ndarray, np.ndarray, np.ndarray]:
    """ Principal component transform. Requires that the mean is subtracted from m beforehand:
     ``M = (A - A.T.mean(axis=1)).T`` """
    [latent, coeff] = np.linalg.eig(np.cov(m))
    idx = np.argsort(latent)[::-1]
    coeff = coeff[:, idx]
    latent = latent[idx]
    score = coeff.T @ m
    return coeff, score, latent


def lsum(x: Iterable[Iterable]) -> List:
    """ Concatenate iterables into a list """
    return list(itertools.chain(*x))
