import enum
import re
import numbers

import numpy as np
from typing import List, Union


class Note:
    default_resolution = 0
    meter = 4

    def __init__(self):
        self.tick_abs = 0  # tick_rel is not stored, because it is either the time since the last note on or note off
        self.duration = 0
        self.pitch = 0
        self.velocity = 0
        self.resolution = self.default_resolution

    @property
    def beat_in_measure(self) -> int:
        return self.beat % self.meter

    @property
    def beat(self) -> int:
        return self.tick_abs // self.resolution

    @property
    def ticks_since_beat(self) -> int:
        return self.tick_abs % self.resolution

    @property
    def measure(self) -> int:
        return self.tick_abs // (self.meter * self.resolution)

    @measure.setter
    def measure(self, meas: int):
        self.tick_abs = meas * self.meter * self.resolution + self.ticks_since_measure

    @property
    def ticks_since_measure(self) -> int:
        return self.tick_abs % (self.meter * self.resolution)

    @property
    def abcnote(self) -> 'ABCNote':
        return ABCNote(self.pitch % 12)

    @property
    def octave(self) -> int:
        return self.pitch // 12

    # The casts to int are necessary because round(np.float64) returns np.float64
    @property
    def ticks_since_measure_quantised(self) -> int:
        return int(round(self.ticks_since_measure / 10))

    @property
    def ticks_since_beat_quantised(self) -> int:
        return int(round(self.ticks_since_beat / 10))

    @property
    def duration_quantised(self) -> int:
        return int(min(round(self.duration / 10), 4 * self.resolution / 10))

    @property
    def velocity_quantised(self) -> int:
        return int(round(self.velocity / 6.4))

    def __str__(self):
        return self.abcnote.name + str(self.octave) + ' ' + str({'beat': self.beat,
                                                                 'tsbq': self.ticks_since_beat_quantised,
                                                                 'dq':   self.duration_quantised})


class ABCNote(enum.Enum):
    C = 0
    Db = 1
    D = 2
    Eb = 3
    E = 4
    F = 5
    Gb = 6
    G = 7
    Ab = 8
    A = 9
    Bb = 10
    B = 11

    @classmethod
    def mapping(cls):
        return {'cb': 'B', 'ces': 'B', 'c#': 'Db', 'cis': 'Db', 'c': 'C',
                'db': 'Db', 'des': 'Db', 'd#': 'Eb', 'dis': 'Eb', 'd': 'D',
                'eb': 'Eb', 'es': 'Eb', 'e#': 'F', 'eis': 'F', 'e': 'E',
                'fb': 'E', 'fes': 'E', 'f#': 'Gb', 'fis': 'Gb', 'f': 'F',
                'gb': 'Gb', 'ges': 'Gb', 'g#': 'Ab', 'gis': 'Ab', 'g': 'G',
                'ab': 'Ab', 'as': 'Ab', 'a#': 'Bb', 'ais': 'Bb', 'a': 'A',
                'bb': 'Bb', 'bes': 'Bb', 'b#': 'C', 'bis': 'C', 'b': 'B',
                'h': 'B', 'his': 'C', 'h#': 'C'}

    @classmethod
    def from_string(cls, s: str):  # not using enum aliases because # is not allowed in an identifier
        mapping = cls.mapping()
        s = s.lower()
        assert s in mapping, "Invalid note name " + s
        return cls[mapping[s]]

    def __add__(self, other: int) -> 'ABCNote':
        return ABCNote((self.value + other) % 12)


# Define this dynamically to be able to have a member named 7
ChordType = enum.Enum('ChordType', 'dimmaj dim m7b5 m7 mmaj maj aug7 7 augmaj', start=0)


