\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Totem Pole"
  composer = "Lee Morgan"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \minor
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
      
      | es1:min9 | es1:min9 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s2 bes2:7 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | bes1:95+ 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s2 bes2:7 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | bes1:7 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | bes1:95+ 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s2 bes2:7 
      | es1:min9|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 bes'8 r2 
      | r4 a'8 bes'8 \tuplet 3/2 {b'8 bes'8\bendAfter #+4  b'8} bes'8 g'8 
      | \tuplet 3/2 {a'8 aes'8\bendAfter #+4  a'8} aes'4 r2 
      | r8. g'16~^\markup{\left-align \small vib} g'8 d'4. r4 
      | r8 e'8 aes'4.^\markup{\left-align \small vib} r8 r4 
      | r4 bes'8 b'8 aes'4 es'8 b8 
      | bes2^\markup{\left-align \small vib} r2 
      | r4 des''16 b'16 des''16 b'16 des''16 b'16 ges'16 aes'16 bes'8 aes'16 bes'16 
      \bar "||" \tuplet 3/2 {ges'8 aes'8 bes'8} ges'16 f'8 es'16~ es'8 r8 r4 
      | r4 a'8 bes'8 b'8 b'8 bes'8 ges'8 
      | a'8 bes'8 c''8 d''8 g'8 a'8 d'8 g'8 
      | d'8 e'8 c'8 d'8 a4^\markup{\left-align \small vib} r4 
      | r2 des''8 e''8 b'8 a'8 
      | aes'8 b'8 \tuplet 3/2 {f'4 des'8} e'4 d'16 e'16 d'8 
      | es'4 c'8 bes4.^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" c''8 des''8 f''8 aes''8 a''8\glissando  c'''4 bes''16 bes''16 
      | aes''16 g''16 ges''8 f''8 e''8 es''8 c''8 g'8 bes'8~ 
      | \tuplet 3/2 {bes'8 g'8 aes'8~} \tuplet 3/2 {aes'8 c''8 es''8~} \tuplet 6/4 {es''8 g''8 aes''16 a''16~} a''16 bes''16 a''16 aes''16 
      | a''16 g''8 ges''16 f''8 e''8 es''8 c''8 \tuplet 3/2 {g'8 aes'8 bes'8} 
      | aes'8. aes'16~ aes'8 aes'8~ \tuplet 6/4 {aes'8 aes'8. aes'16~} aes'8 aes'8 
      | aes'8. bes'16~ \tuplet 3/2 {bes'8 b'8 des''8~} \tuplet 3/2 {des''8 d''8 e''8} des''8 b'8~ 
      | \tuplet 3/2 {b'8 aes'8 bes'8} r4 \tuplet 3/2 {r8 des''8 bes'8~} bes'16 bes'16 aes'16 ges'16 
      | \tuplet 3/2 {f'4 es'8~} \tuplet 5/4 {es'16 d'16 f'16 aes'16 bes'16~} bes'16 b'16 des''16 bes'16~ bes'4 
      \bar "||" es''8 bes'8 r2. 
      | \tuplet 6/4 {r8. bes'16 c''16 d''16} es''8 bes'8 r2 
      | f''8 c''8 r2. 
      | \tuplet 5/4 {r8 c''16 d''16 e''16} f''8 c''8 r4 c''8 f''8 
      | e''8 b'8 r2 \tuplet 5/4 {r8 b'16 des''16 es''16} 
      | e''8. b'16 r2 \tuplet 6/4 {r8. bes'16 c''16 d''16} 
      | \tuplet 3/2 {es''4 bes'8} r4 r8 r32 aes'32 bes'32 c''32 d''16 es''8 bes'16 
      | r4 \tuplet 6/4 {r8 aes'16 bes'16 c''16 d''16} es''8 bes'8~ bes'16 bes'16 es''16 f''16 
      \bar "||" \mark \default ges''16 aes''16 a''16 bes''16~ bes''8 f''8 r2 
      | r8 bes'8 es''8 f''8 ges''8 aes''8 bes''8 aes''8 
      | a''8 f''8 c''8 bes'8~ bes'16\glissando  ges'16 aes'16 a'16 bes'8 b'8 
      | c''8 a'8 g'8 f'8 g'4^\markup{\left-align \small vib} e'8 r8 
      | r4 r8 b'8 e''4 aes''8 a''8~ 
      | \tuplet 3/2 {a''8 f''8 ges''8} e''8 des''8 b'8 des''8 ges'8 aes'8 
      | bes'8. f''16~ f''8 e''8~ e''32 es''16. ges''16 d''32 c''32~ c''16 bes'8 ges'16 
      | f'8 es'8 g'8 aes'8~ \tuplet 6/4 {aes'4~ aes'16 f'16~} f'8 c'8 
      \bar "||" es'4 f'8 aes'8 aes'4 f'8 aes'8 
      | aes'8. f'16~ \tuplet 6/4 {f'8. aes'8 aes'16~} aes'8 aes'8 aes'8 aes'8 
      | \tuplet 6/4 {a'4 f'16 g'16~} g'8 d'16 f'16~ f'16 f'8 g'16~ g'8 a'8 
      | r1 
      | r4 \tuplet 6/4 {des''16 es''16 des''16 b'8.} des''8 b'8 \tuplet 6/4 {des''8 b'8. des''16~} 
      | \tuplet 6/4 {des''8 b'8. des''16~} des''8 b'8 des''8 b'16 ges''16 des''8 b'8 
      | r4 ges'16 aes'16 bes'8 f''8 e''8 es''8 c''8 
      | bes'8 ges'8 f'8 es'8 aes'8 f'8 r4 
      \bar "||" r8 f''8 g''16 aes''16 f''8 \tuplet 3/2 {g''8 aes''4~} aes''8 d''8 
      | g''8 aes''8 f''8 g''8 aes''8 f''8 g''8 aes''8~ 
      | \tuplet 3/2 {aes''8 g''8 es''8} f''8 es''8 f''8 c''8 des''8 bes'8 
      | b'16 c''16 es''8 bes'8 a'8~ a'16 c''8 bes'16~ \tuplet 3/2 {bes'8 b'8 des''8~} 
      | \tuplet 3/2 {des''8 es''8 f''8~} \tuplet 3/2 {f''8 ges''8 aes''8~} aes''16 g''16 f''16 ges''16 es''8 e''8~ 
      | e''16 f''8 e''16~ e''16 es''8 d''16~ d''16 es''16 des''16 b'16~ \tuplet 3/2 {b'8 aes'8\bendAfter #+4  a'8} 
      | aes'8 bes'8 des''8 bes'8 \tuplet 3/2 {bes'8 aes'8 aes'8~} \tuplet 3/2 {aes'8 f'8 es'8} 
      | d'16 f'16 aes'8 \tuplet 3/2 {b'8 des''8 bes'8~^\markup{\left-align \small vib}} bes'4 r4 
      \bar "||" r8 aes'8\glissando  bes'4~ \tuplet 6/4 {bes'16 es''8 bes'8 aes'16~} aes'32\bendAfter #+4  g'16.\bendAfter #+4  aes'16. a'32~ 
      | \tuplet 6/4 {a'4~ a'16 aes'16~} aes'4 aes'8 aes'8 aes'8\bendAfter #+4  a'8 
      | g'4 g'8 d'8 f'4^\markup{\left-align \small vib} \tuplet 3/2 {g'4 g'8~} 
      | g'16\glissando  bes'16 g'16 f'16 g'8. es'16 f'8 f'8 g'8 r8 
      | r4 \tuplet 3/2 {aes'8 aes'4} g'16 aes'16 bes'8 b'8 des''8 
      | es''16 des''8. b'8 des''8~ des''16 d''16 des''16 b'16 ges'8 aes'8 
      | bes'4 f''8 e''8 es''8 c''8 bes'8 ges'8 
      | f'8 es'8 \tuplet 3/2 {g'8\glissando  aes'4~} aes'8. f'16~ f'16. c'8 bes32~^\markup{\left-align \small vib} 
      \bar "||" \mark \default bes4. r8 r2\bar  ".."
    }
    >>
>>    
}
