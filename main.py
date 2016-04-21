# -*- coding: utf-8 -*-
import copy
import midi
from markov import Markov
from music import Note
from utils import nwise


def main():
    print("Reading file " + r"D:\Marci\Google Drive\PPKE\Önlab\MSc\bluesscale.mid")
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

    m1 = Markov()
    m1.learn([n.pitch for n in notes])
    m1.start([notes[0].pitch])

    m2 = Markov()
    m2.learn([(n.ticks_since_beat_quantised, n.duration_quantised) for n in notes])
    m2.start([(notes[0].ticks_since_beat_quantised, notes[0].duration_quantised)])

    for i in range(500):
        p = m1.next()
        tsbq, dq = m2.next()
        print(dq)

if __name__ == "__main__":
    main()
