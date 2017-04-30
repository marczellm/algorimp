import os
import sqlite3
from collections import namedtuple
from typing import List

from music import ChordProgression
from weimar import SongMetadata
from ._parser import parse_chord, parse_changes, re_invalid_measure

TuneInfo = namedtuple('Tune', ['melid', 'key', 'filename_sv', 'chorus_count', 'chord_changes'])
Note = namedtuple('Note', ['eventid', 'bar', 'beat', 'pitch'])
Chord = namedtuple('Chord', ['start', 'end', 'value'])


class Solo:
    def __init__(self, info: TuneInfo):
        self.info = info
        self.notes = []  # type: List[Note]
        self.chords = []  # type: List[Chord]

    @property
    def name(self):
        return os.path.splitext(self.info.filename_sv)[0]


def load_metadata() -> List[SongMetadata]:
    """ Read metadata from the Weimar SQLite database file. """
    ret = []
    with sqlite3.connect('weimardb/wjazzd.db') as conn:
        conn.row_factory = sqlite3.Row
        s = """select * from solo_info natural join composition_info natural join transcription_info
            where signature = '4/4' and key != ''
            and rhythmfeel collate nocase in ('twobeat', 'swing') 
            and tonalitytype collate nocase in ('blues', 'functional')"""
        s = s.replace('*', ','.join(TuneInfo._fields))
        solos = [Solo(TuneInfo(**row)) for row in conn.execute(s)]
        select_notes = "select * from melody where melid=? order by eventid asc".replace('*', ','.join(Note._fields))
        select_chords = "select * from sections where type='CHORD' and melid = ?".replace('*', ','.join(Chord._fields))
        for solo in solos:
            if not re_invalid_measure.search(solo.info.chord_changes):
                solo.notes = [Note(**row) for row in conn.execute(select_notes, [solo.info.melid])]
                solo.chords = [Chord(**row) for row in conn.execute(select_chords, [solo.info.melid])]
                changes = parse_changes(solo.info.chord_changes, solo.info.key)
                changes_estim = [parse_chord(s.value) for s in solo.chords]
                if changes[0] == changes_estim[0]:
                    ret.append(SongMetadata(solo.name, solo.info.chord_changes, changes))
                elif solo.notes[0].bar < 0:  # there are pickup measures
                    assert changes[0] in changes_estim
                    i = changes_estim.index(changes[0])
                    changes_final = ChordProgression(changes.base)
                    changes_final += [None] * 4 * -solo.notes[solo.chords[0].start].bar  # allocate pickup measures
                    for chord, info in zip(changes_estim[:i], solo.chords):  # fill pickup measures
                        changes_final[solo.notes[info.start].beat] = chord
                    if changes_final[0] is None:
                        changes_final[0] = next(x for x in changes_final if x is not None)
                    for i, chord in enumerate(changes_final):
                        if chord is None:
                            changes_final[i] = changes_final[i-1]
                    changes_final += changes * solo.info.chorus_count
                    ret.append(SongMetadata(solo.name, solo.info.chord_changes, changes_final))
        return ret


def main():
    load_metadata()


if __name__ == '__main__':
    main()
