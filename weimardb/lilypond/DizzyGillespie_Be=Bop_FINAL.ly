\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Be-Bop"
  composer = "Dizzy Gillespie"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min 
      | s2 g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min 
      | f1:min7 | bes1:9+ | es1:maj | s1 | es1:min7 | aes1:9+ | des1:maj | g2:min5-7 c2:9+ 
      | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min 
      | s2 g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min 
      | s2 g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min 
      | f1:min7 | bes1:9+ | es1:maj | s1 | es1:min7 | aes1:9+ | des1:maj | g2:min5-7 c2:9- 
      | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min 
      | s2 g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f2:min s2 | c2:7 f2:min 
      | s2 g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min 
      | f1:min7 | bes1:9+ | es1:maj | s1 | es1:min7 | aes1:9+ | des1:maj | g2:min5-7 c2:9- 
      | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | g2:min5-7 c2:9- | f2:min g2:min5-7 | f2:min bes2:min6 | f1:min | c2:7 f2:min|
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


      \tempo 4 = 290
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default c''8 d''8 \tuplet 3/2 {c''8 bes'4~} bes'16 aes'8 c''16~ c''8. aes'16~ 
      | aes'8. c''16 r2. 
      | \tuplet 3/2 {c''8 d''8 c''8} d''16 bes'8 g'16 aes'8. c''16~ c''8. bes'16~ 
      | bes'8 ges'8 r2. 
      | r4 bes'8 aes'8 g'8 f'8 e'8 g'8 
      | \tuplet 3/2 {bes'4 des''8} c''8 bes'8 \tuplet 3/2 {g'4 aes'8} \tuplet 3/2 {bes'4 g'8} 
      | aes'4 f'8 aes'8 \tuplet 3/2 {g'4 f'8} e'8 c'8 
      | f'8 r8 r2. 
      \bar "||" r4 r8 aes''8~ aes''4. f''8 
      | e''8 f''16 a''16 des'''8 c'''8 \tuplet 3/2 {bes''8 aes''8 g''8} aes''16 bes''8 aes''16 
      | g''8 f''8 e''8 des''8 bes'8 des''8 c''8 bes'8 
      | g'8 aes'8 bes'8 aes'8 g'8 f'8 e'8 g'8 
      | bes'8 des''8 c''8 bes'8 \tuplet 3/2 {aes'8 g'8 aes'8} bes'8 g'8 
      | \tuplet 3/2 {aes'4 f'8} ges'8 aes'8 g'8 f'8 e'8. f'16~ 
      | f'8 c'8 r2. 
      | r2 es''4\glissando  es'''4~ 
      \bar "||" es'''4. des'''8 \tuplet 3/2 {d'''4 c'''8~} c'''8 a''8 
      | \tuplet 3/2 {aes''4 e''8} ges''8 aes''8 g''8 f''8 e''4 
      | es''8 d''8 b'8 bes'8 \tuplet 3/2 {aes'4 fis'8} g'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r2 r8 des'''8~ 
      | des'''4. b''16 c'''16~ \tuplet 3/2 {c'''8 bes''8 aes''8~} \tuplet 3/2 {aes''8 g''8 ges''8~} 
      | \tuplet 3/2 {ges''8 f''8 ges''8~} \tuplet 3/2 {ges''8 ges''8 f''8~} \tuplet 3/2 {f''8 es''8 d''8~} d''8 c''8 
      | \tuplet 3/2 {des''4 aes'8} r4 r16 e''16 f''16 f''16~ f''4~ 
      | \tuplet 3/2 {f''8 es''8 e''8~} e''16 g'16 bes'8 des''8 c''8 bes'8 aes'8~ 
      \bar "||" aes'16 c'8 f'16~ f'16 aes'8 g'16 f'4 e'16\bendAfter #+4  d'8 f'16~ 
      | f'8 es'8 e'8 f'8 g'8 aes'8 bes'8 g'8 
      | aes'8 bes'8 \tuplet 3/2 {c''8 des''8 d''8~} d''16 es''8 e''16 f''8 ges''8~ 
      | ges''8 f''8~ f''16 es''16 e''16 f''16~ \tuplet 3/2 {f''8 des''8 d''8~} \tuplet 3/2 {d''8 b'8 c''8~} 
      | c''8 bes'8 g'8 aes'8 bes'8 aes'8 g'8 f'8 
      | e'8 g'8 bes'8 es''16 des''16~ des''8 c''4. 
      | bes'8 aes'8 r2. 
      | r1 
      \bar "||" \mark \default c'''4 aes''8 c'''8 bes''8 aes''8 g''4 
      | aes''8. es''16 ges''8 aes''8 g''8 f''8 e''8 e''8 
      | f''8 c''8 aes'4 des''8 c''8 bes'8 aes'8 
      | g'16 f'8 e'16~ e'8 g8 bes8 c'8 b8 bes8 
      | aes8 c'8 f'8 aes'8 g'8 f'8 e'8 es'8 
      | bes'8 g'8 aes'8 bes'8 c''8 des''16 d''16~ d''8 es''8 
      | e''8 f''8 ges''8 e''16 f''16~ f''8 r8 r4 
      | r2. d''4\glissando  
      \bar "||" \tuplet 3/2 {es'''8 e'''8 f'''8~} f'''2\bendAfter #-4  bes''8 r8 
      | r2. \tuplet 3/2 {des''8 d''8 aes''8} 
      | des'''8\bendAfter #+4  es'''8 \tuplet 3/2 {des'''8 c'''8 des'''8} c'''8.\bendAfter #+4  ges''16 r4 
      | r2 des'''4 aes''4 
      | b''8. aes''16 g''8. e''16~ e''8. b'16 bes'8 bes'8 
      | c''8 bes'8 aes'8 a'8 bes'8 g'8 aes'8 f'8~ 
      | f'8. g'16~ g'8 f'4. r4 
      | r2. \tuplet 3/2 {c'''8\glissando  d'''4} 
      \bar "||" ges'''8\glissando  f'''4. e'''8. c'''16~ c'''8 es'''8~ 
      | es'''8 d'''4 f''8 a''8 d'''16 c'''16 bes''8 aes''8 
      | g''8 f''8 \tuplet 3/2 {f''8 es''4} f''8 d''16 e''16~ e''8 b''8~ 
      | b''8 r8 r2 b''4 
      | es'''4.. d'''16~ d'''4\glissando  bes''4~ 
      | bes''4 des'''2\glissando  fis''4~ 
      | fis''4 g''16 f''8 c''16 es''4 \tuplet 3/2 {des''8 c''8 bes'8} 
      | aes'4 bes'8 aes'8 g'8 f'16 e'16~ e'4 
      \bar "||" \tuplet 3/2 {a8\glissando  bes8 c'8} c'2.~ 
      | c'8 f'8 g'8 aes'8 bes'8 g'8 aes'8 bes'8 
      | \tuplet 3/2 {c''8 des''8 d''8~} d''8 es''8 \tuplet 3/2 {ges''8 f''4} \tuplet 3/2 {ges''8 e''8 f''8~} 
      | f''8 r8 r2. 
      | r2 c'''4 c'''4~ 
      | c'''4 c'''4 c'''4. c'''8~ 
      | c'''8 c'''4\bendAfter #-4  r8 r2 
      | r2 b''8 c'''8~ \tuplet 3/2 {c'''8 b''8 b''8} 
      \bar "||" \mark \default c'''8 c'''8 des'''8 c'''8 b''8 c'''8 des'''16 c'''8 c'''16 
      | b''8 c'''8 \tuplet 3/2 {b''8 bes''8 b''8} des'''4.\glissando  g''8 
      | aes''16 bes''8 aes''16~ \tuplet 3/2 {aes''8 g''8 f''8} e''4 bes'8 des''8 
      | c''8 bes'16 g'16~ g'16 aes'8 bes'16~ bes'8 g'16 aes'16~ aes'4\bendAfter #-4  
      | b8 aes'8 g'16 e'16 f'8 e'8. f'16~ f'8 d'8 
      | es'8 f'8 g'8 aes'16 bes'16~ bes'8 aes'8 \tuplet 3/2 {des''8 d''8 es''8~} 
      | \tuplet 3/2 {es''8 e''8 f''8} es''8 e''8 f''4 r4 
      | r1 
      \bar "||" c''4\glissando  d'''4 c'''4 r4 
      | r8 bes''8\glissando  f''8 aes''8 bes''16 aes''8 ges''16~ \tuplet 3/2 {ges''8 f''8 e''8~} 
      | e''4. des''8 c''8 r8 r4 
      | r4 \tuplet 3/2 {g'4 a'8} bes'8 aes'8 \tuplet 3/2 {g'8 f'4} 
      | e'8 g'8 bes'8 des''8 c''8 bes'8 aes'4 
      | bes'8 aes'8 g'8 f'8 \tuplet 3/2 {e'8 des'8 a8} \tuplet 3/2 {bes4 des'8} 
      | c'8 bes8 aes4 bes8. aes16~ aes4 
      | r2. r8 f'8 
      \bar "||" \tuplet 3/2 {e'8 d'8 f'8} \tuplet 3/2 {g'8 bes'8 c''8} des''8 es''8 \tuplet 3/2 {e''8 f''8 es''8~} 
      | \tuplet 3/2 {es''8 des''8 d''8~} \tuplet 3/2 {d''8 bes'8 g'8~} g'8 aes'8 c''8 aes'8 
      | g'8 f'8 es'4 f'8 d'8 es'8 f'8~ 
      | f'4. d'8 es'8 f'8 ges'8 aes'16 bes'16~ 
      | \tuplet 3/2 {bes'8 aes'8 aes'8} \tuplet 3/2 {bes'8 aes'8 g'8} f'16 ges'8 bes'16~ bes'8 des''8~ 
      | des''8 aes''8~ aes''2~ aes''16 g''16\glissando  ges''8 
      | f''8 des''8 r2. 
      | r2. aes''4 
      \bar "||" c'''4 aes''4~ aes''16 c'''8 aes''16~ aes''8 des'''8~ 
      | des'''8 b''8 c'''8 bes''8 aes''4 bes''8 aes''8 
      | g''8 f''8~ \tuplet 3/2 {f''8 ges''8 bes''8} c'''8 bes''8 a''16 aes''8 a''16 
      | bes''8 aes''8 g''8 f''8 e''4 bes'8 des''8 
      | c''8 bes'8 aes'8 g'8 bes'8 aes'8 g'8 f'8 
      | e'8 g'8 bes'8 des''16 c''16~ c''8 bes'8 aes'8 g'8 
      | bes'8 aes'16 g'16~ \tuplet 3/2 {g'8 f'8 e'8~} e'16 aes16 a16 bes16~ bes8 des'16 c'16~ 
      | \tuplet 3/2 {c'8 bes8 aes8~} aes8 g8 \tuplet 3/2 {bes8 aes8 f8} r4\bar  ".."
    }
    >>
>>    
}
