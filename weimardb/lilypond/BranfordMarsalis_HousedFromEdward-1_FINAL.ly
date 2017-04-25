\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Housed from Edward"
  composer = "Branford Marsalis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \major
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 
      | f1:7|
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


      \tempo 4 = 127
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. g'16 aes'2 r4 
      | \tuplet 6/4 {r4 r16 f'16~} f'2 r4 
      | c'8 r8 r4 d'8 r8 r4 
      | \tuplet 3/2 {f4 g8} r4 aes'2 
      | r4 c'4 d'4.^\markup{\left-align \small vib} r8 
      | r4 \tuplet 3/2 {c4 d8} r4 f8 r8 
      | r4 a8 r8 r8. c'16~ c'4 
      | f'4 a'4 bes'4 a'4 
      | des'4 des'4 des'4 des'4 
      | des'4 des'4 des'4 des'8. des'16~ 
      | des'8 des'8~ des'8. aes16 cis'4 dis'4 
      | des'16 c'16 r8 r4 c'4 d'4 
      \bar "||" \mark \default b8\bendAfter #-4  r8 r8.. b32~ b4 des'4 
      | bes4.^\markup{\left-align \small vib} r8 r2 
      | r2 r8 gis8~ gis16 a8 c'16 
      | es'8 f'8 ges'8. e'16 \tuplet 3/2 {f'4 d'8} bes4 
      | ges16 c'8 es'16 \tuplet 3/2 {d'4 c'8} \tuplet 3/2 {g4 aes8} c'8. es'16~ 
      | \tuplet 6/4 {es'16 g'8. ges'16 f'16} e'8 g'8 ges'8~ ges'32 e'16 f'32~ f'8 c'8 
      | a8 a8 bes8 bes8 c'4 d'4 
      | fis'4 a'4 bes'16 c''4. a'16 
      | bes'8. des'16 r2. 
      | a'16 bes'16 a'16 gis'16 a'16 bes'16 a'8 a'16 bes'16 a'8 a'8 gis'8 
      | a'8. b16\bendAfter #-4  bes4 b8 r8 r8 b8 
      | r4 r8. b16~ b4 c'8 r8 
      \bar "||" \mark \default r4 gis'16 a'8 gis'16 a'2 
      | g'8. f'16 g'2 \tuplet 3/2 {a'4 es'8\bendAfter #-4 } 
      | d'4 r2. 
      | r2 r8 des''8 aes'16 e'16 a16 ges'16~ 
      | ges'16 des'16 g'16 c'16 g'16 f'16 es'16 bes16 g16 es'16 c'16 bes16 g16 c'16 d'16 es'16 
      | f'16 cis'16\glissando  d'8 f4\glissando  aes4 f4 
      | a4^\markup{\left-align \small vib} r2 r8 a8 
      | bes8 b8 bes16 a8 g16 fis8 es'8 d'8 a8 
      | \tuplet 3/2 {c'4 a8} \tuplet 3/2 {bes8 d'8 f'8~} \tuplet 6/4 {f'16 a'8. bes'16 a'16} g'16 ges'8 a'16~ 
      | \tuplet 5/4 {a'16 g'16 aes'16 g'16 d'16~} d'32 f'32 g'16 f'16 d'32 f'32 g'16 f'16 des'8 \tuplet 6/4 {dis'16 e'16 es'16 des'8 b16} 
      | c'4 f'16 e'16 f'16 c'16 a16 f16 bes16 d'16 c'16 bes16 a16 g16 
      | ges8 a16 fis16 g16 a16 bes16 c'16 \tuplet 6/4 {d'8 f'8 e'16 g'16} c''8 r8 
      \bar "||" \mark \default r2. r8 f''8~ 
      | f''8 es''4 c''4 bes'4 f'8 
      | \tuplet 3/2 {gis'8\glissando  a'8 bes'8} \tuplet 3/2 {c''4 d''8} c''4 \tuplet 6/4 {f'4 g'16 a'16~} 
      | \tuplet 6/4 {a'4 bes'16 a'16~} a'8. bes'16 a'8. bes'16 a'8. bes'16 
      | \tuplet 3/2 {aes'4 bes'8} aes'8. bes'16 aes'8. d'16\bendAfter #-4  cis'8.. d'32\bendAfter #-4  
      | des'4 r2. 
      | r8 c'16 f'16 a'16 g'16 f'16 a'16 g'16 a'16 bes'16 c''16 a'16 f'16 c'16 bes16 
      | f'16 c'16 dis'16 gis'16 f'16 gis'16 fis'16 dis'16 \tuplet 6/4 {bes'8 dis'16 bes8 g'16} \tuplet 3/2 {ges'8 f'8 g'8} 
      | f'16 c'16 bes16 e'16 cis'16 d'16 aes'16 f'16 g'16 g'16 aes'16 aes'16 bes'16 ges'16 des'16 g'16 
      | \tuplet 6/4 {d'8 c'8 bes16 f16~} \tuplet 5/4 {f16 bes16 gis16 a16 c'16} f'16 g'16 a'16 f'16 g'16 f'16 c'8 
      | r2. r16 e'16 gis'16 e'16 
      | \tuplet 6/4 {fis'16 e'16 b8 es'16 f'16} \tuplet 6/4 {g'16 es'16 f'16 es'16 bes8} r2 
      \bar "||" \mark \default r2 r16 bes32 g32 a32 c'32 d'32 es'32 \tuplet 6/4 {f'16 e'16 d'16 des'16 bes16 b16} 
      | \tuplet 9/8 {d'32 c'16 g32 e32 bes32 g32 a32 g32} \tuplet 7/8 {f32 es32 g32 bes32 c'32 g32 des32~} \tuplet 7/8 {des32 bes32 des'32 f'32 ges'32 a'32 f'32} \tuplet 6/4 {c'16 a16 es16 ges16 es16 des16} 
      | bes32 aes32 e32 a16 g32 b32 d'32 aes'16 e'32 d'32 b32 e'32 c'32 es'32 \tuplet 7/8 {g'32 f'32 d'32 bes32 aes32 es'32 d'32} c'4~ 
      | \tuplet 6/4 {c'8 c'16 d'16 es'16 f'16~} \tuplet 6/4 {f'16 d'16 c'16 b16 g16 bes16} \tuplet 6/4 {g16 a16 d'16 f'16 es'16 d'16} \tuplet 6/4 {c'16 bes16 a16 g16 e16 d16} 
      | \tuplet 6/4 {c16 bes,16 bes,16 a,16 aes,8} r2. 
      | r2 r8 aes8 f4 
      | a4^\markup{\left-align \small vib} r4 bes4^\markup{\left-align \small vib} r4 
      | c'4^\markup{\left-align \small vib} r4 r8. cis'16~ cis'4 
      | cis'4 d'4 cis'4 d'4 
      | cis'8 d'8 a'8 g'8 \tuplet 3/2 {f'4 des'8} bes8. f16 
      | c'4 r4 d'4. a8 
      | \tuplet 3/2 {bes4 a8} g4 des'2^\markup{\left-align \small vib} 
      \bar "||" \mark \default a8 g8 f4 c'4 c'4 
      | c'8 r8 \tuplet 6/4 {r4 r16 d'16~} d'8. a16 bes8 c'8 
      | r1 
      | \tuplet 6/4 {aes4 g16 f16~} f4 c'4 c'4 
      | c'4^\markup{\left-align \small vib} r4 \tuplet 3/2 {d'4 g8} aes8. c'16 
      | r2. a8~ a32 g16 f32~ 
      | f4 c'4 c'4 c'4~^\markup{\left-align \small vib} 
      | c'4 d'8. a16 bes8. aes'16\bendAfter #-4  g'8 e'8~ 
      | e'8. b16~ b8\bendAfter #-4  aes8~ aes8. es'16~ es'4 
      | bes4. c'8 r4 \tuplet 3/2 {r8 f'8 a'8~} 
      | a'4 \tuplet 3/2 {g'8 d'16 r8.} r4 e'8 c'8 
      | r4 d'8 f'8 r4 e'8 g'8~ 
      \bar "||" \mark \default g'8 a'8~ a'16 g'16 f'8 \tuplet 3/2 {e'8 g'4} \tuplet 6/4 {e'16 f'8. g'16 f'16} 
      | e'8 d'16 cis'16~ \tuplet 3/2 {cis'8 d'8 e'8~} \tuplet 3/2 {e'8 f'8 d'8} bes8 g16 aes16 
      | \tuplet 3/2 {b4 e'8} d'8 c'4 d'16 es'16~ es'8 b16 d'16~ 
      | \tuplet 6/4 {d'8. c'8 g16~} \tuplet 3/2 {g8 bes8 g8~} g8 a8 \tuplet 3/2 {c'8 es'8 f'8~} 
      | \tuplet 3/2 {f'8 ges'8 e'8} \tuplet 3/2 {f'8 d'8 bes8} \tuplet 3/2 {g4 c'8} d'16 es'16. f'16 d'32 
      | c'4 \tuplet 3/2 {bes8 c'8 des'8} \tuplet 3/2 {es'8 f'8 des'8~} \tuplet 3/2 {des'8 es'8 des'8} 
      | \tuplet 6/4 {aes8 bes8. des'16~} des'16 es'16 c'16 des'16 bes16 f8 aes16 \tuplet 3/2 {des8 f8 aes8} 
      | \tuplet 6/4 {g4~ g16 bes16~} bes16 g16 a16 g16 \tuplet 6/4 {fis8 a8 c'16 es'16~} es'8 d'16 fis'16~ 
      | fis'16 a'16 des'16 c''16~^\markup{\left-align \small vib} c''2 \tuplet 5/4 {c''16 a'16 f'16 c'16 des'16} 
      | c''4.^\markup{\left-align \small vib} \tuplet 6/4 {c''16 a'16 f'16} \tuplet 6/4 {c'16 des'16 f'16 a'8 c''16~} c''8. c''32 a'32~ 
      | \tuplet 6/4 {a'16 f'16 c'16 des'16 f'16 a'16} c''4 \tuplet 6/4 {c''8 bes'16 ges'16 f'16 d'16~} d'8~ d'32 d'32 f'32 g'32 
      | \tuplet 5/4 {f'16 d'16 bes16 g16 e'16~} e'32 e'16 c'32 d'16 e'32 bes32 \tuplet 7/8 {g32 e32 g32 f32 g32 a32 c'32} \tuplet 5/4 {d'16 a16 bes16 f'16 a'16} 
      \bar "||" \mark \default c''8 r8 r2. 
      | r2 bes'4. bes'8 
      | \tuplet 3/2 {bes'8 bes'8 bes'8~} bes'16 aes'8 f'16 g'8 f'8 es'8. c'16 
      | d'4 c'4 aes4 f4 
      | g8 r8 r4 g'8 r8 r4 
      | r16 fis'16\glissando  g'16 g'16 g'4 g'4.^\markup{\left-align \small vib} g'8~ 
      | g'8 g'4 g'8 g'8 g'8 e'4~ 
      | \tuplet 6/4 {e'16 f'8. g'16 f'16} d'8 bes8 e'4^\markup{\left-align \small vib} r4 
      | \tuplet 7/8 {e'8 f'32 e'32 c'32~} c'8 d'8 \tuplet 3/2 {bes4 c'8} \tuplet 3/2 {a4 bes8\glissando } 
      | a4 g4 r4 a4 
      | c'2^\markup{\left-align \small vib} d'8\bendAfter #-4  r8 r4 
      | r1 
      \bar "||" \mark \default r16 f'16 a'8 gis'4~ gis'16\glissando  a'8 gis'16~ gis'8 a'8~ 
      | \tuplet 3/2 {a'8 a'8\glissando  bes'8} a'8 f'8 c'8 es'16. c'32~ c'8 es'8 
      | c'4^\markup{\left-align \small vib} r4 \tuplet 3/2 {r8 c'8 d'8} es'8 f'8 
      | g'8 a'8 bes'8 c''8\glissando  d''8 des''16\glissando  c''16 a'8 c''8~ 
      | \tuplet 3/2 {c''8 c''8 bes'8} \tuplet 3/2 {f'8 c'8 aes'8} d'8 r8 r4 
      | r2. r8 g'16 g'16~ 
      | \tuplet 6/4 {g'16 g'8 f'8 f'16~} \tuplet 6/4 {f'16 f'8. e'16 g'16~} g'32 e'16 f'16 g'16 e'32~ \tuplet 5/4 {e'16 f'16 d'16 bes16 g16~} 
      | \tuplet 5/4 {g16 e'8 c'16 d'16} \tuplet 3/2 {dis'8 fis'8 a'8} d''16 c''16 bes'8~ \tuplet 6/4 {bes'16 fis'16 a'16 g'16 d'8} 
      | bes16 f'16 d'16 e'16 c'16 g16 bes16 c'32 a32~ \tuplet 5/4 {a16 d'16 bes16 f16 d16} ges16 e16 r8 
      | r4 r8.. d'32~ \tuplet 7/8 {d'32 c'32 d'32 c'32 d'32 c'32 d'32} c'16 d'16 c'16 b16 
      | c'16 a'16 r8 r4 c'32 d'32 c'32 d'32 c'32 d'32 c'16 \tuplet 5/4 {d'8 c'16 b16 c'16} 
      | g'8 r8 r4 bes32 c'32 bes32 c'32 bes32 c'32 bes32 c'32 \tuplet 6/4 {bes16 c'16 bes16 gis8 a16~} 
      \bar "||" \mark \default a8 f'8~^\markup{\left-align \small vib} f'2~ f'8. es'16 
      | \tuplet 3/2 {f'8 a'8 a8} r2 bes8 gis16 a16~ 
      | a16 c'16 es'16\glissando  f'16~^\markup{\left-align \small vib} f'2~ f'8. es'16\glissando  
      | a'8 es'8\bendAfter #-4  r2. 
      | r16 bes16 f16 g16 aes16. c'16 e'16 fis'32~ \tuplet 6/4 {fis'16 g'4 g'16~^\markup{\left-align \small vib}} g'8. e'16 
      | g'16 e'16 c'16 aes16 d'16 bes16 ges16 d16 \tuplet 3/2 {e8 g8 c8} r4 
      | r2 r32 c'32~ c'8 bes32 d'32~ d'8. bes16 
      | es'4 d'4 fis'4 a'4 
      | bes'4^\markup{\left-align \small vib} r4 r8. a'16~ a'16 bes'8 a'16~ 
      | a'16 a'16 bes'16 a'16~ a'16 a'16 bes'16 a'16 \tuplet 3/2 {a'8\glissando  bes'8 a'8~} a'16 a'16\glissando  bes'16 a'16~ 
      | a'16 a'16\glissando  bes'16 a'16 \tuplet 6/4 {f'8. c'16 dis'16\glissando  e'16} f'8 f'8 \tuplet 3/2 {e'8 f'4~^\markup{\left-align \small vib}} 
      | f'8 es'16 f'16~ f'16 d'16 f'16 des'16~ \tuplet 6/4 {des'8 f'8 c'16 bes16~} \tuplet 7/8 {bes16 f16 c16 gis32\glissando } 
      \bar "||" \mark \default \tuplet 3/2 {a8 f8 c8} es2 r4\bar  ".."
    }
    >>
>>    
}
