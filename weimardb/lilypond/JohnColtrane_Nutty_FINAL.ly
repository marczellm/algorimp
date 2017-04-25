\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Nutty"
  composer = "John Coltrane"
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
      | s4 r2. 
      | bes2:maj g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9-/b | c2:min7 f2:7 | bes1:maj | c2:min7 f2:7 
      | bes2:maj g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9-/b | c2:min7 f2:7 | bes1:maj | f2:min7 bes2:7 
      | es2:maj c2:9- | f2:min7 bes2:7 | es2:maj c2:7 | f2:min7 bes2:7 | es2:maj c2:9- | f2:min7 bes2:7 | es1:maj | c2:min7 f2:7 
      | bes2:maj g2:9- | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 | bes1:maj | s1 
      | s2 g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 
      | bes2:maj g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 | bes2:maj g2:7 | f2:min7 bes2:7 
      | es2:maj c2:9- | f2:min7 bes2:7 | es2:maj c2:7 | f2:min7 bes2:7 | es2:maj c2:9- | f2:min7 bes2:7 | es1:maj | c2:min7 f2:7 
      | bes2:maj g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 | bes1:maj | s1 
      | s2 g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 
      | bes2:maj g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 | bes2:maj g2:7 | f2:min7 bes2:7 
      | es2:maj c2:9- | f2:min7 bes2:7 | es2:maj c2:7 | f2:min7 bes2:7 | es2:maj c2:9- | f2:min7 bes2:7 | es1:maj | c2:min7 f2:7 
      | bes2:maj g2:9-/b | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:9- | c2:min7 f2:7 | bes1:maj | s1 
      | s1|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 \tuplet 5/4 {r8 cis'16 d'16 f'16} \tuplet 5/4 {d'16 es'16 f'16 g'16 a'16~} a'32 bes'8. a'32 
      \bar "||" \mark \default \tuplet 3/2 {g'8 f'4~} f'8. cis'16 d'4..^\markup{\left-align \small vib} f'16 
      | es'4 f'8. g'16~ g'4\glissando  a'8 f'8~^\markup{\left-align \small vib} 
      | f'4 r2. 
      | \tuplet 6/4 {c'16 d'16 es'16 f'16 g'16 d'16} \tuplet 6/4 {es'16 f'16 g'16 aes'16 b'16 des''16~} des''8~ des''32 b'32 a'32 aes'32~ \tuplet 7/8 {aes'32 ges'32 es'32 des'32 b32 aes32 ges32} 
      | f32 es32 d32 b,32 bes,8 r4 r8 g'16 ges'16 \tuplet 5/4 {f'8 es'16 d'16 c'16~} 
      | \tuplet 6/4 {c'16 b16 g8 a16 b16~} b16 d'16 es'16 f'16 g'16 bes'16 a'16 g'16 f'16 es'16 d'16 c'16 
      | bes16 f16 d'16 c'16~ \tuplet 6/4 {c'16 bes16 c'16 d'8 f'16} bes'4~^\markup{\left-align \small vib} \tuplet 6/4 {bes'8 g'8 es'16 c'16~} 
      | c'4 r2 \tuplet 3/2 {cis'8 d'8 g'8} 
      \bar "||" ges'16 f'16 es'16 d'16 c'16 bes16 c'16 d'16 f'16 a'16 c''16 a'16 \tuplet 6/4 {f'8 bes'16 b'16 aes'16 e'16~} 
      | e'32 c'32 es'32 ges'32 bes'32 a'16. \tuplet 3/2 {g'8 f'8 d'8} \tuplet 6/4 {es'16 f'16 g'8 es'16 des'16} c'16 f'16. des'32 a32 f32~ 
      | \tuplet 6/4 {f8 c'16 d'8 f16} \tuplet 3/2 {g4 a8~^\markup{\left-align \small vib}} a8 r8 r4 
      | r8 f8 gis16 a16 b16 des'16 e'32 aes'16 ges'16 f'16 es'32~ es'16 d'16 c'16 bes16 
      | r2. g'16 ges'16 f'16 es'16~ 
      | \tuplet 6/4 {es'16 d'16 c'8 b16 g16} c'16 d'16 es'16 f'16 r2 
      | r4 cis'16 d'16 f'16 d'16 \tuplet 6/4 {es'8 f'8 g'16 a'16~} \tuplet 6/4 {a'16 b'16 bes'16 a'16 g'16 ges'16~} 
      | ges'16 f'16 es'16 d'16 \tuplet 5/4 {c'8 bes16 c'16 d'16} g'16 bes'16 d''16 aes'16 c''16 bes'16 ges'16 d'16~ 
      \bar "||" d'16 fis'16 g'16 bes'16~^\markup{\left-align \small vib} bes'4. r8 r4 
      | r4 aes'8 g'8 \tuplet 5/4 {d'16 g'16 f'16 es'16 c'16~} c'16 aes16 f16 d'16 
      | c'16 bes16 aes16 es16 \tuplet 6/4 {f16 g16 aes8 bes16 c'16~} \tuplet 5/4 {c'16 d'16 es'16 f'16 g'16} es'4 
      | b16 aes16 aes'16 bes'16 g'16 aes'16 e'32 ges'16 a'32~ a'16 des''16 b'16 a'16 \tuplet 6/4 {aes'8 ges'16 e'8 b16} 
      | \tuplet 3/2 {bes8 aes'8 g'8} d'16 f'16 d'16 es'16 \tuplet 6/4 {f'16 g'16 aes'16 ges'16 ges'16 f'16} e'16 c'16 e'16 g'32 f'32~ 
      | \tuplet 6/4 {f'8 b'16 aes'16 e'16 c'16} \tuplet 5/4 {e'8 c'16 es'16 g'16~} \tuplet 5/4 {g'16 f'16 g'16 aes'16 f'16} \tuplet 3/2 {bes'8 f'8 d'8} 
      | bes16 g'8 a'16~ a'16 c'8 es'16 r2 
      | r4 cis'16 d'16 f'16 d'16 \tuplet 6/4 {es'8 f'16 g'16 a'16 d''16} des''8 a'16 aes'16 
      \bar "||" ges'16 es'16 cis'16 d'16~ d'8~ d'32 es'32 f'32 g'32 a'16 bes'8.~^\markup{\left-align \small vib} bes'8 r8 
      | r4 \tuplet 6/4 {r16 f16 g16 a16 b16 c'16} \tuplet 6/4 {d'16 es'16 f'16 g'16 a'16 bes'16} a'8. g'16 
      | f'4. e'16 f'16 g'16 a'16 r8 r4 
      | r4 \tuplet 5/4 {r16 des''16 b'16 aes'16 fis'16} g'16 f'16 des'16 e'16 \tuplet 3/2 {des'8 es'16 r8.} 
      | r4 \tuplet 6/4 {r16 d'16 es'16 f'16 fis'16 g'16} \tuplet 5/4 {ges'16 f'16 es'16 d'16 c'16} \tuplet 6/4 {b16 aes16 g4~} 
      | g8 g8 \tuplet 6/4 {a16 b16 d'16 c'8 d'16} \tuplet 6/4 {es'16 f'16 ges'16 a'16 aes'16 g'16} \tuplet 5/4 {f'16 e'16 es'16 d'16 c'16} 
      | bes32 a16 g32 f32 es32 des32 b,32 bes,8 r8 r2 
      | f'16 g'16 ges'16 f'16 es'16 d'16 c'16 b16 g16 c'16 d'16 es'16 c'16 f'16 g'16 aes'16 
      \bar "||" \mark \default \tuplet 6/4 {e'16 d'8. g16 aes16} c'8 g16 d'16 \tuplet 6/4 {e'16 aes'16 c''16 a'8 bes'16} \tuplet 5/4 {b'16 c''16 d''16 des''16 bes'16} 
      | g'16 b'16 c''16 a'16 \tuplet 6/4 {es'16 c'16 es'16 g'16 bes'16 a'16} g'16 fis'16 g'16 es'16 \tuplet 6/4 {c'8 f'16 des'16 a16 f16~} 
      | \tuplet 6/4 {f16 c'16 d'8. es'16} f'32 g'32 a'32 b'32 bes'32 b'32 a'16 r2 
      | r8 d''8~ \tuplet 5/4 {d''8\bendAfter #-4  ges'16 d'16 f'16} d'16 f'16 d'16 e'16 \tuplet 5/4 {c''16 aes'16 ges'16 des'16 f'16} 
      | des'16 e'16 des'16 es'16 r2 \tuplet 5/4 {r16 c''16 aes'16 b'16 aes'16~} 
      | \tuplet 6/4 {aes'16 e'16 cis'8 d'16 e'16} \tuplet 5/4 {bes'16 a'16 g'16 f'16 d'16} es'8 f'16 aes'16 \tuplet 3/2 {d''8 f''4} 
      | \tuplet 6/4 {des''16 bes'16 aes'16 ges'16 es'8~} es'8 cis'16 d'16 f'16 a'16 c''16 es''16 \tuplet 6/4 {b'16 aes'16 f'16 d''16 bes'16 g'16} 
      | e'4~ \tuplet 6/4 {e'16 c''16 des''16 c''16 b'16 a'16~} \tuplet 5/4 {a'16 aes'16 ges'16 f'16 d'16~} \tuplet 6/4 {d'16 es'16 f'16 es'16 d'16 c'16~} 
      \bar "||" c'16 bes16 c'16 d'16 f'16 bes'8.~ bes'4~ bes'16 a'16 c''16 bes'16 
      | \tuplet 7/8 {f'32 e'32 g'32 f'32 d'32 des'32 es'32} \tuplet 6/4 {d'16 bes16 a16 c'16 bes16 e16} \tuplet 6/4 {ges16 f16 d16 des16 es16 d16} r4 
      | r16. cis32 d32 f32 g32 aes32 bes16 c'32 cis'16 d'32 f'32 g'32 \tuplet 6/4 {fis'8 es'16 d'16 f'16 g'16} \tuplet 5/4 {gis'16 c''16 a'16 b'16 gis'16~} 
      | gis'32 e'32 des'16 e'16 aes'32 b'32 \tuplet 5/4 {a'16 aes'16 aes'16 ges'16 des'16~} des'16 f'16 des'16 e'16 \tuplet 6/4 {des'16 es'8 ges'16 f'16 es'16} 
      | \tuplet 7/8 {cis'16 d'16 es'32 f'32 g'32} a'16 bes'16 r8 r2 
      | \tuplet 3/2 {g'8 ges'8 f'8} \tuplet 6/4 {es'16 d'16 c'8 b16 aes16~} \tuplet 5/4 {aes16 g16 a16 b16 bes16} \tuplet 6/4 {des'16 c'16 es'8 d'16 c'16~} 
      | \tuplet 6/4 {c'16 bes16 f8 d'16 c'16~} \tuplet 5/4 {c'16 bes16 c'16 d'16 f'16} gis'16 a'16 e'16 f'16 \tuplet 3/2 {cis'8 d'8 g'8} 
      | gis'8 r8 r4 \tuplet 3/2 {a'8\glissando  des''4} \tuplet 6/4 {b'8 aes'8 ges'16 e'16~} 
      \bar "||" \tuplet 6/4 {e'16 b16 aes16 g8 bes16} \tuplet 6/4 {c'16 d'16 f'16 d'16 f'16 g'16} a'16 es''16 r8 r4 
      | r4 r8 aes'16 bes'16~ bes'16 b'16\glissando  c''4 d''8 
      | bes'4. g'16 aes'16 f'16 g'16 es'16 d'16 \tuplet 3/2 {c'8 es'8 c'8~} 
      | \tuplet 6/4 {c'4~ c'16 bes16} \tuplet 6/4 {des'16 e'16 g'16 d'8 ges'16} \tuplet 6/4 {a'16 b'16 cis''16 d''16 des''16 b'16} a'16 aes'16 e'16 b16~ 
      | \tuplet 6/4 {b16 aes16 g16 bes16 c'16 d'16} \tuplet 6/4 {f'8 d'16 es'16 g'16 bes'16} es''8. bes'16 c''16 bes'16 g'16 e'16 
      | c'4 r8 c'32 d'32 e'32 g'32 \tuplet 5/4 {f'8 aes'16 g'16 f'16} \tuplet 3/2 {bes'8 ges'8 d'8} 
      | \tuplet 6/4 {g'8 es'16 f'16 ges'16 aes'16} ges'16 a'16 c''16 bes'16~ bes'4 \tuplet 6/4 {g'16 aes'16 g'16 e'16 bes16 des'16} 
      | \tuplet 7/8 {f'32 aes'32 g'32 ges'32 f'32 e'32 es'32} \tuplet 6/4 {d'16 c'16 b16 a16 g16 ges16~} \tuplet 5/4 {ges16 es16 des16 c16 b,16} r4 
      \bar "||" \tuplet 12/8 {r8. a,16. b,32 des32 es32~} es32 g32 gis32 a32 bes32 c'32 d'32 es'32 \tuplet 6/4 {f'16 g'16 a'16 bes'8.~} \tuplet 6/4 {bes'8 a'16 b'16 bes'16 f'16} 
      | \tuplet 6/4 {e'16 g'16 f'16 d'16 des'16 es'16} \tuplet 5/4 {d'16 bes16 a16 c'16 bes16} r4 \tuplet 5/4 {r8 bes16 g16 a16} 
      | \tuplet 6/4 {bes16 c'16 cis'16 d'16 f'8} d'16 es'32 f'16 es'32 d'32 c'32~ c'16 bes16 c'16 d'16 f'16 bes'16 r8 
      | r4 r8 des''16 b'16 a'16 aes'16 ges'16 f'16~ f'16 e'16 es'8~ 
      | es'16 des'16 b16 a16~ \tuplet 6/4 {a16 aes16 ges8 f16 es16} d8 f16 a16~ a16 es'16 d'16 b16 
      | \tuplet 6/4 {g8 c'16 d'16 es'16 f'16~} \tuplet 6/4 {f'16 g'16 bes'8 a'16 g'16~} \tuplet 6/4 {g'16 ges'16 a'16 cis''16 d''16 des''16} b'16 a'16 aes'16 ges'16 
      | f'16 es'16 d'16 c'16 bes16 f16 g16 a16 bes8 r8 r4 
      | a,16 des16 f16 d16 ges8 a8 r4 \tuplet 6/4 {r4 a16 fis16~} 
      \bar "||" \mark \default \tuplet 6/4 {fis16 g8 a16 bes16 c'16~} c'16 cis'16 d'16 f'16 \tuplet 5/4 {es'16 d'16 c'16 b16 a16~} \tuplet 6/4 {a16 g8 a16 b16 g16} 
      | \tuplet 3/2 {c'8 d'8 es'8} \tuplet 5/4 {f'16 g'16 bes'16 a'16 a'16} \tuplet 5/4 {aes'16 ges'16 d'16 es'16 ges'16} aes'16 des''8.~ 
      | des''16 a'16 ges'16 es'16 cis'16 d'8 es'32 a'32 \tuplet 3/2 {c''8 a'16 r8.} r8. cis'16 
      | \tuplet 3/2 {d'8 f'4~} \tuplet 6/4 {f'16 es'8 fis'8 g'16} aes'16 des''8 a'16 ges'16 es'8. 
      | \tuplet 6/4 {c''16 des''16 c''16 a'16 f'8} \tuplet 6/4 {d'4 f'16 g'16} \tuplet 6/4 {a'16 c''16 a'8 b'16 es''16~} \tuplet 5/4 {es''8 b'16 aes'16 e'16} 
      | des'4 cis'16 d'16 f'8 d'16 es'16 f'8 bes'32 d''32 c''32 g'32 es'16 f'32 a'32 
      | c''16 bes'16 a'8 g'4 r4 bes'16 b'16 aes'16 e'16~ 
      | \tuplet 6/4 {e'16 des'16 c'16 d'16 e'16 g'16} \tuplet 5/4 {bes'16 a'16 g'16 f'16 e'16} \tuplet 5/4 {es'8 f'16 g'16 ges'16} f'16 es'16 d'16 c'16~ 
      \bar "||" c'32 bes16 f16 g32 aes32 bes32~ \tuplet 7/8 {bes32 c'32 d'32 es'32 f'32 g'32 a'32} bes'2 
      | \tuplet 6/4 {des''8 bes'16 aes'16 ges'16 es'16} des'16 es'16 f'8 r4 \tuplet 5/4 {r8. f'16 es'16} 
      | \tuplet 3/2 {d'8 es'8 f'8} \tuplet 6/4 {g'16 a'8 bes'16 c''16 des''16~} des''4 bes'32 b'32 gis'32 fis'32 es'16 b32 gis32 
      | gis'16 c''8 a'16 \tuplet 6/4 {g'16 f'16 d'4} \tuplet 5/4 {bes'16 b'8. aes'16~} \tuplet 6/4 {aes'16 ges'16 es'8 des'16 b16} 
      | f8 es'16 d'16 c'16 bes16 c'16 d'16 f'16 aes'16 r8 r4 
      | r4 \tuplet 6/4 {g'8 e'8 d'16 c'16~} c'16 b16 des'16 es'16 ges'16 f'16 e'32 es'16 d'32 
      | \tuplet 3/2 {c'8 bes8 f8} \tuplet 6/4 {fis'16 g'16 aes'16 fis'8 g'16~} \tuplet 6/4 {g'16 f'16 g'16 ges'16 f'16 es'16} \tuplet 6/4 {d'8 gis'16 b'16 bes'16 f'16} 
      | a'16 bes'16 f'16 es'16 d'16 f'16 d'16 c'16 \tuplet 3/2 {bes8 c'8 d'8} \tuplet 6/4 {f'16 bes'16 ges'16 e'8 b16~} 
      \bar "||" \tuplet 6/4 {b16 g'4 bes16} c'8 d'16 es'16~^\markup{\left-align \small vib} es'4 r4 
      | r4 f'8 aes'8 es''16 es''16 g''16 aes''16 \tuplet 6/4 {g''8 es''16 c''16 aes'16 g'16} 
      | \tuplet 7/8 {f'32 e'16 f'32 bes'32 cis''32 d''32~} \tuplet 6/4 {d''16 c''16 bes'8 g'16 aes'16} b'16 aes'16 g'16 es'16~ \tuplet 6/4 {es'16 g16 cis'16\glissando  d'8.} 
      | r4 r8. des''16 bes'16 ges'16 bes'16 ges'16 a'16 b'16 aes'16 e'16 
      | b16 g16 c'16 d'16~ d'8 es'16 f'16 g'16 es'16 d'16 c'16 \tuplet 6/4 {b16 bes8 a16 aes16 g16~} 
      | \tuplet 6/4 {g16 f8 aes16 c'16 es'16} g'16 bes'16 r8 \tuplet 7/8 {r8 aes'32 ges'32 a32} \tuplet 6/4 {des'16 es'16 ges'16 aes'16 des''8~} 
      | \tuplet 6/4 {des''4 g16 aes16} bes32 c'32 d'32 es'32 f'32 d'32 es'16 g'16 bes'16 es''8~ \tuplet 6/4 {es''4 c16 d16} 
      | \tuplet 5/4 {f16 es16 f16 g16 a16} \tuplet 6/4 {bes16 des'16 es'16 f'8 g'16} \tuplet 6/4 {a'16 b'16 des''8. b'16} a'16 aes'8 ges'16~ 
      \bar "||" \tuplet 6/4 {ges'16 f'4 a16} cis'16 d'8 f'16 bes'8 r8 r4 
      | r4 \tuplet 5/4 {r16 a,16 d16 g16 des16} \tuplet 6/4 {es16 f16 aes16 bes16 f'16 bes16} \tuplet 6/4 {des'16 es'16 ges'16 f'8.~} 
      | \tuplet 6/4 {f'4 e'16 f'16} \tuplet 7/8 {aes'32 bes32 c'32 cis'32 d'32 g'32 ges'32} \tuplet 6/4 {f'16 es'16 d'16 f'8 g'16} \tuplet 6/4 {a'16 c''16 b'16 a'16 b'16 gis'16~} 
      | \tuplet 6/4 {gis'16 e'16 des'8 e'16 ges'16} \tuplet 6/4 {bes'16 a'16 g'8 ges'16 e'16} es'16 ges'16 a'16 ges'16~ \tuplet 6/4 {ges'16 c''16 des''16 c''16 b'16 a'16~} 
      | \tuplet 5/4 {a'16 aes'16 ges'16 f'16 es'16} \tuplet 6/4 {d'8 es'16 f'16 g'16 a'16} c''16 a'16 b'16 es''16~ es''16. b'32 aes'16 e'32 es'32~ 
      | es'8 des'8 \tuplet 6/4 {d''16 bes'16 g'16 es'16 d'8} des'4 \tuplet 6/4 {des''16 a'16 aes'16 ges'16 es'16 des'16~} 
      | \tuplet 6/4 {des'16 b16 a16 aes16 ges16 f16} r4 r8 g'16 ges'16~ \tuplet 6/4 {ges'16 f'16 es'8 d'16 c'16~} 
      | \tuplet 6/4 {c'16 b16 g8 fis16 g16~} \tuplet 6/4 {g16 d'16 c'8 bes16 g16~} g16 b16 d'16 es'16 c'16 f'16 des'16 a16 
      \bar "||" \mark \default \tuplet 3/2 {f8 bes4~} \tuplet 6/4 {bes4 a16 bes16} c'16 d'8. r4\bar  ".."
    }
    >>
>>    
}
