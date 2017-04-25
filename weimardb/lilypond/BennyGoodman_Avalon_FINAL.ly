\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Avalon"
  composer = "Benny Goodman"
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
      | r1 
      | bes1:7 | bes1:7 | s1 | s1 | es1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1 | s1 | s1 | s1 
      | c1:7 | s1 | s1 | s1 | f1:min7 | s1 | aes1:min7 | s1 
      | es1 | s1 | c1:7 | s1 | f1:min7 | bes1:7 | es1 | s1 
      | bes1:7|
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
      \set Score.currentBarNumber = #0
     
      | r8. a''16~ a''4. bes''4.~ 
      \bar "||" \mark \default bes''2 a''16 bes''16 a''8 aes''8. g''16~ 
      | g''4 ges''4 f''8. es''16~ es''8 c''8~ 
      | c''8 c''8~^\markup{\left-align \small vib} c''4. r8 r4 
      | bes'8 c''8 es''8 f''8 ges''8 es''8 f''4 
      | f''8 es''8 c''4 es''4.^\markup{\left-align \small vib} r8 
      | r2 c''8 es''16 g''16\glissando  c'''8. g''16~ 
      | g''8. bes''16~ bes''8 r8 r4 r8 ges'16 aes'16 
      | bes'8 es''8 g''8 bes''8 a''8 bes''8 aes''8 bes''8 
      | g''8 bes''8 ges''4 f''4..^\markup{\left-align \small vib} cis''16~ 
      | cis''8 d''16 g''16~ g''8 e''8 f''8 d''16 bes'16~ bes'8 aes'8 
      | f'8 d'4 d'4 r8 r4 
      | r4 cis''8 d''16 f''16~ f''8 d''8 g''8 e''8 
      | f''8 es''8 c''8 bes'8 es''4^\markup{\left-align \small vib} c''4 
      | es''8 r8 r8 ges''8 f''8 es''8 c''4 
      | es''4.^\markup{\left-align \small vib} c''4.^\markup{\left-align \small vib} r4 
      | r4 g''8. g''16~ g''8 g''4 e''8 
      \bar "||" g''4.^\markup{\left-align \small vib} r8 r4 r8 e'8 
      | bes'8 c''8 e''8 g''8 \tuplet 3/2 {b''8 c'''8 bes''8~} bes''8 g''8 
      | \tuplet 3/2 {e''8 c''8 g''8~} g''16 bes''8 aes''16~ aes''8 g''8~ g''16 f''8 e''16~ 
      | e''4 g''4.^\markup{\left-align \small vib} r8 r4 
      | r8. g''16~ g''8 aes''8 bes''8 aes''16 g''16~ g''8 f''8 
      | aes''8 g''8 f''8 e''8 g''8 f''8 e''8 f''16 g''16~ 
      | g''8 f''8 aes''8 f''8 \tuplet 3/2 {es''8 b'8 aes'8~} aes'8. es''16~ 
      | es''4. f''8~^\markup{\left-align \small vib} f''2 
      | r2 \tuplet 3/2 {es''8 ges''8 es''8} d''4 
      | es''8. c''16~ c''8. d''16~ d''8 r8 r8 d''8~ 
      | d''4 c''2.^\markup{\left-align \small vib} 
      | c''8 d''8 g''8 bes''16 d'''16~ \tuplet 3/2 {d'''8 c'''8 bes''8~} bes''16 g''8 c''16~^\markup{\left-align \small vib} 
      | c''4. r8 r8 c''8~ c''16 es''8 g''16~ 
      | g''16 bes''8 aes''16~ aes''16 f''8 d''16~^\markup{\left-align \small vib} d''4 g''8 es''8 
      | f''8 es''8 \tuplet 3/2 {f''4 es''8} \tuplet 3/2 {f''4 es''8} c''8 bes'8 
      | es''4.^\markup{\left-align \small vib} ges'8 \tuplet 3/2 {bes'8\glissando  b'8 c''8} b'8 c''8 
      \bar "||" \mark \default bes'2^\markup{\left-align \small vib} r2\bar  ".."
    }
    >>
>>    
}
