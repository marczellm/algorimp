\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "King David"
  composer = "Roy Eldridge"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | f1:7|
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


      \tempo 4 = 150
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 bes'4 bes'8 r8 r4 
      | r4 bes'8. des''16~ des''8 bes'8 g'8 f'8~^\markup{\left-align \small vib} 
      | f'8 r8 r2. 
      | aes'8 bes'8 aes'8 bes'8 g'8 f'4 des''8~ 
      | des''8 g'4.^\markup{\left-align \small vib} r2 
      | r8 des''8 es''8 f''8 bes'4 \tuplet 3/2 {cis''4 d''8} 
      | \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {d'4 f'8~^\markup{\left-align \small vib}} f'4 
      | r4 \tuplet 3/2 {d''4 c''8} cis''4.\glissando  b'8 
      | c''8 es'4^\markup{\left-align \small vib} r8 r2 
      | bes'8 cis''8 d''8 es''8 e''8 f''8 \tuplet 3/2 {bes'4 e''8~} 
      | e''8.\glissando  es''16~ es''8 des''8 \tuplet 3/2 {es''4 des''8} bes'4 
      | bes'4^\markup{\left-align \small vib} r4 r16 f'8 g'16 bes'4 
      \bar "||" \mark \default c''4 bes'4 c''4~^\markup{\left-align \small vib} c''16 bes'8 es''16~ 
      | es''4 bes'4 f''8 es''8 cis''8 d''8 
      | bes'8 f'8 es'4^\markup{\left-align \small vib} d'4~^\markup{\left-align \small vib} d'16 f'8 bes'16 
      | \tuplet 3/2 {aes'4 bes'8} r4 r8. fis'16~ fis'16 g'8 bes'16~ 
      | bes'16 des''8 es''16~ es''16 f''8 f''16~ f''16 es''8 es''16~ es''16 bes'8 e''16~ 
      | e''8.\glissando  es''16~ es''8. des''16~ des''16 bes'8 aes'16 f'8 es'8 
      | d'4 bes'4.\glissando  a'16 aes'16 g'8. f'16~^\markup{\left-align \small vib} 
      | f'4 r4 r8 bes''4.~ 
      | bes''4 des''4 c''8 bes'8 f'8 es'8~^\markup{\left-align \small vib} 
      | es'4 g'8 bes'8 cis''8 d''8~ d''16 f'8 g'16~ 
      | g'16 c''8 bes'16~^\markup{\left-align \small vib} bes'4~ \tuplet 5/4 {bes'16 aes'16 bes'16 aes'16 f'16} \tuplet 3/2 {a'4 bes'8} 
      | f'4 es'4 \tuplet 3/2 {d'4 f'8~^\markup{\left-align \small vib}} f'4\bar  ".."
    }
    >>
>>    
}
