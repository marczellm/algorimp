\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cornet Chop Suey"
  composer = "Louis Armstrong"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | f1 | s1 | s1 | c1:7 | f1 | bes2 bes2:min | f1 | g4:7 c4:7 f2 
      | s1 | s1 | s1 | c1:7 | f1 | bes2 bes2:min | f1 | g4:7 c4:7 f2|
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


      \tempo 4 = 192
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default c''8. f''16~ f''8 c''8 f''4.^\markup{\left-align \small vib} c''8 
      | \tuplet 3/2 {f''4 c''8} f''4 f''4 a''4 
      | f''8 c''8 d''8 f''8 d''8 c''8 \tuplet 3/2 {a'4 f'8} 
      | \tuplet 3/2 {a'4 g'8} fis'8 g'8 d''4^\markup{\left-align \small vib} c''4 
      | f'8 c'8 f'8 a'8 c''8 f'8 a'8 c''8 
      | d''8 bes'8 g''4\glissando  des''4\glissando  r4 
      | c''4 \tuplet 3/2 {f''4 d''8} gis'8 a'8 f'8 aes'8~ 
      | aes'8 f'8 aes'4 f'8 r8 r4 
      | \tuplet 3/2 {a'4 c''8} f''8 a'8 \tuplet 3/2 {c''4 f''8~} f''4 
      | a'8 c''8 f''8 a'8 c''8 f''8 r4 
      | \tuplet 3/2 {a'4 d''8} \tuplet 3/2 {f''4 a'8} \tuplet 3/2 {d''4 f''8~} f''8 d''8 
      | \tuplet 3/2 {e''4 es''8} \tuplet 3/2 {ges''4 d''8~^\markup{\left-align \small vib}} d''4 c''8 r8 
      | r8 f''8 es''8 d''8 c''8 a'8 f'8 c''8~ 
      | c''8 bes'8 c''4 c''4.^\markup{\left-align \small vib} bes'8 
      | gis'8 a'8~ \tuplet 3/2 {a'8 c'8 d'8} \tuplet 3/2 {f'4 aes'8} b'8 d''8 
      | c''4 \tuplet 3/2 {f'4 a'8} r2\bar  ".."
    }
    >>
>>    
}
