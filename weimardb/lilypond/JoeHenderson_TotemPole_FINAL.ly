\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Totem Pole"
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \minor
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
      
      | es1:min9 | es1:min9 | f1:7 | s1 | e1:7 | s1 | es1:min9 | es2:min bes2:7 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | bes1:95+ 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | bes1:7 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s2 bes2:7 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | bes1:95+ 
      | es1:min9 | s1 | f1:7 | s1 | e1:7 | s1 | es1:min9 | s2 bes2:7 
      | es1:min9|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 bes8 bes'2~ 
      | bes'4~ \tuplet 3/2 {bes'8 aes'8 ges'8} \tuplet 3/2 {aes'4 bes'8} ges'8 es'8 
      | a'4. c''4 r8 r4 
      | r2 \tuplet 7/8 {r8 c''16 bes'32} a'8 f'8~ 
      | f'8\glissando  b'4 a'8 aes'8 ges'8 r4 
      | r4 d'16 des'16 b8~ b16 d'16 des'16 b16 d'16 des'16 b16 bes16~^\markup{\left-align \small vib} 
      | bes4. r8 \tuplet 6/4 {r8 aes16 ges8 aes16~} aes8 bes8 
      | r8. bes16~ bes16 aes16 ges8 bes16 aes16 ges8 bes16 aes16 ges16 es16~^\markup{\left-align \small vib} 
      \bar "||" es4. a'16 bes'16~ bes'8 ges'4^\markup{\left-align \small vib} r8 
      | r4 r8. bes16 es'16 d'16 es'16 f'16 ges'16 f'16 ges'16 aes'16 
      | a'16 aes'16 a'16 bes'16 c''16 bes'16 c''8~ c''8. bes'32 a'32 \tuplet 3/2 {f'8 g'8 es'8} 
      | c'16 a16 f'16 d'16 c'16 bes8 bes16 a8 f8 \tuplet 3/2 {g8 es8 d8} 
      | ges4 r4 r16 f16 ges16 aes16 a16 b16 des'16 d'16 
      | \tuplet 6/4 {e'16 ges'8 aes'16 a'16 b'16~} \tuplet 7/8 {b'8~ b'32 a'32 aes'32~} aes'8 d'8 ges'16 d'16 f'8 
      | r4 \tuplet 6/4 {r8 f'16 d'8 c'16~} c'8 r8 r4 
      | \tuplet 5/4 {r8 a'16 f'16 d'16} \tuplet 6/4 {c'8. a'16 f'16 d'16} \tuplet 6/4 {c'8. a'16 f'16 d'16} \tuplet 7/8 {c'16. a'32 f'32 es'32 des'32~^\markup{\left-align \small vib}} 
      \bar "||" des'4. c''8~ c''32 bes'32~ bes'8 f'32 des'32~ des'8. des'16~ 
      | des'16 aes'8 des'16 \tuplet 3/2 {f'4 g'8~} g'4.. f'16 
      | es'8 c'8 bes16 b16 bes16 aes16 \tuplet 3/2 {bes4 c'8~} c'8 r8 
      | r4 \tuplet 6/4 {r8 g16 aes16 c'16 es'16} g'16 bes'16 aes'16 es'16 \tuplet 6/4 {c'16 g'8 f'16 des'16 bes16} 
      | es'8 des'8 r4 \tuplet 3/2 {es'8 des'8 b8~} b4 
      | r4 \tuplet 6/4 {r8 d8 es16 f16~} \tuplet 6/4 {f16 ges16 aes8 bes16 des'16~} des'16 c'16 a16 bes16 
      | r4 \tuplet 3/2 {r8 ges8 f8} es16 aes16 f16 bes16 des'32 e'16 ges'32 g'32 aes'32 g'32 ges'32~ 
      | ges'32 f'32 e'16 es'32 d'32 des'32 c'32 \tuplet 5/4 {b16 bes16 a16 aes16 g16} \tuplet 6/4 {ges16 d16 des16 c8 b,16~} \tuplet 6/4 {b,8 bes,8. bes16~} 
      \bar "||" bes4. f16 es16~ es8 r8 r4 
      | r16 d16 es16 ges16~ \tuplet 6/4 {ges16 aes16 bes8 d'16\glissando  f'16~} \tuplet 3/2 {f'8 f'8 es'8~} \tuplet 6/4 {es'16 es'8 aes'8 bes16~} 
      | bes16 a8 a16 \tuplet 3/2 {f8 f8 es8} es8 c8 r4 
      | \tuplet 6/4 {r4 c'16 a'16} \tuplet 3/2 {c'8 f'8 a'8} \tuplet 6/4 {g'16 f'16 a'8 c'16 f'16~} f'16 a'16 g'16 f'16 
      | aes'16 b16 e'16 aes'16 ges'16 e'16 aes'16 b16 e'16 aes'16 ges'16 e'16 \tuplet 6/4 {aes'8 b16 e'8 aes'16~} 
      | \tuplet 6/4 {aes'16 ges'16 e'16 aes'8 b16} \tuplet 6/4 {e'8 aes'8 ges'16 f'16} \tuplet 5/4 {aes'8 b16 e'16 aes'16} ges'16 e'16\glissando  f'8~^\markup{\left-align \small vib} 
      | f'4. d'8 f'16 d'16 es'16 f'16 d'16 bes16 c'16 d'16 
      | \tuplet 6/4 {bes16 ges8 f16 es16 aes16} ges8 r8 r4 \tuplet 7/8 {ges'16 aes'16 bes'16 c''32~} 
      \bar "||" \mark \default c''16 c''16. c''16 c''32~ c''16 c''16. c''16 c''32 c''8 r8 r4 
      | r4 r8 bes'8 \tuplet 3/2 {c''8 aes'8 bes'8} \tuplet 3/2 {ges'8 es'16 r8.} 
      | r4 \tuplet 3/2 {a'8 c''8 c''8} \tuplet 3/2 {c''8 c''16 r8.} r4 
      | r4 c''16 bes'16 a'16 f'16~ \tuplet 6/4 {f'4~ f'16 g'16~} \tuplet 3/2 {g'8 es'8 c'8~} 
      | c'8 ges'16 b'16 \tuplet 3/2 {b'8 b'8 b'8} \tuplet 3/2 {b'8 b'16 r8.} r4 
      | r16 b'16 bes'16 aes'16 e'16 b16 bes16 aes16 e4. bes,8~ 
      | bes,4~ bes,16 b,16 e8 aes4. e16 aes16 
      | ges16 es8.~ es8 d8 es16 f16 ges16 aes16 bes16 des'16 c'8~ 
      \bar "||" c'8 c'8 c'8 c'8 r2 
      | \tuplet 6/4 {r16 bes16 c'16 des'16 es'16 f'16} es'16 des'16 c'8 \tuplet 6/4 {c'16 des'16 es'16 f'16 es'16 des'16} \tuplet 6/4 {c'8. c'16 d'16 es'16} 
      | f'16 es'16 d'16 c'16 \tuplet 6/4 {c'16 d'16 es'16 f'16 es'16 d'16} c'8 r8 \tuplet 6/4 {r8 c'8 bes16 a16~} 
      | \tuplet 6/4 {a16 c'16 es'8 g'16 d'16~} d'16 es'16 g'16 bes'16 d''16 c''16 g'16 es'16 bes'16 g'16 aes'16 a'16\glissando  
      | des''8. a'16 aes'16 ges'16 r8 r2 
      | r4 des''8 b'16 a'16~ \tuplet 6/4 {a'16 aes'16 ges'16 d'8 des'16~} des'16 b8 a16 
      | bes16 ges16 f16 es16 \tuplet 3/2 {g'8 f8 ges8~} ges8 ges8 r4 
      | \tuplet 6/4 {r16 f16 ges16 bes16 des'16 f'16~^\markup{\left-align \small vib}} f'2~ \tuplet 6/4 {f'4 des'16 bes16~} 
      \bar "||" \tuplet 6/4 {bes8. c'8 f16~} f8 aes8 bes8. c'16~ c'4~ 
      | c'16 a32 bes32 des'16 e'32 g'32 \tuplet 7/8 {f'32 e'32 d'32 des'32 d'32 e'32 b'32} a'8 b'16 e'16~ \tuplet 9/8 {e'16 aes16 bes32 c'32 des'32 e'32 f'32} 
      | g'32 ges'32 f'32 es'32 des'32 c'32 bes32 aes32 \tuplet 6/4 {g4 aes16 c'16} \tuplet 6/4 {d'16 es'16 g'16 bes'16 f'16 es'16~} es'8 r8 
      | r4 g'16 bes'16 aes'16 es'16 c'16 g'16 aes'8~ \tuplet 6/4 {aes'16 g'16 aes'16 g'16 f'8} 
      | \tuplet 3/2 {es'8 b4~} b8 r8 r4 r8. b16 
      | \tuplet 6/4 {es'8 des'8 b16 aes16~} \tuplet 6/4 {aes16 es'16 des'8 b16 a16} \tuplet 5/4 {e'8 des'16 aes16 a16} \tuplet 10/8 {f16 e'16. des'16. aes32 a32~} 
      | \tuplet 6/4 {a16 f8. e'16 f'16~^\markup{\left-align \small vib}} f'4~ f'16 des'16 bes16 aes16 es'8 r8 
      | r2 f'16 aes'16 des''16 b'16~ b'8. aes'16 
      \bar "||" bes'8 es'8~^\markup{\left-align \small vib} es'4. bes'8~ \tuplet 3/2 {bes'8 bes'8 bes'8} 
      | bes'8 es''8~ \tuplet 3/2 {es''8 es''8 f''8~} f''8 f''8~ \tuplet 5/4 {f''16 es''8 des''16 c''16~^\markup{\left-align \small vib}} 
      | c''4. r8 r2 
      | r4 c''16 bes'16 a'16 g'16~ \tuplet 6/4 {g'16 f'16 e'16 es'8 d'16} c'16 bes16 a16 c16 
      | es8 ges8~ ges4~ \tuplet 6/4 {ges8 d16 e16 ges16 aes16} \tuplet 5/4 {b16 des'16 d'16 e'16 f'16} 
      | g'16 ges'8. des'8. b16~ b8. ges16~ \tuplet 3/2 {ges8 bes8 aes8} 
      | \tuplet 6/4 {ges8. d8 f16~} f16 d16 es4 f16 ges16 \tuplet 6/4 {aes16 ges16 a16 b16 des'16 c'16~} 
      | c'8. des'16 c'8. des'16 \tuplet 5/4 {c'8 bes16 aes16 bes16} c'8. c'16~^\markup{\left-align \small vib} 
      \bar "||" \mark \default c'4. r8 r2\bar  ".."
    }
    >>
>>    
}
