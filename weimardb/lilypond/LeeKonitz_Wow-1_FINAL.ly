\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Wow"
  composer = "Lee Konitz"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | g1:min7 | c1:7 | f1:6 | a2:min aes2:maj | g1:maj | ges1:min7 | f1:6 | fis1:dim 
      | g1:min7 | c1:7 | f1:6 | a2:min7 aes2:maj | g1:maj | ges1:min7 | f1:maj | s1 
      | c1:min|
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
     
      \bar "||" \mark \default r2. \tuplet 6/4 {r4 r16 g'16~} 
      | g'8 bes'8 a'8 des''8 ges''8 e''8 es''8 des''8 
      | c''8 bes'8 a'8. bes'16 c''8 bes'8 a'8 f'8~ 
      | f'8 f'8 \tuplet 3/2 {bes'4 f'8} gis'8 bes'8 c''8 cis''8 
      | d''8 c''8 b'8 fis'4 fis'8 r4 
      | r2 \tuplet 3/2 {dis''4 des''8} \tuplet 3/2 {c''8 bes'8 a'8} 
      | g'8 f'8 e'8 d'8 c'8 d'8 e'8 f'8 
      | g'8 a'8 bes'8 fis'8 gis'4 b'4 
      \bar "||" a'4 g'4 c''4 f''8 e''8 
      | es''8 des''8~ \tuplet 6/4 {des''16 c''4 bes'16~} bes'8 a'8 c''8 bes'8 
      | a'8. c''16 f''8 d''4. r4 
      | r4 c''8 bes'8 \tuplet 3/2 {aes'8 g'8 f'8} \tuplet 3/2 {es'8 cis'8 d'8} 
      | \tuplet 3/2 {e'8 fis'8 g'8} \tuplet 3/2 {a'8 b'8 g'8} a'16 bes'16 b'16 bes'16 a'8 aes'8 
      | g'16 fis'16 e'16 dis'16 des'8 c'8 \tuplet 3/2 {bes8 a8 bes8} c'8. e'16 
      | f'8 r8 r4 \tuplet 3/2 {d'8 e'8 f'8} g'16 e'16 f'16 g'16 
      | a'16 bes'16 a'16 g'16 \tuplet 5/4 {f'16 e'16 d'16 c'16 bes16} a16 c'16 e'16 g'16~ g'16 f'16 ges'16 a'16 
      \bar "||" f''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
