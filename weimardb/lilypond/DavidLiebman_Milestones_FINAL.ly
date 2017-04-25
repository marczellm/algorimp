\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Milestones"
  composer = "David Liebman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \major
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
      | f1:11+.95+ 
      | g1:min6/c | s1 | s1 | des1:11+.9 | g1:min6/c | s1 | s1 | c1:775+ 
      | a1:min7 | s1 | s1 | c1:775+ | s1 | s1 | s1 | a1:min7 
      | g1:min6/c | s1 | s1 | f1:11+.95+ | g1:min7 | s1 | s1 | f1:775+ 
      | g1:min7 | s1 | s1 | s1 | a1:min7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | a1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | g1:min7 | s1 | s1 | s1 | r1|
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


      \tempo 4 = 156
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. d'16 f'16 ges'16 a'16 bes'16 
      \bar "||" \mark \default c''4^\markup{\left-align \small vib} r4 r8 a'8 bes'8 c''8~ 
      | \tuplet 6/4 {c''4~ c''16 a'16~} a'4\glissando  aes'8 g'8~ \tuplet 3/2 {g'8 f'8 e'8} 
      | c'8. d'16~ d'8 e'8 e''4 a'8 e'8 
      | g'8 aes'8 bes'4.^\markup{\left-align \small vib} c'8 dis'16 e'8. 
      | c'8 d'8 e'8 c''8 \tuplet 3/2 {a'4 g''8~} g''8 f''8 
      | e''8. c''16~ c''8 d''8 \tuplet 3/2 {g'4 c''8~} c''16 a'8 f'16~ 
      | f'4~ f'16 e'16 f'16 g'16 a'4 \tuplet 3/2 {c'8 d'8 e'8} 
      | g'16 aes'16 g'16 f'16 des'4 r4 es'16 des'16 c'16 bes16~ 
      | bes4 c'8 d'8 e'4 f'8 g'8~ 
      | g'8 a'8 b'8 c''8~ c''16 d''32~ d''8 e''32~ e''8 g''8 
      | d''4.^\markup{\left-align \small vib} r8 r4 r8. gis''16~ 
      | gis''8 es''4.^\markup{\left-align \small vib} r4 r8 b''8 
      | ges''2^\markup{\left-align \small vib} r4 r8 c'''8\glissando  
      | d'''4 r2 aes'8. g'16 
      | ges''4 e''4 aes'4 ges'8 e'8 
      | f'8 a'8 gis'8 c''8 b'4 \tuplet 3/2 {gis'4 e'8} 
      | f'4 bes'4.^\markup{\left-align \small vib} g'4 es'8 
      | c'16 es'16\glissando  f'8 c''4^\markup{\left-align \small vib} r2 
      | r8. es''16~ es''16 g''16 f''16 c''16~ \tuplet 3/2 {c''8 es''8 bes'8} \tuplet 3/2 {f'8 es'8 c'8} 
      | cis'16 d'8 f'16 \tuplet 3/2 {ges'8 a'8 bes'8} \tuplet 3/2 {b'8 d''8 e''8\glissando } \tuplet 3/2 {d''8 es''8\glissando  f''8} 
      \bar "||" \mark \default e''16 d''16 c''16 bes'16 r4 bes'8. g'16~ g'16 g'8 a'16~ 
      | \tuplet 6/4 {a'16 bes'4 bes'16~} bes'8. bes'16 r4 bes'8 bes'8 
      | bes'16 b'16 des''16 es''16 f''16 es''16 des''16 b'16 bes'8.^\markup{\left-align \small vib} bes'16 r4 
      | r8 bes'8 bes'4 bes'16 b'16 des''16 es''16 \tuplet 6/4 {f''16 es''16 des''8 b'16 bes'16~^\markup{\left-align \small vib}} 
      | bes'8 r8 r4 r16 des'16 es'16 ges'16 e'16 ges'16 aes'16 b'16 
      | \tuplet 6/4 {des''16 e''16 f''8 e''16 f''16~} \tuplet 6/4 {f''16 e''16 es''8 des''16 bes'16~^\markup{\left-align \small vib}} bes'8 r8 r4 
      | \tuplet 3/2 {r8 bes'8 b'8} c''16 d''16 e''16 c''16 es''16 c''16 des''16 dis''16 e''4 
      | ges''16 c''16 f''16 ges''16 \tuplet 6/4 {aes''16 ges''8 f''16 des''16 e''16~} \tuplet 6/4 {e''16 des''16 es''8. d''16} \tuplet 3/2 {bes'8 ges'4} 
      | \tuplet 3/2 {fis'8\glissando  g'4~} g'8\glissando  fis'8 e'16 d'16 b8 r4 
      | r2 r8 b8 \tuplet 3/2 {e'8 a'8 b'8} 
      | c''8 e''16 a''16~ \tuplet 3/2 {a''8 b''8 f''8} \tuplet 3/2 {a''8 e''8 f''8} c''16 e''16 b'16 f'16~ 
      | f'16 e'16 gis'16 b'16 dis''8 gis''8 f''8 c''16 dis''16~ \tuplet 5/4 {dis''16 b'16 f'16 dis'16 fis'16\glissando } 
      | gis'16 bes'16 b'16 c''16 des''4 c''8. a'16~ a'8 gis'8 
      | a'8 gis'8 \tuplet 3/2 {c''4 des''8~} des''8 c''8 a'8 e''8 
      | fis''8. e''16~ e''8 a'8~ a'16 fis''16\glissando  aes''8 g''4^\markup{\left-align \small vib} 
      | e''16 b'16 aes'32 g'32 fis'32 e'32 dis'8 r8 r2 
      | r4 f'16 bes'16 c''8 es''4 f'8 r8 
      | r4 \tuplet 6/4 {r16 f'16 b'16 c''8.} \tuplet 3/2 {es''8 bes''4^\markup{\left-align \small vib}} f''8 r8 
      | r4 \tuplet 3/2 {f'8 bes'8 c''8} es''8 r8 r4 
      | r8 f'16 ges'16 \tuplet 6/4 {bes'16 b'16 d''8 f''16 ges''16~} ges''8 a''8 r4 
      \bar "||" \mark \default \tuplet 6/4 {r4 r16 f''16~} \tuplet 6/4 {f''16 g''16 a''8 f''16 bes''16~} \tuplet 6/4 {bes''16 f''16 a''8 f''16 a''16~} \tuplet 3/2 {a''8\glissando  d''8 e''8} 
      | \tuplet 6/4 {aes''16 d''16 f''8 a''16 aes''16~} \tuplet 6/4 {aes''16 ges''16 des''8 b'16 e''16~} e''16 f''16 g''16 ges''16 \tuplet 6/4 {f''16 e''8 es''16 d''16 cis''16} 
      | \tuplet 3/2 {d''8 e''8 cis''8} d''16 bes'16 f'16 d'16 a'16 des''16 c''16 bes'16 \tuplet 6/4 {a'8 ges'16 f'16 e'16 es'16} 
      | \tuplet 3/2 {d'8 des'8 ges'8} es'16 f'16 aes'16 bes'16 \tuplet 6/4 {c''16 es''16 fis''8 g''16 f''16} \tuplet 3/2 {e''8 es''8 des''8} 
      | c''16 a'16 f'16 c'16 \tuplet 5/4 {a'16 f'16 c'16 f'16 a'16} \tuplet 5/4 {aes'16 g'16 bes'16 b'16 des''16} es''16 ges''16 f''16 es''16 
      | d''16 bes'16 g'16 e''16~ e''16 c''16 aes'16 f'16 es''8 f'16 d'16 bes'4 
      | d''16 c''16 bes'16 g'16 a'16 ges'16 d'16 ges'16 d'4 \tuplet 6/4 {e'16 des'16 dis'16 e'8 es'16~} 
      | \tuplet 6/4 {es'16 f'16 g'8 bes'16 f'16} r4 \tuplet 6/4 {r8 c'8 es'16 f'16} aes8. bes16 
      | a8. c'16 d'8 e'8 \tuplet 6/4 {g'8. e'8 f'16~} \tuplet 6/4 {f'8 c''8. b'16~^\markup{\left-align \small vib}} 
      | b'4 \tuplet 6/4 {a'16 g'16 e'16 d'16 c'16 b16} r2 
      | r2 \tuplet 3/2 {r8 b'8 b'8} \tuplet 3/2 {b'8 b'8 b'8} 
      | \tuplet 3/2 {b'8 b'8 b'8} \tuplet 3/2 {b'8 b'8 b'8} \tuplet 3/2 {b'8 b'8 b'8} \tuplet 3/2 {b'8 b'8 b'8} 
      | \tuplet 3/2 {b'4 fis''8~} fis''16 b'8 e''16~ e''8 b'8 fis''8 b'8 
      | \tuplet 3/2 {fis''8 b'8 e''8} \tuplet 3/2 {fis''8 d''8 b'8} \tuplet 3/2 {fis'8 e'8 b'8} fis'16 d'8 b16~ 
      | \tuplet 3/2 {b8 b'8 e'8} fis'8 e''8 \tuplet 6/4 {b'8. fis''8 bes''16~^\markup{\left-align \small vib}} bes''8 r8 
      | r4 bes''16 a''16 a''16 f''16 d''16 f''16 a''16 g''16 \tuplet 3/2 {b''8 e'''8 c'''8} 
      | es'''8. c'''16\glissando  e'''8.\glissando  c'''16~^\markup{\left-align \small vib} \tuplet 6/4 {c'''4~ c'''16 bes''16~^\markup{\left-align \small vib}} \tuplet 6/4 {bes''4~ bes''16 f''16~^\markup{\left-align \small vib}} 
      | \tuplet 6/4 {f''4~ f''16 c''16} es''4 bes'8. bes'16 \tuplet 6/4 {es'16 bes'16 es'16 f'8 bes'16} 
      | aes'16 bes'16 c''16 es''16 g''16 a''16\glissando  d'''8 b''16 a''8 ges''16 f''16 e''16 es''16 cis''16 
      | \tuplet 3/2 {d''8 f''8 ges''8} f''8 d''16 des''16 \tuplet 3/2 {bes'8 a'8 ges'8} \tuplet 3/2 {f'8 e'8 es'8} 
      \bar "||" cis'16 d'8. d'2. 
      | c'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
