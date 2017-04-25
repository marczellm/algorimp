\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Runnin' Wild"
  composer = "Lionel Hampton"
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
      
      | bes1 | bes1 | bes1:7 | s1 | es1 | s1 | bes1 | s1 
      | f1:7 | c2:min6 d2:7 | g1:min | bes1:min6 | f1 | c1:7 | f1:7 | s1 
      | bes1 | s1 | bes1:7 | s1 | es1 | s1 | d1:7 | s2 g2:7 
      | c1:7 | f1:7 | bes1 | s1 | f1:7 | s1 | bes1|
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


      \tempo 4 = 281
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default f'''8 bes''8 c'''8 cis'''8 d'''8 f''8 g''8 a''8 
      | \tuplet 3/2 {bes''4 c''8} d''8 e''8 \tuplet 3/2 {f''8 f'8 g'8} bes'8 c''8 
      | \tuplet 3/2 {d''8 c''8 d''8~} d''16 c''16 d''8 c''8 aes'8 f'8 d'8 
      | \tuplet 3/2 {c'4 bes8~} bes4 f'8 g'8 bes'8 g'8 
      | es'4 \tuplet 3/2 {bes4 g8} bes8 d'8 es'4 
      | d'4 g'4 \tuplet 3/2 {bes'4 g'8} bes'4 
      | f'8 d'8 f'8 bes'8 d''4 g'8 bes'8 
      | f''4. f''4. c''8 g'8 
      | c'4 c''4 b4 d'4 
      | a'8 ges'8 d'8 c'8 d'4 d'8 c'8 
      | d'4 d'8 g'8 \tuplet 3/2 {bes'4 e'8} g'8 bes'8 
      | d''4. d''4 r8 r4 
      | r8 f'8 a'8 c''8 g''4 g''8 e''8 
      | d''8 bes'8 g'8 e'8 r2 
      | r8 f'4 f'8 \tuplet 3/2 {f''8 f'8 f''8} f'8 e''8 
      | \tuplet 3/2 {f'8 e''8 f'8} es''8 f'8 d''4 r4 
      \bar "||" e''4. f''8~ f''2 
      | d''4 es''4 e''4 f''4 
      | d''8 bes'8 aes'8 f'8 c'4 c'4 
      | c'4 bes'8 ges'8 d'8 bes8 r4 
      | bes8 g8 bes8 g8 bes8 d'8 es'4 
      | d'4 g'4 bes'4 bes'4 
      | a'8 d'8 a'8 c''8 d''4 r4 
      | d''4. d''4. d''4 
      | r4 d''4 bes'2 
      | d''4 a'4 r4 d''4 
      | bes'4 f'4 f'4 bes8 des'8 
      | e'8 a'8 bes'8 des''8 e''8 d''8 a''8 g''16 bes''16~ 
      | bes''8 g''8 es''8 c''8 bes'8 g'8 bes'8 g'8 
      | a'4. f''4. d''4~ 
      | d''8 f''4. d''4 r4\bar  ".."
    }
    >>
>>    
}
