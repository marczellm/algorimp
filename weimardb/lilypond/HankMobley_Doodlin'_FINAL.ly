\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Doodlin'"
  composer = "Hank Mobley"
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
      | aes1:7 
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des1:7 | s2 bes2:7 
      | es1:min7 | aes1:9 | des1:7 | aes1:7 | des1:7 | ges1:7 | des1:7 | s1 
      | ges1:7 | s1 | des1:7 | s2 bes2:7 | es2:min7 es2:9 | aes1:9 | des1:7 | aes1:7 
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des1:7 | s2 bes2:7 
      | es2:min7 es2:9 | aes1:9 | des1:7 | aes1:7 | des1:7|
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


      \tempo 4 = 121
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. aes16~ \tuplet 3/2 {aes8 des'8 f'8~} 
      \bar "||" \mark \default f'16 es'16 des'8~ des'8~ des'32 bes32 b32 es'32~ es'16 g'16 bes'16 a'16~ a'16 aes'8 g'16~ 
      | g'8 ges'8 es'4 e'4. des'16 f'16~ 
      | \tuplet 6/4 {f'8 ges'8. f'16~} \tuplet 5/4 {f'16 des'16 d'16 des'16 b16} es'4\glissando  b4 
      | r2. \tuplet 3/2 {r8 des'8 b8~} 
      | b16 bes8 des'16~ des'16 es'8 f'16~ f'16. aes'16 bes'32 aes'32 g'32~ g'16 ges'8 f'16~ 
      | f'8 e'4\glissando  es'8 d'16 des'16 a16 ges16~ ges16 aes16 ges16 f16 
      | \tuplet 6/4 {des16 es16 f4~} f8 r8 r2 
      | c''16. b'16 bes'16 a'32~ a'16 aes'16 ges'16 f'16 es'16 d'16 f'16 b16~ \tuplet 6/4 {b16 bes16 b16 ges'16 f'16 es'16~} 
      | es'16 d'16 es'16 f'16 d'16 es'16 bes16 ges16 bes4^\markup{\left-align \small vib} r4 
      | r8 es32 a32 d'32 g'32 \tuplet 3/2 {bes'8 e'4~} e'8.\glissando  bes'32 g'32 es'4^\markup{\left-align \small vib} 
      | r4 \tuplet 3/2 {es'8 c'8 des'8} \tuplet 6/4 {es'16 e'16 f'8 bes'8} a'16 aes'16 g'16 ges'16 
      | f'16 d'8.~ d'32 f'16 d'16 es'16 des'32~ \tuplet 6/4 {des'16 c'8 bes16 a16 bes16~} bes16 des'16 a16 ges16 
      \bar "||" \mark \default aes4. des'8~ \tuplet 6/4 {des'16 es'4 f'16~^\markup{\left-align \small vib}} f'4 
      | r4 r16 ges8 des'16~ des'8 es'8 e'4^\markup{\left-align \small vib} 
      | r2. aes8 des'8 
      | es'16 f'8 ges'16~ \tuplet 3/2 {ges'8 f'8 des'8} d'8 es'16 b16~ b8 des'16. b32~ 
      | b8 bes4^\markup{\left-align \small vib} r8 r2 
      | r8. des''16~ \tuplet 6/4 {des''16 b'8 aes'8 g'16~} \tuplet 3/2 {g'8 ges'8 e'8} \tuplet 3/2 {des'8 f'4~^\markup{\left-align \small vib}} 
      | f'4 r4 es'8 r8 r8 ges'8 
      | aes'16 ges'16 f'16 es'16 d'8 aes8 \tuplet 6/4 {b8 bes16 a8 f'16~} f'16 ges'16 d'16 f'16 
      | es'4..^\markup{\left-align \small vib} bes'16 f'16 es'16 d'8 \tuplet 6/4 {bes8 des'16 d'16 des'16 bes16} 
      | \tuplet 3/2 {c'4 f'8~^\markup{\left-align \small vib}} f'8 r8 r8. g'16~ g'16 aes'8 ges'16~ 
      | ges'8 f'8~ f'16\glissando  des'8 des'16~^\markup{\left-align \small vib} des'4 r4 
      | r1 
      \bar "||" \mark \default b'8\glissando  bes'8 \tuplet 3/2 {aes'4 b'8~} b'16 bes'16 aes'16 g'16~ g'16 b'16 bes'16 bes'16 
      | aes'16 g'8. \tuplet 6/4 {es'8 f'16 e'16 es'16 des'16~} \tuplet 7/8 {des'32 c'16. es'16 c'32~} \tuplet 5/4 {c'16 des'16 bes16 ges16 es16} 
      | e4 c'16 bes16 aes16 ges'16 e'8 c'16 es'16 \tuplet 3/2 {des'8 es'8 ges'8} 
      | aes'4 \tuplet 6/4 {ges'16 g'16 ges'16 f'8 des'16~} des'32 d'32 es'32~ es'8 c'32 \tuplet 3/2 {des'8 b8 aes8} 
      | bes8 r8 r8. des'16~ \tuplet 3/2 {des'8 des''8 b'8} aes'8 g'16 ges'16~ 
      | ges'16 e'8 des'16 aes8 ges4^\markup{\left-align \small vib} r8 r4 
      | r4 r8 des8 \tuplet 6/4 {e8. g16 bes16 e'16} \tuplet 3/2 {des'4 f'8~} 
      | f'16 aes'8 des''16~ \tuplet 3/2 {des''8 aes'8 g'8} ges'16 e'16 b16 aes16 \tuplet 3/2 {g8 e4~} 
      | e8. es16 aes16 des'16 aes'16 ges'16~ \tuplet 6/4 {ges'16 bes16 des'16 f'8 es'16~} es'8 r8 
      | r8 es'16 g'16 b'8 a'8~ \tuplet 3/2 {a'8 aes'8 ges'8} r4 
      | r4 \tuplet 5/4 {es'16 e'16 f'16 ges'16 g'16} aes'16 ges'16 f'16 es'16~ \tuplet 6/4 {es'16 d'16 b8 aes16 a16} 
      | bes16 a16 aes16 g16 ges16 f'16 es'16 des'16 r4 r8 aes8 
      \bar "||" \mark \default \tuplet 3/2 {ges8 f16 r8.} r2.\bar  ".."
    }
    >>
>>    
}
