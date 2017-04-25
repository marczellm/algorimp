\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Serene"
  composer = "Eric Dolphy"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | es1:maj 
      | es1:maj | aes1:11+.9 | des1:7 | es1:7 | aes1:7 | d1:13-.9+11+ | es1:maj | des2:min7 ges2:7 
      | f1:min5-7 | bes2:13-.9+11+ b4:min7 e4:7 | aes1:11+.9 | s1 | es1:maj | aes1:11+.9 | des1:7 | es1:7 
      | aes1:7 | d1:13-.9+11+ | es1:maj | des2:min7 ges2:7 | f1:min5-7 | bes2:13-.9+11+ b4:min7 e4:7 | aes1:11+.9 | s1 
      | es1:maj | aes1:11+.9 | des1:7 | es1:7 | aes1:7 | d1:13-.9+11+ | es1:maj | des2:min7 ges2:7 
      | f4:min5-7 r2. | bes2:13-.9+11+ b4:min7 e4:7 | aes1:11+.9|
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


      \tempo 4 = 75
      \set Score.currentBarNumber = #0
     
      | r2. \tuplet 6/4 {r4 r16 d'16} 
      \bar "||" \mark \default f'8 f'8 f'8 r8 r8. d'16 f'8 f'8~ 
      | f'8 d'16 f'16 ges'8 aes8~ \tuplet 6/4 {aes8. ges'16 d'16 aes16} ges4 
      | \tuplet 10/8 {r8 f32 des16 es32 f32 g32} \tuplet 6/4 {des'16 es'16 g'16 b'8 es''16~} \tuplet 10/8 {es''16. b'8 g'16 es'32} des'16 g16 es16 b,16 
      | r4 \tuplet 10/8 {r16. g32 aes32 bes32 d'32 f'32 d'32 es'32} f'32 g'32 a'32 bes'32 a'32 g'32 f'32 d'32 es'32 e'32 d'32 des'32 e'32 g'32 bes'32 g'32~ 
      | g'16 aes'16 ges'16 es'16 r4 \tuplet 6/4 {r8 es'16 f'16 ges'16 aes'16~} aes'4\bendAfter #-4  
      | a'32 bes'32 a'32 g'32 ges'32 a'32 ges'32 f'32~ \tuplet 12/8 {f'32 e'32 f'16 e'32 es'16 d'16 es'32 d'32 des'32} c'16 bes16 a16 ges16 r4 
      | \tuplet 6/4 {r8 f16 es16 d16 f16} \tuplet 10/8 {d32 es16 f32 g16 bes32 f32 g32 aes32} bes32 d'16 f'32 d'32 es'32 f'32 g'32 bes'8^\markup{\left-align \small vib} r8 
      | r4 e''32 es''32 d''32 des''32 c''32 b'32 cis''16 aes'32\glissando  a'32 fis'32 aes'32 fis'32 g'32 f'32 d'32 \tuplet 7/8 {es'32 e'32 d'32 cis'32 e'32 g'32 bes'32} 
      | \tuplet 10/8 {g'16 aes'32 c'32 es'16 g'32 f'32 es'32 f'32~} \tuplet 10/8 {f'32 es'32 d'32 c'16 bes32 aes32 g32 f32 es32} \tuplet 6/4 {c16 es16 c16 d16 f,8~} \tuplet 12/8 {f,4~ f,16 es32 des32} 
      | \tuplet 10/8 {bes,32 aes,32 c32 es32 c32 d32 c16 bes,32 a,32} g,16 aes,8.~ \tuplet 10/8 {aes,16\glissando  es32 f32 b32 es'32 f'32 g'32 aes'16~^\markup{\left-align \small vib}} aes'8 r8 
      | r4 bes'16 es''16 es''16 es''16 \tuplet 5/4 {es''16 d''16\glissando  es''16 des''16 c''16~} c''4\bendAfter #-4  
      | \tuplet 6/4 {es''16 f''16\glissando  a'16 aes'16 ges'8} r2. 
      \bar "||" \mark \default r8 fis''16\glissando  g''16~ g''8 ges''16\glissando  aes''16~ aes''16 f''16\glissando  g''16 a'16\bendAfter #-4  r4 
      | r4 f''2.~^\markup{\left-align \small vib} 
      | \tuplet 9/8 {f''32 e''32 es''32 d''32 des''32 c''32 b'32 a'32 aes'32} \tuplet 12/8 {ges'16 a'16 fis'32 g'16 es'16 b32 g32 es32} \tuplet 6/4 {b,16 aes,16 des,4~^\markup{\left-align \small vib}} des,4~ 
      | \tuplet 9/8 {des,16. des,32 aes,32 bes,32 es32 c32 d32} \tuplet 9/8 {c32 bes,32 a,32 g,32 aes,32 bes,32 c32 es32 g32} \tuplet 11/8 {aes16 es'32 bes32 d'32 es'32 d'32 e'32 f'32 a'32 fis'32} \tuplet 7/8 {g'32 f'32 d'32 es'32 e'32 d'32 es'32} 
      | \tuplet 6/4 {f'16 g'16 bes'16 g'16 a'16 ges'16} r4 r32 aes'32 a'32 b'32 des''32 es''16.~^\markup{\left-align \small vib} es''8 r8 
      | r4 a'32 bes'32 e''32 cis''32 d''32 des''32 c''32 bes'32~ \tuplet 9/8 {bes'32 a'32 ges'32 a'32 fis'32 g'32 f'32 d'32 es'32} \tuplet 10/8 {f'16 es'32 d'32 c'16 bes32 aes32 g32 f32} 
      | \tuplet 11/8 {es16 d32 c32 f32 d32 es32 e32 f32 g32 aes32} \tuplet 12/8 {bes16 fis32 g32 aes32 g32 bes32 d'32 es'32 f'16 d'32} \tuplet 10/8 {es'32 f'32 g'32 aes'32 bes'32 c''32 d''8} r4 
      | \tuplet 10/8 {es''16 d''32 des''32 c''32 b'16 bes'32 a'32 fis'32} a'32 fis'32 g'32 f'32 d'32 es'32 e'32 d'32 cis'16 e'16 aes8 r4 
      | r16 f'16 g'16 aes'16~ aes'16 f'32 g'32 aes'32 g'32 f'32 es'32 d'32 c'32 bes32 aes32 g32 f32 es32 c32 es32 f,32 bes,32 f32 f,32 bes,32 es16~ 
      | \tuplet 9/8 {es16. es32 f,32 bes,32 es32 f,32 bes,32} es32 f,32 bes,32 es32 f,32 bes,32 es32 ges,32 b,32 e32 fis,32 b,32 e32 fis,32 b,32 e32 \tuplet 10/8 {fis,32 b,32 e16 fis,32 b,32 e32 fis,32 b,32 es32~} 
      | \tuplet 10/8 {es32 aes,32 bes,32 es16 aes,32 b,32 es32 ges,32 b,32~} b,32 es32 ges,32 b,32 es32 ges,32 b,32 es32 \tuplet 6/4 {es,16 bes,16 es4} \tuplet 12/8 {es32 g,32 c32 f32 b32 es'32 g'32 a'32 ges'8~} 
      | \tuplet 12/8 {ges'8.. d'32 es'32 f'32 a'32 g'32~} g'4~ g'16\bendAfter #+4  d'32 es'32 ges'32 aes'16. \tuplet 14/16 {g'8~ g'32. d'64 ges'64 a'64} 
      \bar "||" \mark \default \tuplet 6/4 {aes'16 f'16 g'4~^\markup{\left-align \small vib}} g'8 d'32 es'32\glissando  a'32 aes'32\bendAfter #+4  \tuplet 6/4 {a'16 aes'8. d'16 es'16} \tuplet 6/4 {ges'16 aes'16 aes'16 g'16 bes'16 d'16} 
      | \tuplet 6/4 {ges'16 aes'16 ges'4~^\markup{\left-align \small vib}} ges'16 d'32 es'32 g'32 bes'32 a'32 aes'32~ aes'32 c'32 es'32 aes'32 aes'32 ges'16. r4 
      | b'8 es''8 g''4.^\markup{\left-align \small vib} r8 r8 b'16 es''16 
      | \tuplet 14/16 {g''16.. f''64\glissando  g''16~ g''64 es''64~} \tuplet 6/4 {es''8. b'8 des''16~} \tuplet 6/4 {des''8. des''16 a'16 g'16} \tuplet 6/4 {es'16 c'16 e16 r8.} 
      | r4 r16. f'32 ges'32 bes'32 ges'32 f'32 es'16 f'8.~^\markup{\left-align \small vib} \tuplet 9/8 {f'16. f'32 ges'32 bes'32 ges'32 f'32 es'32} 
      | a'4~^\markup{\left-align \small vib} \tuplet 10/8 {a'8 f'32 ges'32 a'32 ges'32 f'32 d'32} \tuplet 10/8 {f'8. ges'32 a'32 bes'32 ges'32} f'4~^\markup{\left-align \small vib} 
      | f'16 d'32 es'32 f'32 es'32 d'32 c'32~ \tuplet 10/8 {c'32 bes32 aes32 g16 f32 es32 d32 f32 d32} \tuplet 11/8 {es16 f32 g32 aes16 bes32 f32 g32 aes32 bes32} \tuplet 10/8 {d'32 es'32 d'32 f'32 d'32 es'32 f'16 g'32 bes'32} 
      | g'16 e''8.^\markup{\left-align \small vib} \tuplet 6/4 {e''16 es''16 d''16 c''16 b'16\bendAfter #-4  a'16} \tuplet 10/8 {fis'32 a'32 fis'32 g'32 f'16 es'32 d'32 c'32 bes32~} \tuplet 10/8 {bes32 aes32 g32 f32 es32 c32 es32 c32 d32 bes,32} 
      | r4 \tuplet 6/4 {r8 g16 bes16 d'16 g'16~} \tuplet 3/2 {g'8 aes'8 b'8^\markup{\left-align \small vib}} b'4 
      | c''32 cis''32 d''32 es''32 e''32 f''32 e''32 es''32 d''32 c''32 b'32 a'32 bes'32 ges'32 a'32 fis'32 g'32 f'32 d'32 es'32 e'32 f'32 e'32 es'32 d'32. des'32 c'32 bes32 aes32. g64 f64 es64 c64 
      | es16 ges8. fis4~ \tuplet 10/8 {fis16. g32~ g8 cis''32 d''32} ges16 a16 aes16 ges16~ 
      | ges16 a16 aes16 ges16~ ges4 f4.\bendAfter #-4  r8\bar  ".."
    }
    >>
>>    
}
