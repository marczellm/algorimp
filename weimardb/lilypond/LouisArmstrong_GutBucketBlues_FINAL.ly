\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Gut Bucket Blues"
  composer = "Louis Armstrong"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key c \major
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
      | c1:7 | f1:7 | c1:7 | s1 | f1:7 | s1 | c1:7 | s1 
      | g1:7 | f1:7 | c1:7 | g1:7|
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


      \tempo 4 = 146
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 c''8. c''16~ c''8 c''8~ c''8. d'16 
      \bar "||" \mark \default e'8. g'16 a'4 c''4^\markup{\left-align \small vib} r4 
      | es''8. es''16~ es''8 es''4 d''8 \tuplet 3/2 {c''4 c''8~^\markup{\left-align \small vib}} 
      | c''8 r8 r2. 
      | r2 r8 es''4 c''8 
      | es''4 d''4 c''8 a'8 r4 
      | es''8. es''16~ es''8 d''8 c''4^\markup{\left-align \small vib} \tuplet 3/2 {a'4\glissando  es'8~} 
      | es'4 r2. 
      | r2 \tuplet 6/4 {r4 r16 es''16~} es''8 c''8~ 
      | c''8 c''8 d''4 \tuplet 3/2 {c''4 a'8~} a'4 
      | \tuplet 6/4 {es''4~ es''16 es''16~} es''8 es''4. c''8 c''8~^\markup{\left-align \small vib} 
      | c''4 g'8 gis'8 a'8 f''8 dis''8 e''8 
      | c''4 f'16 g'8 g'16~ g'8. c''16~^\markup{\left-align \small vib} c''8 r8\bar  ".."
    }
    >>
>>    
}
