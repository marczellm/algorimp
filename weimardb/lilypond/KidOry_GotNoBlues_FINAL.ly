\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Got No Blues"
  composer = "Kid Ory"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | s2. es4 
      | es2 c2:7 | f2:7 bes2:7 | es2 c2:7 | f2:7 bes2:7 | es1 | s2 c2:7 | f1:7 | bes1:7 
      | es2 c2:7 | f2:7 bes2:7 | c2:min b4:min bes4 | a2 d2:7 | es2 c2:7 | f2:7 bes2:7 | es1|
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


      \tempo 4 = 145
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 f8\glissando  
      \bar "||" \mark \default bes4 b4 \tuplet 3/2 {c'4 bes8~} bes8 a8~ 
      | a8 bes8 \tuplet 3/2 {c'4 es'8} c'8\bendAfter #-4  bes8 g4 
      | bes4 \tuplet 3/2 {b4 c'8~} \tuplet 6/4 {c'4~ c'16 bes16~} bes8 a8~ 
      | a8 bes8 \tuplet 3/2 {c'4 es'8~} es'8 c'8 \tuplet 6/4 {bes4~ bes16 f'16} 
      | g'2.^\markup{\left-align \small vib} r4 
      | \tuplet 3/2 {bes4 bes8~} bes8 c'4 bes4 g8\glissando  
      | a2.~^\markup{\left-align \small vib} \tuplet 6/4 {a4~ a16 c'16~} 
      | \tuplet 3/2 {c'8\glissando  des'8 f'8} d'8\glissando  c'8 bes4. g8\glissando  
      \bar "||" bes4 b4 \tuplet 3/2 {c'4 bes8~} bes8\glissando  a8~ 
      | a8 bes8 \tuplet 3/2 {c'4 es'8} c'8\glissando  b8 aes4 
      | es'8. es'16~ es'8 es'4 b8 es'8\glissando  d'8 
      | c'2~^\markup{\left-align \small vib} c'8 dis'4 c'8 
      | dis'4 es'8 b8\bendAfter #-4  bes8 g8~ g8. g16\glissando  
      | gis8 a8 bes8 bes4 bes,4.~ 
      | bes,8 fis8~ \tuplet 3/2 {fis8 g8 g8} aes8 gis8 a8 a8 
      | bes8 g4 f8 d4 bes,8 r8\bar  ".."
    }
    >>
>>    
}
