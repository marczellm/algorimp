\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dancing In The Dark (Solo 2)"
  composer = "Zoot Sims"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | aes1:maj | aes1:maj | aes1:dim7 | s1 | bes1:min7 | s1 | bes1:min5-7 | es1:9- 
      | aes1:maj | aes1:min7 | c1:11+.9 | f1:9- | bes1:min5-7 | s1 | s1 | es1:9- 
      | aes1:maj | s1 | aes1:dim7 | s1 | bes1:min7 | s1 | bes1:min5-7 | s2 es2:9- 
      | aes1:maj | aes1:min7 | b1:7 | a1:7 | aes1:6 | bes2:min5-7 es2:7 | aes1:6 | bes2:min7 es2:7 
      | aes1:maj | es1:7|
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


      \tempo 4 = 122
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 aes8 g8 g4 aes8 \tuplet 3/2 {g4 g8~^\markup{\left-align \small vib}} 
      | g4. es8 g4.^\markup{\left-align \small vib} r8 
      | r4 r8 f4.^\markup{\left-align \small vib} g4 
      | aes4^\markup{\left-align \small vib} \tuplet 6/4 {g8 aes16 g8 f16} e8 f8~ \tuplet 6/4 {f16 g4 aes16~} 
      | aes8 des'4^\markup{\left-align \small vib} aes8 des'4 des'8. des'16~^\markup{\left-align \small vib} 
      | des'4. r8 r8 aes8 des'8 es'8 
      | des'8 es'8 e'4~^\markup{\left-align \small vib} e'16 es'8 des'16~ \tuplet 3/2 {des'8 aes8 e8} 
      | aes4^\markup{\left-align \small vib} e8 des'8 c'4.^\markup{\left-align \small vib} bes8 
      | es'4..\glissando  c'16 es'4.^\markup{\left-align \small vib} es'8~ 
      | es'8 es'8 f'4^\markup{\left-align \small vib} r4 r8 es'8~ 
      | es'8 ges'8~^\markup{\left-align \small vib} ges'2~ ges'16 f'8 es'16~^\markup{\left-align \small vib} 
      | es'2 r2 
      | r8 f8 bes8 c'8 des'8 es'4 des'8 
      | e'4\glissando  \tuplet 3/2 {es'4 des'8~^\markup{\left-align \small vib}} des'4. es'8 
      | des'8 b8~^\markup{\left-align \small vib} b4. f'16 es'16~ es'16 b8 f16 
      | bes4^\markup{\left-align \small vib} r2 \tuplet 3/2 {aes8 bes8 aes8} 
      \bar "||" g4..^\markup{\left-align \small vib} g16 g4. g8 
      | g2.^\markup{\left-align \small vib} es'16 e'16 es'16 c'16 
      | g8 f4.^\markup{\left-align \small vib} r4 r8 f8~ 
      | f16 g8 aes16~ \tuplet 3/2 {aes8 g8 f8} aes4^\markup{\left-align \small vib} g8 f8 
      | des'4 des'4 des'4^\markup{\left-align \small vib} aes8 f8 
      | des'8. des'16~^\markup{\left-align \small vib} des'4 r4 \tuplet 6/4 {r16 aes8 g16 ges16 f16} 
      | e4~ \tuplet 6/4 {e8 aes8. bes16~} bes8 c'16 des'16~ des'8 c'8 
      | \tuplet 3/2 {bes8 c'4~^\markup{\left-align \small vib}} c'8 r8 r8. des'16~ \tuplet 3/2 {des'8 f'8 e'8} 
      | es'4.. es'16~ es'8 es'8~ es'16 es'8 es'16~^\markup{\left-align \small vib} 
      | es'4 r4 r8 f'4 es'8 
      | fis'2.^\markup{\left-align \small vib} es'4 
      | g'4. r8 r8. b16~ b16 c'16 es'16 f'16~ 
      | f'8 aes'8~^\markup{\left-align \small vib} aes'8. aes'16~ aes'8 aes'8~ aes'16 aes'8 aes'16~ 
      | aes'8 aes'8~^\markup{\left-align \small vib} aes'8. aes'16~ aes'8 aes'8~ aes'16 aes'8 aes'16~^\markup{\left-align \small vib} 
      | aes'8 r8 r8. aes'16~ aes'8 aes'8~ \tuplet 6/4 {aes'16 aes'4 aes'16~^\markup{\left-align \small vib}} 
      | aes'4 d'4 \tuplet 3/2 {f'4 aes'8} f'8 d'8 
      | aes'2^\markup{\left-align \small vib} f'8 des'8 bes8 f8 
      \bar "||" c'4. es'4 es'8 es'4~^\markup{\left-align \small vib} 
      | es'4~ es'16 es'8 f'16~ f'16 g'16 aes'16 f'16 g'8 es'8 
      | e'16 g'16 f'16 es'16 c'8 g4^\markup{\left-align \small vib} g4 g8~^\markup{\left-align \small vib} 
      | g4 es8 g8~^\markup{\left-align \small vib} g2~ 
      | g2 r2\bar  ".."
    }
    >>
>>    
}
