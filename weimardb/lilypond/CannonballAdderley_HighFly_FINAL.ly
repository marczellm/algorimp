\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "High Fly"
  composer = "Cannonball Adderley"
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
      | s2. r4 
      | d1:min7 | g1:7 | c2:maj f2:7 | e2:min7 a2:min7 | c1:min7 | f1:7 | bes1:7 | b1:7 
      | d1:min7 | g1:7 | c2:maj f2:7 | e2:min7 a2:min7 | c1:min7 | b1:7 | d1:min5-7 | g1:9- 
      | c1:min5-7 | f1:7 | d1:min7 | g1:9- | c1:min5-7 | f1:7 | e2:min7 a2:min7 | es2:min7 aes2:min7 
      | d1:min7 | g1:7 | c2:maj f2:7 | e2:min7 a2:min7 | c1:min7 | f1:7 | bes1:6 | b1:13.9 
      | d1:min7 | g1:7 | c2:maj f2:7 | e2:min7 a2:min7 | c1:min7 | f1:7 | bes1:6 | b1:13.9 
      | d1:min7 | g1:7 | c2:maj f2:7 | e2:min7 a2:min7 | c1:min5-7 | f1:7 | d1:min7 | g1:9- 
      | c1:min5-7 | f1:7 | d1:min7 | g1:9- | c1:min5-7 | f1:7 | e2:min7 a2:min7 | es2:min7 aes2:min7 
      | d1:min7 | g1:7 | c2:maj f2:7 | e2:min7 a2:min7 | c1:min7 | f1:7 | bes1:6 | b1:13.9|
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


      \tempo 4 = 129
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. g'4 
      \bar "||" \mark \default c''4 \tuplet 3/2 {a'4 f'8} d'4 des'4 
      | \tuplet 6/4 {c'4 d'16 c'16} a8 bes8 \tuplet 3/2 {b4 b'8~} b'8. a'16 
      | \tuplet 3/2 {g'4 es'8~} es'16 d'16 c'16 d'16~ d'4 r4 
      | r8 b16 c'16 d'16 b8. c'4 g'16 f'16 e'16 d'16 
      | es'16 f'16 g'16 bes'16 d''4 \tuplet 3/2 {c''4 bes'8} \tuplet 3/2 {g'4 es'8} 
      | c'8 g8 \tuplet 3/2 {bes4 es'8} a4 \tuplet 3/2 {ges'8 f'8 es'8} 
      | \tuplet 3/2 {d'4 f8} fis8 g4. r4 
      | gis'8 fis'8 \tuplet 3/2 {cis'8 bes8 gis8} fis4 g4 
      \bar "||" g'8 g'8 \tuplet 3/2 {e'8 c'8 a8} d'4 \tuplet 3/2 {g'4 e'8} 
      | \tuplet 3/2 {c'8 a8 d'8} b4 g4 g'4 
      | e''8 e''8 bes'4 g'4 \tuplet 3/2 {f'4 c'8} 
      | \tuplet 3/2 {e'4 g'8} r2 \tuplet 3/2 {c''4 g'8} 
      | es''8 c''8 bes'16 a'16 aes'16 g'16~ \tuplet 3/2 {g'8 es'8 c'8} g8 gis8 
      | \tuplet 3/2 {a8 f'8 es'8} \tuplet 3/2 {gis'8 fis'8 b'8} \tuplet 3/2 {a'8 d''8 c''8} f''8 es''8 
      | \tuplet 3/2 {d''4 f'8} \tuplet 3/2 {g'8 f'8 aes'8~} aes'4 r4 
      | \tuplet 5/4 {r8. g'16 ges'16} f'16 e'16 es'16 bes16 \tuplet 5/4 {d'16 c'16 b16 d'16 f'16} bes'16 aes'16 g'16 f'16 
      \bar "||" \tuplet 3/2 {ges'4 es'8} r4 r8. bes16 d'4 
      | des'8. f16~ f4.. cis'16 \tuplet 5/4 {d'8 f'16 a'16 c''16} 
      | \tuplet 3/2 {e''4 d''8} r4 r16. cis'16 d'16 f'32~ \tuplet 3/2 {f'8 a'8 c''8} 
      | b'8 g'8 r4 \tuplet 5/4 {r8. bes'16 a'16} \tuplet 3/2 {aes'8 g'8 ges'8~} 
      | ges'8 gis'8 bes'16 fis'16 es'16 bes16 cis'8 b8 \tuplet 6/4 {c'4 bes16 a16~} 
      | a8 f'16 es'16 \tuplet 6/4 {aes'16 ges'8 b'16 a'16 d''16~} d''16 c''16 f''16 e''16 es''8 cis''8~ 
      | cis''8 d''8 e''16 d''16 cis''16 b'32 a'32~ a'16 aes'16 g'16 b'16 \tuplet 6/4 {ges'16 f'8 e'16 bes16 es'16~} 
      | \tuplet 6/4 {es'16 f'8 ges'16 aes'16 bes'16~} \tuplet 6/4 {bes'16 ges'8 es'16 bes16 d'16~} \tuplet 6/4 {d'16 b16 des'8 b16 c'16~} c'8 a'8 
      \bar "||" \tuplet 3/2 {d'4 d'8} r4 r8 c'8 \tuplet 3/2 {e'8 g'8 a'8} 
      | c''8 a'16 f'16 es'8 c'4. \tuplet 6/4 {a4 g16 c'16~} 
      | c'8 g'4. \tuplet 6/4 {ges'16 f'16 es'16 c'16 f'8~} f'8 c'8 
      | \tuplet 3/2 {e'4 g'8~} g'8 r8 r8.. c'32~ c'16 b16 c'16 d'16 
      | es'16 f'16 d'16 es'16 \tuplet 6/4 {c'16 d'8 es'16 f'16 ges'16} \tuplet 3/2 {aes'8 f'8 ges'8} \tuplet 6/4 {es'16 f'16 ges'8 aes'16 bes'16~} 
      | bes'16 ges'16 es'16 bes16 des'16 b16 c'16 bes16 a16 c'16 es'16 f'16 aes'16 ges'16 f'16 es'16 
      | d'8~ d'32 f16 fis32~ fis8 g4 r8 r4 
      | r8 g'4. fis'4. fis''8 
      \bar "||" \mark \default g''4 e''8. c''16~ c''4 a'8. f'16~ 
      | f'4 \tuplet 3/2 {f''4 f'8} e''8 f'8 \tuplet 3/2 {d''4 f'8} 
      | \tuplet 3/2 {c''4 g'8} \tuplet 3/2 {f'8 c'8 e'8~} e'16 f'8 e'16 r4 
      | r4 d'16 b16 c'16 d'16 es'16 e'16 f'16 fis'16 \tuplet 6/4 {g'16 a'8 bes'16 c''16 d''16~} 
      | d''8 es'8 r4 \tuplet 6/4 {r8 d'8 es'16 g'16~} g'16 bes'16 d''16 f''16 
      | des''8. a'16 r4 \tuplet 6/4 {r4 cis'16 d'16} \tuplet 3/2 {f'8 a'8 c''8} 
      | e''4 g''8 e''8~ e''4. d''8 
      | es''8 fis''8 es''8 cis''8 \tuplet 3/2 {b'4 gis'8} fis'4 
      \bar "||" \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {c'8 a8 e'8} d'4 e'4 
      | gis8 aes8 r2 \tuplet 3/2 {g4 a8} 
      | c'4 \tuplet 3/2 {a'4 a'8} g'4 \tuplet 6/4 {a'4~ a'16 e'16} 
      | g'4 \tuplet 3/2 {f'8 a'4} \tuplet 3/2 {g'4 c''8} \tuplet 3/2 {b'8 c''8 d''8} 
      | \tuplet 3/2 {c''4 g'8} \tuplet 6/4 {ges'16 f'16 es'16 c'16 f'8} \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {g4 ges8} 
      | f8 r8 r4 r8 f'16 fis'16 \tuplet 6/4 {g'16 aes'16 g'16 ges'16 f'16 es'16} 
      | \tuplet 6/4 {d'16 es'8 f'16 g'16 a'16~} \tuplet 6/4 {a'16 f'8 d'16 a16 des'16~} des'16 a16 e'16 es'16 d'16 gis16 a16 c'32 b32~ 
      | \tuplet 6/4 {b16 d'16 f'8 aes'16 f'16~} f'16 ges'16 b'16 d''16 f''8. d''16~ d''4 
      \bar "||" \tuplet 3/2 {es''4 fis'8} r2 d''4 
      | \tuplet 6/4 {c''4~ c''16 bes'16~} bes'8 c''16 bes'16 a'8 ges'8 \tuplet 3/2 {f'4 es'8} 
      | d'8 f'8 g'8. a'16~ a'4 \tuplet 3/2 {f'8 d'8 a8} 
      | \tuplet 3/2 {e'4 es'8} \tuplet 3/2 {d'8 f8 des'8} \tuplet 3/2 {b8 des'8 bes8~} bes8 aes8 
      | \tuplet 3/2 {fis4 fis8} r4 \tuplet 6/4 {r8. f'8 fis'16~} fis'32 a'16 bes'16 fis'16 e'32 
      | es'4~ \tuplet 6/4 {es'16 c''8 es'16 g'16 bes'16~} bes'32 d''16 c''16 bes'16 gis'32~ \tuplet 6/4 {gis'16 a'8. f'16 fis'16} 
      | g'16 a'16 fis'16 g'16 \tuplet 5/4 {a'16 b'16 g'16 e'16 b16} d'16 b16 d'16 b16 cis'4 
      | aes'16 ges'16 des'16 bes16 \tuplet 6/4 {f'16 fis'16 g'16 gis'16 a'16 bes'16~} bes'16 ges'16 es'16 b16 des'16 b16 c'8~ 
      \bar "||" c'8 g8 \tuplet 3/2 {e'8 es'8 e'8} \tuplet 3/2 {c'8 g8 c'8} e'16 es'16. e'16 c'32~ 
      | \tuplet 3/2 {c'8 g8 c'8} \tuplet 3/2 {e'8 c'8 e'8} \tuplet 3/2 {c'8 g8 f8~} f8 r8 
      | r8 c'8 \tuplet 3/2 {e'8 c'8 e'8} \tuplet 5/4 {c'16 e'8. g'16~} g'8 a'8 
      | b'4 d''16 b'16 c''16 d''16 e''8 c''8 \tuplet 3/2 {g'4 f'8} 
      | es'8 c'8 r2 d'8. c'16 
      | f'4 \tuplet 6/4 {d'8 es'16 g'16 bes'16 d''16} cis''16 d''16 des''16 a'16 ges'16 f'16 es'16 bes16 
      | d'8 f'8 r2 \tuplet 6/4 {d'8 c'8 bes16 ges'16~} 
      | ges'8.. e'32~ e'4 es'4 b4 
      | c'4 g8 r8 r2\bar  ".."
    }
    >>
>>    
}
