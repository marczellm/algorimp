\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Did You Call Her Today"
  composer = "Harry Edison"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key aes \major
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
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1 | f1:7 | bes1:min7 | es1:7 | aes1 | s1 
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1 | f1:7 | bes1:min7 | es1:7 | aes1 | s1 
      | r4 s2.|
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


      \tempo 4 = 119
      \set Score.currentBarNumber = #-1
     
      | r4 r8. aes''16~ aes''8. ges''16~ ges''8 es''8~ 
      | es''8 des''4 aes'8~ \tuplet 6/4 {aes'8 c''16 des''16 c''16 b'16} aes'4 
      \bar "||" \mark \default bes'16\glissando  c''8 bes'32\glissando  c''32 r2. 
      | r4 f'4 \tuplet 3/2 {f''4 es''8} \tuplet 3/2 {bes'8 b'8 aes'8~^\markup{\left-align \small vib}} 
      | aes'4 f'8\bendAfter #-4  e'8 r2 
      | r2 bes''4 \tuplet 3/2 {a''4 aes''8~} 
      | \tuplet 3/2 {aes''8 f''8 e''8} es''8 b'16 c''16 aes'8 g'8 \tuplet 3/2 {ges'8 bes'8 des''8} 
      | f''8 aes''8 \tuplet 3/2 {es''8\glissando  e''8 es''8~} es''16 bes'8 f'16 aes'8 bes'8 
      | \tuplet 3/2 {e'8 f'8 aes'8~^\markup{\left-align \small vib}} aes'4 r2 
      | r2 \tuplet 6/4 {r4 es'16 e'16} \tuplet 3/2 {f'8 aes'8 bes'8} 
      \bar "||" \tuplet 3/2 {b'4 f'8} \tuplet 3/2 {bes'8\glissando  b'4} aes'8 bes'8 aes'8 f'8~ 
      | f'8 bes'8 aes'8 bes'8~^\markup{\left-align \small vib} bes'4~ \tuplet 3/2 {bes'8 f'8 aes'8} 
      | \tuplet 3/2 {bes'8 b'4} bes'8 b'8 \tuplet 3/2 {aes'4 bes'8} aes'8 f'8~ 
      | f'8 c''8 \tuplet 3/2 {bes'4 g'8\glissando } \tuplet 3/2 {a'8 f'8 e'8} \tuplet 3/2 {es'4 c'8} 
      | d'4^\markup{\left-align \small vib} f'8 aes'16 b'16 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} f'4 
      | r2 \tuplet 3/2 {r8 e'8 f'8} \tuplet 3/2 {g'8 aes'8 a'8} 
      | bes'8 des''16 d''16 e''8 f''8 \tuplet 3/2 {g''8 aes''8 b''8} c'''8 r8 
      | r2 \tuplet 3/2 {aes''4 es''8} aes''4 
      \bar "||" aes''4 aes''4 aes''4 aes''4 
      | aes''4 aes''4 \tuplet 3/2 {aes''4 es''8} b'8 aes'8 
      | b'8 c''8~ c''16 des''8 d''16~ \tuplet 3/2 {d''8 des''8 d''8} \tuplet 3/2 {des''8 d''8 d''8~} 
      | \tuplet 3/2 {d''8\bendAfter #-4  des''8 b'8~} b'16 aes'8 f''16~ \tuplet 3/2 {f''8 es''8 bes'8\glissando } \tuplet 7/8 {b'16 aes'16 g'16 es'32~} 
      | \tuplet 6/4 {es'8 bes8 e'16 f'16} es'2^\markup{\left-align \small vib} r4 
      | r2 es''16 f''8 aes''16~ aes''16 es''16 e''16 es''16 
      | bes'8 aes'4.^\markup{\left-align \small vib} f'8\bendAfter #-4  e'8 r4 
      | r4 r8. bes'16 b'4 bes'8 b'8 
      \bar "||" aes'8 r8 r2 \tuplet 6/4 {r4 r16 bes'16} 
      | b'8 aes'8 \tuplet 3/2 {b'4 des''8} d''8 des''8 r4 
      | r4 r16 aes'8 b'16~ \tuplet 3/2 {b'8 des''8 d''8~} d''8 des''8~ 
      | des''8 bes'8~ \tuplet 6/4 {bes'4 aes'16 a'16~} a'16 aes'8 f'16 aes'4 
      | bes'16 b'16 c''8 f'4 aes'4.^\markup{\left-align \small vib} r8 
      | r4 r8. aes''16~^\markup{\left-align \small vib} aes''2~ 
      | aes''2 aes''8. aes''16\bendAfter #-4  r4 
      | r4 r8. b''16~ b''4 b''4 
      \bar "||" \mark \default aes''8 ges''8 es''8 des''4 b'8~ \tuplet 6/4 {b'16 aes'8. bes'16\glissando  b'16~} 
      | \tuplet 3/2 {b'8 aes'8 b'8} c''8 des''8~ des''16 d''8 es''16~ es''16 b'16 c''16 aes'16~ 
      | \tuplet 6/4 {aes'16 es'8 c'16 des'16 a16} \tuplet 3/2 {b8 c'8 es'8~} es'16 es'16 e'16 f'16 aes'8 bes'16 c''16 
      | es''4 e''16 f''8 aes''16~ aes''16 es''16 f''8 \tuplet 3/2 {es''4 b'8~} 
      | b'16 bes'8 bes'16~^\markup{\left-align \small vib} bes'2 r4 
      | r2 bes'4 \tuplet 3/2 {f'4 bes'8} 
      | \tuplet 3/2 {aes'4 c'8} \tuplet 3/2 {des'8 f'8 aes'8~} aes'16 bes'16 c''8 \tuplet 3/2 {aes'4 f'8} 
      | \tuplet 3/2 {bes'4 f'8} aes'4^\markup{\left-align \small vib} r2 
      \bar "||" r8 a'8 \tuplet 3/2 {des''4 f''8} aes''4 bes'4 
      | des''4 \tuplet 3/2 {e''8 f''8 des''8} r2 
      | r8. f'16 aes'8 c''8 f''4 f'4 
      | aes'8. f'16 \tuplet 6/4 {aes'4 b'16 c''16~} \tuplet 3/2 {c''8 a'8 f'8} es'8. d'16~ 
      | d'4 r4 f'8 aes'8~ aes'16 c''8 f''16 
      | c''4~ c''16 f'8 aes'16~ aes'16\glissando  bes'16 c''8 \tuplet 6/4 {bes'16 c''8. bes'16 c''16~} 
      | c''16 f'8 bes'16~^\markup{\left-align \small vib} bes'4 f'8 e'8 r4 
      | r2. \tuplet 3/2 {aes'4 g'8} 
      \bar "||" des''8 d''16 es''16~^\markup{\left-align \small vib} es''2.~ 
      | es''2.. aes''8~ 
      | aes''8 es''8~ es''4~ \tuplet 6/4 {es''4 d''16 b'16~} b'16 aes'16 c''16 des''16 
      | \tuplet 3/2 {es''8 b'8 c''8} \tuplet 3/2 {aes'8 es'8 des'8~} des'8 b16 c'16 \tuplet 3/2 {es'4 f'8\glissando } 
      | \tuplet 6/4 {aes'16 bes'8. a'16\glissando  bes'16~} bes'8 bes'8 f'8\bendAfter #-4  r8 r4 
      | bes'4 bes'8. bes'16~ bes'8 e'8~ \tuplet 6/4 {e'16 bes'4 f'16} 
      | aes'4 es'8 c'16 des'16 \tuplet 3/2 {bes'4 aes'8~^\markup{\left-align \small vib}} aes'4 
      | r1 
      \bar "||" b''4 b''4 \tuplet 3/2 {aes''4 ges''8} \tuplet 3/2 {es''4 des''8} 
      | b'4 \tuplet 3/2 {b'4 bes'8~^\markup{\left-align \small vib}} bes'4. aes'8~ 
      | aes'16 b'16 c''16 es''16 f''8 es''8~ es''16 ges''8 es''16 c''8 bes'8 
      | a'4^\markup{\left-align \small vib} \tuplet 3/2 {c''8 es''8 f''8~} f''16 ges''16 aes''16 f''16~ \tuplet 6/4 {f''8 es''8 f''16 d''16~} 
      | d''8 f'8 \tuplet 6/4 {aes'4 bes'16 c''16~^\markup{\left-align \small vib}} c''2~ 
      | c''8 aes''4. \tuplet 3/2 {aes''4 es''8} b'8.. bes'32~^\markup{\left-align \small vib} 
      | bes'4 f'4 aes'4^\markup{\left-align \small vib} \tuplet 3/2 {f'4 aes'8~} 
      | aes'8 c''8 \tuplet 3/2 {es''8 c''8 bes'8~} bes'16 g'16 a'16 c''16 ges'4 
      \bar "||" f'4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
