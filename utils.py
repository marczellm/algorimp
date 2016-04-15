from itertools import tee


def nwise(iterable, n):
    iterators = tee(iterable, n)
    for i in range(len(iterators)):
        for j in range(i):
            next(iterators[i], None)
    return zip(*iterators)