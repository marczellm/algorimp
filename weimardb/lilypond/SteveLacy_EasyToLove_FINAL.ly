\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Easy to Love"
  composer = "Steve Lacy"
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
      | s2 r2 | s1 | s1 | s1 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1:maj | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | d1:9 | g1:maj | b2:min7 e2:7 | a1:min7 | d1:7 | b1:min7 | s2 e2:9- 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1:maj | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | c2:min7 f2:7 | g1:maj | bes1:dim7 | a1:min7 | d1:7 | g1 | b2:min5-7 e2:9- 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1:maj | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | d1:9 | g1:maj | b2:min7 e2:7 | a1:min7 | d1:7 | b1:min7 | s2 e2:9- 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1 | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | c2:min7 f2:7 | g1:maj | bes1:dim7 | a1:min7 | d1:7 | g2 a2:min7 | a2:min7/d g2 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1:maj | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | d1:9 | g1:maj | b2:min7 e2:7 | a1:min7 | d1:7 | b1:min7 | s2 e2:9- 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1 | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | c2:min7 f2:7 | g1:maj | bes1:dim7 | a1:min7 | d1:7 | g1 | b2:min5-7 e2:9- 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1:maj | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | d1:9 | g1:maj | b2:min7 e2:7 | a1:min7 | d1:7 | b1:min7 | s2 e2:9- 
      | a1:min7 | d1:min7 | a1:min7 | d1:7 | g1 | c1:9 | b1:min7 | e1:9- 
      | a1:min7 | c2:min7 f2:7 | g1:maj | bes1:dim7 | a1:min7 | d1:7 | g1|
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


      \tempo 4 = 166
      \set Score.currentBarNumber = #-3
     
      \bar "||" \mark \default r2 r8. dis'16 e'4 
      | d''8 r8 r4 f'4. es'8 
      | d'4 e'16 fis'8 a'16~ a'8. fis'16~ fis'8 f'8~ 
      | f'8 e'4 f'4 e'4. 
      \bar "||" \mark \default c'2 \tuplet 3/2 {a'4 c''8~} c''4 
      | f'2^\markup{\left-align \small vib} d'4 a4~ 
      | \tuplet 6/4 {a16 c'4 c'16} r2. 
      | r8 c'8~ c'16 a'8 c''16~ c''8 d''8 ais'8 fis'8~ 
      | fis'4 \tuplet 3/2 {b'4 fis'8} d'4~ d'16 ais'8 fis'16~ 
      | fis'8 d'8~ d'16 a'8 fis'16~ fis'8 d'8~ d'16 b'8 fis'16~ 
      | fis'8 cis''8 \tuplet 3/2 {g'8 a'8 fis'8~} fis'8 d'8 ais'8 fis'8 
      | d'4 ais'8 f'8 d'4 \tuplet 3/2 {gis'4 f'8~} 
      | f'8 e'8 r2 \tuplet 3/2 {e'4 g'8~} 
      | \tuplet 6/4 {g'8 b'8. d''16~} d''8 ais'8~ ais'16 fis'8 d'16~^\markup{\left-align \small vib} d'4 
      | fis'8 r8 r2 \tuplet 3/2 {e'4 f'8~} 
      | f'16 g'8 b'16 ais'8 g'8 gis'8 ais'8 b'8 c''8 
      | d''8 b''8~ b''16 e''8 a''16~ a''16 g''8 e''16~ e''16 c''8 a'16~ 
      | a'16 g'8 e'16~ e'16 fis'8 a'16~ a'16 f''8 es''16~ es''16 d''8 c''16~ 
      | c''8 b'8 d'8. d'16 e'8 r8 r4 
      | r2 r8. ais'16 b'4~ 
      \bar "||" b'2~ b'8. c''16~ c''16 b'8 a'16~ 
      | a'8 b'8 b'8. a'16~ a'8 a'8~ a'16 f'8 e'16~^\markup{\left-align \small vib} 
      | e'4. a8~ a4~ \tuplet 5/4 {a8 c'16 e'16 g'16~} 
      | g'16 fis'8 a'16~ \tuplet 3/2 {a'8 c''8 f''8} dis''8 f''8 \tuplet 3/2 {dis''8 c''8 es''8~} 
      | es''16 d''8 b'16~ \tuplet 6/4 {b'16 fis'8 a'16 fis'16 d'16} fis'8 b'8~ \tuplet 5/4 {b'16 fis'16 a'16 fis'16 d'16} 
      | \tuplet 3/2 {fis'4 bes'8~} \tuplet 5/4 {bes'16 fis'16 bes'16 fis'16 d'16} fis'8 a'8~ \tuplet 6/4 {a'16 fis'16 a'16 fis'16 d'8} 
      | fis'8 b'8~ \tuplet 5/4 {b'16 fis'16 ais'16 fis'16 d'16~} d'16 fis'8 ais'16~ \tuplet 5/4 {ais'16 fis'16 gis'16 fis'16 d'16} 
      | \tuplet 3/2 {f'4 ais'8~} \tuplet 5/4 {ais'16 f'16 fis'16 f'16 d'16} f'8 gis'8~ \tuplet 6/4 {gis'16 f'16 gis'16 f'16 d'8} 
      | e'8 g'8 e'16 f'16 e'16 c'16 dis'8 f'8 dis'16 f'16 dis'16 c'16 
      | d'8 r8 r4 r8 g'8 a'8 c''8 
      | dis''8 a''8~ a''16 g''8 es''16 d''4 b'4 
      | r4 r8. f''16 e''16 d''8 des''16~ des''16 c''8 bes'16 
      | a'4 r4 c'2~ 
      | c'4~ c'16 e'16 g'16 b'16 \tuplet 3/2 {d''8 b'8 d''8} b'16 d''16 b'16 d''16 
      | b'8. g'16~ g'4 g'4^\markup{\left-align \small vib} r4 
      | r2. e''4~ 
      \bar "||" \mark \default e''1 
      | d''8. a'16~^\markup{\left-align \small vib} a'4 r2 
      | r4 d''16 f''8 a''16~ \tuplet 6/4 {a''8 e''8 f''16 e''16~} \tuplet 3/2 {e''8 c''8 a'8~} 
      | a'16 e'8 c'16 e'8 a'8 \tuplet 3/2 {fis'4 c'8} e'8 a'8~ 
      | a'16 fis'8 d'4. a'8 fis'16~ fis'8 c'16 e'16~ 
      | e'16 a'8 b16 e'8 a'8~ a'16 fis'8 d'16 c'4 
      | e'16 a'8 c'16~ c'16 e'16 fis'16 a'16 fis'8 r8 r4 
      | r8. d'16~ d'16 e'16 f'16 aes'16 g'8 f'8 e'16 f'16 e'16 d'16 
      | c'4~ c'16 e'8 g'16~ g'16 b'8 d''16~ d''16 b'8 d''16~ 
      | d''8 b'8 b'4 b'8. b'16~ \tuplet 5/4 {b'8 a'8 b'16~} 
      | \tuplet 6/4 {b'8 a'8. a'16} fis'8 d'8 fis'4^\markup{\left-align \small vib} r4 
      | r4 r8. dis'16 \tuplet 6/4 {e'8 g'8 f'16 e'16~} e'16 f'8 g'16~ 
      | g'8 gis'8 a'4~ a'16 c''8 a'16~ a'16 g'8 e'16 
      | c'4 \tuplet 3/2 {c'4 d'8~} d'16 e'8 g'16~ g'16 b'8 g'16~ 
      | g'8 fis'8 \tuplet 3/2 {d'4 d'8~^\markup{\left-align \small vib}} d'4 r4 
      | r2 r8. dis''16 e''16 f''16 g''16 b''16 
      \bar "||" g''2 \tuplet 3/2 {g''4 c''8~} c''4 
      | c''8 r8 r4 \tuplet 6/4 {r16 g'4 c'16~} c'4 
      | c'4.^\markup{\left-align \small vib} r8 r2 
      | r8. c''16~ c''16 dis''8 f''16 fis''4 dis'''8 cis'''8 
      | cis'''8 r8 r4 r16 b''8 fis''16~ fis''8 d''8 
      | bes''4 bes''4~ bes''16 a''8 fis''16~ fis''16 d''8 bes'16~ 
      | \tuplet 6/4 {bes'16 a'8 bes'16 a'16 fis'16~} fis'16 d'8 fis'16~ fis'16 a'8 ais'16~ ais'16 b'8 d''16 
      | e''8 f''8~ f''16 f''16 e''16 d''16 \tuplet 3/2 {c''4 b'8~} b'16 ais'8 g'16 
      | \tuplet 3/2 {a'4 g'8} c'4 e'4 c'4 
      | \tuplet 6/4 {es'4 f'16 es'16} c'8 d'8 es'8 f'8~ f'16 fis'16 g'16 es''16 
      | d''8 c''8 b'8 bes'8 a'8 g'8~ g'16 f'8 e'16~ 
      | e'16 es'8 d'16 cis'8 f'8 dis'16 f'16 dis'16 cis'16 \tuplet 3/2 {dis'4 f'8~} 
      | f'8 e'8 r2 a16 c'16 e'16 g'16~ 
      | g'8 fis'8 a'16 c''8 d''16~ d''16 dis''16 fis''16 dis''16 c''16 d''8 b'16~ 
      | b'8. f'16 fis'4 d'4 \tuplet 3/2 {d'4 fis'8} 
      | r2. e''4 
      \bar "||" \mark \default c''8 r8 r4 gis'16\glissando  a'8 e'16~ e'8 a'8~ 
      | a'8 d''8 d''8 r8 r4 e''4 
      | r2 \tuplet 5/4 {gis'16 a'16 b'16 a'16 e'16} \tuplet 3/2 {a'4 d''8~} 
      | d''4 ais'16 b'16 ais'16 fis'16 \tuplet 3/2 {ais'4 c''8~} c''4 
      | ais'16\glissando  b'8.~ b'4 \tuplet 6/4 {a'16 g'16 fis'4~} fis'4~ 
      | fis'16 bes'8 a'16 g'16 fis'8.~ fis'16 bes'8 a'16 g'16 fis'8.~ 
      | \tuplet 3/2 {fis'8 b'8 a'8} g'16 fis'8.~ \tuplet 5/4 {fis'16 b'8 a'16 g'16} fis'8. ais'16 
      | r2 r8 c''8~ c''16 d''8 f''16~ 
      | f''8 e''8 \tuplet 3/2 {dis''8\glissando  e''4} c''8. g'16~^\markup{\left-align \small vib} g'4 
      | r4 \tuplet 6/4 {r4 d''16\glissando  dis''16~} dis''2 
      | \tuplet 3/2 {c''8 dis''4~} dis''8 es''8 \tuplet 3/2 {d''4 fis'8~^\markup{\left-align \small vib}} fis'4 
      | r4 r8 d''4 d''8~ \tuplet 6/4 {d''4 e'16 f'16~} 
      | f'8 d''8 d''4 c''4 dis'4~^\markup{\left-align \small vib} 
      | dis'2~ dis'16 c'8 d'16 dis'8 f'8 
      | d'1~ 
      | d'2~ d'8 c'8 d'8 a'8 
      \bar "||" c''8 d''8 a''8 d''8 c''8 a'8 d'8 c'8 
      | d'8. fis'16~^\markup{\left-align \small vib} fis'4 r2 
      | \tuplet 6/4 {r4 r16 c''16~} c''16 d''16 f''16 a''16~ a''16 fis''8 ais''16~ ais''4~ 
      | ais''2~ \tuplet 5/4 {ais''16 fis''16 g''16 fis''16 d''16~} d''8 fis''8 
      | fis''8. fis''16~ fis''8 d''8 ais'8. ais'16~ ais'8 fis'8 
      | \tuplet 3/2 {d'4 d'8} bes2~ bes8 c''16 fis'16~ 
      | \tuplet 6/4 {fis'16 ais'16 d''8 ais'16 d''16~} d''16 ais'16 d''4 ais'8 fis'4~^\markup{\left-align \small vib} 
      | fis'8 f'8 r2. 
      | \tuplet 6/4 {r4 r16 g'16} gis'16 a'8 b'16~ b'16 c''8 d''16~ d''16 e''8 g''16~ 
      | g''16 es''8 g''16~ \tuplet 6/4 {g''16 a''4 g''16} a''16 g''8. es''8 r8 
      | r4 r8. cis''16\glissando  d''16 e''16 f''16 g''16~ g''16 fis''8 f''16~ 
      | f''16 e''8 es''16~ es''16 d''8 des''16~ des''16 c''8 b'16~ b'16 ais'8 g'16 
      | gis'8 a'8~^\markup{\left-align \small vib} a'4~ a'16 g'8 e'16 c'4~ 
      | c'2.~ \tuplet 5/4 {c'8\glissando  d'16 e'16 g'16} 
      | \tuplet 3/2 {fis'4 g'8~} g'4 \tuplet 3/2 {g'8 g'4~} g'4~ 
      | g'8 r8 r4 r8 c''8 e''8 a''8 
      \bar "||" \mark \default e''4 e''4 e''4 e''4 
      | f''2~ f''16 e''8 d''16~^\markup{\left-align \small vib} d''4 
      | e''8 r8 r4 a'2^\markup{\left-align \small vib} 
      | a'16 g'16 c''16 e''16~ e''16 g''8 fis''16 r2 
      | \tuplet 3/2 {fis''4 d''8~} d''4 fis'2~^\markup{\left-align \small vib} 
      | fis'16 d'8 fis'16~ fis'8 bes'8 bes'8 r8 r4 
      | f'16\glissando  fis'8 d'16~ d'8 d'8~ d'2~ 
      | d'8. f'16~ f'16 ais'8 ais'16~ ais'8 r8 r8 c'8 
      | \tuplet 3/2 {gis'8\glissando  a'4~} a'4. c''8 e''8 a''8~ 
      | a''8 g''4 b'8 fis'4..^\markup{\left-align \small vib} d'16~ 
      | \tuplet 6/4 {d'16 fis'8 a'16 fis'16 d'16} fis'8 b'8~ b'16 d''8 e''16~ e''16 f''8 e''16~ 
      | e''16 es''8 d''16 c''8 b'8~ \tuplet 6/4 {b'16 ais'4 g'16~} g'16 gis'8 f'16 
      | ais4 \tuplet 3/2 {g8 c'8 e'8~^\markup{\left-align \small vib}} e'4 g'8 r8 
      | r4 r16 e'8 g'16~ g'16 fis'8 es'16~ es'16 d'8 c'16 
      | b4 d'16 e'8 fis'16~^\markup{\left-align \small vib} fis'4 e'8 r8 
      | r4 r16 b8 d'16 \tuplet 3/2 {e'4 fis'8~^\markup{\left-align \small vib}} fis'4 
      \bar "||" e'2. d'8 r8 
      | r4 r8. a16~ a4 d'4~ 
      | d'2 \tuplet 3/2 {e'4 d'8~} d'8. ais16~ 
      | ais2 \tuplet 3/2 {d'4 e'8~^\markup{\left-align \small vib}} e'4~ 
      | e'8 fis'8 d'4 a'4 d'4 
      | fis'4 d'4~ \tuplet 6/4 {d'16 bes'4 d'16~^\markup{\left-align \small vib}} d'4 
      | fis'8 r8 r4 r16 d'8 e'16~ e'16 fis'8 a'16~ 
      | a'8 fis'8 \tuplet 3/2 {fis'4 a'8~} a'8 a'8 f'8 r8 
      | r2 r8 g'8 a'8 c''8 
      | es''8 g''8 c'''8 es'''8 c'''4~ c'''16 g''8 es''16~ 
      | es''8 d''8~ d''16 ais'16 b'16 fis'16~^\markup{\left-align \small vib} fis'4 r4 
      | r8 d'8 f'16 ais'16 f'16 d'16~ d'16 f'8 b'16~ b'16 d''8 f''16~ 
      | f''8 e''8 \tuplet 3/2 {fis'8\glissando  g'4~} g'8. c'16~ c'16 e'8 g'16~ 
      | g'8 fis'8 fis'4 a'4 a'4 
      | \tuplet 3/2 {a'4 g'8~^\markup{\left-align \small vib}} g'4 g'8 r8 r4\bar  ".."
    }
    >>
>>    
}
