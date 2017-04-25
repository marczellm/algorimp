\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Funny Valentine"
  composer = "Stan Getz"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \minor
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
      
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | bes1:min7 | g1:min5-7 | c1:9- 
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | bes1:min7 | des1:min6 | es1:9- 
      | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj c2:7 | f2:min es4:min7 d4:7 | des1:maj | g2:min5-7 c2:9- 
      | f1:min | f1:maj | f1:min7 | f1:min6 | des1:maj | g2:min5-7 c2:9- | f1:min | es2:min7 d2:11+.9 
      | des1:maj | bes2:min7 es2:9- | aes1:6 | s1 | f1:min | f1:min7+maj | f1:min7 | f1:min6 
      | des1:maj | bes1:min7 | g1:min5-7 | c1:9- | f1:min | f1:min7+maj | f1:min7 | f1:min6 
      | des1:maj | bes1:min7 | des1:min6 | es1:9- | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj bes2:min7 | c2:min7 bes2:min7 
      | aes2:maj c2:7 | f2:min7 es4:min7 d4:7 | des1:maj | g2:min5-7 c2:9- | f1:min | f1:min7+maj | f1:min7 | f1:min6 
      | des1:maj | g2:min5-7 c2:9- | f1:min | es2:min7 d2:11+.9 | des1:maj | bes2:min7 es2:9- | aes1:6 | s1 
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | bes1:min7 | g1:min5-7 | c1:9- 
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | bes1:min7 | des1:min6 | es1:9- 
      | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj c2:7 | f2:min7 es2:min7 | des1:maj | g2:min5-7 c2:9- 
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | g2:min5-7 c2:9- | f1:min | es2:min7 d2:11+.9 
      | des1:maj | bes2:min7 es2:9- | aes1:6 | s1 | f2.:min r4 | f4:min7+maj r2.|
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


      \tempo 4 = 131
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8. f'16~ f'8 g'8 
      | aes'4 f'8 g'4.^\markup{\left-align \small vib} c'4 
      | f'4 r4 r8 f'8 g'8~ g'32 g'16\glissando  aes'32~ 
      | aes'4 \tuplet 3/2 {f'4 g'8~^\markup{\left-align \small vib}} g'4 f'8. des'16~^\markup{\left-align \small vib} 
      | des'4 r2. 
      | r4 f'8. bes'16~ bes'16 b'16 c''16 b'16 \tuplet 3/2 {bes'8 aes'8 f'8} 
      | bes'4. g'8 fis'16 g'16 f'16 d'16 f'16 g'16 f'16 d'16~ 
      | d'16 e'8 c'16~ \tuplet 6/4 {c'4 d'16 g'16} bes'16 c''8.~ c''8 c'8 
      \bar "||" \tuplet 3/2 {aes'4 f'8~^\markup{\left-align \small vib}} f'4 aes'8 r8 r4 
      | aes'4 aes'4 aes'8 e'8 \tuplet 3/2 {c'8 aes8 e8} 
      | \tuplet 3/2 {aes'4 f'8~^\markup{\left-align \small vib}} f'4 aes'8 r8 r4 
      | r8 aes'8~ \tuplet 3/2 {aes'8 g'8 f'8} \tuplet 3/2 {e'4 f'8} \tuplet 3/2 {g'8 aes'8 f'8~^\markup{\left-align \small vib}} 
      | f'8 r8 r8. bes16 \tuplet 3/2 {des'4 des'8} \tuplet 3/2 {f'8 des'8 f'8} 
      | aes'8 r8 r8 bes16 des'16 \tuplet 3/2 {f'8 bes8 des'8~} des'16 f'16 des'16 f'16 
      | aes'4 f'8 aes'8 e'8 g'8 b'8 r8 
      | r8 c''4.^\markup{\left-align \small vib} bes'8 g'8 es'8 e'8\glissando  
      \bar "||" f'4 es'4 \tuplet 3/2 {b8\glissando  c'4} bes4 
      | aes4 g8.\bendAfter #+4  aes16~ aes8 r8 r4 
      | r8 fis'16\glissando  g'16~ g'4 f'8 es'8 \tuplet 3/2 {b8\glissando  c'8 b8} 
      | bes8 aes8 \tuplet 3/2 {f4 aes8} \tuplet 3/2 {bes4\glissando  c'8~} c'8 aes8~^\markup{\left-align \small vib} 
      | aes4~ aes16 bes8\glissando  b16~ b16 c'8 es'16 f'8. aes'16 
      | r4 r8 bes'16\glissando  b'16 \tuplet 3/2 {b'8\glissando  c''8 c''8\glissando } des''16 des''16\glissando  d''16 d''16\glissando  
      | \tuplet 3/2 {es''8 bes'8\glissando  c''8~} c''16 g'16\glissando  aes'8~^\markup{\left-align \small vib} aes'4~ \tuplet 6/4 {aes'4 f'16 des'16~} 
      | des'8 bes4 r8 r4 r8 c'8\glissando  
      \bar "||" b4 aes8. f16 aes4^\markup{\left-align \small vib} bes8 r8 
      | r8 e8 g8 aes16 bes16~ bes16 c'8 e'16~ e'8 c'16 aes16 
      | r4 \tuplet 6/4 {r4 b16\bendAfter #+4  c'16~} c'8 b8 \tuplet 3/2 {aes4 e8~} 
      | e16 g8 f16~ f4 r2 
      | aes'4.^\markup{\left-align \small vib} f'8 g'4 aes'8~ aes'32 bes'16\bendAfter #+4  b'32~ 
      | b'8 bes'8 \tuplet 3/2 {bes'8 aes'8 bes'8} r4 r8 aes'8 
      | f'4~ f'16 aes16 c'16 f'16 e'8 r8 r8. es'16~^\markup{\left-align \small vib} 
      | es'4. bes16 des'16 \tuplet 3/2 {e'8\glissando  f'8 e'8~} e'16\glissando  f'16 des'16 aes16 
      | \tuplet 3/2 {g8 ges8 f8} r2 r8 g'16\glissando  aes'16~ 
      | aes'16 bes'16 b'8 b'16\glissando  c''16 c''16\glissando  des''16 des''16\glissando  d''16 d''16 es''16 es'8. bes'16\glissando  
      | c''8 aes'4^\markup{\left-align \small vib} r8 r2 
      | r2 r8 r32 b'16\glissando  c''32~ c''8 aes'8 
      \bar "||" \mark \default f'8 c'8 f'8. g'16 \tuplet 3/2 {aes'4 g'8} \tuplet 3/2 {f'4 g'8~} 
      | g'8 c'4 c'8 c''8 r8 r8. c'16 
      | \tuplet 3/2 {es'4 c'8~} c'8. c'16~ c'8 c''8 \tuplet 6/4 {bes'8 aes'8 g'16 f'16~} 
      | \tuplet 5/4 {f'16 es'16 e'16 g'16 f'16~^\markup{\left-align \small vib}} f'8 r8 r2 
      | r8 aes'8 \tuplet 3/2 {e'8 f'8 aes'8} f'8 des'8 \tuplet 3/2 {bes4 f8} 
      | a8 f8 \tuplet 3/2 {a4 f8} aes8 f8 aes8. f16~ 
      | f4. aes8 \tuplet 3/2 {e8 f8 aes8} e16 f16 aes8 
      | bes16\glissando  b8. bes2~^\markup{\left-align \small vib} bes8 g'8\glissando  
      \bar "||" aes'8. f'16~^\markup{\left-align \small vib} f'4 c'4 aes4 
      | b8. bes16~ bes16\bendAfter #+4  b8 bes16~ bes8 r8 r4 
      | r8 bes'16 c''16 aes'4 f'8 c'4 b8~ 
      | b8.\bendAfter #-4  aes16 b8\glissando  bes8 r2 
      | r2 r8 bes16 des'16 \tuplet 3/2 {f'8 bes8 des'8} 
      | \tuplet 3/2 {f'8 des'8 f'8} \tuplet 5/4 {aes'8 des'16 f'16 aes'16~} aes'16 b'8\glissando  c''16 c''8 des''16\glissando  d''16 
      | des''16\glissando  es''8. r4 r8 es'8~ \tuplet 3/2 {es'8 bes'8\glissando  c''8} 
      | bes'8. g'16~ \tuplet 3/2 {g'8 es'8 d'8} des'4 c'8. es'16~^\markup{\left-align \small vib} 
      \bar "||" es'4 f'4 aes4 bes4 
      | aes4.^\markup{\left-align \small vib} aes8 r4 r8. f'16~ 
      | f'8. f'16~ f'8 g'8 f'8 es'8 b16\glissando  c'8. 
      | aes4..^\markup{\left-align \small vib} aes16~^\markup{\left-align \small vib} aes4 r4 
      | r8 aes'4.^\markup{\left-align \small vib} \tuplet 3/2 {f'4 es'8} \tuplet 3/2 {bes8\glissando  c'8 es'8} 
      | \tuplet 3/2 {bes8\glissando  c'8 es'8~} es'16 bes16\glissando  c'16 es'16~ es'16 b16\glissando  c'16 aes16 \tuplet 3/2 {bes4 f8} 
      | \tuplet 3/2 {aes4 bes8~^\markup{\left-align \small vib}} bes4.. f'16~ f'8 aes'8~ 
      | aes'16 bes'8 bes'16~ bes'16\glissando  b'16 bes'16 bes'16 aes'8 bes'4. 
      \bar "||" r2. \tuplet 3/2 {f'8 aes'8 bes'8} 
      | \tuplet 3/2 {b'8 c''8 b'8} \tuplet 3/2 {bes'8 aes'8 f'8} aes'4^\markup{\left-align \small vib} \tuplet 3/2 {f'4 c'8} 
      | aes'4^\markup{\left-align \small vib} f'8. c'16 aes'4^\markup{\left-align \small vib} f'8\bendAfter #-4  e'8 
      | r4 \tuplet 3/2 {f'8 aes'8 bes'8} \tuplet 6/4 {b'8 c''16 b'8 bes'16~} \tuplet 3/2 {bes'8 aes'8 f'8} 
      | aes'4^\markup{\left-align \small vib} f'8. des'16 aes'4^\markup{\left-align \small vib} r4 
      | r8 aes'8~ \tuplet 3/2 {aes'8 aes'8 f'8~} f'16 g'16\glissando  aes'8 a'16\glissando  bes'16 bes'16\glissando  b'16 
      | \tuplet 3/2 {b'8\glissando  c''8 c''8\glissando } \tuplet 3/2 {des''8 des''8\glissando  d''8} \tuplet 3/2 {d''8\glissando  es''8 aes'8~} \tuplet 3/2 {aes'8 bes'8\glissando  c''8} 
      | bes'8 ges'8 \tuplet 3/2 {es'8 d'8 des'8} \tuplet 3/2 {c'8 es'8 fis'8} \tuplet 3/2 {b'8 bes'8 a'8} 
      | \tuplet 3/2 {aes'8 f'8 des'8} \tuplet 3/2 {bes8 f8 aes8~^\markup{\left-align \small vib}} aes8 r8 r4 
      | r2 aes'8. aes16~ aes4 
      | \tuplet 3/2 {bes8\glissando  c'8 es'8~^\markup{\left-align \small vib}} es'4 r4 r8 c'8 
      | des'8 c'8 b8 c'8 e'8 c'8 \tuplet 3/2 {c''4 bes'8} 
      \bar "||" \mark \default aes'8 c'8 \tuplet 3/2 {f'8 g'8 aes'8} r4 r8 aes'8~ 
      | \tuplet 6/4 {aes'8.\glissando  g'16 ges'16 f'16} e'8. c'16 aes8 e8 \tuplet 3/2 {c8 bes,8 aes,8~} 
      | aes,8 r8 r2. 
      | r8. aes'16~ aes'8 f'4 e'8 f'4 
      | es''8 des''4.^\markup{\left-align \small vib} r2 
      | r8 des'4.^\markup{\left-align \small vib} c'8 des'8 \tuplet 3/2 {f'4 g'8~} 
      | g'16 bes'16\glissando  c''8 bes'4.^\markup{\left-align \small vib} r8 r4 
      | \tuplet 6/4 {r4 bes'16\glissando  b'16~} \tuplet 3/2 {b'8 bes'8 aes'8~} \tuplet 6/4 {aes'8 bes'8. aes'16~} aes'8. c'16\glissando  
      \bar "||" \tuplet 3/2 {c''4 f''8~} f''8 c''8~ c''16\glissando  bes'8 bes'16 g'16\glissando  aes'8 f'16 
      | aes'4^\markup{\left-align \small vib} \tuplet 3/2 {f'4 c'8} e'4^\markup{\left-align \small vib} aes'8 r8 
      | r4 \tuplet 3/2 {r8 e'8 f'8~} f'8 g'8 \tuplet 3/2 {aes'8 e'8 g'8} 
      | \tuplet 6/4 {f'8 c'16 es'8 c'16} d'4^\markup{\left-align \small vib} r2 
      | r4 r8 f'8 g'8 g'8\glissando  \tuplet 3/2 {aes'8 f'8 des'8} 
      | bes4.^\markup{\left-align \small vib} r8 \tuplet 6/4 {r8. b'8\glissando  c''16~} c''8 aes'16 f'16 
      | des'4^\markup{\left-align \small vib} r4 es''8 d''8 des''8 c''8 
      | es''2^\markup{\left-align \small vib} bes'8\glissando  b'8 es''4 
      \bar "||" bes'4. bes'8 bes'8 aes'8 \tuplet 3/2 {es'4 c'8} 
      | bes4^\markup{\left-align \small vib} r4 r8 aes8 g16 aes16 c'16 es'16 
      | \tuplet 6/4 {g'16 bes'16 c''4~^\markup{\left-align \small vib}} c''8 bes'8 \tuplet 3/2 {aes'4 es'8} \tuplet 3/2 {d'8 des'8 c'8~^\markup{\left-align \small vib}} 
      | c'8 r8 r2. 
      | r8 es'8~ \tuplet 3/2 {es'8 f'8 aes'8} \tuplet 3/2 {bes'8\glissando  c''8 es''8~} es''4 
      | \tuplet 3/2 {es'8 f'8 aes'8} \tuplet 3/2 {bes'8\glissando  c''8 es''8~} es''4 \tuplet 3/2 {bes'8\glissando  c''8 es''8} 
      | \tuplet 3/2 {a'8 bes'8 des''8~} des''4 \tuplet 3/2 {g'8 aes'8 c''8} \tuplet 3/2 {f'8 ges'8 bes'8~} 
      | bes'4 \tuplet 3/2 {es''8 des''8 aes'8} \tuplet 3/2 {e'8 es'8 des'8} \tuplet 3/2 {aes8 e8 es8} 
      \bar "||" des8 c8~^\markup{\left-align \small vib} c2~ \tuplet 3/2 {c8 d8 e8} 
      | g4^\markup{\left-align \small vib} r2 r8. f16 
      | aes4 bes4 b4\glissando  \tuplet 3/2 {c'4 g'8~} 
      | g'8. f'16~^\markup{\left-align \small vib} f'4 r4 r8 aes'8~ 
      | aes'8 f'8~ f'4~ f'16 des'8 aes16~ \tuplet 5/4 {aes8. b16\bendAfter #+4  c'16~} 
      | c'8 b8 \tuplet 3/2 {aes4 bes8~^\markup{\left-align \small vib}} bes8 r8 r4 
      | r8 aes16 bes32 b32 \tuplet 3/2 {c'8 es'8 f'8} aes'16 f'8 aes'16 \tuplet 3/2 {f'8 aes'8 f'8} 
      | \tuplet 3/2 {aes'8 f'8 aes'8} \tuplet 3/2 {f'8 aes'8 f'8} \tuplet 5/4 {aes'8 es'16\glissando  e'16 f'16~} f'16 aes'16 bes'16\glissando  b'16 
      | c''4.^\markup{\left-align \small vib} aes'16 f'16 aes'4.^\markup{\left-align \small vib} f'16 des'16 
      | bes8 c'8 \tuplet 3/2 {des'4 d'8} es'8 r8 \tuplet 6/4 {r8. bes8\glissando  c'16~} 
      | c'8 aes4 r8 r4 g16 aes16 bes16 c'16 
      | des'16 c'16 bes16 aes16 g16 aes16 bes16 c'16 des'16 c'16 bes16 aes16 g16 aes16 bes16 c'16 
      \bar "||" \mark \default des'16 c'16 bes16 g16 aes16 g16 f16 g16 aes16 bes16 b16 c'16 des'16 c'16 b16 bes16 
      | \tuplet 3/2 {b8 bes16 r8.} r2.\bar  ".."
    }
    >>
>>    
}
