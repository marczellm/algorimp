import midi
import copy


class Note:
    def __init__(self):
        self.tick_abs = 0
        self.tick_rel = 0
        self.duration = 0
        self.pitch = 0
        self.velocity = 0
        self.ticks_since_beat = 0
        self.ticks_since_measure = 0
        self.ticks_since_chord = 0


def main():
    midifile_rel = midi.read_midifile(r"D:\Marci\Google Drive\PPKE\Önlab\MSc\bluesscale.mid")
    midifile_abs = copy.deepcopy(midifile_rel)
    midifile_abs.make_ticks_abs()
    notes = []
    active_notes = {}
    tempos = list(filter(lambda x: isinstance(x, midi.SetTempoEvent), midifile_rel[0]))
    assert len(tempos) == 1, "This code does not handle tempo changes"
    tpqn = tempos[0].mpqn
    for ev_rel, ev_abs in zip(midifile_rel[1], midifile_abs[1]):
        if isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1]:
            n = Note()
            n.tick_abs = ev_abs.tick
            n.tick_rel = ev_rel.tick
            n.pitch = ev_rel.data[0]
            n.velocity = ev_rel.data[1]
            n.ticks_since_beat = n.tick_abs % tpqn
            n.ticks_since_measure = n.tick_abs % (4 * tpqn)
            active_notes[n.pitch] = n
        elif isinstance(ev_rel, midi.NoteOffEvent) or (isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1] == 0):
            n = active_notes.pop(ev_rel.data[0])
            n.duration = n.tick_abs - ev_abs.tick
            notes.append(n)
    assert not active_notes, "Some notes were not released"


if __name__ == "__main__":
    main()
