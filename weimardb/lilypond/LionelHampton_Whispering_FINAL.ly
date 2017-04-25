\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Whispering"
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
      
      | es1 | d1:7 | es1 | c2:775+ c2:7 | f1:7 | bes1:7 | es1 | bes1:7 
      | es1 | d1:7 | es1 | c2:775+ c2:7 | f1:7 | bes1:7 | f2:min7 bes2:7 | es1 
      | s1|
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


      \tempo 4 = 100
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 a'8 bes'16 es''16~ es''8 a'8 bes'4 
      | c'16 cis'16 es'16 c'16~ c'16 fis'16 a'8 d''4 c''8 es''16 c''16 
      | aes'8 bes'8 r4 g'8 aes'8 f'8 g'16 aes'16 
      | e'16 es'16 bes8 \tuplet 7/8 {bes16. b'32 bes'32 aes'32 ges'32} \tuplet 6/4 {e'16 d'16 des'16 c'8.} b8 a8 
      | a8. a16 c'16 es'16 g'8 c''8. g'16~ g'8 aes''8~ 
      | aes''8 bes'8 \tuplet 6/4 {f'16 b16 d'16 f'8 aes'16} c''8. g'16~ g'8 d'8 
      | r8. es'16 f'16 g'16 bes'8 bes'8 c''16 ges''16~ ges''8 f''8~ 
      | \tuplet 3/2 {f''8 f''8 c'''8} es'''16 aes''16 c'''8 \tuplet 3/2 {g'4 g'8~} g'4 
      \bar "||" \tuplet 3/2 {bes'8 bes''8 g''8} f''16 es''16 d''8 c''16 d''16 es''8 g''8 d''8 
      | c''4 \tuplet 5/4 {a'16 fis'16 es'16 d'16 c'16} c'8 fis'8 \tuplet 5/4 {c''8 aes'16 f'16 bes'16} 
      | \tuplet 3/2 {g'8 es'8 c'8} bes4 r8. bes'16 es''8 bes'8 
      | \tuplet 5/4 {d''8 bes'16 aes'16 g'16} e'16 d'8 aes'16~ aes'16 c'16 e'16 b16~ b16 es'16 bes8 
      | es'16 a16 c'16 es'16 \tuplet 3/2 {g'8 c''4~} c''8.. b'32~ b'8 bes'8 
      | b'16 c''16 b'16 aes'16 \tuplet 3/2 {f'8 aes'8 bes'8} aes'8 ges'16 f'16~ f'4 
      | es'''16 a''16 aes''16 e''16 es''16 b'16 aes'8 \tuplet 6/4 {f'16 aes'16 b'16 bes''8.} aes''8 g''16. es''32~ 
      | es''8 bes'8 fis'8 g'8 aes'8 bes'8 es'''8 d'''16 c'''16 
      \bar "||" g''16 bes''16 r8 r2.\bar  ".."
    }
    >>
>>    
}
