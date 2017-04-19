import time

import fire

from main import changes_from_file, notes_from_file
from models import neural
from music import Note


class Tests:
    @staticmethod
    def optimize_lstm():
        song = 'Eb_therewill'
        changes = changes_from_file(song)
        notes = notes_from_file(r"input/{}.mid".format(song))
        Note.default_resolution = notes[0].resolution
        model = neural.LSTM(changes, 16, True)
        d = {}
        for i in [0, 1, 2]:
            t = time.time()
            model._implementation = i
            model.learn(notes, changes, epochs=1)
            d[i] = time.time() - t
        print(d)

if __name__ == '__main__':
    fire.Fire(Tests)