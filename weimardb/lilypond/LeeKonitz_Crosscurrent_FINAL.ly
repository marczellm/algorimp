\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Crosscurrent"
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
      
      | f1:maj | g2:min7 c2:7 | a1:min7 | g2:min7 c2:7 | f1:7 | bes1:maj | g2:min7 c2:7 | f1:maj 
      | s1 | g2:min7 c2:7 | a1:min7 | g2:min7 c2:7 | f1:7 | bes1:maj | g2:min7 c2:7 | f1:maj 
      | bes1:min7 | a1:maj | aes1:min7 | g1:maj | ges1:maj | f2:7 d2:7 | g1:min7 | c1:7 
      | f1:maj | g2:min7 c2:7 | a1:min7 | g2:min7 c2:7 | f1:7 | bes1:maj | g2:min7 c2:7 | f1:maj|
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


      \tempo 4 = 256
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 \tuplet 3/2 {c'4 bes8} a8 c'8 
      | f'8 d'8~ d'16 g'8 f'16~ f'16 e'8 d'16 c'8 f8~ 
      | f16 a8 c'16~ c'16 e'8 d'16 c'8 e'8 a'8 f'8~ 
      | f'16 bes'8 a'16~ a'16 g'8 f'16 c''8 bes'8 a'8 c''8 
      | f''4 bes'4 es''8 des''8 c''8 bes'8 
      | a'4 c''8 b'8 bes'8 a'8 g'8 f'8 
      | e'8 f'8 g'8 e'8 f'8 g'8 a'8 f'8~ 
      | f'4 f'8 r8 r2 
      \bar "||" r8 fis'8 \tuplet 3/2 {g'8 bes'8 d''8} \tuplet 3/2 {f''4 g'8~} g'8 bes'8 
      | d''8 f''8 ges'4~ \tuplet 3/2 {ges'8 bes'8 d''8} f''8 f'8 
      | r4 r8 g'8 \tuplet 3/2 {bes'4 a'8} g'4 
      | c''4 c''8 r8 r2 
      | c''4 \tuplet 3/2 {des''4 es''8} des''8 c''8 bes'8 a'8 
      | c''8 b'8 bes'8 a'8 g'8 f'8 e'8 f'8 
      | g'8 e'8 f'8 g'8 bes'8 a'8 g'8 f'8 
      | c''4 c''8 r8 r2 
      \bar "||" bes'8 c''8 des''8 es''8 f''8 f'8 aes'8 f'8 
      | fis'8 gis'8 b'8 dis''8 fis''8 b'8 dis''8 cis''8 
      | b'8 bes'8 aes'8 bes'8 b'8 cis''8 d''8 fis''8 
      | g''8 r8 r4 f'8 fis'8 bes'8 cis''8 
      | f''8 c''8 es''8 des''8~ des''8. des''16 r4 
      | r4 r16 a'8 bes'16~ bes'16 d''8 g'16 c''8 b'8 
      | bes'8 a'8 g'8 f'8 e'8 f'8 g'8 a'8 
      | bes'8 g'8 c''8 bes'8 a'8 g'8 f'8 bes'8~ 
      \bar "||" bes'8 bes'4 a'8 \tuplet 3/2 {g'8 f'8 e'8~} e'16 c''8 bes'16~ 
      | bes'16 a'16 g'16 f'16 d''4 \tuplet 3/2 {d''4 c''8} bes'16 a'16 g'8 
      | \tuplet 3/2 {e''4 d''8~} d''16 c''16 bes'16 a'16 f''4 r4 
      | r2. \tuplet 3/2 {f''4 e''8} 
      | es''8 des''8~ des''16 c''8 bes'16 a'8 bes'8 c''8 b'8 
      | bes'8 a'8 g'8 f'8~ f'16 e'8 f'16 g'8 e'8 
      | f'8 g'4 a'4 f'8 bes'8 a'8~ 
      | a'8 g'4 f'8 c''8 bes'8 \tuplet 3/2 {a'8 g'8 c''8~} 
      | c''4 c''4 r2\bar  ".."
    }
    >>
>>    
}
