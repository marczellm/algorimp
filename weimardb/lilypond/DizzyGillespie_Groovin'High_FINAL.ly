\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Groovin' High"
  composer = "Dizzy Gillespie"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key des \major
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
      
      | es1:maj | es1:maj | a1:min5-7 | d1:7 | es1:maj | s1 | g1:min5-7 | c1:7 
      | f1:7 | s1 | f1:min7 | bes1:7 | g1:min7 | fis1:min7 | f1:min7 | bes1:7 
      | es1:maj | s1 | a1:min5-7 | d1:7 | es1:maj | s1 | g1:min5-7 | c2:7 s2 
      | f1:7 | s1 | f1:min7 | bes2:7 s2 | f1:min7 | aes2:min7 des2:7 | es1:6 | f2:min7 bes2:7 
      | es1:maj | s1 | a1:min5-7 | d1:7 | es1:maj | s1 | g1:min5-7 | c2:7 s2 
      | f1:7 | s1 | f1:min7 | bes2:7 s2 | g1:min7 | fis1:min7 | f1:min7 | bes1:7 
      | es1:maj | s1 | a1:min5-7 | d2:7 s2 | es1:maj | s1 | g1:min5-7 | c2:7 s2 
      | f1:7 | s1 | f1:min7 | bes2:7 s2 | f1:min7 | aes2:min7 des2:7|
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


      \tempo 4 = 182
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default aes'8 bes'8 e''8 es''8 e''8 f''8 \tuplet 6/4 {ges''4~ ges''16 f''16~} 
      | f''4~ f''16 c''8 f''16 es''4 des''4 
      | c''8 bes'8 aes'16 bes'16 aes'16 g'16 f'8 es'8 \tuplet 3/2 {e'8 g'8 bes'8} 
      | \tuplet 3/2 {des''4 c''8} aes'16 g'16 ges'8 bes'4 aes'8 bes'16 aes'16~ 
      | aes'16 bes'16 aes'8 f'8 ges'8 aes'4^\markup{\left-align \small vib} r4 
      | r1 
      | r16 f''16 e''16 aes''16 c'''16 b''16 bes''16 a''16 \tuplet 3/2 {aes''8 f''8 ges''8} \tuplet 6/4 {g''16 ges''16 f''16 es''8 des''16} 
      | \tuplet 6/4 {f''8 des''16 d''16 f''16 e''16} d''16 des''16 c''16 bes'16 \tuplet 5/4 {aes'8 a'16 bes'16 aes'16} \tuplet 5/4 {g'16 aes'16 f'16 e'16 es'16} 
      | \tuplet 5/4 {f'8 d'16 es'16 f'16} g'16 aes'16 bes'16 aes'16 \tuplet 6/4 {g'16 a'16 bes'8 d''16 f''16~} f''4~ 
      | f''8 c''8 des''8 d''8~ \tuplet 6/4 {d''16 f''16 ges''16 f''16 des''8} c''8 bes'8~ 
      | \tuplet 6/4 {bes'16 aes'16 a'16 aes'16 g'8} \tuplet 3/2 {ges'4 bes'8} f'4 \tuplet 3/2 {d'8 es'8 f'8~} 
      | f'4. r8 r2 
      | r2 aes''8 bes''8 c'''8. es'''16~ 
      | es'''8 c'''4 es'''8 \tuplet 3/2 {d'''4 b''8~} b''8 des'''8~ 
      | des'''8 d'''8 b''8 des'''8 c'''8 b''8 a''8 g''8 
      | ges''4 c''8 ges''4.^\markup{\left-align \small vib} \tuplet 3/2 {ges''4 ges''8} 
      \bar "||" \tuplet 3/2 {f''4 aes'8} c''8 es''8 d''4 \tuplet 3/2 {des''4 aes''8~} 
      | aes''8 r8 r2. 
      | r16 c'''16 b''16 bes''16 a''16 aes''16 g''16 f''16~ \tuplet 6/4 {f''16 e''8 a'16 bes'16 d''16} des''16 a'16 c''8 
      | a'16 bes'8 bes'16~ \tuplet 6/4 {bes'16 a'16 aes'16 g'16 ges'8} \tuplet 5/4 {f'16 e'16 ges'16 bes'16 des''16~} des''4 
      | c''16 des''16 c''16 aes'16~ aes'16 bes'8 f'16 aes'16 bes'16 aes'16 f'16 \tuplet 3/2 {c'4 aes8~} 
      | aes16 es'8 c'16 des'16 e'16 f'16 aes'16 bes'4 bes'8 b'8~ 
      | b'4 aes'8 f'8 bes'4 r4 
      | r2 r8 a'8 bes'16 des''16 f''8 
      | \tuplet 3/2 {c'''4 b''8} \tuplet 3/2 {a''4 f''8} \tuplet 3/2 {des''4 b'8} aes''8 bes''8 
      | g''8 f''8 es''8 d''8 des''4 c''8 c''8~ 
      | c''4 bes'8 f'8 aes'16 bes'16 aes'16 f'16~ f'8 des''8 
      | \tuplet 3/2 {f''4 aes''8~} aes''8 r8 r2 
      | aes''4 aes''4 des'''4. bes''8~ 
      | bes''8 ges''8 es''4 aes''8 g''8 \tuplet 3/2 {ges''4 des''8} 
      | f''4 \tuplet 3/2 {c''4 des''8~^\markup{\left-align \small vib}} des''4 r4 
      | r2 aes''4 des'''8. f'''16~ 
      \bar "||" \mark \default f'''4. b''8 \tuplet 3/2 {es'''4 des'''8~} des'''4 
      | c'''16 des'''16 c'''16 b''16 bes''8 a''8 aes''8 g''8 \tuplet 3/2 {ges''4 f''8~} 
      | \tuplet 6/4 {f''16 e''16 f''16 e''16 d''8} c''8 b'8 a'16\glissando  bes'8 d'16 f'8 a'8 
      | aes'8 g'8 f'4 \tuplet 3/2 {e'8 g'8 bes'8} \tuplet 3/2 {des''8 c''8 bes'8} 
      | aes'8 bes'8~ \tuplet 3/2 {bes'8 f'8 ges'8} aes'4 r4 
      | r1 
      | \tuplet 5/4 {des''16 d''16 des''16 d''16 f''16~} f''16 des''16 f''16 f''16 \tuplet 6/4 {des''16 d''16 des''16 b'16 c''8} es''16 b'16 c''16 es''16 
      | c''16 bes'16 a'16 bes'16 d''16 a'16 bes'16 d''16 \tuplet 6/4 {bes'16 a'16 aes'16 g'8.} c''16 aes'16 a'16 c''16~ 
      | c''16 aes'16 bes'16 c''16 des''16 d''16 es''16 e''16 f''8 des''8 c''4 
      | es''16 f''16 es''16 des''16~ des''8 bes'8 c''16 des''16 c''16 b'16 bes'8 a'8 
      | aes'8 g'8 ges'8 bes'8 f'4 es'8 aes'8~ 
      | aes'4 r2. 
      | r8 aes''8 bes''4 c'''4 des'''8. es'''16~ 
      | es'''8 c'''4 ges''8 d'''8. b''16~ b''8 r8 
      | r4 r8 des'''16\bendAfter #+4  d'''16 des'''4 b''8 des'''8 
      | c'''8 bes''8 aes''8 g''8 ges''4 \tuplet 3/2 {des''4 f''8~} 
      \bar "||" f''4. ges''8 \tuplet 3/2 {f''4 aes'8} c''8 es''8 
      | d''8. c''16 \tuplet 3/2 {des''4 aes''8} r2 
      | r4 \tuplet 3/2 {g'8 d''8 g''8~} g''8 ges''8 d''8 f''8~ 
      | f''16 aes''16 b''16 des'''16~ \tuplet 3/2 {des'''8 c'''8 bes''8} aes''16 g''16 aes''16 bes''16~ bes''8 f''8 
      | aes''16 bes''16 aes''16 f''16 ges''8 e''8 \tuplet 3/2 {f''4 aes'8} c''8 es''8 
      | \tuplet 3/2 {d''4 c''8} des''8 b'8 c''16 d''16 c''16 b'16 bes'8 a'8 
      | aes'8 es'8 f'8 aes'8~ aes'16 f'16 aes'16 c''16 e''8 d''8~ 
      | d''16 es''8 c''16 aes'8 f'8 des''16 d''16 des''16 b'16 aes'8 f'8 
      | bes'8 aes'8 \tuplet 3/2 {g'8 aes'8 c''8} f''8 e''8~ \tuplet 3/2 {e''8 es''8 aes''8} 
      | \tuplet 3/2 {c'''4 a''8~} a''8 r8 r2 
      | r2. b''8\glissando  ges'''8~ 
      | ges'''2 des'''8 bes''8 aes''8 g''8 
      | ges''8 f''8 es''8 des''8 c''8 bes'8 \tuplet 6/4 {aes'16 bes'16 aes'16 g'8 ges'16~} 
      | ges'4 aes'8 ges'16 f'16 \tuplet 3/2 {es'4 f'8} ges'8 r8\bar  ".."
    }
    >>
>>    
}
