from itertools import tee
from typing import Tuple

import numpy as np


def nwise(iterable, n):
    """ Converts an iterable into an iterable of n-tuples with overlap
    For example if n=2: s -> (s0, s1), (s1, s2), (s2, s3), ... """
    iterators = tee(iterable, n)
    for i in range(len(iterators)):
        for j in range(i):
            next(iterators[i], None)
    return zip(*iterators)


def nwise_disjoint(iterable, n):
    """ Converts an iterable into an iterable of n-tuples without overlap 
    For example if n=2: s -> (s0, s1), (s2, s3), (s4, s5)... """
    return zip(*[iter(iterable)] * n)


def princomp(m: np.ndarray) -> Tuple[np.ndarray, np.ndarray, np.ndarray]:
    """ Principal component transform """
    [latent, coeff] = np.linalg.eig(np.cov(m))
    idx = np.argsort(latent)[::-1]
    coeff = coeff[:, idx]
    latent = latent[idx]
    score = coeff.T @ m
    return coeff, score, latent