class Chord:
    def __init__(self, root: ABCNote, typ: ChordType):
        self.root = root
        self.type = typ

    def __str__(self):
        return self.root.name + self.type.name

    def __eq__(self, other):
        return other is not None and self.root == other.root and self.type == other.type

    def __hash__(self):
        return hash((self.root, self.type))

    __sre_roots = '|'.join(ABCNote.mapping().keys())
    __sre_types = '|'.join(x.name for x in ChordType)
    sre = "({})({})".format(__sre_roots, __sre_types)
    __re = re.compile(sre.lower())

    @classmethod
    def parse(cls, string: str) -> 'Chord':
        """ Parse a chord in algorimp format """
        match = cls.__re.match(string.lower())
        if match:
            return Chord(ABCNote.from_string(match.group(1)), ChordType[match.group(2)])

    def notes(self) -> List[ABCNote]:
        shapes = {  # Chord shapes given with thirds
            ChordType.dim: [3, 3, 3],
            ChordType.m7b5: [3, 3, 4],
            ChordType.dimmaj: [3, 3, 5],
            ChordType.m7: [3, 4, 3],
            ChordType.mmaj: [3, 4, 4],
            ChordType(7): [4, 3, 3],
            ChordType.maj: [4, 3, 4],
            ChordType.aug7: [4, 4, 2],
            ChordType.augmaj: [4, 4, 3]
        }
        return [self.root] + [self.root + interval for interval in np.cumsum(shapes[self.type])]

    def voicing1357(self) -> List[Note]:
        """ :return: a basic 1-3-5-7 voicing of the chord """
        abcnotes = self.notes()
        midinotes = []
        oct_shift = 0
        for i, note in enumerate(abcnotes):
            if i > 0 and abcnotes[i - 1].value > note.value:
                oct_shift += 12
            mnote = Note()
            mnote.pitch = note.value + oct_shift + 48
            mnote.duration = mnote.resolution
            mnote.velocity = 80
            midinotes.append(mnote)
        return midinotes


class ChordProgression(list):
    """ A chord progression with absolute base notes. """
    def __init__(self, base: ABCNote, string=None):
        """
        :param base: The tonic note
        :param string: The chord progression in string format
        """
        super(ChordProgression, self).__init__()
        self.base = base
        if string:
            self.__parse(string.lower())

    def transpose(self, new_base: ABCNote) -> 'ChordProgression':
        """ :param new_base: The new tonic """
        ret = ChordProgression(new_base)
        diff = new_base.value - self.base.value
        if not diff:
            return self
        for chord in self:
            ret.append(Chord(chord.root + diff, chord.type))
        return ret

    def unique(self, i: int, radius: int) -> List[Chord]:
        """ Return the i-th chord together with the preceding and succeeding r different chords """
        ret = [None] * (2 * radius + 1)  # type: List[Chord]
        ret[radius] = self[i]
        j, k = 1, 1
        while k <= radius:
            chord = self[i+j]
            prev = self[i+j-1]
            if chord != prev:
                ret[radius + k] = chord
                k += 1
            j += 1
        j, k = 1, 1
        while k <= radius:
            chord = self[i-j]
            prev = self[i-j+1]
            if chord != prev:
                ret[radius - k] = chord
                k += 1
            j += 1
        return ret

    def __parse(self, string: str):
        regex = re.compile("({}|-)".format(Chord.sre).lower())
        for match in regex.finditer(string):
            if match.group(0) == '-':
                self.append(self[-1])
            else:
                self.append(Chord.parse(match.group(0)))

    def __str__(self):
        ret = ""
        for i, chord in enumerate(self):
            if i > 0 and chord == self[i-1]:
                ret += '- '
            else:
                ret += str(chord) + ' '
        return ret

    def measures(self) -> int:
        return len(self) // Note.meter

    def _foldback(self, key: Union[int, slice]):
        m = len(self)
        if isinstance(key, numbers.Integral):
            key %= m
        elif isinstance(key, slice):  # start and stop can be None
            key = slice((key.start or 0) % m, key.stop % m if key.stop is not None else m, key.step)
        return key
    
    def __getitem__(self, key):
        key = self._foldback(key)
        if isinstance(key, slice):
            if (key.start or 0) > (key.stop or len(self)):
                slice1 = slice(key.stop)
                slice2 = slice(key.start, len(self))
                return super().__getitem__(slice1) + super().__getitem__(slice2)
        return super().__getitem__(key)
    
    def __setitem__(self, key, value):
        key = self._foldback(key)
        super().__setitem__(key, value)

    def __delitem__(self, key):
        key = self._foldback(key)
        super().__delitem__(key)
