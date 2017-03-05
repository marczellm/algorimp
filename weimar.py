""" A parser for chord progressions in the Weimar Jazzomat CSV format """
import re
import csv
from itertools import chain
from typing import Tuple, List

from music import ABCNote, ChordType, Chord, ChordProgression

_chordtype_mapping = {
    '': ChordType.maj,
    '6': ChordType.maj,
    'j7': ChordType.maj,
    '-7': ChordType.m7,
    '-': ChordType.m7,
    '-6': ChordType.mmaj,
    '+7': ChordType.aug7,
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
    if s in ChordType.__members__:
        return ChordType[s]
    elif s in _chordtype_mapping:
        return _chordtype_mapping[s]
    else:
        raise KeyError(s + " chord unknown")


def parse_measure(s: str) -> Tuple[(Chord,)*4]:
    ret = []
    for match in re.finditer(_re_optional_chord, s):
        if match.group(0) in [' ', 'NC']:
            ret.append(ret[-1])
        else:
            ret.append(Chord(ABCNote.from_string(match.group(2)), parse_chordtype(match.group(3))))
    assert len(ret) == 4
    return tuple(ret)


def load_metadata() -> List:
    with open('weimardb/changes.csv', newline='') as bf:
        reader = csv.reader(bf, delimiter=';')
        next(reader)
        metadata = list(reader)

    metadata = [song for song in metadata if song[1] and not _re_invalid_measure.search(song[2])]

    for song in metadata:
        song[0] = song[0][:-3]
        changes = ChordProgression(ABCNote.from_string(_re_roots.match(song[1]).group(0)))
        for m in re.finditer(_re_measure, song[2]):
            changes += parse_measure(m.group(0))
        song[2] = changes

    return metadata


def main():
    load_metadata()

if __name__ == '__main__':
    main()