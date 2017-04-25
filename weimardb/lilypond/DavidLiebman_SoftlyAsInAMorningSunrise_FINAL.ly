\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Softly as in a Morning Sunrise"
  composer = "David Liebman"
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
      
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:9+ | s1 | c1:9+ | s1 | aes1:13-.9+11+ | s1 | g1:13-.9+11+ | s1 
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:9+ | s1 | c1:9+ | s1 | aes1:13-.9+11+ | s1 | g1:13-.9+11+ | s1 
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:9+ | s1 | c1:9+ | s1 | aes1:13-.9+11+ | s1 | g1:13-.9+11+ | s1 
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:9+ | s1 | c1:9+ | s1 | aes1:13-.9+11+ | s1 | g1:13-.9+11+ | s1 
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:9+ | s1 | c1:9+ | s1 | aes1:13-.9+11+ | s1 | g1:13-.9+11+ | s1 
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:9+ | s1 | s4 c2.:9+ | s1 | aes1:13-.9+11+ | s1 | g1:13-.9+11+ | s1 
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:9+ | s1 | c1:9+ | s1 | aes1:13-.9+11+ | s1 | g1:13-.9+11+ | s1 
      | c1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1|
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


      \tempo 4 = 261
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 b'4 \tuplet 3/2 {ges''4 es''8~} 
      | es''8 b'2..~ 
      | b'1~ 
      | b'1~ 
      | b'4 ges'8 bes'8~ bes'16 f'8 ges'16~ \tuplet 3/2 {ges'8 b'8 c''8} 
      | es''8 f''8 \tuplet 3/2 {ges''4 es''8} \tuplet 3/2 {f''4 es''8} c''8 b'8 
      | \tuplet 3/2 {es''4 b'8} ges'8 es'8 d'16 g'16\glissando  b'8 es''4 
      \bar "||" b'1~ 
      | b'4 aes'8 b'8 aes'8 ges'8 es'8 ges'8 
      | aes'8 b'8 \tuplet 3/2 {des''4 es''8} ges''8 des''8 es''8 ges''8 
      | es''4 c''4 b'4 \tuplet 3/2 {aes'4 ges'8~} 
      | ges'4. c''8 aes'4 b'8. g'16~ 
      | g'2 ges'8 f'8 \tuplet 3/2 {e'8 es'8 f'8} 
      | es'8 f'8 \tuplet 3/2 {g'4 es'8} f'4 c'4 
      | es'4 bes4 c'4. des'8~ 
      \bar "||" des'4. r8 r2 
      | r1 
      | r1 
      | r2 \tuplet 3/2 {g'4 bes'8} \tuplet 3/2 {aes'4 g'8~} 
      | g'2 f'8 e'8 f'8 g'8 
      | \tuplet 3/2 {aes'4 bes'8~} bes'16 c''8 d''16 \tuplet 3/2 {f''4 e''8} f''8 g''8 
      | aes''8 g''8 ges''8 e''8 f''8 e''8 es''8 ges''8 
      | d''8 es''8 d''8 es''8 d''8 es''8 des''8 es''8 
      \bar "||" des''4.. b'16 des''8 b'8 des''8 es''8 
      | f''8 es''8 des''8 b'8 a'4 ges'8. a'16~ 
      | a'8. b'16~ b'4 des''4 b'8 a'8~ 
      | a'4.. ges'16 a'8 a'8 \tuplet 3/2 {ges'4 des'8} 
      | es'4 es'4 es'8 r8 r4 
      | r1 
      | r1 
      | r1 
      \bar "||" \mark \default r1 
      | r8. g'16~ \tuplet 3/2 {g'8 bes'8 c''8~} c''8 es''8 \tuplet 3/2 {f''4 es''8~} 
      | es''4. r8 r2 
      | r8. es''16~ es''8 f''8 g''8 bes''8 \tuplet 3/2 {c'''4 des'''8~} 
      | des'''8 r8 r2. 
      | r1 
      | r1 
      | r2 r8 g''8 bes''8 c'''8 
      \bar "||" des'''8 c'''8 des'''8 c'''8 des'''8 c'''8 bes''8. aes''16~ 
      | \tuplet 3/2 {aes''8 g''8 aes''8~} \tuplet 3/2 {aes''8 g''8 aes''8~} aes''8 g''8 ges''8 es''8 
      | ges''8. f''16 ges''8. f''16 es''4 des''4 
      | \tuplet 3/2 {des''4 c''8} bes'8 g'8 f'4. ges'8~ 
      | ges'2... f'16~ 
      | f'8 e'8 \tuplet 3/2 {es'4 f'8~} f'16 es'8 f'16 g'8 es'8 
      | ges'8 f'8 c'8. es'16~ es'8. f'16~ f'4 
      | \tuplet 3/2 {fis'4 g'8} bes'4 c''4 \tuplet 3/2 {d''8 es''4} 
      \bar "||" des''4 r2. 
      | r1 
      | r8 des'8 es'8 g'8 \tuplet 3/2 {e'4 ges'8} \tuplet 3/2 {aes'4 bes'8} 
      | \tuplet 3/2 {c''4 d''8} es''8 des''8~ des''16 c''8 des''16 f''8. g''16 
      | bes''8 g''8 aes''8 aes''8 g''8 ges''8 f''8 e''8 
      | es''8 g''8 e''8 d''8 es''8 c''8 cis''16 d''8 bes'16~ 
      | bes'4.. g'16~ g'16 aes'8 aes'16 g'8 ges'8 
      | f'8 e'8 es'8 g'16 e'16~ \tuplet 3/2 {e'8 f'8 aes'8~} aes'8 a'16 es''16~ 
      \bar "||" es''8 c''8 a'8 f'8 \tuplet 3/2 {b'8 des''8 es''8~} es''8 g''8 
      | des''8 f''16 aes''16~ aes''8 b''8 a''8 ges''8 f''8 e''8 
      | es''8 f''8 des''8 es''8 bes'8 des''8 a'8 b'8 
      | ges'8 a'8 es'8 ges'16 des'16~ des'8 es'8 \tuplet 3/2 {bes4 es'8~} 
      | es'1~ 
      | es'4. b16 es'16 e'16 e'8 b'16 \tuplet 3/2 {es''4 f''8} 
      | bes''16 f''16 f''16 es''16 \tuplet 3/2 {bes'8 b'8 f'8} es'8 r8 r4 
      | r1 
      \bar "||" \mark \default r2 \tuplet 3/2 {b8 e'8 d'8} f'16 es'16 f''16 es''16 
      | f''16 bes''16 c'''16 f''16 \tuplet 3/2 {es''8 f''8 bes'8} f'16 es'8. r4 
      | r1 
      | r8 b8 \tuplet 5/4 {es'8. f'16 bes'16} es''16 e''16 es''16 f''16 \tuplet 6/4 {bes''16 des'''16 c'''16 bes''8.} 
      | es'''8 d'''8 es''16 f''16 bes''16 f''16 es''4 f''16 es''8 bes'16 
      | \tuplet 3/2 {f'8 bes16 r8.} r2. 
      | r1 
      | r2 bes''8 bes''8 b''8 bes''8 
      \bar "||" a''8 b''8 des'''8. ges''16 a''8 ges''8 des''4 
      | \tuplet 3/2 {es''4 f''8} \tuplet 3/2 {g''4 ges''8~} \tuplet 3/2 {ges''8 f''8 e''8} es''8 g''8 
      | d''8 es''16 f''16~ f''8 d''8 es''8 des''8 bes'8 a'8 
      | bes'8 ges'8 f'8 e'8 es'8 f'8~ f'16 g'8 bes'16 
      | c''8. d''16 \tuplet 3/2 {f''4 d''8} \tuplet 3/2 {es''4 c''8} bes'8 ges'8 
      | \tuplet 3/2 {bes'4 ges'8} \tuplet 3/2 {f'4 e'8} es'8 f'8 g'8 bes'8 
      | c''8. es''16~ es''4 bes'4 d'4 
      | \tuplet 3/2 {e'8\glissando  fis'4} \tuplet 3/2 {g'4 c''8~} c''4 bes'8 r8 
      \bar "||" r1 
      | r2 bes'8 g'8 \tuplet 3/2 {bes'4 g'8} 
      | aes'4. ges'4. r4 
      | r4 r8. aes'16~ \tuplet 3/2 {aes'8 ges'8 aes'8~} aes'8 f'8 
      | fis'4 g'8 ges'8 \tuplet 3/2 {f'8 e'8 f'8~} f'16 f'8 e'16 
      | f'4. es'4 e'4 d'8 
      | es'4 d'8 es'8 des'4. es'8 
      | des'4. c'8 b2 
      \bar "||" b8. des'16~ des'4 es'4 e'4 
      | ges'4 aes'8. a'16~ a'4 b'8 des''8 
      | b'4 a'8. aes'16~ aes'4 aes''8 r8 
      | r1 
      | r1 
      | r1 
      | r1 
      | r2 r8 g''8 bes''8 d'''8 
      \bar "||" \mark \default es'''8 r8 r4 r8. bes''16~ bes''8 c'''8 
      | r2 r8 g''8 bes''8 d'''8 
      | es'''8 es'''8 \tuplet 3/2 {es'''4 es'''8~} es'''8 es'''8 d'''8 bes''8 
      | bes'8 r8 r4 \tuplet 3/2 {fis''4 g''8~} g''16 bes''8 des'''16~ 
      | des'''8 es'''8 r2 r16 d'''16 des'''8 
      | bes''8 r8 r4 bes''4 \tuplet 3/2 {ges''4 bes''8} 
      | g''8 bes''8 r2 r16 des'''16 es'''8 
      | e'''8. f'''16~ f'''2.~ 
      \bar "||" f'''2 ges'''8 f'''8 \tuplet 3/2 {ges'''4 b''8} 
      | bes''4.. aes''16 a''8 c''8 ges''8 a''8 
      | aes''8 g''8 \tuplet 3/2 {ges''4 c''8} f''8 e''8 es''8 g''8 
      | es''8 f''8 ges''8 es''8 e''8 des''8 \tuplet 3/2 {bes'4 ges'8} 
      | a'8 es''8 des''8 bes'8 b'8 aes'8 g'8 ges'8 
      | \tuplet 3/2 {f'4 e'8} es'8 f'8 es'8 f'8 bes'8 c''8 
      | bes'8 c''16 es''16~ es''16 bes'8 f''16~ f''8 bes'8 es''8 g''8~ 
      | g''8 es''8 bes''8 c''8 g'8 bes'8 es'16 bes'8 des'16~ 
      \bar "||" \tuplet 6/4 {des'8 bes'8. es'16~} es'16 bes'8 bes'16~ bes'8 r8 r4 
      | r16 es'8 bes'16 des'8 bes'8 es'8 bes'8 bes'8 bes'8 
      | es'8 bes'8 es'8 bes'8 e'8 r8 r4 
      | r2 r8. bes16~ \tuplet 3/2 {bes8 des'8 es'8} 
      | \tuplet 3/2 {ges'8 e'8 f'8} aes'8 c''16 d''16 f''16 fis''16 e''16 f''16 g''8\glissando  f''16 es''16~ 
      | es''16\glissando  c''16 a'16 f'16 \tuplet 6/4 {fis'16 g'16 b'16 d''16 cis''8} \tuplet 3/2 {d''8 bes'8 cis'8} d'8 f'16 e'16 
      | f'8 g'8 \tuplet 6/4 {a'16 bes'16 cis''16 d''16 es''8} des''16 e''16 d''16 fis''16 g''8 aes''8 
      | \tuplet 3/2 {bes''8 b''8 c'''8} \tuplet 3/2 {b''4 es''8} \tuplet 3/2 {f''8 c''8 g'8~} g'16 es'16 c'8 
      \bar "||" r1 
      | r2 r8. c''16 \tuplet 3/2 {d''8 des''8 e''8} 
      | des''16 bes'16 c''16 d''16 \tuplet 3/2 {des''8 e''8 des''8} e''16 c''16 e''16 es''16 \tuplet 6/4 {d''16 e''16 es''16 d''8 e''16} 
      | f''4 f''8 g''16 aes''16 a''16 bes''16 a''16 bes''16 g''16 b''16 cis'''16 d'''16~ 
      | d'''16 es'''16 d'''8 \tuplet 3/2 {des'''8 c'''8 b''8~} \tuplet 6/4 {b''16 bes''4 a''16~} \tuplet 3/2 {a''8 aes''8 f''8~} 
      | \tuplet 5/4 {f''16 g''16 f''16 ges''16 e''16} \tuplet 3/2 {f''8 d''8 des''8} \tuplet 3/2 {c''8 bes'4} aes'4 
      | r1 
      | r1 
      \bar "||" \mark \default r2 r8 g''8 aes''8. g''16~ 
      | g''4. aes''8 g''8 aes''8 g''8 fis''8 
      | g''8 aes''8 g''8 fis''8 g''8 aes''8 g''8 fis''8 
      | g''8 aes''8 g''8 fis''8 g''8 aes''8 g''8 fis''16 g''16 
      | r4 r8. aes''16~ aes''8 r8 r8 g''8 
      | r2 \tuplet 3/2 {fis''4 g''8} aes''8 g''8 
      | fis''8 r8 r4 g''8 r8 r8. g''16 
      | r4 r8. fis''16~ fis''8 g''8 aes''8 g''8 
      \bar "||" fis''8 g''8 aes''8 g''8 fis''8 g''8 \tuplet 3/2 {des''4 c''8} 
      | b'4 aes'8 g'8 ges'2 
      | bes'16 des'8 bes'16 \tuplet 3/2 {c'4 b8} r2 
      | r2. a'16 es''8 bes'16 
      | des'4 \tuplet 3/2 {aes'4 bes'8} c''8.\glissando  es''16~ es''8 d''8 
      | c''8 des''8 f''8 g''8 aes''8 bes''8~ bes''16 aes''8 g''16~ 
      | g''8 ges''8 f''16 e''8 es''16~ \tuplet 3/2 {es''8 g''8 d''8~} d''8 f''8 
      | es''8 des''8 bes'4 cis''8 d''8 \tuplet 3/2 {b'4 a'8} 
      \bar "||" bes'4. r8 r4 f''8. es''16~ 
      | es''4 r4 r8. es''16~ es''8 b''8 
      | bes''4. r8 r4 e''4 
      | f''4 bes'4.. e''16~ e''8 g''8~ 
      | g''8 r8 r4 r8. c''16~ c''8 c'''8~ 
      | c'''8 r8 r2 a''8 f''8 
      | c''8 r8 r8. es''16~ es''8 bes'8 c'8 es'8 
      | b8 r8 r4 b8 es'8 \tuplet 3/2 {d''8 e''8 es''8~} 
      \bar "||" es''16 c'''16 b''16 des'''16 bes''4 r2 
      | r8. b16 \tuplet 3/2 {d'8 b8 f'8} \tuplet 3/2 {d'8 es'8 f'8} es'8 f''8 
      | bes'8 d''8 \tuplet 3/2 {f''8 bes''8 b''8~} b''16 bes''8 b''16 des'''8 des'''8 
      | \tuplet 3/2 {bes''8 des'''8 bes''8} des'''8 b''8 bes''8. ges''16 bes4 
      | b1~ 
      | b4. b'8 b8 fis'8 g'8. f'16~ 
      | f'8 e'8 es'8 g'8 d'8 f'8 aes'8 bes'8 
      | b'8. es''16 \tuplet 3/2 {f''4 es''8} \tuplet 3/2 {f''4 es''8} f''4~ 
      \bar "||" \mark \default f''16 es''8 f''16 es''8 f''8 es''8 f''8 es''8 f''8 
      | es''8 f''8 es''8 f''8 es''8 f''8 es''8 f''8 
      | es''8 f''8 es''8 f''8 es''8 f''8 es''8 f''8 
      | es''8 f''8 es''8 f''8 es''4 b'8 r8 
      | r1 
      | r1 
      | r1 
      | r2 r8. aes'16~ aes'8 g'8 
      \bar "||" aes'8 bes'4 es''4 es''4 es''8 
      | es''4 es''8. es''16~ es''8 es''8 \tuplet 3/2 {es''4 es''8} 
      | es''8 f''8 es''4 b'4 r4 
      | r1 
      | r8 bes8 es'8 f'8 ges'4~ \tuplet 3/2 {ges'8 e'8 ges'8} 
      | \tuplet 3/2 {f'4 e'8} es'8 ges'8 des'8 f'8 \tuplet 3/2 {aes'4 a'8} 
      | b'8 des''8 es''8 ges''8 f''8 e''8 es''8 b'8 
      | e''8 d''8 es''8 d''8 des''8 des''8 b'8 a'8 
      \bar "||" \tuplet 3/2 {bes'4 des''8} es''8 f''8 g''8 bes''8 c'''4 
      | bes''2 \tuplet 3/2 {g''4 f''8} d''8 b'8 
      | e''8 fis''8 g''8 a''8 ges''8 des''8 b'8 a'8 
      | e''8 ges''8 des''8 e''8 es''8 b'8 \tuplet 3/2 {ges'8 es'8 aes'8~} 
      | aes'8 bes'16 c''16~ c''8 d''8 bes'8 g'8 d'8 c'8 
      | g'8 e'16 es'16~ es'8 g'8 d'8 f'16 g'16~ g'8 bes'8 
      | c'4~ \tuplet 3/2 {c'8 es'8 des'8~} des'4~ \tuplet 3/2 {des'8 f'8 es'8~} 
      | es'4 g'8 ges'8~ ges'4. b'16 g'16~ 
      \bar "||" g'4 c'4 ges'4. f'8~ 
      | f'4. es'8 f'8 f'8 es'8 f'8 
      | es'8 es'8 es'8 f'8 f'4 es'8 r8 
      | r2. g'8. fis'16 
      | g'4 c''4 e'8 f'16 ges'16~ ges'8 f'8~ 
      | f'4. es'8 f'4 es'8 r8 
      | r1 
      | r2 aes'8 g'8 fis'8 g'8 
      \bar "||" \mark \default c''2. \tuplet 3/2 {aes'8 f'8 ges'8} 
      | f'4 e'8 es'8 f'8. es'16 \tuplet 3/2 {f'4 fis'8} 
      | \tuplet 3/2 {g'4 bes'8} b'8 c''8~ c''8. es''16~ es''8 f''8~ 
      | f''8. es''16~ es''8. c''16~ c''8 es'8 \tuplet 3/2 {f'8 ges'8 f'8~} 
      | f'4 \tuplet 3/2 {e'8 f'8 es'8} f'4 es'8 e'16 es'16 
      | f'4. es'8 f'8 ges'8 c'4 
      | es'4. r8 r2 
      | r2 aes'8 g'16 fis'16~ fis'8 g'8 
      \bar "||" c''8. c''16~ c''8. e'16 ges'4. f'8~ 
      | f'4. es'8 f'8 f'8 es'8 f'8 
      | c''4 c''4 \tuplet 3/2 {f'8 ges'4} \tuplet 3/2 {es'4 e'8~} 
      | e'4. es'8 c'16 d'16 f'4. 
      | es'2 \tuplet 3/2 {c'4 es'8} r4 
      | r1 
      | r1 
      | r2 des'8 es'8 f'8 g'8~ 
      \bar "||" g'8 r8 r4 g'8 aes'8 bes'8 c''8 
      | r2 c''8 des''16 es''16~ es''8 e''8~ 
      | e''8 r8 r4 \tuplet 3/2 {e''4 f''8} \tuplet 3/2 {ges''4 aes''8~} 
      | aes''8 r8 r4 g''8 aes''8 bes''8 c'''8~ 
      | c'''4. b''16 aes''16 g''4. f''8 
      | e''4. cis''8 bes'4. aes'8 
      | g'4. ges'8 f'4. e'8 
      | es'4~ \tuplet 3/2 {es'8 d'8 des'8} \tuplet 3/2 {c'8 b4~} b4 
      \bar "||" c''2 e'8 ges'4 f'8~ 
      | f'4.. es'16~ es'16 f'8 f'16 es'4 
      | c''4 c''4. f'8~ f'8. es'16~ 
      | es'2 c'8 es'8 \tuplet 3/2 {f'4 es'8~} 
      | es'4 ges'4~ \tuplet 6/4 {ges'16 f'4 es'16~} es'4~ 
      | es'4 r2. 
      | r1 
      | r1 
      | es'8 f'8 ges'8. f'16~ f'8 es'4.~ 
      \bar "||" \mark \default es'2~ es'8 c'8 es'8. f'16~ 
      | f'8 ges'4 f'4 es'4.~ 
      | es'4 r2 g'4~ 
      | \tuplet 3/2 {g'8 aes'8 bes'8} b'8 c''8~ c''2~ 
      | c''4 b'2.~ 
      | b'8 bes'8~ bes'2~ bes'8 a'8 
      | \tuplet 3/2 {aes'4 g'8} ges'8 f'8 e'16 es'8 d'16 r4\bar  ".."
    }
    >>
>>    
}
