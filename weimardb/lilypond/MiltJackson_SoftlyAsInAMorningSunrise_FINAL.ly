\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Softly as in a Morning Sunrise"
  composer = "Milt Jackson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key c \minor
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
      | r4 s2. | s1 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | f2:min7 bes2:7 
      | es1:maj | g1:min5-7 | c1:7 | c1:9- | f1:min | c2:7 aes2:11+.9 | d1:min/g | g1:7 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | g1:9 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | f2:min7 bes2:7 
      | es1:maj | g1:min5-7 | c1:7 | c1:9- | f1:min | c2:7 aes2:11+.9 | g1:7 | d2:min5-7 g2:7 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | f2:min7 bes2:7 
      | es1:maj | g1:min5-7 | c1:7 | c1:9- | f1:min | c2:7 aes2:11+.9 | g1:7 | d2:min5-7 g2:7 
      | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | d2:min5-7 g2:7 
      | c1:min7|
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


      \tempo 4 = 137
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r8. a'16 \tuplet 6/4 {c''8 d''8 f''16 g''16~} \tuplet 6/4 {g''16 a''16 c'''8 d'''16 c'''16~} c'''8 bes''16 c'''16 
      | bes''8 g''16 a''16 g''16 f''16 es''16 c''16~ c''16 a'16 c''16 d''16 es''16 f''8 c''16 
      \bar "||" \mark \default c''8 r8 r4 r8. g'16~ g'16 c''16 es''16 f''16~ 
      | f''16 ges''16 f''16 es''16 c''8 bes'8 g'8 f'8 \tuplet 3/2 {es'4 ges'8} 
      | f'8 ges'8~ \tuplet 6/4 {ges'16 f'8. ges'16 c''16~} c''16 es'16 f'16 es'16 c'4~ 
      | c'8 c'8 \tuplet 3/2 {es'8 f'8 g'8} aes'8 bes'16 aes'16 \tuplet 3/2 {es'4 f'8} 
      | es'8. ges'16 a'8 c''8 d''8. b'16~ \tuplet 3/2 {b'8 c''8 d''8} 
      | es''4~ es''16 f''8 es''16~ es''16 c''16 es''16 e''16 \tuplet 3/2 {f''4 es''8~} 
      | es''16 a'8 c''16 d''4 es''8 c''8 g'4~ 
      | g'8 c'8 \tuplet 3/2 {cis'8 d'8 es'8} \tuplet 3/2 {f'8 g'8 aes'8} \tuplet 3/2 {bes'8 b'8 c''8} 
      \bar "||" g'8 r8 r8 f'8 \tuplet 3/2 {es'4 c'8~} c'8. c'16 
      | \tuplet 3/2 {e'8 f'8 c'8} \tuplet 3/2 {e'8 f'8 f'8~} f'8. c'16 es'8 f''8 
      | \tuplet 3/2 {fis''8 g''8 g''8} \tuplet 3/2 {g''8 g''8 g''8} \tuplet 3/2 {fis''8 g''8 g''8} \tuplet 3/2 {g''8 g''8 g''8} 
      | ges''16 f''16 es''16 c''16 \tuplet 3/2 {es''4 f''8~} f''8 ges''16 f''16 es''16 c''8 bes'16 
      | \tuplet 3/2 {g'4 a'8} c''8 d''8 es''8 c''8 bes'8 g'8 
      | \tuplet 3/2 {f'8 aes'8 f'8} es'8 c'8~ c'16 bes8 g16~ \tuplet 3/2 {g8 c'8 d'8~} 
      | \tuplet 6/4 {d'16 d'8 es'16 e'16 es'16} \tuplet 3/2 {d'4 c'8} es'8 r8 r4 
      | \tuplet 7/8 {r16. f'16 a'32 aes'32~} aes'16 bes'16 b'16 des''16 e''16 b''16 aes''16 a''16 bes''8 es''16 aes''16~ 
      \bar "||" \tuplet 6/4 {aes''16 f''16 fis''16 g''8 f''16} es''16 d''16 des''16 es''16~ \tuplet 5/4 {es''16 d''16 des''16 bes'16 g'16} aes'16 fis'16 g'16 f'16 
      | es'8 d'16 es'16 f'16 g'16 aes'16 bes'16 f''16 es''16 des''16 bes'16 aes'8 g'16 aes'16 
      | g'16 f'16 es'8~ es'32 e'8 e'16 f'32 \tuplet 3/2 {g'8 aes'8 bes'8} c''16 des''16 es''16 e''16~ 
      | e''8 e''16 f''16 g''16 a''16 bes''16 c'''16 des'''16 es'''16 des'''16 c'''16 bes''16 c'''16 bes''16 g''16 
      | aes''8 f''16 g''16 aes''16 bes''16 c'''16 bes''16 aes''8 f''8~ f''32 f''32~ f''8 f''32 ges''32 
      | f''16 es''16 c''16 bes'16 a'8 b'8~ b'16 c''8 es''16 c''8 cis''8 
      | d''8 e''8 f''8 g''8 aes''8 f''8 c''8 aes'8 
      | g''8 ges''8 f''8 e''8 d''8 es''8 d''16 b'8. 
      \bar "||" c''8 des''8 \tuplet 3/2 {es''4 f''8} \tuplet 3/2 {fis''8 g''8 c'''8} g''4 
      | f''4.. f''16~ \tuplet 6/4 {f''16 aes''16 f''16 es''8 c''16} \tuplet 3/2 {bes'4 g'8} 
      | g'4 c'8 c'16 d'16 \tuplet 3/2 {es'4 c'8~} c'4~ 
      | c'16 ges16 aes16 f16 ges8 r8 r2 
      | \tuplet 3/2 {r8 c''8 c''8} \tuplet 3/2 {c''8 c''8 c''8} c''16 c''16 c''16 c''16 \tuplet 3/2 {c''8 c''8 c''8} 
      | \tuplet 3/2 {c''8 es''8 c''8} \tuplet 3/2 {bes'8 g'8 f'8} \tuplet 3/2 {es'4 es'8} \tuplet 3/2 {f'4 f'8} 
      | f'16 ges'16 f'16 es'16 c'4 \tuplet 3/2 {bes4 a8~} a8 r8 
      | r4 \tuplet 3/2 {r8 c''8 c''8} \tuplet 3/2 {c''8 c''8 c''8} c''8.. c''32~ 
      \bar "||" \mark \default c''4 es''4 f''4. es''8~ 
      | \tuplet 6/4 {es''16 f''16 ges''16 f''16 es''8} \tuplet 3/2 {d''4 c''8} c''4 bes'4 
      | \tuplet 3/2 {c''4 es''8~} es''4 f''4~ \tuplet 6/4 {f''4 es''16 f''16} 
      | \tuplet 3/2 {aes''8 f''8 es''8} c''8. c''16~ c''8 c''8 \tuplet 5/4 {es''8. e''16 f''16~} 
      | \tuplet 6/4 {f''4 e''16 f''16~} f''8 e''16 f''16 e''16 f''16 es''16 c''16 bes'8. c''16 
      | c''8 g'16 f'16 \tuplet 3/2 {es'4 c'8} es'8 f'8 fis'16 g'8 f'16 
      | es'8 c'8 es'4 c'8. d'16~ d'8 r8 
      | r2 r16 cis''16 d''16 d''16 d''4 
      \bar "||" d''4 c''8 a'8 f'8 a'8 \tuplet 3/2 {c''4 d''8~} 
      | d''8 d''4 d''8 es''16 e''8 d''16 \tuplet 3/2 {c''8 a'8 aes'8} 
      | g'8 es'8 f'8 d'8 es'8 c'8 c'4~ 
      | c'16 g'16 aes'16 a'16 \tuplet 6/4 {fis'16 g'8 bes'8 bes'16~} bes'8 aes'8 \tuplet 3/2 {es'8 f'8 g'8} 
      | r4 \tuplet 5/4 {r16 d'16 f'16 bes'16 d''16} \tuplet 3/2 {b'8 c''8 c''8} g'8 r8 
      | r8 es'8 g'8 es'8 d'8 c'8 b4 
      | d'8 r8 r8. d'16 \tuplet 3/2 {es'4 g'8} r4 
      | r2 \tuplet 6/4 {r4 f'16 d'16~} d'16 bes'16 c''16 d''16 
      \bar "||" \tuplet 3/2 {es''8 d''8 des''8} bes'4 bes'8. d'16 \tuplet 3/2 {des'8 es'8 aes'8} 
      | fis'16 g'8 bes'16 \tuplet 3/2 {c''4 bes'8~} bes'8 fis'8 g'16 f'16 es'16 d'16~ 
      | \tuplet 6/4 {d'16 e'8. g'16 g'16} \tuplet 3/2 {des'4 b8~} \tuplet 6/4 {b16 bes4 c''16~} c''4~ 
      | c''2.. bes'16 aes'16 
      | \tuplet 6/4 {f'8 c'8 d'16 f'16} aes'8 aes'16 g'16 f'16 g'16 aes'16 bes'16 \tuplet 3/2 {b'8 c''8 c''8} 
      | \tuplet 6/4 {des''16 es''8. es''16 f''16~} f''16 ges''16 ges''16 f''16 \tuplet 3/2 {es''8 c''8 d''8} es''16 f''16 es''16 cis''16 
      | d''4 es''16 e''16 f''16 g''16 aes''16 bes''16 aes''16 g''16 f''16 g''16 f''16 es''16 
      | d''16 es''16 d''16 c''16 b'16 bes'16 a'16 aes'16 f'16 g'16 aes'16 bes'16 aes'16 es''16 b'16 c''16 
      \bar "||" d''16 b'16 c''16 des''16 \tuplet 6/4 {es''16 f''8 a''16 b''16 d'''16~} \tuplet 3/2 {d'''8 d'''8 c'''8~} c'''16 g''16 es''8 
      | f''4. \tuplet 6/4 {a''16 bes''16 a''16} bes''16 a''16 es''16 cis''16 b'16 bes'16 aes'16 fis'16 
      | \tuplet 6/4 {g'16 es'8 bes'16 d''16 bes'16~} bes'16 c''16 des''16 es''16 f''16 g''16 aes''16 bes''16 b''16 c'''16 g''8 
      | f''8 r8 r4 r8 es''8 c'''8. d'''16 
      | es'''16 d'''16 c'''16 d'''16 c'''8 bes''8~ bes''16 g''16 ges''16 f''16 es''8 c''8 
      | bes'8 g'8 \tuplet 3/2 {a'8 c''8 d''8} \tuplet 3/2 {es''4 f''8} r4 
      | r4 \tuplet 3/2 {fis''8 g''8 g''8} \tuplet 3/2 {g''8 g''8 g''8} \tuplet 6/4 {fis''8 g''8 g''16 g''16~} 
      | \tuplet 3/2 {g''8 g''8 g''8} \tuplet 3/2 {fis''8 g''8 g''8} \tuplet 3/2 {g''8 g''8 g''8} \tuplet 3/2 {fis''8 g''8 g''8} 
      \bar "||" \mark \default \tuplet 3/2 {g''8 g''8 g''8} \tuplet 3/2 {f''4 es''8} c''4 c''4~ 
      | c''4 \tuplet 3/2 {es''4 f''8~} f''8. d''16 \tuplet 3/2 {fis''8 g''8 ges''8} 
      | f''8 es''8 c''4 \tuplet 3/2 {c''4 bes'8} es'4 
      | bes'4 a'16 bes'8 aes'16~ aes'8 es'8 f'8 aes'8 
      | \tuplet 3/2 {g'4 a'8} c''8 d''8 es''8 f''8 g''8 a''8 
      | \tuplet 3/2 {d'''4 c'''8} d'''8 c'''8 \tuplet 3/2 {b''8 bes''8 a''8} aes''8 f''8 
      | g''8 es''16 c''16 r2 c''8 c''8~ 
      | c''2~ c''8. g''16 c'''4 
      \bar "||" \tuplet 3/2 {cis'''8 d'''8 des'''8} c'''8. g''16~ \tuplet 6/4 {g''4~ g''16 c''16~} \tuplet 5/4 {c''16 d''8 fis''16 g''16~} 
      | g''8 f''8~ f''16 es''16 c''16 bes'16 aes'8 r8 r8 g'8~ 
      | g'8 a'8 \tuplet 3/2 {c''8 des''8 es''8} \tuplet 3/2 {f''8 g''8 a''8} \tuplet 3/2 {d'''4 c'''8} 
      | \tuplet 3/2 {a''8 bes''8 a''8} aes''8 f''8 es''8 c''8 bes'8 aes'8 
      | \tuplet 3/2 {g'4 a'8} c''8 d''8 es''8 f''8 fis''8 g''8 
      | fis''8 g''8~ g''16 ges''16 f''16 es''16 c''8 bes'8 g'8 f'8 
      | f'8. ges'16 \tuplet 3/2 {f'4 es'8~} es'16 f'16 es'16 c'16 r4 
      | r2 r8 fis'8 \tuplet 3/2 {g'8 bes'8 c''8} 
      \bar "||" \tuplet 3/2 {es''4 c''8} f''8 fis''8 \tuplet 6/4 {g''4 es''16 c''16} aes''8 a''8 
      | bes''8 aes''8 f''8 fis''8 \tuplet 3/2 {g''8 aes''8 g''8} f''8 es''8 
      | \tuplet 3/2 {c''4 g''8} des''8 b'8 \tuplet 3/2 {c''4 bes'8~} bes'4~ 
      | bes'2 r4 \tuplet 3/2 {r8 c''8 aes'8} 
      | f'4 f'8 f'8 \tuplet 3/2 {g'8 aes'8 bes'8} b'16 c''8 c''16 
      | c''8 c''16 d''16 es''8 c''8~ c''16 aes'16 a'16 a'16 ges'16 f'16 es'8 
      | d'4 d'16 e'16 f'16 aes'16~ aes'16 bes'16 aes'16 f'16 es'8 aes'16 bes'16 
      | c''16 d''16 f''16 aes''16~ aes''16 fis''16 g''16 ges''16 f''16 es''8 c''16~ c''16 aes''8 fis''16 
      \bar "||" \tuplet 6/4 {g''8 c'''8 b''16 c'''16~} c'''16 g''16 es''8 f''16 g''16 a''16 g''16~ g''8 d''8 
      | f''8 r8 r2 r8 g''8 
      | c'''8 d'''16 c'''16~ c'''16 bes''8 g''16 c'''8 d'''16 c'''16 bes''8 g''8 
      | c'''8 d'''16 c'''16 bes''8 g''8~ \tuplet 6/4 {g''4 c'''16 bes''16} g''8 f''8 
      | g''8 aes''16 g''16 ges''8 f''8 f''8 ges''16 f''16 es''8 c''8 
      | \tuplet 3/2 {d''8 es''8 d''8} c''8 a'8 aes'8 f''8 es''4 
      | d''4~ d''16 c''16 d''16 es''16 es''8 d''8 g'8 es'8 
      | f'8 f'4 f'8 \tuplet 3/2 {f'8 es'8 c'8} bes8 g8 
      \bar "||" \mark \default c''4 r2.\bar  ".."
    }
    >>
>>    
}
