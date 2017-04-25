\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Lonnie's Lament"
  composer = "Joe Lovano"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | c1:min | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1|
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


      \tempo 4 = 201
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r8. g'16 f'8 es'8 d'8 es'8~ es'16 f'8 g'16~ 
      | \tuplet 3/2 {g'8 bes'8 b'8} c''16 cis''8 d''16~ d''8 b'8 g'4 
      | bes'8. b'16~ b'4 ges'16 bes'8 g'16 f'8 f'8 
      \bar "||" \mark \default g'8 r8 r4 f'8 es'8 r4 
      | \tuplet 3/2 {d'4 es'8} f'4 es'4 c'4 
      | es'2^\markup{\left-align \small vib} f'8 r8 r4 
      | r4 \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {es'4 d'8~} d'8 c'8~ 
      | c'8. es'16~ es'4 d'4 bes4 
      | d'8 r8 r4 c'8. bes16~ bes8 g8 
      | g2 g8 r8 r4 
      | r1 
      | r4 g'4 b'2\bendAfter #+4  
      | d''4 f'8 r8 r2 
      | es'2 c''4 d'4 
      | c'4 es'4 a8 r8 r4 
      | r2. g'4 
      | bes'4 b'8. d''16~ d''8 g'8 b'4 
      | bes'4 g'8. es'16~ es'16 f'8 d'16 es'8 g'8 
      | ges'8 d'8 f'4 es'8 d'8~ d'16 c'8 bes16~ 
      \bar "||" \mark \default bes8 d'8 b4 c'4 bes4 
      | f8 r8 r4 es4~ es16 f8 g16 
      | r2 bes4. aes8 
      | g8 r8 \tuplet 6/4 {r4 r16 d'16~} d'8 f'8 es'8. f'16~ 
      | f'8 fis'8 g'16 bes'8 a'16~ a'8 aes'8~ aes'16 ges'8 aes'16 
      | g'8 e'8~ e'16 f'8 des'16~ des'4 ges4 
      | aes4 ges8 bes8 e4. ges8~ 
      | ges8 r8 r2 r8 c8 
      | es8 f8 es8. ges16 bes4 aes8 c'8 
      | r8. bes16~ bes8. d'16 es'16 f'8 g'16~ g'8 aes'8~ 
      | aes'8 g'4. f'8. e'16 f'4 
      | \tuplet 3/2 {f'4 es'8~} \tuplet 6/4 {es'8 d'8. c'16} b4~ \tuplet 6/4 {b16 d'4 c'16~} 
      | c'16 c'8 d'16~ d'8 es'16 g'16 c''8 r8 r4 
      | r2 r16 b'16 c''16 es''16~ es''4~ 
      | es''4~ es''16 d''8 b'16 g'4.. b'16 
      | a'8 f'8 r2 r8 f'8~ 
      \bar "||" \mark \default f'16 a'8 b'16 \tuplet 3/2 {es''4 b'8} d''8 b'8 g'4 
      | a'4 d''8. c''16~ c''4 \tuplet 3/2 {b'4 a'8} 
      | aes'8 b'8 \tuplet 3/2 {aes'4 g'8} fis'8 g'8 aes'8 b'8 
      | ges'4 \tuplet 3/2 {e'4 ges'8~^\markup{\left-align \small vib}} ges'4 es'4 
      | g'4 r2. 
      | r4 \tuplet 3/2 {ges'4 f'8~} f'2~ 
      | f'4 es'4 g'2 
      | f'8 es'8 b8 g8 r2 
      | r4 r8. bes16~ bes16 a16 g16 fis16 \tuplet 6/4 {g8 a8 ges16 f16} 
      | e16 f16 d16 es16~ es16 e16 ges16 aes16 g16 f16 g16 bes16~ \tuplet 5/4 {bes8 aes16 g16 aes16~} 
      | aes16 aes16 es'8 \tuplet 6/4 {bes16 b8 cis'16 d'16 f'16~} \tuplet 6/4 {f'8. es'16 d'16 e'16} \tuplet 3/2 {aes'4 bes'8} 
      | g'16 ges'16 f'16 e'16 aes'4 ges'8 e'16 f'16 es'8 e'8 
      | r2 es'16 d'16 des'16 bes16 bes8 a16 g16~ 
      | \tuplet 3/2 {g8 bes8 es'8~} es'8 g16 f16 \tuplet 3/2 {d8 ges8 a8} aes16 f16 des16 f16 
      | es8 d8 a8 d'8 \tuplet 3/2 {a4 f'8} aes'16 g'16 f'16 es'16 
      | \tuplet 3/2 {d'8 es'8 g'8} \tuplet 5/4 {bes'8 es''8 c''16} r2 
      \bar "||" \mark \default r2 a''2~ 
      | a''8 g''8~ g''4.. bes''16~ bes''8 g''8~ 
      | g''4~ \tuplet 3/2 {g''8 b''8 bes''8} g''4 bes''8 fis''16 g''16~ 
      | g''4.. f''16~ f''4. r8 
      | r1 
      | bes''8 r8 r2. 
      | \tuplet 3/2 {aes''4 g''8} f''8 es''8 des''8 bes'8 ges'8 es'8 
      | aes'8 f'8 des'4~ des'16 es'8 ges'16~ ges'4 
      | r2 f'8 g'8 d''4 
      | d''4 c''4 es''4 \tuplet 3/2 {d''4 c''8~^\markup{\left-align \small vib}} 
      | c''4 bes'8 g'8 f'8 f'8 es'8. f'16 
      | g'8 g'4 f'16 e'16 d'16 b8. \tuplet 3/2 {d'4 c'8~} 
      \bar "||" \mark \default c'4 es'4 f'4.. es'16 
      | f'4 f'8 r8 r4 ges'8 aes'8~ 
      | aes'16 ges'8 e'16~ e'8 g'8~ \tuplet 3/2 {g'8 d'8 ges'8~} ges'16 e'8 des'16 
      | b8 bes8 ges8. f16~ f8 r8 r4 
      | r2 bes'8 b'8 c''8 des''8~ 
      | des''16 b'8 a'16~ a'16 aes'8 b'16~ b'16 aes'8 g'16 \tuplet 3/2 {ges'4 bes'8~} 
      | bes'4 f'4 e'8. aes'16~ aes'16 es'8 g'16~ 
      | g'16 ges'8 d'16~ d'8. f'16~ f'16 e'8 des'16 b8 a8~ 
      | a16 aes8 bes16~ bes16 d'8 des'16~ des'16 aes8 f16 e4 
      | g4~ g16 e8 g16~ g8 c'8 bes4 
      | d'8 es'8 f'8. bes'16~ bes'16 f'16 g'8 r4 
      | f'4 r8 d'8 \tuplet 3/2 {es'8 f'4~} f'8 c'16 es'16 
      | f'8 r8 r8 c'16 es'16 f'8 r8 \tuplet 3/2 {r8 c'8 es'8} 
      | f'4. c'16 es'16 f'8 r8 r4 
      | r8 c'16 es'16~ \tuplet 3/2 {es'8 f'8 c'8} \tuplet 3/2 {es'4 f'8~} f'8. ges'16~ 
      | ges'8 r8 r4 aes'8 g'8 \tuplet 3/2 {fis'4 g'8~} 
      \bar "||" \mark \default g'8. es'16~ es'4 f'4 d'8. f'16~ 
      | f'8 es'8 b4 a8 es'8 c'4 
      | \tuplet 3/2 {b4 g8} es4 f4.^\markup{\left-align \small vib} es8 
      | c8 a,8 r2. 
      | r8. bes,16~ bes,16 d16 a,16 d16~ d16 f16 es16 d16 es16 g16 bes8 
      | \tuplet 6/4 {a16 aes8. c'16 d'16~} \tuplet 5/4 {d'16 g16 bes16 c'16 es'16~} es'16 c'16 es'16 des'16~ des'16 es'8 d'16 
      | f'16 g'16 bes'16 g'16 f'8 es'16 d'16 es'16 fis'16 g'16 b'16 es''8 g''8 
      | aes''16 bes''8. r2 aes,8. bes,16~ 
      | bes,8 es4 f8 bes8 es'8 aes4 
      | es'4 f'4 \tuplet 3/2 {es'4 f'8} ges'8 es''8~ 
      | es''8 bes'8 c'''8 aes''8~^\markup{\left-align \small vib} aes''2~ 
      | aes''16 f''8 es''16~ \tuplet 3/2 {es''8 des''8 c''8} a'8 es'8 r4 
      | r4 r8 aes''8~^\markup{\left-align \small vib} aes''4. g''8~^\markup{\left-align \small vib} 
      | g''2 g''2^\markup{\left-align \small vib} 
      | g''2^\markup{\left-align \small vib} d'''2~ 
      | d'''4.. f''16~ f''4 r4 
      \bar "||" \mark \default r4 r8 c'''16 d'''16~^\markup{\left-align \small vib} d'''2~ 
      | d'''1 
      | c'''8 bes''8 aes''8 g''8~ \tuplet 3/2 {g''8 f''8 es''8} d''4~ 
      | d''8 b'8 ges'16 a'8. \tuplet 3/2 {d''4 es''8} b'4 
      | a'8. c''16 \tuplet 3/2 {es''8 f''8 g''8} \tuplet 3/2 {a''8 bes''8 a''8~} a''4~ 
      | a''8 g''16 a''16~ a''8 g''4 es''4 r8 
      | r2. des'''4 
      | r4 g''4.^\markup{\left-align \small vib} f''4.~^\markup{\left-align \small vib} 
      | f''8 es''8 c''8 f''8 f''4 f''4 
      | f''4 \tuplet 3/2 {f''4 f''8~} f''8 f''4.~^\markup{\left-align \small vib} 
      | f''2. r4 
      | r4 r8 g''8~ g''8. f''16~^\markup{\left-align \small vib} f''4~ 
      | f''4.. g''16~ g''16 f''16 es''8 \tuplet 3/2 {f''8 bes'8 des''8} 
      | es''8 d''4 b'8 aes'8. b'16~ \tuplet 3/2 {b'8 es''8 des''8~} 
      | des''16 b'8 a'16~ a'16 g'8 f'16~ f'8 a'4 b'8 
      | \tuplet 3/2 {es''4 f''8~} f''8 r8 r8. des''16~ des''16 e''8 des''16 
      \bar "||" \mark \default a'4~ a'16 ges'8 a'16~ a'16 b'8 es''16~ es''8 aes''8 
      | f''8 es''8 des''4 b'4 \tuplet 3/2 {g'4 b'8~} 
      | b'16 a'8 aes'16 ges'4 \tuplet 3/2 {es'4 g'8} \tuplet 3/2 {d'4 c'8~} 
      | c'8 r8 r4 r8. c'16~ c'8 c'16 es'16~ 
      | es'8 es'4 f'4 f'4 f'8 
      | g'4 c'4 es'4 es'4 
      | c''2 r4 r8. bes'16~ 
      | bes'8 g'8 \tuplet 3/2 {f'4 d'8} \tuplet 3/2 {es'4 ges'8} \tuplet 3/2 {bes'4 ges'8~} 
      | ges'8. es'16~ es'8. aes'16~ aes'4 ges'8. e'16~ 
      | e'16 f'8 des'16 bes4 ges4 aes4 
      | f8. bes16 \tuplet 3/2 {es4 des8} es8 f4 es8 
      | bes,8 aes,4 r8 r2 
      \bar "||" \mark \default \tuplet 3/2 {r8 g,8 aes,8~} aes,16 bes,16 c16 e16 \tuplet 3/2 {b,8 des4~} des8 es16 des16 
      | es16 des16 r8 r4 \tuplet 3/2 {r8 f8 a8} bes16 aes16 ges16 e16 
      | g16 a16 ges16 f16 c16 d16 e16 es16 d16 des16 c16 es16~ es16 ges8 bes16 
      | \tuplet 3/2 {d'8 des'8 b8} \tuplet 3/2 {a8 aes8 bes8} \tuplet 5/4 {g8 bes16 c'16 es'16} \tuplet 3/2 {d'8 c'8 bes8} 
      | c'16 des'16 es'8 e'8 d'16 es'16 ges'16 a'16 g'16 ges'16 es'16 d'16 es'8 
      | \tuplet 5/4 {d''16 des''16 c''16 bes'16 g'16} \tuplet 6/4 {es'16 d'16 c'16 b8 a16} aes4 r4 
      | r8. c''16 b'16 bes'16 g'16 es'16 c'16 es'16 b16 es'16 \tuplet 3/2 {c'8 b'8 g'8} 
      | \tuplet 3/2 {es'8 c'8 es'8} a'16 f'16 es'16 c'16 \tuplet 5/4 {d'8 f'8 d'16~} \tuplet 3/2 {d'8 b8 a8} 
      | \tuplet 3/2 {d'8 es'8 c'8} \tuplet 3/2 {a8 ges8 a8} d'8 bes16 g16 d8 r8 
      | r4 r8. d''16~ d''4 a'8. b'16 
      | c''16 b'16 g'16 es'16 c'16 es'16 g'16 b'16~ b'16 g'16 es'16 c'16 \tuplet 3/2 {es'8 g'8 a'8} 
      | f'16 fis'16 g'16 es'16~ es'16 c'16 e'16 f'16 d'8 bes8 g16 a16 bes16 es'16 
      | \tuplet 3/2 {c'8 b8 fis8} \tuplet 3/2 {g8 b8 c'8} \tuplet 3/2 {b8 g8 es8} c16 bes8. 
      | \tuplet 6/4 {es8 aes8 g16 es16~} \tuplet 3/2 {es8 c8 g8} f4.^\markup{\left-align \small vib} r8 
      | r4 \tuplet 6/4 {r8 es8. g16~} g8 f8 \tuplet 3/2 {es4 d8} 
      | c8 d8 \tuplet 3/2 {es4 c8} f4~ f16 es8 f16 
      \bar "||" \mark \default fis8 g8 a4 g8. es'16~ es'8 bes8 
      | b8 d'8 \tuplet 3/2 {es'4 g'8~} g'16 ges'8 d'16 f'4 
      | \tuplet 3/2 {e'4 ges'8} b'8 des''8~ des''16 g'8 b'16~ b'16 a'8 f'16 
      | es'8 g'8 d'8. c'16 r2 
      | es'4 es'8. es'16~ es'8 f'8~ f'16 es'8 f'16~ 
      | f'16 ges'8 f'16 \tuplet 3/2 {es'4 c'8~} c'4 es'8. f'16~ 
      | f'8 r8 r4 r8 c'8 \tuplet 3/2 {d'4 es'8~} 
      | es'4 d'8. c'16 es'4 d'8 c'8 
      | es'4 d'4 c'4 c''8. a'16 
      | bes'8 r8 r4 \tuplet 3/2 {f'4 g'8} \tuplet 3/2 {aes'4 g'8~} 
      | g'8 es'4.^\markup{\left-align \small vib} r4 es'4 
      | \tuplet 3/2 {cis'8 d'4} f'8 bes'8~ bes'2 
      | bes'1\glissando  
      | bes'2\glissando  bes'4\glissando  c''8 aes'8~ 
      | aes'4 r2 \tuplet 3/2 {aes'4 g'8~} 
      | g'2.. f'8~ 
      \bar "||" \mark \default \tuplet 6/4 {f'4~ f'16 e'16} f'4 \tuplet 3/2 {d'4 es'8~} es'4~ 
      | es'8 c'8~^\markup{\left-align \small vib} c'2 bes8 d'8~^\markup{\left-align \small vib} 
      | d'8 r8 r4 c'8. c'16~ c'8 bes8 
      | c'8 bes8 d'4 c'8 bes8 c'8 bes8 
      | \tuplet 3/2 {c'4 bes8} d'4. r8 r8 es'8 
      | d'8 c'8 b8 d'8 c'8 aes8 \tuplet 3/2 {bes8 c'8 bes8} 
      | g8 f8 es2~ es16 d8 c16~^\markup{\left-align \small vib} 
      | c4. r8 r2\bar  ".."
    }
    >>
>>    
}
