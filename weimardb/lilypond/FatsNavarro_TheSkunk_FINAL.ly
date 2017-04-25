\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Skunk"
  composer = "Fats Navarro"
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
      
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des1:7 | bes1:7 
      | es1:7 | aes1:7 | des1:7 | aes1:7 | des1:7 | ges1:7 | des1:7 | s1 
      | ges1:7 | s1 | des1:7 | bes1:7 | es1:7 | aes1:7 | des1:7 | aes1:7|
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


      \tempo 4 = 164
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r16 aes'16 bes'16 aes'16~ aes'16 f'8 bes'16~ bes'8 aes'8 r4 
      | r4 r8 f'8 ges'8 aes'8 bes'8 c''8 
      | des''8 es''8~ es''16 e''16 f''8~ f''16 c''8 es''32 d''32~ d''16 des''8 b'16~ 
      | b'8. es'16~ es'8 f'4 bes'8 \tuplet 3/2 {a'8 f'8 des'8~} 
      | des'16 g'16\glissando  aes'16 bes'16 aes'16 ges'8 es'16~ es'16\bendAfter #+4  e'8 d'16 r4 
      | r8. des'16~ des'16 e'8 ges'16~ \tuplet 5/4 {ges'8 a'16 g'16 ges'16~} \tuplet 5/4 {ges'16 e'8. des'16~} 
      | \tuplet 3/2 {des'8 f'8\glissando  ges'8~} \tuplet 6/4 {ges'16 f'4 aes16~^\markup{\left-align \small vib}} aes4 r4 
      | r1 
      | r8 b'8~ b'16 des''16 f''16 aes''16 c'''8 b''8~ b''16 bes''8 a''16~ 
      | \tuplet 5/4 {a''16 aes''16 bes''16 aes''16 g''16~} g''16 ges''8 f''16~ \tuplet 6/4 {f''16 e''16 f''16 e''16 d''8~} \tuplet 5/4 {d''16 b'16 des''16 b'16 a'16} 
      | a'16 aes'8 f'16~ f'16 ges'8 g'16~ g'16 aes'8 bes'16~ bes'16 c''8 des''16~ 
      | des''16 es''8 f''16~ f''16 ges''8 g''16 aes''4 c''16 des''8 ges''16 
      \bar "||" \mark \default f''8 des''8 bes'8 aes'8 des''4^\markup{\left-align \small vib} r4 
      | r4 r8 des''8 \tuplet 3/2 {e''8 f''8 aes''8} bes''4 
      | des'''4 des'''8\bendAfter #+4  es'''8\bendAfter #-4  r2 
      | r2. r8. d'''16~ 
      | d'''16 des'''8 c'''16~ c'''8 b''8 \tuplet 3/2 {a''8 aes''8 ges''8} e''8 es''8 
      | des''8 b'8 bes'8 a'8 \tuplet 3/2 {aes'8 aes'8 g'8} f'16\glissando  ges'8 des'16~ 
      | des'8. es'16\glissando  e'16 f'8 c'16 es'4^\markup{\left-align \small vib} \tuplet 3/2 {es'8 f'8 aes'8} 
      | c''8 es''8 aes''8 es''8 \tuplet 3/2 {d''4 g''8~} g''8 f''8 
      | ges''8 ges'8 des''8 f''8 e''16 f''16 e''16 d''16 es''8 des''8 
      | c''8 bes'8 a'16 bes'16 a'16 g'16 aes'8 ges'8 es'8 e'8~ 
      | e'16 f'8 aes'16 bes'4 des''8 r8 r4 
      | \tuplet 3/2 {r8 bes'8\glissando  b'8} bes'16 a'8 aes'16 g'8 r8 r4\bar  ".."
    }
    >>
>>    
}
