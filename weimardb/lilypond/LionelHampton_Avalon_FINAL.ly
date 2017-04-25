\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Avalon"
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
      
      | aes1:7 | s1 | s1 | s1 | es1:6 | s1 | s1 | s1 
      | aes1:7 | s1 | s1 | s1 | es1:6 | s1 | s1 | s1 
      | c1:7 | s1 | s1 | s1 | f1:min7 | s1 | aes1:min7 | des1:7 
      | es1:6 | s1 | c1:7 | s1 | f1:min7 | b1:7 | es1:6 | s1 
      | aes1:7|
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


      \tempo 4 = 241
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default f''8 d''8 aes'8 d''8 g''8. d''16 aes'8 d''8 
      | aes''4 \tuplet 3/2 {d''8 aes'8 d''8} bes''8. d''16 aes'8 d''8 
      | aes''8. d''16 aes'8 d''8 g''4. f''8~ 
      | f''8. es'''16~ es'''8. a''16 aes''4 bes''8. g''16 
      | es''4 bes'4 bes'4 r4 
      | r4 r16 g'16 bes'16 b'16 bes''4 aes''4 
      | g''4 es''8 bes'4 es'4 r8 
      | r8 bes8 des'4 e'8. aes'16 des''4 
      | es''8 d''8 cis''8 d''8~ \tuplet 6/4 {d''16 es''4 d''16~} \tuplet 3/2 {d''8 cis''8 d''8} 
      | es''4 \tuplet 3/2 {d''8 des''8 aes''8~} aes''4 es''8 d''16 des''16~ 
      | des''4 aes'4 \tuplet 3/2 {aes'4 g'8} f'8 g'8 
      | bes'4. bes'4. bes'4~ 
      | bes'4 bes''4 a''8 aes''4. 
      | aes''4 g''4 aes''4 es''8. es''16~ 
      | es''8. bes'16~ bes'8 g'8 r2 
      | r4 es'8 f'16 bes'16~ bes'8. aes'16~ aes'4 
      \bar "||" \tuplet 3/2 {f'4 aes'8~} aes'4 g'4 r4 
      | c'4 g'8 bes'8 d''4 d''4 
      | des''2~ des''8 r8 r4 
      | a''4 \tuplet 3/2 {g'4 c'''8~} c'''4 c'''4 
      | e''4 c''8 aes'8~ \tuplet 3/2 {aes'8 g'8 c''8} f''4 
      | f''2 g''4. bes''8~ 
      | bes''8 r8 r4 \tuplet 3/2 {aes''4 f''8} es''8 b'8 
      | aes'8 f'8 es'8 f'8 aes'4 r4 
      | r4 g'8 bes'8 es''4 es'8 aes'8 
      | des''8. des''16~ des''8 des''8 des''4 des''4~ 
      | \tuplet 3/2 {des''8 b'8 bes'8} g'8 e''8 aes''4. g''8~ 
      | g''4 r4 r8. c'''16~ c'''8 aes''8 
      | f''8 c''8 aes'8 f'4 aes'4. 
      | g'16 aes'8 bes'16~ bes'16 c''8 d''16~ d''4 g''4 
      | es''4 bes''8 es''4 bes''8 es''4 
      | bes''8 es''8~ \tuplet 3/2 {es''8 bes''8 es''8~} es''4 es''4~ 
      \bar "||" es''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
