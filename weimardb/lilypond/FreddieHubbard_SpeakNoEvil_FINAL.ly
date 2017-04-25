\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Speak No Evil"
  composer = "Freddie Hubbard"
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
      | bes1:min7 
      | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des2:maj es2:min7 
      | e2:min11.9 c2:min7 | d2:min11.9 bes2:min7 | a1:13-.9+11+ | bes1:min7 | a1:13-.9+11+ | bes1:min7 | c1:min7 | des1:maj 
      | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des2:maj es2:min7 | e2:min11.9 c2:min7 | d2:min11.9 bes2:min7 
      | a1:13-.9+11+ | bes1:min7 | a1:13-.9+11+ | bes1:min7 | a1:min5-7 | aes1:7 | g1:min7 | ges1:7 
      | f1:min7 | bes1:7 | es1:maj11+.9+ | des1:maj11+.9 | c1:min7 | des1:maj | c1:min7 | des1:maj 
      | c1:min7 | des1:maj | c1:min7 | des2:maj es2:min7 | e2:min11.9 c2:min7 | d2:min11.9 bes2:min7 | a1:13-.9+11+ | bes1:min7 
      | a1:13-.9+11+|
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


      \tempo 4 = 143
      \set Score.currentBarNumber = #0
     
      | r4 r8 ges''16 f''16~ f''8 ges''8 \tuplet 3/2 {f''8 es''8 c''8} 
      \bar "||" \mark \default es''8. f''16~ f''8 r8 r4 r16 ges''8 f''16~ 
      | f''8 ges''8 f''4 ges''8. f''16~ \tuplet 3/2 {f''8 f''8 c''8} 
      | es''8. f''16 r2 r8 ges''8~ 
      | ges''8 f''8 \tuplet 3/2 {es''4 c''8} \tuplet 3/2 {f''4 es''8} \tuplet 3/2 {c''4 aes'8} 
      | b'8 bes'8 c''2 \tuplet 3/2 {bes'4 g'8~} 
      | g'4 r4 r8 a''8 aes''8 g''8~ 
      | \tuplet 6/4 {g''16 ges''8. e''16 d''16} des''8 b'8 c''8 bes'8 es'8 f'8 
      | \tuplet 6/4 {fis'16 g'16 a'4} f'8. d'16 c''4 aes'8 g'8~ 
      | g'1 
      | r4 \tuplet 6/4 {r8. aes'8 bes'16~} bes'8 c''8~ \tuplet 3/2 {c''8 bes'8 aes'8} 
      | g'2. r4 
      | r4 r8 f''16 es''16 \tuplet 3/2 {f''8 es''8 f''8} \tuplet 3/2 {es''8 f''8 es''8} 
      | f''4. r8 r8 c''8 \tuplet 3/2 {es''4 f''8} 
      | r4 r8 f''8~ f''2~ 
      \bar "||" f''2.. es''16 c''16 
      | \tuplet 3/2 {es''8 f''16 r8.} r4 r8 aes''8 ges''8 r8 
      | r8 bes'8 f''8. es''16~ es''8. c''16~ c''8 b'8 
      | bes'8 g'8 \tuplet 3/2 {es'8 c'8 aes8} f'2 
      | \tuplet 3/2 {fis'8 g'4} \tuplet 3/2 {c''4 d''8~} d''4 \tuplet 3/2 {es''4 bes'8} 
      | r2 r8 f''8 aes''8 a''8 
      | bes''8 a''8~ a''16 aes''8 bes''16 a''16 g''8 es''16 c''16 d''16 c''8~ 
      | c''16 e''8 c''16~ c''16 a'8 ges'16 es'16 aes'16 b'16 aes'16 \tuplet 3/2 {f'8 des'4~} 
      | \tuplet 5/4 {des'16 aes'16 bes'16 aes'16 fis'16~} fis'8 d'8 es'4 f'8 r8 
      | r4 r8 c''16 c''16~ \tuplet 6/4 {c''16 c''8 c''8 c''16~} c''16 c''16 c''16 des''16 
      | c''8 bes'4 r8 r2 
      | r1 
      | \tuplet 3/2 {es'4 c'8} f'4 es'8. c'16 f'4 
      | \tuplet 3/2 {ges'4 es'8} f'8. c'16 es'8.. f'32~ f'8 r8 
      \bar "||" r8 g'16 a'16~ a'8 aes'16 f'16 g'8 a'8 bes'8 c''8 
      | des''8 es''8 f''8 ges''8 aes''8 f''8 des''8 r8 
      | \tuplet 6/4 {r4 fis''16 g''16~} \tuplet 3/2 {g''8 aes''8 a''8} bes''8 a''8 aes''8 r8 
      | \tuplet 6/4 {r4 f''16 g''16} f''8 g''8 aes''8 bes''8 c'''8 es'''8 
      | d'''4.. b''16 r2 
      | \tuplet 6/4 {r4 b''16 c'''16~} c'''2.~ 
      | c'''4 \tuplet 3/2 {bes''8 bes''8 g''8} \tuplet 3/2 {bes''8 d'''4} r4 
      | \tuplet 6/4 {r4 b''16 c'''16~} c'''2.~ 
      \bar "||" c'''4~ c'''16 bes''16 bes''16 g''16 \tuplet 3/2 {bes''8 g''4} r4 
      | r8. c'''16~ c'''2.~ 
      | c'''4 bes''8 c'''8 g''8. b''16 \tuplet 3/2 {f''4 bes''8} 
      | des''4 \tuplet 3/2 {f''8 e''4} des''4 \tuplet 3/2 {fis''8 g''8 d''8~} 
      | d''16 des''8\glissando  es''16~ es''8\glissando  aes''8\glissando  des''16 c''8 ges'16~ ges'16 f'16 es'16 des'16 
      | es'16 f'8. es'8 c'4. \tuplet 3/2 {a'8 g'8 aes'8} 
      | ges'16 es'16 des'16 f'16 r2 \tuplet 6/4 {r4 f''16 g''16~} 
      | g''8. e''4. f''8 e''16 es''4 
      | b'4 c''4 a'4 g'8 des'8 
      | aes'4 \tuplet 3/2 {f'4 des'8} c'4 bes4 
      | g'4 aes'4 e'4. r8 
      | r4 \tuplet 6/4 {r4 fis'16 g'16} aes'4~ \tuplet 3/2 {aes'8 g'8 f'8} 
      | g'4 es'4 r2\bar  ".."
    }
    >>
>>    
}
