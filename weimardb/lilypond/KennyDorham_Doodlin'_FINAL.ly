\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Doodlin'"
  composer = "Kenny Dorham"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key des \major
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
      
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des1:7 | s2 bes2:7 
      | es1:min7 | aes1:9 | des1:7 | aes1:7 | des1:7 | ges1:7 | des1:7 | s1 
      | ges1:7 | s1 | des1:7 | s2 bes2:7 | es1:min7 | aes1:9 | des1:7 | aes1:7 
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des1:7 | s2 bes2:7 
      | es1:min7 | aes1:9 | des1:7 | aes1:7|
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


      \tempo 4 = 121
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r16 aes'16 bes'16 des''16~ \tuplet 3/2 {des''8 es''8 des''8} bes'8 des''4.~ 
      | \tuplet 6/4 {des''16 ges'8 bes'8 des''16~} \tuplet 3/2 {des''8 e''8 des''8} bes'8 des''8~ des''8. aes'16~ 
      | \tuplet 3/2 {aes'8 bes'8 des''8~} \tuplet 3/2 {des''8 e''8 f''8} des''8 bes'8 des''8. bes'16~ 
      | bes'8 aes'8 es'4^\markup{\left-align \small vib} r2 
      | r8 des''8~ des''16 e''8 ges''16~ ges''16 g''8 ges''16~ \tuplet 3/2 {ges''8 e''8 des''8~} 
      | des''16 e''8 des''16~^\markup{\left-align \small vib} des''8 b'8~ \tuplet 6/4 {b'16 aes'16 g'8 ges'16 e'16~} \tuplet 3/2 {e'8 e'8 f'8} 
      | des'16 c'16 des'8~^\markup{\left-align \small vib} \tuplet 5/4 {des'8. e'16 f'16} r4 r16 ges'16 aes'16 bes'16 
      | b'4~ b'16 f'32~ f'8 bes'32~ \tuplet 6/4 {bes'4~ bes'16\glissando  f'16~^\markup{\left-align \small vib}} f'4~ 
      | f'4 \tuplet 6/4 {des'4~ des'16 bes16} des'8^\markup{\left-align \small vib} r8 r4 
      | r4 r8 des''8~ des''16 ges''8 f''16~ f''8\glissando  des''8 
      | aes'8 ges'16 e'16~ \tuplet 3/2 {e'8 e'8 f'8} des'16 bes16 des'4. 
      | des'4 r2 r16 aes'16 bes'16 des''16 
      \bar "||" \mark \default e''8 f''8~ f''16 ges''8 g''16~ \tuplet 6/4 {g''8 aes''8. f''16~} f''4~ 
      | \tuplet 6/4 {f''8 des''8. b'16~} b'8 aes'8 ges'2 
      | \tuplet 3/2 {des'8 e'8 f'8} aes'8 r8 r4 r8 aes'8 
      | \tuplet 6/4 {bes'16 b'8 des''16 bes'16 b'16} aes'8 ges'8 \tuplet 6/4 {f'8. a'16 b'16 e''16~} e''8 d''16 c''16 
      | des''16 bes'16 b'16 a'16 \tuplet 3/2 {bes'8 e'4} r2 
      | r2. r8 des''8~ 
      | des''16 e''8 f''16~ f''16 ges''8 g''16~ \tuplet 6/4 {g''8 aes''8. f''16~} \tuplet 6/4 {f''8 ges''8. e''16~} 
      | e''8 f''8 \tuplet 6/4 {c''8. es''16 f''16 es''16} des''8 d''8 b'8 bes'8 
      | aes'8 f'16 ges'16~ ges'4. f''8 \tuplet 6/4 {f''16 es''16 des''16 bes'8.} 
      | ges'8 es'8 \tuplet 6/4 {es'8. des'16 e'16 des'16} \tuplet 6/4 {b16 c'4 b'16~} \tuplet 6/4 {b'8 a'16 bes'16 a'16 g'16~} 
      | g'16 aes'8 c'16 des'8. ges'16~ \tuplet 6/4 {ges'16 f'4\glissando  des'16~} des'4 
      | des'4 r2. 
      \bar "||" \mark \default r4 r8. e''16~ e''16 g''8 aes''16~ aes''8 bes''8~ 
      | bes''16 des'''8 b''16~ \tuplet 3/2 {b''8 aes''8 g''8} ges''16. e''16 des''16 e''32~ e''16 f''8 des''16~ 
      | \tuplet 6/4 {des''16 b'8 aes'16 ges'16 e'16~} e'16 e'16 f'16 des'16 \tuplet 3/2 {c'8 des'4^\markup{\left-align \small vib}} r4 
      | r2 r8. des''16~ des''16 e''8 ges''16~ 
      | \tuplet 7/8 {ges''16 g''8 aes''32~} aes''4. \tuplet 6/4 {g''8 aes''16} \tuplet 3/2 {ges''8 e''8 des''8~} 
      | des''4 g''16 ges''16 e''8 des''8 b'8 aes'8. g'16~ 
      | g'32 ges'32 e'16 des'16. es'32 f'8 r8 \tuplet 6/4 {r4 r16 e'16~} \tuplet 6/4 {e'16 f'16 bes'16 aes'16 bes'8} 
      | b'16 des''16 bes'8 r4 r8 f'4.~ 
      | f'4\glissando  des'4 des'4^\markup{\left-align \small vib} r4 
      | r4 r16 aes'16 bes'16 des''16 ges''8 f''8 des''4 
      | des''4~^\markup{\left-align \small vib} des''16 b'16 aes'16 ges'16~ \tuplet 6/4 {ges'16 e'8. e'16 ges'16~} ges'16 des'16 b8 
      | r4 \tuplet 3/2 {r8 bes8 c'8} \tuplet 3/2 {es'8 des'8 bes8} \tuplet 3/2 {des'4 des'8}\bar  ".."
    }
    >>
>>    
}
