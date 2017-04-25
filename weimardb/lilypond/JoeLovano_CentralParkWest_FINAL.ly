\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Central Park West"
  composer = "Joe Lovano"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key b \major
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}
\score
{
<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s2 cis4:min7 fis4:7 
      | b2:maj e4:min7 a4:7 | d2:maj bes4:min7 es4:7 | aes2:maj g4:min7 c4:7 | f2:maj cis4:min7 fis4:7 | b2:maj e4:min7 a4:7 | d2:maj cis4:min7 fis4:7 | b1:maj | cis2:min7 fis2:7 
      | b1:maj | cis2:min7 fis2:7 | b2:maj e4:min7 a4:7 | d2:maj bes4:min7 es4:7 | aes2:maj g4:min7 c4:7 | f2:maj cis4:min7 fis4:7 | b2:maj e4:min7 a4:7 | d2:maj cis4:min7 fis4:7 
      | b1:maj | cis2:min7 fis2:7 | b1:maj | cis2:min7 fis2:7 | b2:maj e4:min7 a4:7 | d2:maj bes4:min7 es4:7 | aes2:maj g4:min7 c4:7 | f2:maj cis4:min7 fis4:7 
      | b2:maj e4:min7 a4:7 | d2:maj cis4:min7 fis4:7 | b1:maj | cis2:min7 fis2:7 | b1:maj | cis2:min7 fis2:7 | b2:maj e4:min7 a4:7 | d2:maj bes4:min7 es4:7 
      | aes2:maj g4:min7 c4:7 | f2:maj cis4:min7 fis4:7 | b2:maj e4:min7 a4:7 | d2:maj cis4:min7 fis4:7 | b1:maj | cis2:min7 fis2:7 | b1:maj | cis2:min7 fis2:7 
      | b2:maj e4:min7 a4:7 | d2:maj bes4:min7 es4:7 | aes2:maj g4:min7 c4:7 | f2:maj cis4:min7 fis4:7 | b2:maj e4:min7 a4:7 | d2:maj cis4:min7 fis4:7 | b1:maj | cis2:min7 fis2:7 
      | b1:maj | cis2:min7 fis2:7 | b1:maj|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f
  		
  		\override HorizontalBracket #'direction = #UP
  		\override HorizontalBracket #'bracket-flare = #'(0 . 0)
  		
  		\override TextSpanner #'dash-fraction = #1.0
  		\override TextSpanner #'bound-details #'left #'text = \markup{ \concat{\draw-line #'(0 . -1.0) \draw-line #'(1.0 . 0) }}
  		\override TextSpanner #'bound-details #'right #'text = \markup{ \concat{ \draw-line #'(1.0 . 0) \draw-line #'(0 . -1.0) }}
          \set Score.markFormatter = #format-mark-box-numbers


      \tempo 4 = 63
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. dis''16 \tuplet 6/4 {cis''8 b'16 cis''16 ais'16 gis'16} 
      \bar "||" \mark \default \tuplet 5/4 {ais'16 fis'16 gis'16 dis'16 fis'16~} \tuplet 5/4 {fis'16 cis''16 d''16 a'16 fis'16} cis''16 a'16 b'8~ \tuplet 6/4 {b'16 fis'16 a'16 d'16 fis'8} 
      | \tuplet 12/8 {b8 e'8.. cis'32~} \tuplet 3/2 {cis'8 a8 fis8} r4 r16 g8 ais16~ 
      | ais8 c'8 \tuplet 6/4 {dis'8 g'16 ais'8 c''16~} c''8. d''32 e''32 f''32 e''32~ e''8 c''32 d''32 
      | e''16 c''16 c''8~ \tuplet 7/8 {c''32 a'32 ais'32 d''32 c''32 b'32 e''32} \tuplet 9/8 {ais'16 a'32 gis'32 b'16 ais'32 gis'32 e'32~} \tuplet 6/4 {e'16 dis'8. dis'16 e'16} 
      | \tuplet 6/4 {fis'8 dis''16 d''16 cis''16 gis'16} cis''16 ais'16 gis'16 fis'16 r4 \tuplet 14/16 {r8 r32. fis32 a64} 
      | \tuplet 10/8 {ais32 b32 cis'32 d'32 cis'32 d'32 fis'32 d'32 e'32 fis'32} \tuplet 6/4 {b'16 cis''16 fis''16 e''8 d''16~} d''16 dis''16 ais'16. gis'32~ \tuplet 11/8 {gis'32 ais'8 dis'32~ dis'8 ais32} 
      | dis'8 ais16 gis16 \tuplet 3/2 {ais8 dis8 cis8~} cis4 gis'8. fis'16 
      | \tuplet 3/2 {gis'8 cis'4} \tuplet 3/2 {cis'4 dis'8} e'16 fis'16 gis'16 b'16 ais'16 gis'16 g'16 ais'16~ 
      | \tuplet 6/4 {ais'4 a'16 ais'16} \tuplet 6/4 {a'16 ais'16 dis''16 gis'8.} \tuplet 12/8 {g'16 gis'16. gis'8. g'32} gis'16 cis''16 r8 
      | r4 \tuplet 7/8 {r32 dis''32 e''32 fis''32 g''32 dis''32 e''32~} e''32 e''32 dis''32 d''32 cis''32 c''32 b'16 dis''8 cis''8 
      \bar "||" \mark \default \tuplet 6/4 {b'16 ais'16 fis'16 dis'16 gis'8} \tuplet 6/4 {dis'16 fis'16 dis'16 ais8.} \tuplet 12/8 {r4 b'16 cis''32 d''32} fis''32 e''32 d''32 cis''32 b'32 a'32 cis''32 b'32 
      | fis'16 a'32. fis'32 a'16 e'64 dis'64 d'64 a'16. fis'32 e'32 d'32 dis'32 d'32 cis'16 dis'32 f'32 c'32 dis'32 f'32 gis'32 c''32 dis''32 cis''32 c''32 b'16 c''16~ 
      | \tuplet 10/8 {c''32 f'32 g'16 ais'16. gis'32 g'32 f'32} \tuplet 6/4 {dis'8 dis'16 cis'16 c'16 ais16~} ais8~ ais32 g32 ais32 d'32 \tuplet 12/8 {c'16 ais32 c'32 dis'32 g'32 f'32 e'32 c'32 d'32 e'32 f'32} 
      | \tuplet 11/8 {e'16 g'32 a'16 d''32 f'32 a'32 d''32 c''32 ais'32} \tuplet 6/4 {a'16 g''16 e''4~} e''16 gis''16 fis''16 dis''16 dis''16 cis''16 fis''16 dis''16\glissando  
      | \tuplet 3/2 {fis''4 dis''8} \tuplet 6/4 {b'16 dis''16 ais'16 gis'16 ais'8~} ais'8~ ais'32 b'32 cis''32 d''32 fis'32 e''32 d''32 cis''32 c''32 cis''16 fis'32 
      | \tuplet 6/4 {cis''16 a'8 b'16 fis'16 e'16~} \tuplet 12/8 {e'32 a'16 fis'16 cis'16. b16. b32~} b8. b16 ais16 gis16 fis16 cis'16 
      | \tuplet 3/2 {ais8 fis8 fis8~^\markup{\left-align \small vib}} fis8 r8 r16. gis32 b16 b32 dis'32~ \tuplet 6/4 {dis'16 cis'16 dis'16 e'16 fis'16 gis'16~} 
      | \tuplet 6/4 {gis'16 ais'16 b'16 dis''16 e''16 fis''16} \tuplet 5/4 {g''16 dis''16 e''16 gis'16 b'16} \tuplet 6/4 {dis''16 g'4\bendAfter #+4  gis'16} \tuplet 10/8 {b'8 fis'8~ fis'32 e'32~} 
      | e'16 dis'16 dis'16 e'16 fis'16 dis'16. cis'16 dis'32~^\markup{\left-align \small vib} dis'8. ais'16~ ais'4~ 
      | \tuplet 7/8 {ais'32 gis'32 ais'32 b'32 dis''32 ais'32 gis'32} cis''16 ais'16 fis'32 gis'32 ais'32 a'32 \tuplet 7/8 {gis'32 g'32 f'32 fis'32 dis'32 e'32 b32} \tuplet 11/8 {c'32 b32 gis'8~ gis'32 fis'32 gis'32 b'32 dis''32~} 
      \bar "||" \mark \default \tuplet 14/16 {dis''64 cis''32 ais'32. ais'64~ ais'16 fis'32 dis'64} cis'16 ais16 ais8~ \tuplet 14/16 {ais8~ ais32. d64 e64 fis64} \tuplet 11/8 {d'32 fis16 a32 b32 d'32 cis'32 b32 d'32 fis'32 d'32} 
      | \tuplet 6/4 {e'16 fis'16 d''16 fis''16 e''8~} \tuplet 9/8 {e''32 d''16 cis''32 c''32 b'32 ais'32 a'32 gis'32} \tuplet 6/4 {g'16 fis'16 f'16 dis'16 g'8~} g'32 f'16 dis'32 f'32 gis'32 dis''32 g''32 
      | dis''16 g''16 dis''16 c''16 \tuplet 3/2 {dis''8 gis'8 c''8~} c''8 c''16. c'32~ c'16 c''16 c''16 c''16 
      | \tuplet 6/4 {c'16 a'8. ais'16 c''16} d''16 a'8.~ \tuplet 7/8 {a'32 g'32 gis'32 ais'32 b'32 dis''32 d''32~} \tuplet 10/8 {d''32 cis''16 fis'32 gis'32 b'32 ais'16 fis'32 dis'32~} 
      | \tuplet 6/4 {dis'16 cis'8 dis'16 fis'16 dis'16~} dis'32 cis'16. ais32 b16 dis32~ dis4 e16 a16 fis16 b16 
      | \tuplet 10/8 {a16 cis'16. b16 e'32 cis'32 a'32~} \tuplet 9/8 {a'32 fis'32 b'32 a'32 cis''32 b'32 e''32 b'32 cis''32} \tuplet 10/8 {dis''16 b'16. dis''16 fis'32 gis'32 b'32~} b'16 fis'32 dis'32 gis'16 dis'32 fis'32~ 
      | \tuplet 6/4 {fis'16 dis'16 b16 ais16 gis16 cis'16^\markup{\left-align \small vib}} \tuplet 6/4 {ais16 b16 fis'4~} \tuplet 6/4 {fis'8. ais16 b16 dis'16} \tuplet 6/4 {fis'16 gis'16 fis'16 gis'8 fis'16~} 
      | fis'32 gis'32~ gis'8 b'32 cis''32 \tuplet 11/8 {dis''4~ dis''32 e''32 fis''32} e''8. fis''16 gis''16 dis''8 cis''16 
      | fis''4.. fis''16~ \tuplet 3/2 {fis''8 e''8 fis''8~} fis''16 gis''8 cis''16~ 
      | \tuplet 6/4 {cis''8 cis''8 b'16 cis''16} \tuplet 5/4 {dis''16 fis''16 ais'16 e''16 ais'16} e''16 gis'16 fis'16. g'32 b16 dis'16 g'16 dis'16 
      \bar "||" \mark \default \tuplet 6/4 {b16 fis'16 dis'16 b8 dis'16} ais16 fis8.~^\markup{\left-align \small vib} \tuplet 10/8 {fis16. d'8 cis'32 d'32 a'32~} \tuplet 13/16 {a'64 cis'32 d'64 fis'32. cis'64 d'64 e'64 fis'32 b'64} 
      | \tuplet 7/8 {cis''32 fis''16. e''32 d''32 cis''32} \tuplet 6/4 {b'16 a'16 fis'16 e'16 f''8} e''32 dis''32 c''32 cis''32 f'32 gis'32 c''32 b'32 \tuplet 5/4 {a'16 ais'16 f'16 gis'16 g'16} 
      | dis'16 c'8.~^\markup{\left-align \small vib} \tuplet 10/8 {c'16. fis16 ais32 f32 g32 ais32 d'32} \tuplet 12/8 {c'32 d'16 f'32 a'32 g'32 f'32 e'32 f'32 ais'32 d''32 c''32} ais'32 a'32 g''32 f''32 e''8~ 
      | e''32 d''32 c''32 a'32 g'32 f'32 e'32 d'32 e'32 gis'32 g'32 f'32 e'32 d'32 c'32 b32 \tuplet 10/8 {dis'32 b16 ais32 a32 g32 gis32 b32 dis'32 fis'32~} \tuplet 15/16 {fis'64 dis'32. fis'32. gis'32 b'64 cis''32 dis''32 cis''64~} 
      | cis''32 ais'32~ ais'8 gis'32 ais'32 fis'8 fis'8~^\markup{\left-align \small vib} \tuplet 12/8 {fis'8~ fis'32 fis'8. fis'32~} \tuplet 10/8 {fis'8.. g'32 a'32 b'32} 
      | \tuplet 6/4 {fis'4~ fis'16 fis'16~^\markup{\left-align \small vib}} fis'4 dis'8 cis'32 dis'16 cis'32 \tuplet 3/2 {dis'8 cis'8 dis'8~} 
      | \tuplet 6/4 {dis'8 cis'16 dis'8 cis'16} dis'16 cis'16 dis'16 cis'16 \tuplet 3/2 {gis'8 fis'8 gis'8~} \tuplet 3/2 {gis'8 fis'8 dis'8} 
      | cis'8.^\markup{\left-align \small vib} dis16 cis4^\markup{\left-align \small vib} r4 r32 dis16. cis16. fis32~^\markup{\left-align \small vib} 
      | fis4.. fis32 gis32 ais32 b32 cis'32 dis'32 fis'32 gis'32 ais'16~ ais'8. fis'16 
      | dis'16 cis'4. dis'16 \tuplet 12/8 {cis'16 dis'32~ dis'4 cis'32~} cis'16 dis'16 cis'16 c'16 
      \bar "||" \mark \default cis'16 fis'8. fis'4~^\markup{\left-align \small vib} \tuplet 9/8 {fis'8 b32 d'32 cis'32 d'32 fis'32} d'32 g'32 a'32 d''32 fis''32 e''16 d''32 
      | cis''16 b'16 cis''16 a'16^\markup{\left-align \small vib} r4 \tuplet 10/8 {r8 r32 fis'8 gis'32~} gis'8 ais'16. c''32~ 
      | c''4 c''8 c''8 c''4 c''8 c'8 
      | a'2^\markup{\left-align \small vib} dis'4~^\markup{\left-align \small vib} \tuplet 10/8 {dis'32 cis'4^\markup{\left-align \small vib} fis'32~^\markup{\left-align \small vib}} 
      | fis'2. r4 
      | r2 \tuplet 6/4 {dis'4~ dis'16 cis'16~} \tuplet 14/16 {cis'32 dis'16. cis'16~ cis'64 dis'64~^\markup{\left-align \small vib}} 
      | dis'2 gis'4.^\markup{\left-align \small vib} fis'8 
      | dis'16 cis'8 cis'16~^\markup{\left-align \small vib} cis'4~ \tuplet 9/8 {cis'8.. b32 cis'32~} \tuplet 6/4 {cis'16 ais8 b8 dis'16~^\markup{\left-align \small vib}} 
      | dis'2~ \tuplet 10/8 {dis'32 ais'8. gis'32 g'32 fis'32~} fis'8 dis'8 
      | cis'2^\markup{\left-align \small vib} dis'4^\markup{\left-align \small vib} cis'4^\markup{\left-align \small vib} 
      \bar "||" \mark \default fis'4~^\markup{\left-align \small vib} fis'8~ fis'32 gis'32 ais'32 b'32 \tuplet 5/4 {dis''16 ais'16 dis''16 fis''16 cis''16} dis''16 ais'16 cis''16 gis'16 
      | ais'16 fis'16 gis'16 dis'16 cis'4..^\markup{\left-align \small vib} ais16 gis16 dis8 cis16~^\markup{\left-align \small vib} 
      | cis2~ cis8 r8 r4\bar  ".."
    }
    >>
>>    
}
