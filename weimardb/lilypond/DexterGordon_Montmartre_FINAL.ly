\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Montmartre"
  composer = "Dexter Gordon"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \minor
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
      | r1 | s1 
      | bes1:min | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s1 | ces1:7 
      | bes1:min | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | f1:7 | c2:min7 f2:7 | bes1:min 
      | f1:min7 | bes1:7 | e2:min7 a2:7 | es2:7 aes2:7 | f1:min7 | bes1:7 | c1:min7 | f1:7 
      | bes1:min | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s2 f2:7 | bes1:min 
      | s1 | c2:min7 f2:7 | bes1:min | s1 | s1 | c1:min7 | s1 | g1:7 
      | bes1:min | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s2 f2:7 | s1 
      | f1:min7 | bes1:7 | e2:min7 a2:7 | es2:min7 aes2:7 | f1:min7 | bes1:7 | c1:min7 | f1:7 
      | ces1:7 | f1:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s2 f2:7 | bes1:min 
      | s1 | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s1 | ces1:7 
      | bes1:min | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | f1:7 | c2:min7 f2:7 | bes1:min 
      | f1:min7 | bes1:7 | e2:min7 a2:7 | es2:min7 aes2:7 | f1:min7 | bes1:7 | c1:min7 | f1:7 
      | bes1:min | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s2 f2:7 | bes1:min 
      | s1 | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s1 | f1:7 
      | bes1:min | c2:min7 f2:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s2 f2:7 | bes1:min 
      | f1:min7 | bes1:7 | e2:min7 a2:7 | es2:min7 aes2:7 | f1:min7 | bes1:7 | c1:min7 | f1:7 
      | bes1:min | f1:7 | bes1:min | ces1:7 | bes1:min | c1:min7 | s2 f2:7 | bes1:min|
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


      \tempo 4 = 204
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r4 bes'4 g'8 es'8 c'8 bes8 
      | e'8 f'8~ f'16 des'8 bes16~ bes8 bes8~ bes16 des'8 f'16 
      \bar "||" \mark \default es'4 es'4 r2 
      | r8 des'8~ des'16 es'8 aes'16~ aes'8 es'8~ es'16 aes'8 f'16~ 
      | f'4. r8 r2 
      | r8. des'16~ des'16 es'8 aes'16~ aes'16 ges'8 aes'16~ aes'16 ges'8 aes'16 
      | f'4. c''8~ c''16 g'8 f'16 des'8 bes8 
      | es'4 aes'4 ges'8 des'4 bes8~ 
      | bes16 es'8 ges'16~ ges'16 f'8 aes'16~ aes'16 ges'8 es'16~ es'16 des'8 bes16 
      | des'8 f'8~ f'16 es'8 f'16~ \tuplet 6/4 {f'8 ges'8. f'16} es'8 r8 
      \bar "||" r2 r16 des'8 es'16~ es'8 f'8 
      | bes'8 c''4 r8 r8. f'16~ \tuplet 5/4 {f'8 bes'8 ges'16~} 
      | ges'8 f'8 f'8 r8 r2 
      | \tuplet 6/4 {r8 f'16 ges'8 f'16~} f'16 e'8 ges'16~ ges'8 aes'8 ges'16 f'8 es'16 
      | f'4.. es'16~ es'16 des'8 bes16 g4~ 
      | \tuplet 3/2 {g8 c'8 des'8} d'16 es'16 d'16 des'16~ des'16 c'8 bes16~ bes16 a8 c'16~ 
      | \tuplet 3/2 {c'8 es'8 ges'8} \tuplet 3/2 {es'4 e'8} f'8\bendAfter #-4  e'8~ \tuplet 3/2 {e'8 a8 bes8} 
      | c'8. bes16~ bes4. r8 r4 
      \bar "||" r4 c'8 bes8 aes8 bes8 c'8 es'8 
      | g'8 aes'8 g'8 f'8~ f'16 es'8 c'16~ c'16 aes8 ges16~ 
      | \tuplet 6/4 {ges16 e'4 ges'16~} ges'16 e'8 d'16~ d'8 des'8 b8 g8 
      | es'8 f'8~ f'16 es'8 des'16~ des'16 c'8 bes16~ bes16 aes8 ges16~ 
      | ges8 f8~ f16 aes8 c'16 es'4 es'8. c'16~ 
      | \tuplet 6/4 {c'16 d'4 bes'16~} bes'8 r8 r2 
      | r4 es'8 e'16 f'16 \tuplet 3/2 {ges'8 f'8 e'8} \tuplet 3/2 {es'4 des'8~} 
      | des'16 c'8 bes16~ bes16 a8 c'16 es'8 ges'8 es'8 e'8 
      \bar "||" f'4~ f'16 b'16\bendAfter #+4  c''8~ c''16 bes'8 g'16 f'8 es'8~ 
      | es'8 des'8 \tuplet 3/2 {d'8\bendAfter #+4  des'4~} des'16 c'8 des'16~ des'16 c'8 bes16~ 
      | bes8 a8 f4. r8 r4 
      | r16 d8 es16~ \tuplet 3/2 {es8 ges8 a8} des'4 \tuplet 3/2 {a4 c'8~} 
      | c'2~ c'8 r8 r4 
      | r8 a8 \tuplet 3/2 {bes8 des'8 f'8~} \tuplet 3/2 {f'8 b'8 c''8~} c''8 bes'8 
      | es'2 e'8 f'8~ f'8. des'16~ 
      | des'8 c'8 bes4 r2 
      \bar "||" \mark \default r8. bes16~ bes16 des'8 f'16~ f'16 bes'8 g'16~ g'4~ 
      | g'8. bes16~ bes8 des'16 es'16~ es'8 des''8 aes'4 
      | r2 des'8 c''8 g'4~ 
      | g'8. d'16~ \tuplet 6/4 {d'8 es'8. des''16~} des''8 aes'8 ges'4 
      | r4 r8. c'16~ c'16 des'8 c''16~ c''8 g'8~ 
      | \tuplet 6/4 {g'4~ g'16 d'16~} d'8 es'8 des''8 aes'8 ges'8 d'8 
      | r4 a'8 bes'8 a'16 ges'8 f'16~ f'16 es'8 des'16 
      | f'4. es'4 des'8 c'8 bes8 
      \bar "||" aes8 a8 f4. r8 r4 
      | r8 f8 ges4 f'4~ \tuplet 6/4 {f'8 es'8. c'16~} 
      | \tuplet 6/4 {c'8 des'8. es'16~} es'8 f'8 g'8 c''8 bes'8 g'8 
      | f'8 aes'8 g'8 ges'8 \tuplet 6/4 {bes'8. es'16 e'16 f'16~} f'8 es'8 
      | des'4. r8 r2 
      | \tuplet 6/4 {r4 c'16 des'16~} des'16 es'16 ges'16 a'16 bes'8 e'8 f'8. es'16~ 
      | es'8 des'8~ \tuplet 5/4 {des'8 es'16 f'16 g'16} c''16 bes'8. c''8 f'8~ 
      | f'8 r8 r2 r16 f'8 g'16~ 
      \bar "||" \tuplet 6/4 {g'16 aes'8. a'16 aes'16} g'8 f'8 bes'8 r8 r4 
      | aes'8 a'8 aes'16 g'8 f'16~ f'16 bes'8 es'16\bendAfter #+4  e'16 f'8.~ 
      | f'8 e'8~ e'16 e'8 ges'16~ ges'8 ges'4.~ 
      | ges'8\bendAfter #-4  es'4 es'8 \tuplet 3/2 {f'4 ges'8~} ges'16 aes'8 es'16 
      | f'4 r2 aes'16 ges'16 e'16 f'16 
      | ges'16 f'16 r8 r2. 
      | r8. bes'16 aes'16 es'8. f'16 ges'8 aes'16~ aes'16 bes'8 des''16~ 
      | des''16 c''8 bes'16~ bes'16 a'8 bes'16~ bes'8 c''4 f''8~ 
      \bar "||" f''4.. des''16~ des''8 bes'8 f'8 r8 
      | r8. es''16~ es''16 c''8 a'16~ a'16 g'16 ges'8 ges'8 r8 
      | r8. des''16~ des''16 bes'8 f'16~ f'8 es'8 f'8. b16 
      | des'4.. bes16 c'8 des'8 c'16 bes8 g16 
      | aes8\bendAfter #+4  a4 f4. r4 
      | r2 \tuplet 6/4 {f16 aes16 b8 des'16 c'16~} \tuplet 3/2 {c'8 bes8 a8} 
      | es'16 ges'16 f'8 r2. 
      | r8 e'16 f'16 \tuplet 3/2 {e'4 f'8} ges'8 g'8~ g'16 aes'8 a'16~ 
      \bar "||" \mark \default \tuplet 6/4 {a'8 bes'8. des''16~} des''16 c''8 bes'16~ bes'8 a'8 \tuplet 3/2 {ges'8 f'4} 
      | es'8 des'8 \tuplet 3/2 {g8 bes8 c'8~} c'8 des'8~ \tuplet 3/2 {des'8 ges8 g8} 
      | c'2. r4 
      | r8. f16~ f16 g8 des'16~ des'8. f16 g8 c'8 
      | r4 r8. f16~ f16 g8 des'16~ des'4 
      | f16 g16 c'8 \tuplet 3/2 {f8 g8 des'8~} des'4 ges16 g16 c'8 
      | r2 r16 c'8 des'16 \tuplet 3/2 {c'4 bes8~} 
      | \tuplet 6/4 {bes16 a4 c'16~} c'8 es'8 \tuplet 6/4 {f'8. aes'8 ges'16~} ges'16 es'8 e'16~ 
      \bar "||" e'8 f'8~ f'16 f'8 bes'16 g'4 g'8 c''8 
      | a'4 \tuplet 3/2 {a'4 des''8} bes'4 \tuplet 3/2 {bes'4 e''8\bendAfter #+4 } 
      | f''4 r2. 
      | r4 \tuplet 6/4 {c''16 des''16 c''16 bes'8.} a'16 ges'16. f'32 e'32 es'32~ es'16 des'16 c'8 
      | r2 r8 b'8 c''4~ 
      | c''2~ c''8 f'8~ f'16 g'8 f'16~ 
      | f'8 c''8~ c''16 g'8 f'16~ f'4. r8 
      | r4 r8. es''4. b'8 d''16 
      \bar "||" c''4 g'8 bes'8 aes'8 r8 r4 
      | g''8 es''8~ es''16 c''8 aes'16~ \tuplet 6/4 {aes'8 g'8. f'16~} f'8 r8 
      | r4 ges''8 d''8~ \tuplet 6/4 {d''8 b'8. g'16~} g'4 
      | d''16\bendAfter #+4  e''16 f''8~ f''16 des''8 bes'16~ \tuplet 3/2 {bes'8 ges'8 f'8~} f'8 r8 
      | r4 r16 d''16 es''16 d''16 c''8 aes'8 f'8 c'8 
      | es'8 c'8 d'8 bes'4 r8 r8. es'16~ 
      | es'8 f'8~ f'16 ges'8 ges'16 aes'8 aes'8 bes'8 bes'8~ 
      | bes'16 c''16 des''8~ des''16 c''8\bendAfter #+4  e''16 f''4. es''8 
      \bar "||" des''8 g'4. r2 
      | \tuplet 6/4 {r16 ges8. aes16 b16} des'16. es'16 ges'32 aes'32 bes'32 \tuplet 3/2 {c''8 g'4~} \tuplet 3/2 {g'8 c''8 f'8~} 
      | f'8 r8 r2. 
      | r4 r8 es'16\bendAfter #+4  e'16 f'2~ 
      | f'1~ 
      | f'4. e'8 f'8 ges'8 \tuplet 3/2 {f'4 es'8~} 
      | \tuplet 5/4 {es'16 f'8. f'16~} f'8 r8 r2 
      | r8 f'8 f'4 f'8 f'4 f'8 
      \bar "||" \mark \default f'4~ f'16 f'8 f'16~ f'8. f'16~ f'16 f'8 f'16~ 
      | f'4~ f'16 es'8 des'16~ des'16 es'8 f'16~ f'4 
      | r2 \tuplet 3/2 {r8 e'8 f'8} e'4~ 
      | e'4. bes'8~ bes'16 e'16\bendAfter #+4  f'16 e'16~ e'16 es'8 des'16~ 
      | des'16 bes8 bes16~ bes16 bes8 bes16~ \tuplet 6/4 {bes16 des'4 bes16~} \tuplet 3/2 {bes8 bes8 bes8} 
      | es'8 bes8~ bes16 bes8 bes16~ bes16 es'16 f'16 e'16 es'8 des'8 
      | \tuplet 3/2 {bes4 c'8\bendAfter #+4 } des'8 r8 r2 
      | r8 c'8 des'8 c'8 bes16 a8 ges16~ ges16 f8 es16~ 
      \bar "||" es16 f8 bes,16~ bes,4. r8 r4 
      | ges4 b,2 r4 
      | r8 f8 bes,2.~ 
      | bes,16 b8 b,16~ b,4 b8 ges4. 
      | r2 bes,8 f8 bes8 f'8 
      | bes'8 f'8 bes'8 f'8 c'8 bes8 ges8 f8 
      | bes4.. des'16~ des'8 r8 r4 
      | r4 r8 es'8\bendAfter #+4  e'8 f'8 r4 
      \bar "||" r4 r8. bes16 c'16 d'16 es'16 g'16 aes'8 bes'8~ 
      | bes'8 r8 r8 g'8~ g'16 aes'8 f'16~ f'8. bes'16 
      | g'16 e'8 ges'16~ ges'8 g'8 a'8 b'8 e''4 
      | es''4.. bes'16~ bes'16 ges'8 es'16 f'4 
      | es'4.. f'16~ f'8 r8 r4 
      | r4 r8 a'8 bes'4.. ges'16~ 
      | \tuplet 3/2 {ges'8 des''8 c''8} b'16 bes'8. bes'8 g'8 ges'4~ 
      | \tuplet 3/2 {ges'8 f'8 e'8} es'4 \tuplet 3/2 {des'8 c'4~} c'8. bes16~ 
      \bar "||" bes8 a8 \tuplet 3/2 {f'8\bendAfter #+4  ges'8 f'8} es'8 f'4. 
      | r4 r8. d'16~ d'16 es'8 des'16~ des'8 a'16 es'16~ 
      | es'8 f'8 f'4 \tuplet 6/4 {g'16 bes'16 c''16 g'8.} f'4 
      | r2. r16 bes'8 bes'16~ 
      | bes'16 bes'8 bes'16 \tuplet 3/2 {bes'4 bes'8~} bes'16 bes'8 bes'16~ bes'16 bes'8 bes'16~ 
      | bes'8 bes'8~ bes'8. des''16 r4 r8 bes16 bes16~ 
      | bes16 bes8 bes16~ bes16 bes8 bes16~ bes16 bes8 bes16 bes8 bes8~ 
      | bes16 c'16 des'8~ des'16 c'16\bendAfter #+4  des'8~ des'16 bes8 f16~ f16 a8 c'16~ 
      | c'8 bes8 g4. r8 r4\bar  ".."
    }
    >>
>>    
}
