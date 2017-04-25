\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I'll Remember April"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \major
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
      | r1 
      | g1:maj | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | a1:min7 | d1:7 | b1:min5-7 | e1:9- | a1:min7 | d1:7 | g1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | c1:min7 | f1:7 | bes1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | s1 | e1:maj | s1 
      | g1:maj | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | a1:min7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | s1 | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | a1:min7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | c1:min7 | f1:7 | bes1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | s1 
      | g1:maj | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | a1:min7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj|
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


      \tempo 4 = 285
      \set Score.currentBarNumber = #0
     
      | fis'8 g'8 b'8 d''8 fis''8 g''8 fis''8 e''8 
      \bar "||" \mark \default d''8 b'8 \tuplet 3/2 {c''8 d''8 c''8} b'8 a'8 gis'8 fis'8 
      | g'8 e'8~ \tuplet 3/2 {e'8 b8 ais8~} ais16 d'8 ais16 \tuplet 3/2 {b4 g8} 
      | a8 g8 r2. 
      | r2 \tuplet 3/2 {r8 a'8 bes'8~} bes'8. a'16~ 
      | a'16 g'8 d'16 r4 r8 d'4 r8 
      | r2 dis'8 e'4 es'8~ 
      | es'8 fis'4 a'8 \tuplet 3/2 {fis'8 g'8 a'8~} \tuplet 3/2 {a'8 bes'8 c''8} 
      | d''4 gis'8 a'8 c''8 bes'8 g'8 r8 
      | r2 r8 dis'8 e'8 g'8 
      | e'8 f'16 fis'16 a'4 c''8 r8 r4 
      | r2 \tuplet 3/2 {r8 f''8 e''8} \tuplet 3/2 {es''8 d''4} 
      | c''8 b'8 \tuplet 3/2 {a'8 gis'8 f'8} e'4 \tuplet 3/2 {d'8 cis'8 b8} 
      | c'4 d'16 dis'8 e'16 g'4 e'8 f'8 
      | fis'8 a'8~ \tuplet 3/2 {a'8 f''8 e''8} dis''4 c''8 cis''8 
      | \tuplet 3/2 {e''8 d''4} \tuplet 3/2 {b'8 c''8 d''8} c''16 b'8. \tuplet 3/2 {a'8 gis'4} 
      | \tuplet 3/2 {fis'8 g'4} a'8 b'8 c''16 d''8 e''16~ e''4 
      \bar "||" g''8 a''8 fis''16 g''8 e''16 f''4 d''8 es''8~ 
      | es''8 b'8 d''8 b'8 c''8 bes'8~ bes'16 a'8 g'16~ 
      | g'16 f'8 e'16~ e'16 es'16 f'16 es'16 d'8 c'8 b8 a8 
      | bes8 c'8 d'4 es'16 f'16 f'16 d'16 r4 
      | r8 c'8 \tuplet 3/2 {d'8 es'8 f'8~} f'8 g'8 \tuplet 3/2 {es'8 d'8 c'8} 
      | cis'4 d'8 a'8 g'8 f'16 e'16~ e'16 es'8 f'16~ 
      | f'8 d'8 bes8 r8 r2 
      | r2. d''4 
      | des''8 c''8 dis'8 e'4 b'8 a'8 g'8 
      | e'8 fis'4 f''8 \tuplet 3/2 {e''8 dis''4} r4 
      | r8. c''16 cis''8 e''8 \tuplet 3/2 {d''4 b'8~} b'16 c''8 ais'16~ 
      | ais'8 b'8 r4 d'8 e'8 fis'8 a'8 
      | g'8 fis'8~ fis'16 fis'8 e'16~ e'8 dis'8 r4 
      | \tuplet 3/2 {r8 c''8 d''8} \tuplet 3/2 {c''8 b'8 a'8~} a'16 g'8 fis'16~ fis'8 e'8 
      | dis'8 fis'8 \tuplet 3/2 {dis'8 e'8 fis'8~} fis'8 gis'8 b'4 
      | \tuplet 3/2 {dis'8 e'4~} e'8 g'8 \tuplet 3/2 {e'8 fis'16 r8.} r4 
      \bar "||" r4 r8 d'8 \tuplet 3/2 {e'8 fis'4} g'16 a'8 fis'16~ 
      | fis'16 g'8 a'16~ a'16 b'8 c''16 d''8 e''8 fis''8 g''8~ 
      | g''16 a''8 fis''16 r2. 
      | r2 r8 g''16 gis''16 a''4~ 
      | a''2~ a''8 g''4 d''8 
      | \tuplet 3/2 {des''8 c''8 b'8~} \tuplet 3/2 {b'8 bes'8 a'8~} a'8 g'8 fis'8 a'8 
      | fis'16 g'8 d'16~ d'16 c'8 b16 bes4 fis16 a8 fis16 
      | g8 a8 \tuplet 3/2 {bes4 c'8~} \tuplet 3/2 {c'8 d'8 e'8~} e'16 a'8 aes'16~ 
      | aes'16 g'8 es'16~ es'4 d'4 c'4 
      | d'4. c'8 d'4. c'8~ 
      | c'16 d'8 b16~ b4 r2 
      | r2 b'8 c''8 gis'8 b'8 
      | a'4 a'4 a'4 a'4 
      | a'8 b'8 \tuplet 3/2 {c''4 d''8~} d''16 dis''16 f''8 es''16 d''8 c''16~ 
      | c''16 cis''8 d''16 r2. 
      | r2 \tuplet 3/2 {r8 cis''8 d''8~} d''4~ 
      \bar "||" \mark \default d''2~ d''8 cis''8 d''8 fis''16 e''16 
      | \tuplet 3/2 {e''4 cis''8} d''8 fis''8 e''8 cis''8 d''8 fis''8 
      | e''8 c''16 d''16~ d''8 fis''8 e''8 d''8 des''16 c''8 b'16~ 
      | b'16 bes'8 a'16 g'4 fis'16 a'8 fis'16~ \tuplet 3/2 {fis'8 g'8 a'8~} 
      | \tuplet 3/2 {a'8 bes'8 c''8} d''8 e''8 a''4 a''8 g''8~ 
      | g''8 g''8 e''4 e''4 d''8. d''16 
      | bes'4 bes'4 a'4 a'8 g'8~ 
      | g'8 g'8 e'4 e'8 d'4 d'8 
      | ais4 \tuplet 3/2 {bes8 a4} a4 c'8 r8 
      | r2 r16 dis'16 f'16 es'16~ es'8 d'8 
      | c'16 b8. r2 r8 a'8~ 
      | a'2 g'8 gis'8 b'8 d''8 
      | f''8 f''8 e''8 d''8 des''8 c''8 \tuplet 3/2 {d'8 e'4} 
      | g'8 b'8 \tuplet 3/2 {a'8 g'4} e'8 fis'8 a'8 c''8 
      | \tuplet 3/2 {d''8 f''8 e''8} \tuplet 3/2 {es''8 d''4} c''8 cis''16 e''16~ e''8 d''8 
      | c''16 b'8 a'16~ a'16 gis'8 f'16~ f'8 g'8 a'8 b'16 c''16~ 
      \bar "||" c''16 d''8 b'16 des''4 \tuplet 3/2 {b'8 c''8 bes'8~} bes'16 a'8 g'16 
      | \tuplet 3/2 {f'4 e'8} \tuplet 3/2 {es'4 f'8} d'8 c'8 \tuplet 3/2 {b4 a8} 
      | bes8 c'8~ c'16 d'8 f'16 cis'4 d'16 dis'8 e'16 
      | g'4 \tuplet 3/2 {e'8 f'8 es'8} d'8. c'16~ c'16 ais8 b16~ 
      | b8 f'8 \tuplet 3/2 {aes'8 f'8 fis'8~} fis'16 g'8 es'16~ es'16 c'8 bes16 
      | a8 c'8 \tuplet 3/2 {es'4 fis'8} dis'8 e'8 f'8 es'8 
      | d'8 c'8 \tuplet 3/2 {b4 a8} bes8 f8 r4 
      | r2 r8 d''8 des''8 c''8 
      | bes'16 a'8 g'16 \tuplet 3/2 {fis'4 a'8~} a'16 c''8 d''16~ d''16 f''16 e''8 
      | es''16 d''8 ais'16 fis'4 \tuplet 3/2 {dis'8 gis'4} fis'16 g'8 a'16~ 
      | \tuplet 3/2 {a'8 b'8 c''8} \tuplet 3/2 {d''4 e''8} fis''8 r8 r4 
      | r1 
      | r2 \tuplet 3/2 {r8 a''8 bes''8} a''16 g''16 f''8 
      | fis''8. e''16~ e''8 cis''8 \tuplet 3/2 {d''8 dis''8 c''8} b'8 a'8~ 
      | a'16 gis'16 a'16 gis'16 fis'4 dis'16 e'8 fis'16 g'8 a'8 
      | \tuplet 3/2 {gis'8 c''4} d'16 e'16 g'8 fis'8 e'8 \tuplet 3/2 {dis'4 cis'8} 
      \bar "||" \tuplet 3/2 {d'4 b'8~} \tuplet 6/4 {b'4 d'16 dis'16} e'4 c''4 
      | \tuplet 3/2 {f'8 fis'4} d''8 r8 r2 
      | r2 \tuplet 3/2 {r8 cis''8 d''8~} d''16 e''8 cis''16 
      | d''4 des''8 c''16 b'16~ \tuplet 3/2 {b'8 bes'8 a'8~} a'8 g'8 
      | fis'8 a'8 fis'16 g'8 d'16~ d'16 bes8 g16~ g8 c'8~ 
      | c'16 bes8 c'16~ c'8 d'8~ d'16 a'16 bes'16 a'16~ a'16 g'8 e'16 
      | \tuplet 3/2 {a'8 bes'8 a'8} \tuplet 3/2 {g'4 e'8~} \tuplet 3/2 {e'8 bes'8 a'8} g'8. e'16 
      | \tuplet 3/2 {a'8 bes'8 a'8} g'4 e'8 a'16 bes'16 a'16 g'8. 
      | e'16 a'16 bes'16 a'16 g'8 dis'4. ais8 c'8 
      | d'8 dis'8 \tuplet 3/2 {f'8 g'4} f'16 fis'8. r4 
      | r2 r8 d'8 \tuplet 3/2 {e'8 f'4} 
      | g'16 gis'8. ais'16 b'8 c''16 d''8 e''8 f''8 dis''8 
      | \tuplet 3/2 {e''4 a'8~} a'4 a'4 r4 
      | dis''4 gis'4.\bendAfter #+4  gis'4 r8 
      | r4 r16 d'8 e'16 \tuplet 3/2 {fis'4 g'8} a'8 fis'8 
      | g'8 a'8 b'8 c''8 \tuplet 3/2 {d''4 c''8} b'8 a'8 
      | g'8 g'8 r2.\bar  ".."
    }
    >>
>>    
}
