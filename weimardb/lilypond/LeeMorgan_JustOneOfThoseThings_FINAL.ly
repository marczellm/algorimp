\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Just One of Those Things"
  composer = "Lee Morgan"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key d \minor
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
      
      | d1:min7 | d1:min7 | e1:min7 | a1:7 | f1:7 | s1 | bes1:min5-7 | bes1:min6 
      | f1:/a | d1:min7 | g1:min7 | c1:7 | f1:maj | fis1:dim7 | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | d1:min7 | g1:min7 | c1:7 | f1:maj | fis1:dim7 | f1:min7 | bes1:7 
      | es1:maj | e1:dim7 | f1:min7 | bes1:7 | es1:maj | s1 | d1:min7 | g1:7 
      | c1:maj | a1:min7 | fis2:min5-7 f2:maj | f1:min7 | e1:min7 | fis1:dim7 | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | a1:min7 | d1:7 | g1:min7 | c1:7 | f1:maj | s1 | s1 | s1 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | d1:min7 | g1:min7 | c1:7 | f1:maj | fis1:dim7 | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | d1:min7 | g1:min7 | c1:7 | f1:maj | fis1:dim7 | f1:min7 | bes1:7 
      | es1:maj | e1:dim7 | f1:min7 | bes1:7 | es1:maj | s1 | d1:min7 | g1:7 
      | c1:maj | a1:min7 | fis2:min5-7 f2:maj | f1:min7 | e1:min7 | fis1:dim7 | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | a1:min7 | d1:7 | g1:min7 | c1:7 | f1:maj | s1 | s1 | s1 
      | d1:min7|
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


      \tempo 4 = 319
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 bes'4 a'8 ges'4 
      | des'4 a4 e'4 \tuplet 3/2 {cis'4 d'8~} 
      | d'4. e'8 f'8. g'16~ g'8. a'16~ 
      | a'4~ a'16 f'8 g'16~^\markup{\left-align \small vib} g'2~ 
      | g'8. f'16~ f'16 e'8 es'16~ es'16 g'8 es'16 d'4 
      | f'4~ f'16 a8 bes16~ \tuplet 3/2 {bes8 es'8 c'8~} \tuplet 3/2 {c'8 cis'8 d'8} 
      | r2 c'8 a8 bes8 c'8 
      | d'4 \tuplet 3/2 {g'4 e'8} f'8 des'8 b8 a16 aes16 
      | r1 
      | g'8 e'8 f'8 g'8 a'8 g'8 ges'8 a'8 
      | g'8 a'8 bes'8 c''8 cis''8 d''16 c''16~ c''8 b'8 
      | bes'8 a'8 g'8 f'8 e'8 des'8 \tuplet 3/2 {bes8 b8 c'8~} 
      | c'16 d'8 e'16 f'8 g'4 e'8 g'8 aes'8 
      | gis'8 a'8~ a'16 bes'8 bes'16~ bes'8 gis'8 a'8 bes'8 
      | bes'16 a'8 gis'16~ gis'8 a'8 bes'8 a'16 gis'16~ gis'8 a'8 
      | \tuplet 3/2 {bes'8 a'8 gis'8~} gis'8 a'8 \tuplet 3/2 {bes'8 a'8 gis'8~} gis'8 a'8 
      \bar "||" \tuplet 3/2 {bes'8 a'8 gis'8~} gis'8 a'8 \tuplet 3/2 {bes'8 a'8 gis'8~} gis'8 a'8 
      | \tuplet 3/2 {bes'8 a'8 gis'8~} gis'8 a'16 bes'16~ \tuplet 3/2 {bes'8 a'8 gis'8~} \tuplet 3/2 {gis'8 a'8 d''8~} 
      | d''8. b'16~ b'8 c''8 cis''8 r8 r4 
      | r4 r8. f''16~ \tuplet 3/2 {f''8 e''8 dis''8~} dis''8 g''8 
      | cis''8 bes'16 c''16~ c''8 bes'8 \tuplet 3/2 {g'8 gis'8 a'8~} a'8\bendAfter #-4  cis'8 
      | \tuplet 3/2 {d'8 es'8 f'8} es'4 ges'8.\bendAfter #-4  a16 bes8 es'8 
      | d'8 bes8 c'4. c'8 d'4 
      | f'4 g'8\glissando  aes'8 g'8 f'8 des'8 b8 
      | c'4 bes'8 gis'8 a'4 g'8 e'8 
      | ges'8 a'8 es'8 des'8 des'4 a'8 fis'8 
      | \tuplet 3/2 {g'8 a'8 bes'8~} bes'16 c''8 cis''16~ cis''16 d''8 es''16~ es''16 b'8 bes'16 
      | a'4 g'8 f'8 e'8 des'8 \tuplet 3/2 {bes8 b8 c'8} 
      | d'8 e'8 f'8 g'8 aes'4 fis'16 g'8 a'16~ 
      | a'8 f'8 r4 r8. bes16~ bes8 a8 
      | bes8 c'8 d'8 e'8 f'8 d'8 es'8 f'8~ 
      | f'16 ges'8 aes'16 c''8 b'8 bes'8 aes'16 f'16~ f'16 fis'8 g'16 
      \bar "||" bes'8 es'8~ es'8. es'16 f'8 g'8 \tuplet 3/2 {aes'4 bes'8~} 
      | bes'16 aes'8 g'16~ g'16 f'8 e'16 g'8 bes'8~ bes'16 des''8 c''16~ 
      | c''8 r8 r8. g''16~^\markup{\left-align \small vib} g''2~ 
      | g''8. f''16~ f''8 es''8 d''8 c''8 bes'16 bes'8 g'16~ 
      | g'8 aes'8 \tuplet 5/4 {es''8 des''16 b'16 bes'16~} bes'8 aes'8 \tuplet 3/2 {f'8 fis'8 g'8} 
      | r2. g'8 fis'8 
      | g'8 a'8 b'8. d''16~ d''8 b'8 \tuplet 3/2 {c''8 d''8 c''8} 
      | b'8 a'8 g'8 gis'8 a'8 f'16 e'16~ e'8 dis'8 
      | g'4 e'8 cis'8 e'4 r4 
      | r4 fis'4 cis''4 d''4 
      | dis''4 r4 r8. c''16~ c''16 cis''8 d''16~ 
      | \tuplet 3/2 {d''8 bes'8 g'8~} g'8. c''16 r4 r16 b'8 c''16~ 
      | c''4 g'8 gis'16 a'16~ \tuplet 3/2 {a'8 f'8 e'8~} e'8 d'8 
      | g'8 f'16 d'16~ d'16 dis'8 e'16~ e'8. b'16~ \tuplet 3/2 {b'8 a'8 b'8~} 
      | b'4 ges'4 es'8. c'16~ c'4 
      | a4 des'8 e'8 \tuplet 3/2 {a'8 e'8 c'8~} c'8 b8 
      \bar "||" fis'8 a'8~ a'4. g'8 a'4~ 
      | a'8 f'8~ f'8. des'16~ des'4 \tuplet 3/2 {a4 e'8~} 
      | e'8 a4. a4. r8 
      | r4 r8. cis''16~ cis''16 d''8 f''16~ f''16 e''8 es''16~ 
      | es''8 d''8 c''8 bes'8 a'8 g'8 f'8 e'8 
      | es'8 g'16 d'16~ d'8 c'8 \tuplet 3/2 {f'4 bes8} d'8 es'8 
      | \tuplet 3/2 {cis'4 d'8} dis'8 e'8 f'8 g'8 a'8 bes'8 
      | \tuplet 3/2 {c''4 a'8} bes'8 c''8 cis''16 d''8 e''16~ e''8 f''8 
      | \tuplet 3/2 {e''8 d''8 c''8~} c''16 cis''8 d''16~ d''16 bes'8 a'16~ a'16 gis'8 c''16~ 
      | c''8 bes'8 g'8 gis'8 a'8 g'16 fis'16~ fis'8 a'8 
      | \tuplet 3/2 {g'8 a'8 bes'8~} bes'8 c''8 cis''8 d''8 c''8 b'8 
      | bes'8 a'8 g'8 f'8 e'8 des'4 b8~ 
      | \tuplet 3/2 {b8 dis'8\glissando  e'8} f'8 g'8~ g'16 e'8 f'16~ f'8 g'8 
      | gis'8 a'8 d''8 des''8 c''8 d'16 f'16 bes'8 a'8~ 
      | \tuplet 3/2 {a'8 ges'8 e'8} gis'8 a'8 bes'8 a'16 aes'16~ aes'8 bes'8~ 
      | bes'16 a'16 gis'8 a'8 bes'8 a'8 gis'8 \tuplet 3/2 {a'4 cis''8} 
      \bar "||" \mark \default d''2~ d''8 r8 r4 
      | r4 r8 cis''8 d''2 
      | e''8 f''4. a'2^\markup{\left-align \small vib} 
      | r1 
      | r16 aes''16 bes''4. \tuplet 3/2 {a''4 g''8~} g''8 f''8 
      | e''8 es''8~ \tuplet 3/2 {es''8 d''8 c''8} bes'8 a'8~ a'16 g'16 e'8 
      | \tuplet 3/2 {cis'4 d'8} dis'8 e'8 f'16 g'8 a'16~ \tuplet 3/2 {a'8 bes'8 c''8~} 
      | c''8 a'8 r2 r8 ges''8 
      | a''1~^\markup{\left-align \small vib} 
      | a''2 \tuplet 3/2 {g''8 b''8 a''8} f''8 e''8~ 
      | e''16 d''16 c''16 d''16 c''8 b'8 bes'8 a'8 g'8 f'16 e'16~ 
      | e'8 des'8 bes8 b16 cis'16 d'8 e'8 f'8 g'8 
      | \tuplet 3/2 {e'4 f'8~} f'16 g'8 gis'16~ \tuplet 3/2 {gis'8 a'8 d''8~} \tuplet 3/2 {d''8 des''8 c''8~} 
      | \tuplet 3/2 {c''8 f'8 cis'8} f'8 bes'8 \tuplet 3/2 {g'8 gis'8 a'8~} \tuplet 3/2 {a'8 f'8 e'8} 
      | d'8 des'8~ des'16 e'8 g'16 bes'4 \tuplet 3/2 {g'8 gis'8 a'8~} 
      | a'8 f'8 des'8 a8\glissando  \tuplet 3/2 {bes4 dis'8} e'8 cis'8 
      \bar "||" d'8 e'8 \tuplet 3/2 {f'8 g'8 a'8~} a'16 f'8 a'16~ a'8. aes'16~ 
      | aes'8 f'8 aes'4 g'8 f'8 g'4 
      | d'8 f'8 g'8 a'8~ \tuplet 3/2 {a'8 f'8 a'8~} a'4 
      | gis'8 f'8 gis'8. f'16 g'8 f'8 g'4 
      | c'8. dis'16~ \tuplet 3/2 {dis'8 e'8 f'8} g'8 bes'8 g'8 gis'8 
      | a'8 bes'8 a'8 g'8 f'8. aes16 bes8 es'8 
      | d'8 bes8 c'8 gis16 a16 bes8 c'8 d'8 f'8~ 
      | f'8 g'8 aes'8 f'8 g'8 f'8 \tuplet 3/2 {des'4 c'8} 
      | r2 r8. bes'16~ bes'8 a'16 g'16~ 
      | g'4 ges'4 ges'4 a'8 fis'8 
      | g'8 a'8 bes'8 c''8 \tuplet 3/2 {cis''8 d''8 c''8~} c''16 b'8 bes'16~ 
      | bes'8 a'8 \tuplet 3/2 {g'8 f'8 e'8~} e'8 des'8 b8 c'8 
      | \tuplet 3/2 {des'8 dis'8 e'8~} e'16 f'8 g'16~ \tuplet 3/2 {g'8 e'8 f'8~} \tuplet 3/2 {f'8 g'8 a'8~} 
      | a'8 f'8 r2. 
      | r2 es''4 c''8 cis''8 
      | d''8 es''8~ es''16 b'8 bes'16~ \tuplet 3/2 {bes'8 aes'8 f'8~} f'8 fis'8 
      \bar "||" g'8 aes'16 g'16~ g'16 f'8 dis'16~ dis'8 e'8 f'8 g'8 
      | bes'8 des''8 bes'8 b'8 \tuplet 3/2 {c''8 aes'8 g'8~} \tuplet 3/2 {g'8 f'8 e'8~} 
      | e'8 c'8 g'8 e'8 f'8 g'8 \tuplet 3/2 {aes'8 bes'8 c''8~} 
      | c''8 aes'8 g'8 ges'8 des''8 b'8 bes'8 aes'8 
      | ges'8 aes'8 \tuplet 3/2 {c''4 b'8} bes'8 aes'16 f'16~ f'16 fis'8 g'16~ 
      | g'8 es'8 \tuplet 3/2 {c'8 c'8 f'8~} f'8. a'16~ a'8 g'8 
      | ges'4 ges'8 fis'8 \tuplet 3/2 {g'8 a'8 b'8~} b'8 d''8 
      | d''8 b'8 \tuplet 3/2 {c''8 d''8 c''8} \tuplet 3/2 {b'8 a'8 g'8~} \tuplet 3/2 {g'8 gis'8 a'8~} 
      | a'8 f'16 e'16~ e'8 dis'8 g'8 f'16 d'16~ d'16 dis'8 e'16~ 
      | e'4 e'4 e'4 fis'8 a'8~ 
      | a'8 e''8 d''8 dis''8~ dis''2 
      | aes'8 es'4 f'8 b'8 c''4. 
      | g'4. gis'8 a'8 f'8 \tuplet 3/2 {d'8 b8 g'8~} 
      | g'8 f'8 \tuplet 3/2 {d'8 dis'8 e'8~} e'8 r8 r4 
      | r2 a8 gis8 \tuplet 3/2 {a8 aes8 bes8~} 
      | bes16 a8 gis16~ \tuplet 3/2 {gis8 a8 bes8~} bes16 a8 gis16~ \tuplet 3/2 {gis8 a8 bes8~} 
      \bar "||" bes8 a8 gis8 a8 bes8 a16 gis16~ gis8 a16 bes16~ 
      | \tuplet 3/2 {bes8 a8 gis8~} gis8 a8 bes8 a8 gis8 a8 
      | f'8 e'8 \tuplet 3/2 {dis'8 e'8 f'8~} \tuplet 3/2 {f'8 e'8 dis'8~} \tuplet 3/2 {dis'8 e'8 f'8} 
      | e'8 dis'8 e'8 f'8~ f'16 e'16 dis'8 e'8 a'8 
      | bes'4 g'8 gis'8 a'4 f'8 fis'8 
      | g'8 es'8 c'8 b8 f'8. a16 bes8 es'8 
      | cis'8 d'8 dis'8 e'8 f'8 g'8 a'8 bes'8 
      | c''8 a'8 \tuplet 3/2 {bes'8 c''8 cis''8~} cis''16 d''8 c''16~ \tuplet 3/2 {c''8 bes'8 a'8~} 
      | a'8 r8 r2. 
      | \tuplet 3/2 {dis''8 f''4} e''8 d''16 c''16~ c''16 b'8 bes'16~ bes'16 a'8 g'16~ 
      | g'16 f'8 e'16~ e'16 des'8 bes16 c'8 des'4 e'8 
      | f'4 g'8 e'8 f'8 g'8 gis'8 a'16 d''16~ 
      | d''8 des''8 c''8 f'8 \tuplet 3/2 {des'8 f'8 bes'8} g'8 gis'8 
      | a'8 f'8 \tuplet 3/2 {e'8 c'8 f'8} g'8 f'8 \tuplet 3/2 {cis'8 d'8\glissando  e'8~} 
      | \tuplet 3/2 {e'8 cis'8 d'8~} d'8 des'8~ \tuplet 3/2 {des'8 es'8 f'8~} f'8 bes'8 
      | a'8 gis'8 a'8. es'16~ es'8 f'8 \tuplet 3/2 {dis'8 e'8 f'8~} 
      \bar "||" \mark \default f'8 des'4. des'4. des'8 
      | des'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
