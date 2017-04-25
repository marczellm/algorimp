\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Harvard Blues"
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
      | s4 r2. 
      | des1:7 | ges2:7 g2:dim | des2 des2:7 | bes2:min7 des2:7 | ges1:7 | s2 g2:dim | des1:7 | s2 a2:dim 
      | aes1:7 | ges1:7 | des1:7|
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
     
      \bar "||" \mark \default r2 r8. aes16~ aes8 bes8~ 
      \bar "||" \mark \default bes4. aes16 ges16 \tuplet 3/2 {f8 es8 des8} b,4~ 
      | \tuplet 3/2 {b,8 bes,8 des8} \tuplet 3/2 {es8 ges8 bes8} e4. bes16 a16 
      | aes8 des16 f16~ f4. aes8 des'8 es'16 f'16 
      | b4.^\markup{\left-align \small vib} aes8 \tuplet 3/2 {a4 d8~} d4 
      | \tuplet 3/2 {des4 bes8~^\markup{\left-align \small vib}} bes4~ \tuplet 6/4 {bes4 es16 ges16~} ges8 des8 
      | \tuplet 3/2 {es8 ges8 des8} es4 \tuplet 3/2 {g8 des8 e8~} \tuplet 6/4 {e8. g8 des16~} 
      | des16 es16 e16 f16 \tuplet 3/2 {aes8 des8 f8~} f4 r4 
      | r8 ges8 \tuplet 3/2 {aes4 des'8~} des'16 ges16 g8 des'8 ges8~^\markup{\left-align \small vib} 
      | ges4. d8 f16 es16 bes4.~^\markup{\left-align \small vib} 
      | bes8 d8 \tuplet 3/2 {es4 des8} \tuplet 3/2 {d8 a4~^\markup{\left-align \small vib}} a4~ 
      | a8 des4 f8 \tuplet 3/2 {ges8 des8 ges8} \tuplet 3/2 {g8 des8 ges8\glissando } 
      | aes2.^\markup{\left-align \small vib} r4\bar  ".."
    }
    >>
>>    
}
