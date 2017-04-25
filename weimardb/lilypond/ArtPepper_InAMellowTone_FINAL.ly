\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "In a Mellow Tone"
  composer = "Art Pepper"
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
      | es1:6 | s1 
      | f1:7 | bes1:7 | es1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:6 | des1:7 | es1:6 | c1:7 | f1:7 | s1 | bes1:7 | c1:7 
      | f1:7 | bes1:7 | es1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:7 | a1:dim7 | es1:6 | c1:7 | f1:7 | bes1:7 | es1:6 | s1 
      | f1:7 | bes1:7 | es1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:6 | des1:7 | es1:6 | c1:7 | f1:7 | s1 | bes1:7 | c1:7 
      | f1:7 | bes1:7 | es1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:7 | a1:dim7 | es1:6 | c1:7 | f1:7 | bes1:7 | es1:6 | s1 
      | f1:7 | bes1:7 | es1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:6 | des1:7 | es1:6 | c1:7 | es1:7 | s1 | bes1:7 | c1:7 
      | f1:7 | bes1:7 | des1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:7 | a1:dim7 | es1:6 | c1:7 | f1:7 | bes1:7 | es1:6 | s1 
      | f1:7 | bes1:7 | es1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:6 | des1:7 | es1:6 | c1:7 | f1:7 | s1 | bes1:7 | c1:7 
      | f1:7 | bes1:7 | es1:6 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | aes1:7 | a1:dim7 | es1:6 | c1:7 | f1:7 | bes1:7|
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


      \tempo 4 = 168
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r8 bes4 bes8 es'8 f'8 \tuplet 5/4 {d'8. es'16 f'16~} 
      | f'8 d'8 f'8. d'16 \tuplet 3/2 {e'4 des'8} \tuplet 3/2 {e'4 des'8} 
      \bar "||" \mark \default es'4..^\markup{\left-align \small vib} c'16~ c'16 g'8 f'16~ f'16 es'8 c'16 
      | aes8 c'8 es'8 g'8~ g'16 ges'8 d'16~ d'16 bes8 a16~ 
      | a16 aes8 c'16 b8 a8 bes8. es16~^\markup{\left-align \small vib} es8. es16 
      | r1 
      | r16 g8 aes16 g8. g16 aes8 ges8 r4 
      | r4 r16 fis16 g16 des'16 bes4~ bes16 des'8 b16 
      | c'4~^\markup{\left-align \small vib} c'16 cis'8 d'16 es'8 f'8~ \tuplet 3/2 {f'8 c'8 des'8} 
      | \tuplet 3/2 {es'4 f'8~} \tuplet 3/2 {f'8 c'8 des'8} es'8 f'8~ f'16 c'8 des'16 
      | \tuplet 3/2 {es'4 f'8~} f'16 es'8 f'16~^\markup{\left-align \small vib} f'4 r4 
      | r1 
      | ges'8 f'8 es'8 f'4.^\markup{\left-align \small vib} r4 
      | d'8 r8 r4 \tuplet 3/2 {r8 bes8 c'8} \tuplet 3/2 {des'4 es'8~} 
      | es'16 b8 c'16 g8 bes8~ bes8. aes16 a4 
      | c'8 a8~ a4~ a16 c'8 es'16~^\markup{\left-align \small vib} es'4~ 
      | es'16 c'8 f16~ f8. f16 r2 
      | r2 d8. es16~ es8 g8~ 
      \bar "||" g16 c'8 a16 r2 r8. c'16 
      | aes8 c'8~ c'16 es'8 fis'16 g'8 aes'8 r4 
      | r4 \tuplet 6/4 {r4 r16 ges'16~} ges'8. bes'16~ bes'16 es''8 d''16~ 
      | d''16 f''8 es''16~ es''8 bes'8 aes'4 c''4 
      | bes'4..^\markup{\left-align \small vib} g'16~ \tuplet 6/4 {g'16 es'4 des'16~} des'8 des'8~^\markup{\left-align \small vib} 
      | des'4 f'8 aes'8~ aes'16 g'8 es'16 \tuplet 3/2 {f'4 c'8} 
      | es'4..^\markup{\left-align \small vib} c'16 f'8. es'16 r4 
      | r1 
      | r8. aes16~ aes16 c'8 es'16~ es'8 f'8 es'8. ges'16~ 
      | ges'8 es'8 es'4.^\markup{\left-align \small vib} r8 r4 
      | r4 \tuplet 3/2 {r8 es'8 g'8} c''8. es''16~ es''8 c''8~ 
      | c''8 ges'4. es'4^\markup{\left-align \small vib} \tuplet 3/2 {c'4 es'8~} 
      | es'16 g'8 c''16~ c''16 g'8 f'16~ f'16 es'8 c'16~ \tuplet 3/2 {c'8 es'8 fis'8} 
      | \tuplet 3/2 {g'4 fis'8} g'4~ g'16 es'8 bes16~ bes16 g8 aes16 
      | \tuplet 3/2 {bes4 es'8~^\markup{\left-align \small vib}} es'4. g'8 c''4~ 
      | c''8 g'8 c''4 es''4 c''4 
      \bar "||" \mark \default es''4..^\markup{\left-align \small vib} c''16~ c''8 g'8 es'8 r8 
      | r2 r16 g'8 bes'16~ bes'16 g'8 f'16~ 
      | \tuplet 6/4 {f'8 es'8 f'16 es'16~} es'16 d'8 f'16 es'4 \tuplet 3/2 {bes4 bes8~} 
      | bes8 bes8 r2. 
      | r2 bes'8 c''16 bes'16 aes'8 r8 
      | r2 g'4 \tuplet 3/2 {bes'4 b'8~} 
      | b'16 c''8 cis''16~ cis''16 d''8 es''16~ es''16 f''8 es''16~ es''16 d''8 f''16 
      | es''8 r8 r8. c''16 es''8 f''8 es''16 c''8 es''16~ 
      | \tuplet 6/4 {es''16 f''4 es''16~} es''8 es''4.^\markup{\left-align \small vib} r4 
      | r4 r8 b'8 bes''8. aes''16~ aes''8 r8 
      | r1 
      | g''4 \tuplet 3/2 {c'''4 d'''8} r2 
      | r8 g''8 \tuplet 3/2 {cis'''4 d'''8} c'''2~ 
      | c'''4\glissando  r4 \tuplet 6/4 {r16 g''8. aes''16 g''16} es''8 g''8~ 
      | \tuplet 6/4 {g''16 f''8. g''16 f''16} c''8 es''8~ \tuplet 6/4 {es''16 d''4 bes'16~} bes'8 bes'8~ 
      | bes'8 r8 r4 d''8 r8 r4 
      \bar "||" \tuplet 3/2 {f''4 es''8} r2 r8. a'16 
      | \tuplet 3/2 {c''4 es''8} g''4~ g''16 es''8 bes'16~ bes'4 
      | aes'8 fis'8 \tuplet 3/2 {g'4 bes'8~^\markup{\left-align \small vib}} bes'4 r4 
      | r1 
      | g''8 aes''16 a''16 bes''16 b''16 c'''16 cis'''16 d'''16 es'''16 d'''16 des'''16 c'''8 r8 
      | r2 bes''4 g''8 bes''8~ 
      | bes''16 aes''8 es''16 r4 r16 f''8 des''16~ des''8. es''16~ 
      | es''8. c''16~ c''4 cis''4 d''4 
      | es''4..^\markup{\left-align \small vib} c''16 f''8 es''8 r4 
      | r2 \tuplet 3/2 {b'4 bes'8} r4 
      | r2 r16 fis'8 g'16 aes'4~ 
      | aes'8 fis'8~ fis'16 g'8 bes'16~ bes'16 d''8 f''16 e''8 d''8 
      | es''8. c''16 r4 a'4 \tuplet 3/2 {es''4 g''8~} 
      | g''16 ges''8 d''16~ d''16 bes'8 a'16 aes'8 c''8~ \tuplet 6/4 {c''16 b'4 f'16} 
      | bes'8 r8 r8 bes'8 es''8 bes'4 es''8~ 
      | es''8 es''8 fis''8 g''8 \tuplet 3/2 {es''4 f''8~} f''8 es''8~^\markup{\left-align \small vib} 
      \bar "||" \mark \default es''4 r2. 
      | es'''8 r8 r2. 
      | es'''4 des'''8 c'''8~ c'''16 bes''8 c'''16~ c'''8. bes''16~^\markup{\left-align \small vib} 
      | bes''4 aes''8 ges''8 es''4 f''8. es''16~^\markup{\left-align \small vib} 
      | es''4. r8 r2 
      | fis''16 g''16 ges''16 es''16~ \tuplet 5/4 {es''16 f''16 g''16 f''16 des''16~} \tuplet 6/4 {des''16 es''4 es''16} f''8 r8 
      | r4 r8 es''8 \tuplet 6/4 {fis''8 g''16 f''16 es''8} \tuplet 3/2 {f''4 es''8~^\markup{\left-align \small vib}} 
      | es''4 f''8 r8 r4 r8 es''8 
      | ges''4\glissando  es''8. des''16 es''4. r8 
      | r4 a''8 aes''8~ aes''16 ges''8 es''16 r4 
      | r1 
      | a''8. aes''16 ges''8. es''16~ es''4 c''4 
      | g''8 c'''8~ c'''16 g''8 f''16~ f''16 es''16 f''16 es''16 c''8 es''8~^\markup{\left-align \small vib} 
      | es''4 c''8 g''8 c'''8 es'''8 r4 
      | r2. r8 g'''8 
      | r2 g'''4..^\markup{\left-align \small vib} g'''16 
      \bar "||" r1 
      | es'''8 r8 r2. 
      | \tuplet 3/2 {des'''4 b''8} bes''8 r8 r2 
      | aes''8 a''16 aes''16 fis''8 g''8 \tuplet 3/2 {aes''4 fis''8} g''8 es''8 
      | f''8 g''16 f''16 des''8 f''8 e''8. c''16 es''8 d''8 
      | des''4 f'4 aes'4 c''4 
      | es''4~^\markup{\left-align \small vib} \tuplet 6/4 {es''4~ es''16 c''16~} c''8 g'8 f'8 r8 
      | r2 r8. es'16 c'8 g'8 
      | bes'8 r8 r4 r8. g'16~ g'16 aes'8 es'16~^\markup{\left-align \small vib} 
      | es'4 r2. 
      | r8 fis'8 g'8 bes'16 d''16 f''8 r8 \tuplet 6/4 {r4 r16 bes'16} 
      | d''4 f''16 g''16 f''16 d''16~ d''16 e''8 c''16 r4 
      | \tuplet 6/4 {r4 es''16 c''16~} \tuplet 3/2 {c''8 g''8 c'''8} g''4 c''4 
      | es''4^\markup{\left-align \small vib} c''4~ c''16 g''8 bes''16~ bes''16 g''8 f''16 
      | es''8 bes'8 r4 es''8 f''16 es''16 d''8 f''8 
      | es''8 ges'4 bes'8 d''8 f''8 \tuplet 3/2 {e''4 d''8} 
      \bar "||" \mark \default es''8 r8 r2 \tuplet 6/4 {a'8. d''16 es''16 g''16} 
      | ges''8 d''8 r2. 
      | \tuplet 5/4 {f''8 g''16 f''16 d''16~} \tuplet 6/4 {d''16 e''8 g''16 e''16 d''16~} d''8 es''8 bes'16 g'8 aes'16 
      | bes'8 r8 r4 r8 es''8 \tuplet 3/2 {g''4 bes''8} 
      | r1 
      | des'''4 c'''8 b''8 a''8 r8 r4 
      | r1 
      | c'''4. bes''8~ bes''16 aes''8 bes''16~ bes''8 aes''8~^\markup{\left-align \small vib} 
      | aes''4 ges''8 f''8 es''8 f''8 es''8 f''8~^\markup{\left-align \small vib} 
      | f''4. r8 r2 
      | r8 es''8 g''8 r8 r2 
      | bes''4. g''8 \tuplet 3/2 {bes''4 d'''8~^\markup{\left-align \small vib}} d'''4~ 
      | d'''8 r8 r2 c'''4 
      | es'''8 des'''16 c'''16 b''8 d'''8 c'''8 g''8~ g''16 f''8 es''16 
      | g''4 c''8. es''16~ es''8 d''8 bes'4~^\markup{\left-align \small vib} 
      | bes'8 r8 r4 c''8. f''16~ f''8 es''8 
      \bar "||" g''8. c''16 r2 r8 es''8 
      | fis''8 g''8 aes''8 a''8 bes''8 es''8 fis''8 g''8 
      | es''8 f''8 es''16 des''8 bes'16~ \tuplet 6/4 {bes'16 des''4 es''16~^\markup{\left-align \small vib}} es''4~ 
      | es''8 r8 r2 r8 bes'8 
      | des''8. f''16~ f''8. c''16~ c''8 es''4.^\markup{\left-align \small vib} 
      | des''4 f'4 aes'4 c''4 
      | es''4.^\markup{\left-align \small vib} r8 r2 
      | r8 aes'8 c''8 es''8 f''8 es''8 c''4 
      | es''4.^\markup{\left-align \small vib} r8 r2 
      | r4 r8 aes'8 b'8. es''16~ es''8 r8 
      | r4 r8 g'8 bes'8. d''16 f''8. d''16~ 
      | d''8 f''4 g''16 f''16 e''8 c''8 es''4 
      | fis''8 g''8~ g''2~ g''8 es''8 
      | fis''8 g''8 \tuplet 3/2 {aes''4 g''8~} \tuplet 6/4 {g''16 es''8. g''16 es''16} \tuplet 3/2 {des''4 es''8}\bar  ".."
    }
    >>
>>    
}
