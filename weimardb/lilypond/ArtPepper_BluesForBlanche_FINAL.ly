\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues for Blanche"
  composer = "Art Pepper"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | s1 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7|
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


      \tempo 4 = 199
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 bes'8 des''8 es''8 r4 
      | r8 es'8 ges'4 aes'4.^\markup{\left-align \small vib} r8 
      | r4 r8 es'8 \tuplet 3/2 {g'4 bes'8} r4 
      | r2 r8 g'8 bes'4 
      | r4 r8 bes'16 es''16~ es''8 bes'8 r4 
      | r8 bes'16 des''16~ \tuplet 6/4 {des''4~ des''16 es''16~^\markup{\left-align \small vib}} es''4. des''8 
      | \tuplet 3/2 {f''4 bes'8} r2. 
      | r4 r8 bes'16 es''16~ es''8 bes'8 des''8 r8 
      | r4 r8 bes'8 es''8 des''8 bes'8 aes'8~^\markup{\left-align \small vib} 
      | aes'2 bes'4.^\markup{\left-align \small vib} aes'8 
      | f'16\glissando  g'8. es'8. des'16 es'4.^\markup{\left-align \small vib} r8 
      | r1 
      \bar "||" \mark \default r8 es'8 es'8 es'8 g'8 bes'8 \tuplet 3/2 {c''4 es''8~^\markup{\left-align \small vib}} 
      | es''4 \tuplet 3/2 {des''4 c''8} bes'8 c''8 r4 
      | es'4 es'4 es'4.^\markup{\left-align \small vib} g'8 
      | \tuplet 3/2 {f'4 des'8} r2. 
      | r4 r8 es'8 r4 r8 es'8 
      | \tuplet 3/2 {aes'4 bes'8} c''8. es''16 ges''8 f''8 es''8 des''8~^\markup{\left-align \small vib} 
      | des''4 c''8 b'16 bes'16 r2 
      | r4 \tuplet 3/2 {r8 es'8 f'8\glissando } g'8 bes'4.~ 
      | bes'2. c''4 
      | ges'8 f'8 es'8 c'8 es'8 ges'8 f'8 es'8~^\markup{\left-align \small vib} 
      | es'4 f'8 r8 r2 
      | r8 c''8 r2. 
      \bar "||" \mark \default des''4 c''4 des''8 c''4 bes'8~ 
      | bes'8 c''8~ \tuplet 6/4 {c''8. bes'8 des''16~} des''8 bes'8 c''4 
      | des''4 \tuplet 3/2 {c''4 bes'8\glissando } \tuplet 3/2 {c''8 des''8 c''8~} c''8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 c''4 ges'8 f'8 \tuplet 3/2 {es'4 c'8} 
      | \tuplet 3/2 {f'8\glissando  ges'8 f'8} es'8 f'8 es'8 f'4 es'8~^\markup{\left-align \small vib} 
      | es'4 des'8 c'8 r2 
      | r4 r8 bes16 aes16 g4 r4 
      | r8 f16 g16 \tuplet 3/2 {d'8 f'8 e'8~} \tuplet 6/4 {e'16 aes'16 bes'16 des''8.} c''8 bes'16 aes'16 
      | r4 \tuplet 5/4 {r8. es'16 g'16~} g'8 aes'8 r4 
      | r4 r8 e'8 f'8 d'8 bes8 r8 
      | r4 \tuplet 3/2 {r8 d'8 f'8~} f'8 g'8 e'8 d'8 
      | es'8 c'8 aes4 ges8 des'8 b8 a8 
      \bar "||" \mark \default bes8 es4.^\markup{\left-align \small vib} r2 
      | r2. r16 a16 g16 es16 
      | des2 aes8 r8 r4 
      | r4 aes16 g16 f16 aes16 b16 es'16 bes'16 g'16 f'8 r8 
      | r2 f'8 es'4 es'8 
      | ges'16 aes'16 g'16 a'16 bes'16 b'16 c''8 \tuplet 3/2 {des''8 c''8 b'8} bes'4~^\markup{\left-align \small vib} 
      | bes'4 r2. 
      | r4 g'8 es''8 cis''8 d''16 des''16 \tuplet 3/2 {c''8 a'8 c''8} 
      | bes'8 g'8 \tuplet 3/2 {es'4 c'8} aes'8 bes'16 g'16~ g'8 f'8 
      | es'4 d'8 f'8 d'8 es'8 f'8 g'8 
      | \tuplet 3/2 {es'4 bes8} des'8 es'8~^\markup{\left-align \small vib} es'4. r8 
      | r1 
      \bar "||" \mark \default r4 bes'8. des''16 \tuplet 3/2 {es''4 des''8} r4 
      | r2 es''8. ges''16~ ges''8. f''16 
      | \tuplet 3/2 {es''4 des''8~} des''8 es''4.^\markup{\left-align \small vib} des''8 bes'8 
      | a'8 g'8 aes'8. f'16 ges'8 es'8 c'4 
      | \tuplet 6/4 {f'4 es'16 f'16\glissando } ges'8 es'8~^\markup{\left-align \small vib} es'4. r8 
      | r1 
      | r4 \tuplet 6/4 {b16 c'16 d'16 es'8 f'16~} \tuplet 6/4 {f'16 g'16 aes'8 a'16 bes'16~} bes'16 fis'16 g'16 d''16 
      | r2. r8 f''16 e''16 
      | es''8 c''8 aes'8 f'8 d''8 e''8 d''16 bes'8 c''16~ 
      | c''16 d''16 c''16 aes'16 f'8 es'8 d'8 f'8 \tuplet 3/2 {bes'4 aes'8} 
      | g'8 es'8 des'8 es'4.^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" \mark \default r16 g'8 aes'16 bes'16 fis'16 g'16 bes'16 es''8 des''8 r4 
      | r4 \tuplet 6/4 {r4 r16 bes'16~} \tuplet 6/4 {bes'4 c''16 bes'16} g'8 es''8~ 
      | es''16 e''16 es''16 bes'16 cis''8 d''16 des''16 \tuplet 3/2 {bes'4 aes'8~} \tuplet 6/4 {aes'8 c''16 bes'16 aes'16 ges'16} 
      | aes'4..^\markup{\left-align \small vib} ges'16 \tuplet 3/2 {aes'8\glissando  a'8 aes'8} es'16 des'8 es'16~^\markup{\left-align \small vib} 
      | es'4. r8 r2 
      | r1 
      | r8 fis'8 g'8 d''8 f''8 e''16 es''16 d''8 c''8 
      | bes'8 aes'8 g'8 f'8 e'8 g'8 bes'8 des''8 
      | c''4 aes'8 c''16 aes'16 f'8. bes'16~ bes'8 aes'8 
      | \tuplet 3/2 {g'8\glissando  aes'4~} aes'4 g'4. aes'8 
      | \tuplet 3/2 {g'4 es'8~} es'8 es'8~^\markup{\left-align \small vib} es'4. r8 
      | r2. \tuplet 6/4 {r4 bes16 c'16} 
      \bar "||" \mark \default des'16 bes16 e'16 f'16 \tuplet 6/4 {g'16 bes'16 c''8 bes'8} es''16 des''8 c''16 r4 
      | r4 r8. es''16~ es''8. ges'16~ ges'8 ges''16 es''16~ 
      | es''8 des''4. \tuplet 3/2 {c''8\glissando  des''4} c''8 b'8 
      | bes'8 aes'8 es'8 c'8 \tuplet 6/4 {ges'8. es'8 f'16~} f'8 es'8 
      | ges'8. es'16 f'8 es'4.^\markup{\left-align \small vib} f'8 r8 
      | r1 
      | ges'8. f'16~ f'8 es'4.^\markup{\left-align \small vib} f'8 r8 
      | r2 \tuplet 3/2 {des'4 bes8} c'8. bes16 
      | \tuplet 3/2 {c'8\glissando  des'4~} des'8 bes8 \tuplet 3/2 {c'4 bes8~} bes8 aes8~^\markup{\left-align \small vib} 
      | aes4 bes8 r8 r2 
      | \tuplet 6/4 {r4 fis16 g16~} g8 bes4 es4.~^\markup{\left-align \small vib} 
      | es8 r8 r2. 
      \bar "||" \mark \default r8 es'16 g'16~ g'8 bes'16 es''16~ es''8 des''8 c''8 b'8 
      | bes'8 aes'8 es'8 c'8 \tuplet 3/2 {ges'4 es'8} fis'8 g'8 
      | es'8 f'8 c'4 es'4.^\markup{\left-align \small vib} r8 
      | r2 r8 es'8 \tuplet 6/4 {aes'8. b'8\glissando  c''16~} 
      | c''8. aes'16~ aes'8. aes'16 des''8 aes'8~ aes'8. aes'16 
      | d''8 aes'8 d''8 es''4 ges''4 f''8 
      | es''4 des''4 c''4 b'8 a'8 
      | bes'4.^\markup{\left-align \small vib} aes'8 g'16 aes'16 g'16 f'16 e'8 r8 
      | r2 g'16 aes'16 g'16 f'16~ f'8 f'8 
      | bes'8 c''16 bes'16 \tuplet 3/2 {aes'4 des''8~} des''16 e''16 des''16 bes'16 c''4~ 
      | c''4~ \tuplet 3/2 {c''8 des''8 c''8} \tuplet 3/2 {bes'4 es'8} r4 
      | r2 \tuplet 3/2 {des''4 c''8} \tuplet 3/2 {bes'4 c''8~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default c''4 \tuplet 3/2 {des''4 c''8} bes'8 c''8 r4 
      | r4 \tuplet 3/2 {des''4 c''8} bes'8 c''4 des''16 c''16 
      | bes'8 des''8~ des''16 des''16 c''16 bes'16 \tuplet 3/2 {c''4 bes'8} r4 
      | r4 \tuplet 3/2 {des''4 c''8} \tuplet 3/2 {bes'4 c''8} r4 
      | r2 es''8 r8 r4 
      | r4 \tuplet 6/4 {r4 r16 g''16~} g''4 g''4~ 
      | g''4.. es''16 e''8 es''8 d''8 f''8 
      | es''8 bes'8 \tuplet 3/2 {g'4 bes'8} d''8 c''8 b'16 bes'16 bes'16 a'16 
      | aes'8 c''8 g'8 f'8 bes'8 g'8 aes'8. bes'16 
      | des''8 b'8 des''8 b'8 bes'8 ges'8 \tuplet 3/2 {d'4 bes8} 
      | es'8. bes16 des'4.^\markup{\left-align \small vib} r8 r4 
      | r1 
      \bar "||" \mark \default \tuplet 6/4 {r8 bes16 des'8 es'16~} es'4~ es'16 bes16 des'16 es'16~ es'4~ 
      | es'16 bes16 des'16 c'16 bes4 \tuplet 3/2 {c'8 es'8 des'8} r4 
      | r4 \tuplet 3/2 {r8 bes8 des'8} es'4 c'8 bes8~ 
      | bes8 c'16 es'16~ \tuplet 5/4 {es'16 bes16 c'16 des'16 es'16} des'8 r8 r4 
      | r4 \tuplet 3/2 {es'8 ges'8 aes'8~} aes'4 ges'16 aes'16 ges'16 es'16~ 
      | \tuplet 6/4 {es'16 des'16 bes8 c'16 g16~} g16 e16 f16 aes16 \tuplet 6/4 {c'16 es'8 bes'16 aes'16 ges'16} r4 
      | r4 r16 bes16 des'16 es'16~ es'4 \tuplet 3/2 {des'8 es'4~} 
      | \tuplet 3/2 {es'8 bes8 c'8} e'16 f'16 g'16 c''16 \tuplet 3/2 {es''8 des''4} r4 
      | r2 r8 es'8 \tuplet 3/2 {ges'4 es'8~} 
      | es'4.. des'16 es'2~ 
      | es'16 bes16 c'16 es'16 des'16 c'16 es'8 \tuplet 6/4 {fis'16 g'16 bes'16 es''8 c''16} des''4 
      | \tuplet 5/4 {r16 es'8 c'16 d'16~} d'16 es'16 bes16 c'16 \tuplet 6/4 {d'16 es'16 fis'8 g'16 bes'16} \tuplet 6/4 {g'16 c''16 d''16 des''8.} 
      \bar "||" \mark \default r4 \tuplet 6/4 {r4 bes16 c'16\glissando } des'8 c'16 bes16~ bes8 c'8 
      | \tuplet 3/2 {bes8 e'8 f'8} aes'16 b'16 bes'16 c''16 \tuplet 3/2 {f''8 c''16 r8.} r4 
      | r8. a16 \tuplet 5/4 {c'8 a16 bes16 g16} \tuplet 3/2 {f8 e8 f8~} f32 e16 f16 g32 des'32 c'32 
      | \tuplet 6/4 {b'8 b'8 es'16 d'16} f'16 c''16\glissando  des''16 f'16 c''16\glissando  d''16 ges''16 f''16~ f''8 r8 
      | r4 r8. es''16~ es''8 r8 r4 
      | r4 r8. d'''16~ d'''8. d'''16~ d'''16 es'''16 d'''8 
      | r2 r8. a''16\glissando  bes''4~ 
      | bes''4.. g''16~ g''8 aes''4 ges'8~ 
      | ges'8 g''8 es''4 des''4 c''8 b'8 
      | bes'8 aes'8 es'8 c'16 f'16\glissando  g'4 \tuplet 6/4 {bes'4~ bes'16 es'16~} 
      | es'8 r8 r4 r8 c'16 des'16~ des'8 es'8~^\markup{\left-align \small vib} 
      | es'4. bes8 des'8. es'16 ges'8. es'16~^\markup{\left-align \small vib} 
      \bar "||" \mark \default es'4. r8 r2\bar  ".."
    }
    >>
>>    
}
