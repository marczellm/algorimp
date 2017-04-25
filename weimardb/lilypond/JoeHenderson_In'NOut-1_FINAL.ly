\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "In 'n Out"
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9|
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


      \tempo 4 = 277
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 c''8. f'16 r4 
      | r2 \tuplet 3/2 {bes'8 aes'8 f'8~} f'8 r8 
      | r2 c'8 es'16 g'16~ g'8 es'8 
      | \tuplet 3/2 {f'4 c'8} bes4 \tuplet 3/2 {e'4 cis'8} \tuplet 3/2 {b4 fis8} 
      | g2 ges'8 r8 r4 
      | r8 f8 g8 des'8 ges'8 e'8 es'8 des'8 
      | c'8 bes8 g4 a8 c8 es8 g8 
      | fis8 a8 c'8 d'8 es'8 d'8 cis'8 d'8 
      | bes4. d'4. f'4~ 
      | f'4 d'16 es'16 f'16 a'16 es''8 d''8 r4 
      | r2 d''8\bendAfter #+4  r8 r4 
      | r2 c'8 r8 r4 
      \bar "||" \mark \default c''4 \tuplet 3/2 {es''4 c''8~} c''2 
      | aes'8 bes'8 f'4 r4 r8 g'8~ 
      | g'8 g'8 ges'8 f'8 e'8 es'8 d'8 des'8~ 
      | des'16 b8 f16 fis8 d8 aes8 fis8 g8 aes8 
      | f8 r8 r4 aes4. ges8 
      | f8 es8 des8 c8 b,8 r8 r4 
      | r8 bes,4 g8 f8 g8 a8 f8 
      | bes8 c'8 d'8 f'8 es'8 f'8 g'8 bes'8~ 
      | bes'8 g'8 aes'8 fis'8 g'8 d'8 f'8 es'8~ 
      | es'8 bes8 r4 d'8 des'8 c'8 b8 
      | bes8 aes8 g8 f8 es8 r8 r4 
      | r2 es'8 f'8 g'8 es'8 
      \bar "||" \mark \default f'8 g'8 a'8 f'8 g'8 f'8 es'8 g'8 
      | \tuplet 3/2 {f'4 c'8~} c'4 f'8 g'8 a'8 f'8 
      | \tuplet 3/2 {g'4 f'8} c'8 f'8 es'8 f'8 g'8 es'8 
      | \tuplet 3/2 {f'8 fis'8 cis'8} b4 \tuplet 3/2 {es'4 f'8} aes'8 r8 
      | r2 c''8 bes'8 \tuplet 3/2 {aes'4 es'8~} 
      | es'8 r8 r4 g'8 ges'8 \tuplet 3/2 {es'4 b8~} 
      | \tuplet 3/2 {b8 b'8 a'8} g'4 bes'8 aes'8 ges'8 des'8 
      | aes'16 a'8 g'16 e'4 \tuplet 3/2 {aes'4 fis'8} d'4 
      | g'4 r4 \tuplet 3/2 {g'8 bes'8 g'8~} g'8 r8 
      | r2 r16 bes'8 g'16~ g'16 aes'8 aes'16 
      | \tuplet 3/2 {g'4 ges'8~} ges'16 f'8 e'16 es'8 c'8 aes4 
      | d'8 c'8 bes8 aes8~ \tuplet 3/2 {aes8 a8 c'8~} c'4 
      \bar "||" \mark \default f'2 es'4 f'4 
      | f'8. f'16~ f'8 es'8 f'4. es'8 
      | f'4 c'8 r8 r4 r8 c'8 
      | aes'8 g'8 f'8 a'8 \tuplet 3/2 {g'4 fis'8} r4 
      | r2. r8 b'8\bendAfter #+4  
      | c''2... bes'16~ 
      | bes'16 a'8 f'16~ f'8 a'4 c''8 r4 
      | r2 r8 a'4 bes'8~ 
      | bes'8 g'4 aes'4 fis'8 g'8 bes'8 
      | \tuplet 3/2 {ges'4 d'8} f'8 e'8 es'8. c'16 g'4 
      | \tuplet 3/2 {es'8 d'4} des'16 c'8 b16 bes4 aes16 g8 f16 
      | e4 g8 e8 f8. g16 aes8 bes8 
      \bar "||" \mark \default \tuplet 3/2 {c'4 d'8} es'8 f'8 g'8 es'8 f'8 g'8~ 
      | g'2 g'8. es'16 \tuplet 3/2 {f'4 g'8~} 
      | g'4 \tuplet 3/2 {g'4 es'8} \tuplet 3/2 {f'4 g'8~} g'8 f'8 
      | \tuplet 3/2 {es'8 cis'8 b8~} b8 f'8 \tuplet 3/2 {es'8 cis'8 b8~} b8 r8 
      | r2 g'8 es'8 \tuplet 3/2 {f'4 g'8~} 
      | g'4 r4 \tuplet 3/2 {g'4 es'8} f'8 g'8~ 
      | g'8 g'4 g'8~ g'16 es'16 des'16 b16~ \tuplet 3/2 {b8 f'8 es'8} 
      | cis'8 b4 r8 r2 
      | r8 fis8 g16 a16 c'8 bes8 c'8 r4 
      | a'8 g'8 \tuplet 3/2 {f'4 d'8} e'4. c''8~ 
      | c''8 a'4 bes'8 r4 a'8 g'8~ 
      | g'8. g'16~ g'8 g'16 ges'16~ ges'8 f'8 e'8 des'8 
      \bar "||" \mark \default c'8 bes8 r4 \tuplet 3/2 {a4 d8~} d8. g16 
      | d4 f8 d8 es8 f8 g8. cis'16 
      | d'4 f'8 d'16 es'16~ es'8 f'8 g'8 a'8 
      | d''8 cis''4. \tuplet 3/2 {b'4 aes'8~} aes'4 
      | b'16 c''8.~ c''4. r8 r4 
      | c''8 bes'4. aes'8. f'16~ f'8 bes'8~ 
      | bes'8 b'8 r4 aes'4 f'8. f'16~ 
      | f'16 bes'8 aes'16 f'4 g'8 e'8 f'8 g'8 
      | f'16 es'8 c'16~ c'8 r8 r2 
      | c'4 g'8 e'8 f'8. es'16~ es'16 c'8 bes16 
      | d'4 es'8 r8 r2 
      | r2 \tuplet 3/2 {r8 d'8 f'8} \tuplet 3/2 {es'4 c'8} 
      \bar "||" \mark \default r4 r8. d'16~ d'8 f'8~ f'16 es'16 c'8 
      | d'8. f'16 es'8 c'4 d'8~ \tuplet 3/2 {d'8 f'8 es'8~} 
      | es'8 c'16 d'16~ d'8 f'8 es'8 c'8 d'8 aes'8~ 
      | aes'8 b'16 a'16~ a'8 fis'8 aes'8 b'8 r4 
      | r1 
      | \tuplet 3/2 {ges'4 bes'8} \tuplet 3/2 {aes'4 ges'8~} ges'16 a'16 bes'8 aes'8 r8 
      | r1 
      | a'8 aes'16 g'16 f'8 d'8 aes'8. fis'16 e'8 cis'8 
      | \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {ges'8 e'8 e'8} \tuplet 3/2 {d'4 b8} 
      | f'8 r8 r2. 
      | r1 
      | r1 
      \bar "||" \mark \default r1 
      | r16 a,8 f16~ \tuplet 3/2 {f8 aes8 a8~} a4 \tuplet 3/2 {a,4 c8} 
      | \tuplet 3/2 {f8 g8 a8~} a4 a,8 d16 f16~ \tuplet 3/2 {f8 aes8 a8~} 
      | a4 \tuplet 3/2 {a,8 d8 f8} g8 a8 r4 
      | r2. r8 a8 
      | bes8 c'8 des'8 es'8 \tuplet 3/2 {e'4 aes'8} ges'8 e'8 
      | es'8 des'8 c'8 bes8 g4 a8 c8 
      | d8 e8 g8 e8 fis4. es'8 
      | d'8 c'8 bes8 r8 r4 g16 a16 g16 f16~ 
      | f8 d8 \tuplet 3/2 {e4 g8} bes8 des'8 c'8 bes8 
      | g4 a8 r8 r8 g8 \tuplet 3/2 {ges4 a8} 
      | c'8 d'8 \tuplet 3/2 {es'4 f'8~} f'8 f'4 f'8~ 
      \bar "||" \mark \default f'8 f'4 f'4 f'4 f'8 
      | \tuplet 3/2 {es'4 c'8} es'8 f'4 f'4 f'8~ 
      | f'8 f'8~ f'8. f'16~ f'8 f'8 bes'8 aes'8 
      | fis'8 es'8 fis'8 r8 r2 
      | r2. r16 b'16\bendAfter #+4  c''8~ 
      | c''2. r4 
      | r4 c''8 cis''16 d''16~ d''4 es''4 
      | r1 
      | r4 \tuplet 3/2 {c''4 c''8~} c''8 r8 r4 
      | r2. r8 c'8~ 
      | c'8. g'16~ g'16 bes'16\bendAfter #+4  b'16 bes'16 aes'4 \tuplet 3/2 {ges'8 f'8 es'8~} 
      | es'16 des'8 c'16 \tuplet 3/2 {b4 bes8~} \tuplet 3/2 {bes8 aes8 ges8} f8 es8 
      \bar "||" \mark \default des8 c8 b,4 r4 g16 bes8 g16~ 
      | g16 aes8 bes16~ \tuplet 3/2 {bes8 b8 cis'8} d'8 f'8 d'8. e'16~ 
      | \tuplet 3/2 {e'8 ges'8 aes'8} \tuplet 3/2 {des'4 es'8} e'8 ges'8~ \tuplet 3/2 {ges'8 b8 c'8} 
      | e'8 g'16 e'16~ e'8 fis'8 r2 
      | r2. c'4 
      | ges'8 es'8 f'8 es'8 des'8. bes16 es'8 des'8 
      | r1 
      | r2. r8 cis'16 d'16~ 
      | d'8. c''16 a'8 f'8 \tuplet 3/2 {d'8 es'8 d'8} \tuplet 3/2 {c''8 a'8 f'8} 
      | d'8 es'16 d'16 \tuplet 3/2 {c''8 a'8 f'8} d'16 es'16 d'8 c''16 a'16 f'16 d'16 
      | \tuplet 3/2 {es'8 d'8 es'8} \tuplet 3/2 {d'8 es'8 c''8} \tuplet 3/2 {a'8 f'8 d'8} \tuplet 3/2 {es'8 d'8 c''8} 
      | a'16 f'16 d'16 f'16 c''8 a'16 f'16 \tuplet 3/2 {d'8 f'8 c''8} a'16 f'16 d'16 es'16 
      \bar "||" \mark \default \tuplet 3/2 {d'8 c''8 a'8} \tuplet 3/2 {f'8 d'8 es'8} \tuplet 3/2 {d'8 c''8 a'8} f'16 d'16 es'16 d'16 
      | \tuplet 3/2 {es'8 d'8 es'8} d'8 c''8 \tuplet 3/2 {a'8 f'8 d'8} \tuplet 3/2 {es'8 c''8 a'8} 
      | f'16 d'16 es'8 \tuplet 5/4 {c''16 a'8 f'16 d'16} \tuplet 3/2 {es'8 c''8 a'8} f'16 d'16 f'16 c''16 
      | \tuplet 5/4 {a'8 f'16 d'16 es'16~} \tuplet 3/2 {es'8 c''8 a'8} \tuplet 3/2 {f'8 cis'8 d'8} \tuplet 3/2 {cis'8 e'8 c''8} 
      | aes'16 e'16 d'16 es'16 \tuplet 3/2 {d'8 c''8 aes'8} \tuplet 3/2 {f'8 c'8 des'8} \tuplet 3/2 {c'8 des'8 c'8} 
      | des'16 c'16 des'16 c'16~ c'8 des'8 c'16 bes16 g16 e'16~ e'8 f'8 
      | \tuplet 3/2 {d'8 e'8 f'8~} f'8 d'8 e'8 f'4 r8 
      | r2 \tuplet 3/2 {r8 g8 a8} e'4 
      | f'4 es'8. f'16~ f'8 e'4 f'8~ 
      | \tuplet 3/2 {f'8 aes8 b8} es'4 f'8 des'16 e'16~ e'8 f'8~ 
      | f'8 es'4 f'4 e'4 f'8~ 
      | f'4 es'4 f'4 aes'8. a'16~ 
      \bar "||" \mark \default a'8 f'8~ \tuplet 3/2 {f'8 c'8 es'8~} es'8 f'8 r4 
      | r4 \tuplet 3/2 {g'4 aes'8} f'8 c'8 \tuplet 3/2 {es'4 f'8~} 
      | f'8 g'4 aes'8 f'8 des'8 es'16 f'8 aes'16~ 
      | \tuplet 3/2 {aes'8 a'8 a'8} fis'8 cis'8 r2 
      | r2 r8 e'8 g'8 aes'8 
      | f'8 des'8 f'16 fis'8 g'16 e'8 es'8 \tuplet 3/2 {e'4 g'8} 
      | d'8 b8 es'8 e'8 des'4 cis'8 d'8 
      | b4 b8 c'8 a4 a8 bes8 
      | g8 es8 g8 a8 \tuplet 3/2 {f8 d4} fis8 g8 
      | e8 des16 c16 r2 r8 c8~ 
      | c8 g8 f8 e8 f8 g8 a8 bes8 
      | c'8 d'8 es'8 f'8 \tuplet 3/2 {g'4 es'8} f'8 g'8 
      \bar "||" \mark \default a'8 f'8 \tuplet 6/4 {g'4 f'16 es'16} \tuplet 3/2 {c'4 f'8} es'8 c'8 
      | bes8 aes8 d'8 des'8 c'8 b8 bes8 c'8 
      | d'16 f'8 a'16~ a'8 des''8 b'8 a'8 aes'8 ges'8 
      | \tuplet 3/2 {e'4 cis'8} b4 d'8 ges'8 \tuplet 3/2 {f'4 cis'8~} 
      | cis'4 es'8 r8 r4 \tuplet 3/2 {es'4 f'8} 
      | \tuplet 3/2 {g'4 es'8} f'8 des'8 bes8 c'8 r4 
      | r2 r8. c''16~ c''4~ 
      | c''8 a'8 \tuplet 3/2 {bes'4 f'8~} f'8 f'8~ f'16 bes'8 aes'16 
      | f'4 aes'4 f'16 des'8 c'16 f'4 
      | des'16 bes8 g16~ g16 f8 es16 bes,8 r8 r4 
      | r2. a,8 b,8 
      | r1 
      \bar "||" \mark \default r4 \tuplet 3/2 {c4 d8} e8. g16 \tuplet 3/2 {f4 g8} 
      | a8 f8 bes8 c'8 d'8 f'8 es'8 f'8~ 
      | f'4 \tuplet 3/2 {c''8 cis''8 d''8} des''16 b'16 a'8~ a'16 aes'8 ges'16~ 
      | ges'16 e'8 es'16 \tuplet 3/2 {d'4 cis'8~} cis'16 b8 d'16 e'8 a'8 
      | fis'8. g'16 aes'8 ges'8 \tuplet 3/2 {des'4 bes8} des'8. c'16 
      | aes4 c'4 r4 r8 c'8 
      | a8 f8 d16 b8 g16 e4 c16 g16 a16 f16 
      | d4~ d16 fis'8 e'16~ e'8 cis'8 fis'8 r8 
      | r1 
      | r4 \tuplet 3/2 {es'4 c'8} aes8 ges8 \tuplet 3/2 {d'8 es'8 e'8} 
      | f'8 d'8 es'8 f'4 a'8 bes'8 c''8~ 
      | c''16 a'8 g'16~ g'16 f'8 des'16 c'8 bes8 a4 
      \bar "||" \mark \default c'8. es'16~ \tuplet 3/2 {es'8 e'8 f'8~} f'4. bes8 
      | es'4. f'8~ f'8. a16~ a8 c'8 
      | es'4 f'4. bes'4 aes'8 
      | f'4 aes'8 g'8 es'4 g'8 es'8 
      | f'8 g'8 f'16 es'8 des'16~ \tuplet 3/2 {des'8 bes8 aes8} \tuplet 3/2 {des'4 es'8} 
      | f'8 des'8 r2. 
      | r1 
      | r4 c''8 c''8 c''8 c''8 r4 
      | r1 
      | r1 
      | r2. c''8 es''8 
      | es''8 r8 r4 \tuplet 3/2 {e''8 f''4~} f''4~ 
      \bar "||" \mark \default f''2 a''8 r8 r4 
      | r4 \tuplet 3/2 {d''4 f''8~} f''4 r4 
      | r4 r16 d''8 f''16~ f''2~ 
      | f''4 r2. 
      | r16 bes'16\bendAfter #+4  b'16 c''16~ c''2. 
      | f'8 aes'16 c''16~ c''8 a''4 ges''8~ ges''8. a''16\bendAfter #+4  
      | bes''2.. es''8 
      | f''8 r8 r8 cis''4 bes'8 g'8 aes'8~ 
      | aes'8 f'4 e'4. bes'8 des''8~ 
      | des''16 c''8 a'16 bes'4 ges'8. ges'16~ ges'16 a'8 g'16 
      | ges'8 d'8 e'8 des'8~ des'8. es'16~ \tuplet 3/2 {es'8 des'8 c'8~} 
      | \tuplet 3/2 {c'8 bes8 a8~} \tuplet 3/2 {a8 c'8 d'8} e'8 f'4.~ 
      \bar "||" \mark \default f'4 r2 c''4 
      | c''8. f'16~ f'8. aes'16~ aes'8. f'16~ f'8 bes'8~ 
      | bes'8 f'4 aes'4 f'8 es'8 g'8 
      | f'8 cis'8 bes8 a8 es'8 d'8 cis'8 bes16 b16 
      | aes8 ges8 aes8. ges16~ ges8 r8 r4 
      | r4 r8. c16~ c8 r8 r4 
      | c8. a16~ a8 r8 r2 
      | r2. r8 g8 
      | e8 f8 g8 a8 b8 c'8 d'4~ 
      | d'16 e'8 g'16~ g'8 e'8 f'8 g'4. 
      | a'8 c''16 c''16 \tuplet 3/2 {a'4 bes'8} \tuplet 3/2 {aes'4 ges'8~} ges'16 es'8 des'16 
      | c'4. f'8~ f'2 
      \bar "||" \mark \default g'8 a'4 f'8 g'8 ges'4 c'8 
      | f'4. f'4. f'8 g'8~ 
      | g'16 aes'8 g'16~ g'16 ges'8 f'16 \tuplet 3/2 {e'4 es'8} \tuplet 3/2 {d'4 des'8} 
      | b4 f8 a8 fis8 g8 aes8 fis8 
      | e8 cis8 d8 e4 g8 des'8 c'8 
      | bes8 g8 \tuplet 3/2 {a4 c8~} \tuplet 3/2 {c8 es8 g8} es8 e8 
      | r4 es'8 d'16 des'16~ des'8 b8 bes8 r8 
      | r2 bes2~ 
      | bes8 r8 r2 \tuplet 3/2 {r8 aes8 a8} 
      | c'16 d'8 f'16~ f'8 d'8 \tuplet 3/2 {es'8 e'8 f'8} g'8 c''8~ 
      | c''16 b'16 bes'8 g'4 \tuplet 3/2 {aes'8 a'8 f'8~} f'8. es'16~ 
      | es'4.. es'16~ es'8 g'8 es'4\bar  ".."
    }
    >>
>>    
}
