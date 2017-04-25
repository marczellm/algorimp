\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Society Red"
  composer = "Dexter Gordon"
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
      
      | f1:7 | bes1:7 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | s1 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:7 
      | g1:min7 | c1:7 | f1:7 | s1 | s1 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:7 | g1:min7 | c1:7 | f1:7 | s1 
      | s1 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:7 
      | g1:min7 | c1:7 | f1:7 | s1 | s1 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:7 | g1:min7 | c1:7 | f1:7 | s1 
      | s1 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:7 
      | g1:min7 | c1:7 | f1:7 | s1 | s1 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:7 | g1:min7 | c1:7 | f1:7 | c1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:7 
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:7 | g1:min7 | c1:7 | f1:7 | c1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:7 
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7|
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


      \tempo 4 = 114
      \set Score.currentBarNumber = #-7
     
      \bar "||" \mark \default r2 \tuplet 3/2 {g'8 a'4\bendAfter #-4 } r4 
      | r4 \tuplet 6/4 {r8. aes'8 f'16~} f'8 b'8 bes'8 aes'8 
      | f'2^\markup{\left-align \small vib} gis'8\glissando  a'8 r4 
      | r1 
      | r32 g'16 a'16 bes'16 b'32~ \tuplet 3/2 {b'8 c''8 c''8} bes'8 bes'16 g'16~ g'4 
      | \tuplet 3/2 {a'8 aes'8 g'8} ges'16 f'16 d'16 a'16~ a'16 a16 g16 f16 \tuplet 6/4 {ges16 c'8 a16 bes16 c'16~} 
      | c'16 a'16 aes'16 g'16 \tuplet 5/4 {ges'16 f'16 d'16 bes16 g16} a8. c'16 e'16 g'16 f'16 e'16 
      | a'8 c''4^\markup{\left-align \small vib} r8 r8.. es'32 bes'16 c''8 a'16 
      \bar "||" \mark \default g'4^\markup{\left-align \small vib} \tuplet 3/2 {f'8 a'8 d'8~^\markup{\left-align \small vib}} d'4. g'16 ges'16 
      | f'16 d'16 bes16 g16~ \tuplet 6/4 {g16 f16 es16 e16 g16 bes16} \tuplet 5/4 {es'8 des'16 es'16 des'16} es'16 des'16 c'16 bes16 
      | a8. c'16 \tuplet 6/4 {e'16 g'16 f'8 e'16 f'16} \tuplet 3/2 {a'8 c''4^\markup{\left-align \small vib}} r4 
      | r8 r32 c'32 d'32 g'32 \tuplet 7/8 {bes'32 a'16 g'16 f'32 d'32~} \tuplet 6/4 {d'16 es'8 g16 aes16 c'16} d'8. a16 
      | \tuplet 6/4 {c'8 a16 bes16 d'16 f'16} a'16 aes'16 g'16 ges'16 \tuplet 7/8 {f'16 d'16 bes16 aes32~} \tuplet 6/4 {aes16 cis'16 d'8 es'16 e'16} 
      | f'16 des'16 c'16 bes16 aes4^\markup{\left-align \small vib} r4 es'16 des'16 es'16 des'16~ 
      | des'16 c'16 a16 bes16 c'16 g'16 f'16 e'16 d'16 e'16 c'4^\markup{\left-align \small vib} r8 
      | \tuplet 6/4 {r8 a8 c'16 e'16} g'4^\markup{\left-align \small vib} f'16 fis'16 es'16 b16 \tuplet 3/2 {bes8 gis4} 
      | e'16 f'16 d'16 bes16 \tuplet 6/4 {a8 g16 c'8 a16~} \tuplet 6/4 {a16 bes16 c'8 d'16 e'16~} \tuplet 6/4 {e'16 f'16 d'8 bes16 g16} 
      | a16 g16 fis16 g16 \tuplet 10/8 {c'8 a16. bes32 d'32 f'32} a'8 a'16 f'16~ \tuplet 3/2 {f'8 f'8 d'8~} 
      | \tuplet 6/4 {d'16 g'8. g'16 e'16~} \tuplet 3/2 {e'8 e'8 c'8~} c'32 e'32\glissando  f'16. f'16 d'32~ \tuplet 3/2 {d'8 d'8 bes8~} 
      | bes32 e'16. c'32 d'16 bes32~ \tuplet 6/4 {bes16 c'8 a16 bes16 g16} \tuplet 5/4 {a8 g16 ges16 a16} \tuplet 6/4 {g8 es16 f8 d16} 
      \bar "||" \mark \default \tuplet 6/4 {e4 g16 bes16} d'16 c'16 a4 r8 r4 
      | r4 r8 aes'8~ aes'32 f'8 bes'32 b'32 des''32 b'16 aes'8 f'16~ 
      | f'16 f'8 f'16~^\markup{\left-align \small vib} f'4 aes'8 r8 r4 
      | r8 aes'8 \tuplet 5/4 {f'8 bes'16\glissando  c''16 bes'16} aes'8 f'8 aes'8 f'8 
      | f'4~^\markup{\left-align \small vib} \tuplet 3/2 {f'8 aes'8 f'8} \tuplet 3/2 {aes'8 f'8 bes8~^\markup{\left-align \small vib}} bes8 r8 
      | \tuplet 6/4 {r4 g'16\glissando  aes'16~} aes'8 f'8~ \tuplet 6/4 {f'16 bes'8 b'16 bes'16 aes'16~} aes'16 f'8 b16 
      | f'4~^\markup{\left-align \small vib} f'16 aes'8 c'16 d'16 f'8 aes'16~ aes'8 r8 
      | r4 r8 gis'4 f'8 \tuplet 3/2 {a'8\glissando  b'8 bes'8~} 
      | bes'2. aes'8 f'8~ 
      | f'16 b'16 bes'16 aes'16 \tuplet 3/2 {f'4 aes'8~} aes'8 bes'8~ bes'16 f'8 aes'16~^\markup{\left-align \small vib} 
      | aes'4 bes'8 f'8~ f'16 aes'8 f'16 r4 
      | r4 \tuplet 3/2 {r8 aes'8 f'8~} f'16 bes'8 aes'16~ aes'8 aes'8 
      \bar "||" \mark \default f'16 aes'8.~ aes'8 r8 r2 
      | r4 \tuplet 3/2 {r8 aes'8 f'8~} f'16 bes'8 aes'16~ aes'8 aes'8~ 
      | \tuplet 6/4 {aes'16 aes'8. g'16\glissando  aes'16~} \tuplet 6/4 {aes'8. f'8 es'16} f'4\bendAfter #-4  r4 
      | r4 aes'8 f'8 \tuplet 6/4 {g'16 bes'16\glissando  e''16 f''8.~} f''4~ 
      | f''4~ f''16 a'16\glissando  bes'16 aes'16 f'8 aes'8\bendAfter #-4  r4 
      | \tuplet 6/4 {r4 es''16 f''16~} \tuplet 10/8 {f''8 bes'16\glissando  b'16. bes'32~^\markup{\left-align \small vib}} bes'4. aes'8 
      | f'4.. gis'32\glissando  a'32~ a'16 g'16 d'16 c'16 r4 
      | r8. c'16 a'16 bes'16 a'16 g'16 fis'16 a16 c'16 es'16 d'16 c'16 b16 a16 
      | bes8 f'16 e'16 f'8 bes'8 \tuplet 6/4 {a'16 bes'8 f'8 e'16~} e'32 f'8 d'16 cis'32 
      | d'8 a'8 \tuplet 6/4 {gis'16 a'8 f'8 e'16~} e'32 f'8 g'16 fis'32~ fis'16 g'16 e'16 d'16 
      | c'16 f'16 d'16 bes16 g16 a16 c'8~^\markup{\left-align \small vib} c'4. c'16 b16 
      | \tuplet 6/4 {bes8 f'8 d'16 bes16} a8 g4^\markup{\left-align \small vib} r8 r8 c'8~ 
      \bar "||" \mark \default \tuplet 6/4 {c'16 e'8 f'8 c'16~} c'16 e'8 f'16~ f'8 r8 r8 c'8~ 
      | c'16 e'16 f'16 c'16 e'8 f'8~^\markup{\left-align \small vib} f'4. c'8~ 
      | \tuplet 6/4 {c'16 e'8 f'8 c'16~} c'16 e'8 e'16\glissando  f'4~ f'8~ f'32 es'32 d'32 c'32 
      | b8 b4 r8 r2 
      | r8 f'8 aes'8 g'8 f'8 aes'8 r4 
      | r8 f'8 \tuplet 3/2 {aes'8 g'8 f'8} aes'8 b8 r4 
      | r4 gis'16\glissando  a'8. e'16 f'8. b16 c'8. 
      | g16 a8. a16 bes16 a16 g16 fis16 a16 c'16 d'16 es'16 d'16 gis16 fis16~ 
      | fis32 g8 g32 bes32 d'32 a'4.. g'16 \tuplet 6/4 {f'16 e'16 d'16 c'8 b16~} 
      | b32 bes32 d'16 f'16 a'32 c''32~ c''16 a'16 bes'16 g'16 a'16 g'16 ges'16 a'16~ a'32 g'16. d'32 f'16 d'32~ 
      | \tuplet 6/4 {d'16 e'16 d'8 cis'16 d'16} \tuplet 3/2 {f'8 d'8 bes8} g16 a16 g16 fis16 \tuplet 6/4 {g16 c'8 a16 bes16 d'16~} 
      | \tuplet 6/4 {d'16 a'16 bes'8 a'16 g'16~} g'16 f'16 d'16 bes16 a4^\markup{\left-align \small vib} r4 
      \bar "||" \mark \default g16 f16 e16 f16 bes16 a16 gis16 a16 \tuplet 5/4 {d'8 c'16 b16 c'16~} \tuplet 5/4 {c'16 g'16 f'16 e'16 f'16} 
      | \tuplet 3/2 {a'8 bes'8\glissando  c''8} g'16 bes'8. \tuplet 6/4 {f'16 a'16 aes'8 g'16 ges'16} \tuplet 3/2 {f'8 d'8 bes8} 
      | \tuplet 6/4 {gis8 a8 c'16 e'16} g'16 f'16 e'16 f'16 \tuplet 3/2 {a'8 c''4~^\markup{\left-align \small vib}} \tuplet 5/4 {c''8. c'16 d'16~} 
      | \tuplet 9/8 {d'32 g'32 bes'16. g'32 a'16 fis'32~} \tuplet 6/4 {fis'16 g'8 es'16 d'16 c'16} \tuplet 3/2 {bes8 g8 a8} es'16 ges'16 f'16 es'16 
      | \tuplet 3/2 {d'8 f8 a8} \tuplet 6/4 {c'8 a16 bes8 c'16} \tuplet 6/4 {d'8 f'16 g'8 f'16} g'16\glissando  aes'16 g'16 ges'16 
      | f'16 d'16 bes16 g16 cis'16 d'16 es'16 e'16 f'16 des'16 c'16 bes16 aes8.^\markup{\left-align \small vib} f16 
      | \tuplet 3/2 {g8 e8 f8} a16 c'16 d'16 c'16 e'8 es'16 d'16 des'16 c'8. 
      | r4 \tuplet 6/4 {e'8 f'16 e'16 d'16 c'16} b16 c'16 d'16 e'16 fis'8 g'8 
      | d'4 \tuplet 3/2 {a'8 g'8 e'8} \tuplet 5/4 {d'16 c'16 b16 bes16 a16} g16 f16 e16 g16 
      | \tuplet 6/4 {bes8 des'8 bes16 b16} c'16 a16 bes16 g16 a8.^\markup{\left-align \small vib} f16 g16 f16 e16 f16 
      | a16 c'16 d'16 c'16 \tuplet 3/2 {f'8 es'4} c'16 d'16 c'16 b16 bes16 d'16 f'16 a'32 c''32 
      | a'4 a'8 r8 r2 
      \bar "||" \mark \default r4 r8 c'32 d'32 f'32 a'32 c''8 c''16 es''16~ \tuplet 6/4 {es''16\glissando  f''8 a'8 a'16~} 
      | \tuplet 6/4 {a'16 c''8 c'8 c'16~} \tuplet 10/8 {c'16 a'16. bes'32 b'32 c''32 b'32 bes'32~} bes'32 a'16 g'16 f'16 e'32~ e'16 g'16 f'16 e'16 
      | d'16 f'16 d'16 bes16 g16 a8.^\markup{\left-align \small vib} c'8 r8 r4 
      | r8 c'8~ \tuplet 6/4 {c'16 es'16 g'16 bes'16 f''8} e''16\glissando  f''8 d''16~ d''8 r8 
      | r4 \tuplet 7/8 {f16. aes32 c'32 d'32 g'32} \tuplet 3/2 {bes'8 d''8 bes'8~} bes'8 r8 
      | \tuplet 6/4 {r4 ges'16\glissando  aes'16~} aes'4. \tuplet 6/4 {g'16 ges'16 f'16} es'32 d'32 c'32 b16 d'32 f'32 aes'32 
      | g'4..^\markup{\left-align \small vib} f'16~ \tuplet 3/2 {f'8 e'8 c'8} r4 
      | r8 a8 \tuplet 12/8 {bes16 c'32 d'32 e'16 g'16 a'32 g'32 bes'32 b'32} c''4~ \tuplet 6/4 {c''4~ c''16 c''16\glissando } 
      | des''8~ des''32 b'32 bes'32 aes'32~ \tuplet 6/4 {aes'16 ges'16 f'16 es'16 des'16 b16} \tuplet 6/4 {bes4~^\markup{\left-align \small vib} bes16 des'16} es'16 aes'16 des''16 bes'16~ 
      | bes'4 \tuplet 3/2 {bes'8 c''4~} c''2~ 
      | c''4. \tuplet 6/4 {a'8 g'16~} g'16 f'16 g'8 r4 
      | \tuplet 3/2 {r8 b'8 d''8~} \tuplet 3/2 {d''8 a'8 g'8} \tuplet 3/2 {f'8 g'4~} g'4~ 
      \bar "||" \mark \default g'8. fis'32\glissando  g'32~ g'8 f'8 \tuplet 6/4 {g'16 a'16 c''16\glissando  d''16 c''8~} c''16 fis'32 g'16.\bendAfter #+4  fis'32 g'32~ 
      | g'4.. f'16 g'8 f'8 \tuplet 6/4 {d'8\bendAfter #+4  es'8 d'16 es'16~} 
      | es'8. c'16~ c'8 c'8 c'4^\markup{\left-align \small vib} r4 
      | r32 c'16. d'16 es'32 f'32~ f'16 g'16 g'16 ges'16~ \tuplet 3/2 {ges'8 ges'8 des''8~^\markup{\left-align \small vib}} des''8. b'16 
      | c''8 bes'8 g'16 aes'16 f'16 aes'16~ \tuplet 6/4 {aes'16 g'16 f'8 es'16 d'16~} d'16 c'16 bes16 b16 
      | c'16 aes16 g16 f16 \tuplet 6/4 {es16 bes8 g16 aes16 f16~} \tuplet 6/4 {f16 g8 f16 e16 f16} \tuplet 3/2 {a8 c'8 d'8} 
      | c'16 es'16 d'16 des'16 \tuplet 3/2 {c'8 bes8 a8} g16 f16 e16 g16 e16 f16 g16 a16 
      | c'8 f'8 r2. 
      | r8 a'16 bes'16~ \tuplet 5/4 {bes'16 f'16 des'16 c'16 bes16~} \tuplet 5/4 {bes16 es'16 c'16 des'16 f'16} \tuplet 6/4 {aes'16 c''16 b'16 bes'8.} 
      | r2 \tuplet 10/8 {des''16.\glissando  es''16. des''16 a'32 aes'32~} \tuplet 6/4 {aes'16 f'16 e'16 e'16 es'8~} 
      | es'8 c'8~ \tuplet 3/2 {c'8 c''8 a'8~} a'16 bes'16 g'8 a'8 f'8 
      | r4 a'16 aes'16 g'16 ges'16 \tuplet 6/4 {f'8 d'8 bes16 g16~} \tuplet 6/4 {g16 a8.^\markup{\left-align \small vib} c'16 e'16~} 
      \bar "||" \mark \default e'32 g'16. g'16. f'32 g'8 g'8 \tuplet 6/4 {f'16 g'4 f'16~} \tuplet 3/2 {f'8 g'8 bes'8~} 
      | \tuplet 6/4 {bes'16 f'8 f'8 es'16~} es'32 f'16. f'16. es'32 \tuplet 3/2 {f'4 es'8~} \tuplet 5/4 {es'16 aes'16 ges'16 f'16 es'16} 
      | des'16 b16 bes16 aes16 \tuplet 7/8 {g16 f16 e32 g32 bes32} des'16 bes16 b16 c'16~^\markup{\left-align \small vib} c'8 bes16 g16 
      | a8 c'16 c'16 g'16 es'16 f'16 d'16 \tuplet 5/4 {es'8 g16 gis16 a16} d'8.^\markup{\left-align \small vib} a16 
      | c'16 a16 bes16 c'16 a16 g16 f16 d16~ \tuplet 5/4 {d16 es16 f16 d16 c16} bes,8 bes8 
      | r2 des16 bes16 des'16 bes'16~ bes'16 c''16 des''16 c''16 
      | bes'8 a'8~^\markup{\left-align \small vib} \tuplet 6/4 {a'4~ a'16 c'16~} \tuplet 3/2 {c'8 bes8 a8} r4 
      | r4 a'16 bes'16 a'16 g'16 \tuplet 6/4 {fis'8 g'16 bes'16 e''16 f''16~} \tuplet 7/8 {f''16. es''16. d''32~} 
      | d''8 c''16 b'16~ \tuplet 6/4 {b'16 bes'8. b'16 c''16~} c''8 b'16 bes'16 a'8. a'32 bes'32~ 
      | \tuplet 3/2 {bes'8 a'8 aes'8} g'8 gis'16\glissando  a'16~ a'4. f'8~ 
      | \tuplet 6/4 {f'16 c'4 c'16~^\markup{\left-align \small vib}} c'4 r2 
      | r1 
      \bar "||" \mark \default r8. a'16~ a'8 bes'4 a'4 f'8 
      | \tuplet 3/2 {c'4 c'8~} c'8 r8 r2 
      | r8. f'16~ f'8 c'8 f'4 \tuplet 6/4 {c''8\glissando  d''8. c''16~} 
      | c''4 r2. 
      | \tuplet 10/8 {c'16. d'16. e'16 f'32 g'32} aes'8 c'16 d'16 e'16 f'16 g'16 aes'16~ \tuplet 6/4 {aes'16 c'16 cis'16 d'16 e'16 f'16} 
      | bes'8 bes'16 aes'16~ \tuplet 3/2 {aes'8 aes'8 c'8~} \tuplet 6/4 {c'16 g'16 aes'16 g'16 f'16 e'16} d'16 c'16 b16 bes16 
      | r4 r16 a16 g8 r4 d'8 c'8 
      | \tuplet 3/2 {a'8 g'8 b'8\glissando } cis''16 d''16 c''8 r2 
      | b'16 c''8. b'16\glissando  c''8. bes'16 b'16 bes'16 aes'16 \tuplet 3/2 {f'4 es'8} 
      | f'8. es'16 f'8. f'16~ \tuplet 3/2 {f'8 es'8 f'8} \tuplet 3/2 {aes'4 c'8} 
      | f'4 f'4 \tuplet 5/4 {aes'8 bes'16 aes'16 f'16} es'8 c'8 
      | b4 b8 bes8 \tuplet 3/2 {b8 bes8 aes8} f8. es16 
      \bar "||" \mark \default f4 r2.\bar  ".."
    }
    >>
>>    
}
