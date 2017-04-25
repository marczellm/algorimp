\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Wow"
  composer = "Warne Marsh"
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
      
      | g1:min | c1:7 | f1 | a2:min aes2:maj | g1:maj | e1:9- | a1:min | d2:min d2:7 
      | g1:min | c1:9- | f1 | a2:min aes2:maj | g1:maj | c1:7 | f2 c2 | f1 
      | a2:min aes2:maj|
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


      \tempo 4 = 175
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {d'4 f'8~} f'8 a'8 c''8 b'8 
      | bes'8 a'8 g'8 f'8 \tuplet 3/2 {e'4 f'8~} f'8 a'8 
      | d''8 c''8 bes'8 a'8 g'8 f'16 e'16~ e'8 d'8 
      | c'8 bes8 gis8 c'4 es'8 \tuplet 6/4 {g'4~ g'16 b16~} 
      | b8 fis'8~ fis'16 e'8 d'16 c'8 b8 a8 g8 
      | fis8 a8 cis'8 e'8 gis'8 fis'8 \tuplet 3/2 {dis'8 e'8 g'8} 
      | c''4 r2. 
      | a'8 bes'8 c''8 d''8 dis''4 c''4 
      \bar "||" d''8 c''8 bes'8 a'8 g'8 f'8 e'8 f'8 
      | g'8 a'8 bes'8 c''8 des''8 a'8 \tuplet 3/2 {e'4 des'8~} 
      | des'4 e'8 des'8 e'8 des'8 c'4~ 
      | c'4 r2. 
      | d'8 c'8 b8 d'8 fis'8 e'8 d'8 c'8 
      | b8 a8 aes8 b8 e'8 es'8 des'8 c'8 
      | bes8 a8 g8 f8 \tuplet 3/2 {e8 f8 a8} d'8 g16 a16~ 
      | a16 c'16 e'16 g'16~ \tuplet 3/2 {g'8 f'8 e'8} \tuplet 3/2 {d'8 c'8 bes8} \tuplet 3/2 {a8 g8 f8} 
      | dis4 r2.\bar  ".."
    }
    >>
>>    
}
