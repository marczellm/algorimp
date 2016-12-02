# -*- coding: utf-8 -*-
import sys
import copy
import math
from typing import List, Tuple

import midi
import midiutil.MidiFile

from models.markov import StaticChordMarkovMelodyGenerator, MarkovRhythmGenerator
from models.neural import OneHiddenLayerMelodyAndRhythmGenerator
from music import Note, ChordProgression, ABCNote
from utils import nwise


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


def generate(notes: List[Note], changes: ChordProgression,
             melody_generator, rhythm_generator) -> Tuple[List[Note], List[Note]]:
    """ Improvise a melody using two learners for the melody and the rhythm. They can be the same though.
        :param notes: the training set
        :param changes: the chord progression.
        :param melody_generator:
        :param rhythm_generator:
        """
    melody_generator.learn(notes)
    if rhythm_generator != melody_generator:
        rhythm_generator.learn(notes)

    # Generate output
    print("Generating notes...")
    melody = notes[:max(melody_generator.order, rhythm_generator.order)]
    withchords = copy.deepcopy(melody)
    beat = melody[-1].beat
    chord = changes[(beat - 1) % len(changes)]
    melody_generator.start(chord)
    for i in range(500):
        n = Note()
        tsbq, dq = rhythm_generator.next_rhythm()
        tsbq *= 10
        n.duration = dq * 10
        if melody and melody[-1].ticks_since_beat > tsbq:  # New beat: might be a chord change
            beat_diff = 1 + melody[-1].duration // Note.resolution
            for _ in range(beat_diff):
                beat += 1
                # If the chord changed, add a voicing to the MIDI file, and inform the melody generator
                newchord = changes[(beat - 1) % len(changes)]
                if newchord != chord:
                    melody_generator.start(newchord)
                    chord = newchord
                    voicing = chord.voicing1357()
                    for v in voicing:
                        v.tick_abs = beat * Note.resolution
                        withchords.append(v)
        # Prevent overlapping notes
        n.tick_abs = tsbq + Note.resolution * \
            max(beat, math.floor((melody[-1].tick_abs + melody[-1].duration) / Note.resolution))
        n.pitch = melody_generator.next_pitch()
        melody.append(n)
        withchords.append(n)
        if melody_generator == rhythm_generator:
            melody_generator.add_past(n)
    return melody, withchords


def main(*args):
    songname = "C_blues"
    # Read the chord changes from a text file
    changes = changes_from_file(songname)
    # Read the training set from a MIDI file
    notes = notes_from_file(songname)
    # Learn and generate
    melody_generator = None
    rhythm_generator = None
    if 'markov' in args:
        melody_generator = StaticChordMarkovMelodyGenerator(changes)
        rhythm_generator = MarkovRhythmGenerator()
    elif 'neural' in args:
        melody_generator = OneHiddenLayerMelodyAndRhythmGenerator(changes, 5)
        rhythm_generator = melody_generator
    melody, withchords = generate(notes, changes, melody_generator, rhythm_generator)
    # Write output file
    notes_to_file(withchords)


if __name__ == "__main__":
    main(*sys.argv)
