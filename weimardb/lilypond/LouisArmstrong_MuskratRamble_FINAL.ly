\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Muskrat Ramble"
  composer = "Louis Armstrong"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key aes \major
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
      | aes1 
      | bes1:7 | es1:7 | aes1 | s2 aes2:dim | es1:7 | s1 | aes1 | s1 
      | bes1:7 | es1:7 | aes1 | s2 g4:7 ges4:7 | f1:7 | bes1:min | bes2:7 es2:7 | aes1|
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


      \tempo 4 = 184
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 \tuplet 3/2 {b'4 c''8~} c''8 b'8 c''8. c''16~ 
      \bar "||" \mark \default c''4 c''4 c''4^\markup{\left-align \small vib} r4 
      | \tuplet 3/2 {c''4 es''8~} es''8 c''8 es''8 aes''4\glissando  es''8~ 
      | es''8 es''8 c''4 bes'8 aes'8 \tuplet 3/2 {g'4 f'8\glissando } 
      | bes'4.^\markup{\left-align \small vib} aes'8 g'4 f'8. des''16~ 
      | des''8 bes'8 des''4 bes'4^\markup{\left-align \small vib} r4 
      | r8 b'8 c''8 es''8 \tuplet 3/2 {c''4 g'8~} g'8 bes'8 
      | aes'8 aes'4^\markup{\left-align \small vib} c''16 aes'16 f'8 c'8 r4 
      | r8 g''2..~^\markup{\left-align \small vib} 
      | g''8 es''8 es'8 f'8 aes'8 c''8 f'8 aes'8~ 
      | aes'8 aes'4 aes'8 \tuplet 6/4 {des'8. des'8 g'16~} g'8 g'8 
      | f'4^\markup{\left-align \small vib} es'4 c''4^\markup{\left-align \small vib} r4 
      | \tuplet 3/2 {b'4 c''8~} c''8 bes'8 \tuplet 6/4 {aes'4~^\markup{\left-align \small vib} aes'16 f'16~} f'8\glissando  aes'8~ 
      | aes'8 bes'8 \tuplet 3/2 {aes'4 f'8} aes'4^\markup{\left-align \small vib} f'4 
      | es'8 r8 r4 \tuplet 3/2 {g''4 f''8} des''8 c''8~ 
      | c''4 \tuplet 3/2 {f'4 fis'8} \tuplet 3/2 {g'4 c''8~^\markup{\left-align \small vib}} c''4 
      | aes'8 c'8 des'8 g'4.^\markup{\left-align \small vib} f'8 r8\bar  ".."
    }
    >>
>>    
}
