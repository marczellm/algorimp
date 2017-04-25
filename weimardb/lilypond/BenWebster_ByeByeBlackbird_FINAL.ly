\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bye Bye Blackbird"
  composer = "Ben Webster"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \major
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
      
      | g1:maj | s1 | s1 | s1 | s1 | bes1:dim | a1:min7 | d1:7 
      | a1:min7 | d1:7 | a1:min7 | d1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | g1:7 | s1 | b1:min5-7 | e1:7 | a1:min7 | s1 | c2:min7 f2:7 | a2:min7 d2:7 
      | g1:maj | s1 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | s1 | s1 | s1 | s1 | s1 | bes1:dim | a1:min7 | d1:7 
      | a1:min7 | s1 | s1 | d1:7 | a1:min7 | d1:7 | g1:maj | a2:min7 d2:7 
      | g1:7 | s1 | b1:min5-7 | e1:7 | a1:min7 | s1 | c2:min7 f2:7 | a2:min7 d2:7 
      | g1:maj | s1 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | a2:min7 d2:7 
      | g1:maj | s1 | s1 | s1 | s1 | bes1:dim | a1:min7 | d1:7 
      | a1:min7 | s1 | s1 | d1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | g1:7 | s1 | b1:min5-7 | e1:7 | a1:min7 | s1 | c2:min7 f2:7 | a2:min7 d2:7 
      | g1:maj | s1 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj|
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


      \tempo 4 = 141
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. b16 c'8. b16 c'8. b16~^\markup{\left-align \small vib} b4 
      | \tuplet 3/2 {c'4 b8} c'8. b16~ b8\bendAfter #-4  r8 r4 
      | r4 b4 c'8. b16~ b8 cis'8~ 
      | cis'8 e'4 d'4 b8~ b8. a16 
      | e4 r4 r8 a8 \tuplet 3/2 {b4 d'8~} 
      | \tuplet 6/4 {d'4~ d'16 f16~} f8 r8 r8. a16 b8 d'8~ 
      | d'8. e16 g4 fis4 r4 
      | r4 r8 g8 \tuplet 3/2 {gis4 b8} \tuplet 3/2 {f'4 dis'8} 
      | e'8. c'16 b16 c'16 b16 a16 \tuplet 3/2 {b4 e8~^\markup{\left-align \small vib}} e4 
      | fis4 b8. a16~^\markup{\left-align \small vib} a4 r4 
      | r8 g8 \tuplet 3/2 {gis4 b8} d'4 f'8 dis'8 
      | e'4^\markup{\left-align \small vib} r4 r8. d'16~ d'16 dis'8 cis'16 
      | d'4^\markup{\left-align \small vib} \tuplet 3/2 {cis'4 b8} c'4^\markup{\left-align \small vib} b4 
      | ais4. gis8 \tuplet 3/2 {a4 fis8} d4~ 
      | d16 gis16 a4 fis8 \tuplet 3/2 {g8 f8 e8} r4 
      | r2 r8. g16 \tuplet 3/2 {gis4 b8} 
      \bar "||" d'8 r8 r2 r8. g16 
      | b8 c'8 cis'4~ \tuplet 6/4 {cis'16 e'4 cis'16} d'8. e'16 
      | f'8 r8 r4 \tuplet 6/4 {r4 r16 d'16~} \tuplet 5/4 {d'16 dis'8. e'16~} 
      | e'8 b16. fis32~ fis8 a8 \tuplet 3/2 {gis4 e8~} \tuplet 3/2 {e8 gis8 c'8} 
      | c'4~ c'16 e8 fis16~^\markup{\left-align \small vib} fis8 r8 r4 
      | r8. gis16~ gis8 b8~^\markup{\left-align \small vib} b2 
      | d'4 c'8. es16~^\markup{\left-align \small vib} es4 r4 
      | r2 \tuplet 6/4 {r4 es16 d16} \tuplet 3/2 {cis4 d8} 
      | d'8 b8 b4^\markup{\left-align \small vib} a8 e8 e8 r8 
      | r4 r8 d8 \tuplet 3/2 {fis4 g8} \tuplet 3/2 {a4 b8} 
      | g8^\markup{\left-align \small vib} r8 r4 r8 g8 \tuplet 3/2 {gis4 fis8} 
      | b4 \tuplet 3/2 {f'4 e'8~} e'8 g'4.^\markup{\left-align \small vib} 
      | r4 ais8. g16 a4^\markup{\left-align \small vib} r4 
      | r8. g16 b8 c'8 cis'8 d'8 cis'8. ais16 
      | des'8\bendAfter #-4  c'8 g4 g4^\markup{\left-align \small vib} r4 
      | r2 r8 fis4.~ 
      \bar "||" \mark \default fis16 b8 d'16~ d'8 d'8~ \tuplet 3/2 {d'8 b8 d'8~} \tuplet 3/2 {d'8 b8 d'8} 
      | b8 d'8 b4 d'4^\markup{\left-align \small vib} r4 
      | r4 \tuplet 6/4 {r8 ais16 c'16 b16 a16} e'8 c'8 b16 a16 dis'8~ 
      | \tuplet 5/4 {dis'16 c'16 b16 a16 d'16} b4^\markup{\left-align \small vib} r2 
      | r8. ais16~ \tuplet 3/2 {ais8 b8 d'8~} d'8 f'8 \tuplet 3/2 {fis'4 d'8} 
      | e'8\glissando  f'8 d'8. d'16~ d'8 e'8~ \tuplet 3/2 {e'8\glissando  f'8 d'8} 
      | e'8 c'8 g8. d16 fis8 r8 r4 
      | r4 a'8. g'16 gis'4^\markup{\left-align \small vib} r4 
      | r2 r8 dis'16 e'16 f'16 a'8. 
      | a'4^\markup{\left-align \small vib} f'8 a8 a2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {ais8 c'8 e'8} e'4^\markup{\left-align \small vib} c'16. e8 e32~^\markup{\left-align \small vib} e4 
      | r2 r8 g8 b8 d'8~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {d'4 b16 ais16} e8. f16 fis4 r4 
      | r8. g16~ g8 b8 \tuplet 3/2 {d'4 e'8~} \tuplet 5/4 {e'16 d'16 e'16 d'16 b16} 
      | a8. g16 \tuplet 3/2 {d'4 ais8\glissando } b8^\markup{\left-align \small vib} r8 r4 
      | r2 r8 g8~ \tuplet 3/2 {g8\glissando  b8 d'8~} 
      \bar "||" d'8 e'8\glissando  \tuplet 3/2 {f'4 d'8~} d'8 e'16 f'16~ f'16 d'8 f'16~ 
      | f'8 f'8~ f'16 d'8 e'16~^\markup{\left-align \small vib} e'8 r8 r4 
      | r4 g8. gis16 b8. d'16 f'8. d'16 
      | e'8. b16 \tuplet 3/2 {fis4 g8} gis8 r8 r4 
      | r4 r16 b16 c'8~ c'8. ais32 g32~ \tuplet 6/4 {g16 e4 dis16~} 
      | dis8 dis8 c'4~ \tuplet 6/4 {c'4 a16 gis16} d4 
      | b4 a8 r8 r4 r8. f16 
      | g8. f16 fis8 r8 r2 
      | r4 \tuplet 6/4 {g4~ g16 ais16~} \tuplet 3/2 {ais8 b8 d'8} e'4 
      | g'4..^\markup{\left-align \small vib} ais'16 b'8 r8 r4 
      | r4 \tuplet 3/2 {a'4\glissando  bes'8~} bes'8 a'8~ a'16 g'16 a'16 g'16 
      | f'16 e'8.~ e'8 ais4 b8 \tuplet 3/2 {d'4 c'8~} 
      | c'8 e8 r4 r8 e'8 fis'8. e'16 
      | d'4.^\markup{\left-align \small vib} c'8 \tuplet 3/2 {b4 e8} \tuplet 3/2 {fis4 g8} 
      | r1 
      | r2 fis'16 g'8 g'16~ g'8. g'16~^\markup{\left-align \small vib} 
      \bar "||" \mark \default \tuplet 6/4 {g'4 d'16 c'16} ais4 b8 r8 r4 
      | \tuplet 6/4 {g'4 d'16 c'16} ais8 b8 \tuplet 3/2 {b4 g'8~} g'8. g'16~ 
      | g'8 d'8~ d'32 ais8. b32~ b8 r8 r4 
      | r8 b8 c'8 des'4 c'8 cis'8. d'16~^\markup{\left-align \small vib} 
      | d'4 b8 r8 r2 
      | \tuplet 5/4 {r16 f16 g16 f16 d16} \tuplet 3/2 {aes4 f8} \tuplet 3/2 {b4 aes8} d'8. b16 
      | \tuplet 3/2 {c'4 d'8~} \tuplet 6/4 {d'16 b16 c'8 b16 a16} e8 g8 fis8 r8 
      | r4 b8. g16\glissando  \tuplet 3/2 {gis4 f8} \tuplet 3/2 {d'4 dis'8} 
      | \tuplet 3/2 {e'4 c'8} \tuplet 3/2 {b4 a8} b4^\markup{\left-align \small vib} r4 
      | r1 
      | r8 g'16 a'16~ \tuplet 3/2 {a'8 g'8 a'8} \tuplet 6/4 {b'8. c''16 b'16 a'16~} \tuplet 6/4 {a'16 b'8. fis'16 e'16} 
      | d'8 e'8 c'16 b16 a16 b16~^\markup{\left-align \small vib} b4 r4 
      | r8 f8 fis8. a16 d'4^\markup{\left-align \small vib} gis4 
      | r8. fis16\glissando  ais4 \tuplet 3/2 {d'4 e'8} d'16 e'16 d'16 b16 
      | a8. fis16 \tuplet 3/2 {g4 d'8} b4^\markup{\left-align \small vib} r4 
      | r2 r8 gis4\glissando  b8 
      \bar "||" d'4 g'8. g'16~^\markup{\left-align \small vib} g'4 e'4 
      | g'4 r4 \tuplet 3/2 {d'4 e'8} f'8. f'16~ 
      | f'8. d'16 f'4 e'4^\markup{\left-align \small vib} r4 
      | r8 g8 \tuplet 3/2 {gis4 b8} \tuplet 3/2 {f'4 dis'8} e'8. b16~ 
      | b16 ais16 b16 ais16 e'8 r8 r4 b4 
      | d'8 dis'8 \tuplet 5/4 {c'16 b16 a16 g16 d'16~} d'8 r8 r8. dis'16 
      | \tuplet 3/2 {e'4 d'8~} d'16 a8 gis16 a4.^\markup{\left-align \small vib} fis8 
      | g4 g4 d8 r8 r4 
      | r8 gis4\glissando  b8 d'4 \tuplet 3/2 {g'4 g'8~^\markup{\left-align \small vib}} 
      | g'4 \tuplet 3/2 {a'8 b'16 r8.} r2 
      | r8 c'16 c''16~^\markup{\left-align \small vib} c''2.~ 
      | c''4 \tuplet 3/2 {b'4 g'8~} g'8 c''8 b'8 g'8~^\markup{\left-align \small vib} 
      | g'8 r8 r4 r8 g8 \tuplet 3/2 {b4 d'8~} 
      | d'8 e'8 g'8 g'4.^\markup{\left-align \small vib} \tuplet 3/2 {ais4 g8~} 
      | g16 ais8 b16 b8^\markup{\left-align \small vib} r8 r2\bar  ".."
    }
    >>
>>    
}
