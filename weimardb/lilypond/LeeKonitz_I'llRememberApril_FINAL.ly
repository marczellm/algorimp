\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I'll Remember April"
  composer = "Lee Konitz"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | d1:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1 | g1:9- 
      | c1:min7 | f1:7 | bes1:maj | g1:min7 | c1:min7 | f1:7 | bes1:maj | bes1:6 
      | a1:min7 | d1:7 | g1:maj | g1:6 | fis1:min7 | b1:7 | e1:maj | a2:min7 d2:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1 | s1 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1 | g1:9- 
      | c1:min7 | f1:7 | bes1:maj | g1:min7 | c1:min7 | f1:7 | bes1:maj | bes1:6 
      | a1:min7 | d1:7 | g1:maj | g1:6 | fis1:min7 | b1:7 | e1:maj | a2:min7 d2:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1 | s1 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1 | g1:9- 
      | c1:min7 | f1:7 | bes1:maj | g1:min7 | c1:min7 | f1:7 | bes1:maj | bes1:6 
      | a1:min7 | d1:7 | g1:maj | g1:6 | fis1:min7 | b1:7 | e1:maj | a2:min7 d2:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7|
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


      \tempo 4 = 211
      \set Score.currentBarNumber = #0
     
      | r2. r8. e'16 
      \bar "||" \mark \default g'8 g'4 g'8 a'8 g'8 e'8 g'8~ 
      | g'4 r4 r8. e'16 g'8 ais'16 c''16 
      | d''4 r2. 
      | r8 g'8~ g'16 c''8 b'16~ b'16 a'8 ais'16~ ais'16 b'8 g'16~ 
      | g'4~ g'16 g'8 g'16~ \tuplet 3/2 {g'8 e'8 g'8} a'8 g'8~ 
      | g'8 e'8 r4 r8. des'16 es'8 cis'8 
      | \tuplet 3/2 {d'4 c'8~} c'16 a8 bes16 c'4 \tuplet 3/2 {bes8 a8 bes8~} 
      | bes16 a8 aes16~ \tuplet 3/2 {aes8 g8 gis8~} gis16 a8 c'16~ c'16 des'8 c'16~ 
      | \tuplet 5/4 {c'16 es'8. c'16} r2. 
      | r4 r8 a'8 ais'8 b'8 c''8 a'8~ 
      | a'16 f'8 d'16~ \tuplet 6/4 {d'16 g'4 a'16~} a'16 b'8 a'16 b'8 a'8 
      | b'8 a'8 b'8 a'8 gis'4 e'16 fis'8 gis'16~ 
      | gis'8 b'8 gis'16 a'8 b'16~ b'8 c''4 a'8 
      | e'4. c'8 dis'4 c'16 d'8 c'16~ 
      | c'8. ais16 \tuplet 3/2 {b4 d'8~} d'16 e'8 fis'16 \tuplet 3/2 {a'4 g'8} 
      | fis'8 g'8~ g'16 e'8 es'16 r4 r8 f'8 
      \bar "||" bes'4 r2. 
      | r2 r8 f'8 g'16 bes'8 d''16~ 
      | d''16 a'8 bes'16~ bes'16 c''8 bes'16~ bes'16 a'8 g'16~ g'16 f'8 es'16~ 
      | es'16 c'8 cis'16~ cis'16 d'8 dis'16 e'8 f'8~ f'16 g'8 f'16 
      | bes'4~ bes'16 a'16 bes'16 g'16~ g'16 es'8 c'16 bes'4~ 
      | bes'16 a'16 bes'16 fis'16 es'4 c'16 a'8 bes'16~ bes'16 c''8 bes'16~ 
      | bes'8 a'16 bes'16 g'8 fis'8~ fis'16 f'8 es'16~ es'16 c'8 cis'16 
      | d'8 cis'8 r4 \tuplet 3/2 {d'8 f'4} \tuplet 3/2 {d'8 bes4} 
      | e'4 g8 r8 r2 
      | r4 a8 ais16 c'16~ c'16 cis'16 dis'8 c'8 cis'16 d'16~ 
      | d'8 a4 c'8 \tuplet 3/2 {b8 a8 g8~} g16 fis8 g16~ 
      | g8 a8 g8 fis16 g16 r4 r16 e'8 d'16~ 
      | d'16 e'8 gis16~ gis8 r8 r2 
      | r4 a8 ais16 b16~ b8 c'8 b8 ais16 b16~ 
      | \tuplet 5/4 {b16 gis'8. fis'16~} fis'8 e'8 \tuplet 3/2 {d'8 dis'8 f'8~} f'16 g'8 ais'16~ 
      | ais'8 gis'8 a'16 c''8 dis''16 c''8 cis''8 d''8 c''8 
      \bar "||" a'8 ais'8 b'4 d'16 g'8 a'16~ a'16 b'8 c''16~ 
      | c''16 d''8 d''16~ \tuplet 6/4 {d''16 c''8. d''16 c''16} b'8 c''8 b'16 a'8 bes'16 
      | a'16 g'8 aes'16 g'16 e'8 g'16 a'8 g'8~ \tuplet 3/2 {g'8 e'8 d''8~} 
      | d''8 e''16 d''16 c''4~ \tuplet 6/4 {c''16 ais'8. c''16 bes'16} a'4~ 
      | \tuplet 6/4 {a'16 g'8. aes'16 g'16~} g'16 e'8 g'16 a'8 g'8~ g'16 fis'8 g'16 
      | \tuplet 3/2 {bes'4 cis''8~} cis''8 d''8 \tuplet 3/2 {a'4 bes'8~} bes'8 bes'8 
      | g'8 r8 r2. 
      | r1 
      | bes'8 c''8 es''8 c''8 des''8 bes'8 g'8 e'8 
      | gis'8 a'8 ais'8 b'8 c''8 a'8~ \tuplet 6/4 {a'16 fis'4 d'16~} 
      | \tuplet 6/4 {d'16 f'4 g'16} \tuplet 3/2 {a'4 f'8~} f'16 g'8 f'16~ f'16 e'8 f'16~ 
      | f'16 gis'8 a'16~ a'16 b'8 gis'16~ gis'8 b'16 gis'16~ gis'16 c''8 g'16~ 
      | g'16 e''8 c''16~ c''8 d''8 \tuplet 3/2 {c''8 a'4} b'16 c''8 a'16~ 
      | \tuplet 6/4 {a'4 bes'16 a'16~} a'16 fis'8 g'16 a'4.. fis'16 
      | g'4 a'16 b'8 d''16~ d''16 c''8 d''16 e''8 fis''8 
      | \tuplet 3/2 {g''4 e''8} \tuplet 3/2 {c''4 a'8~} \tuplet 6/4 {a'16 es''8. d''16 cis''16} \tuplet 3/2 {d''4 e''8~} 
      \bar "||" \mark \default \tuplet 6/4 {e''16 fis''8. f''16 e''16} \tuplet 3/2 {fis''4 e''8~} e''4 r4 
      | r1 
      | d''4 \tuplet 3/2 {g'8 d''4~} d''16 d''8 ais'16~ \tuplet 5/4 {ais'16 g'8. e'16~} 
      | e'16 a'8 c''16~ c''16 a'8 ais'16~ ais'16 b'8 g'16~ g'4 
      | \tuplet 3/2 {g'4 a'8} bes'8 g'4 r8 r4 
      | r4 r8 e'8 es'16 cis'8. d'16 es'8 d'16 
      | cis'8 d'8 \tuplet 3/2 {g'4 a'8} \tuplet 3/2 {bes'4 g'8} a'8 aes'8 
      | g'8 a'8~ a'16 bes'8 c''16~ c''16 des''8 bes'16 c''8 b'8~ 
      | b'16 bes'8 g'16~ g'16 es'8 c'16~ c'16 f'8 g'16 a'8 g'8~ 
      | g'16 f'8 dis'16 c'4 \tuplet 6/4 {cis'16 d'4 c'16~} \tuplet 3/2 {c'8 a8 ais8~} 
      | ais16 b8 a16~ a8. g16 gis4 f8 c8 
      | r2 \tuplet 6/4 {r8 es'16 d'8 g16~} g4 
      | d'16 f'8 e'16 \tuplet 3/2 {d'4 c'8~} c'8 r8 r4 
      | r4 r16 d'8 cis'16~ cis'16 e'8 g'16~ g'16 b'8 a'16 
      | g'4 a'8 g'8~ g'16 e'8 es'16 d'8 g'8 
      | fis'8 g'8 \tuplet 3/2 {a'4 g'8~} g'8. a'16 bes'8. d''16~ 
      \bar "||" d''4. d''8 bes'4 f'8. es'16~ 
      | es'4. r8 r4 d''8 a'8 
      | c''8 bes'8 a'8 bes'8 \tuplet 3/2 {g'4 a'8} bes'8 c''8 
      | \tuplet 3/2 {d''4 es''8} f''4 f''8. g''16~ \tuplet 6/4 {g''4 a''16 bes''16~} 
      | bes''8 f''4 r8 r2 
      | r2 r8 g''8 \tuplet 6/4 {fis''8 f''8. d''16~} 
      | d''16 es''8 d''16~ d''16 c''8 cis''16~ cis''16 d''8 bes'16~ bes'8 f'8~ 
      | f'16 a'8 c''16~ c''16 b'8 a'16~ a'16 bes'8 f'16~ f'8 d'8 
      | \tuplet 3/2 {bes8 g'4} a'16 b'8 c''16~ c''16 d''8 c''16~ c''16 a'8 ais'16 
      | b'8 g'8~ g'16 e'8 c'16~ c'16 ais'8 fis'16 a'8 g'8~ 
      | g'16 fis'8 g'16~ g'16 e'8 es'16 d'8 c'8~ c'16 a8 ais16 
      | b4.. b16~ b16 c'8 b16 a4 
      | g16 b8 a16 \tuplet 3/2 {b4 a8~} a8 r8 r4 
      | r2. r8 e'8 
      | fis'16 ais'8 fis'16~ \tuplet 3/2 {fis'8 dis'8 c'8~} c'16 a'8 f'16~ f'16 cis'8 ais16~ 
      | ais16 ais'8 fis'16~ fis'16 ais'8 fis'16~ fis'16 a'8 fis'16~ fis'4 
      \bar "||" \tuplet 3/2 {g'4 b'8~} b'8 r8 r2 
      | r2 \tuplet 3/2 {g'8 c''8 b'8} c''8 cis''8 
      | d''4 e''4. fis''4.~ 
      | fis''4 r4 e''16 d''8 fis'16 g'4 
      | e''4~ e''16 d''8 c''16~ c''8 r8 r4 
      | r4 cis'8 d'8~ d'16 c''8 bes'16~ bes'16 c''8 bes'16~ 
      | bes'16 a'8 bes'16 a'8 aes'8~ aes'16 g'8 a'16~ a'16 bes'8 c''16 
      | d''8 g''8~ g''16 d''8 c''16 bes'8 d''8 bes'8 a'8 
      | g'8 bes'8 g'8 f'8~ f'16 es'8 g'16~ \tuplet 3/2 {g'8 es'8 d'8~} 
      | d'16 cis'8 d'16 es'8 d'4 cis'8 \tuplet 3/2 {d'8 f'4} 
      | g'16 a'8 c''16~ c''16 a'8 g'16~ g'16 f'8 a'16~ \tuplet 5/4 {a'16 f'8. dis'16~} 
      | dis'16 cis'8 d'16~ d'8 dis'8 e'4 e'8 b8 
      | r2 r8. d'16 \tuplet 3/2 {c'8 b8 c'8} 
      | dis'16 g'16 b'8 \tuplet 6/4 {a'8 aes'8 g'16 a'16} c''16 dis''16 c''16 cis''16 d''8 a'8 
      | ais'16 b'16 g'8 r2. 
      | r8 b'8 c''8 cis''8~ cis''16 d''8 b'16 c''8 cis''8~ 
      \bar "||" \mark \default cis''16 d''8 d''16 dis''8 dis''8~ dis''16 e''8 e''16~ e''16 c''8 c''16 
      | a'8 a'8 ais'4. b'4. 
      | fis'4 \tuplet 3/2 {e'8 fis'4} e'4 a'4 
      | r2. g'8 fis'8 
      | g'16 a'8 g'16~ g'16 fis'8 g'16 \tuplet 3/2 {bes'4 d''8} e''8 g''8~ 
      | g''8. e''16 g''4~ \tuplet 3/2 {g''8 des''8 e''8} r4 
      | r1 
      | r4 r16 d''8 des''16~ des''16 c''8 bes'16 \tuplet 3/2 {g'4 e'8~} 
      | e'16 a'8 c''16~ c''16 b'8 a'16~ a'16 bes'8 g'16~ g'16 es'8 c'16~ 
      | c'8 gis'8 a'8 ais'8 b'8 c''4.~ 
      | c''8 f'8 \tuplet 3/2 {d'8 f'4~} f'8 a'8 f'8 d'16 a16~ 
      | a16 b8 gis16~ gis4 d'16 g'8. e'8 b8 
      | g16 d'8 c'16~ c'4 \tuplet 3/2 {e'8 g'8 b'8} a'4 
      | r2. \tuplet 3/2 {f'8 fis'8 a'8} 
      | \tuplet 3/2 {g'8 fis'8 g'8} \tuplet 3/2 {a'8 b'8 c''8} \tuplet 3/2 {b'8 ais'8 b'8} c''16 cis''16 d''16 g''16~ 
      | g''16 es''16 bes'16 g'16 a'8. aes'16 r2 
      \bar "||" r2 r8 g'8 ais'8 b'8 
      | c''8 es''8 c''8 cis''8 d''8 c''8 a'8 g'8 
      | f'4 f'4~ f'16 g'8 a'16 g'8 f'8 
      | es'8 d'8 des'4 \tuplet 3/2 {g'4 f'8} d'8 bes8 
      | c'8 d'8 c'8 d'4. r4 
      | r2. r8 d'8 
      | f'8 a'8 \tuplet 3/2 {g'8 fis'8 g'8~} g'16 bes'8 g'16~ \tuplet 3/2 {g'8 es'8 c'8} 
      | f'8 g'8 \tuplet 3/2 {f'8 d'8 f'8~} f'16 bes'8 f'16~ \tuplet 6/4 {f'16 g'8. bes'16 g'16} 
      | e'8 g'8 b'8. g'16~ \tuplet 6/4 {g'16 a'8. bes'16 a'16} \tuplet 3/2 {fis'4 a'8} 
      | \tuplet 3/2 {dis''4 cis''8} d''8 c''8~ \tuplet 6/4 {c''16 a'4 ais'16~} \tuplet 6/4 {ais'16 b'4 g'16~} 
      | g'16 d''16 c''8 cis''4 d''4 \tuplet 3/2 {e''4 fis''8~} 
      | fis''16 g''8 fis''16~ fis''16 e''8 es''16~ es''16 d''8 b'16 g'4 
      | a'8 b'8 a'8 b'4. r4 
      | r2 r8 dis''8~ dis''16 e''8 f''16~ 
      | f''16 fis''8 dis''16~ dis''16 b'8 gis'16 dis''8 cis''8 \tuplet 3/2 {dis''4 cis''8~} 
      | cis''16 d''8 c''16 \tuplet 3/2 {a'4 ais'8} b'8 fis'8 r4 
      \bar "||" r16 ais'8 fis'16 a'8 g'8 fis'8 g'8 e'8 es'8 
      | d'4 \tuplet 3/2 {fis'4 g'8} a'8 g'8~ g'16 fis'8 g'16 
      | ais'4 d''16 e''8 g''16~ g''8 a''8 g''8 e''8 
      | d''8 r8 r2 r16 ais8 e''16 
      | d''4 r2 r16 a'8 c''16 
      | bes'4~ bes'16 fis'8 a'16~ a'8 g'4 d'16 es'16~ 
      | es'8 g'4 e'8 a'4 e'16 fis'8 g'16 
      | a'8 g'8 \tuplet 3/2 {fis'4 e'8} \tuplet 3/2 {d'8 e'8 d'8} g'4 
      | a'4. f'16 des'16 bes8 r8 r4\bar  ".."
    }
    >>
>>    
}
