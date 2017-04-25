\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Star Eyes"
  composer = "Cannonball Adderley"
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
      
      | es1:maj | f2:min bes2:7 | es1:maj | es2:min aes2:7 | des1:maj | g2:dim c2:7 | f1:maj | f2:dim bes2:7 
      | es1:maj | f2:min bes2:7 | es1:maj | es2:min aes2:7 | des1:maj | g2:dim c2:7 | f1:maj | bes2:9 es2:7 
      | aes1:maj | s1 | aes1:min | des1:7 | ges1:maj | s1 | f1:min | bes1:7 
      | es1:maj | f2:min bes2:7 | es1:maj | es2:min aes2:7 | des1:maj | g2:dim c2:7 | f1:maj | bes1:9 
      | es2:7 d2:7 | c2:7 f2:min | bes2:7 es2:maj | bes1:7 | es1:maj | f2:min bes2:7 | es1:maj | es2:min aes2:7 
      | des1:maj | g2:dim c2:7 | f1:maj | f2:dim bes2:7 | es1:maj | f2:min bes2:7 | es1:maj | es2:min aes2:7 
      | des1:maj | g2:dim c2:7 | f1:maj | bes2:9 es2:7 | aes1:maj | s1 | aes1:min | des1:7 
      | ges1:maj | s1 | f1:min | bes1:7 | es1:maj | f2:min bes2:7 | es1:maj | es2:min aes2:7 
      | des1:maj | g2:dim c2:7 | f1:maj | bes1:9 | es2:7 d2:7 | des2:7 c2:7 | f2:min bes2:7 | es2:maj bes2:7|
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


      \tempo 4 = 194
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default g'8 r8 r8 g'8 r2 
      | g'4~ \tuplet 3/2 {g'8 aes'8 bes'8} g'8. f'16~ f'8 es'8 
      | d'4. d'8 r4 r8 bes8 
      | c'8 des'8 bes4 c'8. aes16~ aes8 c'8 
      | r4 r8 aes8 es'8 c'8 cis'8 d'8~ 
      | d'8 bes8 d'8 f'8 \tuplet 3/2 {a'4 aes'8~} aes'16 e'8 d'16 
      | g'8 bes'8 \tuplet 3/2 {a'8 g'8 c''8} r2 
      | aes'8. g'16~ g'16 f'16 e'16 es'16 \tuplet 6/4 {d'8 c'8 b16 c'16} \tuplet 3/2 {d'8 c'8 a8} 
      \bar "||" bes8 r8 r8 d'8\bendAfter #-4  g8 bes8 d'8 f'8~ 
      | \tuplet 3/2 {f'8 d'8 e'8} \tuplet 3/2 {g'4 f'8} cis''16 d''8 e''16 f''8. bes'16~ 
      | bes'8 r8 \tuplet 6/4 {r4 r16 g''16~} g''4. ges''8 
      | ges''4~ ges''16 f''8 es''4. des''16 c''16 aes'16~ 
      | aes'4. ges'8 f'4 es'4 
      | d'4. a8 c'4. bes8 
      | a8 c'8 e'8 g'8 f'8 g'8 aes'8 bes'8 
      | b'8 aes'8 g'8 f'8 \tuplet 3/2 {bes'4 g'8} es'8 aes'8 
      \bar "||" r4 r8 g'8 bes'4 aes'4 
      | des''8. c''16~ c''8. es''16~ es''8 c''4 aes'8~ 
      | aes'8 e''8 \tuplet 3/2 {f''8 ges''4} f''8 es''8 des''8 c''8 
      | b'8 bes'8 aes'16 a'16 aes'16 ges'16 e'8. d'16~ d'16 des'8 b16 
      | bes4. f'8 r2 
      | aes'8 f'8 ges'4 bes'4 aes'8 r8 
      | r4 r8 b'8 c''2 
      | aes'8 bes'16 aes'16 f'8 es'8 d'8 bes8~ \tuplet 6/4 {bes4 f'16 fis'16} 
      \bar "||" g'4 bes'2 c''4 
      | d''8 bes'8 c''8. d''16~ d''8 bes'8 \tuplet 3/2 {f'8 ges'8 f'8~} 
      | f'4. r8 r4 \tuplet 3/2 {a4 c'8} 
      | es'8 ges'8 bes'4 e''16 f''8 ges'16~ ges'8. e'16 
      | f'4~ \tuplet 6/4 {f'8 aes'16 b'16 c''16 es''16} c''8 cis''8 d''8 bes'8~ 
      | \tuplet 6/4 {bes'16 a'8 bes'16 a'16 g'16} \tuplet 3/2 {ges'4 e'8~} e'8 c'8 \tuplet 3/2 {es'4 des'8} 
      | aes4 c'8. bes16 a8 g'8 \tuplet 3/2 {e'8 d'8 c'8} 
      | \tuplet 3/2 {f'4 c'8} es'8 aes'8 \tuplet 3/2 {d'4 bes8} \tuplet 3/2 {b4 c'8~} 
      | \tuplet 3/2 {c'8 bes8 c'8} bes8 g8 bes8. g'16~ g'4 
      | r4 r8 f'8 aes'8 g'8 es'8 f'8 
      | r4 r8 f'16 bes'16 \tuplet 3/2 {aes'8 g'4} es'8 f'8 
      | r4 r8 bes8 \tuplet 3/2 {aes'4 g'8} es'8 bes8 
      \bar "||" \mark \default \tuplet 6/4 {d'4 es'16 g'16~} g'8 b'8 \tuplet 3/2 {d''4 es''8~} es''8 f''8~ 
      | f''2 g''8 fis''8 \tuplet 3/2 {g''8 ges''8 e''8} 
      | es''8 d''8 c''8 b'8 bes'8 a'8 aes'8 g'8 
      | ges'8 des''8 \tuplet 3/2 {f'4 e'8} es'4\bendAfter #-4  \tuplet 3/2 {ges4 aes8~} 
      | \tuplet 5/4 {aes8. b16 c'16} d'16 c'8 cis'16~ \tuplet 3/2 {cis'8 d'8 f'8} \tuplet 3/2 {a'4 aes'8} 
      | e'8 d'8 g'8 bes'8 a'8 g'8 \tuplet 3/2 {b'8 c''8 d''8} 
      | \tuplet 3/2 {b'8 c''8 d''8} b'8 r8 r4 \tuplet 6/4 {r4 b'16 c''16~} 
      | c''16 b'16 bes'16 a'16 aes'16 g'16 f'16 es'16 \tuplet 3/2 {c'8 b8 c'8} d'16 c'16 b16 aes16~ 
      \bar "||" \tuplet 6/4 {aes8 b16 c'16 des'16 c'16~} c'16 bes16 c'16 f'16 \tuplet 6/4 {e'16 d'8 es'16 aes'16 bes'16} c''16 cis''16 d''16 es''16 
      | e''16 f''16 bes'8 r4 \tuplet 3/2 {f''8 fis''8 g''8~} g''8 f''8 
      | es''8 d''8 c''8 b'8 bes'8 a'8 aes'8 g'8 
      | ges'8. a16 des'8 e'8 \tuplet 3/2 {f'4 e'8} f'8 e'8 
      | aes8. aes16~ aes4 f8 g8~ \tuplet 3/2 {g8 c'8 f'8} 
      | d'8 es'8 e'8 es'8 \tuplet 3/2 {bes4 d'8} a8 bes8~ 
      | \tuplet 6/4 {bes16 c'8. des'16 c'16} a4 c'8. a'16 r4 
      | r4 r8 aes'4 g'4 f'8 
      \bar "||" es'4 \tuplet 3/2 {aes'4 aes'8~} aes'16 es'16 aes'16 e'16 bes'4 
      | aes'8 g'8 \tuplet 3/2 {c''4 c''8} bes'4 \tuplet 3/2 {es''4 b'8} 
      | r4 bes'8 aes'8 g'8 bes'8 aes'16 bes'16 aes'16 ges'16 
      | f'8 d'8 es'8 f'8 des'8 b4 des'8~ 
      | des'8 bes8 des'8 f'8 aes'4 ges'8 aes'8 
      | bes'8 des''8 r2 \tuplet 6/4 {r4 a'16 b'16} 
      | c''4 aes'16 bes'16 aes'16 f'16~ f'16 e'8 c'16 g'16 a'16 g'8 
      | \tuplet 3/2 {f'4 c'8} es'8 aes'8 d'8 bes'16 b'16 c''8. bes'16~ 
      \bar "||" bes'2 r4 c''4 
      | bes'8. g'16~ g'4 es'8. c'16~ c'8 bes8~ 
      | bes4 r2 des''4 
      | bes'4 ges'4 es'8. bes16 \tuplet 3/2 {des'4 c'8~} 
      | c'4. r8 r4 c''4 
      | a'8. g'16 \tuplet 3/2 {f'8 des'4} aes'4 \tuplet 3/2 {e'4 g'8~} 
      | \tuplet 3/2 {g'8 e'8 f'8~} f'16 a'8 c''16~ \tuplet 6/4 {c''16 d''8 e''16 f''16 fis''16} \tuplet 3/2 {g''4 f''8~} 
      | f''4 es''8 b'8~ \tuplet 3/2 {b'8 bes'8 aes'8~} aes'16 es'8 bes16 
      | g'8 es'8 g'4 g'8. aes'16~ aes'8 bes'8 
      | r2 \tuplet 3/2 {aes'4 g'8} e'8 g'8 
      | f'4. ges'8 aes'8. b'16 \tuplet 3/2 {c''4 es''8~} 
      | es''8 es''8~ es''4. r8 r4\bar  ".."
    }
    >>
>>    
}
