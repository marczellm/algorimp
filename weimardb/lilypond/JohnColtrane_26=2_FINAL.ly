\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "26-2"
  composer = "John Coltrane"
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
      
      | r1 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d2:min7 g2:7 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f1:maj | c2:min7 f2:7 | e2:min7 a2:7 | d2:maj f2:7 | bes1:maj | es1:min7 | aes1:7 | des1:maj 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f2:maj c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d2:min7 g2:7 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f1:maj | c2:min7 f2:7 | e2:min7 a2:7 | d2:maj f2:7 | bes1:maj | es1:min7 | aes1:7 | des1:maj 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f2:maj c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d2:min7 g2:7 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f1:maj | c2:min7 f2:7 | e2:min7 a2:7 | d2:maj f2:7 | bes1:maj | es1:min7 | aes1:7 | des1:maj 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f2:maj c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d2:min7 g2:7 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f1:maj | c2:min7 f2:7 | e2:min7 a2:7 | d2:maj f2:7 | bes1:maj | es1:min7 | aes1:7 | des1:maj 
      | g2:min7 c2:7 | f2:maj aes2:7 | des2:maj e2:7 | a2:maj c2:7 | c2:min7 f2:7 | bes2:maj aes2:7 | des2:maj e2:7/fis | a2:maj c2:7 
      | f2:maj c2:7 | r1|
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


      \tempo 4 = 195
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      \bar "||" \mark \default bes'16\glissando  c''8.~ c''4 bes'4 c''8. aes'16~ 
      | aes'2 fis'4 gis'4 
      | e'2 d'4 \tuplet 3/2 {e'4 c'8~} 
      | c'8 r8 r4 r8 a'8 g'8 es'8 
      | \tuplet 3/2 {c'8 bes4~} bes8. f'16 es'4 b8. des'16 
      | bes8 r8 r8. bes'16~ bes'16 a'8 aes'16 \tuplet 3/2 {g'4 b'8~} 
      | b'16 a'8 f'16~ \tuplet 6/4 {f'16 d'4 b16~} b8 r8 r8 a'8~^\markup{\left-align \small vib} 
      | a'4. e'8 \tuplet 3/2 {c'4 bes8} r4 
      \bar "||" r4 r16 a'8 c''16 aes'8 ges'8 es'8. b16 
      | \tuplet 3/2 {f'4 des'8} f'4 d'8 d'8 b4 
      | e'4 \tuplet 3/2 {cis'4 e'8} \tuplet 3/2 {c'4 b8} bes8 c'8 
      | a8 f8 \tuplet 3/2 {g4 es8~} es8 r8 r4 
      | r4 r16 f'8 bes'16~ bes'16 es'8 ges'16~ ges'4~ 
      | ges'16 aes'8 f'16 des'4 aes16 d'8.~ d'16 b8 gis16~ 
      | gis16 a8 b16 cis'8 d'8 bes4 \tuplet 3/2 {c'4 a8~^\markup{\left-align \small vib}} 
      | a2 g8. f16~ f8 r8 
      \bar "||" r2 r8. c'16~ \tuplet 6/4 {c'8 es'8 ges'16 a'16~} 
      | a'8 e'8~ e'8. a'16~ \tuplet 6/4 {a'16 b'8. cis''16\glissando  d''16~} d''16 cis''8 b'16~ 
      | b'16 a'8 g'16~ g'16 fis'8 a'16 \tuplet 3/2 {es'4 f'8~} f'16 a'8 d''16 
      | bes'4.. c''16 bes'4 bes'4 
      | r4 \tuplet 6/4 {r4 b'16 c''16~} c''4.. bes'16 
      | c''8 es''4. \tuplet 3/2 {c''4\bendAfter #+4  b'8} c''4 
      | aes'4.^\markup{\left-align \small vib} f'8 c'8. bes16 r4 
      | r4 r8 b'8\glissando  es''4.^\markup{\left-align \small vib} des''8 
      \bar "||" \tuplet 3/2 {c''4 a'8~} a'16 bes'8 aes'16~ aes'4.. ges'16~ 
      | ges'16 f'8 es'16 des'4 a16 d'8 d'16 b8 fis8 
      | e'4 \tuplet 3/2 {a'4 cis''8} \tuplet 3/2 {a'4 bes'8~} bes'4~ 
      | bes'8 c''8 \tuplet 3/2 {a'4 g'8} f'8 e'8 \tuplet 3/2 {es'4 f'8~} 
      | f'16 cis'16 d'8 bes4 aes4~ aes16 ges8 f16~ 
      | f8 r8 r4 r8. d'16~ d'8 b8~ 
      | b8 cis'8 e'4 c'4~ c'16 bes8 c'16~ 
      | c'8 r8 r4 r8 gis'8\glissando  \tuplet 6/4 {a'4~ a'16 c'16} 
      \bar "||" \mark \default f'4 \tuplet 3/2 {a'4 aes'8~} aes'4 ges'4 
      | f'4 aes'4 e'4 d'4 
      | cis'4 e'4 c'4 a'8. f'16~ 
      | f'8 r8 r2 \tuplet 3/2 {g'4 es'8} 
      | f'8 r8 r8. f'16 es'4~ es'16 b8 des'16~ 
      | des'16 bes8 ges16~ ges8. fis16~^\markup{\left-align \small vib} fis2 
      | g4 f8 r8 r2 
      | r8. g16~ g16 e8 a,16 r2 
      \bar "||" r4 r8. c'16~ c'16 bes8 ges16~ ges8. aes16 
      | f8 r8 r4 r16 cis'8 d'16 b4 
      | a4~ a16 cis'8 e'16~ e'16 e'16 aes'16 ges'16 aes'16 d'8 g'16 
      | e'8 f'8~ f'16 g'8 a'16~ \tuplet 3/2 {a'8 f'8 e'8} es'8 f'8 
      | d'8 c'8 bes4 aes4 \tuplet 3/2 {ges4 f8~} 
      | f4 des'8. aes16~ \tuplet 6/4 {aes4~ aes16 cis'16~} cis'4 
      | a8 r8 r8. a16~ a8 g8 c'8 a8~^\markup{\left-align \small vib} 
      | a2 g8 f8 r4 
      \bar "||" r4 r8. bes'16 \tuplet 3/2 {c''8 d''4} des''16 bes'16 g'16 dis'16~ 
      | dis'4 e'8 fis'16 a'16 cis''8 d''8 \tuplet 3/2 {cis''4 b'8~} 
      | b'16 a'8 g'16~ g'16 fis'8 a'16 \tuplet 3/2 {es'4 f'8~} f'16 a'8 c''16 
      | bes'4..^\markup{\left-align \small vib} f'16~ f'8 d'8 r4 
      | r4 r8 bes'8~^\markup{\left-align \small vib} bes'2 
      | \tuplet 3/2 {aes'8 ges'8 es'8} des'8 bes8 f'8 des'8 bes8 ges8 
      | f8 es8 r4 \tuplet 3/2 {aes4 f8} dis4 
      | \tuplet 3/2 {e8\glissando  f4} \tuplet 3/2 {aes4 e8~} e8 c'4 r8 
      \bar "||" r2 r16 a'8 aes'16~ aes'4~ 
      | aes'8 f'4. e'4 e'4 
      | cis'4 e'4 c'4 a'8. f'16~ 
      | \tuplet 6/4 {f'4~ f'16 g'16~} g'8 es'4 r8 r4 
      | r2 \tuplet 3/2 {aes'4 ges'8} es'8 aes'8 
      | f'4 des'8. aes16 \tuplet 6/4 {d'4~ d'16 b16~} b4 
      | e'4 cis'8 e'8 c'4 a'8. f'16~ 
      | f'8 r8 r4 r8 a'4. 
      \bar "||" \mark \default \tuplet 3/2 {c''4 c''8~} c''16 a'8 c''16 aes'8 g'8 \tuplet 3/2 {ges'4 aes'8} 
      | f'4 aes'8 bes'8 gis'4 fis'8 gis'8 
      | e'8 d'8 \tuplet 3/2 {cis'4 e'8} \tuplet 3/2 {c'4 d'8} \tuplet 3/2 {e'4 g'8} 
      | e'4 f'8. es'16~ es'8 f'4 cis'16 d'16~ 
      | d'4 bes4 aes8 es'8 b8 des'8~ 
      | des'8. bes16~ bes8 fis8 r2 
      | \tuplet 3/2 {r8 g8 a8} b16 c'16 d'16 e'16 f'16 g'16 a'16 g'16 \tuplet 6/4 {f'16 e'16 d'8 c'16 bes16~} 
      | bes8 r8 r8 a'8~^\markup{\left-align \small vib} a'2 
      \bar "||" a'8 c''8 bes'8 ges'8 r4 r8 bes'8 
      | aes'8 des''4. \tuplet 3/2 {b'4 e'8} r4 
      | r4 \tuplet 3/2 {a'4 cis''8~} \tuplet 6/4 {cis''16 bes'4 e'16~} e'8 c''8 
      | a'4 f'8 es'4 g'8 f'8 e'8 
      | \tuplet 3/2 {es'4 f'8} d'8 f'8 es'8 des'8 \tuplet 3/2 {bes4 ges8} 
      | \tuplet 3/2 {f4 f8} r4 d'4 b4 
      | a8 r8 r8. a16 c'4 \tuplet 3/2 {bes4 a8~} 
      | a4 f'4 r2 
      \bar "||" r8. bes'16~ \tuplet 6/4 {bes'8 a'8. g'16} f'4. ges'8 
      | \tuplet 3/2 {e'4 d'8} des'8 c'8~ c'16 b8 bes16~ bes16 a8 aes16~ 
      | aes16 g8 b16 \tuplet 3/2 {a4 g8} ges8 a8 f8 es8 
      | d4 a8. bes16~^\markup{\left-align \small vib} bes4 r4 
      | r8. d'16~ d'16 f'16 es'8 f'8 ges'8 aes'16 bes'8 des''16~ 
      | des''16 c''8 des''4. bes'8 c''16~ c''4 
      | aes'8 es'4 r8 r2 
      | r8 c''16 es''16~ es''2~ es''8 es''16 des''16 
      \bar "||" c''2 es''4. c''8~ 
      | c''4 aes'8 des''8~ des''16 b'8 gis'16~ gis'8 b'8 
      | gis'8 e'8 cis'8. fis'16 g'4~ \tuplet 6/4 {g'16 g'8. bes'16 d''16~} 
      | d''16 des''16 c''8~ c''16 a'8 es'16~ es'8 r8 r4 
      | r8 bes'8~ bes'4~ bes'16 bes'8 ges'16~ ges'16 es'8 b16 
      | \tuplet 3/2 {f'4 aes'8} des''8 b'8~^\markup{\left-align \small vib} b'2 
      | a'8 gis'16 cis'16~ cis'8 r8 r4 r8 gis'16\glissando  a'16~ 
      | a'8 c'4 r8 r4 r8 a'8~ 
      \bar "||" \mark \default a'8 bes'4 b'8 \tuplet 3/2 {c''4 ges'8~} ges'8 c''8~ 
      | c''16 aes'8 f'16~ f'8 r8 r8 d'8 \tuplet 3/2 {fis'8 a'8 b'8} 
      | g'8 a'16 dis'16 \tuplet 3/2 {f'8 g'8 a'8} g'4.. a'16~ 
      | a'4 g'16 e'16 es'16 d'16~ d'16 c'16 bes16 a16 g16 f16 es16 des16 
      | bes,4 r4 r8. g16~ g16 aes16 b16 des'16 
      | es'16 ges'16 aes'16 b'16 des''4~ \tuplet 6/4 {des''16 b'16 bes'16 gis'8 fis'16~} fis'8 r8 
      | r8. a16~ \tuplet 5/4 {a16 b16 cis'16 d'16 e'16} \tuplet 6/4 {d'16 dis'16 e'16 f'16 g'16 a'16} \tuplet 6/4 {b'16 a'16 g'16 f'16 d'16 c'16} 
      | \tuplet 3/2 {b8 a8 g8} r4 \tuplet 6/4 {r8 gis16 a16 c'16 cis'16} d'16 f'32 e'16. f'32 g'32 
      \bar "||" fis'16 g'16 aes'16 e'16~ \tuplet 6/4 {e'16 f'16 g'16 f'16 g'16 a'16} \tuplet 3/2 {c''8 aes'4} r4 
      | r8 aes'4 f'8 des'8. gis'16~ gis'16 d'8 fis'16 
      | e'4~ e'16 cis'8 e'16 d'16 c'8 d'16 e'8 g'8 
      | f'8 e'8 \tuplet 6/4 {es'8. f'16 e'16 cis'16} d'8 c'8 a4 
      | bes2~^\markup{\left-align \small vib} \tuplet 6/4 {bes16 aes8 ges8 es16~} es8 b,8 
      | \tuplet 3/2 {f4 aes8~^\markup{\left-align \small vib}} aes8 r8 r2 
      | r2 r8 c'8 \tuplet 3/2 {d'4 g'8} 
      | g'4~ \tuplet 6/4 {g'8 f'16 a'16 c''16 a'16~} a'8 f'8 r4 
      \bar "||" a'4 bes'8 b'8 \tuplet 3/2 {c''4 b'8} es'8 g'8 
      | gis'4~ gis'16 e'16 fis'16 gis'16 a'16 b'16 cis''4 a'8 
      | cis''4 \tuplet 3/2 {a'4 c''8} a'4 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} 
      | f'4. d'8 \tuplet 3/2 {c'4 bes8} r4 
      | r8. a'16 bes'4 bes'2 
      | bes'4 ges'4 es'4~ es'16 c'8 des'16~^\markup{\left-align \small vib} 
      | des'4.. aes'16 \tuplet 3/2 {c'4 bes8} r4 
      | r2 r8 b'16 c''16~ c''8 c''8 
      \bar "||" a'8 c''4. aes'4 ges'8. es'16 
      | f'8 r8 r4 d'4 fis'8 gis'8 
      | e'8 r8 r2. 
      | \tuplet 3/2 {a'4 g'8} \tuplet 3/2 {f'4 e'8} \tuplet 3/2 {es'4 f'8} d'8 c'8 
      | bes8 r8 r8. f'16 es'8 des'8 \tuplet 3/2 {bes4 ges8} 
      | f4~ f16 aes8 d'16~ d'16 b8 a16~ a8 gis8~ 
      | gis16 a8 b16 cis'8 d'8 bes8 c'8 r4 
      | \tuplet 3/2 {a'4 f'8} d'4 f'2 
      \bar "||" \tuplet 3/2 {f'4 f8} r2.\bar  ".."
    }
    >>
>>    
}
