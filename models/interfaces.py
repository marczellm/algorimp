""" Abstract Base Classes that describe the interface to interact with the models. """
from typing import List, Tuple
from abc import ABCMeta as Interface, abstractmethod

from music import ChordProgression, Note


class MelodyGenerator(metaclass=Interface):
    @abstractmethod
    def learn(self, notes: List[Note], changes: ChordProgression):
        """ Train the model on the given note sequence and chord progression. """

    @property
    @abstractmethod
    def order(self) -> int:
        """ The number specifying how many notes the generator bases its decisions on. """

    @abstractmethod
    def start(self, beat: int):
        """ Tell the generator where in the chord progression we are. """

    @abstractmethod
    def next_pitch(self) -> int:
        """ Generate a pitch.

        :return: A number between 0 and 255 which represents MIDI pitch
        """


class RhythmGenerator(metaclass=Interface):
    @abstractmethod
    def learn(self, notes: List[Note], *args):
        """ Train the model on the given note sequence. """

    @property
    @abstractmethod
    def order(self) -> int:
        """ The number specifying how many notes the generator bases its decisions on. """

    @abstractmethod
    def next_rhythm(self) -> Tuple[int, int]:
        """ Generate a note.

        :return: (time_since_beat_quantised, duration_quantised)
        """


class MelodyAndRhythmGenerator(MelodyGenerator, RhythmGenerator, metaclass=Interface):
    @abstractmethod
    def add_past(self, note: Note):
        """ Construction of the next note involves external corrections after the neural output has been obtained.
        Therefore the method that drives the generator has to pass it back the fully constructed note.

        :param note: the last note generated and corrected
        """


class UniversalGenerator(metaclass=Interface):
    """ A generator that can train on many different chord progressions and then improvise on a new one """

    @abstractmethod
    def learn(self, *training_set: List[Tuple[List[Note], ChordProgression]]):
        """ Train the model on the given note sequence and chord progression.

        :param training_set: [(notes1, changes1), (notes2, changes2), ...]
        """

    @abstractmethod
    def next(self) -> Tuple[int, int, int]:
        """ Generate a note.

        :return: (pitch, time_since_beat_quantised, duration_quantised)
        """
