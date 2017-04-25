\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Home Fries"
  composer = "Joshua Redman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | es1:7 
      | es1:7 | s1 | s1 | s1 | aes1:7 | ges1:11+.9 | f1:7 | bes1:7 
      | es1:7 | s1 | aes1:7 | a1:dim | g2:min7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | ges1:11+.9 | f1:7 | bes1:7 
      | es1:7 | s1 | aes1:7 | a1:dim | g2:min7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | ges1:11+.9 | f1:7 | bes1:7 
      | es1:7 | s1 | aes1:7 | a1:dim | g2:min7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | ges1:11+.9 | f1:7 | bes1:7 
      | es1:7 | s1 | aes1:7 | a1:dim | g2:min7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | ges1:11+.9 | f1:7 | bes1:7 
      | es1:7 | s1 | aes1:7 | a1:dim | g2:min7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | ges1:11+.9 | f1:7 | bes1:7 
      | es1:7 | s1 | aes1:7 | a1:dim | g2:min7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s2 r4 s4|
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


      \tempo 4 = 181
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r8 des'8 bes8 es8 a8 aes16 f16 es4 
      \bar "||" \mark \default r2 \tuplet 3/2 {es4 ges8} aes8. aes16~ 
      | aes8\glissando  a8 \tuplet 3/2 {aes4 ges8} aes4 \tuplet 5/4 {ges4 aes16~} 
      | aes8\glissando  a8 aes8 ges8 aes4~ \tuplet 6/4 {aes16 ges4 a16~} 
      | a16\glissando  bes8 des'16\glissando  es'4~ es'16 d'8 des'16~ des'16 b8 aes16 
      | b8\glissando  c'8 f'4.^\markup{\left-align \small vib} r8 r4 
      | bes4 e'4.. d'16 es'4~ 
      | es'8 d'8 des'8 c'8 bes8 a8 c16 es8 g16 
      | f8 es8 \tuplet 3/2 {a,8 c8 cis8} d4 \tuplet 3/2 {b4 a8} 
      | bes4^\markup{\left-align \small vib} r2 \tuplet 3/2 {aes'4 fis'8} 
      | g'4.^\markup{\left-align \small vib} r8 r4 f''8 e''8 
      | es''4.^\markup{\left-align \small vib} r8 r4 \tuplet 3/2 {c''4 aes'8~} 
      | aes'8 fis'4 r8 r4 d'8 g'8~ 
      | g'8 bes'8 \tuplet 3/2 {aes'4 fis'8} \tuplet 3/2 {g'4 f'8} e'8 g'8 
      | f'8 g'8 aes'8 bes'8 ges'8 bes8 \tuplet 3/2 {d'4 es'8~} 
      | es'8 g'8 \tuplet 3/2 {ges'8 f'8 e'8} es'8 d'8 des'8 f8 
      | a8 c'8 b8 a8 bes8 aes8 f8. fis16~ 
      \bar "||" \mark \default fis4 g4 aes4 a4 
      | bes4 c'4 des'4 \tuplet 3/2 {es'4 es'8\glissando } 
      | f'4.. des'16~ des'16 c'8 bes16 \tuplet 3/2 {a4 f8} 
      | \tuplet 3/2 {aes4 f8~} f16 fis8 g16~ g4 r4 
      | r4 r8. bes'16~ bes'4 r4 
      | r4 aes'8 ges'8 f'4 es'8. f'16~ 
      | f'4 a4 r4 r8 es'8 
      | d'8 bes'8 r2 \tuplet 6/4 {r4 r16 g''16~} 
      | g''8 r8 r4 \tuplet 3/2 {c''4 des''8~} des''8 r8 
      | r8 f'8 a'8 c''8~ c''16 b'8 e'16~ e'4 
      | bes'8 r8 r4 c'8. aes'16~ aes'8 r8 
      | r8. fis'16~ fis'16 a8 bes16 f'8. es'16~ es'8. fis16 
      | d'4 r4 \tuplet 3/2 {c'4 b8~} b16 c'8 bes16~ 
      | bes16 aes8 es16~ es8 c8 b,8 g8~ g8. f16~ 
      | f16 es8 f16 \tuplet 3/2 {g4 bes8~} \tuplet 3/2 {bes8 e8 ges8} aes4 
      | \tuplet 3/2 {e'4 des'8~} \tuplet 3/2 {des'8 b8 a8} aes8 bes8~ \tuplet 3/2 {bes8 b8 des'8~} 
      \bar "||" \mark \default des'8 es'8~ es'16 c'8 des'16 f'4 c''4~^\markup{\left-align \small vib} 
      | c''8 r8 r2 r8 a'16 bes'16 
      | c''8 des''8~ des''16 f'16 a'16 c''16~ \tuplet 3/2 {c''8 b'8 a'8} bes'8 aes'16 f'16~ 
      | \tuplet 3/2 {f'8 fis'8 g'8~} \tuplet 3/2 {g'8 es'8 f'8} \tuplet 3/2 {des'4 c'8} b8 bes8~ 
      | bes16 a8 g16~ \tuplet 3/2 {g8 aes8 f8~} f16 ges8 bes16~ \tuplet 3/2 {bes8 des'8 es'8} 
      | e'4 es''4 d'8 es'8~ es'16 d''8 c''16~ 
      | c''8 bes'8 a'4~ a'16 es'8 c'16~ c'16 aes8 f16 
      | cis'8 d'8 r2. 
      | \tuplet 6/4 {r4 r16 es'16~} es'4 \tuplet 3/2 {f'8\glissando  ges'8 es'8~} es'8 es'8~ 
      | es'8 r8 r4 bes'8 aes'8 es'4 
      | r4 r8. c''16~ c''8 es'4 es'8~ 
      | es'8 r8 r4 \tuplet 3/2 {r8 d''8 es''8} c''8 d''8 
      | bes'8 g'4 f'8 e'8 des'8 c'8 bes8 
      | g8 aes8 \tuplet 3/2 {c'8 es'8 g'8} bes'8 ges'8 d'8 b8 
      | bes8 aes'8~ \tuplet 6/4 {aes'4~ aes'16 g'16~} g'8\glissando  aes'8 a'8 bes'8~ 
      | bes'8 r8 r4 bes'8 a'8 aes'8 des''8 
      \bar "||" \mark \default ges'8 a'8 \tuplet 3/2 {c''4 a'8} b'4 g'8 bes'8 
      | \tuplet 3/2 {e'4 aes'8~} aes'16 ges'8 d'16~ \tuplet 6/4 {d'8 ges'8 e'16 d'16~} d'16 b8 a16~ 
      | \tuplet 3/2 {a8 b8 des'8} a8 bes4 f8 \tuplet 6/4 {aes8. bes8 g16~} 
      | g8 es8 \tuplet 6/4 {des8. bes,8 a,16~} a,8. b16~ b8 es8~ 
      | es8 r8 r4 r16 ges8 a16 \tuplet 3/2 {des'8 f'8 e'8} 
      | es'16 des'16 c'16 bes16 \tuplet 3/2 {aes8 g8 ges8} \tuplet 3/2 {f8 e8 d8} \tuplet 6/4 {es8 des8 c16 bes,16~} 
      | bes,16 a,16 g16 es16 des8 f16 e16 \tuplet 3/2 {es8 f8 es8} f16 aes16 c'16 fis16~ 
      | fis16 g16 bes16 a16 \tuplet 3/2 {aes8 bes8 c'8} fis'16 g'16 bes'16 f'16 \tuplet 6/4 {ges'8 d'16 b16 a8} 
      | bes8 r8 r4 r8 fis8 g16 bes16 des'16 f'16 
      | c'8 es'8~ \tuplet 3/2 {es'8 d'8 c'8} des'8 es'8 f'8 aes'8 
      | c''4. f'8 f'8. f'16~ f'8 f'8~ 
      | f'8. fis'16~ fis'8 r8 \tuplet 6/4 {r4 r16 d''16~} d''4~ 
      | d''8 g'8 bes'8 aes'8 g'8 f'8 \tuplet 3/2 {e'4 g'8} 
      | f'8 g'4 a'8 \tuplet 3/2 {bes'4 aes'8~} \tuplet 3/2 {aes'8 a'8 g'8} 
      | g'8 es'8 \tuplet 3/2 {ges'8 f'8 d'8} es'8 c'8 aes8 f8 
      | g8 bes8 r4 bes8. c'16 \tuplet 3/2 {es'4 fis'8} 
      \bar "||" \mark \default g'8. ges'16~ ges'4 es'4 c'4~^\markup{\left-align \small vib} 
      | c'4 \tuplet 6/4 {r4 r16 bes'16~} bes'8 aes'8 ges'16 es'8 es'16~ 
      | es'4 es'4 fis'8 g'8 r4 
      | r2 bes8 c'8 es'8. f'16~ 
      | f'8 es'8 ges'8. es'16~ es'4 c'4 
      | f''4 fis''8 es''8 cis''8 bes'16 aes'16~ aes'8 fis'8 
      | \tuplet 6/4 {aes'4 g'16 aes'16~} aes'8 ges'8 \tuplet 3/2 {aes'4 aes'8} ges'8 bes'8~ 
      | bes'8. b''16~ b''8 a''4 aes''8~ aes''8. fis''16 
      | g''8 es''8 f''8 c''8 c''8 bes'8 a'8. es''16~ 
      | es''8 b'8 g'8 e'8 es'8 des'8 bes8 b8 
      | c'8. b'16~ b'8 c''8 aes'8. aes'16 r4 
      | r8 c''4\glissando  d''8 aes'4 cis''8.\glissando  es''16~ 
      | es''16 d''8 c''16~ c''16 bes'8 aes'16 g'8 f'8 e'8 g'8~ 
      | g'16 f'8 g'16 aes'8 a'8 bes'8 c''8 d''8 f''8 
      | d''8 es''4. \tuplet 3/2 {f''8 g''8 bes''8} c'''8. cis'''16\glissando  
      | d'''8 r8 r8 bes''8 a''8 ges''8 es''8. es''16~ 
      \bar "||" \mark \default es''4 es''4 r4 es''8 es''8 
      | es''16 es''16 es''8 \tuplet 3/2 {es''8 es''8 es''8} \tuplet 3/2 {fis''8 g''4} \tuplet 6/4 {r4 r16 es''16~} 
      | es''4 es''4..\bendAfter #-4  es''16 es''8 es''8 
      | es''16 es''8 es''16~ es''16 es''16 es''16 es''16 \tuplet 3/2 {aes''8\glissando  bes''16 r8.} \tuplet 6/4 {r4 r16 es''16~} 
      | \tuplet 6/4 {es''4~ es''16 es''16~^\markup{\left-align \small vib}} es''4 r2 
      | c'''4 bes''8 a''8 fis''8 ges''8 f''16 e''8. 
      | \tuplet 3/2 {es''4 c''8} \tuplet 3/2 {bes'4 f'8~} f'16 b'16 aes'16 f'16 es'8 b8 
      | d'8 f'8 aes'8 c''8~ c''16 d''16\glissando  es''8 d''8 c''8 
      | bes'8 g'8~ g'16 a'16 aes'16 fis'16 g'4 \tuplet 3/2 {f'4 des'8~} 
      | des'16 bes8 f16~ f16 aes8 g16~ g8 r8 r8 a'8\glissando  
      | bes'4 \tuplet 3/2 {aes'4 ges'8} es'8. c'16~ c'8 ges'8~^\markup{\left-align \small vib} 
      | ges'8 r8 r4 r8 es'8~ es'16 a'16 bes'16 cis''16 
      | a'8 r8 r8 es'8 \tuplet 3/2 {a'8 bes'8 c''8} a'16 aes'16 ges'16 aes'16~ 
      | aes'16 ges'16 es'8 \tuplet 3/2 {des'8 bes8 a8} aes16 ges8 es16 \tuplet 3/2 {aes8 es8 fis8} 
      | \tuplet 3/2 {g8 bes8 c'8} es'8. e'16\glissando  f'8 es'8 \tuplet 3/2 {des'8 bes8 ges8} 
      | aes16 a16 aes16 ges16 es8 aes8 ges4 \tuplet 3/2 {b,8 c8 es8~} 
      \bar "||" es8 c16 b,16 bes,4 r2\bar  ".."
    }
    >>
>>    
}
