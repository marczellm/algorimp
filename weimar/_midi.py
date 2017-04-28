from music import Note
from weimar import SongMetadata
from ._sql import load_metadata


def convert_song(song: SongMetadata):
    """ Combine the quantized and the unquantized MIDI files 
    into one that aligns to measures but attempts to retain the original phrasing """
    from main import notes_from_file, notes_to_file
    Note.default_resolution = 960
    quantized = notes_from_file('weimardb/midi_from_db_quant/{}.mid'.format(song.name))
    original = notes_from_file('weimardb/midi_from_db/{}.mid'.format(song.name))
    lilypond = notes_from_file('weimardb/midi_from_ly/{}.mid'.format(song.name))
    d = {}
    for n, m in zip(quantized, lilypond):
        if m.measure - n.measure not in d:
            d[m.measure - n.measure] = 1
        else:
            d[m.measure - n.measure] += 1
        if len(d) == 2:
            break
    meas_start = min(d.keys())  # type: int
    meas_size = Note.meter * Note.default_resolution
    meas_no = 0
    a, b, c = [], [], []  # quantized measure, original measure, combined output
    lp = []  # lilypond measure: only needed for durations
    for q, o, l in zip(quantized, original, lilypond):
        if q.measure != meas_no:
            if len(a) > 1:
                r = (a[-1].tick_abs - a[0].tick_abs) / (b[-1].tick_abs - b[0].tick_abs)  # stretch ratio
                a_m = (meas_no + 0.5) * meas_size  # middle of quantized measure
                b_m = b[0].tick_abs + (a_m - a[0].tick_abs) / r  # estimated middle of unquantized measure
                for a_j, b_j, l_j in zip(a, b, lp):
                    n = Note()
                    n.pitch = b_j.pitch
                    n.resolution = b_j.resolution
                    n.velocity = b_j.velocity
                    n.tick_abs = int(a_m + r * (b_j.tick_abs - b_m)) + (meas_start * meas_size)
                    n.duration = int(r * b_j.duration) or a_j.duration or l_j.duration
                    c.append(n)
            else:
                c += a
            meas_no = q.measure
            a, b, lp = [], [], []
        a.append(q)
        b.append(o)
        lp.append(l)
    notes_to_file(sorted(c, key=lambda p: p.tick_abs), 'weimardb/midi_combined/{}.mid'.format(song.name))


def main():
    for song in load_metadata():
        convert_song(song)

if __name__ == '__main__':
    main()
