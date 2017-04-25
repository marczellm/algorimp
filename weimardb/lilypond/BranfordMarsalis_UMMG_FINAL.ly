\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Ummg"
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
      
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:min5-7 | c1:9- | f1:maj | s1 | aes1:min5-7 | des1:9- | ges1:min | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | s1 | des1:6 | s1 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:min5-7 | c1:9- | f1:maj | s1 | aes1:min5-7 | des1:9- | ges1:min | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | s1 | des1:6 | s1 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:min5-7 | c1:9- | f1:maj | s1 | aes1:min5-7 | des1:9- | ges1:min | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | s1 | des1:6 | s1 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:min5-7 | c1:9- | f1:maj | s1 | aes1:min5-7 | des1:9- | ges1:min | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | s1 | des1:6 | s1 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:min5-7 | c1:9- | f1:maj | s1 | aes1:min5-7 | des1:9- | ges1:min | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | s1 | des1:6 | s1 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:min5-7 | c1:9- | f1:maj | s1 | aes1:min5-7 | des1:9- | ges1:min | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | s1 | des1:6 | s1 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7|
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


      \tempo 4 = 212
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 es4 bes4 r4 
      | r4 es4 \tuplet 3/2 {bes4 es'8} r4 
      | r4 r8 es8 bes8. es'16~ es'8 bes8 
      | f'4^\markup{\left-align \small vib} r2. 
      | es'4 aes'4 f'4 \tuplet 3/2 {aes'4 aes'8} 
      | es'4 aes'4 f'4 ges'4 
      | aes'8 r8 r4 \tuplet 6/4 {r16 b'8. bes'16 b'16} a'16 aes'8 ges'16~ 
      | \tuplet 3/2 {ges'8 f'8 ges'8} f'8 es'8 d'4 a4 
      \bar "||" b4 \tuplet 3/2 {e'4 b8} ges'4 a'4 
      | bes'4.^\markup{\left-align \small vib} r8 r4 r8. f'16~ 
      | f'16 aes'8 ges'16~ \tuplet 3/2 {ges'8 d'8 f'8} e'8 d'8 es'8. bes16 
      | des'8 bes8 ges8 es8 c'8 bes8 \tuplet 3/2 {aes4 ges8} 
      | \tuplet 3/2 {f4 aes8} bes8 c'8 es'8 c'8 des'8 es'8 
      | e'8 f'8 bes'8 aes'8 ges'8 r8 r4 
      | aes'8 f'8 ges'8 g'16 ges'16 f'4. es'8 
      | des'8 c'8 \tuplet 3/2 {bes4 des'8} \tuplet 3/2 {a8\glissando  bes4} aes4 
      \bar "||" des'4 bes8 aes8 ges8 aes8 bes8 des'8 
      | d'8 c'8 r4 e'8 d'8 c'8 a8 
      | g8 c'8 a4 \tuplet 3/2 {g4 c'8} a4 
      | e8 f8 \tuplet 3/2 {a4 des'8} \tuplet 3/2 {e'4 f'8} r4 
      | r8 aes'4 aes'4 bes'4 b'8~ 
      | b'8 a'8 aes'8 ges'8 f'8 d'8 des'4 
      | r4 \tuplet 3/2 {des'4 a8} b8 a8 r4 
      | aes8 bes8 \tuplet 6/4 {c'8. e'8 aes'16~} aes'8 r8 r4 
      \bar "||" aes'4 b'4 bes'16\glissando  b'8. \tuplet 3/2 {bes'4 aes'8} 
      | ges'8 aes'8 ges'8 e'8 f'8 es'8 d'8 f'8 
      | e'8 d'8 \tuplet 3/2 {es'4 bes8} ges8 es8 \tuplet 3/2 {des'4 bes8} 
      | aes8 r8 r4 aes8 bes8 \tuplet 3/2 {c'4 es'8} 
      | g'4 \tuplet 3/2 {es'4 f'8} g'8 es'8 \tuplet 3/2 {f'4 g'8} 
      | aes'8 f'8 \tuplet 3/2 {des'4 bes8} es'8 r8 r4 
      | a'8 f'8 \tuplet 3/2 {g'4 a'8~} a'8 f'8 g'8 a'8 
      | aes'4 aes'4 \tuplet 3/2 {bes'4 aes'8} bes'4 
      \bar "||" \mark \default \tuplet 3/2 {b'4 bes'8} b'4 des''8. c''16 des''4 
      | des''8\glissando  d''8 des''8 b'8 bes'4.^\markup{\left-align \small vib} r8 
      | r4 r8 f'8 aes'8 ges'8 \tuplet 6/4 {d'4 bes16 f'16~} 
      | f'8 es'8 bes8 g8 des'8 es'8 c'8 bes8 
      | aes4 aes4 des'8. bes16 des'8 bes8 
      | e'8 f'8 ges'8 f'4 des'8 \tuplet 3/2 {bes4 g8} 
      | \tuplet 3/2 {es'4 bes8} es'4.^\markup{\left-align \small vib} r8 r4 
      | r1 
      \bar "||" a'8 b'8 \tuplet 3/2 {des''4 a'8} b'8. a'16~ a'4 
      | aes'8 bes'8 c''8 aes'8 bes'8. aes'16~ aes'4 
      | a'4 \tuplet 3/2 {des''4 a'8} e'8 b8 ges'8 e'8~ 
      | e'8 aes'8 f'8 des'8 \tuplet 6/4 {bes4 g16 es'16~} es'4 
      | c'8 es'8 c'8 bes8 \tuplet 3/2 {aes4 bes8} \tuplet 3/2 {c'4 es'8~} 
      | es'16 aes'8 aes'16~ aes'16 g'8 g'16~ \tuplet 3/2 {g'8 ges'8 ges'8} f'8 f'8 
      | es'8 es'8 bes8 bes8 des'4^\markup{\left-align \small vib} r4 
      | r8 bes8~ bes16 es'16 f'16 bes'16 aes'4 bes'4 
      \bar "||" f'4 des'4~ des'16 es'8 f'16 r4 
      | f'4 d'4 e'8 r8 r4 
      | e'8 g8 \tuplet 3/2 {c'4 g8} \tuplet 3/2 {d'4 e'8} r4 
      | e'8 c'8 d'8 e'8 r4 e'4 
      | \tuplet 6/4 {aes'4~ aes'16 e'16~} \tuplet 6/4 {e'4 b16 ges'16~} ges'8 aes'8 r4 
      | \tuplet 3/2 {b'4 aes'8} a'8 b'4 a'4 aes'8~ 
      | aes'16 e'8 ges'16~ ges'8 aes'4 ges'8~ \tuplet 3/2 {ges'8 f'8 des'8~} 
      | des'8 es'8 f'4 des'8 es'8 f'4 
      \bar "||" des'8. b16~ b8 aes8 b8 aes4 b8 
      | aes8 bes4.^\markup{\left-align \small vib} r2 
      | a'16 b'16 a'16 ges'16 a'16 b'16 a'16 ges'16 a'16 b'16 a'16 ges'16~ \tuplet 6/4 {ges'16 a'16 b'16 a'8 ges'16\glissando } 
      | a'4 ges'8\glissando  bes'8 r2 
      | r4 g'8 bes'8 g'8 f'8 es'8 bes8 
      | aes8 bes8 c'4 es'8 c'8 des'8 es'8 
      | f'8 g'8 bes'8 es''8 f''16\glissando  g''8.~ g''8 aes''8~^\markup{\left-align \small vib} 
      | aes''4. r8 r2 
      \bar "||" \mark \default r2. r8 f8 
      | \tuplet 3/2 {aes8 f8 aes8} \tuplet 3/2 {des'8 bes8 des'8} \tuplet 3/2 {f'8 des'8 f'8} \tuplet 3/2 {aes'8 f'8 aes'8} 
      | ges'4^\markup{\left-align \small vib} r2. 
      | ges'4 bes'4 aes'8 r8 r4 
      | c''8 r8 r4 a'8 g'4. 
      | f'8 c'8 a8 f16 des'16~ des'8 r8 r8 d'8 
      | \tuplet 3/2 {es'4 des'8} \tuplet 3/2 {es'4 d'8} e'8 des'8 a8 ges8 
      | b8 g8 aes8 bes8 b8 e'8 f'8 g'8 
      \bar "||" aes'8 bes'8 b'8 bes'8 ges'8 d'8 es'8. g'16~ 
      | g'8 f'8 es'8 bes8 \tuplet 6/4 {ges4 bes16 des'16~} \tuplet 6/4 {des'4 bes16 c'16~^\markup{\left-align \small vib}} 
      | c'4 r2 r8. es'16~ 
      | es'16 des'16 bes16 aes16~ aes8 es'8 des'16 b16 aes16 es'16~ es'8 c'8 
      | bes8 aes16 c'16~ c'4 aes4 c'4 
      | bes16 bes8 des'16~ \tuplet 6/4 {des'4 bes16 c'16~} c'8 bes8 es'8. bes16 
      | f'4 r4 r16 ges'8 ges'16 f'8 es'8~ 
      | es'16 des'8 es'16 \tuplet 3/2 {f'4 bes'8} des''8 bes'4 bes'8~ 
      \bar "||" bes'8 aes'4 bes'4 aes'4 a'8~ 
      | a'8 c''4 bes'4 c''4 c''8~ 
      | c''8 a'8 r4 c''8. f'16 a'4 
      | a'4 c''8 r8 r8 a'4 a'8~ 
      | a'8 b'4 aes'4 b'4 a'8~ 
      | a'8 aes'4 b'4 a'8~ a'8. aes'16~ 
      | aes'8. e'16~ e'8 ges'4 aes'8~ \tuplet 6/4 {aes'4 g'16 f'16~} 
      | f'8 des'4 es'4 f'4 aes'8~ 
      \bar "||" aes'8 des'4 es'8~ es'8. f'16~ f'4 
      | aes'4. des'8~ des'8. es'16~ es'8 r8 
      | r8 f'4. a'4.^\markup{\left-align \small vib} r8 
      | r2. r8 aes'8 
      | g'4 bes'8 g'8 es'8 f'8 g'8 es'8 
      | f'8 es'16 bes16 g8 e'8~ \tuplet 6/4 {e'16 a'4 ges'16} e'8 b8 
      | \tuplet 6/4 {e'8 des'8. b16} a8 ges8 \tuplet 3/2 {b4 e8} \tuplet 3/2 {ges8 b8 a8} 
      | \tuplet 3/2 {b8 bes8 bes'8} f'8 g'8 \tuplet 3/2 {f'8 es'8 bes8} es'8 des'8 
      \bar "||" \mark \default bes8 ges16 e16~ e16 aes16 ges16 bes,16 es8 bes,16 aes,16 r4 
      | r2 bes,8 f8 bes4 
      | \tuplet 3/2 {bes'4 f'8} bes4 es'8 bes8 es'8 aes'8 
      | aes'8 aes'16 ges'16~ ges'8 es'8 bes8. es'16~ es'8 bes8 
      | c'4 des'4 es'4 f'4 
      | \tuplet 3/2 {ges'4 aes'8} bes'8 ges'8 f'4 es'8 f'8 
      | r2 b'8 bes'16 a'16 aes'8 ges'8 
      | f'8 es'8 d'8 b8 bes8 aes8 ges8 aes8 
      \bar "||" \tuplet 3/2 {bes4 des'8} bes8 b8 \tuplet 3/2 {es'4 ges'8} g'8 a'8 
      | aes'8 r8 r4 aes'8 bes'8 \tuplet 3/2 {b'4 a'8} 
      | bes'8 r8 r8 f'8~ \tuplet 6/4 {f'16 aes'8. ges'16 f'16} \tuplet 3/2 {des'4 bes8} 
      | d'4 f'8 es'8 \tuplet 3/2 {bes4 ges8} des'8 es'8 
      | c'8 es'8 c'8 bes8 aes8 es'8 c'8 es'8 
      | c'8 bes8 aes8 es'8 c'8 es'8 bes4 
      | r8 es'8 c'8 es'8 des'8 es'8 des'8 es'8 
      | b8 es'8 b8 es'8 bes8 es'8 bes8 r8 
      \bar "||" r8. es'16~ es'16 bes8 es'16 bes8 es'8 bes8 es'8 
      | bes8 d'8 bes8 d'8 bes8 d'8 bes8 r8 
      | r8 c'8 g8 c'8 g8 c'8 a8 c'8 
      | a8 c'8 g8 c'8 f8 c'8 e8 r8 
      | r8. b16 aes8 b8 aes8 b8~ b16 ges8 b16 
      | aes8 b8 a8 b8 aes8 r8 r8 aes8 
      | a8 r8 r8 g4 f4 f8 
      | ges16 a16 f8 ges8 aes8~ aes16 bes8 b16 des'8 es'8 
      \bar "||" f'8 f'8~ f'16 ges'8 e'16 f'8 des'8 bes8 g8 
      | es'8 des'8 c'8 bes8 aes4 f'4 
      | es'4.^\markup{\left-align \small vib} r8 r2 
      | r1 
      | \tuplet 3/2 {a'4 c''8~} c''4 a'8 f'8 r4 
      | r4 \tuplet 3/2 {aes'4 c''8~} c''4 aes'8 a'8 
      | r2 c''8 a'4. 
      | \tuplet 3/2 {f'4 aes'8} r2 \tuplet 3/2 {aes'4 b'8~} 
      \bar "||" \mark \default b'4 \tuplet 3/2 {aes'4 f'8} r2 
      | \tuplet 3/2 {aes'4 b'8~} b'4 \tuplet 3/2 {aes'4 bes'8} r4 
      | r4 \tuplet 3/2 {bes'4 g'8} a'8 des''8 a'8. e'16 
      | b'8 ges'8 des'8 b8 ges'8 des'8~ des'8. g'16~ 
      | g'16 g'8 g'16 \tuplet 3/2 {f'4 es'8} bes8 es'8 c'4 
      | des'4 es'4 f'8 r8 r8 f'8 
      | e'8 g'8 d'8 e'16 ges'16 \tuplet 3/2 {c'8 d'8 e'8} \tuplet 3/2 {bes8 c'8 d'8} 
      | \tuplet 3/2 {aes8 bes8 c'8} \tuplet 3/2 {aes8 ges8 bes8} \tuplet 3/2 {e8 ges8 g8} \tuplet 3/2 {d8 e8 ges8} 
      \bar "||" c8 r8 r4 des8 es8 f8 aes8 
      | ges8 r8 r8. e16 f8 es8 d8 f8 
      | e8 d8 es8 f8 ges8 aes8 bes8 des'8 
      | \tuplet 3/2 {f'4 es'8} d'8 es'8 aes'4 r4 
      | r2 r8. aes,16~ aes,8 bes,8~ 
      | bes,8 c8~ c8. des16~ des8 es4 f8~ 
      | f8 ges4 aes4 bes8 r4 
      | r8 b4 des'4 es'4 f'8~ 
      \bar "||" f'8 ges'4 aes'4 bes'4 c''8~ 
      | c''8 des''8 r4 r8. es''16~ es''8 f''8~ 
      | f''8 g''4 a''4 bes''4 des'''8~ 
      | des'''8 c'''8~^\markup{\left-align \small vib} c'''2 r4 
      | r2 a'8 b'8 des''8. bes'16 
      | b'8. ges'16 \tuplet 3/2 {e'4 b8} ges'8 des'8~ des'16 es'8 g'16~ 
      | g'16 ges'8 e'16 f'8 des'8 bes8 aes8 es'8 des'8 
      | c'8 bes8 aes8 bes8 c'8 es'8 c'8 d'16 es'16~ 
      \bar "||" es'8 f'8 \tuplet 3/2 {aes'4 f'8} \tuplet 3/2 {bes'8\glissando  b'16 r8.} r4 
      | \tuplet 3/2 {b'4 aes'8} es'4 bes'8 g'8 des'4 
      | \tuplet 3/2 {a'4 ges'8} \tuplet 3/2 {des'4 b8} aes'8 r8 r4 
      | aes'8 ges'8 des'8 b8 \tuplet 3/2 {g'4 es'8} bes8 g8 
      | f'8 c'8 bes8 g8 es8 bes8 f8 r8 
      | r8 f8 aes8 f8 g8 bes8 es'8 f'16 a'16~ 
      | a'8 g'8 \tuplet 6/4 {f'8. c'8 g16\glissando } a8 g8 f8 c16 aes16~ 
      | aes8 r8 \tuplet 6/4 {r4 aes16 f16~} f8\glissando  aes8 c'8. bes16 
      \bar "||" \mark \default \tuplet 3/2 {des'4 bes8} des'4 es'4 es'4 
      | ges'8 r8 r4 e'4. aes'8~ 
      | \tuplet 6/4 {aes'16 e'4 aes'16~} aes'16 ges'16 d'16 b16 e'4^\markup{\left-align \small vib} r4 
      | \tuplet 5/4 {r8 d'16 e'16 ges'16} d'8 b16 e'16 \tuplet 3/2 {d'8 bes8 aes8} \tuplet 3/2 {e8 aes8 ges8} 
      | d16 g8. r2. 
      | r1 
      | b'8 b'16 b'16~ b'16 a'8 a'16 a'8 a'16 aes'16~ aes'16 aes'8 aes'16~ 
      | \tuplet 3/2 {aes'8 aes'8 aes'8~} \tuplet 3/2 {aes'8 aes'8 aes'8} aes'8 ges'8 ges'8 f'8~ 
      \bar "||" f'16 f'8 f'16 e'4.^\markup{\left-align \small vib} r8 r4 
      | es'4 \tuplet 3/2 {c'8 aes8 ges8} d'8 des'8 r4 
      | des'4 \tuplet 3/2 {bes8 ges8 es8} c'4 des'4 
      | \tuplet 3/2 {bes8 ges8 es'8} c'4. aes8~ \tuplet 3/2 {aes8 aes8 aes8} 
      | aes16 bes8 bes16 c'4 bes16 des'8 bes16 \tuplet 3/2 {es'4 bes8} 
      | e'8. f'16 r4 r16 ges'8 e'16~ e'16 f'8 des'16 
      | bes4 ges16 es'8 des'16~ des'8 bes8 \tuplet 3/2 {b8 es'8 f'8} 
      | bes'8 g'8 aes'8 bes'8 g'8 es'8 bes8 g8 
      \bar "||" ges'4 ges'4 f'4 f'4 
      | es'8 r8 r8. f'16~ f'4 f'8. bes16 
      | d'8. bes16 \tuplet 3/2 {d'4 bes8} e'2^\markup{\left-align \small vib} 
      | g'8 g'16 g'16~ g'4 f'4 f'4 
      | a'8 r8 r2 \tuplet 3/2 {des''8 d''8\bendAfter #+4  des''8} 
      | b'8 bes'8 a'8 aes'8 g'8 ges'8 f'8 r8 
      | r8 aes'8 f'8 ges'8 \tuplet 3/2 {aes'4 f'8} ges'8 aes'8 
      | a'8 b'16 des''16~ des''8 a'8 aes'8 a'8 aes'8 ges'8 
      \bar "||" f'8 ges'8 f'8 es'8 des'8 r8 r8 a8 
      | aes8 a8 \tuplet 3/2 {aes4 ges8} f8 es8 d8 f8 
      | e8 d8 es8 f16 ges16 aes4 bes8. des'16 
      | \tuplet 3/2 {f'4 es'8~} es'4 aes'8 r8 r4 
      | \tuplet 3/2 {a'4 c''8~} c''4 \tuplet 3/2 {a'4 c''8~} c''8 r8 
      | r4 aes'8 c''8 r4 r8. a'16 
      | des''4 a'8 des''4 a'8 c''4 
      | aes'8 c''4 aes'8 c''4 aes'4 
      \bar "||" \mark \default bes'4 r4 bes'4 aes'4 
      | b'4. bes'4.^\markup{\left-align \small vib} r4 
      | r8 aes'4 f'8 ges'4 aes'8 f'8~^\markup{\left-align \small vib} 
      | f'4 r4 r8 es'8~ es'16 d'16 des'16 bes16 
      | a2 bes8 r8 r4 
      | c'8. des'16~ des'8 f'4 aes'8 c''4\glissando  
      | d''8 es''8~ es''2 des''4 
      | a'2 bes'2 
      \bar "||" \tuplet 3/2 {b'4 bes'8} r2.\bar  ".."
    }
    >>
>>    
}
