# -*- coding: utf-8 -*-
import copy

import itertools
import math
from typing import List, Union, Optional

import fire
import midi
import midiutil.MidiFile

import weimar
from models.interfaces import MelodyGenerator, RhythmGenerator, MelodyAndRhythmGenerator, UniversalGenerator
from models import markov, neural
from music import Note, ChordProgression, ABCNote, Chord
from helpers import nwise


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
    for n, m in nwise(notes, 2):
        m.ticks_since_last_note_start = m.tick_abs - n.tick_abs
        m.ticks_since_last_note_end = m.tick_abs - n.tick_abs + n.duration
    return notes


def notes_to_file(notes: List[Note], filename: str):
    print("Writing file {}... ".format(filename), end='')
    kf = midiutil.MidiFile.MIDIFile(adjust_origin=False)
    kf.addTrackName(0, 0, "Track 1")
    for n in notes:
        kf.addNote(0, 0, n.pitch, n.tick_abs / n.resolution, n.duration / n.resolution, 100)
    with open(filename, 'wb') as f:
        kf.writeFile(f)
    print("Done.")


def train(notes: List[Note], changes: ChordProgression,
          melody_generator: Union[MelodyGenerator, MelodyAndRhythmGenerator], rhythm_generator: RhythmGenerator=None):
    melody_generator.learn(notes, changes)
    if rhythm_generator is not None and rhythm_generator != melody_generator:
        rhythm_generator.learn(notes)


def generate(past: List[Note], changes: ChordProgression,
             melody_generator: Union[MelodyGenerator, MelodyAndRhythmGenerator, UniversalGenerator],
             rhythm_generator: Optional[RhythmGenerator], measures: int) -> List[Note]:
    """ Improvise a melody using two models for the melody and the rhythm, and one chord progression

        :param melody_generator:
        :param rhythm_generator:
        :param past: the seed
        :param changes: the chord progression.
            It can be the same as the melody generator, or equivalently None.
        :param measures: The number of measures to generate
        """
    if rhythm_generator is None:
        rhythm_generator = melody_generator  # type: RhythmGenerator
    universal = isinstance(melody_generator, UniversalGenerator)
    melody = past
    beat = melody[-1].beat
    chord = changes[beat - 1]
    melody_generator.start(beat - 1)
    while beat < measures * Note.meter:
        n = Note()
        n.resolution = past[0].resolution
        if universal:
            n.pitch, tsbq, dq = melody_generator.next()
        else:
            tsbq, dq = rhythm_generator.next_rhythm()
        tsbq *= 10
        n.duration = dq * 10
        if melody and melody[-1].ticks_since_beat > tsbq:  # New beat: might be a chord change
            beat_diff = 1 + melody[-1].duration // n.resolution
            for _ in range(beat_diff):
                beat += 1
                # If the chord changed, inform the melody generator
                newchord = changes[beat - 1]
                if newchord != chord:
                    melody_generator.start(beat - 1)
                    chord = newchord
        # Prevent overlapping notes
        n.tick_abs = tsbq + n.resolution * \
            max(beat, math.floor((melody[-1].tick_abs + melody[-1].duration) / n.resolution))
        if not universal:
            n.pitch = melody_generator.next_pitch()
        melody.append(n)
        if melody_generator == rhythm_generator:
            melody_generator.add_past(n)
    return melody


def extract_measures(notes: List[Note], start: int, end: int):
    """
    :param notes: The list of notes
    :param start: The number of the first measure, inclusive
    :param end: The number of the last measure, exclusive
    :return: Only the notes falling into the specified range of measures, but moved back so that
    the whole sequence begins at measure 0.
    """
    ret = copy.deepcopy([note for note in notes if start <= note.measure < end])
    for note in ret:
        note.measure -= start
    return ret


