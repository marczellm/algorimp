\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Harvard Blues (Solo 2)"
  composer = "Don Byas"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      | s2 r2 
      | des1:7 | ges2:7 g2:dim | des1:7 | s1 | ges1:7 | s2 g2:dim | des1:7 | bes2:min es2:7 
      | aes1:7 | ges1:7 | des1:7 | s1 | r1|
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


      \tempo 4 = 99
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. aes16~ \tuplet 5/4 {aes16 des'16 e'16 f'16 aes'16} 
      \bar "||" \mark \default \tuplet 3/2 {des'4 des'8} des'8 f'8~^\markup{\left-align \small vib} f'8. aes'16~ aes'16 f'16 des'16 b16~ 
      | b16 bes8 bes16~ \tuplet 3/2 {bes8 des'8 e'8~} e'8. aes'16~ aes'16 e'16 des'16 bes16~ 
      | bes16 es'8 es'16 bes4^\markup{\left-align \small vib} r4 \tuplet 6/4 {r8 aes8. ges16~} 
      | ges16 f16 f16 des'16 es'8 b8 \tuplet 5/4 {aes16 bes16 aes16 es16 ges16} f4~^\markup{\left-align \small vib} 
      | \tuplet 7/8 {f8~ f32 e32 ges32~} \tuplet 5/4 {ges16 aes16 bes16 des'16 es'16~} \tuplet 6/4 {es'16 e'16 ges'16 aes'8 es'16~} \tuplet 6/4 {es'16 des'16 bes8 d'16 es'16~} 
      | es'8 des'16 es'16 \tuplet 6/4 {d'16 des'16 bes8 aes16 ges16} aes8 es8 bes8 a8 
      | aes4~ \tuplet 3/2 {aes8 f8 des8} \tuplet 3/2 {c8 e8 aes8} bes16 c'16 bes16 f16~ 
      | \tuplet 6/4 {f16 aes16 bes16 f16 aes8~} aes8 es8~ es16 d16 f16 aes16~ aes16 bes16 b16 a16 
      | bes8 es'8~ es'8. bes16 d'8 ges'16 bes'16~ \tuplet 6/4 {bes'16 g'16 ges'16 d'8 bes16~} 
      | \tuplet 7/8 {bes32 des'16. ges'16 bes'32~} \tuplet 6/4 {bes'16 ges'16 g'16 ges'16 des'16 bes16} \tuplet 3/2 {ges8 c'8 bes8~} \tuplet 5/4 {bes16 ges'16 c'16 bes16 ges16} 
      | e4.^\markup{\left-align \small vib} bes16 f16~ \tuplet 6/4 {f16 ges8 des'8 es'16~} es'16 g16. des'16 es'32~ 
      | es'16 aes8 des16~ des16 f16\glissando  ges8 f2~^\markup{\left-align \small vib} 
      \bar "||" f4. r8 r2\bar  ".."
    }
    >>
>>    
}
