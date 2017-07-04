import os
import re
import time
from typing import Tuple, List, Union

import fire
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import NullLocator

import weimar
from helpers import nwise, princomp, lsum
from models.interfaces import UniversalGenerator
from music import Note, ChordProgression, ChordType, ABCNote
from midi_tools import add_chords
from model_drivers import train, generate
from file_handlers import changes_from_file, notes_from_file, notes_to_file


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
        return True


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
    def scatter_quant():
        path = 'weimardb/midi_from_db_quant'
        quant = lsum(notes_from_file(os.path.join(path, file)) for file in os.listdir(path))
        path = 'weimardb/midi_from_db'
        db = lsum(notes_from_file(os.path.join(path, file)) for file in os.listdir(path))
        path = 'weimardb/midi_combined'
        comb = lsum(notes_from_file(os.path.join(path, file)) for file in os.listdir(path))
        path = 'weimardb/midi_from_ly'
        ly = lsum(notes_from_file(os.path.join(path, file)) for file in os.listdir(path))
        for note in ly:
            note.tick_abs = int(note.tick_abs * 2.5)
            note.resolution = 960
        for lis in db, quant, ly, comb:
            for pos in 48, 64, 72:
                print(pos, sum(n.ticks_since_beat_quantised == pos for n in lis))
        vec = np.array([[n.ticks_since_beat_quantised, n.duration_quantised] for n in comb])
        plt.scatter(*vec.T)
        plt.yscale('log', basey=2)
        plt.show()

    @staticmethod
    def pca_image():
        """ Try the PCA algorithm on an image reconstruction task """
        A = plt.imread('libtests/k.png')
        A = A.mean(2)  # grayscale conversion
        i = 1
        M = (A - A.T.mean(axis=1)).T  # subtract the mean along columns
        for numpc in range(0, 60, 10):
            coeff, score, latent = princomp(M)
            coeff = coeff[:, range(numpc)]
            score = coeff.T @ M
            Ar = (coeff @ score).T + A.mean(axis=0)  # image reconstruction
            ax = plt.subplot(2, 3, i, frame_on=False)
            ax.xaxis.set_major_locator(NullLocator())  # remove ticks
            ax.yaxis.set_major_locator(NullLocator())
            i += 1
            ax.imshow(Ar, cmap='gray')
            ax.set_title('PCs # ' + str(numpc))
        plt.show()

    @staticmethod
    def pca():
        """ Perform PCA on the MIDI file """
        notes = notes_from_file('input/Eb_therewill.mid')
        data = np.array([[n.ticks_since_beat_quantised, n.duration_quantised, n.pitch] for n in notes])
        cent = (data - data.T.mean(axis=1)).T
        c, s, l = princomp(cent)
        plt.plot(l)
        plt.show()

    @staticmethod
    def weimar_parser():
        """ Check for unknown chord types """
        chordtypes = list(weimar._parser._chordtype_mapping.keys()) + list(ChordType.__members__)
        chordtypes.remove('')
        for song in weimar.load_metadata():
            for match in re.finditer(weimar._parser._re_roots, song.changes_str):
                if not any(song.changes_str[match.end():].startswith(ctype) for ctype in chordtypes):
                    print(song.changes_str[match.end():].replace('\n', ' ').replace('\r', ' '))

    @staticmethod
    def weimar():
        """ Check for correct relation of changes to MIDI """
        Note.default_resolution = 960
        metadata = weimar.load_metadata()
        for song in metadata:
            snl = song.name.lower()
            if 'therewill' in snl or 'singin' in snl or 'anthropo' in snl:
                notes = notes_from_file('weimardb/midi_combined/{}.mid'.format(song.name))
                notes_to_file(add_chords(notes, song.changes), 'output/weimartest_{}.mid'.format(song.name))

if __name__ == '__main__':
    fire.Fire(Tests)
