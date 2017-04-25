\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Heart"
  composer = "Johnny Dodds"
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
      
      | es1 | bes1:775+ | es1 | d1:dim | es1:7 | aes1:7 | f1:min7 | bes1:7 
      | s1 | s1 | es1 | c1:7 | f1:7 | s1 | bes1:7 | s1 
      | r1|
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
     
      \bar "||" \mark \default es8 es'2..~^\markup{\left-align \small vib} 
      | es'8. des'16 c'8 bes8 fis8 g8 bes8 g8 
      | c'8 bes8 fis8 g8 bes8 a8 c'8 bes8 
      | es'8 es'4^\markup{\left-align \small vib} bes8 \tuplet 3/2 {c'4 bes8} fis8 g8 
      | r4 es'8 bes8 es'8 g8 bes8 es16 f16~ 
      | f8 fis8 g8 bes8 a8 bes8 c'8 bes8 
      | d'8 cis'8 d'8 des'8 c'8 bes8 a8 bes8 
      | aes8 bes8 g8 aes8 f8 aes8 d8 r8 
      \bar "||" r4 \tuplet 3/2 {d4 f8} aes8 d8 f8 aes8 
      | \tuplet 3/2 {bes4 a8} c'8 d'8 \tuplet 6/4 {d'8. c'8 bes16~} bes8 aes8~ 
      | aes4 es16 d8 es16 \tuplet 3/2 {g8 es8 g8} \tuplet 3/2 {bes8 a8 bes8} 
      | \tuplet 3/2 {c'8 a8 bes8} es'8 bes16 c'16~ c'8 bes16 g16~ \tuplet 3/2 {g8 ges8 f8} 
      | r4 r8 f8 f8 a8 c'8 f8 
      | a8 c'8 es'8 c'8 es'8 c'8 r4 
      | cis'8\glissando  d'8 cis'8\glissando  d'8 bes8 c'4 f8 
      | aes4 des8 bes4 aes8 f8 fis16 g16~ 
      \bar "||" g8 r8 r2.\bar  ".."
    }
    >>
>>    
}
