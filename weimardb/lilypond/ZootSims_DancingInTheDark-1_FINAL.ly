\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dancing in the Dark"
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
      | bes2:min7 es2:7 
      | aes1:maj | aes1:maj | aes1:dim7 | s1 | bes1:min7 | s1 | bes1:min5-7 | es1:9- 
      | aes1:maj | aes1:min7 | c1:13-.9+11+ | f1:9- | bes1:min5-7 | s1 | s1 | es1:9- 
      | aes1:maj | s1 | aes1:dim7 | s1 | bes1:min7 | s1 | bes1:min5-7 | s2 es2:9- 
      | aes1:maj | aes1:min7 | b1:7 | a1:7 | aes1:6 | bes2:min5-7 es2:7 | aes1:6 | bes2:min7 es2:7 
      | aes1:maj|
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


      \tempo 4 = 125
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. es'16 f'16 es'16 c'16 
      \bar "||" \mark \default g4.^\markup{\left-align \small vib} es8 g4.^\markup{\left-align \small vib} es8 
      | g2.^\markup{\left-align \small vib} r4 
      | r4 r8. f16~^\markup{\left-align \small vib} f4. g8 
      | aes2~^\markup{\left-align \small vib} aes8 g8^\markup{\left-align \small vib} f4 
      | des'2^\markup{\left-align \small vib} aes8 des'8 des'8. des'16~^\markup{\left-align \small vib} 
      | des'2 r2 
      | r8. e16~ e8 aes8 \tuplet 3/2 {bes8 c'8 des'8~^\markup{\left-align \small vib}} des'4~ 
      | des'4~ \tuplet 6/4 {des'4 des'16 es'16} des'8 c'8~ \tuplet 6/4 {c'8 bes8. es'16~^\markup{\left-align \small vib}} 
      | es'4.. es'16~ es'8 es'8~ es'16 es'8 es'16~^\markup{\left-align \small vib} 
      | es'4 r4 \tuplet 6/4 {r4 r16 f'16~} f'8. es'16~ 
      | es'8 ges'8~ \tuplet 6/4 {ges'8\glissando  f'8. es'16~^\markup{\left-align \small vib}} es'2~ 
      | es'4 r2 r8 es'16 f'16 
      | es'8 des'8~^\markup{\left-align \small vib} des'4.. es'16~ es'8\glissando  des'8~ 
      | des'16 bes16 e'8~ e'16\glissando  es'8 des'16~^\markup{\left-align \small vib} des'2 
      | r4 r8. b16~^\markup{\left-align \small vib} b4~ \tuplet 6/4 {b8 aes8. f16~} 
      | f8 bes8~^\markup{\left-align \small vib} bes8.. g32~ g8. des16~ des8 es8 
      \bar "||" f8 g8~^\markup{\left-align \small vib} g8. es16~ es16 g8 es'16~ es'16 c'8 g16~^\markup{\left-align \small vib} 
      | g2. r4 
      | r2 f4..^\markup{\left-align \small vib} g16~ 
      | g8 aes8~^\markup{\left-align \small vib} aes4. g4 f8 
      | des'2~^\markup{\left-align \small vib} des'8 des'4 des'8 
      | des'2.^\markup{\left-align \small vib} r4 
      | r8. e16~ e16 aes8 des'16~^\markup{\left-align \small vib} des'2~ 
      | des'4. des'8 es'16 des'8 c'16~ c'8 bes8 
      | es'4..^\markup{\left-align \small vib} es'16~ es'8 es'8~ es'16 es'8 es'16~^\markup{\left-align \small vib} 
      | es'4 r4 r8. f'16~ f'8. es'16~ 
      | es'8 fis'8~^\markup{\left-align \small vib} fis'2~ fis'8. es'16~ 
      | es'8. g'16~ g'4\glissando  es'4~ es'16 f'8 es'16 
      | aes'2~^\markup{\left-align \small vib} aes'8 aes'8~ aes'16 aes'32~ aes'8 aes'32~^\markup{\left-align \small vib} 
      | aes'4.. aes'16~ aes'8 e'8 des'8 bes16. f32~ 
      | f8 aes4.^\markup{\left-align \small vib} r4 r8 aes8~ 
      | aes16 c'8 aes16 c'4 aes4~ \tuplet 6/4 {aes8 f8. g16~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default g4 r2.\bar  ".."
    }
    >>
>>    
}
