\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Work Song"
  composer = "Cannonball Adderley"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \minor
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
      | s2. r4 
      | f1:min7 | s1 | s1 | s1 | s1 | s1 | g1:7 | c1:7 
      | f1:min7 | s1 | s1 | s1 | f1:7 | bes1:7 | g2:7 c2:7 | f1:min7 
      | s1 | s1 | s1 | s1 | s1 | s1 | g1:7 | c1:7 
      | f1:min7 | s1 | s1 | s1 | f1:7 | bes1:7 | g2:7 c2:7 | f1:min7 
      | s1 | s1 | s1 | s1 | s1 | s1 | g1:7 | c1:7 
      | f1:min7 | s1 | s1 | s2. r4 | f1:7 | bes1:7 | g2:7 c2:7 | f1:min7 
      | s1 | s1 | s1 | s1 | s1 | s1 | g1:7 | c1:7 
      | f1:min7 | s1 | s1 | s1 | f1:7 | bes1:7 | g2:7 c2:7 | f1:min7 
      | s4 r2.|
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


      \tempo 4 = 156
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. d'4 
      \bar "||" \mark \default f'8 f'8 r2. 
      | r2 \tuplet 3/2 {c'8\glissando  d'8 f'8} \tuplet 3/2 {g'8 d'8 f'8~^\markup{\left-align \small vib}} 
      | f'4 r2. 
      | r4 c'4 \tuplet 3/2 {des'8 d'8 f'8} g'4 
      | aes'8. f'16 r2. 
      | r4 f'4 aes'8. c''16 es''8. des''16~^\markup{\left-align \small vib} 
      | des''2 r2 
      | bes'16 b'16 des''16 c''16 aes'16 f'8 des'16~ des'16 es'8 des'16~ des'16 aes8 bes16 
      | c'8. c'16 r2. 
      | r4 \tuplet 3/2 {c''8 d''8 f''8} e''16 des''16 a'16 f'16 \tuplet 5/4 {g'8\glissando  aes'8 f'16~} 
      | f'8 f'8 r2. 
      | r4 \tuplet 3/2 {d'4 c'8} f'8 a'8 c''8 bes'8 
      | a'8 bes'16 g'16~ g'16 f'8 e'16 es'8 c'8 \tuplet 3/2 {a4 f8} 
      | bes8. des'16~ des'16\glissando  d'16 f'16 g'16 aes'4 aes'8. g'16 
      | aes'4~ aes'16 b8 aes'16 bes4 aes'8. f'16 
      | \tuplet 3/2 {g'4 f'8} c'8 aes8 bes8. c'16~ c'8. f16~ 
      \bar "||" \mark \default f4 aes4 bes4^\markup{\left-align \small vib} r4 
      | r4 r16 f8 aes16 c'8 f'8 aes'8. a'16\glissando  
      | c''8 c''8 f''2^\markup{\left-align \small vib} r4 
      | r8 c''8 ges''8 e''8 bes'8 des''8 \tuplet 3/2 {es''4 des''8} 
      | \tuplet 3/2 {c''8 des''8 aes'8} f'8 g'8 aes'8 f'8 \tuplet 3/2 {c'4 aes8} 
      | \tuplet 6/4 {bes4 g16 aes16~} aes8 ges'8\glissando  aes'4 g'16 aes'16 g'16 f'16~ 
      | f'16 e'8 g'16 bes'8. c''16 des''4~ des''16 c''8 f'16\glissando  
      | ges'4 e'8 bes4 es'8 des'4 
      | c'8. c'16 r2. 
      | r8. des'16\glissando  \tuplet 3/2 {d'4 d'8} f'8 g'8 aes'4 
      | \tuplet 3/2 {f'4 f'8} r2. 
      | r8 d'4. f'4 aes'4 
      | bes'8. bes'16 \tuplet 3/2 {bes'8\glissando  b'8 b'8} \tuplet 5/4 {c''8 d''16 c''16 a'16} f'8 es'8 
      | des'8 d'8 \tuplet 3/2 {f'8 a'8 c''8} \tuplet 3/2 {bes'4 d'8} es'8 e'16 a'16~ 
      | a'8 aes'8 \tuplet 3/2 {e'4 c'8} g'8 bes'8 \tuplet 3/2 {a'4 g'8} 
      | \tuplet 3/2 {c''4 f'8~} f'4 aes'4 \tuplet 3/2 {f''4 ges''8\glissando } 
      \bar "||" \mark \default aes''4 \tuplet 3/2 {g''8 f''8 e''8~^\markup{\left-align \small vib}} e''4 \tuplet 3/2 {g''8 f''8 c''8} 
      | r4 es''16 d''16 des''16 c''16 bes'16 a'16 aes'16 g'16 f'4 
      | \tuplet 3/2 {r8 c'8\glissando  e'8~} \tuplet 6/4 {e'16 g'16 f'8 c'16 aes16~} aes16 es'16 d'16 des'16 \tuplet 3/2 {bes8 des'8 bes8} 
      | c'2^\markup{\left-align \small vib} c'8. d'16 e'8 g'8 
      | \tuplet 3/2 {f'4 c'8} aes8. bes16 \tuplet 3/2 {c'4 b8} c'8. des'16~ 
      | des'16 d'8 es'16 es'4 e'8. es'16 e'8 f'8 
      | \tuplet 3/2 {fis'8 g'8 a'8} \tuplet 3/2 {fis'8 g'8 a'8} g'8. c'16~^\markup{\left-align \small vib} c'4 
      | r4 aes'4 \tuplet 3/2 {f'4 aes'8~} aes'16 g'16 f'8 
      | f''8. f'16 \tuplet 3/2 {aes'4 aes'8} f'4^\markup{\left-align \small vib} d'8\bendAfter #-4  r8 
      | \tuplet 6/4 {r4 r16 aes'16~} aes'8. f'16~ f'8 aes'8 \tuplet 3/2 {g'8 f'8 e'8} 
      | \tuplet 3/2 {f''4 c''8~} \tuplet 6/4 {c''16 es''16\glissando  f''8 e''16 d''16} c''8 aes'8 g'8 f'16\glissando  aes'16 
      | bes'4 \tuplet 3/2 {bes'4 aes'8} bes'8. c''16~ c''8 f'8~^\markup{\left-align \small vib} 
      | f'8 r8 r4 \tuplet 5/4 {a'8\glissando  bes'16 a'16 g'16} \tuplet 3/2 {f'4 es'8} 
      | d'4 c''8 bes'16\glissando  b'16 bes'8 f'8 \tuplet 6/4 {d'8 des'8 c'16 b16~} 
      | b16 g'16\glissando  aes'8 \tuplet 3/2 {f'8 a'8 b8} \tuplet 3/2 {bes8\glissando  fis'8 g'8} \tuplet 6/4 {e'8 c'16 bes8 aes16~} 
      | aes4 f'4 g'4^\markup{\left-align \small vib} aes'4 
      \bar "||" \mark \default \tuplet 3/2 {c'4 c'8} r2. 
      | r8 f'4. aes'8. bes'16 b'16\glissando  c''8. 
      | f'8. aes'16 r2. 
      | r8 c''8\glissando  d''4~ \tuplet 3/2 {d''8 c''8 aes'8} c'4~^\markup{\left-align \small vib} 
      | c'4 \tuplet 6/4 {e'4~ e'16 g'16~} g'8 aes'8\glissando  bes'8 g'8 
      | \tuplet 6/4 {aes'4 c''16 e''16~} e''8 g''4.^\markup{\left-align \small vib} f''8 c''8 
      | \tuplet 3/2 {es''4 des''8} aes'4 c''8. c''16 r4 
      | r4 r8 b'8 d''8 f''4.~ 
      | f''4 \tuplet 3/2 {c''4 bes'8} \tuplet 3/2 {aes'4 bes'8} c''8 aes'8 
      | g'16 aes'16 g'16 f'16 e'8 g'8 f'8. c'16 aes8 bes8 
      | c'8. c'16 r2. 
      | r8. des'16 d'4 \tuplet 3/2 {f'4 g'8} a'4 
      | f'8 a'8 g'16 a'16 g'16 f'16 es'8 c'8 \tuplet 3/2 {a8 f8 bes8~^\markup{\left-align \small vib}} 
      | bes4 c'16 des'16 f'16 g'16 aes'8. f'16~ f'8 aes'8 
      | a'8 f'8 \tuplet 3/2 {d'4 a8} \tuplet 3/2 {c'4 d'8} \tuplet 3/2 {e'4 g'8} 
      | f'16 c'16 bes16 aes16 c'4.^\markup{\left-align \small vib} des'16 c'16 \tuplet 5/4 {bes16 a16 aes16 g16 f16} 
      \bar "||" aes8 r8 r2.\bar  ".."
    }
    >>
>>    
}
