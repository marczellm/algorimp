import time
from typing import Tuple, List, Union

import fire

from main import changes_from_file, notes_from_file, generate, train, notes_to_file
from models import neural
from models.interfaces import UniversalGenerator
from music import Note, ChordProgression


class TotalRecall(UniversalGenerator):
    """ A "mock" generator that always returns the next note from the training set. """
    def __init__(self):
        self.notes = []  # type: List[Note]
        self.order = 1
        self.it = None
        self.m = None

    def next(self) -> Tuple[int, ...]:
        n, m = self.m, next(self.it)
        self.m = m
        return m.pitch, m.ticks_since_beat_quantised, m.duration_quantised, m.beat - n.beat

    def start(self, beat: int):
        pass

    def add_past(self, *notes: List[Note]):
        pass

    def learn(self, *training_set: List[Union[Tuple[List[Note], ChordProgression]]]):
        self.notes = training_set[0]
        self.it = iter(self.notes)
        self.m = next(self.it)


class Tests:
    @staticmethod
    def optimize_lstm():
        """ Keras provides a choice of 3 implementations for recurrent layers. Find out which is the fastest. """
        song = 'Eb_therewill'
        changes = changes_from_file(song)
        notes = notes_from_file(r"input/{}.mid".format(song))
        Note.default_resolution = notes[0].resolution
        model = neural.LSTM(changes, stateful=True)
        d = {}
        for i in [0, 1, 2]:
            t = time.time()
            model._implementation = i
            model.learn(notes, changes, epochs=1)
            d[i] = time.time() - t
        print(d)

    @staticmethod
    def total_recall():
        """ Test the code driving generation by feeding it the training set """
        song = 'Eb_therewill'
        model = TotalRecall()
        changes = changes_from_file(song)
        notes = notes_from_file(r"input/{}.mid".format(song))
        Note.default_resolution = notes[0].resolution
        train(notes, changes, model)
        m = generate(notes[:model.order], changes, model, None, 4 * changes.measures())
        mm = m[33:38]
        nn = notes[33:38]
        notes_to_file(m, 'output/test.mid')

if __name__ == '__main__':
    fire.Fire(Tests)
