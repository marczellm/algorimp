\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Perdido"
  composer = "Coleman Hawkins"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \major
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
      | r1 | s1 
      | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:6 | s1 
      | d1:7 | s1 | g1:9 | g1:775+ | c1:7 | s1 | f1:7 | s1 
      | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:6 | s1 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | c1:min7 | f1:7 | bes1:6 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:6 | s1 
      | c1:min7|
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


      \tempo 4 = 178
      \set Score.currentBarNumber = #-1
     
      | r4 \tuplet 3/2 {f8 bes8 d'8} f'8 d'8 c'8 bes8 
      | g8 bes8 c'8 d'8 f'8 es'8 e'8 d'8 
      \bar "||" \mark \default \tuplet 3/2 {es'4 c'8} g8.\glissando  f16 \tuplet 3/2 {d'4 bes8} des'8 bes8 
      | c'8 bes8 \tuplet 3/2 {g8 gis8 a8~} \tuplet 3/2 {a8 aes8 g8~} g8 g16 ges16 
      | f4 \tuplet 5/4 {f'8 g'16 f'16 es'16} d'8 r8 r4 
      | r4 f'16 g'16 f'16 es'16 \tuplet 3/2 {e'4 b8} \tuplet 3/2 {gis4 a8} 
      | \tuplet 3/2 {bes4 fis8} \tuplet 3/2 {g4 bes8} c'8 cis'8 \tuplet 3/2 {d'4 des'8} 
      | c'8 bes8 a8 g8 f4 es4 
      | d8 f8 \tuplet 3/2 {g4 bes8} bes8 f8 r4 
      | r4 bes8 bes16 b16~ b8 d'8 \tuplet 3/2 {f'4 b8} 
      \bar "||" c'8 es'8 g'8 es'8 \tuplet 3/2 {f'8 ges'8 es'8} f'8 d'8 
      | \tuplet 3/2 {es'4 c'8} g8 f8 \tuplet 6/4 {cis'8\glissando  d'16 es'16 d'16 c'16} \tuplet 3/2 {des'4 g8} 
      | \tuplet 3/2 {b8\glissando  c'8 bes8} g4 r4 \tuplet 3/2 {b4 c'8~} 
      | c'4 g4 b8 g8 e8 d8 
      | es4~ es16 d16 f16 g16 d'8.^\markup{\left-align \small vib} des'16 \tuplet 3/2 {c'4 bes8} 
      | a8 r8 r2. 
      | \tuplet 6/4 {g'16 bes'8 g'8 f'16~} f'8 es'8 d'8 des'8 c'8 b8 
      | bes8 g8 es8 c8 d8 f8 \tuplet 3/2 {g4 bes8} 
      \bar "||" a8 g8 \tuplet 3/2 {e4 f8} fis8. e'16~^\markup{\left-align \small vib} e'4 
      | d'8 r8 r2 r8 e'8~^\markup{\left-align \small vib} 
      | e'4 d'16 e'16 d'16 c'16 b4 a'16 bes'16 a'16 g'16 
      | f'8 e'8 d'8 c'8 \tuplet 3/2 {b4 g8~} g8 a8 
      | bes8 a16 g16 \tuplet 3/2 {ges4 a8} g4 r4 
      | \tuplet 6/4 {r4 ges16 bes16} d'8 g'8 \tuplet 6/4 {fis'16 g'16 ges'16 d'8 f'16~} f'8 es'8 
      | e'8. d'16 \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {d'8 es'8 d'8} cis'4~ 
      | cis'4. d'8 es'16 d'16 c'16 a16 g16 ges16 e8 
      \bar "||" c'4 g8^\markup{\left-align \small vib} r8 r4 r8 g8 
      | bes16 g16 es8~ \tuplet 6/4 {es4 gis16 a16~} \tuplet 5/4 {a16 g16 f16 es16 d16~} d16 g16 f16 es16 
      | d16 c8 f16 \tuplet 6/4 {es16 d16 c16 bes,8.} r2 
      | r8 bes,8\glissando  b,4 bes16\glissando  b8 f16 gis8 f8 
      | \tuplet 3/2 {c4 es8} \tuplet 3/2 {g4 a8} d'8 es'16 d'16 \tuplet 3/2 {c'4 bes8} 
      | a8 r8 r8 es'4\glissando  f'8 bes'8 f'8 
      | e'8 des'8 es'8. cis'16~ cis'16 d'8 bes16~ bes16 g8 a16 
      | bes8 f8 r2. 
      \bar "||" \mark \default r4 es'16 f'8. \tuplet 3/2 {f'4 f'8~} f'8 f'8 
      | e'16\glissando  f'8 f'16 es'4 \tuplet 3/2 {b'4 d''8~^\markup{\left-align \small vib}} d''4~ 
      | d''8. des''16~ \tuplet 6/4 {des''16 c''16 bes'16 g'16 f'16 es'16} d'8 r8 r4 
      | r4 c''8 bes'8 \tuplet 3/2 {b'4 g'8} \tuplet 3/2 {es'8 e'8 des'8} 
      | \tuplet 3/2 {c'4 g8} bes8 c'8 es'8 f'8 g'8 bes'8 
      | a'8 f'8~ f'16 a'16 g'16 es'16~ es'8 g'16 es'16 d'8 r8 
      | r4 \tuplet 5/4 {r16 f'16 g'16 f'16 es'16} \tuplet 3/2 {d'4 des'8} c'8 b8 
      | bes4 f8 bes8 b8 d'8 \tuplet 3/2 {f'4 b8} 
      \bar "||" c'8 es'8 g'8 e'8 f'8 d'8 es'8 c'8 
      | d'8 c'8 r2 f'16 e'16 f'8 
      | bes'8 d'16 cis'16 d'8 f'8 \tuplet 3/2 {bes8 a8 bes8} d'8 g16 fis16 
      | g8 c'16 c'16 r4 \tuplet 3/2 {g8 g4~} g4~ 
      | g8 f8 es4 es8 r8 r4 
      | r4 f'16 ges'16 f'16 d'16 \tuplet 3/2 {es'4 c'8} g8 a8 
      | cis'8 d'8 es'8 d'8 \tuplet 3/2 {des'4 g'8} f'8 e'8 
      | f'8. g16 \tuplet 3/2 {d'4 f'8} g'8 bes'8 \tuplet 3/2 {a'4 g'8} 
      \bar "||" fis'8 r8 r4 r8 a8 \tuplet 3/2 {d'8 e'8 d'8} 
      | \tuplet 3/2 {c'4 b8} \tuplet 5/4 {a8. b16 c'16~} c'16 d'16 e'16 a'16 b'8\glissando  d''8~ 
      | d''8. c''16 d''16 b'8. gis'16 b'16 f'8 \tuplet 6/4 {e'16 f'16 e'16 d'8 cis'16} 
      | r2 r8 bes'16 g'16 f'8 e'8 
      | \tuplet 3/2 {d'4 des'8} c'8 b8 bes4 a4 
      | \tuplet 3/2 {g4 f8} d8 es8 \tuplet 3/2 {e4 g8} \tuplet 3/2 {bes4 cis'8} 
      | d'16 e'16 d'16 des'16 c'8 bes8 a8 r8 r4 
      | r16 ges'16 a'16 ges'16 f'8 e'8 es'8 g8 c'16 es'16 g'16 a'16 
      \bar "||" \tuplet 3/2 {e''8 f''8 es''8} r2. 
      | f'16 ges'16 f'16 es'16~ \tuplet 3/2 {es'8 b'8\glissando  d''8} c''8 r8 r4 
      | r4 f'16 g'16 f'16 es'16 d'8 a8 \tuplet 5/4 {d'8 ges'16 a'16 bes'16} 
      | \tuplet 3/2 {c''8 a'8 ges'8} \tuplet 3/2 {e'8 es'8 d'8} des'8 c''16 b'16 gis'8 a'16 bes'16~ 
      | bes'8 fis8 \tuplet 3/2 {g4 a8} \tuplet 3/2 {c'4 d'8} \tuplet 3/2 {es'4 f'8} 
      | \tuplet 3/2 {ges'4 es'8} r4 r8 es'8 f'4~ 
      | f'4 bes'8 b'8 e'8 es'8 des'8 bes8~ 
      | bes4 g8 bes8 cis'8 d'8 es'8 cis'8 
      \bar "||" \mark \default d'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
