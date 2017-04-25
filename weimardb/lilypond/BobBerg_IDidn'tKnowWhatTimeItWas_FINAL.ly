\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Didn't Know What Time It Was"
  composer = "Bob Berg"
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
      
      | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 | g2:min7 c2:7 | d1:min | bes2:maj a2:min7 | g2:min7 f2:min7 
      | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 | g2:min7 c2:7 | d1:min | bes2:maj a2:min7 | g2:min7 c2:7 
      | f2:6 d2:min7 | e1:min5-7 | a1:7 | d2:min7 c4:min7 f4:7 | bes2:maj a2:775+ | d1:min7 | g2:9sus4 g2:13.9 | g2:min7 f2:min7 
      | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 | g2:min7 c2:7 | d1:min | bes2:maj a2:min7 | bes2:min7 es2:7 
      | a2:min7 d2:7 | g2:min7 c2:7sus4 | f1:6 | s1 | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 
      | g2:min7 c2:7 | d1:min7 | bes2:maj a2:min7 | g2:min7 f2:min7 | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 
      | g2:min7 c2:7 | d1:min | bes2:maj a2:min7 | g2:min7 c2:7 | f2:6 d2:min7 | e1:min5-7 | a1:7 | d2:min7 c4:min7 f4:7 
      | bes2:maj a2:775+ | d1:min7 | g2:9sus4 g2:13.9 | g2:min7 f2:min7 | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 
      | g2:min7 c2:7 | d1:min | bes2:maj a2:min7 | bes2:min7 es2:7 | a2:min7 d2:7 | g2:min7 c2:7sus4 | f1:6 | s1 
      | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 | g2:min7 c2:7 | d1:min | bes2:maj a2:min7 | g2:min7 f2:min7 
      | e2:min7 a2:7 | d2:min7 e2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 | g2:min7 c2:7 | d1:min | bes2:maj a2:min7 | g2:min7 c2:7 
      | f2:6 d2:min7 | e1:min5-7 | a1:7 | d2:min7 c4:min7 f4:7 | bes2:maj a2:775+ | d1:min7 | g1:13.9 | g2:min7 f2:min7 
      | e2:min7 a2:7 | d2:min7 b2:min5-7 | e2:min7 a2:7 | d2:min7 g2:7 | g2:min7 c2:7 | d1:min7 | bes2:maj a2:min7 | bes2:min7 es2:7 
      | a2:min7 d2:7 | g2:min7 c2:7sus4 | f1:6 | s1 | e2:min7 a2:7|
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


      \tempo 4 = 127
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 c''4 a'8. g'16~ 
      | g'4 e'8. f'16 g4 a4 
      | r2 c''8. a'16~ a'8 g'8~ 
      | g'2 e''4 \tuplet 3/2 {d''4 bes'8~} 
      | bes'2 a'4 \tuplet 3/2 {g'4 c'8~} 
      | c'8 r8 r4 \tuplet 7/8 {r16. c''32 d''16 c''32~} c''8 f'8~ 
      | \tuplet 3/2 {f'8 b'8 d''8} c''8 ges'8~ \tuplet 6/4 {ges'8 bes'16 c''16 d''8} c''8 g'8~ 
      | g'8 d''8 c''8. bes'16~ bes'8 c''8 bes'8. a'16~ 
      \bar "||" a'8 g'8 f'8 dis'4. \tuplet 3/2 {cis'4 e'8~} 
      | e'4 r2 r8 c''16 bes'16 
      | a'4. g'16 f'16 dis'4 \tuplet 3/2 {cis'4 e'8~} 
      | e'4 \tuplet 3/2 {des'4 a8~} a4. a'8 
      | ges'8 d'4 r8 r8. e''16 des''8 a'8~ 
      | a'4. c''16 a'16 f'4 \tuplet 3/2 {d''8 a'8 f'8~} 
      | f'8 r8 r4 \tuplet 5/4 {r16 bes'16 c''16 a'16 g'16} \tuplet 6/4 {fis'8 es'8 d'16 c'16~} 
      | c'16 bes16 gis16 a16 aes16 g16 bes16 d'16 \tuplet 5/4 {f'16 a'16 g'16 f'16 d'16} f'16 e'8 des''16~ 
      \bar "||" des''32 c''8 des'16 bes'32~ bes'16 a'16 bes16 des'16~ des'16 f'8 des'16 c'8 r8 
      | r4 r8 a16 bes16 bes'4. a'8 
      | es'4. d'8~ d'16 cis'8 bes'16~ bes'16 bes'32 b'32 a'32 aes'16 g'32~ 
      | g'16 f'8 d'16~ d'16. gis'32 a'32 aes'32 g'32 f'32 es'8 c'8~ \tuplet 3/2 {c'8 ges'8 es'8} 
      | d'8 bes8 f8 es8~ es8. bes16 r4 
      | r8 a8 b16 des'16 e'16 a'16 g'16 f'16 des'16 e'16 es'16 d'16 a16 f16 
      | es16 b8 d'16~ d'16 f'8 g'16 e''8 cis''8 a'8 f'8 
      | g'8 d'8 r2 \tuplet 3/2 {a'8 c''8 bes'8} 
      \bar "||" a'8 a'8 r2 r8. a'16~ 
      | a'8 d''8 aes'8 g'16 d'16~ d'16 f'8 f'16 f'16 d'8. 
      | r4 \tuplet 5/4 {r16 gis'16 a'16 bes'16 gis'16} \tuplet 3/2 {a'8 aes'8 g'8} f'16 e'16 d'16 cis'16 
      | \tuplet 6/4 {b16 d'8 f'16 e'16 d'16~} d'32 g'16 e'16 f'32 ges'32 f'32 e'16 d'16 cis'16 e'16 d'16 f'16 e'8 
      | g'16 a'16 bes'16 c''16 a'16 f'16 d'16 bes16 e'8 f'8 fis'8 g'8 
      | d'8 es'4 gis16 a16 \tuplet 3/2 {aes'8 ges'8 des'8} a'16 aes'16 ges'16 f'16 
      | es'16 d'16 r8 r2. 
      | r4 r8 c''16 bes'16 es''16 des''16 a'16 e'16 es'16 des'16 c'16 bes16 
      | a8 r8 r2. 
      | r2 r8. f'16~ \tuplet 5/4 {f'16 g'16 a'16 cis''16 d''16} 
      | c''4 f''4 d''8 bes'8~ \tuplet 6/4 {bes'8 a'16 bes'16 a'16 g'16} 
      | c''8 a'8~ a'16 g'8 f'16~ f'16 e'8 d'16 b8 cis'16 d'16~ 
      \bar "||" \mark \default d'16 cis'8 e'16 g'8 a'4 bes'8 a'8. f'16~ 
      | f'8 r8 r2 g'16 f'16 e'16 d'16~ 
      | \tuplet 6/4 {d'16 cis'8. cis'16 e'16~} e'16 g'8 a'16~ a'16 bes'8 a'16~ a'16 gis'8 a'16~ 
      | \tuplet 3/2 {a'8 e''8 f''8~} f''16 des''8 e''16~ e''8 dis''16 a'16~ \tuplet 3/2 {a'8 g'8 f'8} 
      | a'4 \tuplet 3/2 {d'4 g'8} r2 
      | \tuplet 3/2 {r8 d''8 c''8} bes'16 a'16 g'16 f'16 e'16 es'16 g'16 d'16 \tuplet 6/4 {c'16 f'8 d'16 a16 g16~} 
      | \tuplet 6/4 {g16 bes8 c'16 d'16 f'16~} f'16 c''8 a'16 g'16 e'16 g'16 fis'16 bes'16 f'32 dis'16. bes32 c'32~ 
      | \tuplet 5/4 {c'16 d'16 bes16 a16 g16~} \tuplet 6/4 {g16 c'16 b16 bes8 a16~} \tuplet 6/4 {a16 g16 a8 bes16 c'16} \tuplet 3/2 {a8 g8 d8~} 
      \bar "||" d8 fis8~ fis16 e16 dis16 cis16~ \tuplet 6/4 {cis8 e8 c'16 bes16~} bes8 r8 
      | r8 a16 b16 cis'16 d'16 e'16 g'16~ g'16 gis'16 a'16 bes'16 \tuplet 5/4 {gis'16 a'16 f'16 e'16 d'16} 
      | g'8 r8 \tuplet 6/4 {r4 c''16 bes'16~} \tuplet 6/4 {bes'16 dis''8 cis''16 a'16 g'16} c''8 c''16 bes'16 
      | a'16 f'16 e'8 \tuplet 6/4 {es'16 g'16 f'16 des'16 bes8} e'16 d'16 a16 g16 \tuplet 3/2 {e4 dis8} 
      | \tuplet 7/8 {g32 bes32 d'32 f'32 aes'32 c''32 g'32} r4 \tuplet 6/4 {r16 g'16 a'8 bes'16 c''16} a'16 g'16 e'16 des'16 
      | f'16 d'8 d''16~ \tuplet 6/4 {d''8 c''8 a'16 c''16~} c''16 aes'16 g'16 ges'32 aes'32~ aes'16 f'16 des'16 a16~ 
      | a16 bes16 c'16 d'16 \tuplet 3/2 {f'8 bes'8 bes'8} r2 
      | r16 c'16 c'16 c'16 f'8 f'8 a'8 a'8 c''8 c''8 
      \bar "||" g''8 g''8 \tuplet 3/2 {g''8 e''8 e''8} c''8 c''8 a'8 a'8~ 
      | \tuplet 6/4 {a'16 e''16 e''8 e''16 e''16} des''8 des''8 a'8 bes'8 g'8 g'8~ 
      | \tuplet 6/4 {g'16 cis''16 cis''8 cis''16 cis''16} bes'8 bes'8 a'4 dis'16 e'16 g'16 f'16 
      | e'16 d'16 bes16 a16~ \tuplet 6/4 {a16 es'16 es'16 f'16 aes'8~} \tuplet 10/8 {aes'32 d''8.. c''32 bes'32} \tuplet 5/4 {a'8 g'16 f'16 es'16} 
      | d'8 es'8 r8. f'16~ f'16 bes'8 es''16~ es''16 d''8 bes'16~ 
      | bes'16 a'8 g'16~ g'16 dis'8 e'16 g'4 \tuplet 3/2 {f'4 b8} 
      | r4 \tuplet 5/4 {r8 g16 a16 cis'16~} cis'16 cis'16 f'16 a'16 d''16 cis''16 bes'16 cis''16 
      | \tuplet 3/2 {b'8 aes'8 dis'8} \tuplet 5/4 {e'16 f'16 fis'16 g'16 e'16~} \tuplet 6/4 {e'16 c'16 cis'16 d'16 e'16 g'16~} g'16 bes'16 f'16 g'16 
      \bar "||" a'4~ \tuplet 6/4 {a'4~ a'16 a'16~} a'4~ \tuplet 6/4 {a'4~ a'16 a'16~} 
      | a'8 f''8 e''8. a'16~ a'8 r8 r4 
      | \tuplet 6/4 {r4 r16 a'16~} a'8 a'8~ \tuplet 3/2 {a'8 a'8 a'8} a'8 f''8 
      | e''8 des''4 a'16 b'16 \tuplet 6/4 {des''16 a'8 fis'16 g'16 a'16} \tuplet 3/2 {a'8 f'8 d'8} 
      | r2 r16 g'32 a'16 bes'16 c''32~ \tuplet 6/4 {c''16 a'4 g'16~} 
      | g'16 d''8 c''16 bes'16 a'16 g'16 f'16 \tuplet 5/4 {e'16 es'16 g'16 d'16 c'16} f'16 des'16 aes16 g16 
      | \tuplet 3/2 {bes4 c'8~} c'16 d'8 f'16~ f'8 c''8~ c''8. bes'16~ 
      | bes'8 aes'8 f'16 des'16 bes16 g'16 r4 r8. f'16~ 
      | f'16 e'8 cis''16 \tuplet 5/4 {gis'16 fis'16 e'16 dis'16 c'16} \tuplet 3/2 {dis'4 c''8~} c''16 gis'16 es'8 
      | d'4~ \tuplet 6/4 {d'16 g'16 a'8 bes'16 c''16~} \tuplet 6/4 {c''16 a'16 f'8 d'16 b16~} \tuplet 6/4 {b16 e'16 cis'8 d'16 e'16} 
      | f'16 f'16 g'16 a'16 bes'16 c''8 f''16~ f''4. c''8~ 
      | c''8 f''8 \tuplet 3/2 {b'8 c''8 f''8~} f''8 c''8~ c''32 f''32~ f''8 b'32 des''32~ 
      \bar "||" \mark \default des''8 f''8 cis''8 f''4 cis''8 f''8. c''16 
      | d''8 f''8 d''8 f''8~ \tuplet 6/4 {f''8 a'16 bes'16 d''8~} \tuplet 10/8 {d''32 f''8. a'32 bes'32 cis''32~} 
      | cis''8 f''8 bes'16 cis''8 f''16~ f''8 cis''8 f''8 r8 
      | r8 c''8 f''8 c''16 des''16 f''8 c''8 f''8 c''8 
      | f''4 e''16 f''16 e''16 es''16 c''8 bes'8~ bes'16 a'8 g'16~ 
      | g'16 f'8 e'16~ \tuplet 6/4 {e'16 es'4 bes'16~} bes'8 d''8 \tuplet 3/2 {c''4 f'8~} 
      | f'8 r8 r4 bes'16 b'8 g'16~ g'16 fis'16 d'16 fis'16 
      | g'16 a'16 fis'16 g'16 \tuplet 6/4 {a'8 bes'16 b'16 c''16 d''16} bes'16 a'16 g'16 fis'16 g'16 c''16 bes'16 f'16 
      \bar "||" \tuplet 6/4 {g'16 gis'16 a'16 g'8 b'16} g'16 fis'8 a'16 f'16 e'16 dis'16 g'16~ \tuplet 6/4 {g'16 es'16 d'8 cis'16 f'16~} 
      | f'16 des'16 c'16 b16 \tuplet 5/4 {es'16 b16 bes16 a16 des'16} \tuplet 6/4 {aes8 g8. b16} g16 ges16 f16 a16 
      | f16 e16 dis8 r4 es16 d16 cis16 f16 \tuplet 5/4 {des8 c16 b,16 b,16} 
      | dis16 b,16 bes,16 a,16~ \tuplet 3/2 {a,8 d8 f8~} f16 a16 d'16 f'16 \tuplet 3/2 {a'8 dis''8 f''8~} 
      | f''4~ f''16 f''16 e''16 d''16~ d''16 c''8 bes'16~ bes'16 a'8 f'16 
      | g'8 r8 r8. d'16 d''8 d''8 c''8. f'16~ 
      | f'4~ f'16 d''8 ges'4. d''8 g'16~ 
      | g'4 c''16 d''8 c''16 g''4~ \tuplet 6/4 {g''16 e''4 c''16~} 
      \bar "||" c''4~ \tuplet 6/4 {c''4 a'16 bes'16} \tuplet 3/2 {b'8 c''4} a'16 bes'8 bes'16 
      | a'8 g'8~ g'8. f'16~ f'8. d'16 des'8 e'8 
      | \tuplet 3/2 {g'4 a'8~} \tuplet 3/2 {a'8 aes'8 g'8~} g'8 e'8 cis'8 a8 
      | d'16 f'16 e'16 d'16 \tuplet 3/2 {g'8 g'4} c'16 es'16 d'8 f'16 cis'16 d'16 es'16 
      | d'16 bes16 f16 e16 \tuplet 6/4 {d8. f16 a16 aes16} \tuplet 10/8 {c'16 bes16. cis'32 d'16 dis'32 f'32} bes'8 r8 
      | r8 a'8~ a'16 f''8 des''16~ des''16 e''16 des''16 a'16 f'16 e'16 d'8 
      | r4 des''4~ \tuplet 6/4 {des''8 c''16 a'16 b'16 cis''16~} cis''16 a'16 f'16 d'16~ 
      | \tuplet 5/4 {d'8 f'16 aes'16 bes'16~} \tuplet 5/4 {bes'16 f'16 dis'16 e'16 ges'16} \tuplet 6/4 {d'8 bes16 c'16 d'16 a16} aes16 ges16 aes16 bes16 
      \bar "||" gis16 a8 bes16 c'8 a'4 bes'8 c''8 a8~ 
      | a8 bes8 c'4 a,4 \tuplet 3/2 {a4 d'8} 
      | \tuplet 3/2 {d'8 a'4} d''8 r8 r4 \tuplet 3/2 {a'8 d''8 f''8} 
      | g''4 f''4 cis''8 e''8 d''4 
      | \tuplet 3/2 {g'4 a'8~} a'16 bes'8 c'16~ c'8 c''4 c''8 
      | r4 \tuplet 3/2 {a'8 bes'8 c''8} f'4 f''4 
      | bes'8 c''8 d''8 bes'8 r4 r8 gis'8 
      | c''16 bes'8 a'16~ a'16 g'16 aes'8 f'8 des'8 c'8 bes8 
      | \tuplet 3/2 {c'8 f'8 a'8} \tuplet 3/2 {cis''8 f''4~} f''16 c''8 c''16 a'4~ 
      | \tuplet 6/4 {a'8 gis'16 a'16 bes'16 c''16} f''8 f''8~ f''16 c''8 c''16 \tuplet 3/2 {g'8 a'8 a'8} 
      | f'4 \tuplet 3/2 {a'4 c''8} bes'4 b'16 es''16 f''8 
      | f''4 \tuplet 3/2 {c''8 c''8 c''8} b'8 e'16 b'16 bes'8 bes'8 
      \bar "||" \mark \default a'4 r2.\bar  ".."
    }
    >>
>>    
}
