\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Royal Garden Blues"
  composer = "Bix Beiderbecke"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | bes1 | s1 | s1 | s1 | es1 | s1 | bes1 | g1:7 
      | c1:min7 | f1:7 | bes1|
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


      \tempo 4 = 174
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 3/2 {r8 bes8 d'8} f'8 g'8 \tuplet 3/2 {bes'4 d''8} \tuplet 3/2 {c''4 d''8} 
      | \tuplet 3/2 {c''8 d''8 c''8} bes'16 aes'16 g'16 f'16~ f'16 es'16 f'8 es'16 f'16 es'8 
      | d'4 bes8 d'8 \tuplet 3/2 {f'4 d''8} \tuplet 3/2 {c''4 aes'8} 
      | g'8 bes'4 d'8 f'8 bes'8 \tuplet 3/2 {aes'4 es'8} 
      | g'8 es'8 f'8. es'16 f'8 es'8 r4 
      | r8 ges''8 f''8 es''8 c''4 bes'4 
      | bes'4.. f'16~ f'8 d''8 es''8 d''8 
      | g'2~ g'8 d''4.~ 
      | d''4. b'8~ b'16 c''8 cis''16\bendAfter #+4  d''8 bes'8~ 
      | bes'16 bes'16 c''16 bes'16~ bes'8 des''8 c''8 bes'8 \tuplet 3/2 {g'8 bes'8 g'8} 
      | bes'4. f'8 aes'4 c'8 es'8 
      | d'4 r2.\bar  ".."
    }
    >>
>>    
}
