\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Stanley the Steamer"
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
      | r1 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | g1:7 | bes2:7 g2:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f2:7 s2 | bes2:7 g2:7 | c2:min f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f2:7 s2 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s2 s2 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f2:7 s2 | bes1:7 | c2:min7 f2:7 | bes1:7 | es2:7 e2:dim | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f2:7 s2 | bes2:7 g2:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s2 s2 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f2:7 s2 | bes2:7 g2:7 | c2:min f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f2:7 s2 | bes1:7 | c2:min7 f2:7 
      | bes1:7|
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


      \tempo 4 = 181
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 c'8 g4. 
      \bar "||" \mark \default bes4~ bes16 bes8 c'16~ \tuplet 6/4 {c'16 d'8 d'8 c'16} bes4~ 
      | bes16 es'8 f'16 g'4 f'8. bes'16~ bes'8 a'8 
      | bes'4 f'8. e'16~ e'8 f'8~ f'16 g'8 aes'16 
      | f'8 d'8~ \tuplet 6/4 {d'4 bes16 b16~} b16 g'8 f'16~ f'8 d'8 
      | es'8. bes16 r2 r8 c'8 
      | des'8 c'16 des'16~ des'16 f'8 e'16~ e'8 aes'8 \tuplet 3/2 {aes'8 bes'8\glissando  c''8} 
      | bes'4.^\markup{\left-align \small vib} r8 r2 
      | r4 a'8 g'8~ g'16 bes'8 g'16~ g'16 es'8 bes16~ 
      | bes8 d'8~ \tuplet 6/4 {d'4~ d'16 f'16~} f'8 r8 r8 d'8 
      | es'8 f'8 g'8 a'8 d''4~ d''16 f'8 bes'16 
      | r2 r16 aes'8 aes'16~ aes'16 g'8 g'16 
      | f'4.^\markup{\left-align \small vib} es'8 \tuplet 3/2 {cis'8\glissando  d'4} f'8 bes8~^\markup{\left-align \small vib} 
      \bar "||" \mark \default bes4 c'8 bes8 cis'8\glissando  d'8 \tuplet 3/2 {f'4 es'8~^\markup{\left-align \small vib}} 
      | es'4 f'8 es'8 \tuplet 3/2 {fis'8\glissando  g'8 bes8~} bes8 r8 
      | r8. a16 \tuplet 3/2 {c'4 bes8} cis'8\glissando  d'16 f'16~ f'16 g'8 aes'16~^\markup{\left-align \small vib} 
      | aes'4 g'8 ges'8 ges'8 bes8 r4 
      | r4 r8. bes16 es'4 bes16 es'8 g'16~ 
      | g'16 c''8 bes'16~ bes'16 g'8 es'16~^\markup{\left-align \small vib} es'4. r8 
      | r2 bes8. f16 bes8 d'8 
      | g'8 f'8 \tuplet 3/2 {d'4 bes8~} bes8 cis'8 d'4 
      | bes8. bes16 r2. 
      | c'8 d'8 es'8 f'8 cis'8\glissando  d'16 f'16 g'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4~ \tuplet 5/4 {bes'16 aes'16 bes'16 aes'16 f'16} \tuplet 3/2 {es'4 f'8~^\markup{\left-align \small vib}} f'4~ 
      | f'8 bes'4 aes'16 f'16~ \tuplet 6/4 {f'16 es'8 e'16 es'16 des'16~} \tuplet 3/2 {des'8 bes8 aes8} 
      \bar "||" \mark \default bes2^\markup{\left-align \small vib} g16 bes8. bes4 
      | r8 bes'8~ \tuplet 6/4 {bes'16 aes'8 bes'16 aes'16 f'16} es'16 f'16 es'16 des'16 bes8 aes8 
      | bes4.^\markup{\left-align \small vib} aes8 bes8 des'8 r4 
      | r8 bes'8 aes'16 bes'16 aes'16 f'16~ \tuplet 5/4 {f'16 es'16 f'16 es'16 des'16} bes8 aes8 
      | bes4 \tuplet 3/2 {bes4 bes8} des'4 des'8 des'8 
      | bes8 des'8 es'4 f'4.^\markup{\left-align \small vib} es'8~ 
      | es'16 cis'16\glissando  d'8 \tuplet 3/2 {bes4 bes8} c'4. g8 
      | \tuplet 3/2 {bes4 c'8} d'4~ \tuplet 6/4 {d'16 c'4 bes16} r4 
      | r8. bes4.^\markup{\left-align \small vib} g8 es16 r4 
      | r8 c'4.^\markup{\left-align \small vib} bes8 ges8 r4 
      | r8 cis'16 d'16~ d'4 bes8. g16~ g8. d'16\glissando  
      | es'4 c'8 a4 e'8\glissando  \tuplet 3/2 {f'4 es'8~} 
      \bar "||" \mark \default es'16 d'8 es'16 f'4 bes4^\markup{\left-align \small vib} r4 
      | r4 \tuplet 3/2 {c'8 d'8 es'8} g'16 a'16 bes'16 c''16 d''8 r8 
      | r4 r8 d''8 des''16 bes'8 f'16~^\markup{\left-align \small vib} f'4~ 
      | f'8. bes'16~ bes'16 aes'8 e'16~ e'16 g'8 f'16~ f'16 des'8 b16~ 
      | b16 bes8 g16~ g16 aes8 bes16~ bes16 g8 es16~ es8 f8~^\markup{\left-align \small vib} 
      | f4 r2. 
      | \tuplet 3/2 {r8 f8 e8} es16 f16 g16 a16 d'16 des'16 c'16 b16 \tuplet 3/2 {bes8 g8 es8} 
      | c4 \tuplet 6/4 {f8 e8 d16 e16~} e16 f16 g16 a16 b16 c'16 g8 
      | r4 r8 c8 \tuplet 3/2 {d8 es8 g8} \tuplet 3/2 {bes8 a8 g8~} 
      | \tuplet 3/2 {g8 g8 d'8} \tuplet 3/2 {des'8 c'8 b8} bes8 r8 r4 
      | e'8 f'4 es'8 \tuplet 3/2 {d'8 es'4} f'8 r8 
      | r4 r8. bes16 cis'8 d'8 \tuplet 3/2 {f'8 cis'8 d'8} 
      \bar "||" \mark \default f'8 bes8 bes2^\markup{\left-align \small vib} cis'16 d'16 f'16 g'16 
      | bes'4 bes'8 r8 r8. bes16 \tuplet 3/2 {cis'8 d'8 f'8} 
      | bes4 bes4^\markup{\left-align \small vib} r4 r8 f'8 
      | bes'8 bes'8~ bes'16 aes'8 aes'16~ aes'16 g'8 g'16~ g'16 f'8 f'16~ 
      | \tuplet 6/4 {f'16 es'4 es'16~} es'2 es'8 g'16 c''16 
      | bes'4 c''4 bes'4 c''8 r8 
      | r4 r8 b'8 \tuplet 3/2 {des''4 bes'8~} bes'8 aes'8 
      | f'8 es'8 des'8 bes8 gis4 gis4 
      | bes8. bes16~ bes8 r8 r4 r8. bes16~ 
      | bes16 cis'8 d'16~ d'16 es'8 e'16~ e'16 f'8 a16~ a16 cis'16\glissando  d'8 
      | bes4~ bes16 c'8 a16 cis'8 d'8 f'8. es'16~^\markup{\left-align \small vib} 
      | es'4 f'8 es'8 \tuplet 3/2 {fis'8 g'8 bes'8~} bes'16 c''8 des''16~ 
      \bar "||" \mark \default des''4 c''8 b'8 \tuplet 3/2 {bes'4 f'8} r4 
      | r8 aes'8 g'8 ges'8~ \tuplet 6/4 {ges'16 f'4 bes16~} bes8. des'16~^\markup{\left-align \small vib} 
      | des'4 c'8 b8~ b16 bes8 c'16~ c'16 d'8 es'16 
      | f'4 \tuplet 3/2 {d'8 es'8 f'8} es'16 d'8 ges16 aes4 
      | g8 r8 r2 \tuplet 3/2 {r8 bes,8 es8} 
      | g4. \tuplet 6/4 {des8 f16~} f8 aes8 ges8 b16 des'16~ 
      | des'4 r2 b8 es'8 
      | ges'4 b8 d'8 g'4~ \tuplet 3/2 {g'8 d'8 f'8~} 
      | f'16 d'8 es'16~ es'16 g'8 bes'16~ bes'8 d''8 d''8 d''8 
      | r1 
      | r8 bes8~ bes8. c'16 d'16 bes'8 bes'16~ bes'8 bes'8~ 
      | bes'8 r8 r2. 
      \bar "||" \mark \default \tuplet 3/2 {bes'8 bes'4} \tuplet 3/2 {bes'8 bes'4} bes'8 bes'8 bes'8 bes'8 
      | bes'8 bes'8 bes'8 bes'8 bes'8 bes'8~ bes'16 bes'16 bes'8 
      | e''8 f''8~ f''2~ f''8 es''8 
      | \tuplet 3/2 {d''8 es''4} f''4 r4 r8 bes'8~ 
      | bes'16 e''8 es''16~ es''8 des''8 bes'2~^\markup{\left-align \small vib} 
      | bes'4 \tuplet 3/2 {e''8 es''8 des''8} bes'4. aes'8 
      | f'4 f'8\glissando  e'8 r2 
      | r8. d'16 es'8 f'16 bes'16~ bes'16 d'16 f'16 e'16 es'8 cis'8 
      | bes4 ges'4 bes16 cis'16 d'8 f'8. bes'16~^\markup{\left-align \small vib} 
      | bes'4~ bes'16 g'8 es'16 d'4~ \tuplet 6/4 {d'16 f'4 a16\glissando } 
      | bes4 c'8 bes8 cis'16 d'8. g4 
      | r4 r8. g16~ g4 g4 
      \bar "||" \mark \default g4 r2 \tuplet 3/2 {g8 g4} 
      | g4 r2 \tuplet 3/2 {g8 g4} 
      | g2^\markup{\left-align \small vib} r2 
      | \tuplet 6/4 {d8 es8 f16 g16~} \tuplet 6/4 {g16 aes16 g8 f16 es16} d8 f16 aes16 b8 r8 
      | r2. \tuplet 6/4 {r16 fis16 g8 fis16 g16~} 
      | \tuplet 6/4 {g16 bes8 fis16 g16 bes16~} bes16 g16 ges16 f16 es8 r8 r4 
      | bes,8 c16 f16~ \tuplet 5/4 {f16 cis16 d16 es16 aes16~} aes16 ges8 aes16 bes16 des'16 bes16 des'16 
      | es'16 ges'16 e'8 r4 \tuplet 3/2 {r8 es8 g8} gis16 b16 gis16 b16 
      | d'16 e'16 d'8 r2 r8 bes'8~ 
      | bes'8. d'16~ d'16 es'8 f'16~ f'8 g'8 bes'8 a'8 
      | g'8 f'4 c'16 es'16~ es'8 d'16 des'16~ des'16 c'8 b16 
      | bes8 r8 r8. cis'16 d'8. f'16 g'4 
      \bar "||" \mark \default bes'8 bes'8 bes'8 bes'8 aes'4 \tuplet 3/2 {f'4 bes'8~} 
      | bes'8 aes'8 f'8. f'16~ f'8 r8 r4 
      | r8. bes16~ bes8 des'4 f'4 bes'8~ 
      | bes'8 des''8~ des''8.\glissando  f''16~ f''2~ 
      | f''4. r8 r2 
      | r8 e''8 r2. 
      | r8 b''16 c'''16~ c'''8 e''8 es''4. des''8 
      | bes'4.^\markup{\left-align \small vib} des''4 bes'8 cis''8 es''8 
      | \tuplet 3/2 {es''8\glissando  e''8 es''8~} es''4. r8 r4 
      | r4 e''16 es''8 des''16 bes'4.^\markup{\left-align \small vib} aes'8~ 
      | aes'16 f'8 aes'16 r2. 
      | r2 c''8\glissando  des''4 bes'8 
      \bar "||" \mark \default \tuplet 3/2 {des''8 bes'8 des''8} bes'2 aes'8. aes'16~ 
      | aes'8 f'4.^\markup{\left-align \small vib} \tuplet 3/2 {es'8 des'8 es'8} bes4~^\markup{\left-align \small vib} 
      | bes4~ bes16 aes16 f16 aes16 f4.. aes16 
      | c'16 es'16 g'16 d'16~ \tuplet 6/4 {d'4 f'16 aes'16} c''16 bes'8. r4 
      | r8 es''4. des''4 bes'8. es''16~ 
      | \tuplet 3/2 {es''8 des''8 bes'8~} bes'16 aes'8 ges'16~ ges'16 es'8 f'16~ f'8 r8 
      | r8. es'16~ es'8 f'8~^\markup{\left-align \small vib} f'16 es'8 des'16 bes4~ 
      | \tuplet 3/2 {bes8 c'8 des'8~} des'16 c'8 bes16~ \tuplet 6/4 {bes8 a8. f16~} f8 r8 
      | r2. r8. c'16~ 
      | \tuplet 3/2 {c'8 d'8 es'8} \tuplet 6/4 {g'8 bes'16 a'8 g'16} \tuplet 3/2 {f'8 e'8 es'8} \tuplet 3/2 {d'8 c'8 bes8} 
      | a8 r8 r2 r8 e'8 
      | f'8 r8 r2. 
      \bar "||" \mark \default e'8 f'8~ f'16 f'8 f'16~ \tuplet 6/4 {f'16 e'4 f'16~} f'16 f'8 f'16~ 
      | f'16 e'8 f'16~ f'16 f'8 f'16 e'8\glissando  f'8 f'8 f'8 
      | e'8 f'8 f'8 f'8 e'8 f'8 \tuplet 3/2 {f'4 f'8~} 
      | f'8 bes'8 es'8 e'8 es'2^\markup{\left-align \small vib} 
      | des'8 bes8 bes8 r8 r2 
      | r8. bes16 cis'8 d'8 \tuplet 3/2 {f'8 cis'8 d'8} \tuplet 3/2 {f'8 cis'8 d'8} 
      | \tuplet 3/2 {f'4 a8\glissando } bes4 g'4 f'4~ 
      | f'8 r8 r2. 
      | c'8 es'8~ es'16 d'8 c'16 f'4 c'8 es'8 
      | \tuplet 3/2 {d'4 c'8} f'4 c'8 es'8 d'8 c'8 
      | \tuplet 3/2 {f'4 f'8~} f'16 f'8 f'16~ f'16 cis'16\glissando  d'8 d'8 r8 
      | r1 
      \bar "||" \mark \default r8 bes'4 a'4 g'4. 
      | bes'4 f'4 f'4.^\markup{\left-align \small vib} es'8 
      | d'4 d'4 c'4 c'4 
      | bes8 c'8 d'8 es'8 f'8 r8 \tuplet 6/4 {r4 f'16 es'16} 
      | des'8. bes16~^\markup{\left-align \small vib} bes4 r2 
      | r8 g16 bes16 des'16 f'16 a'16 des''16 a'4 c''8 e'8\glissando  
      | f'4 r2. 
      | r16 e''16 d''16 c''16 aes'16 f'8. \tuplet 6/4 {es''4 bes'16 gis'16} e'8 es'8~^\markup{\left-align \small vib} 
      | es'4~ es'16 g'16 bes'16 cis''16 \tuplet 3/2 {d''4 c''8~} c''8 r8 
      | \tuplet 6/4 {r4 e''16\glissando  f''16~} f''4 d''8 c''8~ \tuplet 5/4 {c''8 a'8 c''16~} 
      | c''8 bes'8 f'4 r4 r8 fis'8\glissando  
      | g'8 aes'8 g'8 ges'8 f'8. bes16~ bes16 cis'16\glissando  d'8 
      \bar "||" bes4 bes4 r2\bar  ".."
    }
    >>
>>    
}
