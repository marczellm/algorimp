\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Take the Coltrane"
  composer = "Steve Coleman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:7 | c1:7 | f1:7 | c1:7 | f1:7 | s1 | s1 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:7 | c1:7 | f1:7 | s1 
      | s1 | s1 | s1 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:7 | c1:7 | f1:7 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:7 | c1:7 | f1:7 | s1 
      | s1 | s1 | s1 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:7 | c1:7 | f1:7 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:7 | c1:7 | f1:7 | s1 
      | s1 | s1 | s1 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:7 | c1:7 | f1:7 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:7 | c1:7 | f1:7 | s1 
      | s1 | s1 | s1 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:7 | c1:7 | f1:7 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:7 | c1:7 | f1:7 | s1 
      | s1 | s1 | s1 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:7 | c1:7 | f1:7 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:7 | c1:7 | f1:7 | s1 
      | s1 | s1 | s1 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:7 | c1:7 | f1:7 | s1 | s1 | s1 | s1 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:7 | c1:7 | f1:7 | s1 
      | s1|
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


      \tempo 4 = 240
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r8. c'16~ c'8 g8~ \tuplet 3/2 {g8 bes8 g8~} g8. bes16~ 
      | bes4 g8 bes8 c'8 f'8 g'4 
      | bes'8. c''16~ c''8 g'4 g'8 f'4 
      | es'4 d'4 f'4. c''8 
      | bes'8 g'8 aes'8. f'16~ f'8 d'4. 
      | des'8 r8 r4 c'4.^\markup{\left-align \small vib} bes8 
      | a4 f'4 es'4 f'4~ 
      | f'4 d'4 f'4 d''4 
      | c''4 bes'4 a'8. g'16~ g'8 f'8~ 
      | f'8 f'8 c'4 g'8 r8 r8 a'8 
      | ges'8 es'4 ges'8 bes'8 g'8 r4 
      \bar "||" \mark \default r4 es'8 f'8 es'8 a'4 d''8 
      | c''4 g'8 d'8 r4 r8 aes'8 
      | d'8 es'4 g'8 bes'8 g'8 aes'8 r8 
      | r4 r8 bes8 des'8 es'8 ges'8 aes'8 
      | b'8 des''8 c''8 b'8 bes'8 a'8 aes'8 r8 
      | r2 bes8 b4 es'16 f'16~ 
      | f'8 ges'8 d'8 des'16 ges'16~ ges'8 f'8 e'8. aes'16~ 
      | aes'8 r8 r8 f'8 ges'8 es'8 d'8 ges'8 
      | a'8 g'8 d'4 e'4 gis'8 dis'16 g'16~ 
      | g'8 aes'4 e'4 aes'4 e'8 
      | aes'8 ges'8 e'4 fis'8 g'8 e'8 a'8 
      | e'8 aes'8 e'8 g'8 aes'4 ges'8 e'8~ 
      \bar "||" \mark \default e'8 f'8 e'8. f'16~ f'8 ges'8 es'8 d'8 
      | a'4 \tuplet 3/2 {bes'4 g'8} aes'8 f'8 e'4 
      | aes'8 r8 r4 bes'4 \tuplet 3/2 {aes'8 f'8 es'8~} 
      | es'8 c'8~ \tuplet 3/2 {c'8 f'8 bes'8~} bes'16 c''8 b'16~^\markup{\left-align \small vib} b'4~ 
      | b'8 g'8 \tuplet 3/2 {bes'8 a'8 aes'8~} aes'8 bes8 r4 
      | r2 es'8 ges'4. 
      | a'8 ges'8 d'8 des'8 e'4^\markup{\left-align \small vib} bes8 des'8 
      | r4 r8 bes8 ges8 aes8~ aes16 bes8 b16~ 
      | b16 cis'8 dis'16~ \tuplet 3/2 {dis'8 fis'8 gis'8~} gis'8 bes'8 b'4~ 
      | b'8 des''8 \tuplet 3/2 {c''8 bes'8 aes'8~} aes'8 bes'8 c''4 
      | bes'8 c''8 bes'8 aes'8 g'8 f'8 es'8 d'8 
      | g'8 f'8 d'4 c'8 es'8 bes4 
      \bar "||" \mark \default a4 c'8 f'8~^\markup{\left-align \small vib} f'2~ 
      | f'2 es'8 f'8 r4 
      | r2 c'8 d'8 dis'8 e'8 
      | f'8 e'8 ges'8 r8 r4 r8 aes16 d'16~ 
      | d'8 b8 ges8 a8 aes8 bes16 b16~ b16 d'8 des'16~ 
      | des'8 es'8 es'8 r8 r4 d'8 des'8~ 
      | des'8 e'8 c'8 bes16 a16~ a8 aes4 c'8\glissando  
      | f'8 e'16 fis'16~ fis'8 r8 r4 g'8 ges'8 
      | \tuplet 3/2 {es'4 d'8} fis'8 a'16 gis'16~ gis'8 d'8 cis'8 e'16 gis'16~ 
      | \tuplet 3/2 {gis'8 e'8 g'8} r2 r8 bes'8 
      | aes'8 g'4 es'8 \tuplet 3/2 {d'8 des'8 e'8~} \tuplet 3/2 {e'8 aes'8 e'8~} 
      | e'8 es'8 r2 d'8 des'8~ 
      \bar "||" \mark \default des'8 es'8 c'8 bes8 bes8 a8 gis8 a8 
      | bes8 r8 r8 bes8 a8 r8 r8 bes8 
      | aes4. c'8 b8 g8 d'8 r8 
      | r8 d'8 d'8 a8 bes8 d'8 des'8 es'8 
      | b8 aes8 \tuplet 3/2 {bes8 a8 gis8~} gis16 a8 b16~ b16 g'8 d'16~ 
      | \tuplet 3/2 {d'8 b8 e'8~} e'8. aes'16~ aes'8 bes'8 b'8 d''8 
      | c''8 g'8 e'4 ges8 r8 r8. dis'16~ 
      | dis'8 e'8 ges'8 es'8 d'8 ges'8 a'8 c''8 
      | des'8 e'8 a'8 cis'8 bes8 a8~ a8. g'16 
      | e'8 r8 r8 es''8 bes'8 f'8 ges'8 a'8 
      | b'8 d''8 es''8 c''8 bes'16 ges'8 bes'16~ bes'8 r8 
      | r4 a'8 f'8 es'16 c'8 g'16 r4 
      \bar "||" \mark \default r4 r8. d'16~ d'8 r8 r8 f'8 
      | ges'8 es'8 bes8. ges'16~ ges'8 a'8 f'8 e'8 
      | ges'4 aes'8 e'8\glissando  f'8 e'8 fis'8\glissando  g'8~ 
      | g'8. e'16~ e'4.\glissando  f'8~ f'16 e'8 aes'16~ 
      | aes'8 g'8 es'8 d'8 f'8 g'4 c''8 
      | bes'8 g'8 d'8 c'8 g'8 r8 r4 
      | r4 c''8 d''8 dis''8 e''8 f''8 e''16 des''16~ 
      | \tuplet 6/4 {des''8 b'8. es''16~} es''8 r8 r8. d''16~ d''8 a'8 
      | bes'8 d''4 b'8 bes'8 a'8 gis'8 bes'8 
      | b'8 bes'8 g'8 es'8 c'4 a'8 f'16 d'16~ 
      | d'8. c'16~ c'8. g'16~ g'8 c''8 bes'8 r8 
      | r1 
      \bar "||" \mark \default r8 c''8 bes'4 \tuplet 3/2 {b'4 es''8} bes'8 a'8 
      | aes'8 bes'8 b'8 bes'8 a'8 ges'8 es'4 
      | \tuplet 3/2 {ges'4 aes'8~} aes'8 f'8 r2 
      | es'4.. f'16~ f'4. es'8 
      | d'8 es'4 es'8 cis'4 d'4 
      | dis'4. e'4 e'8 f'8 g'8 
      | e''8 bes'8 f'8 a'8 ges'8 r8 r8 d''8 
      | b'8 ges'16 a'16~ a'8 aes'4 es'8 d'8 aes'8 
      | g'8 d'8 b8 fis8 c'8 dis'16 bes16~ \tuplet 3/2 {bes8 f8 g8~} 
      | \tuplet 3/2 {g8 f8 es8} es8 r8 r2 
      | r1 
      | r4 r8. f16 g8 r8 r8 c'8 
      \bar "||" \mark \default \tuplet 3/2 {bes8 g8 f8} \tuplet 3/2 {d4 bes8~} bes4.. g16~ 
      | g16 f16 c'16 b16 \tuplet 3/2 {g8 f8 g8} \tuplet 3/2 {d'8 f'4} r4 
      | r4 es'8 d'8 des'4. es'8~ 
      | es'8 a'8 \tuplet 3/2 {ges'8 es'8 b8} es'16 ges'16 a'16 b'16 \tuplet 3/2 {des''8 e''8 aes''8} 
      | r2 r16 c''16 b'16 aes'16 \tuplet 3/2 {e'8 ges'8 aes'8} 
      | des''8 aes'4 c''16 b'16 \tuplet 3/2 {aes'8 ges'8 e'8} b16 e'16 ges'16 gis'16~ 
      | gis'16 a'16 f'16 es'16~ es'16 d'16 e'16 f'16 ges'8 d'8 \tuplet 3/2 {b8 c'8 d'8} 
      | bes8 aes16 ges16 \tuplet 6/4 {f8 g16 c'16 e'8} ges'8. d'16 des'8 e'8 
      | a'16 fis'8 cis'16 \tuplet 3/2 {bes8 f8 c'8} \tuplet 3/2 {d'8 bes8 g8} a8 g8 
      | \tuplet 3/2 {d'8 g'16 r8.} r8. d'16~ \tuplet 6/4 {d'16 des'8 es'16 ges'16 a'16} b'16 des''16 e''16 g''16 
      | r1 
      | es''8 r8 r2. 
      \bar "||" \mark \default des''8 es''8 r2. 
      | r16 des''8 b'16 c''4 es''16 bes'8 a'16 b'8 d''8 
      | a'8 c''4 c''8 \tuplet 3/2 {b'8 g'8 es'8} \tuplet 3/2 {b8 a'4~} 
      | a'16 ges'8 d'16~ \tuplet 3/2 {d'8 e'8 ges'8} aes'8 b'16 d''16~ \tuplet 3/2 {d''8 c''8 bes'8~} 
      | \tuplet 3/2 {bes'8 aes'8 ges'8} es'16 d'16 c'16 f16~ f8 r8 r4 
      | r4 r8. c''16~ c''8 bes'8 aes'8 es'8 
      | a'4 bes'8. g'16~ g'8 aes'8 b'8 des''8 
      | bes'8 a'8 aes'8 bes'8 a'8 ges'8 es'8 b8 
      | ges'16 a'8 g'16~ g'8 d'8 cis'8 e'8 \tuplet 3/2 {f'8 fis'8 cis'8~} 
      | cis'8 aes16 c'16~ c'8 es'8 \tuplet 3/2 {bes8 fis8 g8~} g4~ 
      | g8 fis8 g8 bes8 d'8 f'8 d'8. es'16~ 
      | es'8. g'16~ g'8 bes'8 b'8 des''8 dis''8 e''8 
      \bar "||" \mark \default c''8 bes'8 g'8 d'8 g'8. e'16~ e'8 g'8 
      | r1 
      | r2 c''4 bes'8 g'8 
      | bes'8 f'16 bes'16 es''8 d''8 bes'8 a'8 ges'8 f'8 
      | es'4 d'4. d''8 bes'8 bes'8 
      | aes'8 bes'8 b'8 aes'8 \tuplet 3/2 {g'8 f'8 ges'8~} ges'8 c''16 des''16 
      | b'8 ges'8 a'8 ges'16 d'16~ d'8 e'8~ \tuplet 3/2 {e'8 g'8 f'8~} 
      | f'8 des'8 bes8 ges8 c'8 d'8 bes8 f8 
      | g8 a16 b16~ b16 cis'8 dis'16~ \tuplet 3/2 {dis'8 bes'8 gis'8} bes'8 b'8 
      | des''8 es''8~ es''16 es''8 ges''16~ ges''16 ges''8 dis''16\glissando  e''4~ 
      | e''8 e''8 r2. 
      | r2. c''16 es''8 g''16~ 
      \bar "||" \mark \default g''8 f''4 f''8 \tuplet 3/2 {es''4 d''8~} d''8 a'8 
      | bes'8 d''8 es''8. ges''16~ ges''8 aes''4 ges''8 
      | e''4 aes''8 r8 r4 gis''8\glissando  a''8 
      | aes''8 g''4 ges''16 es''16~ es''4. d''8~ 
      | d''8 a'8 ges'8 d''8 des''8 es''8 b'8. ges'16 
      | aes'8 bes'8 b'8 des''8 c''8 bes'8 g'8 bes'8 
      | a'8 f'8 \tuplet 3/2 {cis'8\glissando  d'8 c'8} g'8 bes'8 a'8 ges'8 
      | \tuplet 3/2 {es'4 b8} aes'4 \tuplet 3/2 {d'4 bes8~} \tuplet 3/2 {bes8 c'8 des'8} 
      | es'8 bes8 r2 bes8 g8 
      | f8 bes8 a8 ges16 bes16~ bes16 es'8 aes16~ aes4 
      | des'8 bes16 g16~ g8 aes8~ aes16 bes8 b16~ b8 des'8 
      | es'8 ges'16 aes'16~ aes'16 bes'8 b'16~ b'8 des''8 c''8 g'16 e'16~ 
      \bar "||" \mark \default e'16 d'8 f'16~ f'8 r8 r2 
      | r8. es''16~ es''8 ges''8 des''8 b'4 ges'8 
      | e'8 d'8 bes'8 d''8 dis''8 e''16 f''16~ f''4 
      | \tuplet 3/2 {d''4 c''8~} c''8 a'8 e'4 aes'4 
      | e''4. d''8 e''8. b'16~ b'8 aes'8 
      | e'8 a'8 bes'8 des''16 es''16~ es''8 c''8 b'8 aes'8~ 
      | aes'8 d'8 ges'4 aes'8 g'8~ \tuplet 3/2 {g'8 e'8 bes'8} 
      | a'8 r8 r8 bes'8 e'8. c''16~ c''8. es''16~ 
      | es''4 b'8 gis'8 e'8 fis'8 gis'8 cis'8 
      | r4 \tuplet 3/2 {r8 d'8 e'8~} e'8 a'8 d'8 des'16 es'16~ 
      | es'16 ges'8 aes'16~ aes'16 bes'8 b'16~ b'16 des''8 es''16~ es''8 f''8 
      | \tuplet 3/2 {des''4 c''8} r2. 
      \bar "||" \mark \default bes'8 ges'8 es'8 bes8 a8 f8 g8 g8~ 
      | g8 d'8 aes8 d'8 bes8 a8 gis8 a8 
      | \tuplet 3/2 {d'8 g'8 d'8~} d'8. b16~ b8 es'8~ es'16 f'8 bes'16~ 
      | bes'4 g'8 bes'4 b'16 d''16 e''8 dis''8 
      | e''8 f''8 c''8 b'16 bes'16~ bes'8 f'8 \tuplet 3/2 {es'8 c'8 g'8~} 
      | g'8 f'8 d'8 a16 c'16~ c'16 es'8 bes16~ bes16 f8 a16~ 
      | a8 g8 f'8. d'16~ d'8 e'16 ges'16 r4 
      | r4 f'8 e'16 es'16~ es'16 des'16 c'16 bes16 g16 aes16 bes16 d'16~ 
      | d'16 f'8 cis'16~ \tuplet 5/4 {cis'8 dis'16 f'16 gis'16} b'16 cis''16 f''8 dis''4~ 
      | dis''4 \tuplet 3/2 {des''8 b'8 aes'8} e'4~ \tuplet 3/2 {e'8 aes'8 ges'8} 
      | es'16 d'16 des'8 \tuplet 6/4 {e'16 ges'8 a'16 b'16 des''16} es''4 c''8 c''8~ 
      | c''8. bes'16~ \tuplet 3/2 {bes'8 g'8 des'8} r4 \tuplet 3/2 {r8 a'8 ges'8} 
      \bar "||" \mark \default \tuplet 3/2 {des'8 b8 e'8~} e'8 ges'8~ ges'16 es'16 f'8 ges'16 d'16 b8~ 
      | b16 c'16 d'16 bes16 fis8 g8 r4 r8 g8~ 
      | g4. bes8 des'8 es'8 ges'8 d'8 
      | des'8 es'8 ges'8 aes'16 b'16~ b'8 des''8 dis''8 e''8~ 
      | e''16 gis''16\glissando  a''8 \tuplet 6/4 {g''8 ges''16 f''16 f''8} es''8. d''16~ d''8. aes'16 
      | bes'8 d''8 c''8 b'8 bes'8 a'8 \tuplet 3/2 {aes'8 bes'4} 
      | a'8 r8 r4 e'8 c'8 d'16 e'8 g'16~ 
      | g'8 a'8 b'8 es''8 r2 
      | r2 bes'8 a'8 gis'8 r8 
      | r4 f'8 ges'16 cis'16 d'8 b16 g'16~ g'16 ges'8 e'16~ 
      | e'16 f'8 ges'16~ ges'16 es'8 d'16~ d'8 ges'16 a'16~ a'8 des'8 
      | b8 c'8 es'8 bes16 f16~ f16 bes8 a16 bes4 
      \bar "||" \mark \default c'16 f'8 es'16~ es'8 g'8 r4 bes'4 
      | f'8 es'8 c'8. g'16~ g'8 f'8~ f'8. c'16~ 
      | c'8 es'8 bes16 g8 a16~ a8 f'4 es'8\bar  ".."
    }
    >>
>>    
}
