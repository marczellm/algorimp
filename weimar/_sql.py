import os
import sqlite3
from collections import namedtuple
from typing import List

from main import notes_from_file
from music import ChordProgression
from weimar import SongMetadata
from ._parser import parse_chord, parse_key

Tune = namedtuple('Tune', ['melid', 'key', 'filename_sv', 'chord_changes'])
Note = namedtuple('Note', ['eventid', 'bar', 'beat', 'pitch'])
Chord = namedtuple('Chord', ['start', 'end', 'value'])


class Solo:
    def __init__(self, tune: Tune):
        self.tune = tune
        self.notes = []  # type: List[Note]
        self.chords = []  # type: List[Chord]

    @property
    def name(self):
        return os.path.splitext(self.tune.filename_sv)[0]


def load_metadata() -> List[SongMetadata]:
    """ Read metadata from the Weimar SQLite database file. """
    ret = []
    with sqlite3.connect('weimardb/wjazzd.db') as conn:
        conn.row_factory = sqlite3.Row
        s = """select * from solo_info natural join composition_info natural join transcription_info
            where signature = '4/4' and key != ''
            and rhythmfeel collate nocase in ('twobeat', 'swing') 
            and tonalitytype collate nocase in ('blues', 'functional')"""
        s = s.replace('*', ','.join(Tune._fields))
        solos = [Solo(Tune(**row)) for row in conn.execute(s)]
        select_notes = "select * from melody where melid=? order by eventid asc".replace('*', ','.join(Note._fields))
        select_chords = "select * from sections where type='CHORD' and melid = ?".replace('*', ','.join(Chord._fields))
        d = 0
        for solo in solos:
            solo.notes = [Note(**row) for row in conn.execute(select_notes, [solo.tune.melid])]
            solo.chords = [Chord(**row) for row in conn.execute(select_chords, [solo.tune.melid])]
            notes = notes_from_file('weimardb/midi_from_ly/{}.mid'.format(solo.name))
            changes = ChordProgression(parse_key(solo.tune.key))
            changes += [None] * (notes[-1].beat + 1)
            for chord in solo.chords:
                changes[notes[chord.start].beat] = parse_chord(chord.value) or 'NC'
            if not('NC' in changes[:4] and all(c is None or c == 'NC' for c in changes[:4])):
                for i, c in enumerate(changes):
                    if c == 'NC':
                        changes[i] = None
                if changes[0] is None:
                    changes[0] = next(c for c in changes if c is not None)
                for i, c in enumerate(changes):
                    if c is None:
                        changes[i] = changes[i-1]
                ret.append(SongMetadata(solo.name, solo.tune.key, solo.tune.chord_changes, changes))
        return ret


def main():
    load_metadata()


if __name__ == '__main__':
    main()
