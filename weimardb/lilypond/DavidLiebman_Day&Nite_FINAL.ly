\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Day & Nite"
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
      | r1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | s4 es2.:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | es1:maj11+.9 | d1:/es | s1 
      | des1:min7/ges | s1 | bes1:min7/es | s1 | des1:min7/ges | s1 | bes1:min7/es | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | s4 es2.:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | des1:min7/ges | s1 | bes1:min7/es | s1 | des1:min7/ges | s1 | bes1:min7/es | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | des1:min7/ges | s1 | bes1:min7/es | s1 | des1:min7/ges | s1 | bes1:min7/es | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 | b1:maj11+.9 | bes1:13-.9- | es1:maj11+.9 | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:min7 | f1:min7 | e1:maj11+.9 | d1:/es | s1 
      | des1:min7/ges | s1 | bes1:min7/es | s1 | des1:min7/ges | s1 | bes1:min7/es | s1 
      | a1:min5-7 | aes1:min7 | g1:min7|
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


      \tempo 4 = 245
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8. f'16~ 
      \bar "||" \mark \default f'8 es'8 f'8 fis'8 r2 
      | r1 
      | \tuplet 3/2 {fis'4 g'8} fis'8 g'8 \tuplet 3/2 {bes'4 es'8} r4 
      | r1 
      | f'4 \tuplet 3/2 {f'4 cis'8} r2 
      | r1 
      | g'8 fis'8 \tuplet 3/2 {g'4 bes'8} c''4 \tuplet 3/2 {d''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 r2. 
      | r4 c''8 d''8 es''4.^\markup{\left-align \small vib} r8 
      | r8 es''8 des''8. bes'16~ bes'4 r4 
      | r8 a'8 \tuplet 3/2 {bes'4 c''8~} c''8 r8 r4 
      | r8. b'16 \tuplet 3/2 {a'4 aes'8~} aes'4 r4 
      | r1 
      | r1 
      | r1 
      | r4 \tuplet 3/2 {r8 d'8 es'8} f'8 fis'8 a'8 bes'8~ 
      \bar "||" bes'16 cis''8 d''16~ d''16 es''8 cis''16 \tuplet 3/2 {es''4 cis''8~} cis''16 bes'8 fis'16~^\markup{\left-align \small vib} 
      | fis'2 bes'4 bes'8. fis'16 
      | g'2^\markup{\left-align \small vib} bes'8 c''8 d''8 f''8 
      | es''8 f''8~ f''4~ f''16 bes''8 f''16~ f''8 d''8 
      | bes'16 es''8 f''16~ f''16 fis''8 cis''16~ cis''8. cis''16 \tuplet 3/2 {b'4 a'8} 
      | bes'4 \tuplet 3/2 {ges'8 f'8 e'8~} e'16 es'8 a'16 b4 
      | bes4. r8 r2 
      | r1 
      | r8. cis'16 \tuplet 3/2 {d'4 f'8} es'8 f'8~ f'16 g'8 bes'16 
      | c''8 d''8 es''4 d''16 f''8 e''16 f''16 es''8 cis''16 
      | d''8 bes'8 f'4 d'16 a'8 d'16 f'8 a'8 
      | aes'4 b'4 \tuplet 3/2 {a'4 aes'8} f'4 
      | a'16\glissando  bes'8 g'16 aes'8. aes'16 g'8 ges'8 f'8 e'8~ 
      | e'16 es'8 ges'16 aes'4 \tuplet 6/4 {bes'16 des''8. es''16 bes'16~} bes'8 ges'8~^\markup{\left-align \small vib} 
      | ges'4 r2. 
      | r1 
      \bar "||" r1 
      | r8. aes'16 bes'8 cis''8 es''8 ges''4.\bendAfter #+4  
      | f''4 g''4. f''8~ f''16 g''8 es''16~^\markup{\left-align \small vib} 
      | es''4. r8 r2 
      | r2 bes''8. b''16 bes''8 aes''8~ 
      | aes''4 aes'8 fis''8 \tuplet 3/2 {e''4 cis''8} b'8 a'8 
      | bes'8. fis'16~ \tuplet 3/2 {fis'8 g'8 bes'8} c''16 f''8 c''16~ c''8 bes'8 
      | es''8 des''8 g'4 \tuplet 3/2 {bes'4 g'8} \tuplet 3/2 {aes'4 aes'8} 
      | \tuplet 3/2 {g'4 ges'8} f'8 e'8 es'8 f'8~ f'16 g'16 g'8 
      | \tuplet 3/2 {bes'8 des''8 es''8} \tuplet 3/2 {f''4 es''8} b'4 \tuplet 3/2 {a'4 g'8~} 
      | g'4 r4 f'8 g'8 \tuplet 3/2 {a'4 g'8} 
      | b'8 f'8 cis'8 f'8 e'8 fis'8 aes'4 
      | e''8. des''16 \tuplet 3/2 {a'8\glissando  aes'8 ges'8} bes'16\glissando  b'4..~^\markup{\left-align \small vib} 
      | b'2 b'4 b'4 
      | a'2^\markup{\left-align \small vib} r2 
      | r1 
      \bar "||" \mark \default r8. bes16~ bes16 es'8 f'16~ f'16 fis'8 aes'16~ aes'16 bes'8 b'16 
      | des''8 es''8 f''8 fis''8 g''16\glissando  aes''8. bes''8. des'''16 
      | c'''4.. bes''16~^\markup{\left-align \small vib} bes''4. r8 
      | r1 
      | r4 es''4 aes''4 \tuplet 3/2 {cis'''4 bes''8~} 
      | bes''2..\glissando  a''8 
      | g''4 \tuplet 3/2 {g''4 bes''8} c'''8 bes''8 c'''8 bes''8~ 
      | bes''4. g''8 f''16 d''8 bes'16~ bes'16 g'8 f'16 
      | \tuplet 3/2 {es''4 f''8} g''8 ges''8~ ges''16 f''8 e''16 es''8 ges''8~ 
      | ges''16 cis''16 d''16 e''16 f''4 d''16 es''8. bes'8 ges'8 
      | es'16 a'8 f'16 \tuplet 3/2 {g'4 a'8} \tuplet 3/2 {c''4 a'8} f'8 es'8~ 
      | es'16 bes'8 cis'16 e'8 aes'8 r2 
      | bes'4 g'8 es'8 d'4 \tuplet 3/2 {es'4 f'8~} 
      | f'4 r2. 
      | r1 
      | r1 
      \bar "||" r8. cis'16 es'8 f'8 fis'8 aes'8 bes'8 b'8 
      | cis''8 es''16 f''16~ f''8 fis''8 g''8 ges''8 f''8 e''8 
      | es''8 ges''8 d''8 g''8 es''8 bes'8 g'8 es'8 
      | e'16 f'8. \tuplet 3/2 {c''4 bes'8~} bes'8 g'8 es'8 c'8 
      | es'16\glissando  f'8. fis'8 aes'4.^\markup{\left-align \small vib} r4 
      | r1 
      | r1 
      | r1 
      | r2 g''8. bes''16 c'''16 d'''8 d'''16 
      | r2 c'''8\glissando  des'''8 c'''8 bes''8~^\markup{\left-align \small vib} 
      | bes''4.. a''16~ a''8 bes''16 c'''16~ c'''8 c'''8\glissando  
      | des'''4. c'''8 b''16 bes''8. aes''8 g''8 
      | ges''8 f''8 \tuplet 3/2 {e''8 es''8 g''8~} \tuplet 3/2 {g''8 d''8 es''8~} es''16 f''8 d''16~ 
      | d''16 es''8 cis''16~ cis''16 bes'8 ges'16~ \tuplet 3/2 {ges'8 f'8 e'8} d'8 g'8 
      | d'8 es'8 \tuplet 3/2 {f'4 fis'8} \tuplet 3/2 {a'4 bes'8} \tuplet 3/2 {c''4 d''8} 
      | \tuplet 3/2 {es''4 f''8~} f''16 fis''8 a''16 bes''8 b''8 bes''4 
      \bar "||" aes''4 fis''8 e''8 es''4 cis''8 b'8 
      | bes'4 \tuplet 3/2 {aes'4 fis'8} e'4 \tuplet 3/2 {es'4 des'8} 
      | c'4 f'8 bes4.^\markup{\left-align \small vib} r4 
      | r1 
      | r8 bes8 es'8 fis'8 e'8 fis'8 aes'4 
      | es''8 cis''8 bes'8. fis'16 aes'4 \tuplet 3/2 {cis''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'2 r2 
      | \tuplet 3/2 {b'8 c''8 d''8} es''8 des''8 c''8 des''8 f''8. aes''16 
      | bes''4 bes''8 g''8 es''4 d''8 ges''8~ 
      | ges''4. es''8 \tuplet 3/2 {e''4 ges''8} des''8 e''8 
      | es''8 b'8 \tuplet 3/2 {ges'4 es'8} a'8 d''8 des''8 bes'8 
      | b'8 g'8 a'8 fis'16 e'16~ e'8 e'8 fis'8. aes'16~ 
      | aes'8 r8 r4 r8. aes'16~ aes'16 a'8 b'16~ 
      | b'8\glissando  a'8 r4 r8. b'16~ b'16 a'8 c''16~^\markup{\left-align \small vib} 
      | c''4 r2. 
      | r2 c''8. d''16~ d''8 es''8~ 
      \bar "||" \mark \default es''8 r8 r2. 
      | r2 aes'8. es''16~ es''8. es''16~ 
      | es''8\glissando  des''8 r2. 
      | r2 r8 c''16\glissando  des''16 es''8 ges''8 
      | es''4.^\markup{\left-align \small vib} r8 r2 
      | r2 r16 bes'8 es''16~ es''16 ges''8 es''16~ 
      | es''8 es''8 f''4 es''8 r8 r4 
      | r2 r8. bes'16~ bes'16 es''8 f''16~ 
      | f''16 g''8 ges''16 f''8 e''8 es''8 f''8 g''8 bes''8 
      | ges''4 f''8 e''8 es''8 des''8~ des''16 c''8 bes'16~ 
      | bes'16 a'8 c'16~ \tuplet 3/2 {c'8 d'8 e'8} g'8 e'8 f'8 g'8 
      | aes'8. a'16 b'8 aes'8 a'8 aes'8 g'8 ges'8 
      | f'4~^\markup{\left-align \small vib} f'16 es'8 g'16 d'8 des'8 c'4 
      | b2 r2 
      | r1 
      | r1 
      \bar "||" r4 \tuplet 3/2 {f'4 fis'8} \tuplet 3/2 {aes'4 bes'8} b'8 cis''8 
      | es''8 f''8 \tuplet 3/2 {ges''4 aes''8} \tuplet 3/2 {bes''4 c'''8~} c'''8 bes''8~^\markup{\left-align \small vib} 
      | bes''2 r2 
      | r1 
      | r4 es''8 f''8 fis''8 aes''8 \tuplet 3/2 {bes''4 c'''8} 
      | des'''4 c'''16 des'''8 c'''16~ c'''16 des'''8 c'''16~ c'''16 des'''8 c'''16~ 
      | c'''8 des'''8 c'''16 des'''8 c'''16 \tuplet 3/2 {des'''4 c'''8} \tuplet 3/2 {des'''4 c'''8} 
      | des'''8 c'''8 \tuplet 3/2 {des'''4 c'''8} \tuplet 3/2 {es'''4 des'''8} c'''16 bes''8. 
      | g''2~ g''8 f''8 es''8 ges''8~ 
      | ges''4.. bes''16~ bes''8\glissando  d'''8~ \tuplet 6/4 {d'''4 des'''16 c'''16} 
      | \tuplet 3/2 {bes''4 ges''8~} ges''16 d''8 c''16 \tuplet 3/2 {bes'4 g'8} a'8 f'8 
      | d'8 f'8 e'8 fis'8 aes'8 b'8 \tuplet 3/2 {es''4 des''8} 
      | c''8 ges'8 f'4 es'16 bes'8 g'16 aes'8 bes'16 aes'16 
      | g'8 ges'8 f'8 e'8 es'8 fis'8 d'8 f'8 
      | \tuplet 3/2 {d'8 es'8 a8~} a8. bes16~ bes8. c'16~ c'8. d'16~ 
      | d'4 es'8. f'16~ f'8. fis'16~ fis'8. aes'16 
      \bar "||" r1 
      | r2 \tuplet 6/4 {r16 aes'8. cis''16 d''16} e''8 f''8\glissando  
      | \tuplet 3/2 {fis''8 g''16 r8.} r2. 
      | r8 bes8 es'8 g'8 e'8 ges'8 \tuplet 3/2 {aes'4 bes'8} 
      | des''8 bes'8 fis'8. cis'16 es'8 r8 r4 
      | r2 c'8 es'8 fis'8 es'8 
      | g'8 ges'8~ ges'16 f'8 e'16 es'8 f'4 g'8 
      | bes'16 es''8 f''16~ f''16 g''8 es''16 \tuplet 3/2 {f''4 des''8} bes'4 
      | c''8 bes'8 \tuplet 3/2 {c''4 f''8~} f''16 g''8 f''16 es''4~ 
      | es''16 des''8 es''16 f''16 ges''8. e''4 d''4 
      | \tuplet 3/2 {ges''8\glissando  a''4} g''8 f''8~ f''16 e''8 f''16 g''8 a''8 
      | bes''4 a''8 aes''8~ \tuplet 6/4 {aes''16 fis''8. fis''16 aes''16~} aes''16 a''8 bes''16 
      | b''4~ b''16 bes''8 a''16~ a''16 aes''8 g''16~ g''16 a''8 b''16\glissando  
      | c'''4 b''8 bes''8 a''8 b''8 c'''4 
      | c'''8\glissando  des'''8 c'''8 b''8 bes''4 c'''8 r8 
      | r2 bes'8.\glissando  b''16 c'''4~ 
      \bar "||" \mark \default c'''8 des'''2..~^\markup{\left-align \small vib} 
      | des'''1~ 
      | des'''4 c'''8 bes''8~ bes''16 g''16 f''16 e''16 f''16 es''16 d''16 des''16 
      | bes'16 a'16 aes'16 ges'16~ ges'16 e'16 d'16 des'16 \tuplet 3/2 {c'8 b8 bes8} r4 
      | r1 
      | r1 
      | r1 
      | r1 
      | r2 a8. bes16~ bes8 r8 
      | r4 \tuplet 6/4 {r16 bes4 es'16~^\markup{\left-align \small vib}} es'2~ 
      | es'4 d'4 \tuplet 3/2 {a'4 d'8} f'8 a'8 
      | aes'8 r8 r4 es''8 cis''8 \tuplet 3/2 {a'4 f'8} 
      | bes'8 f'16 c'16~ c'8 bes8~^\markup{\left-align \small vib} bes4.. aes'16~ 
      | \tuplet 3/2 {aes'8 fis'8 d'8~} d'8 a8~^\markup{\left-align \small vib} a2 
      | es'4 \tuplet 3/2 {cis'4 d'8~^\markup{\left-align \small vib}} d'4 r4 
      | r2 d'8 es'8 \tuplet 3/2 {f'4 fis'8~} 
      \bar "||" fis'4 aes'8 bes'8 b'4 cis''8 es''8 
      | f''4 ges''8 aes''4 bes''4 aes''8 
      | g''4. d''8 c''8 bes'4.~^\markup{\left-align \small vib} 
      | bes'8 r8 r2. 
      | r2. bes'8 b'8 
      | des''8 es''4 f''8 es''4 des''8 b'8~ 
      | b'8 bes'8~^\markup{\left-align \small vib} bes'4. r8 r4 
      | r1 
      | g'8 r8 r4 g''8 r8 r4 
      | r8. es''16 r2 ges''8 r8 
      | r2 f''8 d''8 \tuplet 3/2 {a'4 f'8} 
      | \tuplet 3/2 {g'4 cis'8} e'8 b'4^\markup{\left-align \small vib} r8 r4 
      | bes'4 bes'4 bes'4 bes'4 
      | bes'4 bes'4 \tuplet 3/2 {bes'4 b'8~} b'16 cis''8 a'16~^\markup{\left-align \small vib} 
      | a'4 r2. 
      | r1 
      \bar "||" r4 cis'16 es'8 fis'16 e'8 fis'8 \tuplet 3/2 {aes'4 bes'8} 
      | cis''2 bes'8 aes'8 fis'8 es'8 
      | e'8\glissando  g'8 c''4 g'4 f'8 es'8~^\markup{\left-align \small vib} 
      | es'4 r2. 
      | r8 cis'8 es'8 fis'8 e'8 fis'8 aes'4 
      | e''8 cis''16 e''16~ e''4 e''4 cis''8. d''16~ 
      | d''8\glissando  es''4 des''8 c''8 des''8 f''8 aes''16 bes''16~ 
      | bes''4~ bes''16 aes''8 g''16~ \tuplet 3/2 {g''8 f''8 es''8~} \tuplet 3/2 {es''8 bes'8 c''8~} 
      | \tuplet 3/2 {c''8 d''8 es''8~} es''8 d''16 f''16~ f''8 e''16 es''16~ es''8 g''8 
      | des''8 f''8 es''8 des''8 bes'8 ges'8 f'8 es'8~ 
      | es'8 f'8 \tuplet 3/2 {a'4 f'8} g'4 b'4\bar  ".."
    }
    >>
>>    
}
