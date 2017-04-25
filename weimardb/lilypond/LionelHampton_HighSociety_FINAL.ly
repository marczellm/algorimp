\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "High Society"
  composer = "Lionel Hampton"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | es1 | es1 | s1 | s1 | s1 | s2 aes2 | es1 | s1 
      | bes1:7 | s2 d2:7 | es1 | s1 | f1:7 | s1 | bes1:7 | s1 
      | es1 | s1 | s1 | bes1:7 | es1 | s2 aes2 | es1 | es1:7 
      | aes1 | a1:dim | es1 | c1:7 | f1:7 | bes1:7 | es1|
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


      \tempo 4 = 245
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default bes'8 c''16 bes'16 g'8 bes'16 es''16~ es''8. bes'16~ \tuplet 3/2 {bes'8 es''8 g''8~} 
      | g''8 f''16 es''16~ es''8 d''4 es''8 d''8 es''8 
      | f''8 es''8 d''8 es''8 f''8 es''8 d''8 es''8 
      | f''8 es''8 b'16 aes'8 f'16~ f'8 es'8 bes'8 aes'8 
      | bes'8 aes'8 es'8. c'16~ c'8 r8 r4 
      | r8. bes'16~ bes'8 aes'8 b4 g'4 
      | es'4. bes4 r8 r4 
      | r2. r8 es'''8 
      | c'''8 c'''8 aes''8 c'''8 aes''8 aes''8 f''8 aes''8 
      | f''8 f''8 es''8 aes''8 f''8 f''8 es''8 g''8 
      | es''8 es''8 bes'8 g'8 es'8 c'8 bes8 g8 
      | bes8 c'8 es'8 c'8 es'8 c'8 es'8 c'8 
      | c'8 a8 c'8 es'8 g'4 r4 
      | r8 es'8 \tuplet 3/2 {g'4 a'8} d''4 c''4 
      | r1 
      | r2. r8. f''16~ 
      \bar "||" f''8. ges''16~ ges''4 f''8. ges''16~ ges''4 
      | f''8. ges''16~ ges''8 f''4 ges''4 es''8 
      | f''4 ges''8. es''16 f''8 es''8 \tuplet 3/2 {aes''4 f''8} 
      | es''8 c''8 aes'4 bes'4 aes'8 g'8 
      | fis'8 g'8 es'8 c'16 bes16~ bes8 bes16 es'16~ es'8. b16~ 
      | b8 es'8 f'4 bes'4 aes'8 g'8 
      | es'8 g'8 bes'8. f''16~ f''4. des''16 f''16~ 
      | f''8 des''8 bes'4. es'8 es''8 c''8 
      | es''4 bes'8 aes'8 es'8 c'8 aes8 r8 
      | r4 \tuplet 3/2 {fis''4 es''8} c''8 a'8 fis'4 
      | \tuplet 3/2 {g'4 es'8} g'8 bes'8 es''8 es''8 d''8 bes'8 
      | g'8 e'8 g'8 e'8 g'8. g16 d'16 g'16 a'8 
      | d''4. c''8~ c''4. r8 
      | r4 fis''4 g''8 bes'8 a'8 g'16 bes'16~ 
      | \tuplet 3/2 {bes'8 g'8 bes'8~} bes'8 c''16 es''16~ es''4. r8\bar  ".."
    }
    >>
>>    
}
