\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Stepping Stone"
  composer = "Woody Shaw"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \major
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
      | r1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | f1:7|
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


      \tempo 4 = 266
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r16 dis''8 e''16 
      \bar "||" \mark \default es''4. g''8 f''2~ 
      | f''8 d''8~ d''8. c''16~ c''4 a'4 
      | a'1~ 
      | a'16 g'8 bes'16 a'8 f'8 es'4~ \tuplet 3/2 {es'8 f'8 g'8~} 
      | g'4\glissando  a'2 g'8. f'16~ 
      | f'2. es'8. f'16~ 
      | \tuplet 3/2 {f'8 g'8 a'8} bes'8 g'8 a'8 c''8 f''8 r8 
      | r1 
      | r4 \tuplet 3/2 {g''8 aes''8 g''8~} g''8 a''4 g''8 
      | d''4 c''8 r8 r2 
      | r4 es''8 g''8 f''8 d''8 c''8 f''8 
      | c''8 c''8 d''8 bes'8 g'8 c''8 a'8. f'16 
      | bes'8 a'8 f'8. d'16 g'8 es'8 c'8 bes8 
      | \tuplet 3/2 {g4 a8} bes8 c'8~ c'16 d'8 es'16 \tuplet 3/2 {c'4 d'8} 
      | es'8 f'8 g'8 a'8 bes'8 c''8 \tuplet 3/2 {d''8 f''4} 
      | r1 
      \bar "||" r4 f''4 g''8 aes''8 \tuplet 3/2 {g''4 es''8~} 
      | es''8. bes'16 f''8 c''4 d''8~ d''16 c''8 aes'16 
      | bes'8 des''8 c''8 bes'8 \tuplet 3/2 {aes'4 f'8} bes'8 a'8 
      | aes'8 es'8 c'8 f'8 es'8. bes16 b8 es'8~ 
      | es'8 f'4 aes'8~ aes'8. f'16~ f'16 bes'8 es''16~ 
      | es''2~ es''4~ es''16 d''16 e''16 es''16~ 
      | es''4~ es''16 d''16 e''16 es''16 r2 
      | r2. \tuplet 3/2 {aes''4 aes''8} 
      | aes''4 r2. 
      | r2 es''8 f''8 ges''8\glissando  bes''8 
      | r2 aes''8 f''8 es''4 
      | f''8 c''8 c''8 bes'8 aes'4 f'16 bes'8 a'16 
      | aes'8 es'8 c'8 f'8 es'4.. f'16 
      | aes'4.. f'16 bes'8 a'8 aes'8 es'8 
      | c'8 f'8~ f'16 es'16 f'8 g'8 a'8 bes'8 c''8 
      | d''8 d''8~ d''16 d''8 d''16~ d''16 d''8 d''16~ d''16 d''8 d''16 
      \bar "||" \mark \default d''8 bes'8 g'8 r8 r2\bar  ".."
    }
    >>
>>    
}
