import enum
import re
import numpy as np
from typing import List


class Note:
    resolution = 0
    meter = 4

    def __init__(self):
        self.tick_abs = 0
        self.tick_rel = 0
        self.duration = 0
        self.pitch = 0
        self.velocity = 0
        self.ticks_since_last_note_start = 0
        self.ticks_since_last_note_end = 0

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

    @property
    def ticks_since_measure(self) -> int:
        return self.tick_abs % (self.meter * self.resolution)

    @property
    def abcnote(self) -> 'ABCNote':
        return ABCNote(self.pitch % 12)

    @property
    def octave(self) -> int:
        return self.pitch // 12

    @property
    def ticks_since_measure_quantised(self) -> int:
        return int(round(self.ticks_since_measure / 10))

    @property
    def ticks_since_beat_quantised(self) -> int:
        return int(round(self.ticks_since_beat / 10))

    @property
    def duration_quantised(self) -> int:
        return min(int(round(self.duration / 10)), 384)

    @property
    def velocity_quantised(self) -> int:
        return int(round(self.velocity / 6.4))


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
        assert s in mapping, "Invalid note name"
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
        return self.root == other.root and self.type == other.type

    def __hash__(self):
        return hash((self.root, self.type))

    __roots = '|'.join(ABCNote.mapping().keys())
    __types = '|'.join(x.name for x in ChordType)
    s_regex = "({})({})".format(__roots, __types)
    __compiled = re.compile(s_regex.lower())

    @classmethod
    def parse(cls, string: str) -> 'Chord':
        match = cls.__compiled.match(string.lower())
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
            mnote.duration = Note.resolution
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

    def __parse(self, string: str):
        regex = re.compile("({}|-)".format(Chord.s_regex).lower())
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

    def number_of_measures(self):
        return len(self) / 4
