\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Caravan"
  composer = "Wynton Marsalis"
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
      
      | c1:9- | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | f1:min | s1 | s1 | s1 
      | c1:9- | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | f1:min | s1 | s1 | s1 
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | es2:9 es2:9- | aes1:maj | s1 | g1:7 | des1:7 
      | c1:9- | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | f1:min | s1 | s1 | s1 
      | c1:9- | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | f1:min | s1 | s1 | s1 
      | c1:9- | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | f1:min | s1 | s1 | s1 
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | es2:9 es2:9- | aes1:maj | s1 | g1:7 | des1:7 
      | c1:9- | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | f1:min | s1 | s1 | s1 
      | c1:9-|
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


      \tempo 4 = 197
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 bes4~ \tuplet 5/4 {bes16 a16 g16 ges16 f16} 
      | e2~ e8. fis16~ fis8 g8 
      | r1 
      | r2 r8 bes8 r4 
      | bes4 c'8. bes16 des'4 es'8. dis'16\bendAfter #+4  
      | e'2 \tuplet 6/4 {f'16 ges'4 es'16} g'4~ 
      | g'4 a'8. g'16 bes'4 c''4 
      | d''16 dis''2...~ 
      | dis''4~ dis''16 e''8 bes'16~^\markup{\left-align \small vib} bes'2 
      | r1 
      | r2 ges''4. dis''8~ 
      | dis''4 e''2 \tuplet 3/2 {es''4 cis''8} 
      | d''8 d''8 \tuplet 3/2 {e''4 a'8} f''8. g''16~ g''8 b''8\bendAfter #+4  
      | c'''8 r8 r8 aes''8~ aes''8. g''16~ g''4 
      | f''4.. d''16~ d''16 c''8 c''16 \tuplet 3/2 {des''4 bes'8\bendAfter #+4 } 
      | c''4 \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {bes'4 c''8~} c''8 f'8~ 
      \bar "||" f'16 dis''16\bendAfter #+4  e''8~ e''8. g'16~ g'8 bes'4 e'8 
      | e''4.. g'16 bes'4 d''16 e''8.~ 
      | e''8 g'8 bes'4 e''4 g'8. bes'16~^\markup{\left-align \small vib} 
      | bes'2. g'8. des'16~ 
      | des'16 e'8 des'16 bes8 g8 e8 r8 r4 
      | r1 
      | r2 ges''4 dis''8 e''8~ 
      | e''8. e''16~ e''4 des''8 es''8~ es''8. ges''16~ 
      | ges''8. ges''16~ ges''8 e''8~ e''8. e''16~ e''4 
      | des''8 es''8~ es''2 ges''8 dis''8 
      | e''4. e''8 des''8 dis''4. 
      | \tuplet 3/2 {e''4 des''8} es''2.^\markup{\left-align \small vib} 
      | d''8 d''8 des''8 des''8 c''8 aes'8~ aes'8. g'16~ 
      | g'8.\glissando  aes'16~ aes'8 f'8 \tuplet 3/2 {aes'4 aes'8} g'8 ges'8 
      | f'8 d'8 bes8 g8 aes4^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" r8 gis8 a8 c'4 a8 \tuplet 3/2 {g4 f8} 
      | g8 a8 \tuplet 3/2 {c'4 d'8~} \tuplet 3/2 {d'8 es'8 d'8} \tuplet 3/2 {es'4 f'8~} 
      | \tuplet 3/2 {f'8 fis'8 g'8~} g'16 c''8 g'16 a'4 a'4~ 
      | a'16 g'8 a'16 g'8. f'16~ f'8 e'8 f'4~ 
      | f'16 es'8 f'16 es'4 d'4 f'4 
      | aes'4 c''4 \tuplet 3/2 {d''4 f''8~} f''8 aes''8~^\markup{\left-align \small vib} 
      | aes''4. r8 r2 
      | r2. r8 c'''8~ 
      | c'''16 c'''16\bendAfter #+4  des'''8 c'''16 des'''8 c'''16 bes''8 aes''8~ aes''16 g''8 f''16 
      | es''8 d''8 des''4 f'16 aes'8. c''4 
      | d''16\bendAfter #+4  e''8.~ e''4 e''2 
      | e''4.. f'16 \tuplet 3/2 {gis'4 c''8~} c''8 dis''8~ 
      | dis''4 f'16 aes'8 c''16~ c''8 e''8~ e''8. f'16~ 
      | f'16 aes'8 c''16 r2. 
      | r8 e''4 dis''4 c''4 cis''8~ 
      | cis''8 g'4 bes'4 f'8 \tuplet 3/2 {g'4 f'8} 
      \bar "||" a'4 bes'2.~^\markup{\left-align \small vib} 
      | bes'2~ bes'4~ bes'16 c''8 bes'16 
      | es''4. es''8 r2 
      | r1 
      | ges''4 \tuplet 3/2 {e''4 e''8~} e''8 dis''8 e''4 
      | es''8 es''8~ es''8. c''16 des''8 es'8 g'8 a'8 
      | bes'8 g'8 \tuplet 3/2 {des'4 aes8} bes2~ 
      | bes2~ bes16 a16 aes16 g16 ges16 f16 e8~ 
      | e1~ 
      | e2 ges4 e8 g8~^\markup{\left-align \small vib} 
      | g2 r2 
      | r2 r8 ges8 aes8 f8~ 
      | f8. aes16 c'8 aes4 c'8 \tuplet 3/2 {es'4 c'8} 
      | des'8 e'8 f'8 g'8 aes'8 g'8 bes'4 
      | aes'8 bes'8 r4 r8 c''8 cis''8 d''8 
      | dis''4 e''4 f''4 g''4 
      \bar "||" \mark \default bes''8 d'''4 bes''8~^\markup{\left-align \small vib} bes''2~ 
      | bes''2. \tuplet 3/2 {c'''4 es'''8} 
      | r1 
      | r2. r8 bes''8~ 
      | \tuplet 3/2 {bes''8 c'''8 d'''8\bendAfter #+4 } es'''8 d'''8\bendAfter #+4  es'''4 des'''4 
      | c'''8. b''16~ b''16 bes''8 aes''16 g''8 ges''8~ ges''16 e''16 es''16 dis''16 
      | e''8 fis''8 g''8 a''8 bes''8 c'''8 d'''4 
      | des'''8 r8 r4 des'''8. c'''16~ c'''4~ 
      | c'''4~ c'''16 des'''8 c'''16 des'''8 c'''8 bes''8 bes''8 
      | g''8 ges''8 e''4 b'16 c''8. e''4 
      | \tuplet 3/2 {f''4 ges''8~} ges''8. f''16~ f''8 e''8~ e''8. es''16~ 
      | es''8. c''16 des''4 b'16 c''8 bes'16~ bes'16 a'8 g'16 
      | aes'4~ aes'16 d'8 e'16~ e'16 g'8 f'16 aes'4 
      | c''4 f''4 aes''4\bendAfter #+4  d'''8. aes''16~ 
      | aes''4 \tuplet 3/2 {aes''4 g''8} f''8 r8 r4 
      | r1 
      \bar "||" r2 ges''8 r8 r4 
      | e''2 ges''4. bes'8 
      | r1 
      | ges''4~ ges''16 e''8 ges''16~ ges''8 e''8 e''4~ 
      | e''16 dis''8 e''16~ e''4 dis''4 \tuplet 3/2 {e''4 d''8} 
      | \tuplet 3/2 {ges''4 es''8} g''4. ges''4 e''8~ 
      | e''8 es''8~ es''8. f'16 e''4 b'16 es''8. 
      | c''16 des''8.~ des''8 dis''4 e''4 bes'8 
      | r4 c''4 es''2~^\markup{\left-align \small vib} 
      | es''2. des''4 
      | \tuplet 3/2 {dis'4\glissando  e'8~} e'4 e'2 
      | e'2 g'8 f'8 e'4 
      | e'4 f'4 g'4 aes'8. f'16 
      | bes'2 c''8 aes'8~ aes'16 f'8 d'16 
      | e'4 \tuplet 3/2 {f'4 g'8~^\markup{\left-align \small vib}} g'4 r4 
      | r1 
      \bar "||" r4 g''8 gis''8 a''8 ges''8~ ges''16 dis''8 e''16~ 
      | e''16 f''8 e''16 es''4 c''16 d''8 c''16~ c''16 b'8 a'16~ 
      | a'8 aes'8 f'16 a'8. f'16 b'8 a'16~ \tuplet 6/4 {a'16 c''4 d''16~} 
      | d''8 dis''4 e''8 f''4 g''4 
      | f''16\bendAfter #+4  g''16 aes''2..~^\markup{\left-align \small vib} 
      | aes''4.. g''16~ g''8 aes''8 \tuplet 3/2 {g''4 d''8~} 
      | d''4.. c''16 d''8. es''16 c''16 g'16 r8 
      | r1 
      | r4 r8 des'''8 c'''16 bes''8 aes''16~ aes''16 g''8 f''16~ 
      | f''16 es''8 d''16 des''4 \tuplet 6/4 {d'''16 c'''16 bes''8. aes''16~} aes''16 g''8 f''16~ 
      | \tuplet 6/4 {f''8 cis'''16\bendAfter #+4  d'''16 c'''16 bes''16~} bes''8 aes''16 g''16~ g''8 f''8~ \tuplet 6/4 {f''16 d'''16 c'''16 bes''8.} 
      | aes''8 g''8 \tuplet 3/2 {des'''8 c'''8 bes''8} a''16 aes''8 g''16~ g''8 f''8 
      | \tuplet 6/4 {d'''16 c'''16 bes''8 aes''16 aes''16~} aes''16 g''8 f''16~ \tuplet 3/2 {f''8 es''8 d''8} \tuplet 3/2 {des''4 f'8} 
      | aes'8 c''4 dis''4 e''4 f''8~ 
      | f''8 ges''4 f''4 e''4 dis''8~ 
      | dis''8 c''8 des''8 bes'8 \tuplet 3/2 {es''4 bes'8} e''4~^\markup{\left-align \small vib} 
      \bar "||" e''1~ 
      | e''2. \tuplet 3/2 {es''4 c''8} 
      | \tuplet 3/2 {des''4 fis'8} g'4 \tuplet 6/4 {bes'4 ges'16 des'16} r4 
      | r1 
      | r8. aes16~ aes4\glissando  bes2~ 
      | bes2. a16 aes16 g16 ges16 
      | e1~ 
      | e4. ges4 r8 r4 
      | r8. des'16~ des'8. c'16~ c'8. g16~ g8. bes16~ 
      | bes8. c'16~ c'4 a16 des'16\bendAfter #+4  e'4 f8 
      | bes2 bes2~ 
      | bes8 bes8 c'4 c'8 bes8 \tuplet 3/2 {aes4 g8} 
      | aes2 aes8 g8 f8 r8 
      | r2 r8. aes16 g4~ 
      | g16 aes8 c'16 f'4 g'8 aes'8 c''8 f''8 
      | dis''8\bendAfter #+4  e''4. es''8 d''8 des''8 c''8 
      \bar "||" bes'8 bes'8 c''8. bes'16 \tuplet 3/2 {es''4 c''8} r4\bar  ".."
    }
    >>
>>    
}
