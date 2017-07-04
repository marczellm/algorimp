import copy
from typing import List

from music import Note, ChordProgression


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