def add_chords(notes: List[Note], changes: ChordProgression) -> List[Note]:
    """ Add accompanying voicings to a melody

    :param notes: the melody
    :param changes: the chord progression
    :return: a new list of notes that contains both the melody and the chords. The original list is unchanged.
    """
    ret = copy.copy(notes)
    beat = 0
    chord = None  # type: Chord
    for i, note in enumerate(notes):
        if i == 0 or note.beat > notes[i - 1].beat:
            beat_diff = note.beat if i == 0 else note.beat - notes[i - 1].beat
            for _ in range(beat_diff):
                beat += 1
                # If the chord changed, add a voicing
                newchord = changes[beat - 1]
                if newchord != chord or beat % len(changes) == 1:
                    chord = newchord
                    voicing = chord.voicing1357()
                    for v in voicing:
                        v.tick_abs = (beat - 1) * v.resolution
                        ret.insert(i, v)
    return ret


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
        notes = notes_from_file(r"input/{}.mid".format(song))
        Note.default_resolution = notes[0].resolution
        # Learn and generate
        melody_generator = None
        rhythm_generator = None
        if model == 'markov':
            melody_generator = markov.StaticChordMelody(changes)
            rhythm_generator = markov.Rhythm()
        elif model == 'neural':
            melody_generator = neural.OneLayer(changes, 5)
            rhythm_generator = melody_generator
        elif model == 'lasagne':
            melody_generator = neural.lasagne.OneLayer(changes, 5)
            rhythm_generator = melody_generator
        train(notes, changes, melody_generator, rhythm_generator)
        if model != 'markov':
            melody_generator.add_past(*notes[:melody_generator.order])
        print("Generating notes...")
        melody = generate(notes[:max(melody_generator.order, rhythm_generator.order)],
                          changes, melody_generator, rhythm_generator, choruses * changes.measures())
        # Write output file
        notes_to_file(add_chords(melody, changes), 'output/{}.mid'.format(model))

    @staticmethod
    def weimar(model, song, choruses):
        """
        Train a model on the Weimar database of transcriptions and then run it on the specified chord progression.

        :param model: The name of the model: 'twolayer' or 'lstm'.
        :param song: The name of the chord progression to use for generation.
            Both the midi file and the text file containing the changes must exist with this name.
            The generation seed will be obtained from the beginning of the midi file.
        :param choruses: The number of choruses to generate
        """
        changes = changes_from_file(song)
        model_name = model
        if model == 'onelayer':
            model = neural.OneLayer(changes, 5)
        if model == 'twolayer':
            model = neural.TwoLayer(changes, 5)
        elif model == 'lstm':
            raise NotImplementedError('LSTM model not yet implemented')
        seed = notes_from_file(r"input/{}.mid".format(song))[:model.order]
        Note.default_resolution = seed[0].resolution
        metadata = weimar.load_metadata()
        training_set = list(itertools.chain(*((notes_from_file('weimardb/{}.mid'.format(song.name)), song.changes)
                            for song in metadata)))
        model.learn(*training_set)
        print("Generating notes...")
        model.add_past(*seed)
        melody = generate(seed, changes, model, None, choruses * changes.measures())
        notes_to_file(add_chords(melody, changes), 'output/weimar_{}.mid'.format(model_name))

    @staticmethod
    def turing():
        """ Generate a Turing test """
        song = 'Eb_therewill'
        changes = changes_from_file(song)
        filename = "input/{}.mid".format(song)
        notes = notes_from_file(filename)
        Note.default_resolution = notes[0].resolution
        melody_generator = neural.TwoLayer(changes, 5)
        train(notes, changes, melody_generator)
        melody_generator.add_past(*notes[:melody_generator.order])
        melody = generate(notes[:melody_generator.order], changes, melody_generator, None, 6 * changes.measures())
        melody = add_chords(melody, changes)
        for i in range(5):
            # Write a chorus of human improvisation and a chorus of machine improvisation to file
            start = (i + 1) * changes.measures()
            end = (i + 2) * changes.measures()
            notes_to_file(add_chords(extract_measures(notes, start, end), changes), 'output/man{}.mid'.format(i))
            notes_to_file(extract_measures(melody, start, end), 'output/machine{}.mid'.format(i))


if __name__ == "__main__":
    fire.Fire(Main)
