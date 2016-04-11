import copy
import midi
import enum
from itertools import tee


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
    def from_string(cls, s):  # not using enum aliases because # is not allowed in an identifier
        mapping = {'cb': 'B', 'ces': 'B', 'c#': 'Db', 'cis': 'Db', 'c': 'C',
                   'db': 'Db', 'des': 'Db', 'd#': 'Eb', 'dis': 'Eb', 'd': 'D',
                   'eb': 'Eb', 'es': 'Eb', 'e#': 'F', 'eis': 'F', 'e': 'E',
                   'fb': 'E', 'fes': 'E', 'f#': 'Gb', 'fis': 'Gb', 'f': 'F',
                   'gb': 'Gb', 'ges': 'Gb', 'g#': 'Ab', 'gis': 'Ab', 'g': 'G',
                   'ab': 'Ab', 'as': 'Ab', 'a#': 'Bb', 'ais': 'Bb', 'a': 'A',
                   'bb': 'Bb', 'bes': 'Bb', 'b#': 'C', 'bis': 'C', 'b': 'B'}
        s = s.lower()
        assert s in mapping, "Invalid note name"
        return cls[mapping[s]]


class ChordType(enum.Enum):
    dim = 0
    m7b5 = 1
    m7 = 2
    mmaj = 3
    _7 = 4
    maj = 5
    aug = 6
    augmaj = 7


class Chord:
    def __init__(self, root: ABCNote, typ: ChordType):
        self.root = root
        self.type = typ


class Note:
    def __init__(self):
        self.tick_abs = 0
        self.tick_rel = 0
        self.duration = 0
        self.pitch = 0
        self.velocity = 0
        self.measure_no = 0
        self.beat_no = 0
        self.ticks_since_beat = 0
        self.ticks_since_measure = 0
        self.ticks_since_chord = 0
        self.ticks_since_last_note_start = 0
        self.ticks_since_last_note_end = 0

    @property
    def beat_in_measure(self):
        return self.beat_no % 4

    @property
    def abcnote(self):
        return ABCNote(self.pitch % 12)


def pairwise(iterable):
    """s -> (s0,s1), (s1,s2), (s2, s3), ..."""
    a, b = tee(iterable)
    next(b, None)
    return zip(a, b)


def main():
    midifile_rel = midi.read_midifile(r"D:\Marci\Google Drive\PPKE\Önlab\MSc\bluesscale.mid")
    midifile_abs = copy.deepcopy(midifile_rel)
    midifile_abs.make_ticks_abs()
    notes = []
    active_notes = {}
    # tempos = list(filter(lambda x: isinstance(x, midi.SetTempoEvent), midifile_rel[0]))
    # assert len(tempos) == 1, "This code does not handle tempo changes"
    resolution = midifile_rel.resolution
    for ev_rel, ev_abs in zip(midifile_rel[1], midifile_abs[1]):
        if isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1]:
            n = Note()
            n.tick_abs = ev_abs.tick
            n.tick_rel = ev_rel.tick
            n.pitch = ev_rel.data[0]
            n.velocity = ev_rel.data[1]
            n.beat_no = n.tick_abs // resolution
            n.ticks_since_beat = n.tick_abs % resolution
            n.measure_no = n.tick_abs // (4 * resolution)
            n.ticks_since_measure = n.tick_abs % (4 * resolution)
            active_notes[n.pitch] = n
        elif isinstance(ev_rel, midi.NoteOffEvent) or (isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1] == 0):
            n = active_notes.pop(ev_rel.data[0])
            n.duration = ev_abs.tick - n.tick_abs
            notes.append(n)
    assert not active_notes, "Some notes were not released"
    for n, m in pairwise(notes):
        m.ticks_since_last_note_start = m.tick_abs - n.tick_abs
        m.ticks_since_last_note_end = m.tick_abs - n.tick_abs + n.duration


if __name__ == "__main__":
    main()
