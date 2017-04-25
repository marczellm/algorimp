\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Double Vision"
  composer = "Steve Coleman"
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
      
      | r1
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


      \tempo 4 = 242
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {g'4 bes'8~} bes'4 \tuplet 3/2 {aes'4 es'8~} 
      | \tuplet 3/2 {es'8 f'8 aes'8} g'8 ges'8 f'8 d'8 es'4 
      | \tuplet 3/2 {bes4 aes8~} aes4 bes4.^\markup{\left-align \small vib} r8 
      | r2. r8 c''8 
      | des''8 a'8 f'8 des'8 b'4 d'4~ 
      | d'2~ d'8. des'16~ \tuplet 3/2 {des'8 ges'8 aes'8} 
      | g'8 d'8 r2. 
      | r1 
      | r2 r8 des''8 c''8 b'8~ 
      | b'4 des''8 c''8 b'8. g'16 bes'4 
      | g'8 a'8~^\markup{\left-align \small vib} a'2~ a'16 g'8 a'16 
      | bes'4 d'16 f'8 a'16 aes'8 b'8~ b'16 ges'8 e'16\glissando  
      | \tuplet 3/2 {f'8\glissando  es'8 f'8} ges'8 gis'8 a'8 b'8 c''8 d''8 
      | es''8 es''8 d''4 des''8 c''4.~^\markup{\left-align \small vib} 
      | c''8 b'8 bes'8 f'8 r2 
      | r2. b''8 aes''8~ 
      | aes''4 g''4. ges''4. 
      | f''4.. d''16 f''8 e''8 \tuplet 3/2 {es''4 f''8} 
      | r4 \tuplet 3/2 {r8 ges''8 aes''8} g''4. ges''8 
      | \tuplet 3/2 {f''4 des''8} es''8 f''8 d''8 des''8 c''8 bes'8\glissando  
      | a'8 ges'8 \tuplet 3/2 {gis'8\glissando  a'4~} a'4 es''8 a'8~ 
      | a'16 aes'8 b'16~ b'8 es''8 des''8 aes'8 ges'8 des'8 
      | g'8 bes'8 des''8 c''8 bes'8 r8 r4 
      | r1 
      | r2. f'16 b'8 aes'16~ 
      | aes'8 fis'16 g'16~ g'8 bes'8 a'8 d'4 a'8 
      | aes'8 b'8 ges'8 es'8 f'8 aes'8 bes'8 c''8 
      | des''4 a'8 aes'8 b'8 des''8 bes'8 aes'8 
      | f'4 b'4~ b'16 g'8 d'16 f'8 g'8 
      | \tuplet 3/2 {e'4 d'8} f'4 e'8 d'8 b4 
      | d'4 a8 r8 r2 
      | r4 f'8 bes8 es'8 f'16 e'16~ e'8 des'8~ 
      | des'4 ges'8 b'8 des''8 es''8 a'8\glissando  aes'8 
      | b'8 c''8 es''8 f''8 ges''8 aes''8 g''8 d''8 
      | r2 r8. f''16 ges''4 
      | f''8 des''16 c''16 bes'8 a'8~^\markup{\left-align \small vib} a'2~ 
      | a'8. aes'16 b'8. aes'16 bes'8 r8 r8 bes'8 
      | a'8 r8 r2. 
      | r1 
      | r2. r8 f'8 
      | \tuplet 3/2 {ges'8 bes'8 c''8} f''8. c''16~ c''8 r8 r4 
      | r4 r8. f'16~ f'16 ges'16 bes'16 c''16 f''8 r8 
      | r2. ges''8 f''8 
      | e''8 ges''8 \tuplet 3/2 {f''8 e''8 es''8~} es''8 f''8 e''8 des''8 
      | bes'8 ges'8 \tuplet 3/2 {cis''8\glissando  d''4~} d''4 \tuplet 3/2 {des''8 a'8 aes'8} 
      | bes'8 es''8 \tuplet 3/2 {ges''8 aes''8 g''8} r2 
      | r2 \tuplet 6/4 {r8 b''16 aes''16 g''16 ges''16} f''8 e''8 
      | es''8 f''8 \tuplet 3/2 {e''4 des''8} c''8 b'8~ b'16 bes'8 a'16 
      | aes'8 b'8~ b'16 c''8 des''16 \tuplet 3/2 {aes'4 fis'8} g'8 bes'8 
      | des''8 es''8 f''8 fis''8 g''8 ges''8 f''8 e''8 
      | es''8 f''8 e''8 des''8 bes'4 es''8 des''8 
      | a'4 b'8 cis''8 \tuplet 3/2 {d''4 c''8} aes'8 fis'8 
      | g'8 a'8 c''8 a'16 f'16~ f'8 c'8 \tuplet 3/2 {es'8 aes'8 g'8~} 
      | g'16 bes'8 f'16~ f'8 d'8 b8 es'8~ es'16 aes8 es'16~ 
      | es'8 bes4 aes4 r8 r4 
      | r4 r8. b'16~ b'8 bes'8 f'8 bes8~ 
      | bes8 f'8 des'4.. e'16 ges'8 b'8~ 
      | b'16 f'8 d'16 e'8 bes'8 es'8 bes'8 e'4 
      | cis'8 d'8 bes'8 f'8 dis'8 e'8~ e'8. ges'16~ 
      | ges'8 des'8 es'8 c'8 r2 
      | r8 bes'8 \tuplet 6/4 {aes'16 g'16 es'16 b16 es'16 g'16} aes'8 b'16 g'16 ges'16 e'16 d'16 es'16 
      | \tuplet 5/4 {f'16 gis'16 a'16 bes'16 c''16} \tuplet 3/2 {a'8 aes'8 b'8} \tuplet 5/4 {c''8 e''16 ges''16 aes''16} b''16 g''8. 
      | r2 r8 b''16 a''16 \tuplet 5/4 {g''16 ges''16 f''16 e''16 d''16} 
      | des''16 c''16 b'16 aes'16 b'16 c''16 des''16 aes'16 \tuplet 6/4 {fis'8 g'16 bes'16\glissando  a'16 c'16} es'16 d'16\glissando  es'8~ 
      | es'4~ es'16 f'16 g'16 a'16 g'4. ges'8 
      | \tuplet 6/4 {f'16 e'16 es'8 g'16 aes'16} \tuplet 3/2 {b'8 c''8 des''8} bes'16 a'16 aes'16 b'16 c''16 des''16 e''8 
      | f''4 r2 \tuplet 3/2 {f''4 e''8} 
      | es''8 f''8 e''8 des''8 \tuplet 3/2 {c''4 b'8} bes'8 a'8 
      | aes'8 b'8 c''8 des''8 \tuplet 3/2 {aes'4 ges'8} aes'4~ 
      | aes'8 e''8 ges'4. e''8 fis'16\glissando  g'16 e''8 
      | ges'8 f'8~ f'4. e''8~ \tuplet 3/2 {e''8 e''8 ges'8~} 
      | ges'8 e''4 e'4 r8 r4 
      | r4 f'8 e'16 d'16 \tuplet 3/2 {es'8 f'8 bes8} es'4~ 
      | es'4 b4 b'8 f'8 c'8 bes8 
      | r2 \tuplet 3/2 {e'4 des'8} ges'8 b'8 
      | f'8. des'16 e'8 d'4 ges'8 b'8 c''8 
      | des''8 a'4.^\markup{\left-align \small vib} b'8 des''8 es''8 f''8 
      | ges''8 aes''8 ais''8 b''8 c'''2^\markup{\left-align \small vib} 
      | r1 
      | r4 r8 b''8 \tuplet 3/2 {g''8 aes''8 g''8~} g''8 gis''8 
      | a''4 f''8 a''8 g''8 aes''16 g''16~ g''8 f''8~ 
      | f''16 es''16 es''16 f''16~ f''4 f''8 ges''4 b'8~ 
      | b'8. f''16 dis''4. e''8 des''4~ 
      | des''8 e''8 b'2 \tuplet 3/2 {b'8 f''8 b'8} 
      | es''8 f''8 b'8 f''8 c''8 bes'4 des''8 
      | e''4.\glissando  f''8 g''8 ges''8 \tuplet 3/2 {f''8 e''8 e''8} 
      | es''8 f''8 es''8 d''8\glissando  des''8 c''16 b'16 bes'8 a'8 
      | r1 
      | r2. r8 bes'8 
      | es''8 f''8 \tuplet 3/2 {f''8 g''8 ges''8} f''8 e''8 dis''8 e''8 
      | es''8 des''8 \tuplet 5/4 {c''8 ais'16\glissando  b'16 bes'16~} bes'8 a'8\glissando  \tuplet 3/2 {aes'8 bes'8 c''8~} 
      | c''16 des''8 aes'16~ aes'8 f'16 g'16~ g'8 ais'8 b'8 bes'8 
      | c''4 des''8 a'8 aes'8 b'8 ges'8 des'8 
      | e'8 f'8 fis'8 g'8 a'8 gis'8 a'4~ 
      | a'16 g'16 bes'16 bes'16\glissando  c''4 r2 
      | r4 r8 c''8 b'8 c''4 b'8 
      | c''8 des''8 c''8 b'8 c''4 des''8 c''8 
      | ais'8 b'4 ais'8 b'4 b'8 c''8 
      | des''8 bes'8 a'8 c''8 des''8 a'8 aes'8 c''8~ 
      | c''4 b'4 c''4 b'4 
      | c''8\glissando  b'4\glissando  c''8 ais'4\glissando  b'8. a'16~^\markup{\left-align \small vib} 
      | a'4. es'8 f'8 gis'8 a'8 es'8 
      | r1 
      | r8 aes'8 g'16 aes'8 g'16~ \tuplet 3/2 {g'8 aes'8 es'8~} es'4~ 
      | es'8. d'16~ d'8 es'8 d'8 es'8 \tuplet 3/2 {gis'4 a'8~} 
      | a'16 gis'16 a'16 cis'16~ cis'4\glissando  d'4.. cis'16~ 
      | cis'4 d'8 dis'8 e'4 c'4 
      | f'4 e'4 ges'8 aes'8 des'8 r8 
      | r4 r8 aes'8 ges'8 des'4 e'8~ 
      | e'8 ges'8 b'8 c''8 des''8 a'8 aes'8 r8 
      | r2. r8 b''8~ 
      | b''16 g''8 b''16~ b''8 bes''8~ bes''8. des''16~ des''4 
      | f''16 aes''8 ges''16~ ges''8 des''8 es''8 r8 r4 
      | b'4 f''8 ges''8~ ges''16 es''8 des''16~ \tuplet 3/2 {des''8 bes'8 a'8} 
      | \tuplet 6/4 {cis''8 d''8 gis'16\glissando  a'16} aes'16 b'16 c''16 des''16 aes'8 fis'8 g'4~^\markup{\left-align \small vib} 
      | g'2~ g'8. c'16~ c'16 ges'8 aes'16 
      | \tuplet 3/2 {f'4 des'8~} des'16 e'8 d'16 ges'8 b'8 c''8 des''8 
      | a'8 aes'8 b'8 des''8 es''8 f''8 ges''8 aes''8~ 
      | \tuplet 3/2 {aes''8 g''8 ges''8} f''8 e''8 es''8 f''8 e''8 des''8 
      | bes'8 r8 r2 g'8 bes'8 
      | a'8 r8 r2. 
      | r1 
      | r4 r8. g''16~ g''16 a''8 es''16~ es''16 des''8 a''16 
      | \tuplet 3/2 {aes''4 bes''8~} bes''16 f''8 des''16 e''4 d''4 
      | bes'4 es''2 des''8 a'8 
      | ges'8 des'8 b'8 des''8 \tuplet 3/2 {c''4 aes'8~} aes'8 g'8~ 
      | g'8 bes'4. c''4. des''8 
      | \tuplet 3/2 {a'4 ges'8} bes'8 c'8 es'8 g'8 ges'8 c'8 
      | es'4 b8 es'8 a8 r8 r4 
      | r1 
      | r8 b''8 bes''8 g''4 g''4 g''8~^\markup{\left-align \small vib} 
      | g''1~ 
      | g''4 e''8 d''8 b'8 des''8 bes'8 aes'8~^\markup{\left-align \small vib} 
      | aes'2~ aes'16 f'8 aes'16~ aes'16 bes'8 c''16 
      | des''8 bes'8~ bes'16 c''8 a'16 g'4~ g'16 e'8 f'16~ 
      | \tuplet 3/2 {f'8 a'8 aes'8} bes'4~ bes'16 ges'8 e'16~^\markup{\left-align \small vib} e'4~ 
      | e'4 r2. 
      | r4 r8 ges'8 \tuplet 3/2 {b8 bes8 d'8} es'4~ 
      | es'2~ es'8. fis'16 g'8 c'8 
      | f'8 a'8 g'8\glissando  ges'16 e'16 c'8 f'4 bes'8 
      | aes'8. es'16~ es'16 c'8 g'16 f'4 d'8 c'8~ 
      | c'8 f'8 d'8 c'8 d'16 f'8 a'16~ a'8 es''8 
      | des''8 a'8 aes'8. b'16~ b'8 gis'8 a'8 bes'8 
      | des'8 e'8 a'8 f''8 e'8 r8 r4 
      | r1 
      | r4 b'8 r8 r2 
      | r2. r8 g''8 
      | a''2~ a''8 gis''8 a''4~ 
      | a''4 aes''8. es''16 r2 
      | r4 des''8 fis''16 g''16~ g''8 f''4 des''8 
      | e''1~ 
      | e''8 ges''8 es''8 g''8 e''8. ges''16~ ges''4 
      | f''8 dis''8 e''8 d''8 \tuplet 3/2 {fis''4 g''8} es''8 des''8~ 
      | des''8. dis''16~ dis''8 e''4 des''8 b'8 des''8 
      | c''8 b'8 bes'8 a'8\glissando  aes'8 b'8 es''8 g''8 
      | es''8 aes''8 ges''4 d''8 e''8 des''8 b'8~ 
      | b'8 des''8 c''8 b'4 c''8 des''8 bes'8 
      | a'8 des''8 \tuplet 3/2 {c''4 a'8~} a'16 aes'8 b'16 f'4 
      | c'8 es'4 r8 r2 
      | r4 \tuplet 3/2 {r8 g'8 a'8} bes'8 des'8 e'8 aes'8 
      | g'8 ges'8~ \tuplet 3/2 {ges'8 e'8 es'8~} es'8 f'8 ges'16 a'8 bes'16~ 
      | bes'8 ges'8 b'8 f'16 es'16~ es'8 f'8 bes'8 f'16\glissando  e'16~ 
      | e'8 a'8 aes'8 b'8 g'4 es'8 aes'8 
      | des'4 e'4 ges'8 aes'8 f'8 d'8 
      | e'8 des'8 r2 r16 ges'8 d'16~ 
      | d'16 f'8 g'16~ g'16 f'8 cis'16 \tuplet 3/2 {d'4 ges'8~} \tuplet 3/2 {ges'8 b'8 des''8} 
      | c''8 a'8 ges'8 r8 r4 r8 b'8 
      | cis''8 d''8 f''8 ges''8 aes''8 g''8 \tuplet 3/2 {des''8 f''4} 
      | \tuplet 3/2 {ges''8 aes''4} \tuplet 3/2 {f''4 c''8~} c''16 des''8 des''16~ des''8 des''8 
      | des''8 des''4 a''8\glissando  des'''4. b''8~^\markup{\left-align \small vib} 
      | b''4. r8 r2 
      | \tuplet 3/2 {r8 gis''8 a''8~} a''2.~ 
      | a''2 g''8 a''8 ges''8 des''16 e''16~ 
      | e''16 b'8 e''16 d''4 d''8 r8 r8 d''8 
      | d''4 des''4 \tuplet 3/2 {f''8 ges''8 aes''8} f''8 e''8~ 
      | e''16 es''8 f''16~ f''16 e''8 des''16 c''8 b'8 bes'8 a'8 
      | aes'8 b'8 c''8 des''8 aes'8 fis'8 g'8 a'8 
      | \tuplet 3/2 {f'4 des'8} \tuplet 3/2 {f'8\glissando  g'4} g'4 e'4 
      | des''2^\markup{\left-align \small vib} r4 r16 es''8 c''16~ 
      | c''16 ges''8 aes''16~ aes''8 f''8 des''8 es''8 f''16 e''8 des''16~ 
      | des''16 c''8 bes'16 g'4.^\markup{\left-align \small vib} e'8 r4 
      | r2 r8 b'8 c''4~ 
      | c''4~ \tuplet 3/2 {c''8 b'8 bes'8~^\markup{\left-align \small vib}} bes'2~ 
      | bes'4.. g'16~ g'16 bes'8 a'16~ a'8 e'8 
      | f'8 a'8 g'8 ges'8 f'8 e'8 es'8 f'8 
      | ges'4.^\markup{\left-align \small vib} f'8 es'8 d'8 es'8 f'16 ges'16~ 
      | ges'8 a'8 \tuplet 3/2 {g'8 e'16 r8.} r2\bar  ".."
    }
    >>
>>    
}
