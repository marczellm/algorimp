\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "A Night in Tunisia"
  composer = "Clifford Brown"
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
      
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | a1:min5-7 | d1:9- | g1:min7 | s1 | c1:min5-7 | c1:9- | f1:maj | e2:min5-7 a2:7 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | a1:min5-7 | d1:9- | g1:min7 | s1 | c1:min5-7 | c1:9- | f1:maj | e2:min5-7 a2:7 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | a1:min5-7 | d1:9- | g1:min7 | s1 | c1:min5-7 | c1:9- | f1:maj | e2:min5-7 a2:7 
      | es1:7 | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 
      | es1:7|
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


      \tempo 4 = 190
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r8 a'4 g'8 g'4 r4 
      | r8. a'16~ a'8 f'8 f'2~ 
      | f'8. d'16~ d'16 e'16 f'16 e'16 des'8 b4.~ 
      | b8 c'8 r4 r8 f'8 g'8 bes'8 
      | a'2 e''8 f''8~ f''16 f''16 e''16 d''16~ 
      | d''16 des''8 e'16 es'8 a'8~ a'16 bes'16 a'16 a'16 gis'8 a'8 
      | f'8 d'8 r2. 
      \bar "||" r8 bes'8 es''8 f''8 g''8 a''8 bes''8 gis''8~ 
      | gis''8\glissando  a''8 f''4 d''4 b'4 
      | bes'4 f'4 \tuplet 3/2 {es'8 f'8 es'8} des'8 a8 
      | \tuplet 3/2 {e'4 f'8~} f'4 b8 r8 r4 
      | r4 \tuplet 6/4 {es'16 f'16 fis'16 g'16 gis'16 a'16} bes'8 es'16 f'16 fis'16 g'16 a'16 bes'16~ 
      | \tuplet 5/4 {bes'8 e'16 f'16 g'16~} \tuplet 6/4 {g'16 a'8. d'16 e'16} f'16 g'16 a'8~ \tuplet 3/2 {a'8 f'8 es'8} 
      | \tuplet 5/4 {a'16 bes'16 a'16 g'16 f'16} es'16 d'16 des'8 r2 
      | bes16 a8. \tuplet 3/2 {cis'8 d'4} r2 
      \bar "||" r8 a'8 c''8 e''8 a''4 aes''4~ 
      | \tuplet 6/4 {aes''16 g''8. a''16 g''16~} g''16 e''8 f''16~ f''16 ges''8 es''16~ es''16 c''8 cis''16~ 
      | cis''16 d''8 g''16 a''8 bes''8 a''8 g''8 ges''8 a''8~ 
      | a''16 g''8 d''16 c''16 d''16 c''16 a'16~ a'16 bes'8 ges'16 \tuplet 3/2 {a'4 fis'8} 
      | g'4~ g'16 bes'16 f''16 g''16~ g''16 fis''8 d''16 c''16 g'8 fis'16~ 
      | fis'8. d'16 f'8. d'16 \tuplet 3/2 {e'8 g'8 bes'8} \tuplet 3/2 {des''8 es''8 c''8} 
      | r2. r8 a''8 
      | bes''8 a''8 bes''8 a''8 g''8 f''8 \tuplet 3/2 {f''8 e''8 d''8} 
      \bar "||" es''4 des''8 bes'8 es''4 \tuplet 3/2 {des''4 a'8} 
      | e''16 f''16 e''8 \tuplet 3/2 {d''8 b'4} e''8. d''16~ d''16 b'8 es''16~ 
      | es''4 \tuplet 3/2 {des''4 bes'8} f''8 es''16 f''16 e''16 des''8.~ 
      | des''8 e''8 \tuplet 3/2 {d''4 b'8~} b'16\glissando  d''16 b'16\glissando  a'16 \tuplet 3/2 {f'4 b8} 
      | es'4 \tuplet 3/2 {f'4 b8} es'4 f'8 r8 
      | r8 a8 d'8 e'8 d'16 e'16 d'16 c'16 a8 r8 
      | r4 r8. des'16 \tuplet 6/4 {es'16 f'16 g'16 bes'8.} \tuplet 3/2 {a'4 g'8} 
      | f'8 d'8 r2 r8 d''8\bendAfter #-4  
      \bar "||" \mark \default es'8 f'8 g'8 a'8 bes'8 a'8\glissando  bes'4 
      | d'8 e'8 f'8 g'8 \tuplet 3/2 {a'4 gis'8} a'4 
      | es'8 f'8 g'8 a'8 bes'8 f''8 e''8 f''8 
      | e''8 d''8 des''8 des''8 \tuplet 6/4 {f''4 d''16 b'16~} b'8 r8 
      | r4 r8 c''4 b'16 bes'16~ bes'8 r8 
      | r4 r8 e''4 d''8 b'4~ 
      | b'8 d''8 \tuplet 3/2 {es''8 d''8 a''8} c'''8 a''8 \tuplet 3/2 {bes''4 a''8~} 
      | a''4 r2. 
      \bar "||" \tuplet 3/2 {c'''8 d'''4~} d'''2\bendAfter #-4  r4 
      | r4 r8. es'''16~ es'''8. es'''16~ \tuplet 6/4 {es'''4 d'''16 cis'''16} 
      | \tuplet 3/2 {d'''4 b''8~} b''8 bes''8~ bes''8. a''16~ a''8. g''16~ 
      | \tuplet 7/8 {g''16 c'''32 bes''32 g''32 ges''32 e''32~} \tuplet 6/4 {e''16 f''4 des''16~} des''8 e''8~ e''16 d''8 bes'16~ 
      | bes'8. a'16~ a'16 g'8 f'16~ f'16 es'8 a16 des'8 e'8 
      | d'8 a8 a'4 g'4 bes'4 
      | a'4 des''8. a'16 b'4 \tuplet 3/2 {g''8 e''8\glissando  cis''8} 
      | d''8 r8 r2 r8 a''16 gis''16 
      \bar "||" a''8 cis''16 d''16 e''8 a'16 gis'16 a'8 r8 r4 
      | r8. e'16 g'16 a'16 g'16 e'16 \tuplet 3/2 {ges'8 a'8 c''8} \tuplet 3/2 {es''4 cis''8} 
      | d''4 r4 f''16 e''16 d''16 g''16 r4 
      | r2 \tuplet 6/4 {r4 bes''16 aes''16} g''8 f''8 
      | e''8 d''8~ d''16 d''16 c''16 b'16~ b'16 bes'8 d''16~ d''16 a'8 g'16~ 
      | \tuplet 3/2 {g'8 d'8 f'8~} f'16 e'8 g'16 bes'8 c''8 des''8 es''8 
      | \tuplet 3/2 {a'8 c''8 a'8} g'8 f'8~ f'16 e'8 f'16~ \tuplet 6/4 {f'16 g'8 a'16 g'16 f'16~} 
      | \tuplet 5/4 {f'16 e'16 f'16 e'16 d'16} \tuplet 6/4 {des'4 fis'16 g'16} bes'8 a'8~ a'16 g'8 f'16 
      \bar "||" es'8 a8 des'8 es'8 f'8 es'8 \tuplet 3/2 {des'4 dis'8} 
      | \tuplet 3/2 {e'4 f'8~} f'4 b8 r8 r4 
      | r4 \tuplet 5/4 {des'8 e'16 aes'16 c''16~} c''16 bes'8 bes16 \tuplet 3/2 {es'4 cis'8} 
      | d'4~ \tuplet 5/4 {d'16 f'16 a'16 des''16 e''16~} e''16 f''8 d''16~ d''8. b'16~ 
      | b'8 a'8 r2. 
      | r4 r8 a'8 bes'8 a'8 gis'8 a'8 
      | cis''8 d''8~ d''16 e''8 f''16 g''8 a''8 \tuplet 3/2 {bes''4 a''8} 
      | r1 
      \bar "||" \mark \default es''4~ \tuplet 5/4 {es''16 ges''16 aes''16\glissando  bes''16 des'''16} e'''8 es'''4 d'''8~ 
      | d'''8 b''4\bendAfter #-4  r8 r2 
      | r8 cis''8 d''8 es''8 f''8 g''8 a''8 bes''8~ 
      | bes''8 a''8 \tuplet 3/2 {g''4 f''8} d''8 r8 r4 
      | r8 es''4 aes''16 bes''16 c'''16 d'''16 es'''4 c'''8~ 
      | c'''8 b''4\bendAfter #-4  r8 r2 
      | r4 r8. a''16~ a''4 bes''8 a''8~^\markup{\left-align \small vib} 
      | a''8 r8 r2 a''4 
      \bar "||" es'''2 b''4. f'''8~ 
      | f'''8 e'''4 d'''8 des'''4 e'''8 es'''8~ 
      | es'''8 d'''8 \tuplet 3/2 {es'''8 des'''8 c'''8} bes''8 a''8 g''8 f''8 
      | e''8 cis''8 d''8 e''8 f''8 g''8 a''8 f''8 
      | g''8 b''8 d''8 g''8 \tuplet 3/2 {f''8 es''8 f''8} \tuplet 3/2 {des''4 c''8} 
      | b'8 des''8 a'8 b'8 g'8 a'8 f'8 g'8 
      | \tuplet 3/2 {f'8 es'8 des'8} des'8 r8 r4 r8 e'8 
      | \tuplet 3/2 {d'4 a'8} r2. 
      \bar "||" r8 a'8 b'8. es''16~ es''8 d''8 e''8 g''8 
      | ges''4. a''8 c'''4 es'''8\glissando  ges'''8 
      | d'''8 c'''8 c'''8 a''8 g''8 ges''8 a''8 fis''8~ 
      | fis''16 g''8 d''16~ \tuplet 6/4 {d''16 c''16 des''16 c''8 a'16~} a'16 bes'8 ges'16 a'16 bes'16 a'16 fis'16 
      | g'8 a'8 \tuplet 3/2 {bes'4 c''8} cis''8 d''8 a''8 ges''8 
      | f''8 f''8 e''8 d''8 \tuplet 3/2 {des''8 c''8 b'8} bes'8 gis'8 
      | a'8 f'8 \tuplet 3/2 {e'8 d'8 des'8} \tuplet 3/2 {g'4 f'8~} f'4 
      | e'16 f'16 e'16 d'16 des'8 r8 r2 
      \bar "||" \tuplet 6/4 {r16 es'16 f'16 g'16 gis'16 a'16} bes'16 a'16 g'16 f'16 es'16 f'16 g'16 aes'16 bes'16 aes'16 ges'16 f'16 
      | \tuplet 5/4 {d'8 dis'16 e'16 ges'16} gis'16 a'16 g'16 f'16 d'16 es'16 f'16 g'16 \tuplet 3/2 {a'8 g'8 f'8~} 
      | \tuplet 6/4 {f'16 e'16 f'16 e'8 aes'16} bes'16 aes'16 g'16 f'16 e'16 f'16 g'16 aes'16 bes'16 aes'16 g'16 f'16 
      | \tuplet 6/4 {d'8 e'8 f'16 g'16} bes'16 a'16 g'16 f'16 d'16 e'16 f'16 g'16 \tuplet 3/2 {a'8 g'8 f'8} 
      | e'8 r8 r2 r8 g''8~ 
      | \tuplet 6/4 {g''16 gis''16 a''16 ges''8 e''16~} e''16 f''8 e''16~ \tuplet 5/4 {e''16 f''16 g''16 e''16 d''16} des''4~ 
      | des''8 e'8 f'8 a'8 bes'8 a'8 dis'8 a8 
      | d'4 a'8 r8 r8 a'8 f'8 d'8 
      \bar "||" \mark \default es'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
