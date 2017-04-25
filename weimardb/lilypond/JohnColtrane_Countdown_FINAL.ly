\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Countdown"
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
      
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:maj g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7 | bes1:maj | es1:7 
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:maj g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7 | bes1:maj | es1:7 
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:7 g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7 | bes1:maj | es1:7 
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:maj g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7 | bes1:maj | es1:7 
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:maj g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7 | bes1:maj | es1:7 
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:maj g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7 | bes1:maj | es1:maj 
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:maj g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7 | bes1:maj | es1:7 
      | e2:min7 f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj | d2:min7 es2:7 | aes2:maj b2:7 | e2:maj g2:7 | c1:maj 
      | c2:min7 des2:7 | ges2:maj a2:7 | d2:maj f2:7 | bes1:maj | e1:7 | f1:7|
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


      \tempo 4 = 338
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r16 e'8 fis'16 g'8 a'8 f'8 e'8 es'8 f'8 
      | d'8 c'16 bes16 g8 es'8 b8 aes4 des'8 
      | bes8 fis8 g8 bes8 \tuplet 3/2 {a8 aes4} g8 b8 
      | a16 fis8 e16 d8 fis8 g8 a4 b8 
      | d8 e8 \tuplet 3/2 {f8 g4} \tuplet 3/2 {es8 d4} des8 es8 
      | \tuplet 3/2 {c8 es8 aes8} c'4 b8 cis'8 es'8 fis'8 
      | e'8 fis'8 gis'8 b'8 g'8 fis'16 e'16~ e'16 d'8 c'16~ 
      | c'8 d'8 e'8 g'8 c''8 c'8 r4 
      | r4 g'8 f'8 es'8 b8 aes8 des'8 
      | bes8 des'8 \tuplet 3/2 {f'8 ges'8 bes'8~} bes'16 a'16 aes'16 g'16~ g'8 b'8 
      | a'16 fis'8 e'16 d'8 f'4 a'4 g'8 
      | f'8 es'8 d'8 c'8 bes8 c'8 d'8 f'8 
      | a'4 c''4 a'4. c''8 
      | a'4. c''8 a'4. g'8 
      | f'8 d'4 r8 r2 
      | \tuplet 3/2 {aes'8 bes'4~} bes'16 a'16 g'8 f'8 des'8 \tuplet 3/2 {bes8 g8 f8} 
      \bar "||" \mark \default e'8 g'4 a'8 \tuplet 3/2 {f'8 e'8 es'8~} es'16 f'8 d'16~ 
      | d'8 r8 r4 d'8 b8 aes8 des'8 
      | bes8 fis8 g8 bes8 a8 aes8 g8 b8 
      | \tuplet 3/2 {a8 gis8 fis8} \tuplet 3/2 {e8 d8 fis8} g8 a8 r4 
      | r4 des8 ges8 es8 d8 des8 es8 
      | c8 es8 aes8 c'8 bes8 cis'8 es'8 fis'8 
      | e'8 fis'8 gis'8 b'8 \tuplet 3/2 {g'8 f'8 e'8} d'8 c'8 
      | d'8 e'8 g'8 c''4 c''8 r4 
      | r8 c'8 es'16 g'16 ges'16 es'16~ \tuplet 3/2 {es'8 b8 aes8~} aes8 des'8 
      | bes8 des'8 ges'8 a'8 \tuplet 3/2 {bes'8 a'8 aes'8} g'8 b'8 
      | a'8 fis'8 e'8 d'8 f'4 a'8 g'8 
      | f'8 es'8 d'8 c'8 bes8 c'8 \tuplet 3/2 {d'8 f'8 c''8~} 
      | c''4. a'4 g'8 a'8 g'8 
      | f'16 e'8 es'16~ es'8 d'8 c'8 es'8 d'8 c'8 
      | bes8 c'8 \tuplet 3/2 {d'8 f'4} des'8 es'8 \tuplet 3/2 {f'8\glissando  g'8 es''8~} 
      | es''4~ \tuplet 6/4 {es''8 c''8 b'16 g'16~} \tuplet 3/2 {g'8 f'8 des'8} r4 
      \bar "||" \mark \default r8 e'8 g'8 b'8 es'8 f'8 a'8 b'8 
      | bes'8 r8 r4 es'8 b8 aes8 des'8 
      | bes8 des'8 es'16 f'16 ges'16 bes'16 a'8 aes'8 g'8 b'8 
      | a'8 fis'8 e'8 d'16 fis'16~ fis'8 g'8 a'8 r8 
      | r4 \tuplet 3/2 {aes'8 g'8 es'8} d'8 des'8~ des'16 es'8 des'16~ 
      | des'8 r8 r4 aes'8 g'8 fis'8 r8 
      | r2 d''4 \tuplet 3/2 {des''8 c''8 b'8} 
      | g'8 a'8 b'8 g'8 e'8 d'8 c'8 g'8 
      | c'8 es'8 g'8 es'8 \tuplet 3/2 {b8 aes4} des'8 bes8 
      | r4 a'8 aes'8 g'8 b'8 a'16 g'16 fis'16 e'16~ 
      | e'8 d'8 f'4 a'8 g'8 f'16 es'8 d'16 
      | \tuplet 3/2 {c'4 bes8~} bes16 c'8\glissando  f'16~ f'8 aes'8 f'8 d'8 
      | a4. e8~ e16 g8 ges16~ \tuplet 3/2 {ges8 f8 e8} 
      | es8 d8 c8 r8 r2 
      | c8 es8 des8 c8 bes,8 c8 \tuplet 3/2 {d8 f8 des8} 
      | es4 f16 g8 e16~ e16 fis8 g16~ g16 a8 es16 
      \bar "||" \mark \default \tuplet 3/2 {f4 g8} a8 bes8 c'8 d'8 f'16 b8 des'16~ 
      | \tuplet 3/2 {des'8 es'8 f'8} ges'8 aes'8 bes'8 des''8 a'8 g'8 
      | ges'8 e'8 d'16 e'8 ges'16~ ges'16 a'16 d''8 a'8 r8 
      | r4 g'8 f'8 cis'8 es'8 f'8 g'8 
      | \tuplet 3/2 {a'8 aes'8 es'8} c'4 b16 des'8 es'16~ \tuplet 3/2 {es'8 ges'8 e'8~} 
      | e'8 ges'8 \tuplet 3/2 {aes'8 b'8 g'8~} g'8 e'8 \tuplet 3/2 {d'4 c'8} 
      | d'4 e'16 g'8 c''16 b'16 c'8. r4 
      | r8 g'8 f'8 es'8 b8 gis8 cis'8 bes8 
      | cis'8 f'8 g'16 bes'8 a'16 aes'8 g'8 b'8 a'8 
      | \tuplet 3/2 {ges'8 e'4} \tuplet 3/2 {d'8 f'4} \tuplet 3/2 {a'4 g'8} f'8 es'8 
      | \tuplet 3/2 {d'8 c'8 g8~} g16 bes16 c'8 es'16 f'16 aes'16 bes'16 c''4~ 
      | c''8 a'8 c''4 a'4~ a'16 g'16 a'16 g'16 
      | f'8 e'8 es'8 f'8 d'8 f'8 \tuplet 3/2 {g'8 a'8 c''8~} 
      | c''8 bes'8 r2 r8 a'8~^\markup{\left-align \small vib} 
      | a'4~ \tuplet 3/2 {a'8 es'8 e'8~} \tuplet 3/2 {e'8 fis'8 g'8~} g'16 a'8 es'16~ 
      | es'16 f'8 g'16~ g'16 a'8 bes'16~ bes'16 f'8 d'16~ d'8 ges16 aes16 
      \bar "||" \mark \default \tuplet 3/2 {es'4 b8} \tuplet 3/2 {fis'8 cis'8 bes8~} bes8 r8 r8. a'16~ 
      | a'16 aes'8 g'16 g'8 b'8 \tuplet 3/2 {a'8 ges'4} \tuplet 3/2 {e'8 d'8 fis'8} 
      | g'8 a'16 b'16~ \tuplet 3/2 {b'8 a8 e'8~} e'8 g'8 g'16 cis'8 es'16~ 
      | es'16 f'16 g'16 a'16 g'8 es'8 c'4 cis'8 d'8 
      | \tuplet 3/2 {es'8 ges'4} es'8 ges'8 aes'16 b'8 g'16~ \tuplet 3/2 {g'8 f'8 e'8} 
      | d'8 c'8 r2. 
      | r4 g'8 f'16 es'16~ es'16 b8 gis16~ gis8 cis'8 
      | bes8 fis8 bes8 a8 aes8 g8 b8 bes8 
      | fis4 \tuplet 3/2 {e8 d4} \tuplet 3/2 {f8 g8 a8~} a8 c'8 
      | bes8 c'8 \tuplet 3/2 {d'8 ges'8 bes'8~} \tuplet 3/2 {bes'8 f'8 d'8~} \tuplet 3/2 {d'8 bes8 e'8~} 
      | e'4 fis'8 g'4 r8 r4 
      | g'8 c''16 a'16~ a'16 g'8 f'16 e'8 es'8 f'8 d'8~ 
      | d'16 f'16 g'8 \tuplet 3/2 {a'8 c''8 bes'8} a'8 c''8~ c''16 g'16 f'8 
      | \tuplet 3/2 {cis'4 bes8} es'8 r8 r4 \tuplet 3/2 {r8 es8 g8~} 
      | g16 bes8 es16~ es8 a8 c'4 \tuplet 3/2 {bes8 c'8 d'8} 
      | \tuplet 3/2 {f'4 es'8} \tuplet 3/2 {des'8 aes4} \tuplet 3/2 {c'8 bes4~} bes8 g8 
      \bar "||" \mark \default \tuplet 3/2 {bes8 a8 gis8~} gis8 gis8 \tuplet 3/2 {a4 cis'8} \tuplet 3/2 {d'8 e'8 es'8} 
      | \tuplet 3/2 {cis'8 d'8 e'8~} e'16 ges'16 a'16 aes'16~ aes'16 e'8 f'16 g'8 des'8 
      | es'4 f'8. g'16 bes'16 g'8 es'16~ es'8 c'8 
      | b8 cis'8 es'8 fis'8 e'8 fis'8 \tuplet 3/2 {gis'8 b'4} 
      | g'8 f'8 e'8 d'8 c'8. e'16~ \tuplet 3/2 {e'8 g'8 c''8} 
      | r2. g'8 f'8 
      | es'8 b8 \tuplet 3/2 {gis8 cis'8 bes8~} bes8 cis'8 bes'4 
      | \tuplet 3/2 {a'8 aes'8 g'8~} \tuplet 3/2 {g'8 bes'8 a'8} fis'4 \tuplet 3/2 {e'8 d'8 f'8~} 
      | f'8 g'8 \tuplet 3/2 {aes'8 g'8 f'8~} f'16 es'8 d'16~ d'16 c'8 bes16 
      | \tuplet 3/2 {c'4 d'8} f'8 a'8 c''8 a'8 r4 
      | r4 r8 gis'8 \tuplet 3/2 {a'8 bes'8 a'8~} a'8 g'8 
      | \tuplet 3/2 {f'8 es'8 d'8} c'8 a8 \tuplet 3/2 {c'4 d'8} \tuplet 3/2 {f'4 des'8} 
      | \tuplet 3/2 {es'4 f'8\bendAfter #+4 } es''4. c''4 g'8 
      | f'8 des'8 bes8. e'16~ \tuplet 3/2 {e'8 fis'8 g'8} a'8 es'8~ 
      | \tuplet 3/2 {es'8 f'8 g'8~} \tuplet 3/2 {g'8 a'8 bes'8} r4 r8 es'8~ 
      | \tuplet 3/2 {es'8 b8 aes8~} aes8 des'8 bes8 des'8 ges'8 bes'8 
      \bar "||" \mark \default a'8 aes'8 g'8 b'8 a'8 ges'8 \tuplet 3/2 {e'8 d'8 fis'8~} 
      | fis'16 g'8 a'16~ a'16 b'8 d'16~ d'8 es'8 f'8 ges'8 
      | \tuplet 3/2 {es'8 d'4} des'8 es'8 c'8 es'8 \tuplet 3/2 {gis'8 c''8 b'8} 
      | a'8 gis'4 fis'8 \tuplet 3/2 {e'8 fis'4} gis'16 b'8 g'16~ 
      | \tuplet 3/2 {g'8 f'8 e'8~} e'16 d'8 c'16 d'8 e'8 g'8 c''8 
      | b'8 a'8 \tuplet 3/2 {aes'4 g'8~} \tuplet 3/2 {g'8 es'8 d'8} c'8 es'8~ 
      | es'16 b8 gis16~ \tuplet 3/2 {gis8 cis'8 bes8} r2 
      | a'16 aes'8 g'16~ \tuplet 3/2 {g'8 b'8 a'8~} a'16 g'16 fis'8 e'8 d'8 
      | f'4 a'8 g'8 f'8 es'8 d'8 c'8 
      | bes16 c'8 d'16~ d'16 f'16 a'8 bes8 b8 r4 
      | r4 a4. gis8 a8 g8 
      | f8 es8 des8 c8 bes,4 f8. g16 
      | bes8 c'8 es'8 f'8 cis'8 es'8 f'8 g'8 
      | a'8 r8 r4 r8 es8 g8 bes8 
      | es4 a4 d'8 c'8 a4 
      | \tuplet 3/2 {es'8 b8 aes8~} aes8 des'8 bes8 fis8 \tuplet 3/2 {g8 bes4} 
      \bar "||" \mark \default a8 aes8 g8 b8 a16 ges8 e16~ e16 d8 fis16~ 
      | fis16 g8 a16~ a8 b8 d4 e8 g8 
      | d4. g8 es8 f8 gis8 c'8 
      | \tuplet 3/2 {b8 cis'4} es'8 fis'8 e'8 fis'8 gis'8 b'8 
      | \tuplet 3/2 {g'4 c'8~} c'8 r8 r2 
      | r2. c'16 es'16 g'8 
      | es'8 b8 \tuplet 3/2 {gis4 cis'8} bes8 cis'8 fis'8 bes'8 
      | a'8 aes'8 g'8 b'8 a'8 fis'8 e'8 d'8 
      | f'4 a'8 g'8 f'8 es'8 d'8 c'8 
      | \tuplet 3/2 {bes8 c'4} \tuplet 3/2 {d'8 f'8\bendAfter #+4  c''8~} c''2~ 
      | c''4 b'8 c''8 a'8 c''8~ c''8. a'16~ 
      | a'4. g'8 f'8 es'8 d'8 c'8 
      | bes8 c'8 d'8 es''8~ es''4. c''8 
      | es''8. c''16~ c''8 r8 r2\bar  ".."
    }
    >>
>>    
}
