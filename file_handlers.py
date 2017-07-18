import copy
from typing import List

import midi
import midiutil.MidiFile

from music import ChordProgression, ABCNote, Note


def changes_from_file(songname: str) -> ChordProgression:
    with open("changes/{}.txt".format(songname)) as bf:
        return ChordProgression(ABCNote.from_string(songname.split('_')[0]), bf.read())


def notes_from_file(filename: str) -> List[Note]:
    midifile_rel = midi.read_midifile(filename)
    midifile_abs = copy.deepcopy(midifile_rel)
    midifile_abs.make_ticks_abs()

    # Convert MIDI events to our music representation: a list of Note objects
    notes = []
    active_notes = {}

    for ev_rel, ev_abs in zip(midifile_rel[-1], midifile_abs[-1]):
        if isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1]:
            n = Note()
            n.resolution = midifile_rel.resolution
            n.tick_abs = ev_abs.tick
            n.pitch = ev_rel.data[0]
            n.velocity = ev_rel.data[1]
            if n.pitch not in active_notes:
                active_notes[n.pitch] = {n}
            else:
                active_notes[n.pitch].add(n)
        elif isinstance(ev_rel, midi.NoteOffEvent) or (isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1] == 0):
            n = active_notes[ev_rel.data[0]].pop()
            n.duration = ev_abs.tick - n.tick_abs
            notes.append(n)
    assert not any(active_notes.values()), "Some notes were not released"
    return sorted(notes, key=lambda note: note.tick_abs)


def notes_to_file(notes: List[Note], filename: str, msg_callback=print):
    msg_callback("Writing file {}... ".format(filename), end='')
    kf = midiutil.MidiFile.MIDIFile(adjust_origin=False)
    kf.addTrackName(0, 0, "Track 1")
    for n in notes:
        kf.addNote(0, 0, n.pitch, n.tick_abs / n.resolution, n.duration / n.resolution or 1, 100)
    with open(filename, 'wb') as f:
        kf.writeFile(f)
    msg_callback("Done.")
