\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I've Got You Under My Skin"
  composer = "David Liebman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key es \major
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
      | r1 | s1 | s1 | s1 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min7 | bes1:7 | es1:maj | c1:7 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min7 | bes1:7 | es1:maj | c1:7 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min5-7 | bes1:9- | es1:maj | s1 
      | d1:min7 | g1:7 | c1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 
      | f1:min7 | bes2:sus4 bes2:7 | es1:maj | c1:9- | f1:min7 | bes2:sus4 bes2:7 | es1:maj | g1:7 
      | c1:min7 | f2:min7 bes2:7 | es1:maj | c1:min7 | f1:min7 | bes1:7 | es1:maj | bes2:min7 es2:7 
      | aes1:maj | des1:7 | es1:maj | g2:min5-7 c2:9- | f1:min7 | bes1:7 | es1:maj | s1 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min7 | bes1:7 | es1:maj | c1:7 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min7 | bes1:7 | es1:maj | c1:7 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min5-7 | bes1:9- | es1:maj | s1 
      | d1:min7 | g1:7 | c1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 
      | f1:min7 | f2:min7/bes bes2:7 | es1:maj | c1:9- | f1:min7 | f2:min7/bes bes2:7 | es1:maj | g1:7 
      | c1:min7 | f2:min7 bes2:7 | es1:maj | c1:min7 | f1:min7 | bes1:7 | es1:maj | bes2:min7 es2:7 
      | aes1:maj | des1:7 | es1:maj | g2:min5-7 c2:9- | f1:min7 | bes1:7 | es1:maj | s1 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min7 | bes1:7 | es1:maj | c1:7 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min7 | bes1:7 | es1:maj | c1:7 
      | f1:min7 | bes1:7 | es1:maj | c1:7 | f1:min5-7 | bes1:9- | es1:maj | s1 
      | d1:min7 | g1:7 | c1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 
      | f1:min7 | f2:min7/bes bes2:7 | es1:maj | c1:9- | f1:min7 | f2:min7/bes bes2:7 | es1:maj | g2:7 s2 
      | c1:min7 | f2:min7 bes2:7 | es1:maj | c1:min7 | f1:min7 | bes1:7 | es1:maj | bes2:min7 es2:7 
      | aes1:maj | des1:7 | es1:maj | g2:min5-7 c2:9- | f1:min7 | bes1:7 | es1:maj|
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


      \tempo 4 = 256
      \set Score.currentBarNumber = #-3
     
      \bar "||" \mark \default g'4 g'2 r4 
      | r2 g'8 f'8 es'8. des'16~ 
      | des'2 es'2 
      | ges'4.. aes'16~ aes'4 bes'4 
      \bar "||" \mark \default c''8 r8 r4 bes'8 r8 r4 
      | r8. c'16 es'8 f'8 bes'4 aes'8. g'16~ 
      | g'8 r8 r2. 
      | r1 
      | r8 c'8 es'8 f'8 g'8 bes'8 c''8 es''16 g''16~ 
      | g''8 es''16 f''16~ f''8 c''16 es''16~ es''8 bes'8 g'16\glissando  aes'8 f'16 
      | es'8 f'8~ \tuplet 6/4 {f'16 g'8. es'16\glissando  f'16~^\markup{\left-align \small vib}} f'4 r4 
      | r1 
      | \tuplet 3/2 {r8 des'8 es'8} e'8 ges'8 aes'8 a'8 b'8 des''16 es''16~ 
      | es''8 ges''8 f''8 e''16 f''16 es''8 b'8 bes'8 aes'8 
      | g'8 es'4 a'8 d'8 r8 r4 
      | c'8 d'8 e'8 c'8 r4 \tuplet 3/2 {r8 bes8 aes8~} 
      | aes8 bes8 \tuplet 3/2 {c'8 es'8 g'8} bes'8 es'16 f'16~ f'16 g'8 aes'16~ 
      | \tuplet 3/2 {aes'8 bes'8 b'8~} b'16 des''8 bes'16~ \tuplet 3/2 {bes'8 aes'8 g'8~} g'16 f'8 es'16 
      | r4 r8. des''16~ \tuplet 3/2 {des''8 f''8 d''8~} d''8\glissando  es''8~^\markup{\left-align \small vib} 
      | es''4. c''16 e'16 g'8 e'8 d'8 es'8 
      \bar "||" ges'8 r8 r4 \tuplet 3/2 {des''4 a'8} \tuplet 3/2 {f'4 des'8} 
      | e'8 ges'8 aes'8 b'8 e''8 des''8 b'8 a'8 
      | bes'8 g'8 d'4. f'8~^\markup{\left-align \small vib} f'8. d'16 
      | es'8. des'16 r2. 
      | r2 a'16\glissando  b'16 r8 r4 
      | r4 r8. b'16~ b'8 bes'8 aes'8 g'8 
      | ges'8 a'8 des''8\glissando  e''8 ges''8. g'16~ g'8 bes'8~ 
      | bes'8 d''4 f''4 es''4 a'8~ 
      | a'8 r8 r2. 
      | r2 a''8 g''8 f''8 e''8 
      | es''8 f''8 \tuplet 3/2 {fis''4 cis''8} es''8 bes'8 \tuplet 3/2 {fis'4 es'8} 
      | e'8 g'8 a'8 d''8 c''8 d''8 e''8 g''8 
      | es''8 c''8 g'8 f'16 bes'16~ bes'8 g'8 aes'8 f''16\glissando  ges''16~ 
      | ges''4 d''8 b'8 bes'8 aes'8 g'8 f'8 
      | es'8 f'8 g'4 fis'8 g'8 a'4 
      | g'8 a'8 bes'4 e'8 f'4 c''8~ 
      \bar "||" c''8 g'8~ g'8. f'16~ f'8. g'16~ g'8.\glissando  b'16~ 
      | b'8 r8 r2. 
      | r2 \tuplet 3/2 {a''4 ges''8} f''8 e''8 
      | es''8 f''8 \tuplet 3/2 {g''4 es''8} f''8 es''8 b'8 a'8 
      | \tuplet 3/2 {bes'4 f'8~} f'8 bes'16 des''16 e''16 aes''8 ges''16 f''8 es''8 
      | e''8 g''8 es''8 e''8~ e''16 c''8 b'16 g'4 
      | \tuplet 3/2 {d'8\glissando  es'8 f'8~} \tuplet 3/2 {f'8 g'8 bes'8} \tuplet 3/2 {des''4 ges''8} \tuplet 3/2 {es''4 cis''8} 
      | d''4..^\markup{\left-align \small vib} a'16~ a'8 d'8 \tuplet 3/2 {c'4 bes8~} 
      \bar "||" bes4 bes8 c'8 d'4 es'8. f'16~ 
      | f'8. ges'16~ ges'8. aes'16~ aes'8. bes'16~ bes'8 c''8 
      | d''4 bes'4.^\markup{\left-align \small vib} r8 r4 
      | r1 
      | r2 \tuplet 3/2 {r8 c''8 es''8~} es''8 f''8 
      | \tuplet 3/2 {g''4 es''8} f''8 ges''8 d''8 b'8 \tuplet 3/2 {bes'4 aes'8~} 
      | aes'16 g'8 bes'16 d''8 f''8 es''8 f''8 g''4~ 
      | \tuplet 6/4 {g''8. c'''16 d'''16 e'''16~} e'''16 c'''8 b''16~ b''4. des''8 
      | c''8 r8 r4 r8 g''4 bes''8 
      | \tuplet 3/2 {des'''4 c'''8} b''8 bes''8~^\markup{\left-align \small vib} bes''4. g''8~ 
      | g''8 fis''8 g''8 bes''8 a''8 ges''8 des''8 b'16 es''16~ 
      | es''8 f''16 ges''16~ ges''8 des''8 \tuplet 3/2 {es''4 e''8~} e''16 des''8 c''16 
      | bes'8 aes'8~ aes'8. c'16~ c'8 g'4 f'8~ 
      | f'8 d''4 b'4 bes'4 aes'8~ 
      | aes'8 es'4 f'4.^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" \mark \default r1 
      | r4 r8. bes'16~ bes'8 aes'8 g'8 f'8 
      | es'4 d'8. b16~ b8. bes16~ bes8 r8 
      | r1 
      | r8 c'8~ \tuplet 5/4 {c'16 g'16 e'16 f'16 g'16} b'16 c''16 e''16 g''16 \tuplet 3/2 {e''8 f''8 ges''8} 
      | \tuplet 3/2 {d''8 b'8 a'8} \tuplet 3/2 {bes'8 aes'4} r4 r8. des'16~ 
      | des'8 es'16 f'16~ f'8 g'4. r4 
      | b8. c'16 des'8 es'4 r8 r4 
      | r4 r16 e'8 f'16 es'8 f'8 aes'8 b'8 
      | es''8 des''16 es''16~ es''8 cis''16 d''16~ d''8 b'8 \tuplet 3/2 {bes'4 aes'8} 
      | g'8 es''4 d''8 r2 
      | e'8 f'8 es'8 e'4 c''4 g'8~^\markup{\left-align \small vib} 
      | g'4 r2. 
      | r8 d''8 f''8 ges''8 d''8 b'8 bes'8 aes'8 
      | \tuplet 3/2 {g'4 bes'8} es''8 f''8 aes''8 f''8 des''8 b'16 e''16~ 
      | e''8 c''8 g'8 e'8 bes'8 des'8 es'8 ges'8 
      \bar "||" \tuplet 3/2 {f'8 es'8 e'8~} e'8 a'8 e''8 a''8 e''8 a''8 
      | f''8 es''8 bes'8 g'8 d''8 b'8 \tuplet 3/2 {d''4 b'8} 
      | \tuplet 3/2 {bes'4 b'8} d''8 f''8 g''8 bes''8 \tuplet 3/2 {f''4 d''8} 
      | es''8 a''8 des''8 f''8 c''8 b'8 \tuplet 3/2 {f'4 c'8} 
      | es'8 f'8 ges'8 aes'8 bes'8 es''16 f''16~ f''8 ges''16 aes''16~^\markup{\left-align \small vib} 
      | aes''4 \tuplet 3/2 {es''4 b'8~} b'8 bes'4 aes'8\glissando  
      | a'4 ges'8 d'8 r2 
      | r1 
      | r8 d''8 \tuplet 3/2 {e''8 g''8 a''8} \tuplet 6/4 {des''16 aes'16 des''8 c''16 es''16} \tuplet 6/4 {aes'8 c''8 d''16 aes''16~} 
      | \tuplet 3/2 {aes''8 f''8 fis''8} g''16 fis''16 e''16 d''16 \tuplet 3/2 {cis''8 b'8 g'8} \tuplet 3/2 {f'8 des'8 c'8} 
      | b4 es'16 fis'16 bes'16 es''16 f''16 g''16 bes''8 es''16 c''16 bes'8~ 
      | bes'8 b'16 c''16 e''8. g''16 b''16 g''16 bes''16 a''16 g''16 f''16 des''16 c''16 
      | g'8 r8 r4 aes''4. ges''8 
      | r4 r8. e''16~ e''8 d''8 b'4 
      | \tuplet 3/2 {bes'4 g'8} r2. 
      | r1 
      \bar "||" r8 g''8 f''8 g''8 aes''8 a''8 bes''8 g''8 
      | aes''8 bes''8 ges''8 d''8 b'8 a'8 bes'8 g'8 
      | aes'8 bes'8 b'8 des''16 es''16~ es''8 ges''8 f''8 es''8 
      | e''8 a''8 es''8 a''8 des''8 es''8 b'8 a'8 
      | bes'8 r8 r4 des''8 f''8 aes''8 fis''8 
      | g''4.^\markup{\left-align \small vib} f''8 e''8 aes'8~ aes'16 g'8 f'16 
      | bes'8 g'8 aes'8 g'8 es'8 ges'8 des'8 es'8 
      | d'8 r8 r4 r8 b8 cis'16 e'16 aes'16 g'16 
      \bar "||" f'8 r8 r4 es''8 r8 r4 
      | r8 f''8 e''8 es''8 d''8 b'8 \tuplet 3/2 {bes'4 aes'8} 
      | g'8 d''4 c''4 bes'4 c''8~ 
      | c''8 des''4 es''4 c'''8~ c'''16 b''16 bes''8~^\markup{\left-align \small vib} 
      | bes''4 r2. 
      | r8 g''8\glissando  aes''8 bes''8 b''8 b''8 bes''8 aes''8 
      | g''4 r2. 
      | r8 des''8 f''8 g''8 aes''8 g''8 f''8 es''8 
      | e''8 es''8~ es''8. bes''16~ bes''8 r8 r4 
      | es''8 f''8 g''8 aes''4 ges''8 f''8 d''8\glissando  
      | g''8 r8 r4 e''8 des''8 a'8 es'8 
      | bes'8 des'16 es'16~ \tuplet 3/2 {es'8 ges'8 f'8~} f'8 es'8 e'8 des'8 
      | c'8 bes8~ bes16 b16 es'16 g'16~ \tuplet 3/2 {g'8 e'8 f'8} \tuplet 3/2 {aes'8 a'8 c''8} 
      | e''16 g''16 e''16 f''16 ges''8 d''8~ d''16 bes'16 a'16 bes'16 aes'16 g'8 es'16~ 
      | es'4 f'8 des'4 r8 r4 
      | r2. r8 bes'8 
      \bar "||" \mark \default c''8 d''8 es''8 f''8 g''8 es''8~ es''16 b'8 g'16~ 
      | g'16 cis''8 d''16 es''8 e''8 f''8 d''8 b'8 a'8 
      | \tuplet 3/2 {bes'4 g'8} \tuplet 3/2 {a'8 b'8 d''8} ges''8 g'8 r4 
      | r16 c''8 d''16 es''8 d''8 e''8 r8 r4 
      | r8 a'8\glissando  bes'4 f''8 r8 r4 
      | es''4. cis''8 \tuplet 3/2 {d''4 b'8} \tuplet 3/2 {bes'4 aes'8} 
      | g'8 r8 r4 des''2 
      | f'4. es''8~ es''4. r8 
      | r8 des''4 es''8 \tuplet 3/2 {ges''4 des''8} es''8. d''16~^\markup{\left-align \small vib} 
      | d''4. b'8 bes'8 aes'8 g'8 f'8 
      | d'16 g'8 c'16~ c'8 r8 r2 
      | r1 
      | r8 c'16 f'16 bes'16 c''16 f''16 bes''16 \tuplet 3/2 {f''8 c''8 a'8} r4 
      | \tuplet 5/4 {r8 des'16 e'16 bes'16} \tuplet 3/2 {des''8 ges''8 b''8} \tuplet 3/2 {ges''8 des''8 bes'8} cis'4~ 
      | cis'16 d'16 g'8 \tuplet 3/2 {bes'4 des'8} g'16 aes'16 b'16 des''16 f''16 b''8. 
      | \tuplet 3/2 {b8 es'8 g'8} c''16 e''16 bes''8 c'8. es'16 b'8 r8 
      \bar "||" r1 
      | r8 aes''8~ aes''16 a''16 bes''16 b''16~ \tuplet 3/2 {b''8 c'''8 bes''8~} bes''8 r8 
      | r4 g''8 a''16 b''16~ b''8 r8 r4 
      | g''8 a''8 bes''8 c'''8 a''8 f''8 des''8 b'8 
      | es''8 f''8 \tuplet 3/2 {fis''4 g''8} bes''8 ges''8 des''8 b'16 es''16~ 
      | es''8 aes''8~ aes''8. f''16~ f''8 des''8 bes'8 g'16 e''16~ 
      | e''8 a''8 aes''16 des''16 e''8 \tuplet 3/2 {b'8 a'8 g'8} \tuplet 3/2 {d'4 g'8~} 
      | g'8 bes'8 d''8 f''4 g'8~ g'16 d'8 e'16~ 
      | e'8. a'16~ a'8 e''4 g''4 f''8~^\markup{\left-align \small vib} 
      | f''4. e''8 b'8 g'8 \tuplet 3/2 {e'4 es'8~^\markup{\left-align \small vib}} 
      | es'2 r2 
      | r2. r8 c'8 
      | es'8 f'8 \tuplet 3/2 {g'4 es'8} f'4^\markup{\left-align \small vib} r4 
      | r4 r8 c'4 des'8~ des'16\bendAfter #-4  c'8 bes16~ 
      | bes8 bes8 bes8 bes8 bes8 r8 r4 
      | r1 
      \bar "||" r8 b8 es'8 f'8 g'8 aes'8 bes'4 
      | b8. d'16~ d'8 f'4 aes'4 bes'8~ 
      | bes'8 es''4 ges''4 f''4 d''8~ 
      | d''8 b'4 g'4 aes'4 f'16 bes'16~ 
      | bes'8 f'8 ges'8 bes'8 des''8 f''8 \tuplet 3/2 {aes''4 f''8} 
      | g''8 f''8 d''8 b'8 r4 r8 bes'8 
      | r4 r8 ges''8~ \tuplet 3/2 {ges''8 des''8 es''8~} es''4 
      | d''8 r8 r8. a'16~ a'8 d'8 es'8 d''8 
      \bar "||" r4 r8. c''16~ c''8 r8 r8 es''8 
      | r4 r8 d''4 b'8~ \tuplet 3/2 {b'8 a'8 bes'8~} 
      | bes'16 bes'8 bes'16~ bes'8 bes'8 bes'8 r8 r4 
      | \tuplet 6/4 {r16 cis'16 d'8 e'16 fis'16~} \tuplet 6/4 {fis'16 g'16 bes'16 c''16 des''16 e''16~} e''16 ges''16 bes''16 c'''16 \tuplet 3/2 {bes''8 g''8 des''8} 
      | c''8 r8 r2. 
      | r8 aes''8~ aes''16 c'''8 bes''16~ bes''8 ges''8 \tuplet 3/2 {f''8 e''8 es''8~} 
      | es''16 f''8 g''16~ g''8 a''8 d''8 e''8 fis''8 g''8 
      | a''8 ges''16 des''16~ des''8 b'16 e''16~ \tuplet 3/2 {e''8 des''8 es''8~} es''8 des''8 
      | c''8 aes'8 \tuplet 3/2 {g'4 e'8} bes'8 g'8 aes'8 aes'8 
      | g'8 ges'8 f'8 e'8 es'8 ges'8 a'8 ges'8 
      | bes'8 fis'8 \tuplet 3/2 {g'8 bes'8 d''8} \tuplet 3/2 {f''8 des''8 a'8~} \tuplet 3/2 {a'8 f'8 bes'8~} 
      | bes'8 des'16 es'16~ es'8 ges'8 f'8 es'16 e'16~ e'8 des'16 c'16~ 
      | c'16 bes8 aes16~ aes8 c'8 g'8 e'16 f'16~ f'8 g'8 
      | aes'8 bes'16 c''16~ c''8 d''16 f''16~ \tuplet 3/2 {f''8 d''8 e''8} b'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r2.\bar  ".."
    }
    >>
>>    
}
