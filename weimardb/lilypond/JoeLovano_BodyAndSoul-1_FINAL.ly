\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Joe Lovano"
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
      
      | es2:min7 b2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2 a2:7 
      | d2:maj e2:min7 | d2:/fis g4:min7 c4:7 | fis4:min7 b4:7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2.:maj a4:7 
      | d2:maj e2:min7 | d2:/fis g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7|
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


      \tempo 4 = 61
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 es16. es16 f32 es32 f32~ f32 es32 f16. f16 es32 \tuplet 3/2 {f8 bes,4} 
      | d16 es16 bes8~ bes8~ bes32 aes32 f32 d32 \tuplet 6/4 {es16 aes16 e16 ges16 bes16 c'16} d'32 e'32 ges'16. e'32 c'32 bes32~ 
      | bes16 es'16 c'8~ \tuplet 6/4 {c'8. aes16 f16 aes16~} aes8 r8 \tuplet 10/8 {r8 g32 aes16 bes32 g32 aes32} 
      | \tuplet 6/4 {bes16 c'16 des'16 es'16 f'16 c'16~} \tuplet 12/8 {c'8 bes32 es'16. e'16 g'32 b'32~} \tuplet 6/4 {b'16 ges'16 des'16 e'8 d'16} b32 ges32 a16 des'16 a32 ges32 
      | des16 b16 a16 bes16~ bes16 des'16 bes16 des'16~ des'4~ \tuplet 5/4 {des'16 bes16 ges16 f16 ges16} 
      | es8~ es32 f32 ges32 a32 \tuplet 9/8 {des'32 es'32 f'32 e'32 es'32 f'32 ges'32 g'32 a'32} \tuplet 12/8 {b'8~ b'32 a'32 g'32 ges'8 ges'32~} ges'32 e'32 d'32 des'32 b32 a32 g32 ges32~ 
      | ges8. bes'16 \tuplet 6/4 {aes'16 ges'16 f'16 f'16 e'16 es'16} \tuplet 6/4 {es'16 des'16 c'8 c'16 bes16} \tuplet 5/4 {aes16 aes16 f16 es16 aes16} 
      | es8 f8~ f4~ f32 f16 ges32 aes32 ges32 f32 es32 d16 ges16 d16 b,16 
      \bar "||" d16 b,16 bes,8~ bes,8. f16 es16 ges16 bes16 f'16 \tuplet 3/2 {f'8 es'8 es'8} 
      | bes8 bes8~ bes16 a16 bes16 bes'16 \tuplet 6/4 {f'16 es'16 e'8. b'16~} b'8. e'16 
      | \tuplet 3/2 {es'8 es'8 des'8} c''4 r4 \tuplet 6/4 {r16 bes'16 aes'16 f'16 es'16 aes'16} 
      | f'32 c'16 es'16 bes32 aes32 c'32 \tuplet 5/4 {aes16 f16 b16 g16 e16} \tuplet 6/4 {a16 e16 ges16\glissando  g16 a16 e'16} \tuplet 5/4 {c'16 e'16 b16 g16 ges'16~} 
      | \tuplet 6/4 {ges'16 des'16 f'8. es'16} ges'8 ges'16 aes'16~ \tuplet 6/4 {aes'16 bes'16 b'16 c''16 aes'8~} aes'16 c''16 es''16 c''16~ 
      | c''4~ \tuplet 10/8 {c''8 g'32 aes'32 a'32 f'32 ges'32 g'32} ges'16 f'16 e'32 es'32 d'32 c'32 \tuplet 6/4 {g16 bes16 es'16 c'16 g16 a16~} 
      | a32 f32 bes32.~ bes8 c'64 des'16 es'16 f'16 aes'16~ aes'16 ges'16 aes'16 bes'16 e'16\glissando  f'8. 
      | \tuplet 6/4 {aes16 es'16 des'4~} des'8 r8 \tuplet 14/16 {r8 d'32 e'64 e'64 ges'64 g'64} ges'16 a'16\glissando  c''16 des''16~ 
      \bar "||" \tuplet 5/4 {des''16 a'16 ges'16 b'16 a'16} \tuplet 6/4 {ges'16 e'16 a'16 ges'16 des'16 e'16} \tuplet 6/4 {d'16 des'16 b16 e'16 des'8~} \tuplet 5/4 {des'8 bes16 des'16 bes16} 
      | b16 des'16 a16 a16~ \tuplet 6/4 {a4~ a16 g16~} \tuplet 10/8 {g32 a32 bes32 bes32 d'32 a32 bes32 d'32 f'32 a'32~} \tuplet 10/8 {a'32 c''32 bes'8 des'32 d'32 f'32 a'32~} 
      | \tuplet 6/4 {a'16 ges'16 g'16 a'16 ges'8~} ges'4 \tuplet 6/4 {e'8 ges'8 ges'16 g'16~} g'16 b8 e'16~ 
      | \tuplet 3/2 {e'8 des'8 a8~} a8.. f32~ f16 a16 ges4 r8 
      | r4 \tuplet 5/4 {r16 d16 e16 f16 g16} \tuplet 6/4 {a16 a16 c'16 a16 b16 b16} e'16 f'16 b'8\glissando  
      | \tuplet 6/4 {des''16 d''16 g'8 g'8} a'32 b'32 d''32 b'32 g'32 a'32 b'32 e'32 \tuplet 9/8 {a'32 b'32 f'32 des'32 f'32 g'32 f'32 e'32 bes32} f32 a32 des'32 bes32 f32 e32 bes,32 e32 
      | bes,16 a,8.~ \tuplet 12/8 {a,16. a,32 b,32 des32 e32 g32 d32 es16 e32} \tuplet 10/8 {f32 ges32 g32 b32 aes32 a32 c'32 a32 bes32 b32} \tuplet 7/8 {c'32 e'32 aes'32 b'32 a'32 e'32 c'32~} 
      | \tuplet 12/8 {c'32 g'16~ g'4 g32~} g16 g'16 a'16 ges'16~ ges'16 f'16 bes'8~ \tuplet 6/4 {bes'4 ges'16 d'16} 
      \bar "||" \tuplet 6/4 {f'16 d'16 es'16 f'16 es'8} r4 \tuplet 6/4 {r8 d'16 es'16 f'16 es'16} \tuplet 6/4 {bes16 f16 e16 d16 es16 f16} 
      | \tuplet 6/4 {des16 d16 f16 es8 bes,16~} bes,8. bes16 \tuplet 6/4 {aes16 ges16 f16 e8.} \tuplet 6/4 {e16 ges16 c'8. bes16} 
      | f8 aes8~ aes4~ \tuplet 5/4 {aes8 g16 aes16 bes16} aes16 g16 aes16 aes16~ 
      | \tuplet 6/4 {aes16 f'8 es'8 es'16} des'8 r8 \tuplet 3/2 {r8 c'8 b8~} b8 des'8 
      | bes4~ \tuplet 12/8 {bes4 des''16 c''32 bes'32~} \tuplet 6/4 {bes'16 c''16\glissando  des''16 c''16 bes'16 ges'16~} \tuplet 6/4 {ges'8 ges'16 g'16\bendAfter #+4  aes'16 f'16~} 
      | f'8 f'32 e'32 f'32 ges'32 \tuplet 6/4 {aes'16 bes'16 des''16 es''16 c''8~} c''16 bes'32 a'16 des'32 es'32 g'32~ \tuplet 14/16 {g'32 ges'16. e'64 f'32 des'32 a64~} 
      | \tuplet 10/8 {a32 f16 c'16 a16 bes16 c'32~} \tuplet 9/8 {c'32 des'16 es'32 f'32 ges'32 aes'32 bes'32 c''32} es''16 des''8.~ \tuplet 5/4 {des''8 c''16 bes'16 aes'16~} 
      | \tuplet 10/8 {aes'32 f'16. es'16 des'16. f'32~} \tuplet 10/8 {f'4 ges'32 aes'32~} \tuplet 6/4 {aes'16 f'16 aes'16 d'16 aes'16 d'16~} \tuplet 5/4 {d'8 f'16 aes'16 d'16~} 
      \bar "||" \mark \default \tuplet 5/4 {d'16 f'16 d'16 f'16 es'16} f'16 es'16 des'16 f'16 \tuplet 10/8 {es'32 aes32 bes32 aes32 f'32 es'8 bes32~} bes8 r8 
      | \tuplet 10/8 {r8 r32 a'32 bes'32 a'32 es'32 f'32~} f'32 aes'8 g'32 ges'32 g'32 \tuplet 7/8 {b'32 es''32 e''32 des''32 b'32 g'32 es'32} \tuplet 6/4 {c'16 g'16 b'16 ges'8.} 
      | f'32 e'32 c'32 e'32 f'16. c'32 bes16 aes16 es'8 c'16 aes16 f16 es16~ \tuplet 13/16 {es64 f16. c32 bes,32. aes,64~} 
      | aes,4~ \tuplet 10/8 {aes,8 d32 es32 e32 g32 b32 aes32} \tuplet 10/8 {a32 e'32 bes32 b32 c'32 e'32 g'32 b'32 ges'16~} ges'8~ ges'32 f32 ges32 c'32 
      | \tuplet 9/8 {aes16 c'32 des'32 es'32 ges'32 aes'32 c''32 f'32~} f'16 f'16 ges'16 aes'16~ aes'8. bes'16 \tuplet 5/4 {c''16 des''16 d''16 es''16 des''16} 
      | b'16\bendAfter #+4  c''16 b'16\bendAfter #+4  c''16~ c''16 bes'16 f'16 b'16~ \tuplet 12/8 {b'32 a'32 b'32 e'16. a'32 g'32 es'32 c'32 es'32 e'32} \tuplet 6/4 {g'16 es'16 ges'8 e'16 f'16~} 
      | \tuplet 6/4 {f'8 c'16 es'16 des'16 es'16} \tuplet 3/2 {f'8 aes'8 ges'8~} ges'8. aes16\glissando  e'16 f'16 e'8 
      | \tuplet 6/4 {es'4 des'16 es'16} e'16 es'16 des'16 es'16~ \tuplet 10/8 {es'8~ es'32 des'16 es'32 f'32 ges'32~} ges'32 aes'32 des'32 d'32 f'32 f'32 d'32 bes32 
      \bar "||" ges32 es32 d'32 es'32 f'32 e'32 es'16~ es'32 bes32 des'16 bes32 des'32 bes32 ges32 \tuplet 6/4 {e16 f16 es4~} \tuplet 7/8 {es32 d32 es32 f32 ges32 bes32 des'32} 
      | \tuplet 14/16 {es'32 f'64 ges'32 aes'32 bes'64 des''32 aes'32 bes'64 a'64~} \tuplet 14/16 {a'64 f'64 aes'32 es'64 f'32 ges'64 aes'32 a'32 b'64 es''64~} \tuplet 12/8 {es''32 e''16 d''32~ d''8 b'32 a'32 g'32 ges'32~} \tuplet 10/8 {ges'16 b'32 a'32 g'32 e'32 es'32 des'16 b32} 
      | c'8 es'8~ es'16 c'16 es'16 aes'16~ aes'8. aes'16~ \tuplet 6/4 {aes'16 b'16\bendAfter #+4  c''16 d''16 es''16 es''16~} 
      | \tuplet 3/2 {es''8 c''8 f'8} \tuplet 6/4 {c''16 aes'8 aes'16 f'16 b'16} \tuplet 6/4 {a'4 b'16 des''16} d''16 ges'16 e'8~ 
      | e'8. es'16 \tuplet 3/2 {f'8 ges'8 aes'8} \tuplet 3/2 {bes'8 des''8 bes'8} \tuplet 10/8 {des''16. bes'16. ges'16. aes'32~} 
      | \tuplet 12/8 {aes'8 f'16. aes'8 f'32~} \tuplet 6/4 {f'16 e'16 f'16\bendAfter #+4  e'16 f'8} es'4~ \tuplet 12/8 {es'16 des'16 es'32 f'32 b'32 a'16. f'32 des'32} 
      | \tuplet 6/4 {es'16 des'16 g'16 f'16 ges'8} \tuplet 7/8 {f'16. c'32 es'32 d'32 des'32} a16 c'16 bes16 es'16~ es'16 c'16 bes16 aes16~ 
      | \tuplet 6/4 {aes8. aes16 f16 c16} \tuplet 3/2 {bes,8 aes,4~} aes,16. b'32 g'32 b'32 g'32 ges'32 \tuplet 5/4 {e'16 a'16 ges'16 des'16 e'16~} 
      \bar "||" e'16 d'32 des'32 b32 e'16. \tuplet 3/2 {des'8 a4~} \tuplet 10/8 {a8 a32 bes32 a32 c'32 des'16} d'32 es'32 e'16 d'32 e'32 f'32 ges'32 
      | \tuplet 3/2 {a'8 des''4~} des''8~ des''32 a,32 bes,32 d32 \tuplet 14/16 {f32 a64 bes32 g32 f32 e64 g32 bes64 d'64~} \tuplet 10/8 {d'32 aes32 a32 bes32 d'32 e'32 f'16 ges'32 g'32} 
      | \tuplet 12/8 {g'32 a'32 bes'32 b'32 des''16 a'32 b'16 des'32 e'32 b'32} a'16 g'32 ges'32 g'16 a'32 ges'32 \tuplet 6/4 {f'16 e'16 d'16 es'8.~} es'16 d'16 aes8 
      | b16 a8 f16 g16 ges4. des16 \tuplet 6/4 {e16 d8 e8 f16~} 
      | \tuplet 5/4 {f16 g16 a16 c'16 a16} \tuplet 5/4 {b8 e'16 f'16 a'16} \tuplet 3/2 {b'8 d''8 e''8~} e''4~ 
      | \tuplet 5/4 {e''16 b'16\glissando  des''16 d''16 b'16\glissando } des''16 d''16 b'16 bes'16~ bes'4~ \tuplet 5/4 {bes'8 a'16 bes'16 des''16} 
      | d''16 a'8. \tuplet 10/8 {f'16 e'32 g'16 d'32 f'16 d'32 e'32~} \tuplet 6/4 {e'16 aes16 e'8. d'16} \tuplet 11/8 {b16. d'16. b16 b32 bes32 b32~} 
      | b16 e16 a16 g16 ges4~ ges16. f32 ges32 bes32 e'32 bes32 b32 d'32 es'16 aes'32 d''32 bes'32 b'32 
      \bar "||" \tuplet 10/8 {d'32 es'32 b'32 bes'16 a'32 aes'32 g'32 f'32 ges'32} aes'16 bes'16 f'16 ges'16 es'4~ \tuplet 6/4 {es'8 d'16\bendAfter #+4  es'16 es'16 f'16} 
      | bes'8 bes'8 \tuplet 5/4 {aes'16 b'16 e'16 ges'16 c'16~} \tuplet 7/8 {c'16. e'32 c'32 aes32 e'32} c'32 aes32 e16 c32 ges16 e32 
      | c16 a,16 aes,8~ aes,4. aes16 bes16 aes16 g16 aes16 aes16 
      | \tuplet 3/2 {aes8 es'8 es'8~} es'16 es'8 es'16 c'16 des'16 c'8 bes8. a16 
      | bes16 des'16 bes8~ bes4~ bes16 des''16 c''16 bes'16 des''16 c''16 bes'16 ges'16 
      | \tuplet 6/4 {g'16 aes'8. e'16\bendAfter #+4  f'16~} \tuplet 10/8 {f'32 es'8. ges'32 g'32 a'32} \tuplet 10/8 {c''32 a'16. f'32\bendAfter #+4  ges'32 des'16 es'32 g'32~} g'32 ges'32 f'32 e'32 es'32 bes32 f32 aes32 
      | a32 c'16 a16 bes32 c'32 des'32 es'32 f'32 ges'32 aes'32 bes'32 c''32 es''16~ \tuplet 6/4 {es''16 des''8. des''16 es''16~} es''16 c''16 aes'16 des''16~ 
      | des''4~ des''16 c''16 aes'16 f'16 b'16 aes'16 f'16 es'16 d'4 
      \bar "||" b16 bes8.~ bes8 r8 r2\bar  ".."
    }
    >>
>>    
}
