\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues for Two"
  composer = "David Murray"
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
      
      | bes1:7 | es1:7 | bes1:7 | \time 5/4 s1 s4 | es1:7 | s1 | bes1:7 | s1 
      | c1:7 | f1:7 | bes1:7 | s1 | s1 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes2:7 g4:min7 c4:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7|
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


      \tempo 4 = 60
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 10/8 {r4 f32 g32~} \tuplet 6/4 {g16 bes16 c'16 c'16\bendAfter #+4  des'16 bes16} c'16 bes4..~ 
      | bes4~ \tuplet 15/16 {bes8~ bes32 f'64 g'32. bes'64~} \tuplet 6/4 {bes'8 c''16 des''16 c''16 bes'16} \tuplet 5/4 {aes'16 f'16 e'16 es'16 f'16} 
      | \tuplet 6/4 {cis'16 d'16 cis'16 d'8.} des'16 c'16 c'16 bes16~ bes8. f16 g8 f8~ 
      | \time 5/4 f4 r2. 
      | \tuplet 5/4 {r16 bes16 b16 aes16 bes16~} \tuplet 6/4 {bes16 bes8 aes16 es'16 e'16~} \tuplet 5/4 {e'16 des'16 es'16 des'16 bes16} \tuplet 6/4 {d'16 e'16 des'16 es'16 des'16 bes16} 
      | \tuplet 6/4 {e'8 des'16 es'16 des'16 bes16~} \tuplet 6/4 {bes16 b16 des'16 bes4.} r8 \tuplet 12/8 {r4 r32 bes32 bes32 bes32} 
      | \tuplet 6/4 {bes16 bes16 cis'16 d'16 f'16 g'16} \tuplet 3/2 {bes'8 bes'4~} bes'4. fis'16 g'16 
      | f'2 r4 \tuplet 6/4 {r8 f'16 aes'16 bes'16 b'16} 
      | \tuplet 11/8 {cis''16 d''32 es''16 bes'32 b'32 bes'32 b'32 bes'32 aes'32} bes'16 aes'32 es'32 f'32 e'32 f'32 es'32 es'8 des'16 bes16~ \tuplet 3/2 {bes8 aes8 f8~} 
      | f4 f16 e16 es4 r8 r8 cis8 
      | d4 r2. 
      | r1 
      \bar "||" \mark \default \tuplet 12/8 {r8. g16. bes16 c'32~} \tuplet 12/8 {c'16 des'16 bes16. c'16. d'32 e'32} \tuplet 6/4 {f'16 des'16 es'16 des'16 bes16 aes16} \tuplet 5/4 {bes16 aes16 f16 e16 d16} 
      | es8 es4 r8 r2 
      | \tuplet 6/4 {r16 ges'16 f'16\glissando  aes'8.~} aes'4~ \tuplet 6/4 {aes'8 d'16 e'16 es'16 des'16} es'16. f'32 cis'32 d'32 cis'32 d'32~ 
      | \tuplet 7/8 {d'32 c'16 a32 bes32 c'32 bes32} r2 \tuplet 7/8 {r32 es''32 bes'32 b'32 bes'32 b'32 aes'32} 
      | \tuplet 3/2 {bes'8 bes'8 bes'8} \tuplet 5/4 {aes'16 fis'16 g'16 bes'16 c'16~} c'16 es'16 es'8~ \tuplet 15/16 {es'8~ es'32 es'64 es'32. g'64} 
      | \tuplet 6/4 {fis'16 g'16 bes'16 c''16 b'16\glissando  des''16~} des''32 bes'32 f'32 e'32 es'32 es'16.~ \tuplet 7/8 {es'16 des'32 es'32 des'32 bes32 aes32} bes4~ 
      | \tuplet 6/4 {bes16 cis'16 d'16 f'16 g'16 f'16~} f'2~ \tuplet 6/4 {f'8. fis'16 g'16 f'16} 
      | es'16 f'16 d'4. r2 
      | r8 bes8 \tuplet 6/4 {es'16\glissando  e'16 des'16 es'16 des'16 aes16~} aes16 bes16 aes8 r4 
      | fis32 g16 bes32 c'16 c'32\glissando  des'32 bes16 aes16 f16 e16 es4. f16 cis16 
      | d4 r2. 
      | r1 
      \bar "||" \mark \default r8. c''16 \tuplet 6/4 {bes'16 c''16 bes'16 aes'16 f'16 aes'16} \tuplet 10/8 {f'16 es'32 f'32 es'32 c'32 es'16 des'32 es'32} des'32 bes32 c'32 d'32 des'32 bes32 aes32 f32 
      | \tuplet 5/4 {e16 f16 cis16 d16 bes,16} aes,16 es16 c'16 g16~ g4~ \tuplet 6/4 {g16 aes,16 d16 f16 c'16 g16} 
      | \tuplet 7/8 {g32 aes32 c'32 es'32 f'32 fis'32 g'32} \tuplet 6/4 {f'16 es'16 d'16 f'16 c''16 g'16} bes'16 d''16 es''16 d''16~ \tuplet 7/8 {d''16 g'32 g'32 aes'32 bes'32 b'32} 
      | \tuplet 6/4 {d''16 cis''16\glissando  d''4~} \tuplet 12/8 {d''16 c''32 b'32 bes'32 aes'32 g'32 f'32 e'32 es'32 d'32 des'32} \tuplet 5/4 {bes16 aes16 bes16 a16 f16} \tuplet 6/4 {aes16 bes16 aes8 c'16 des'16} 
      | \tuplet 3/2 {es'8 f'8 f'8~} \tuplet 9/8 {f'16. es'32 e'32 es'32 des'32 c'32 es'32~} \tuplet 7/8 {es'32 des'32 bes16 c'32 des'32 bes32~} bes4~ 
      | \tuplet 6/4 {bes8 e''16 f''16 ges''16 aes''16~} \tuplet 10/8 {aes''32 des''32 es''32 e''32 f''32 e''32 es''32 des''32 es''32 b'32} \tuplet 6/4 {des''16 bes'16 a'16 aes'8.~} aes'16. cis'32 d'32 f'32 g'32 bes'32 
      | \tuplet 6/4 {g'16 bes'16 d''16 g'16 c''16 c''16} bes'32 aes'32 es'32 c'32 es'32 g'32 f'16 es'4 des'32 es'32 g'32 b'32 es''8~ 
      | es''8 d''8~ d''16 d''32 es''32 e''32 f''16 g'32 \tuplet 14/16 {es''32. es'64 fis'64 bes'64 b'16.. g'64} \tuplet 11/8 {gis'32 b'32 d''32 c''32 b'32 aes'32 g'32 fis'32 e'32 es'32 d'32} 
      | \tuplet 12/8 {c'16. d'16. f'16. d'32 es'32 d'32~} \tuplet 5/4 {d'16 c'16 d'16 bes16 g16} \tuplet 6/4 {aes16 bes16 g16 bes16 es16 f16} fis16 g16 d16 f16~ 
      | \tuplet 6/4 {f4~ f16 f16~} \tuplet 6/4 {f16 aes16 bes16 c'16 es'16 f'16~} f'32 fis'32 g'32 es'32 c'16 g'32 d'32~ \tuplet 6/4 {d'16 f'16 des'16 f'16 c'16 e'16} 
      | \tuplet 14/16 {bes32 es'32. bes64 d'32 bes32 des'32. bes64} \tuplet 7/8 {b16 bes32 f32 a32 ges32 aes32} \tuplet 9/8 {g16. f32 ges32 es32 f32 es32 e32~} \tuplet 12/8 {e16. d16 des8 c32 d32 es32} 
      | \tuplet 13/16 {f64 d64 es64 e64 fis64 g64 f64 aes32 bes64 c'64 des'64 es'64~} es'32 f'32 des'32 c'32 bes32 es'32 d'32 aes'32 \tuplet 14/16 {bes'32 c''32. aes'32 b'32. f'64 e'32 es'64~} es'16 g'16 f'8~ 
      \bar "||" \mark \default \tuplet 6/4 {f'8. f'16 aes'16 bes'16~} bes'8 bes'8~ bes'2~ 
      | \tuplet 12/8 {bes'16. f'16 aes'16. bes'16 bes'32 b'32~} b'32 es''32 bes'32 b'32 bes'32 b'32 aes'32 bes'32 \tuplet 10/8 {aes'16. es'32\glissando  f'32 es'16 des'32 es'32 des'32} r4 
      | \tuplet 6/4 {r16 aes,16 bes16 b16 c'8~} c'8 aes,16 aes16~ aes32 bes32 aes16 bes16 c'32 des'32 \tuplet 6/4 {bes16 es'16 b16 e'16 c'16 f'16} 
      | \tuplet 6/4 {c'16 aes'16 c'16 bes'16 g'16 b'16} \tuplet 10/8 {g'32 des''32 c''32 des''32 f''32 des''32 es''16 e''16} fis''32 g''32 f''32 e''32 g''32 aes''32 g''32 bes''32 \tuplet 6/4 {des'''16 c'''16 es'''16 es'''16 e'''16 f'''16} 
      | e'''16 f'''8.~ f'''2~ \tuplet 9/8 {f'''8 d'''32 es'''32 c'''16 e'''32} 
      | c'''16 des'''8.~ \tuplet 18/16 {des'''16..\bendAfter #-4  d''32 e''64 f''16 e''64 d''64 c''64 bes'64} \tuplet 10/8 {c''32 cis''32 d''32 es''32 c''32 b'32 c''32 des''16 es'32} \tuplet 6/4 {gis'16 a'16 bes'16 g'16 ges'16 aes'16~} 
      | \tuplet 6/4 {aes'8 ges'16 es'16 des'16 bes16~} bes8~ bes32 c''32 bes'32 g'32 \tuplet 11/8 {f'32 bes'16 g'32 f'32 es'16 bes'32 g'32 f'32 es'32~} es'32 f'32 es'32 des'32 bes32 cis'32 d'32 f'32 
      | \tuplet 12/8 {d'32 es'32 e'32 d'32 des'32 c'16 c'32 es'32 c'32 bes32 g32} \tuplet 6/4 {f16 bes16 aes16 f8.} c16 es8.~ \tuplet 6/4 {es16 c16 es16 f16 g16 bes16} 
      | \tuplet 5/4 {c'16 aes16 d'16 es'16 f16~} \tuplet 6/4 {f4~ f16 f16~} \tuplet 6/4 {f16 e16 es16 bes16 g16 fis16~} \tuplet 7/8 {fis16. g32 bes32 c'32 des'32} 
      | es'16 e'16\bendAfter #+4  f'16 es'16 bes'16 c''16 g'8~ \tuplet 7/8 {g'32 aes'32 b'32 b'32 es''32 b'32 g'32} \tuplet 7/8 {bes'32 c''32 des''32 c''32 bes'32 aes'32 f'32} 
      | \tuplet 9/8 {c'32 es'32 g'32 d'32 es'32 d'32 bes32 c'32 d'32} bes16 aes16 c'16 f'16~ \tuplet 6/4 {f'8 bes'16 aes'16 f'16 e'16} \tuplet 6/4 {es'8 g'16 ges'16 f'16 e'16} 
      | \tuplet 10/8 {es'16. d'16 g'32 f'16 d'32 des'32~} des'16 f'16 e'16 c'16 \tuplet 6/4 {es'16 des'16 c'8 bes16 gis16} a8 r8 
      \bar "||" \mark \default \tuplet 3/2 {r8 a'8 d'''8} \tuplet 6/4 {g'''8 fis'16 g'16 bes'16 es'16} b16 e'16 c'16 bes'16 r4 
      | \tuplet 5/4 {r16 e'16 f'16 bes'16 es''16} ges''32 aes''16 c'''32 b''16 es'''32 e'''32 f'''16 es'''8.~ \tuplet 6/4 {es'''8 f''16 ges''16 aes''8~} 
      | aes''2~ \tuplet 10/8 {aes''4 f''32\bendAfter #+4  g''32~} \tuplet 6/4 {g''16 es''16\bendAfter #+4  f''16 f''16\bendAfter #+4  es''8} 
      | f''8 es''16 b'32 des''32~ des''16 c''16 bes'16 c''16~ c''8 r8 r8. g'32 aes'32~ 
      | \tuplet 14/16 {aes'64 bes'64 b'64 es''32 d''64 b'64 c''64 bes'64 b'64 bes'64 aes'64 g'64 fis'64} \tuplet 11/8 {g'32 e'32 f'16 es'32 d'32 cis'32 d'32 cis'32 d'32 cis'32} \tuplet 12/8 {d'32 c'32 bes32 b32 bes32 b32 bes32 a32 aes32 g32 ges32 f32} \tuplet 17/16 {es64 e64 es64 e64 es64 e64 es64 e64 es64 e64 es64 e64 es64 e64 es64 e64 es64~} 
      | \tuplet 20/16 {es32 f32 des64 f64 des64 f64 des32 f64 des64 f64 des64 f32 des64 f64 des64 f64} \tuplet 6/4 {des16 f16 des16 f8.} r4 \tuplet 12/8 {r8 r32 bes,32 d32 f32 g32 bes32 g32 a32} 
      | \tuplet 13/16 {bes64 c'64 d'64 f'64 d'64 es'64 f'64 g'64 bes'64 g'64 aes'64 b'64 c''64} \tuplet 12/8 {es''32 d''32 c''32 b'32 aes'32 g'32 ges'32 e'32 es'32 d'32 des'32 es''32~} \tuplet 6/4 {es''16 g'16 c''16 des''16 c''16 bes'16} aes'8.. g'32~ 
      | \tuplet 14/16 {g'32 bes'32. e'32 a'32. g'32. c'64~} \tuplet 5/4 {c'16 es'16 g'16 d'16 bes16} \tuplet 5/4 {c'16 d'16 b16 g16 a16} c'16 cis'16 es'16 f'16~ 
      | f'32 f'8 es'32 f'32 c'32 d'16 bes8.~ \tuplet 12/8 {bes16 bes32 bes32 bes32 bes32 bes32 bes32 bes32 bes32 bes16} bes32 bes32 bes32 bes32 bes32 bes32 bes32 bes32 
      | bes16 bes16 bes16 bes16~ \tuplet 12/8 {bes32 bes32 bes32 bes32 d'32 f'32 e'32 es'16 bes32 es'32 es'32~} \tuplet 12/8 {es'16 d'32 es'32 d'32 es'32 d'32 des'32 c'8} \tuplet 12/8 {c'32 bes32 b32 bes32 a16 bes16 ges32 aes32 ges32 f32} 
      | r4 \tuplet 6/4 {r4 d16 es16~} \tuplet 6/4 {es16 f16 es16 bes8.} \tuplet 5/4 {g16 aes8 e16 g16} 
      | f16 es16 f4. r2 
      \bar "||" \mark \default \tuplet 14/16 {r8 r32 e'32. b64~} \tuplet 6/4 {b8 aes16 bes8 bes16} \tuplet 3/2 {b8 es'8 f'8} bes'8 f''8~ 
      | f''16 aes,16 es16 gis16~ gis16 a16 bes16 es'16 \tuplet 6/4 {f'16 ges'16 f'8 f'8} \tuplet 3/2 {des'8 bes4~} 
      | \tuplet 6/4 {bes8 e'8 es'16 des'16} \tuplet 10/8 {e'16 des'16 es'16 des'32 g'16 des''32} \tuplet 6/4 {c''16 bes'16 aes'8 g'16 f'16} \tuplet 6/4 {c''16 bes'16 e''16 ges''16 a''16 c'''16} 
      | \tuplet 6/4 {c'''8 es''16 bes'16 g'16 es'16} \tuplet 6/4 {bes'16 a'16 bes'4~} \tuplet 9/8 {bes'16 g''32 es''32 b'32 aes'32 ges'32 b'32 es''32~} \tuplet 10/8 {es''32 b'16. e'32 e'32 d'32 des'32 aes32 bes32} 
      | aes16 f16 g8~ g4~ \tuplet 7/8 {g16. fis32 g32 bes32 c'32} bes16 d'16 es'8~ 
      | es'16 des'32 bes16 c'32\glissando  des'32 c'32\glissando  des'16 bes16 r8 r4 \tuplet 6/4 {r4 r16 c''16~} 
      | \tuplet 12/8 {c''16 a'16. bes16. c''16 a'32 b'32} \tuplet 6/4 {a'16 f'16 d'16 bes8 a16~} \tuplet 6/4 {a16 f8 g16 gis16 a16~} a16 e32 es16 cis32 d32 es32~ 
      | es32 f32 fis32 g32 ges32 es32 d16~ \tuplet 12/8 {d4 d32 f32 g32 bes32} \tuplet 5/4 {b8 cis'16 e'16 es'16} c'16. fis'32 ges'32 f'32 e'32 es'32 
      | \tuplet 6/4 {d'16 des'16 c'16 f'16 c'8} \tuplet 5/4 {bes16 aes8 g16 f16~} f8~ f32 es32 aes32 aes32 \tuplet 5/4 {bes16 c'16 bes16 c'16 des'16~} 
      | \tuplet 6/4 {des'16 bes16 c'16 bes8.} r4 r16 e''32 f''32 aes''32 es''32 e''32 des''32 e''32 c''32 des''32 bes'32 aes'16 f'32 e'32~ 
      | \tuplet 14/16 {e'32 es'32. c''32. fis'64 g'32 bes'32 aes'64~} \tuplet 5/4 {aes'16 c'16 f'16 des''16 c''16} \tuplet 6/4 {bes'16 b'16 e'16 aes'16 aes'16 g'16} f'32 ges'32 f'32 e'32 es'32 cis'32 d'16 
      | f'32 d'32 es'32 d'32 bes32 c'32 d'32 bes32~ \tuplet 7/8 {bes16 b32 aes'32 b'32 d''32 b'32} b64 ges'64 aes'64 b'64 c''32 bes'64 bes'32 b'64 c''64 c''64 b'64 a'64 g'64 f'64 \tuplet 11/8 {es'32 b32 a32 g32 f32 g32 bes32 c'32 g'32 a'32 des''32} 
      \bar "||" \mark \default b'8~ b'32 c''32 bes'32 g'32 bes'4~ \tuplet 7/8 {bes'16 g'32 bes'32 b'32 des''32 b'32~} b'8 g'32 bes'32 b'32 c''32~ 
      | \tuplet 6/4 {c''16 c''16 des''16 b'16 c''16 des''16~} \tuplet 12/8 {des''8.. bes'16 ges'32 f'32 e'32} es'16 d'8 des'16~ des'8. cis'16 
      | \tuplet 6/4 {d'16 f'8 c''16 f'16 bes'16} aes'16 bes16 es'16 g'16 \tuplet 14/16 {f'32. d'64 bes32 es'16 des'32. aes64~} \tuplet 6/4 {aes16 c'8 bes16 f16 aes16} 
      | \tuplet 6/4 {bes8 aes16 c16 gis16 a16} \tuplet 6/4 {f4 es16 es'16} b16 e16 bes16 aes16 bes,16 c16 des16 es16 
      | es16 es16 c16 es16~ es2~ \tuplet 5/4 {es8 f16 g16 bes16} 
      | c'4~ c'16 bes16 g16 e16~ e8 e16 es16 r4 
      | r8 r32 d32 e32 d32 \tuplet 9/8 {es32 g32 bes32 g32 aes32 c'32 es'32 g'32 bes'32} \tuplet 10/8 {g'32 aes'32 g'32 f'32 e'32 es'32 d'32 c'32 bes32 g32~} \tuplet 12/8 {g32 aes32 fis32 g32 f32 e32 es32 d32 es32 g16 bes32} 
      | g32 aes32 bes32 c'32 d'32 g''32 g'16~ \tuplet 12/8 {g'8.. fis'32 g'32 c''32 g''32 aes''32} c'''16 es''16 bes'16 es'16 bes'16 g'32 gis'16 c'32 es'32 fis'32 
      | g'16 es'32 c'32 e'32 f'32 c''32 des''32 g'16 bes'16 aes'16 c'16~ c'16. a32 c'32 b32 bes32 bes'32 \tuplet 6/4 {aes'16 bes16 es'16 f'16 fis'16 g'16} 
      | \tuplet 6/4 {es'16 d'16 f'8 f'16 es'16} f'4~ \tuplet 6/4 {f'16 aes'16 f'8 e'16 es'16~} \tuplet 5/4 {es'16 c'16 des'16 bes16 aes16} 
      | \tuplet 3/2 {bes4 bes8} aes4 g4 f16 ges8. 
      | f4 e4 es4~ es16 cis16 d16 bes16~ 
      \bar "||" \mark \default bes2 r2\bar  ".."
    }
    >>
>>    
}
