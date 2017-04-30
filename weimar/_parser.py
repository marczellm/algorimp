""" A parser for chord progressions in the Weimar Jazzomat CSV format """
import re
from itertools import chain
from typing import Tuple, Optional

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
re_invalid_measure = re.compile(r'\|(NC| )+\|')


def parse_key(s: str) -> ABCNote:
    """ Parse a key signature. The Jazzomat format includes maj and min but we discard that. """
    return ABCNote.from_string(_re_roots.match(s).group(0))


def parse_chordtype(s: str) -> ChordType:
    """ Parse a chord type in the Weimar Jazzomat format """
    if s in ChordType.__members__:
        return ChordType[s]
    elif s in _chordtype_mapping:
        return _chordtype_mapping[s]
    else:
        raise KeyError(s + " chord unknown")


def parse_chord(s: str) -> Optional[Chord]:
    """
    :return: None if the chord is invalid 
    """
    match = re.match(_re_chord, s)
    if match:
        return Chord(root=ABCNote.from_string(match.group(1)), typ=parse_chordtype(match.group(2)))
    else:
        return None


def parse_measure(s: str) -> Tuple[(Chord,) * Note.meter]:
    """ Parse a measure.

    :return four chords. Spaces translate to the chord before the space. """
    ret = []
    for match in re.finditer(_re_optional_chord, s):
        if match.group(0) in [' ', 'NC']:
            ret.append(ret[-1])
        else:
            ret.append(Chord(root=ABCNote.from_string(match.group(2)), typ=parse_chordtype(match.group(3))))
    assert len(ret) == Note.meter
    return tuple(ret)


def parse_changes(changes: str, key: str) -> ChordProgression:
    ret = ChordProgression(parse_key(key))
    for m in re.finditer(_re_measure, changes):
        ret += parse_measure(m.group(0))
    return ret


class SongMetadata:
    def __init__(self, name: str, chord_changes: str, changes: ChordProgression=None, **_):
        self.name = name
        self.changes_str = chord_changes
        self.changes = changes
