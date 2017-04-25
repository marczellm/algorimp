\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dat Dere"
  composer = "Woody Shaw"
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
      | s2. r4 
      | c1:min7 | a2:min5-7 aes2:maj | a2:min5-7 d2:7 | d2:min5-7 g2:7 | c1:min7 | a2:min5-7 aes2:maj | d2:min5-7 g2:775+ | c2:min7 g2:7 
      | c1:min7 | a2:min5-7 aes2:maj | a2:min5-7 d2:7 | d2:min5-7 g2:7 | c1:min7 | a2:min5-7 aes2:maj | d2:min5-7 g2:775+ | c1:min7 
      | d4:min5-7 g4:7 c2:min7 | a4:min5-7 d4:7 g4:7 c4:min7 | a2:min5-7 d2:7 | d2:min5-7 g2:7 | d4:min5-7 g4:7 c2:min7 | a4:min5-7 d4:7 g4:775+ es4:7 | d2:min5-7 g2:775+ | g2:7 g2:775+ 
      | c1:min7 | a2:min5-7 aes2:maj | a2:min5-7 d2:7 | d2:min5-7 g2:7 | c1:min7 | a2:min5-7 aes2:maj | d2:min5-7 g2:775+ | c1:min7 
      | s1 | a2:min5-7 aes2:maj | a2:min5-7 d2:7 | d2:min5-7 g2:7 | c1:min7 | a2:min5-7 aes2:maj | d2:min5-7 g2:775+ | c2:min7 g2:9+ 
      | c1:min7 | a2:min5-7 aes2:maj | a2:min5-7 d2:7 | d2:min5-7 g2:7 | c1:min7 | a2:min5-7 aes2:maj | d2:min5-7 g2:775+ | c1:min7 
      | d4:min5-7 g4:7 c2:min7 | a4:min5-7 d4:7 g4:775+ c4:min7 | a2:min5-7 d2:7 | d2:min5-7 g2:7 | d4:min5-7 g4:7 c2:min7 | a4:min5-7 d4:7 g4:775+ es4:7 | d2:min5-7 g2:7 | c2:min7 g2:775+ 
      | c1:min7 | a2:min5-7 aes2:maj | a2:min5-7 d2:7 | d2:min5-7 g2:7 | c1:min7 | a2:min5-7 aes2:maj | d2:min5-7 g2:775+ | c2:min7 g2:7 
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


      \tempo 4 = 115
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 bes'16 g'16 
      \bar "||" \mark \default \tuplet 3/2 {c''8 c''8 c''8} r2 r8. g'16 
      | \tuplet 3/2 {c''4 a'8~} a'8 r8 r2 
      | r8. d''16~ d''8 f''8~ \tuplet 5/4 {f''8 e''16 es''16 d''16~} d''8. c''16~ 
      | c''16 b'16 d''16 b'16 \tuplet 3/2 {aes'8 g'8 f'8} bes'4. aes'16 bes'16 
      | fis'16 g'8. c'4 \tuplet 3/2 {es'4 c'8} es'8. c'16 
      | es'4.^\markup{\left-align \small vib} r8 r8 es'8 \tuplet 3/2 {fis'8 g'8 g'8} 
      | \tuplet 3/2 {fis'8 g'8 g'8} \tuplet 3/2 {g'8 g'8 g'8} f'16 e'16 es'16 c'16 \tuplet 3/2 {bes8 g8 c'8~} 
      | c'8 r8 r2 r8 g'8 
      \bar "||" cis''16 d''8 c''16 \tuplet 3/2 {a'8 g'8 a'8~} a'4\bendAfter #+4  r4 
      | r2. r32 es''16. g''16. d''32~ 
      | d''8 f''16 e''16 es''16 d''16 c''16 b'16~ b'8. aes'16 \tuplet 3/2 {g'8 f'8 bes'8} 
      | aes'8 es'16 b16 \tuplet 3/2 {des'8 bes8 aes8} \tuplet 3/2 {bes8 g4} d'16 f'8 d'16~ 
      | d'4 f'8 d'8 es'8^\markup{\left-align \small vib} r8 r4 
      | r2 \tuplet 6/4 {r4 r16 ges'16} f'4 
      | es'16 f'8. es'16 f'8 es'16 fis'16 g'8. \tuplet 3/2 {c'4 es'8} 
      | \tuplet 3/2 {f'4 es'8} r2. 
      \bar "||" r16 aes''16 g''16 f''16 e''16 es''16 d''16 c''16 \tuplet 3/2 {b'8 d''8 c''8} g'4 
      | \tuplet 3/2 {bes'8 g'8 a'8} \tuplet 3/2 {g'8 fis'8 a'8} \tuplet 3/2 {es'8 f'8 d'8~} d'4 
      | r2 \tuplet 6/4 {f''16 e''16 es''16 d''16 c''8} b'8 aes'16 g'16 
      | f'8 bes'8 aes'16 bes'8.~^\markup{\left-align \small vib} bes'8 r8 r4 
      | r8. c''16 d''16 b'16 d''16 aes'16 g'8 f'8 d'16 es'16 c'8 
      | \tuplet 6/4 {b16 a16 bes16 b16 cis'16 d'16} e'32 g'32 aes'32 bes'32 c''32 d''32 es''32 d''32 r2 
      | r4 r8 f''32 e''32 f''32 es''32 \tuplet 3/2 {d''4 c''8} b'8 aes'8 
      | \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {g'4 f'8} g'4 cis''16 d''8. 
      \bar "||" c''8 a'8 g'4 a'4\bendAfter #+4  r4 
      | r2. r8. f''16~ 
      | \tuplet 6/4 {f''16 g''16 aes''16 b''16 bes''8} g''4. r8 r4 
      | d''32 f''32 e''32 es''32 ges''16 e''32 des''32~ des''32 b'32 e''32 f''32 e''16 es''32 des''32 \tuplet 6/4 {b'16 c''16 bes'16 a'16 aes'8} \tuplet 6/4 {bes'8. aes'16 f'16 aes'16~} 
      | aes'4\bendAfter #+4  g'4 aes'4\bendAfter #+4  g'4 
      | aes'4\bendAfter #+4  g'8 es'8 r2 
      | r8. c''16 \tuplet 3/2 {bes'8 g'8 ges'8} f'8. es'16 f'8. es'16 
      | \tuplet 3/2 {f'4 es'8} r2 c''4 
      \bar "||" \mark \default es''4 r2 c''4 
      | \tuplet 3/2 {es''4 es''8} r2 r8. c''16 
      | \tuplet 3/2 {f''8 es''8 bes'8~} bes'4~ \tuplet 6/4 {bes'4 a'16 aes'16} \tuplet 6/4 {bes'16 b'16 cis''16 bes'16 a'16 aes'16~} 
      | aes'16 bes'16 e'16 aes'16 g'8 f'8~^\markup{\left-align \small vib} f'4~ f'16 es'16 c'16 es'16 
      | \tuplet 3/2 {f'4 f'8} r2 \tuplet 5/4 {e'16 f'16 es'16 c'16 es'16} 
      | f'8 f'8 r2. 
      | r16 ges''16 f''8 \tuplet 3/2 {es''8 c''4} \tuplet 3/2 {bes'8 g'8 c''8} \tuplet 3/2 {d''8 c''8 a'8} 
      | \tuplet 3/2 {g'8 c''8 a'8} \tuplet 3/2 {g'8 a'8 g'8} f'4 \tuplet 6/4 {es'4~ es'16 es'16} 
      \bar "||" f'8. es'16 f'4 r2 
      | r4 r8. a'16 bes'4~ \tuplet 3/2 {bes'8 g'8 f'8} 
      | \tuplet 3/2 {es'8 c'8 f'8~^\markup{\left-align \small vib}} f'2~ \tuplet 3/2 {f'8 es'8 f'8} 
      | bes'4. aes'16 bes'16 b'16 cis''16 bes'16 fis'16~ fis'32 aes'32~ aes'8 aes'32 bes'32 
      | g'4 r2 r8. d''16 
      | a'4 r2. 
      | r8. f''16~ f''16 es''8 c''16 \tuplet 3/2 {bes'4 g'8} b'4 
      | c''8 r8 r2. 
      \bar "||" g''8 r8 r4 f''4. d''8 
      | c''8 a'8 g'4 f'8 r8 r4 
      | r8. c''16 \tuplet 3/2 {f''8 es''8 bes'8~} bes'4. \tuplet 6/4 {g'16 aes'16 bes'16~} 
      | bes'16 g'16 aes'16 g'16~^\markup{\left-align \small vib} g'4 r2 
      | r8. f''32 e''32 es''16 d''16 c''16 b'16 aes'16 g'8 bes'16 g'16 a'8 g'16 
      | ges'16 a'16 c''16 es''16 d''16 c''16 bes'8 \tuplet 6/4 {g'16 a'16 g'16 fis'8 a'16} \tuplet 3/2 {g'4 a'8} 
      | bes'4 ges'16 f'8. es'8. c'16 \tuplet 6/4 {bes4~ bes16 g16} 
      | bes8 r8 r2 b'16 c''8 es''16 
      \bar "||" es''8. es''16 r2 r8 f''8 
      | \tuplet 3/2 {es''4 es''8} r2. 
      | r8 f''16 es''16 bes''4\bendAfter #+4  r2 
      | \tuplet 3/2 {aes''8 g''8 f''8} \tuplet 6/4 {e''16 es''16 d''8 es''16 c''16} \tuplet 3/2 {b'8 aes'8 g'8~} g'8 cis''16 d''16 
      | c''8 c''8 es''4 r4 r8 c''8 
      | bes'8. g'16 c''8 r8 \tuplet 6/4 {r4 r16 c'16} f'8 es'16 f'16 
      | \tuplet 3/2 {es'8 f'8 es'8} fis'16 g'8. ges'16 f'8. \tuplet 3/2 {es'8 c'8 f'8} 
      | \tuplet 3/2 {es'8 c'8 f'8} \tuplet 3/2 {es'8 c'8 f'8} es'8 c'8 \tuplet 3/2 {bes8 g8 c'8~} 
      \bar "||" \mark \default c'4. r8 r2\bar  ".."
    }
    >>
>>    
}
