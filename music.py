import enum
import re


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


# Define this dynamically to be able to have a member named 7
ChordType = enum.Enum('ChordType', 'dim m7b5 dimmaj m7 mmaj 7 maj aug7 augmaj')


class Chord:
    def __init__(self, root: ABCNote, typ: ChordType):
        self.root = root
        self.type = typ

    def __str__(self):
        return self.root.name + self.type.name


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
            ret.append(Chord(ABCNote((chord.root.value + diff) % 12), chord.type))
        return ret

    def __parse(self, string: str):
        s_roots = '|'.join(ABCNote.mapping().keys())
        s_types = '|'.join(x.name for x in ChordType)
        s_regex = "(({})({})|-)".format(s_roots, s_types)
        regex = re.compile(s_regex.lower())
        for match in regex.finditer(string):
            if match.group(0) == '-':
                self.append(self[-1])
            else:
                self.append(Chord(ABCNote.from_string(match.group(2)), ChordType[match.group(3)]))

    def __str__(self):
        ret = ""
        for i, chord in enumerate(self):
            if i > 0 and chord == self[i-1]:
                ret += '- '
            else:
                ret += str(chord) + ' '
        return ret


class Note:
    resolution = 0
    meter = 4

    def __init__(self):
        self.tick_abs = 0
        self.tick_rel = 0
        self.duration = 0
        self.pitch = 0
        self.velocity = 0
        self.ticks_since_chord = 0
        self.ticks_since_last_note_start = 0
        self.ticks_since_last_note_end = 0

    @property
    def beat_in_measure(self):
        return self.beat % self.meter

    @property
    def beat(self):
        return self.tick_abs // self.resolution

    @property
    def ticks_since_beat(self):
        return self.tick_abs % self.resolution

    @property
    def measure(self):
        return self.tick_abs // (self.meter * self.resolution)

    @property
    def ticks_since_measure(self):
        return self.tick_abs % (self.meter * self.resolution)

    @property
    def abcnote(self):
        return ABCNote(self.pitch % 12)

    @property
    def ticks_since_measure_quantised(self):
        return round(self.ticks_since_measure / 10)

    @property
    def ticks_since_beat_quantised(self):
        return round(self.ticks_since_beat / 10)

    @property
    def duration_quantised(self):
        return min(round(self.duration / 10), 384)

    @property
    def velocity_quantised(self):
        return round(self.velocity / 6.4)

