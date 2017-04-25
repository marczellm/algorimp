\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Gutbucket Steepy"
  composer = "Branford Marsalis"
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
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des2:7 c2:7 | f2:min7 bes2:7 
      | es1:min7 | aes1:7 | des1:7 | es2:min7 aes2:7 | des1:7 | ges1:7 | des1:7 | s1 
      | ges1:7 | s1 | des2:7 c2:7 | f2:min7 bes2:7 | es1:min7 | aes1:7 | des1:7 | es2:min7 aes2:7 
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des1:7 | f2:min7 bes2:7 
      | es1:min7 | aes1:7 | des1:7 | es2:min7 aes2:7 | des1:7 | ges1:7 | des1:7 | s1 
      | ges1:7 | s1 | des2:7 c2:7 | f2:min7 bes2:7 | es1:min7 | aes1:7 | des1:7 | es2:min7 aes2:7 
      | des1:7 | ges1:7 | des1:7 | s1 | ges1:7 | s1 | des1:7 | f2:min7 bes2:7 
      | es1:min7 | aes1:7 | des1:7 | es2:min7 aes2:7 | des1:7|
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


      \tempo 4 = 70
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 \tuplet 6/4 {r4 bes'16\glissando  des''16~} des''2~ 
      \bar "||" \mark \default des''4~ \tuplet 6/4 {des''4 a'16 bes'16} ges'4^\markup{\left-align \small vib} \tuplet 6/4 {es'16\glissando  e'8. d'16\bendAfter #-4  des'16~} 
      | des'8 des''4 bes'8 f'16 ges'8. es'16 e'8 bes16 
      | \tuplet 3/2 {e'8 f'4} aes4 b4.^\markup{\left-align \small vib} r8 
      | r1 
      | \tuplet 3/2 {r8 bes8 des'8\glissando } \tuplet 3/2 {e'8 des'8 es'8~} \tuplet 3/2 {es'8 bes8 des'8} e'16\glissando  f'8.~ 
      | \tuplet 6/4 {f'8 bes8 des'16 es'16~} \tuplet 6/4 {es'16\glissando  e'8 f'8\glissando  ges'16\glissando } g'8\glissando  aes'8 \tuplet 6/4 {des''8 g'16\glissando  ges'16 e'16 des'16} 
      | e'16 f'16 aes4^\markup{\left-align \small vib} r8 r2 
      | \tuplet 3/2 {r8 aes8 aes8} a16 a16 bes16 bes16~ bes16 d'16 d'16 f'16 \tuplet 6/4 {f'8 aes'8 bes'16\glissando  b'16} 
      | bes'16 f'16 aes'16 ges'16~ \tuplet 6/4 {ges'16 ges'16\glissando  f'16 ges'8 ges'16} d'16 f'16 es'16 bes16 ges16 des'16 es'16 c'16 
      | aes16 ges16 r8 r4 r8 e8 \tuplet 3/2 {f8 aes8 bes8\glissando } 
      | \tuplet 3/2 {des'4 bes8~} \tuplet 5/4 {bes16 des'16 es'16 des'16 bes16~} \tuplet 12/8 {bes16 des'16 es'32 des'16 bes16. des'32 es'32} des'16 bes16 e'16\glissando  f'16\glissando  
      | \tuplet 11/8 {ges'8\glissando  g'8\glissando  aes'16 e'32~} \tuplet 7/8 {e'32\glissando  f'32 des'32 es'32 des'32 bes32 des'32~} des'8 des'8^\markup{\left-align \small vib} r4 
      \bar "||" \mark \default \tuplet 6/4 {r4 c''16\glissando  des''16~} des''2~ \tuplet 10/8 {des''8.. c''32 bes'32 aes'32} 
      | e'4 des'4^\markup{\left-align \small vib} \tuplet 3/2 {bes4 d'8\bendAfter #-4 } r4 
      | \tuplet 10/8 {r8.. des16 aes32~} aes8 bes8 bes4 des'8 bes8 
      | \tuplet 3/2 {e'8 f'8 ges'8~} ges'16 f'8 es'16 \tuplet 3/2 {des'4 b8~} b8 a8 
      | bes4 aes'4 aes'4 \tuplet 14/16 {aes'8~ aes'16~ aes'64 ges'64~} 
      | ges'4 \tuplet 3/2 {e'4 ges'8~} ges'16 g'16\glissando  aes'16 ges'16~ \tuplet 3/2 {ges'8 e'8 des'8} 
      | bes16 aes8.^\markup{\left-align \small vib} r2. 
      | r1 
      | r2 \tuplet 3/2 {r8 des''8 e''8~} e''16 des''16 e''16 des''16 
      | e''16 des''16 r8 \tuplet 6/4 {r4 r16 b'16~} \tuplet 6/4 {b'16 aes'16 b'8 aes'16 b'16~} b'32 aes'16 g'32 ges'16 e'32 des'32~ 
      | \tuplet 6/4 {des'16 ges'16 es'16\glissando  e'16 des'16 aes16} b16 des'16 des'8~^\markup{\left-align \small vib} \tuplet 6/4 {des'4 es'16\glissando  f'16} r4 
      | r2. r8 des'8 
      \bar "||" \mark \default e'16 f'8. \tuplet 3/2 {ges'4 bes8} es'16 f'8 f16~^\markup{\left-align \small vib} f8 r8 
      | r4 r16 e'16 ges'16 g'16 \tuplet 12/8 {e'4 aes16. bes32~^\markup{\left-align \small vib}} bes4~ 
      | bes8. aes16 bes16 des'16 e'32 f'16 ges'32~ \tuplet 6/4 {ges'8 aes16 e'16\glissando  f'16 aes16~} \tuplet 6/4 {aes16 bes16 bes16 b16 bes16 aes16} 
      | bes16 f16 aes8~ aes8~ aes32 aes32 f32 ges32 \tuplet 14/16 {a64 b32 e'64 a'32 ges'32 d'64 b32 e'64 des'64 es'64~} \tuplet 10/8 {es'32 g'32 g'32 f'32 d'32 bes32 g32 es'32 c'32 des'32} 
      | bes32 e32 aes32 g32 ges8 r4 \tuplet 6/4 {r8 ges8 a16\glissando  bes16} \tuplet 3/2 {des'8 es'8 des'8} 
      | e'2~^\markup{\left-align \small vib} e'8 es'16 des'32 e'32~ \tuplet 6/4 {e'16 es'16 des'16 e'8 es'16} 
      | des'16 es'16\glissando  f'16 es'16~ es'16 des'16 bes16 aes16~ \tuplet 5/4 {aes16 des16 e16 f16 aes16~^\markup{\left-align \small vib}} aes8 r8 
      | r2. r8. b'16\bendAfter #-4  
      | bes'4 r4 r8. b'16~ \tuplet 5/4 {b'16 b'16 c''16 b'16 b'16} 
      | r2 \tuplet 6/4 {r8. bes'16 b'16 aes'16~} \tuplet 6/4 {aes'16 bes'16 b'16 aes'8.} 
      | r4 \tuplet 10/8 {r8. aes'32 aes'16 bes'32\glissando } b'16 aes'32 bes'32\glissando  b'32 aes'16 bes'32 \tuplet 7/8 {b'16 aes'16 bes'32 b'32 b'32~} 
      | \tuplet 10/8 {b'8 bes'32 b'16. bes'32 b'32} aes'16 bes'32 b'32 aes'16 bes'32 b'32 \tuplet 6/4 {aes'8 bes'16 b'16 aes'16 b'16~} b'16 aes'16 bes'16 b'16 
      \bar "||" \mark \default aes'16 bes'16 b'8~ b'4~ b'8~ b'32 bes'32 aes'32 ges'32~ \tuplet 6/4 {ges'16 es'16 e'16 des'8.} 
      | r2. r8 bes8 
      | des'4 es'16 f'8. des'8. b16~^\markup{\left-align \small vib} b4~ 
      | b4 r2. 
      | r4 e''8 r8 r2 
      | des''8 r8 r4 \tuplet 3/2 {r8 bes'8 aes'8~} \tuplet 5/4 {aes'16 bes'16 aes'16 des'16 bes16~} 
      | bes16 es'16 f'16 aes'16~^\markup{\left-align \small vib} aes'4 r2 
      | r8 b'16 bes'16 \tuplet 5/4 {a'16 aes'16 ges'16 f'16 es'16} d'8 b16 bes16\bendAfter #+4  b8 bes16 aes16 
      | \tuplet 6/4 {ges16 es16 ges16 bes16 ges16 bes16} \tuplet 6/4 {des'16 bes16 des'16 ges'16 des'16 ges'16~} \tuplet 6/4 {ges'16 a'16\glissando  bes'16 ges'16 des'16 bes16~} bes16 des'16 ges'16 c'16 
      | r2. \tuplet 6/4 {r16 ges'16 f'16 ges'16 f'16 des'16} 
      | bes16 des'8.~^\markup{\left-align \small vib} des'16. ges'32 f'32 ges'32 f'32 des'32 bes16 des'8.^\markup{\left-align \small vib} r4 
      | r16 f'32 ges'32 d'32 f'32 es'32 bes32 \tuplet 9/8 {ges32 des'32 es'32 c'32 bes32 aes32 g32 ges32 es32} \tuplet 10/8 {f16 es32 e32 f32 ges32 aes32 bes32 des'32 c'32} f'16 aes'16 r8 
      \bar "||" \mark \default r8. bes'32 des''32~ des''4 bes'8. aes'16 \tuplet 3/2 {es'8\glissando  e'8 es'8~^\markup{\left-align \small vib}} 
      | es'4. des'8 \tuplet 3/2 {es'8 bes16 r8.} r8. ges16 
      | \tuplet 10/8 {bes4~ bes32 aes32~} \tuplet 14/16 {aes8~ aes32 ges32. bes64~} bes4 \tuplet 3/2 {des'4 bes8} 
      | \tuplet 3/2 {e'8 f'8 ges'8} f'8 es'8 des'8 c'8 \tuplet 3/2 {b8\glissando  bes8 ges8} 
      | a16 bes8.~ \tuplet 10/8 {bes16. des16. des16. es32~} \tuplet 6/4 {es16 es8 e8 e16~} e4 
      | r4 r8. des16 des16 es16 es16 e16 \tuplet 3/2 {e8 f8 f8} 
      | ges16 ges16 g16 bes16~ \tuplet 5/4 {bes16 a16\glissando  aes16 g16 aes16} f16 f16 aes16 bes16 \tuplet 3/2 {b8 ges8 b8} 
      | \tuplet 3/2 {b8 a8 bes8~^\markup{\left-align \small vib}} bes8 r8 r4 r8 f8 
      | \tuplet 3/2 {ges8 es8 ges8} \tuplet 3/2 {bes8 ges8 bes8} \tuplet 3/2 {des'8 bes8 des'8} e'16\glissando  f'16 des'16 f'16 
      | f'16\glissando  aes'8.~^\markup{\left-align \small vib} aes'2~ aes'8 ges'8 
      | \tuplet 6/4 {e'16\glissando  f'16 des'8 aes16 des'16~} des'4 b16 des'8. bes16 des'8. 
      | aes4 \tuplet 3/2 {b8 aes8 b8} aes4^\markup{\left-align \small vib} ges8 e8 
      \bar "||" \mark \default e16\glissando  f8.~^\markup{\left-align \small vib} f2 r4\bar  ".."
    }
    >>
>>    
}
