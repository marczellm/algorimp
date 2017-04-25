\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Segment"
  composer = "Steve Coleman"
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
      | s4 bes2.:sus4 
      | bes1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | es1:7 | s1 | aes1:7 | s1 | des1:7 | s1 
      | bes1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | \time 3/4 s2. 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | es1:7 | s1 | aes1:7 | s1 | des1:7 | s1 
      | bes1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | es1:7 | s1 | aes1:7 | s1 | des1:7 | s1 
      | bes1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | es1:7 | s1 | aes1:7 | s1 | des1:7 | s1 
      | bes1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | es1:7 | s1 | aes1:7 | s1 | des1:7 | s1 
      | bes1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
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


      \tempo 4 = 240
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 bes8 f'8 aes'8 bes'8 
      \bar "||" \mark \default c''1~ 
      | c''8. bes'16~ bes'16 aes'8 f'16~ f'16 es'8 f'16 aes'8 bes'8 
      | c''4 c''4 \tuplet 3/2 {bes'4 aes'8~} aes'8 es'8 
      | g'8 aes'8 bes'8 c''8 aes'8 c''8 bes'4~ 
      | bes'8 aes'8 ges'8 es'8 r2 
      | r2 des'8 es'8 e'8 des'8 
      | es'8 e'8 f'8 ges'8 d'8 des'8 e'8 ges'8 
      | \tuplet 3/2 {a'8 bes'4~} bes'2 g'8 f'8 
      \bar "||" des'8 bes8 c'8 es'16 g'16~ g'8 bes'8 a'8 g'8 
      | e'4 c'8 d'16 aes'16~ aes'16 ges'8 es'16~ \tuplet 3/2 {es'8 d'8 e'8} 
      | ges'8 a'8 f'8 ges'8 d'8 r8 r4 
      | r1 
      | r4 r8 es'8 \tuplet 3/2 {des'4 aes8} f8 des'8~ 
      | des'16 c'8 aes16 f8. aes16 g8 c'8 r4 
      | r2 bes8 es'8 des'8. aes16~ 
      | aes16 bes8 des'16 bes8 aes8 f8 aes8 aes8 bes8 
      \bar "||" b8 es'8 f'8 ges'8 d'8 b8 e'4 
      | d'4 e'4 ges'8. a'16~ a'16 b'8 d''16~ 
      | d''8 es''8 \tuplet 3/2 {e''4 f''8~} f''8 ges''8 e''8 es''8 
      | d''4 b'8 bes'4 a'8 \tuplet 3/2 {aes'4 ges'8~} 
      | ges'8 f'8~ f'16 d'8 bes16~ bes8 c'8 e'8 ges'8 
      | \tuplet 6/4 {b'8 c''16 b'8 a'16} e'8 r8 r2 
      | r1 
      | r1 
      \bar "||" r4 r8 des''16 c''16~ c''8 c''4.~^\markup{\left-align \small vib} 
      | c''2~ c''4~ c''16 a'8 c''16~ 
      | c''8 aes'8 a'8 a'8~ a'4. c''8 
      | des''8 c''8 a'4 es'8 g'8 r4 
      | r8. a'16~ a'4 g'4 g'8 aes'8 
      | a'8 g'8 \tuplet 3/2 {es'4 g'8} e'4. g'8~ 
      | g'8. f'16~ \tuplet 3/2 {f'8 ges'8 es'8} d'8 ges'8 r4 
      | \time 3/4 g'8 e'8 f'8 ges'8 es'8 d'8 
      \bar "||" \mark \default ges'8 f'8 e'4 g'8 e'8 f'8 ges'8~ 
      | ges'8 c''8 b'8 ges'8 a'8 g'8 e'4 
      | a'4~ a'16 des''8 aes'16 bes'8 des''8 es''4 
      | a'8 e'8~ e'16 g'8 des''16~ des''8 g''8 es''8 r8 
      | r2 f''8 des''8 e'8 g'8 
      | bes'8 des''8 es''8 e''8 c''4 \tuplet 3/2 {es''4 d''8~} 
      | d''8. aes'16 bes'16 d''16 des''8~ des''4. es''8 
      | c''4. es''8 des''8 b'8 aes'8 e'8 
      \bar "||" d''8 c''8 a'8 d'4 g'8 bes'8 d''8 
      | des''8 es''8 b'8 a'8 aes'4 e'4 
      | e'8 a'8 aes'8 bes'8 b'8 des''8 c''8 aes'8 
      | a'8 es'8 d'8 a'8 g'8 d'8 b8 e'8 
      | aes'8 ges'4 d'8 b16 c'8 es'16~ es'8 f'8 
      | ges'8 r8 r4 \tuplet 3/2 {e'4 a'8} ges'8 es'8~ 
      | es'8 b8 es'8 des'8~ des'16 a8 ges16 des'8 b8 
      | ges8 a8 g8 bes8 c'8 f4 d'8~ 
      \bar "||" d'8 des'4 es'8 bes8 f8 aes8 bes8~ 
      | bes8 d'8 es'8 f'8 ges'8 bes'8 c''8 r8 
      | r2. c''8 c''8 
      | bes'8 a'8 ges'8 es'8 c'8 bes8 a8 ges8~ 
      | ges8 d'8 b8 es'8 bes8 a8 aes8 bes8~ 
      | bes8 ges'8 d'8 c'16 e'16~ e'8 ges'8 a'8 bes'16 b'16~ 
      | b'8 des''8 c''4 \tuplet 3/2 {des''4 aes'8} \tuplet 3/2 {f'8 des'16 r8.} 
      | r2. c''8 es''8 
      \bar "||" a'8 es'8 r2. 
      | bes'8 ges'8 es'8 bes8 \tuplet 3/2 {a'4 ges'8} des'8 bes8 
      | c'8 des'8~ des'16 f'8 a16~ a8 r8 r4 
      | es'4..^\markup{\left-align \small vib} des'16~ des'16 a8 des'16 r4 
      | r4 b8 a8 bes8 c'8 aes8 a8~ 
      | a4. bes8 b8 des'8 \tuplet 3/2 {es'4 f'8} 
      | ges'8 es'8 d'8 des'8 e'8 ges'8 a'8 a'8 
      | g'8 b'8 des''8 es''8 e''8 f''4 f''8 
      \bar "||" \mark \default g''2^\markup{\left-align \small vib} g'4.^\markup{\left-align \small vib} r8 
      | r2 \tuplet 3/2 {f'4 d'8~} d'16 ges'8 e'16 
      | g'4 e'16 bes'8 e'16~ e'16 a'8 e'16 \tuplet 3/2 {aes'4 g'8~} 
      | g'8. des''16 e''16 f''8 g''16~^\markup{\left-align \small vib} g''4 des''8 r8 
      | r2 r16 c''8 des''16 es''8 b'8 
      | bes'8 a'8 aes'16 bes'16 des''16 es''16 \tuplet 5/4 {e''16 aes'16 f'16 e'16 d'16} des'8 es'16 ges'16 
      | aes'16 b'16 des''16 es''16 r2 \tuplet 3/2 {ges''8 es''4~} 
      | \tuplet 3/2 {es''8\bendAfter #+4  e''8 es''8} b'16 aes'16 e'16 aes'16~ aes'16 a'16 es'16 d'16~ d'16 es'16 a'16 aes'16~ 
      \bar "||" aes'16 c'16 bes16 c'16 r2 aes'8 e'16 aes'16~ 
      | aes'16 a'16 es'16 d'16 des'16 e'16 a'16 aes'16~ \tuplet 3/2 {aes'8 b'8 bes8} c'16 es'16 aes'16 g'16 
      | r2 \tuplet 3/2 {r8 g'8 es'8} \tuplet 3/2 {c'8 aes'8 ges'8} 
      | \tuplet 3/2 {d'8 des'8 e'8} \tuplet 3/2 {f'8 ges'8 des'8} c'8 b8 \tuplet 3/2 {d'8 ges'8 e'8} 
      | \tuplet 3/2 {g'8 e'4} \tuplet 3/2 {a'8 ges'8 es'8} \tuplet 3/2 {d'8 des'8 e'8} \tuplet 3/2 {a'8 ges'8 des'8} 
      | \tuplet 3/2 {bes8 b8 d'8} b16 g16 a4 r8 r4 
      | r8. ges16 \tuplet 3/2 {aes8 bes8 des'8~} des'4~ des'16 b16 bes16 a16~ 
      | \tuplet 5/4 {a16 aes16 bes16 des'16 es'16} f'16 aes'16 aes'16 d'16 des'8 es'16\glissando  f'16~ f'8 e''8 
      \bar "||" es''8 r8 r2. 
      | d''8 es''8 e''8 ges''4 bes''4. 
      | r4 r8. aes''16~ aes''16 es''8 bes'16~ \tuplet 3/2 {bes'8 ges'8 aes'8~} 
      | aes'16 b'8 des''16 \tuplet 3/2 {e''8 es''8 e''8~} e''16 aes''8 a''16~ a''16 g''8 es''16~ 
      | es''2 b'8 bes'8 \tuplet 3/2 {a'8 aes'8 bes'8~} 
      | \tuplet 3/2 {bes'8 b'8 des''8} d''8 es''8 bes'8 a'8 g'8 b'8 
      | c''4~ c''16 b'8 bes'16~ bes'8 a'8 aes'8 ges'8 
      | f'8 des'8 bes8 ges8 c'8 d'8 \tuplet 3/2 {bes4 ges8} 
      \bar "||" aes8 ges8 f8 bes8 f4 es8 des8 
      | r1 
      | c'8 bes8 f4 g2~ 
      | g2~ g8 g8 r4 
      | r2 bes8 f8 bes8 d'8 
      | bes8 f8 a8 f8 aes8 f8 g8 des16 g16~ 
      | \tuplet 3/2 {g8 g8 des8~} \tuplet 3/2 {des8 f8 e'8~^\markup{\left-align \small vib}} e'4~ \tuplet 6/4 {e'8 b8. f16} 
      | es4~ es16 es'8 d'16~ d'16 d8 a16~ a8 d'8 
      \bar "||" \mark \default des'8 d'8 bes8 d8 g4 d8 bes8 
      | g4.. bes16 g8 e4 es'8 
      | bes8 aes8 r4 a4. b8 
      | ges8 a8 r4 \tuplet 3/2 {d'8 des'8 es'8} \tuplet 3/2 {b8 a8 ges8} 
      | r4 r8 aes8~ aes8. bes16 \tuplet 3/2 {c'8 aes4~} 
      | aes8 des'16 b16 \tuplet 3/2 {a8 aes16 r8.} r8. bes16 b16 des'16 d'16 es'16 
      | r4 r8 bes8~ \tuplet 3/2 {bes8 aes8 bes8} b16 des'16 d'16 f'16~ 
      | \tuplet 3/2 {f'8 es'8 d'8} des'16 es'16 f'16 ges'16 \tuplet 3/2 {des'8 b8 ges8} \tuplet 5/4 {b16 d'16 ges'16 a'16 c''16} 
      \bar "||" des''16 c''16 c''8 r4 \tuplet 6/4 {r8 c''8 a'16 g'16} \tuplet 3/2 {es'8 d'16 r8.} 
      | r4 \tuplet 3/2 {aes'8 ges'8 des'8} \tuplet 5/4 {b8 c'16 d'16 ges16} a8 r8 
      | r4 r16 ges16 a16 es'16~^\markup{\left-align \small vib} es'2 
      | b16 bes16 d'16 des'16 \tuplet 3/2 {c'8 es'8 a8} \tuplet 3/2 {aes4 des'8} bes16 aes16 a16 bes16 
      | b16 d'8. aes'16 g'8.~ \tuplet 3/2 {g'8 d'8 des'8} \tuplet 6/4 {es'16 ges'16 a'16 des''16 e''16 f''16} 
      | es''8 r8 r4 c''8 es''8 des''8 a'8 
      | ges'8 des''8 b'8 ges'8 a'8 ges'8 g'8 g'8 
      | r2 c''8 es''8 des''4 
      \bar "||" g'16 bes'8 des''16 c''8 b'8 bes'8 a'8 aes'8 ges'8 
      | f'8 e'8 es'8 d'8 \tuplet 3/2 {ges'4 bes'8} d''8 f''16 ges''16~^\markup{\left-align \small vib} 
      | ges''2.. d''8 
      | bes'8 ges'8 d'8 bes8 es'4\bendAfter #-4  r4 
      | r2 r16 bes8 d'16 es'8 e'8 
      | f'8 ges'8 b'8 d''8 es''8 e''8 f''8 e''8 
      | c''8 es''8 \tuplet 3/2 {des''4 aes'8} bes'8 des''8 des''8 des''8 
      | c''8 es''8~ es''16 des''8 ges'16 bes'8 c''8 b'8 a'8 
      \bar "||" bes'8 aes'4 bes'8 r2 
      | r16 g'8 aes'16~ aes'16 g'8 e'16~ e'8 bes'8 bes'8. g'16 
      | ges'8 r8 r8. ges'16~ ges'16 e'8 ges'16 a'8 bes'8~ 
      | \tuplet 3/2 {bes'8 ges'8 e'8~} e'4 ges'4 \tuplet 3/2 {e'4 g'8~} 
      | \tuplet 5/4 {g'16 ges'8 f'16 e'16} d'4 des'4 \tuplet 3/2 {bes'4 e'8~} 
      | e'16 a'8 es''16~ es''16 a'8 f'16 es'4 \tuplet 3/2 {aes'4 ges'8} 
      | r2. r8 c''8 
      | b'8 ges'8 a'8 bes'16 b'16~ b'8 des''8 bes'8 a'8 
      \bar "||" \mark \default aes'8 a'8 b'8 g'16 ges'16 e'4 e'8 e'8~ 
      | e'8 e'8 g'8 ges'8 es'8 d'8 ges'8 a'8 
      | g'8 d'8 des'8 e'8 g'8 g'8 e'4 
      | a'4~ \tuplet 3/2 {a'8\bendAfter #-4  ges'8 g'8~} g'8 f'8 ges'8 bes'8 
      | b'8 d''8 es''8 e''8 b'8 a'4 es''8 
      | des''8. aes'16 bes'8 des''8 c''8 r8 r4 
      | e'8 c'8 des'8 aes'8 e'8 d'4 d'8 
      | des'8 e'8 a'8 aes'8 des'8 r8 r8 d'8 
      \bar "||" d'8 d'8 des'8 es'8 bes4. a8 
      | f8 aes8~ aes16 g8 bes16~ bes8 f'8 des'8 es'8 
      | f'8 r8 r4 des''4 f'8 bes'8 
      | \tuplet 3/2 {es'4 es'8~} es'8 es'8 f'8 es'8 e'4~ 
      | e'4.. ges'16~ ges'8 a'8 r4 
      | r2 r8 g'8 e'8 f'8 
      | \tuplet 3/2 {e'8 f'8 ges'8~} ges'8 ges'8 e'16 g'8 ges'16~ \tuplet 3/2 {ges'8 es'8 d'8} 
      | f'8 a'8 f'8 ges'8 des'16 d'16 des'8 e'8 bes8 
      \bar "||" ges8 bes2..^\markup{\left-align \small vib} 
      | aes8 bes4 ges'8 aes'8 ges'8 d'8 bes8 
      | es'4 aes'8 bes'8 ges'4 \tuplet 3/2 {aes'4 ges'8} 
      | r2 r16 aes'8 ges'16~ ges'16 es'8 bes16 
      | \tuplet 3/2 {d'4 aes'8~} aes'8. d'16 ges'4 \tuplet 3/2 {a'4 g'8~} 
      | g'8 c''8 b'8 g'8 a'8 ges'8 e'4 
      | ges'8 bes'8 aes'4 f'8 es'4 des'8 
      | aes8 bes16 c'16~ c'4 bes8 g8 r4 
      \bar "||" r4 r16 a8 ges16 bes4.. des'16 
      | es'2 b8 es'8 \tuplet 3/2 {des'4 f8} 
      | bes8 des'8 bes8 aes16 f16~ f8 aes16 g16~ g4~ 
      | g8 bes4 f'8 des'8 es'8 f'8 bes'8 
      | des''8 f''4 des''8 bes'8 f'4. 
      | ges'4 c''8 r8 r4 r8. des''16~ 
      | des''16 c''8 bes'16~ bes'8. es''16 des''4 g'16 bes'8 c''16 
      | b'8 c''8 \tuplet 3/2 {bes'4 a'8~} a'16 aes'8 bes'16~ \tuplet 3/2 {bes'8 b'8 bes'8~} 
      \bar "||" \mark \default bes'16 a'8 ges'16 es'4 ges'8 a'8 g'8 es'8 
      | d'8 a8 b8 d'8~ d'16 es'16 es'16 b16~ b8 ges8 
      | a8 a8 g8 bes8 b4 \tuplet 6/4 {g4 d16 c16} 
      | g4 r2.\bar  ".."
    }
    >>
>>    
}
