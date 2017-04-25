\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Gingerbread Boy"
  composer = "Herbie Hancock"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key c \major
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
      
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7|
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


      \tempo 4 = 286
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r1 
      | r1 
      | r1 
      | r2 des'4 g'8 des'8~ 
      | des'8 r8 r4 r8 des'8 bes8 des'8 
      | r1 
      | r8 g'8 ges'8 f'8 \tuplet 3/2 {e'8 es'8 des'8~} \tuplet 3/2 {des'8 c'8 bes8~} 
      | bes8 aes8 r2. 
      | aes4 \tuplet 3/2 {g4 e8} f8 ges8 f8 ges8 
      | r2. \tuplet 3/2 {ges4 e8} 
      | f8 es8 d8 es8~ \tuplet 3/2 {es8 g8 bes8} d'8 g8 
      | r4 r8. c'16~ c'4. bes8 
      | g8 aes8 bes8 c'8 d'8 es'8 f'8 g'8 
      | aes'8 bes'8 r2. 
      | r2 f'8 g'4 f'8 
      \bar "||" \mark \default c'8 c'8 r2. 
      | r1 
      | d'8 es'8 d'8 des'4 b8 a8 g8~ 
      | \tuplet 3/2 {g8 bes8 g8} aes8 bes8 r2 
      | r2. r8 fis8 
      | g8 a8~ a16 bes8 c'16~ c'8 des'8 c'4~ 
      | \tuplet 3/2 {c'8 bes8 c'8} des'8 dis'8 e'8 fis'4 g'16 a'16~ 
      | \tuplet 3/2 {a'8 bes'8 c''8} des''8 bes'8 \tuplet 3/2 {c''4 ais'8} b'8 a'8~ 
      | \tuplet 3/2 {a'8 aes'8 ges'8~} ges'16 f'8 es'16~ \tuplet 3/2 {es'8 c'8 cis'8} d'8 des'8~ 
      | des'8 b8 bes8 aes8 g8 ges8 f8 e8 
      | es8 c8 des8 dis8 e8 ges8 f8 ges8 
      | \tuplet 3/2 {gis4 a8} b8 a8 aes8 ges8 f8 dis8 
      | e8 ges8 aes8 c'8 ges8 r8 r4 
      | r2 ges4 \tuplet 3/2 {c'4 g8~} 
      | g8 des'8 aes4 \tuplet 3/2 {d'4 a8~} a8 es'8~ 
      | es'8 bes8 \tuplet 3/2 {e'4 a8~} a8 es'8 aes4 
      \bar "||" \mark \default r2 \tuplet 3/2 {d'4 des'8~} \tuplet 3/2 {des'8 c'8 b8} 
      | bes8 a8~ a16 aes8 c'16 g8 f8 bes8 r8 
      | r4 r8. g16~ g8 aes4 es'8 
      | g'4 fis'8 g'8 \tuplet 3/2 {ges'8 e'8 d'8} es'8 des'8~ 
      | des'8 bes8 a8 g8 c'4 \tuplet 3/2 {a8 bes8 c'8~} 
      | c'8 des'8 \tuplet 3/2 {dis'8 e'8 fis'8} g'8 a'8~ \tuplet 3/2 {a'8 bes'8 c''8~} 
      | c''16 des''8 bes'16 c''8 bes'8 a'8 g'8 ges'16 e'8 es'16 
      | r1 
      | r4 d'8 cis'8 d'8 es'8 c'8 f'8 
      | \tuplet 3/2 {fis'4 g'8~} g'16 aes'8 b'16 es''8 b'8 aes'4 
      | es''4. dis''4 e''4 des''8~ 
      | des''8 b'4 f''4 d''8 bes'4 
      | ges''4. r8 r2 
      | r2 f''8 ges''8~ ges''16 f''8 dis''16 
      | e''8 f''8~ \tuplet 3/2 {f''8 e''8 des''8} dis''4 e''16 es''8 c''16~ 
      | \tuplet 3/2 {c''8 d''8 es''8} d''8 b'8 cis''8 d''8 des''8 bes'8 
      \bar "||" \mark \default c''8 des''8 c''8 bes'8 a'8 aes'8 g'8 ges'8 
      | f'8 e'8 es'4 r2 
      | r2 \tuplet 3/2 {d'4 cis'8~} cis'16 d'8 e'16~ 
      | e'8 fis'8 g'16 a'8 ges'16~ \tuplet 3/2 {ges'8 d'8 b8} des'8 b8 
      | bes8 f'4. c'2 
      | c'4 bes8 c'4 des'4 bes8 
      | r2 c'8. a16 bes8 c'8 
      | cis'8 d'8 g'8 ges'8 f'8 e'8 es'8 des'8 
      | c'8 b8 a8 g8 \tuplet 3/2 {des'4 f8} a8 des'8~ 
      | \tuplet 3/2 {des'8 gis8 a8} des'8 e'8 a'8 e'8 des'8 a8 
      | aes'4. aes'8 es'8 aes'8 \tuplet 3/2 {es'4 c'8~} 
      | c'8 aes8 \tuplet 3/2 {ges'4 c'8~} c'16 aes8 e16~ \tuplet 3/2 {e8 es8 cis8} 
      | d8. aes16~ aes8 c'8 fis8 g8 bes8 a8 
      | aes8 r8 r4 aes8 f8 aes8 r8 
      | r4 c'8 aes8 c'8 r8 r8. es'16~ 
      | es'8 c'8 es'4 g'8 es'8 g'8 bes'8~ 
      \bar "||" \mark \default \tuplet 3/2 {bes'8 g'8 bes'8~} bes'4 g'8. es'16 g'8 r8 
      | r1 
      | r2 \tuplet 3/2 {bes'4 g'8} bes'4 
      | es''8. bes'16 es''4 bes'8 g'8 bes'8 r8 
      | r1 
      | aes'8 f'8 aes'8 des''4 aes'8 des''4 
      | r1 
      | ges'8. es'16~ \tuplet 3/2 {es'8 ges'8 es'8} f'8 e'8 es'8 r8 
      | r2 es'8 cis'8 d'8 des'8 
      | \tuplet 3/2 {c'8 b4} bes8 aes4 aes8 b4 
      | g'8 aes'8 g'8 ges'4 e'8 d'8 c'8 
      | \tuplet 3/2 {es'4 a8} des'8 es'8 f'8 ges'8 aes'8 b'8~ 
      | b'8 a'8 aes'16 ges'8 f'16~ f'8 es'8 d'4 
      | a'4 g'4 ges'8 e'8 es'8 des'8 
      | c'4 g'8 f'8 e'8 d'8 es'8 des'8 
      | c'8 bes8 a8 g8 a8 f16 fis16 g8 r8 
      \bar "||" \mark \default r1 
      | f4 f8 aes8 g4 g8 bes8 
      | aes4 aes8 c'8 bes4 bes8 d'8 
      | c'4 c'8 es'8 d'4 d'8 f'8 
      | des'4 des'8 f'8 es'4 es'8 g'8 
      | f'4 f'4 r4 r8 e'8~ 
      | e'8 e'4 g'8 f'4 f'8 aes'8 
      | g'4 g'8 bes'8 gis'4 r4 
      | r4 r8 a'4 a'4 c''8 
      | b'4 b'8 d''8 des''4 des''8 e''8~ 
      | e''8 es''8~ es''16 es''8 ges''16~ ges''8 f''8~ f''16 f''8 aes''16~ 
      | aes''8 ges''8 \tuplet 3/2 {ges''4 a''8~} a''8 b''4.~ 
      | b''4 a''8. aes''16~ aes''8 ges''8 f''8 es''8 
      | d''8 c''8 b'8 d''8 des''8 b'8 c''8 b'8 
      | c''8 d''8 es''8 f''8 \tuplet 3/2 {fis''8 g''8 bes''8~} bes''8 ges''8 
      | \tuplet 3/2 {f''8 es''8 d''8} des''16 c''8 bes'16~ bes'8 ges'8 f'8 d'8~ 
      \bar "||" \mark \default d'4 r4 f'4. d'8 
      | es'8 f'4 g'8 bes'4 r4 
      | r2 gis'8 a'8 g'8 ges'8 
      | f'8 e'8 es'8 des'4 b8~ b16 a8 g16 
      | bes8 g4 bes8 des'4 bes8 des'8 
      | \tuplet 3/2 {f'4 des'8~} des'8 f'8 aes'4. c''8~ 
      | c''8 c''4 bes'8~ \tuplet 3/2 {bes'8 aes'8 bes'8} aes'16 f'8. 
      | r1 
      | r8 ais8 b8 cis'8~ \tuplet 3/2 {cis'8 d'8 e'8~} \tuplet 3/2 {e'8 f'8 g'8} 
      | aes'8 f'8 d'4 b8 f'8 des'16 e'8 des'16~ 
      | des'8 des'4 e'8 \tuplet 3/2 {aes'8 c''8 a'8} bes'8 c''8~ 
      | c''16 des''8 es''16 aes''8 ges''8 des''8 a'8 aes'8 g'8 
      | ges'8 aes'8 f'8 es'8 c'8 cis'8 d'4 
      | r2 es'4.. c'16 
      | es'4 c'8 dis'4 r8 r4 
      | e'8 f'8 e'16 des'8. e'8 f'8 e'16 des'16 f'8~ 
      \bar "||" \mark \default f'4 r2. 
      | g'8 ges'8~ \tuplet 3/2 {ges'8 f'8 es'8} d'8 c'8 bes8 r8 
      | r2. g'8 ges'8 
      | f'8 es'8 \tuplet 3/2 {d'8 c'8 bes8~} bes8 r8 r4 
      | r1 
      | g'8 ges'8 f'16 es'8 d'16~ d'16 c'8 bes16 r4 
      | r1 
      | g'8 f'8 ges'8 f'4 es'8 d'8 r8 
      | r2. r8 g'8 
      | aes'8 fis'8 g'8 f'8 \tuplet 3/2 {ges'4 e'8} f'4~ 
      | f'8 dis'8 e'8 ges'4 a'8 ais'8 b'8 
      | des''8 bes'8 c''4 \tuplet 3/2 {bes'4 gis'8} a'8 r8 
      | r2 g'8 fis'8 g'8 aes'8~ 
      | aes'8 b'8~ \tuplet 3/2 {b'8 cis''8 d''8} es''8 c''8 d''8 c''8 
      | des''8 bes'8 \tuplet 3/2 {c''4 a'8} bes'8 gis'16 a'16~ a'8 aes'8 
      | \tuplet 3/2 {g'8 ges'4} f'8 e'8 \tuplet 3/2 {es'4 ges'8~} ges'8 r8 
      \bar "||" \mark \default r4 r8. f'16~ f'4 f'8 es'8 
      | es'4 f'4 f'8 des'4 des'8 
      | f'4 f'8 c'4 c'8 f'4 
      | \tuplet 3/2 {f'4 bes8~} bes8 ais8 b4 b8 aes'8~ 
      | aes'8 aes'8 g'4 g'8 des'4 des'8~ 
      | des'16 f'8 aes'16~ aes'16 c''8 a'16 bes'8 c''8 des''8 dis''8 
      | e''8 fis''8~ fis''16 g''16 a''8~ \tuplet 3/2 {a''8 bes''8 c'''8} des'''4 
      | c'''8 bes''8 \tuplet 3/2 {a''8 g''8 ges''8~} \tuplet 3/2 {ges''8 e''8 f''8~} f''8 r8 
      | r1 
      | r1 
      | c'''4 es'''8. d'''16 des'''16 c'''8 bes''16~ \tuplet 3/2 {bes''8 a''8 g''8} 
      | aes''8 f''8 ges''8 e''8 f''8 es''8 r4 
      | r2 des''8 f''4 f''8~ 
      | f''4 g''4 des''4 f''8. g''16~ 
      | g''4 r2. 
      | \tuplet 3/2 {d''4 es''8} d''8 bes'8 f'8 es'8 des'8 r8\bar  ".."
    }
    >>
>>    
}
