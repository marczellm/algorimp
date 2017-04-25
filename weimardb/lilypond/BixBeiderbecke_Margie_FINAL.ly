\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Margie"
  composer = "Bix Beiderbecke"
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
      
      | es1 | s1 | s1 | es1:7 | aes1 | s1 | g1:7 | s1 
      | es1 | s1 | s4 es4:7 d4:7 des4:7 | c1:7 | f1:min7 | bes1:7 | es1|
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


      \tempo 4 = 180
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default bes'4 bes'4 \tuplet 3/2 {bes'4 bes'8~} bes'4 
      | g'8 r8 r4 r8 es''4 bes'8 
      | \tuplet 3/2 {c''4 fis'8} g'4 f'4 r4 
      | f'8 e'8 es''8 c''8 es''4 c''8 es'8~ 
      | es'8 f'4. aes'4 r4 
      | \tuplet 3/2 {d'4 es'8} f'4 f'8 es'8 f'8 fis'8 
      | g'4. g'4 r8 r4 
      | r4 g'8 aes'4 a'4. 
      | bes'4 c''4 bes'4 b'8 c''8 
      | bes'4. r8 r4 \tuplet 6/4 {g'8 aes'8. bes'16~} 
      | bes'8 c''4. bes'4 c''8 d''8~ 
      | d''4 r4 c''8 d''8 es''8 aes'8 
      | g'8 f'8 c''8 bes'4. r4 
      | \tuplet 6/4 {fis'8. g'8 bes'16~} bes'8 aes'8 bes'4 r4 
      | \tuplet 3/2 {bes'4 bes'8~} bes'4 b'16 c''8. r4\bar  ".."
    }
    >>
>>    
}
