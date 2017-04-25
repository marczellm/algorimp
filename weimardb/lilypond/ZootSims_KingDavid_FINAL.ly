\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "King David"
  composer = "Zoot Sims"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7|
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


      \tempo 4 = 151
      \set Score.currentBarNumber = #-7
     
      | r4 \tuplet 3/2 {r8 bes8 des'8} es'4^\markup{\left-align \small vib} r4 
      | \tuplet 3/2 {r8 bes8 des'8} \tuplet 3/2 {es'8 ges'8 e'8} es'16 des'8 bes16 f4 
      | \tuplet 3/2 {f8 d4~} d8 bes4 r8 r4 
      | \tuplet 6/4 {r4 r16 cis16} d4.. aes16~^\markup{\left-align \small vib} aes4~ 
      | aes8 r8 r4 r8 g16 f16~ f16 e16 g16 bes16 
      | d'16 des'16 aes16 f16~ \tuplet 6/4 {f16 es16 cis8 d16 f16~} f16 a16 c'4.^\markup{\left-align \small vib} 
      | r4 r8 g16 f16 es8. f16 bes4~ 
      | bes16 es8 g16 \tuplet 3/2 {bes4 aes8~} aes8. g16 bes4~^\markup{\left-align \small vib} 
      \bar "||" \mark \default bes8 r8 r8. c'16 bes16 a8 bes16 d'8 f'8 
      | bes'4 bes'4.^\markup{\left-align \small vib} r8 r4 
      | r8. g'16~ g'16 bes'8 g'16~ g'16 aes'8 f'16~ f'16 g'16 f'16 e'16 
      | des'8 bes8~ bes8.\bendAfter #+4  es'16 e'4~ \tuplet 6/4 {e'4 d'16 es'16} 
      | bes4 es'4^\markup{\left-align \small vib} r2 
      | r8. es'16~ es'8 g'8 \tuplet 6/4 {a'8 des''8. a'16~} a'8 f'8 
      | \tuplet 3/2 {cis'8 d'4} bes'4.^\markup{\left-align \small vib} r8 r4 
      | r4 \tuplet 6/4 {r4 bes'16 aes'16} g'16 f'4.^\markup{\left-align \small vib} g'16~ 
      | g'16 es'8 g16~^\markup{\left-align \small vib} g4 r4 r8. aes16 
      | fis8 g8 bes8 d'8 des'8 aes8~ aes16 f8 c16~ 
      | c16 d8 bes16~^\markup{\left-align \small vib} bes4 r2 
      | r8. es16 g16 bes16 d'16 des'16 a4.^\markup{\left-align \small vib} f8 
      \bar "||" \mark \default bes4 r2.\bar  ".."
    }
    >>
>>    
}
