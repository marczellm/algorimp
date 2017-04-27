""" A parser for chord progressions in the Weimar Jazzomat CSV format, and some helper functions """
import os.path
import re
import csv
from itertools import chain
from typing import Tuple, List

from music import ABCNote, ChordType, Chord, ChordProgression, Note

_chordtype_mapping = {
    '': ChordType.maj,
    '6': ChordType.maj,
    'j7': ChordType.maj,
    '-7': ChordType.m7,
    '-': ChordType.m7,
    '-6': ChordType.mmaj,
    '-j': ChordType.mmaj,
    '+': ChordType.aug7,
    '+7': ChordType.aug7,
    '+j': ChordType.augmaj,
    'sus7': ChordType(7),
    'o': ChordType.dim,
    'o7': ChordType.dim,
}


def _capitalize(s: str):
    return s[0].upper() + s[1:]

# Reverse ordering of the items inside the big OR is necessary to match longer ones first

_sre_roots = '|'.join(sorted(map(_capitalize, ABCNote.mapping().keys()), reverse=True))
_sre_types = '|'.join(sorted(chain(ChordType.__members__, _chordtype_mapping.keys()), reverse=True)).replace('||', '|')
_sre_chord = "({})({})?[913b#]*(/({}))?".format(_sre_roots, _sre_types, _sre_roots).replace('+', '\+')
_sre_optional_chord = r'({}|NC| )'.format(_sre_chord)
_sre_measure = r'\|{}{{4}}(?=\|)'.format(_sre_optional_chord)

_re_roots = re.compile(_sre_roots)
_re_chord = re.compile(_sre_chord)
_re_optional_chord = re.compile(_sre_optional_chord)
_re_measure = re.compile(_sre_measure)
_re_invalid_measure = re.compile(r'\|(NC| )+\|')


def parse_chordtype(s: str) -> ChordType:
    """ Parse a chord type in the Weimar Jazzomat format """
    if s in ChordType.__members__:
        return ChordType[s]
    elif s in _chordtype_mapping:
        return _chordtype_mapping[s]
    else:
        raise KeyError(s + " chord unknown")


def parse_measure(s: str) -> Tuple[(Chord,) * Note.meter]:
    """ Parse a measure.

    :return four chords. Spaces translate to the chord before the space. """
    ret = []
    for match in re.finditer(_re_optional_chord, s):
        if match.group(0) in [' ', 'NC']:
            ret.append(ret[-1])
        else:
            ret.append(Chord(ABCNote.from_string(match.group(2)), parse_chordtype(match.group(3))))
    assert len(ret) == Note.meter
    return tuple(ret)


class SongMetadata:
    def __init__(self, name, key, chord_changes, **_):
        self.name = name
        self.key = key
        self.changes_str = chord_changes  # type: str
        self.changes = None  # type: ChordProgression


def load_metadata(filename='weimardb/changes.csv') -> List[SongMetadata]:
    """ Read the CSV file that contains the metadata for the solos in the Weimar database.

    :param filename: the name of the CSV file
    """
    with open(filename, newline='') as bf:
        reader = csv.DictReader(bf, delimiter=';')
        reader.fieldnames[0] = 'name'
        metadata = list(reader)

    metadata = [SongMetadata(**song) for song in metadata
                if song['key']
                and song['signature'] == '4/4'
                and song['rhythmfeel'].lower() in ['twobeat', 'swing']
                and song['tonality_type'].lower() in ['blues', 'functional']
                and not _re_invalid_measure.search(song['chord_changes'])]

    for song in metadata:
        song.name = os.path.splitext(song.name)[0]
        changes = ChordProgression(ABCNote.from_string(_re_roots.match(song.key).group(0)))
        for m in re.finditer(_re_measure, song.changes_str):
            changes += parse_measure(m.group(0))
        song.changes = changes

    return metadata


def convert_song(song: SongMetadata):
    """ Combine the quantized and the unquantized MIDI files 
    into one that aligns to measures but attempts to retain the original phrasing """
    from main import notes_from_file, notes_to_file
    Note.default_resolution = 960
    quantized = notes_from_file('weimardb/midi_from_ly/{}.mid'.format(song.name))
    original = notes_from_file('weimardb/midi_from_db/{}.mid'.format(song.name))
    for note in quantized:
        if note.resolution != Note.default_resolution:  # these are in 384 tpb
            ratio = Note.default_resolution / note.resolution  # 2.5
            note.tick_abs = int(note.tick_abs * ratio)
            note.duration = int(note.duration * ratio)
            note.resolution = Note.default_resolution
    meas_no = 0
    a, b, c = [], [], []  # quantized measure, original measure, combined output
    for q, o in zip(quantized, original):
        if q.measure != meas_no:
            if len(a) > 1:
                r = (a[-1].tick_abs - a[0].tick_abs) / (b[-1].tick_abs - b[0].tick_abs)  # stretch ratio
                a_m = (meas_no + 0.5) * Note.meter * Note.default_resolution  # middle of quantized measure
                b_m = b[0].tick_abs + (a_m - a[0].tick_abs) / r  # estimated middle of unquantized measure
                for a_j, b_j in zip(a, b):
                    n = Note()
                    n.pitch = b_j.pitch
                    n.resolution = b_j.resolution
                    n.velocity = b_j.velocity
                    n.tick_abs = int(a_m + r * (b_j.tick_abs - b_m))
                    n.duration = int(r * b_j.duration) or a_j.duration
                    c.append(n)
            else:
                c += a
            meas_no = q.measure
            a = []
            b = []
        a.append(q)
        b.append(o)
    notes_to_file(sorted(c, key=lambda p: p.tick_abs), 'weimardb/midi_combined/{}.mid'.format(song.name))


def _main():
    for song in load_metadata():
        convert_song(song)


if __name__ == '__main__':
    _main()
