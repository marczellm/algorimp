\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Ask Me Now"
  composer = "David Murray"
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
      | r1 
      | es1:min7 | aes1 | des1:maj | f2:min7 e2:min7 | es1:min7 | aes1:7 | des1:maj | s1 
      | bes1:min7 | es1:7 | s1 | bes1:min7 | es1:min7 | aes1:7 | des1:min7 | ges1:7 
      | g2:min7 c2:7 | fis2:min7 b2:7 | f2:min7 bes2:7 | e2:min7 a2:7 | es1:min7 | aes1:7 | b1:13-.9+11+ | bes1:7 
      | es1:7 | d1:7 | des1:maj | es1:7 | es1:min7 | aes1:7 | des1|
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


      \tempo 4 = 131
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. es16~ es8 f8 
      \bar "||" \mark \default ges8 aes4 bes8 c'8 des'8 es'4 
      | \tuplet 6/4 {f'8. c'16 d'16 c'16} \tuplet 6/4 {bes8. es'8 f'16} \tuplet 6/4 {es'16 c'8 bes8 ges16} \tuplet 3/2 {g8 f8 c8} 
      | bes,8 es8 es8 r8 r4 \tuplet 3/2 {bes'8 c''8 aes'8} 
      | bes'8 es'16 f'16~ \tuplet 6/4 {f'16 des'8 es'8 bes16~} \tuplet 3/2 {bes8 c'8 f8} bes8 aes16 c16~^\markup{\left-align \small vib} 
      | c4~ \tuplet 6/4 {c4 es16 c16} bes,8 es8 bes8 aes8 
      | c'8 f'8 c'16 es'16 c'16 bes16 es'8 c''8~ c''16 bes'8 c''16~^\markup{\left-align \small vib} 
      | c''8. bes'16~ bes'32 f'16. c'16. bes32~^\markup{\left-align \small vib} bes8 r8 r4 
      | r2. r32 c''16 des''16 c''16 bes'32 
      | \tuplet 3/2 {aes'8 ges'8 f'8} \tuplet 6/4 {e'16 es'8 f'16 e'16 es'16} d'16 des'16 c'16 bes16~ bes16 aes16 f16 es32 ges32~ 
      | \tuplet 3/2 {ges8 es8 f8} es16 c16 bes,16 es16 ges8 aes16 bes16 g16 aes16 bes16 des'16 
      | es'16 f'16 des'16 c'16~ c'8 es'16 b'16~ \tuplet 6/4 {b'8 a'16 a'16 g'16 es'16} \tuplet 3/2 {aes8 a4~^\markup{\left-align \small vib}} 
      | a8 r8 r4 \tuplet 3/2 {r8 e'8 es'8} des'8 bes'8 
      | \tuplet 7/8 {des''16. bes'32 b'32 b'32 f'32} \tuplet 6/4 {des'8. aes'8 es'16~} es'16 des'16 aes16 es16 bes8 aes8 
      | aes4 r4 e''8 es''8 des''8 bes'8 
      | g'16 a'16 b'16 e'16~ \tuplet 6/4 {e'16 f'8 e'16 e'16 des'16~} \tuplet 6/4 {des'8 es'8. des'16~} \tuplet 3/2 {des'8 bes8 f8} 
      | \tuplet 3/2 {d8 c8 bes,8} es8 f8^\markup{\left-align \small vib} r4 \tuplet 6/4 {r8 g16 bes16 d'16 g'16} 
      \bar "||" bes'8 d''8 bes'4..^\markup{\left-align \small vib} des''16~ \tuplet 5/4 {des''8 b'16 des''16 b'16~} 
      | \tuplet 6/4 {b'8 a'16 b'16 a'16 ges'16} \tuplet 3/2 {e'8 b8 ges8} r4 \tuplet 6/4 {f16 f16 aes16 bes16 es'16 bes'16} 
      | es''16 d''16 c''16 bes'16 \tuplet 5/4 {aes'16 g'16 f'16 es'16 d'16} c'16 b8 a16 \tuplet 5/4 {b16 e16 aes16 a16 b16} 
      | \tuplet 6/4 {e'8. d'16 c'16 b16} a8 a8 r4 e32 f32 e32 d16 es32 f32 ges32 
      | bes8 aes8 es'8 des'8 r4 \tuplet 3/2 {c''8 aes'8 g'8~} 
      | \tuplet 3/2 {g'8 bes'8 ges'8} \tuplet 3/2 {f'8 e'8 es'8~} \tuplet 6/4 {es'16 f'16 des'16 es'16 c'16 bes16~} \tuplet 3/2 {bes8 es'8 des'8} 
      | aes8 es8 a,8 bes8 aes8 bes,4.~^\markup{\left-align \small vib} 
      | bes,8 d16 c32 aes,32 bes,8 c8 \tuplet 3/2 {des4 es8~} es16 f8 ges16 
      | f8 es8 \tuplet 3/2 {bes4 aes8~} aes8 a8 e8^\markup{\left-align \small vib} r8 
      | r4 e8 es4 es4 c8 
      | es8 f8 aes8 c'8~ c'16 c'8 a16~ a8 bes8~ 
      | bes16 des'8 f'16~ f'16 g'16 aes'8 \tuplet 3/2 {bes'4 c''8~} \tuplet 6/4 {c''8 des''8. c''16~} 
      | c''16 bes'8 ges'16 f'8 es'8 r4 es''16 b''8 es''16~ 
      | \tuplet 3/2 {es''8 des''8 bes'8~} bes'16 g'16 es'8 bes'8 aes'8 \tuplet 6/4 {f'8 e'8. aes'16~} 
      | \tuplet 3/2 {aes'8 e'8 des'8} c'8 es'16 es'16 des'16 aes8 es16 bes4^\markup{\left-align \small vib}\bar  ".."
    }
    >>
>>    
}
