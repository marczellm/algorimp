\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Funny Valentine"
  composer = "J.J. Johnson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | s4 r2. | s1 | s1 
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | bes1:min7 | g1:min5-7 | c1:9- 
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | bes1:min7 | s1 | es1:7 
      | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj c2:7 | f2:min7 es4:min7 d4:7 | des1:maj | g2:min5-7 c2:7 
      | f1:min | f1:min7+maj | f1:min7 | f1:min6 | des1:maj | g2:min5-7 c2:9- | f2:min7 e2:7 | es2:min7 aes2:7 
      | des1:maj | bes2:min9 es2:7 | aes1:6 | g2:min5-7 c2:7 | f1:min | f1:min7+maj | f1:min7 | f1:min6 
      | des1:maj | bes1:min7 | g1:min5-7 | c1:9- | f1:min | f1:min7+maj | f1:min7 | f1:min6 
      | des1:maj | bes1:min7 | s1 | es1:7 | aes2:maj bes2:min7 | c2:min7 bes2:min7 | aes2:maj bes2:min7 | c2:min7 bes2:min7 
      | aes2:maj c2:7 | f2:min7 es4:min7 d4:7 | des1:maj | g2:min5-7 c2:9- | f1:min | f1:min7+maj | f1:min7 | f1:min6 
      | des1:maj | g2:min5-7 c2:9- | f2:min7 e2:7 | es2:min7 aes2:7 | des1:maj | bes2:min7 es2:7 | aes1:6 | g2:min5-7 c2:7 
      | r1|
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


      \tempo 4 = 133
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r2 \tuplet 3/2 {c'4 des'8} c'8 des'8 
      | c'8 des'8 es'4 es'4 es'4 
      | es'8 e'8 ges'8 e'8 es'4. c'8 
      \bar "||" \mark \default \tuplet 3/2 {bes4 bes8~} \tuplet 6/4 {bes4~ bes16 bes16~} bes8\bendAfter #-4  r8 r4 
      | r16 a16 bes16 bes16 \tuplet 3/2 {bes8 bes8 bes8} bes2~ 
      | bes4. c'8 bes8 r8 r4 
      | r4 r8 c'8 bes4 r8 c'8 
      | \tuplet 3/2 {bes4 c'8} bes4 bes2~^\markup{\left-align \small vib} 
      | bes8 r8 r4 es'2~ 
      | es'4. des'8 bes8 bes4.~^\markup{\left-align \small vib} 
      | bes4 r4 r8. c''16~ c''8 g'8 
      \bar "||" bes'4 aes'4 g'4 f'4 
      | e'4 g'4 f'4 \tuplet 3/2 {c'4 bes8~} 
      | bes8 bes4.^\markup{\left-align \small vib} bes8\bendAfter #-4  r8 r4 
      | r16 a16 bes16 bes16 \tuplet 3/2 {bes8 bes8 bes8} bes4 aes4 
      | \tuplet 3/2 {b8 c'4~} c'8 r8 r8. aes16 \tuplet 3/2 {bes4 c'8} 
      | g'8 g'8 f'8 f'8 es'4 \tuplet 3/2 {d'4 des'8~^\markup{\left-align \small vib}} 
      | des'1~ 
      | des'8 r8 r4 \tuplet 6/4 {r16 es'4 f'16~} f'8 g'8 
      \bar "||" aes'4 es'4 f'8 des'8 \tuplet 3/2 {bes4 g8} 
      | \tuplet 3/2 {aes4 bes8} c'4 \tuplet 3/2 {bes4 c'8} des'8. es'16 
      | f'4 aes'4 es'4 es'8. es'16~^\markup{\left-align \small vib} 
      | es'4 r2. 
      | c''4 g'4 \tuplet 3/2 {bes'4 aes'8} g'8 f'8 
      | \tuplet 3/2 {es'4 c'8~} c'4 e'8 c'8 r4 
      | e'8 f'8~ f'2~ f'8. c'16 
      | es'8 c'16 des'16~ des'16 es'16 c'16 des'16 \tuplet 3/2 {es'8 c'8 des'8} es'4~ 
      \bar "||" es'16 g'16 e'16 f'16 g'4. e'16 f'16 \tuplet 3/2 {g'8 e'8 f'8} 
      | g'4 r4 r16 g'16 e'16 f'16 \tuplet 3/2 {g'8 e'8 f'8} 
      | bes'4 bes'4. aes'8 \tuplet 3/2 {g'8 e'8 f'8} 
      | g'8 f'8 \tuplet 3/2 {g'8 f'4} g'16 f'8. g'8 f'8 
      | bes4^\markup{\left-align \small vib} r4 \tuplet 6/4 {r4 f'16 g'16~} g'8 aes'8 
      | g'8 r8 r8 f'8 e'4 r8 g'8 
      | f'8 r8 r8. aes'16 fis'4 r8. bes'16 
      | aes'8 r8 r8. des''16~ des''16 c''8 bes'16 aes'8 r8 
      | \tuplet 6/4 {r4 r16 e'16} f'4 es'4 c'4 
      | aes4.^\markup{\left-align \small vib} r8 r4 r8 f'8 
      | \tuplet 3/2 {es'4 c'8} aes4 aes4 \tuplet 3/2 {aes4 aes8~^\markup{\left-align \small vib}} 
      | aes4 r2 r8 c'8 
      \bar "||" \mark \default \tuplet 3/2 {f'8 g'8 aes'8} \tuplet 3/2 {aes'8 g'8 f'8} \tuplet 3/2 {f'8 g'8 aes'8} \tuplet 3/2 {aes'8 g'8 f'8} 
      | e'4~ \tuplet 3/2 {e'8 e'8 f'8} g'4 \tuplet 3/2 {g'8 f'8 e'8} 
      | es'4~ \tuplet 3/2 {es'8 f'8 g'8} \tuplet 3/2 {g'8 f'8 es'8} es'4 
      | d'4~ \tuplet 3/2 {d'8 es'8 f'8} f'8 r8 r4 
      | \tuplet 3/2 {bes8 c'8 des'8} des'8. des'16~^\markup{\left-align \small vib} des'2 
      | r2 \tuplet 3/2 {bes8 c'8 des'8} c'8 des'16 es'16 
      | \tuplet 3/2 {des'8 es'8 f'8} \tuplet 3/2 {es'8 des'8 c'8} \tuplet 3/2 {bes8 aes8 g8} f16 es16 r8 
      | r4 r8 d'8 es'2~ 
      \bar "||" es'4.. aes16 bes8 r8 r8 c'8 
      | bes8 r8 r8 c'8 bes8 r8 r8 c''8 
      | b'4 r8 bes8 aes4 r8 c'8 
      | bes8 r8 r8 c''8 bes'8 r8 r8 c'8 
      | bes4 aes4 bes8\glissando  aes4 c'8 
      | a'8 g'8 \tuplet 3/2 {f'4 f'8} es'4 \tuplet 3/2 {d'4 des'8~} 
      | des'4. e8 c'8 bes4.~^\markup{\left-align \small vib} 
      | bes8 r8 r2 r16 es'16 f'16 g'16 
      \bar "||" aes'4 es'4 es'8 f'8 es'8 des'8~ 
      | des'16 b16 c'8 \tuplet 3/2 {aes4 bes8~} bes4. r8 
      | r4 \tuplet 3/2 {es8 f8 g8} \tuplet 3/2 {aes8 bes8 c'8} \tuplet 3/2 {des'8 c'8 bes8} 
      | es'4~ \tuplet 3/2 {es'8 des'8 c'8} f'4~ \tuplet 3/2 {f'8 es'8 des'8} 
      | g'16 f'16 es'8 aes'8 r8 r8. g'16~ g'8 f'8 
      | e'4 g'4 f'4 c'4 
      | f'4.\bendAfter #-4  c'8 \tuplet 3/2 {f'4 c'8} aes4 
      | \tuplet 3/2 {es'4 des'8~^\markup{\left-align \small vib}} des'2 aes'8. c'16~ 
      \bar "||" c'16 fis'16 g'16 g'16 g'4 g'4 g'4 
      | g'4 g'8. g'16~ g'8 f'8 e'8 f'8 
      | bes'2 r4 r8 aes'8 
      | g'8 f'8~^\markup{\left-align \small vib} f'2 r4 
      | r2 r8 f'8 \tuplet 3/2 {g'4 aes'8} 
      | g'4 f'4 \tuplet 3/2 {e'4 des'8} c'8 bes8 
      | \tuplet 3/2 {g4 aes8~} aes4 r4 r8 aes'16 g'16 
      | \tuplet 3/2 {ges'8 bes8 des'8} \tuplet 3/2 {f'8 es'8 des'8} \tuplet 3/2 {c'4 bes8} \tuplet 3/2 {a4 aes8~} 
      | aes4. es'8 d'4 es'4 
      | aes8\bendAfter #-4  r8 r8 bes8 c'8 r8 r8 es8 
      | \tuplet 3/2 {f4 g8} \tuplet 3/2 {aes4 bes8} c'8 des'8 es'8 des'8 
      | \tuplet 3/2 {c'4 des'8~} des'4 bes4 c'8 aes8~ 
      \bar "||" aes4. r8 r2\bar  ".."
    }
    >>
>>    
}
