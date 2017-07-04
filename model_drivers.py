import math
from typing import List, Union, Optional

from models.interfaces import MelodyGenerator, MelodyAndRhythmGenerator, UniversalGenerator, RhythmGenerator
from music import Note, ChordProgression


def train(notes: List[Note], changes: ChordProgression,
          melody_generator: Union[MelodyGenerator, MelodyAndRhythmGenerator, UniversalGenerator],
          rhythm_generator: Optional[RhythmGenerator]=None,
          callback=None, epochs=None):
    ret = melody_generator.learn(notes, changes, callback=callback, epochs=epochs)
    if rhythm_generator is not None and rhythm_generator != melody_generator:
        rhythm_generator.learn(notes)
    return ret


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
    chord = changes[beat]
    melody_generator.start(beat)
    while beat < measures * Note.meter:
        n = Note()
        n.resolution = past[0].resolution
        rest = None
        if universal:
            n.pitch, tsbq, dq, *rest = melody_generator.next()  # in LSTM case, rest[0] is the beat diff
        else:
            tsbq, dq = rhythm_generator.next_rhythm()
        tsbq *= Note.ticks_quantisation_rate
        n.duration = dq * Note.duration_quantisation_rate
        if melody and (rest or melody[-1].ticks_since_beat > tsbq):
            beat_diff = rest[0] if rest else 1 + melody[-1].duration // n.resolution
            for _ in range(beat_diff):
                beat += 1
                # If the chord changed, inform the melody generator
                newchord = changes[beat]
                if newchord != chord:
                    melody_generator.start(beat)
                    chord = newchord
        # Prevent overlapping notes
        n.tick_abs = tsbq + n.resolution * \
            (beat if rest else max(beat, math.floor((melody[-1].tick_abs + melody[-1].duration) / n.resolution)))
        if not universal:
            n.pitch = melody_generator.next_pitch()
        melody.append(n)
        if melody_generator == rhythm_generator:
            melody_generator.add_past(n)
    return melody