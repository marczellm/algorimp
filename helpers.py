from itertools import tee


def nwise(iterable, n):
    """ Converts an iterable into an iterable of n-tuples with overlap
    For example if n=2: s -> (s0, s1), (s1, s2), (s2, s3), ...
    """
    iterators = tee(iterable, n)
    for i in range(len(iterators)):
        for j in range(i):
            next(iterators[i], None)
    return zip(*iterators)


def nwise_disjoint(iterable, n):
    """ Converts an iterable into an iterable of n-tuples without overlap """
    return zip(*[iter(iterable)] * n)
