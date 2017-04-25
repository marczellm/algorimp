\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Work"
  composer = "Joe Lovano"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \minor
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
      
      | cis1:7 | cis1:7 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | d2:min7 g2:7 | g1:13-.9+11+ | c1:7 | s1 | c1:min7 | s1 | e2:7 a4:7 aes4:7 | d1:7 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | d2:min7 g2:7 | g1:13-.9+11+ | c1:7 | s1 | c1:min7 | s1 | e2:7 a4:7 aes4:7 | d1:7 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | d2:min7 g2:7 | g1:13-.9+11+ | c1:7 | s1 | c1:min7 | s1 | e2:7 a4:7 aes4:7 | d1:7 
      | cis1:7 | s1 | fis1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | cis1:7|
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


      \tempo 4 = 209
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 es'8 f'8 gis'8 b'4 \tuplet 3/2 {es''4 f''8~} 
      | f''4. gis''4 bes''4.~ 
      | bes''4 fis''8. es''16 e''4 gis''4 
      | es''16 e''8. fis''4 cis''16 e''8.~ e''8 r8 
      | r2 g''8 f''8~ f''16 gis''8 f''16~ 
      | f''16 g''8 fis''16~ \tuplet 6/4 {fis''16 g''8. g''16 ges''16} f''8 e''8 es''8 ges''8 
      | e''8 c''8 a'8 fis'8~ fis'16 gis'8 a'16 d''8\bendAfter #-4  cis''8 
      | \tuplet 3/2 {e''4 c''8} gis'8 ges'8 f'4 gis'8 r8 
      \bar "||" r4 e'8. cis'16~ \tuplet 6/4 {cis'16 e'4 f'16~} f'8. cis'16 
      | e'4 f'4 r4 fis'8 gis'8 
      | bes'8 cis''8 bes'4 \tuplet 3/2 {b'8 c''4} bes'8 fis'8~ 
      | fis'4 r2. 
      | r8 a'8 \tuplet 3/2 {bes'8 des''8 e''8} \tuplet 3/2 {fis''4 g''8} e''4 
      | \tuplet 3/2 {f''4 e''8} es''4 g'16 d''8 c''16~ c''16 bes'8 gis'16 
      | a'4 \tuplet 3/2 {e''4 c''8~} c''16\glissando  g'16 gis'8 e'8 d'8~ 
      | d'8 d'8 aes4.\bendAfter #-4  g8 r4 
      \bar "||" r8. g'16~ g'8 fis'8 g'4. fis'8 
      | g'8. aes'16 bes'8 aes'8 g'4 r4 
      | r2 fis'8 g'8 bes'8 e''8~ 
      | e''16 c''8 bes'16~ bes'8 g'8 c'16 ges'8 e'16 f'8 e'8 
      | es'4. bes'8 d''8 f''8 e''8 d''8 
      | \tuplet 3/2 {es''4 f''8~} f''16 ges''8 a''16~ a''16\glissando  e''16 f''8 \tuplet 3/2 {es''4 e''8~} 
      | e''4 cis''4 es''8. cis''16~ cis''16 aes'8 ges'16 
      | f'4 c''2 gis'4 
      \bar "||" cis''4 r2 \tuplet 3/2 {es''8 f''4~} 
      | f''4 cis''4 b'4 cis''4~ 
      | cis''8 r8 r4 \tuplet 3/2 {fis'4 b'8} bes'8. fis'16~ 
      | fis'16 a'16\glissando  b'8 \tuplet 3/2 {bes'4 fis'8~} fis'8 r8 r4 
      | r8 a8~ a16 des'16 f'16 g'16~ g'8 fis'8 e'8 f'8~ 
      | f'4. es'8\bendAfter #-4  r2 
      | r8 a8 \tuplet 3/2 {e'8 fis'8 g'8} fis'8 b'8 gis'8 b'8 
      | c''4 b'8 e''8 f''8 b''8 gis''8 ges''8 
      \bar "||" \mark \default f''4 gis''4 cis'''4.. b''16~ 
      | b''8 cis'''8 \tuplet 3/2 {d'''8 es'''8 b''8} gis''4 fis''4\bendAfter #-4  
      | r2 \tuplet 3/2 {bes''4 des'''8} \tuplet 3/2 {c'''8 gis''8 bes''8~} 
      | bes''8 fis''4 gis''4 e''8 fis''8 aes''8 
      | g''4 \tuplet 3/2 {c''4 g''8} fis''8 e''8 f''8. cis''16 
      | es''4 r4 d''8 c''8 bes'8 aes'8 
      | g'8 ges'8 f'8 es'8 d'8 c'8 \tuplet 3/2 {b8 bes8 c'8~} 
      | c'8 e'16 fis'16~ \tuplet 3/2 {fis'8 a'8 f'8} aes'16 g'8 gis'16 a'8 b'8 
      \bar "||" e''8 cis''8 gis'8 f'8 \tuplet 3/2 {fis'4 bes'8} f'4~ 
      | f'4 fis'8 g'8 \tuplet 3/2 {gis'4 f'8} r4 
      | r8 fis'8~ fis'16 bes'16 b'16 e''16 es''16 bes'8. cis''8 e''8 
      | \tuplet 3/2 {fis''4 bes''8} \tuplet 3/2 {cis'''4 bes''8~} bes''4\bendAfter #-4  r4 
      | r8 a'8 bes'16 c''16 es''16 f''16 g''8 fis''16 g''16 ges''16 f''16 e''16 es''16 
      | \tuplet 3/2 {ges''8 f''8 es''8} d''16 c''16 bes'16 aes'16 g'16 f'16 es'16 d'16\bendAfter #-4  c'8 r8 
      | r2 r8 a8~ a16 c'16 e'16 fis'16 
      | \tuplet 3/2 {g'4 fis'8} e'8 d'8 b'4 aes'4 
      \bar "||" r2 \tuplet 3/2 {g'4 f'8} b'8 a'8 
      | \tuplet 3/2 {aes'8 bes'8 g'8~} g'16 aes'8 fis'16~ fis'16 g'8 ges'16 f'8. es'16~ 
      | es'16 e'8 f'16~ f'16 ges'8 bes'16 c''8 e''8~ \tuplet 6/4 {e''16 ges''4 bes'16} 
      | c''4~ c''16 e''16 f''8 fis''4 r4 
      | r8 g''8 aes''4 \tuplet 3/2 {es''4 aes''8~} aes''16 fis''16 g''16 e''16~ 
      | e''16 f''8 c''16~ \tuplet 3/2 {c''8 a'8 f'8} es'4 a8 aes8~ 
      | aes4~ aes16 b16 d'16 gis'16~ gis'16 cis'8 es'16~ es'16 ges'8 f'16 
      | \tuplet 3/2 {gis'8 e'4~} e'4 \tuplet 3/2 {fis'4 e''8~} e''8 r8 
      \bar "||" r4 \tuplet 3/2 {f''4 cis''8~} cis''4. gis''8~ 
      | gis''16 b''8 cis'''16~ cis'''4. b''8 f''8 b''8 
      | bes''8 fis''8 e''8 gis''8 fis''8 cis''8 bes'8 fis'8 
      | cis''16 d''16 e''8 fis''4.\bendAfter #-4  r8 r4 
      | r8 a16 bes16 \tuplet 6/4 {cis'16 d'16 ges'16 f'16 bes16 b16} \tuplet 6/4 {d'8 e'8 bes16 b16} es'16 fis'16 e'16 d'16 
      | es'4\bendAfter #-4  \tuplet 3/2 {d''8 g'8 bes'8} b'16 c''16 cis''16 d''16 es''16 cis''16 d''16 ges''16 
      | \tuplet 3/2 {aes''8 ges''8 f''8} es''16 d''16 e''16 fis''16 \tuplet 6/4 {g''16 a''16 d'''16 c'''16 b''8} \tuplet 6/4 {a''16 g''16 fis''16 g''16 gis''8} 
      | fis''16 e''16 d''16 c''16 \tuplet 6/4 {bes'16 a'16 f'8 e'16 d'16} c'16 a16 gis4 r8 
      \bar "||" \mark \default r4 b''8 cis'''8 es'''8. d'''16 \tuplet 3/2 {e'''8 es'''8 b''8} 
      | \tuplet 3/2 {cis'''8 e'''8 cis'''8} b''8 gis''8 b''8 gis''8 fis''8 gis''8 
      | bes''8 fis''8 e''8 gis''8 fis''8 cis''8 d''8 fis''8 
      | e''8 cis''8 bes'4 \tuplet 3/2 {gis'4 cis''8~} cis''8 g'8 
      | c''8 des''8 \tuplet 3/2 {bes'4 ges'8~} ges'16 f'8 e'16~ \tuplet 3/2 {e'8 es'8 g'8} 
      | d'4 es'4 \tuplet 3/2 {d''4 es''8~} es''8 r8 
      | r4 r8 gis'8 a'8 c''8 \tuplet 3/2 {d''8 e''8 g''8} 
      | b''8. gis''16~ gis''4 r2 
      \bar "||" r8 a8 bes16 c'16 cis'16 f'16 e'16 cis'8 es'16 f'4 
      | bes'8 cis''8 \tuplet 3/2 {es''4 f''8~} \tuplet 3/2 {f''8 fis''8 gis''8~} gis''16 bes''8 ges''16~ 
      | \tuplet 3/2 {ges''8 f''8 es''8} e''4. es''8 \tuplet 3/2 {e''4 es''8} 
      | e''4 es''8 cis''4 r8 r4 
      | r8 cis''8 d''16 e''16 fis''16 g''16 \tuplet 3/2 {e''4 f''8} fis''8 gis''8 
      | \tuplet 5/4 {bes''8. b''16 cis'''16~} \tuplet 3/2 {cis'''8 d'''8 bes''8} g''4 a''8. d'''16~ 
      | d'''16 b''8 gis''16 e''4 gis''8 f''8 c''4 
      | c''4 cis''4 d''8 r8 r4 
      \bar "||" r8 f''8 \tuplet 3/2 {e''4 c''8} g''4 e''16 f''8 g''16 
      | aes''8 bes''8 b''8 c'''8~ c'''16 cis'''16 d'''8 b''4 
      | g''16 aes''8. c'''4 bes''8. ges''16~ ges''16 e''8 c''16~ 
      | c''16 ges''8 e''16~ e''16 c''8 bes'16~ bes'16 ges'8 e'16~ e'8 c'8 
      | \tuplet 3/2 {b8 bes4~} bes8 r8 r4 r8 f'8 
      | \tuplet 3/2 {ges'4 f'8} es'8. c'16 ges'4 r4 
      | r8 gis8 d'8 ges'8 f'8 a8 d'4 
      | e'4. r8 r4 \tuplet 6/4 {a8. c'16 cis'16 d'16} 
      \bar "||" \tuplet 6/4 {es'16 f'16 ges'8 f'16 es'16~} \tuplet 3/2 {es'8 b8 es'8} \tuplet 5/4 {fis'16 bes'16 ges'16 f'16 gis'16} es''16 d''16 g'16 gis'16 
      | bes'16 cis''16 es''16 f''16 bes''16 gis''8. r2 
      | r8 bes8 \tuplet 3/2 {d'8 ges'8 f'8} \tuplet 6/4 {ges'16 f'8. bes16 b16} es'8. e'16~ 
      | e'4 r2 \tuplet 3/2 {a8 bes8 e'8} 
      | fis'8. g'16~ g'4 ges'4~ \tuplet 6/4 {ges'4~ ges'16 e'16~} 
      | e'8. f'16~ f'4 es'4 r4 
      | r8 a8 es'8 fis'8 \tuplet 3/2 {g'4 fis'8} \tuplet 3/2 {b'4 gis'8~} 
      | gis'4. fis'8 d'8 gis4. 
      \bar "||" \mark \default bes4. r8 r2\bar  ".."
    }
    >>
>>    
}
