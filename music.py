import enum


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

    __mapping = {'cb': 'B', 'ces': 'B', 'c#': 'Db', 'cis': 'Db', 'c': 'C',
                 'db': 'Db', 'des': 'Db', 'd#': 'Eb', 'dis': 'Eb', 'd': 'D',
                 'eb': 'Eb', 'es': 'Eb', 'e#': 'F', 'eis': 'F', 'e': 'E',
                 'fb': 'E', 'fes': 'E', 'f#': 'Gb', 'fis': 'Gb', 'f': 'F',
                 'gb': 'Gb', 'ges': 'Gb', 'g#': 'Ab', 'gis': 'Ab', 'g': 'G',
                 'ab': 'Ab', 'as': 'Ab', 'a#': 'Bb', 'ais': 'Bb', 'a': 'A',
                 'bb': 'Bb', 'bes': 'Bb', 'b#': 'C', 'bis': 'C', 'b': 'B',
                 'h': 'B', 'his': 'C', 'h#': 'C'}

    @classmethod
    def from_string(cls, s: str):  # not using enum aliases because # is not allowed in an identifier
        s = s.lower()
        assert s in cls.__mapping, "Invalid note name"
        return cls[mapping[s]]


class ChordType(enum.Enum):
    dim = 0
    m7b5 = 1
    dimmaj = 2
    m7 = 3
    mmaj = 4
    _7 = 5
    maj = 6
    aug7 = 7
    augmaj = 8


class Chord:
    def __init__(self, root: ABCNote, typ: ChordType):
        self.root = root
        self.type = typ


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
