# -*- coding: utf-8 -*-
import copy
import math
from typing import List, Tuple, Union

import fire
import midi
import midiutil.MidiFile


import weimar
from models.interfaces import MelodyGenerator, RhythmGenerator, MelodyAndRhythmGenerator
from models import markov, neural
from music import Note, ChordProgression, ABCNote
from helpers import nwise


def changes_from_file(songname: str) -> ChordProgression:
    with open(r"changes/{}.txt".format(songname)) as bf:
        return ChordProgression(ABCNote.from_string(songname.split('_')[0]), bf.read())


def notes_from_file(filename: str) -> List[Note]:
    midifile_rel = midi.read_midifile(filename)
    midifile_abs = copy.deepcopy(midifile_rel)
    midifile_abs.make_ticks_abs()

    # Convert MIDI events to our music representation: a list of Note objects
    notes = []
    active_notes = {}
    Note.resolution = midifile_rel.resolution

    for ev_rel, ev_abs in zip(midifile_rel[-1], midifile_abs[-1]):
        if isinstance(ev_rel, midi.NoteOnEvent) and ev_rel.data[1]:
            n = Note()
            n.tick_abs = ev_abs.tick
            n.tick_rel = ev_rel.tick
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
    for n, m in nwise(notes, 2):
        m.ticks_since_last_note_start = m.tick_abs - n.tick_abs
        m.ticks_since_last_note_end = m.tick_abs - n.tick_abs + n.duration
    return notes


def notes_to_file(notes: List[Note], filename: str):
    print("Writing file {}... ".format(filename), end='')
    kf = midiutil.MidiFile.MIDIFile(1, adjust_origin=False)
    kf.addTrackName(0, 0, "Track 1")
    for n in notes:
        kf.addNote(0, 0, n.pitch, n.tick_abs / Note.resolution, n.duration / Note.resolution, 100)
    with open(filename, 'wb') as f:
        kf.writeFile(f)
    print("Done.")


def generate(notes: List[Note], changes: ChordProgression,
             melody_generator: Union[MelodyGenerator, MelodyAndRhythmGenerator],
             rhythm_generator: RhythmGenerator, measures: int) -> Tuple[List[Note], List[Note]]:
    """ Improvise a melody using two models for the melody and the rhythm, and one chord progression

        :param notes: the training set
        :param changes: the chord progression.
        :param melody_generator: An object that conforms to the implicit melody generator interface.
        :param rhythm_generator: An object that conforms to the implicit rhythm generator interface.
            It can be the same as the melody generator.
        :param measures: The number of measures to generate
        """
    melody_generator.learn(notes, changes)
    if rhythm_generator != melody_generator:
        rhythm_generator.learn(notes)

    # Generate output
    print("Generating notes...")
    melody = notes[:max(melody_generator.order, rhythm_generator.order)]
    withchords = copy.deepcopy(melody)
    beat = melody[-1].beat
    chord = changes[beat - 1]
    melody_generator.start(beat - 1)
    while beat < measures * 4:
        n = Note()
        tsbq, dq = rhythm_generator.next_rhythm()
        tsbq *= 10
        n.duration = dq * 10
        if melody and melody[-1].ticks_since_beat > tsbq:  # New beat: might be a chord change
            beat_diff = 1 + melody[-1].duration // Note.resolution
            for _ in range(beat_diff):
                beat += 1
                # If the chord changed, add a voicing to the MIDI file, and inform the melody generator
                newchord = changes[beat - 1]
                if newchord != chord:
                    melody_generator.start(beat - 1)
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


class Main:
    """ All the entry points into the application. Refer to the Fire documentation for details. """
    @staticmethod
    def single(model, song, choruses):
        """
        Train and run a model on the same chord progression.

        :param model: The name of the model: 'markov' or 'neural'.
        :param song: The name of the song.
            Both the midi file and the text file containing the changes must exist with this name.
        :param choruses: The number of choruses to generate
        """
        # Read the chord changes from a text file
        changes = changes_from_file(song)
        # Read the training set from a MIDI file
        filename = r"input/{}.mid".format(song)
        notes = notes_from_file(filename)
        # Learn and generate
        melody_generator = None
        rhythm_generator = None
        if model == 'markov':
            melody_generator = markov.StaticChordMelody(changes)
            rhythm_generator = markov.Rhythm()
        elif model == 'neural':
            melody_generator = neural.OneLayer(changes, 5)
            rhythm_generator = melody_generator
        melody, withchords = generate(notes, changes, melody_generator, rhythm_generator, choruses * changes.measures())
        # Write output file
        notes_to_file(withchords, model + '.mid')

    @staticmethod
    def turing():
        """ Generate a Turing test """

    @staticmethod
    def weimar(gen_song, choruses):
        """
        Train a model on the Weimar database of transcriptions and then run it on the specified chord progression.

        :param gen_song: The name of the chord progression to use for generation.
            The text file containing the changes must exist with this name.
        :param choruses: The number of choruses to generate
        """
        metadata = weimar.load_metadata()
        training_set = [(notes_from_file('weimardb/{}.mid'.format(song.id)), song.changes)
                        for song in metadata]

if __name__ == "__main__":
    fire.Fire(Main)
