# -*- coding: utf-8 -*-
import itertools
import random

import fire

import weimar
from file_handlers import changes_from_file, notes_from_file, notes_to_file
from midi_tools import extract_measures, add_chords
from model_drivers import train, generate
from models import markov
from music import Note


class Main:
    """ All the entry points into the application. Refer to the Fire documentation for details. """
    @staticmethod
    def single(model, song, choruses=3, order=5, epochs=None, callback=None):
        """
        Train and run a model on the same chord progression.

        :param model: The name of the model: 'markov' or 'neural'.
        :param song: The name of the song.
            Both the midi file and the text file containing the changes must exist with this name.
        :param choruses: The number of choruses to generate
        :param order:
        :param epochs:
        :param callback: to monitor training
        """
        from models import neural
        msg_callback = callback.set_text if callback else print
        # Read the chord changes from a text file
        changes = changes_from_file(song)
        # Read the training set from a MIDI file
        notes = notes_from_file(r"input/{}.mid".format(song))
        Note.default_resolution = notes[0].resolution
        # Learn and generate
        melody_generator = None
        rhythm_generator = None
        if model == 'markov':
            melody_generator = markov.ChordAgnosticMelody(order)
            rhythm_generator = markov.Rhythm()
        elif model == 'neural':
            melody_generator = neural.OneLayer(changes, order)
        elif model.startswith('lstm'):
            melody_generator = neural.LSTM(changes, stateful=not model.endswith('stateless'))
        elif model == 'lasagne':
            melody_generator = neural.lasagne.OneLayer(changes, order)
        if train(notes, changes, melody_generator, rhythm_generator, callback=callback, epochs=epochs):
            if model != 'markov':
                melody_generator.add_past(*notes[:melody_generator.order])
            msg_callback("Generating notes...")
            if rhythm_generator is None:
                rhythm_generator = melody_generator
            melody = generate(notes[:max(melody_generator.order, rhythm_generator.order)],
                              changes, melody_generator, rhythm_generator, choruses * changes.measures())
            # Write output file
            notes_to_file(add_chords(melody, changes), 'output/{}.mid'.format(model), msg_callback)

    @staticmethod
    def weimar(model, song, choruses=3, order=5, epochs=None, callback=None):
        """
        Train a model on the Weimar database of transcriptions and then run it on the specified chord progression.

        :param epochs:
        :param callback: to monitor training
        :param model: The name of the model: 'twolayer' or 'lstm'.
        :param song: The name of the chord progression to use for generation.
            Both the midi file and the text file containing the changes must exist with this name.
            The generation seed will be obtained from the beginning of the midi file.
        :param choruses: The number of choruses to generate
        :param order:
        """
        from models import neural
        msg_callback = callback.set_text if callback else print
        changes = changes_from_file(song)
        model_name = model
        if model == 'neural':
            model = neural.OneLayer(changes, order)
        elif model.startswith('lstm'):
            model = neural.LSTM(changes, stateful=not model.endswith('stateless'))
        seed = notes_from_file(r"input/{}.mid".format(song))[:model.order]
        Note.default_resolution = seed[0].resolution
        metadata = weimar.load_metadata()
        training_set = list(itertools.chain(*((notes_from_file('weimardb/midi_combined/{}.mid'.format(song.name)),
                                               song.changes)
                            for song in metadata)))
        if model.learn(*training_set, epochs=epochs, callback=callback):
            msg_callback("Generating notes...")
            model.add_past(*seed)
            melody = generate(seed, changes, model, None, choruses * changes.measures())
            notes_to_file(add_chords(melody, changes), 'output/weimar_{}.mid'.format(model_name), msg_callback)

    @staticmethod
    def turing():
        """ Generate a Turing test """
        from models import neural
        song = 'Eb_therewill'
        changes = changes_from_file(song)
        filename = "input/{}.mid".format(song)
        notes = notes_from_file(filename)
        Note.default_resolution = notes[0].resolution
        melody_generator = neural.LSTM(changes)
        train(notes, changes, melody_generator)
        melody_generator.add_past(*notes[:melody_generator.order])
        melody = generate(notes[:melody_generator.order], changes, melody_generator, None, 6 * changes.measures())
        melody = add_chords(melody, changes)
        num_choruses = notes[-1].measure // changes.measures()
        for i in range(5):
            # Write a chorus of human improvisation and a chorus of machine improvisation to file
            start = (i + 1) * changes.measures()
            end = (i + 2) * changes.measures()
            notes_to_file(extract_measures(melody, start, end), 'output/machine{}.mid'.format(i))
            n = random.randint(2, num_choruses - 2)
            start = n * changes.measures()
            end = (n + 1) * changes.measures()
            notes_to_file(add_chords(extract_measures(notes, start, end), changes), 'output/man{}.mid'.format(i))


if __name__ == "__main__":
    fire.Fire(Main)
