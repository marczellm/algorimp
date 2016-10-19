# -*- coding: utf-8 -*-
import copy
import math
import midi
import midiutil.MidiFile
from markov import Markov
from music import Note, Chord, ChordProgression, ABCNote
from utils import nwise
from typing import List, Tuple


def changes_from_file(songname: str) -> ChordProgression:
    with open(r"changes\{}.txt".format(songname)) as bf:
        return ChordProgression(ABCNote.from_string(songname.split('_')[0]), bf.read())


def notes_from_file(songname: str) -> List[Note]:
    filename = r"input\{}.mid".format(songname)
    midifile_rel = midi.read_midifile(filename)
    midifile_abs = copy.deepcopy(midifile_rel)
    midifile_abs.make_ticks_abs()

    # Convert MIDI events to our music representation: a list of Note objects
    notes = []
    active_notes = {}
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
    return notes


def notes_to_file(notes: List[Note]):
    print("Writing to file... ", end='')
    kf = midiutil.MidiFile.MIDIFile(1, adjust_origin=False)
    kf.addTrackName(0, 0, "Track 1")
    for n in notes:
        kf.addNote(0, 0, n.pitch, n.tick_abs / Note.resolution, n.duration / Note.resolution, 100)
    with open("output.mid", 'wb') as f:
        kf.writeFile(f)
    print("Done.")


def chord_agnostic_markov(notes: List[Note], changes: ChordProgression) -> Tuple[List[Note], List[Note]]:
    """ Improvise a melody using one Markov chain for the pitches and an independent one for the rhythm.
    Chord changes are ignored.

    Usage: ``melody, withchords = chord_agnostic_markov(notes, changes)``

    Here ``melody`` is the generated melody on its own, while ``withchords`` will also contain chord voicings.

    :param notes: the training set
    :param changes: the chord progression. It is only used when generating the accompaniment voicings.
    """
    # Train the Markov chains
    m1 = Markov(3)
    m1.learn([n.pitch for n in notes])
    m1.start([n.pitch for n in notes[:m1.order]])

    m2 = Markov()
    m2.learn([(n.ticks_since_beat_quantised, n.duration_quantised) for n in notes])
    m2.start([(n.ticks_since_beat_quantised, n.duration_quantised) for n in notes[:m2.order]])

    # Generate output
    print("Generating notes...")
    melody = notes[:max(m1.order, m2.order)]
    withchords = copy.deepcopy(melody)
    beat = melody[-1].beat
    chord = changes[(beat - 1) % len(changes)]
    for i in range(500):
        n = Note()
        n.pitch = m1.next()
        tsbq, dq = m2.next()
        tsbq *= 10
        n.duration = dq * 10
        if melody and melody[-1].ticks_since_beat > tsbq:
            beat_diff = 1 + melody[-1].duration // Note.resolution
            for _ in range(beat_diff):
                beat += 1
                # If the chord changed, add a voicing to the MIDI file
                newchord = changes[(beat - 1) % len(changes)]
                if newchord != chord:
                    chord = newchord
                    voicing = chord.voicing1357()
                    for v in voicing:
                        v.tick_abs = beat * Note.resolution
                        withchords.append(v)
        # Prevent overlapping notes
        n.tick_abs = tsbq + Note.resolution * \
                            max(beat, math.floor((melody[-1].tick_abs + melody[-1].duration) / Note.resolution))
        melody.append(n)
        withchords.append(n)
    return melody, withchords


def static_chord_markov(notes: List[Note], changes: ChordProgression) -> Tuple[List[Note], List[Note]]:
    """ Improvise a melody using one Markov chain for the rhythm and one for each chord.
    :param notes: the training set
    :param changes: the chord progression.
    """
    def chord_of(n: Note) -> Chord:
        return changes[(n.beat - 1) % len(changes)]

    order = 3
    notes_by_chord = {chord: [] for chord in changes}
    for note in notes:
        notes_by_chord[chord_of(note)].append(note.pitch)
    markovs_by_chord = {chord: Markov(order) for chord in changes}
    for chord, markov in markovs_by_chord.items():
        markov.learn(notes_by_chord[chord])

    mr = Markov()
    mr.learn([(n.ticks_since_beat_quantised, n.duration_quantised) for n in notes])
    mr.start([(n.ticks_since_beat_quantised, n.duration_quantised) for n in notes[:mr.order]])

    # Generate output
    print("Generating notes...")
    melody = notes[:max(order, mr.order)]
    withchords = copy.deepcopy(melody)
    beat = melody[-1].beat
    chord = changes[(beat - 1) % len(changes)]
    current_markov = markovs_by_chord[chord]
    current_markov.start([n.pitch for n in notes[:current_markov.order]])
    for i in range(500):
        n = Note()
        tsbq, dq = mr.next()
        tsbq *= 10
        n.duration = dq * 10
        if melody and melody[-1].ticks_since_beat > tsbq:
            beat_diff = 1 + melody[-1].duration // Note.resolution
            for _ in range(beat_diff):
                beat += 1
                # If the chord changed, add a voicing to the MIDI file, and restart the associated Markov chain
                newchord = changes[(beat - 1) % len(changes)]
                if newchord != chord:
                    current_markov = markovs_by_chord[newchord]
                    current_markov.start([n.pitch for n in melody[:current_markov.order]])
                    chord = newchord
                    voicing = chord.voicing1357()
                    for v in voicing:
                        v.tick_abs = beat * Note.resolution
                        withchords.append(v)
        # Prevent overlapping notes
        n.tick_abs = tsbq + Note.resolution * \
                            max(beat, math.floor((melody[-1].tick_abs + melody[-1].duration) / Note.resolution))
        n.pitch = current_markov.next()
        melody.append(n)
        withchords.append(n)
    return melody, withchords


def main():
    songname = "C_blues"
    # Read the chord changes from a text file
    changes = changes_from_file(songname)
    # Read the training set from a MIDI file
    notes = notes_from_file(songname)
    # Learn and generate
    melody, withchords = static_chord_markov(notes, changes)
    # Write output file
    notes_to_file(withchords)


if __name__ == "__main__":
    main()
