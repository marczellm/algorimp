# -*- coding: utf-8 -*-
import copy
import midi
from markov import Markov
from music import Note
from utils import nwise


def main():
    filename = r"D:\Marci\Google Drive\PPKE\Önlab\MSc\bluesscale.mid"
    print("Reading file " + filename)
    midifile_rel = midi.read_midifile(filename)
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

    gen = [notes[0]]
    beat = notes[0].beat
    for i in range(500):
        p = m1.next()
        tsbq, dq = m2.next()
        n = Note()
        tsbq *= 10
        dq *= 10
        n.pitch = p
        if gen and gen[-1].ticks_since_beat > tsbq:
            beat += 1
        n.tick_abs = beat * Note.resolution + tsbq
        n.duration = dq
        gen.append(n)

    kf = midi.Pattern()
    kf.append(midifile_rel[0])
    track = midi.Track()
    for ev in midifile_abs[1]:
        if ev.tick == 0 and not isinstance(ev, midi.NoteOnEvent):
            track.append(ev)
    last_tick = 0
    for n in gen:
        on = midi.NoteOnEvent(tick=n.tick_abs - last_tick, pitch=n.pitch, velocity=100)
        off = midi.NoteOnEvent(tick=n.duration, pitch=n.pitch, velocity=0)
        track.append(on)
        track.append(off)
        last_tick = n.tick_abs + n.duration
    track.append(midi.EndOfTrackEvent(tick=1))  # gen[-1].tick_abs + gen[-1].duration + 1))
    kf.append(track)
    midi.write_midifile("output.mid", kf)
        

if __name__ == "__main__":
    main()
