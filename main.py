# -*- coding: utf-8 -*-
import copy
import midi
import enum
from markov import Markov
from utils import nwise

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
    resolution = 0

    def __init__(self):
        self.tick_abs = 0
        self.tick_rel = 0
        self.duration = 0
        self.pitch = 0
        self.velocity = 0
        self.ticks_since_chord = 0
        self.ticks_since_last_note_start = 0
        self.ticks_since_last_note_end = 0

    def rhythmtuple(self):
        return self.ticks_since_last_note_end, self.duration_quantised

    @property
    def beat_in_measure(self):
        return self.beat_no % 4

    @property
    def beat_no(self):
        return self.tick_abs // self.resolution

    @property
    def ticks_since_beat(self):
        return self.tick_abs % self.resolution

    @property
    def measure_no(self):
        return self.tick_abs // (4 * self.resolution)

    @property
    def ticks_since_measure(self):
        return self.tick_abs % (4 * self.resolution)

    @property
    def abcnote(self):
        return ABCNote(self.pitch % 12)

    @property
    def ticks_since_measure_quantised(self):
        return round(self.ticks_since_measure / 10)

    @property
    def duration_quantised(self):
        return max(round(self.duration / 10), 384)

    @property
    def velocity_quantised(self):
        return round(self.velocity / 6.4)


def main():
    midifile_rel = midi.read_midifile(r"D:\Marci\Google Drive\PPKE\Önlab\MSc\bluesscale.mid")
    midifile_abs = copy.deepcopy(midifile_rel)
    midifile_abs.make_ticks_abs()
    notes = []
    active_notes = {}

    tempos = list(filter(lambda x: isinstance(x, midi.SetTempoEvent), midifile_rel[0]))
    assert len(tempos) == 1, "This code does not handle tempo changes"

    Note.resolution = midifile_rel.resolution
    for ev_rel, ev_abs in zip(midifile_rel[1], midifile_abs[1]):
        if isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1]:
            n = Note()
            n.tick_abs = ev_abs.tick
            n.tick_rel = ev_rel.tick
            n.pitch = ev_rel.data[0]
            n.velocity = ev_rel.data[1]
            active_notes[n.pitch] = n
        elif isinstance(ev_rel, midi.NoteOffEvent) or (isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1] == 0):
            n = active_notes.pop(ev_rel.data[0])
            n.duration = ev_abs.tick - n.tick_abs
            notes.append(n)
    assert not active_notes, "Some notes were not released"
    for n, m in nwise(notes, 2):
        m.ticks_since_last_note_start = m.tick_abs - n.tick_abs
        m.ticks_since_last_note_end = m.tick_abs - n.tick_abs + n.duration

    m = max(n.duration_quantised for n in notes)
    np = next(n for n in notes if n.duration_quantised == m)

    markov = Markov()
    # markov.learn([n.rhythmtuple() for n in notes])
    markov.learn([n.pitch for n in notes])
    # print(markov.sparseness())

b = __name__ == "__main__"
if b:
    print("Running...")
    main()
