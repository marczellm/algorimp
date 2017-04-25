import time
from typing import Tuple, List, Union

import re
import fire
import numpy as np
import matplotlib.pyplot as plt

import weimar
from helpers import nwise
from main import changes_from_file, notes_from_file, generate, train, notes_to_file, add_chords
from models.interfaces import UniversalGenerator
from music import Note, ChordProgression, ChordType, ABCNote


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
    def fast_and_furious(stateful=True):
        """ Keras provides a choice of 3 implementations for recurrent layers. Find out which is the fastest. """
        from models import neural
        song = 'Eb_therewill'
        changes = changes_from_file(song)
        notes = notes_from_file(r"input/{}.mid".format(song))
        Note.default_resolution = notes[0].resolution
        model = neural.LSTM(changes, stateful=stateful)
        d = {}
        for i in [0, 1, 2]:
            print('implementation', i)
            t = time.time()
            model._implementation = i
            model.learn(notes, changes, epochs=1)
            d[i] = time.time() - t
        print(d)

    @staticmethod
    def total_recall():
        """ Test the code that drives generation by feeding it the training set as generated output """
        song = 'Eb_therewill'
        model = TotalRecall()
        changes = changes_from_file(song)
        notes = notes_from_file(r"input/{}.mid".format(song))
        Note.default_resolution = notes[0].resolution
        train(notes, changes, model)
        m = generate(notes[:model.order], changes, model, None, 4 * changes.measures())
        notes_to_file(add_chords(m, changes), 'output/test.mid')

    @staticmethod
    def back_to_the_future():
        """ Find out how common it is that a later note has a smaller tick_abs """
        song = 'Eb_therewill'
        notes = notes_from_file(r"input/{}.mid".format(song))
        print(sum(n.tick_abs > m.tick_abs for n, m in nwise(notes, 2)))

    @staticmethod
    def scatter():
        """ Create a scatter plot of durations vs position in beat """
        song = 'Eb_therewill'
        notes = notes_from_file(r"input/{}.mid".format(song))
        vec = np.array([[n.ticks_since_beat_quantised, n.duration_quantised] for n in notes])
        with open('scatter.dat', 'w') as kf:
            for tsbq, dq in vec:
                if dq:  # don't want 0 values exported for logarithmic plot
                    print(tsbq, dq, file=kf)
        plt.scatter(*vec.T)
        plt.show()

    @staticmethod
    def weimar():
        """ Check for unknown chord types """
        metadata = weimar.load_metadata()

        chordtypes = list(weimar._chordtype_mapping.keys()) + list(ChordType.__members__)
        chordtypes.remove('')
        for song in []:
            for match in re.finditer(weimar._re_roots, song.changes_str):
                if not any(song.changes_str[match.end():].startswith(ctype) for ctype in chordtypes):
                    print(song.changes_str[match.end():].replace('\n', ' ').replace('\r', ' '))

        # Check for correct relation of changes to MIDI
        songs = [song for song in metadata if 'therewill' in song.name.lower()]
        song = songs[0]
        print([s.name for s in songs])
        Note.default_resolution = 960
        notes = notes_from_file('weimardb/midi_combined/{}.mid'.format(song.name))
        notes_to_file(add_chords(notes, song.changes.transpose(ABCNote.Eb)), 'output/weimartest.mid')

if __name__ == '__main__':
    fire.Fire(Tests)
