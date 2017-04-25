\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Train"
  composer = "John Coltrane"
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
      | r1 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | s1 | s1 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | s1 
      | s1 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | s1 | s1 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | s1 
      | s1 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | s1 | s1 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | s1 
      | s1 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | s1 | s1 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | fis1:7 | f1:min7 | bes1:7 | es1:7 | s1 
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


      \tempo 4 = 141
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 f'8 es'16 f'16 es'8 des'8 bes8 es'8 
      \bar "||" \mark \default f'1~ 
      | f'8 es'8 f'8 es'8~ es'8. des'16 \tuplet 3/2 {es'4 f'8~} 
      | \tuplet 6/4 {f'4 e'16 f'16~} f'2 r4 
      | r8 e'8 f'2~ f'8. es'16~ 
      | \tuplet 3/2 {es'8 f'8 es'8~} es'16 aes'16 ges'16 es'16 f'4.. es'16 
      | \tuplet 3/2 {aes'8 ges'8 es'8} f'16 es'8. \tuplet 3/2 {aes'8 ges'8 es'8} f'8 es'8 
      | \tuplet 3/2 {ges'8 es'8 f'8} \tuplet 3/2 {es'8 des'8 bes8~} bes16 aes8 f16 \tuplet 3/2 {g8 es'4~^\markup{\left-align \small vib}} 
      | es'4.. es'16~ \tuplet 3/2 {es'8 des'8 f'8~} f'4~ 
      | \tuplet 6/4 {f'4~ f'16 es'16~} es'8 ges'16 es'16 bes8 aes4 r8 
      | r4 \tuplet 5/4 {aes8 b16 es'16 ges'16} \tuplet 3/2 {bes'8 des''8 b'8} bes'16 aes'16 g'16 f'16 
      | \tuplet 3/2 {es'8 c'8 aes8} ges16 d'16 es'16 f'16 d'16 es'16 d'16 c'16 b16 bes16 aes16 f16 
      | g8 es'8 r4 r8 es'8 f'16 g'16 bes'16 c''16~ 
      \bar "||" \mark \default \tuplet 3/2 {c''8 c''8\glissando  des''8~} des''8. c''16 \tuplet 6/4 {b'16 bes'16 aes'16 g'8 f'16} es'16 d'16 des'8~ 
      | \tuplet 6/4 {des'8. c'16 cis'16 d'16} \tuplet 5/4 {es'16 f'16 ges'16 aes'16 bes'16~} bes'4 \tuplet 6/4 {a'8 ges'8 f'16 es'16~} 
      | es'16 fis'16\glissando  g'16 es'16 g'16 aes'16 f'16 a'16 c''16 bes'16 g'16 aes'16 f'16 g'16 f'16 es'16 
      | d'16 des'16 es'16 f'16 des'16 c'16 bes16 a16 bes16 es'8 es'16~ \tuplet 3/2 {es'8 ges'8 es'8} 
      | ges'8 aes'8~ aes'8. bes'16~ bes'8 r8 r4 
      | r4 r8 a'8 bes'16 a'8 aes'16 ges'8 es'8~ 
      | es'16 fis'16\glissando  g'8~ \tuplet 5/4 {g'8 aes'16\glissando  a'16 bes'16} c''16 bes'8.~^\markup{\left-align \small vib} bes'8 aes'16 g'16 
      | \tuplet 6/4 {f'16 es'8 d'16 c'16 b16} bes8 aes16 g16 f16 e8 bes16 \tuplet 6/4 {g8 des'8 e'16 g'16~} 
      | g'16 e'16 f'16 c'16 aes16 f16 c'8 r4 \tuplet 3/2 {r8 e'8 f'8~} 
      | \tuplet 6/4 {f'16 c'16 e'8 f'16 g'16} \tuplet 6/4 {aes'8 f'8 e'16 es'16~} \tuplet 6/4 {es'16 d'8 c'16 b16 bes16} a16 aes16 bes16 cis'16 
      | d'16 es'16 f'16 g'16 es'8 es'8 es'4 bes16 des'16 es'8 
      | r2 \tuplet 3/2 {f'8\glissando  g'4~} g'8. aes'16~ 
      \bar "||" \mark \default aes'16 g'8 g'16~ \tuplet 3/2 {g'8 g'8 es'8~} es'8 des'8~ des'16 f'8 d'16\glissando  
      | es'4~ es'16 c'16 aes16 es16~ es16 ges16 d'8 r4 
      | r4 \tuplet 3/2 {bes8 des'8 f'8} aes'8 a'16 c''16 es''4~ 
      | es''16 b'8 des'16~ des'8 b'8~ b'16 es''8 des''16~ des''16 aes'16 e'16 es'16 
      | r4 \tuplet 3/2 {r8 es'8 d'8} es'16 f'16 ges'16 bes'16 des''8 c''16 es''16~^\markup{\left-align \small vib} 
      | es''4 bes'8 es'8~ es'16 ges'8 a'16~ \tuplet 5/4 {a'8 d''16 des''16 c''16} 
      | bes'4.^\markup{\left-align \small vib} g'16 f'16 \tuplet 3/2 {es'8 d'8 c'8~} c'8 r8 
      | r8 g8 aes16 bes16 c'16 d'16 es'16 f'8 bes'16~ bes'16 e'16 des'16 a32 ges32~ 
      | ges4 bes4 bes16 aes16 bes16 c'16 \tuplet 5/4 {es'16 g'16 aes'16 g'16 e'16} 
      | g'16 f'8.~ \tuplet 6/4 {f'16 g'8 ges'16 f'16 e'16} \tuplet 3/2 {es'8 d'8 c'8} b16 a16 aes16 bes16~ 
      | \tuplet 6/4 {bes16 c'16 d'16 es'8 f'16~} f'32 g'32 aes'16 bes'16. g'32 aes'16 b'16 aes'16 g'16 f'16 es'16 c'16 aes16 
      | f16 d'16 es'16 f'16 d'16 es'16 c'16 aes16 f16 d'8.~ d'16 bes'16 aes'16 g'16 
      \bar "||" \mark \default f'16 es'8 es'16~ es'16 f'16\glissando  g'16 bes'16~^\markup{\left-align \small vib} bes'4 r4 
      | r4 aes'16\glissando  bes'4. aes'16 b'16 bes'16 aes'8 
      | r4 \tuplet 6/4 {r16 ges'16\glissando  aes'16 g'16 f'16 des'16~} des'16 bes16 f16 aes16 f'16 ges'16 es'16 des'16 
      | \tuplet 6/4 {es'16 f'8 g'16 aes'16 bes'16} \tuplet 3/2 {c''8 e'8 fis'8} g'16 a'16 b'16 d''16 \tuplet 6/4 {des''16 c''16 b'16 a'8.} 
      | r4 b'16 des''16 es''16 des''16 c''16 aes'16 a'16 bes'16~ \tuplet 6/4 {bes'16 ges'8 aes'16 bes'16 ges'16~} 
      | \tuplet 6/4 {ges'16 f'16 es'8 d'16 es'16} \tuplet 3/2 {aes'8 ges'8 des'8} bes16 f'8. \tuplet 5/4 {es'16 f'16 des'16 es'16 f'16} 
      | b'16 bes'16 aes'16 g'16 \tuplet 5/4 {f'16 es'16 d'16 c'16 b16} bes16 aes16 g16 f16 es8 bes8 
      | cis'16 d'16 f'16 d'16 es'16 f'16 g'16 bes'16 \tuplet 6/4 {d''8 des''16 c''16 bes'16 g'16} cis''16 d''16 des''16 b'16 
      | \tuplet 6/4 {a'16 aes'8 ges'8 c'16~} \tuplet 6/4 {c'16 c''8 aes'16 f'16 des'16} \tuplet 5/4 {e'8 c'16 es'16 c'16} r4 
      | r16 g'16 aes'16 e'16 ges'16 f'16 e'16 f'16 \tuplet 5/4 {e'8 ges'16 e'16 es'16} d'32 e'16 ges'32 a'32 des''16 b'32~ 
      | b'16 bes'16 aes'16 g'16 f'16 es'16 f'16 bes'16 es''2 
      | bes'16 c''16 bes'8 r4 a'16\glissando  des''8 b'16 bes'16 aes'16 g'16 f'16 
      \bar "||" \mark \default \tuplet 3/2 {es'8 bes8 es'8} g'16 aes'16 f'16 des'16 \tuplet 3/2 {bes4 aes8} \tuplet 3/2 {g8 es'4~} 
      | \tuplet 6/4 {es'16 c'16 cis'16 d'16 es'8} f'16 ges'16 aes'16 bes'16~ \tuplet 6/4 {bes'4~ bes'16 b'16~} b'16 bes'16 ges'16 es'16 
      | r4 r8. f'16 g'8. es'16 \tuplet 6/4 {g'8 aes'16 f'16 aes'16 a'16} 
      | c''16 bes'16 a'16. g'32~ g'16 f'16 des'16 bes16 \tuplet 3/2 {des'8 es'8 f'8} ges'16 a'16\glissando  es''8~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {es''4~ es''16 des''16} c''8 aes'8 \tuplet 3/2 {aes'8 c''8 bes'8~^\markup{\left-align \small vib}} bes'4 
      | r4 \tuplet 6/4 {r4 aes'16 bes'16~} bes'16. c''32 des''16 c''32 b'32 \tuplet 6/4 {bes'8 ges'8 f'16 d'16} 
      | \tuplet 3/2 {f'8 d'8 es'8} \tuplet 6/4 {f'16 g'16 es'8 f'16 g'16} \tuplet 5/4 {aes'8 aes'16 b'16 c''16} bes'16 g'16 es'16 c'16 
      | \tuplet 3/2 {g'8 f'8 d'8} \tuplet 3/2 {bes8 des'8 es'8~} es'8. des'16 es'16 des'16 b16 ges16 
      | f16 g16 aes16 bes16 c'16 d'16 es'16 f'16 g'16 bes'16 aes'16 es'16 \tuplet 3/2 {g'8 f'16 r8.} 
      | r4 \tuplet 3/2 {r8 c''8 des''8} b'16 bes'16 ges'16 es'16 b16 f'16 des'16 aes16 
      | f16 cis'16 d'16 f'16 d'16 es'16 f'8 bes'16 es''8 es''16 bes'16 b'16 b'16 bes'16~ 
      | bes'4 \tuplet 10/8 {a'16 bes'32 c''32 d''16. des''32 c''32 b'32} bes'16 a'16 aes'16 g'16~ \tuplet 6/4 {g'16 f'8 es'16 d'16 c'16~} 
      \bar "||" \mark \default c'16 bes16 es'16 g'16~ g'16 a'16\glissando  bes'8~ bes'4. a'16 es'16 
      | \tuplet 3/2 {ges'8 aes'8 bes'8} bes'8 bes8 \tuplet 6/4 {es'16 ges'16 aes'16 bes'8.} r4 
      | r16 bes16 es'16 ges'16~ \tuplet 6/4 {ges'16 a'16 b'16 des''8.~} \tuplet 5/4 {des''8 c''16 bes'16 aes'16} ges'16 bes'8 es'16~ 
      | es'8 ges'8 \tuplet 6/4 {aes'16 g'16 f'16 des'16 b16 bes16~} \tuplet 6/4 {bes16 es'8 fis'16 g'16 b'16} \tuplet 5/4 {e'8 g'16 b'16 des'16~} 
      | \tuplet 6/4 {des'4~ des'16 c'16} \tuplet 3/2 {des'8 es'8 f'8} \tuplet 6/4 {ges'8 aes'8 bes'16 des''16~} des''8 f''16 es''16 
      | bes'4 \tuplet 7/8 {bes'16 bes'16 b'32 bes'32 aes'32} \tuplet 5/4 {ges'16 des'16 bes16 ges'16 aes'16~} aes'8. ges'16 
      | es'8 g'8~ \tuplet 5/4 {g'16 es'16 f'16 g'16 aes'16} \tuplet 6/4 {f'16 aes'16 c''16 bes'8.} g'8 r8 
      | r4 d''16 des''16 c''16 bes'16 \tuplet 6/4 {g'16 ges'16 des''8 a'16 ges'16} es'16 f'16 es'16 e'16~ 
      | \tuplet 6/4 {e'16 d'16 es'16 c''8 aes'16} \tuplet 5/4 {f'16 es'16 e'16 c'16 d'16} \tuplet 3/2 {bes8 es'8 e'8} c'16 e'16 g'16 f'16~ 
      | \tuplet 6/4 {f'16 e'16 es'8 d'16 c'16} b16 bes16 a16 aes16 bes16 c'16 d'16 g'16~ g'16 ges'16 ges'16 d'16 
      | c'16 bes16 fis'16\glissando  g'16 es'8 es'8~ es'4~ es'16 e'16 ges'8 
      | r4 \tuplet 3/2 {f'8 g'8 a'8} f'16 a'16 des''8 b'32 bes'16. ges'16 e'32 b32 
      \bar "||" \mark \default \tuplet 3/2 {bes8 aes'8 g'8} f'16 es'16 d'16 des'16 \tuplet 6/4 {es'16 f'8 g'16 aes'16 bes'16} c''16 bes'16 g'16 ges'16 
      | aes'8 aes'8~ \tuplet 6/4 {aes'16 aes'16 bes'8. bes'16\glissando } \tuplet 3/2 {b'8 es''8 b'8} \tuplet 3/2 {bes'8 aes'16 r8.} 
      | r4 \tuplet 6/4 {g'8 aes'16 g'16 f'8} des'16 bes16 des'16 f'16 f'16 es'8.~ 
      | es'16 des'16 es'16 f'16 des'16 c'16 bes8 bes16 es'16 des'16 aes16 bes16 b16 e'16 g'16 
      | \tuplet 5/4 {b'16 bes'16 c''16 b'16 bes'16~} bes'4 aes'16 ges'16 es'16 ges'16 aes'8 a'8 
      | \tuplet 3/2 {aes'8 ges'8 es'8} aes'8. ges'16 \tuplet 3/2 {es'8 des'8 bes8~} bes8 aes8~ 
      | aes8 g8 \tuplet 5/4 {aes16 bes16 c'16 d'16 es'16} f'16 d'16 es'16 g'16 \tuplet 6/4 {bes'16 aes'8 f'16 aes'16 c''16} 
      | bes'4. g'8 bes'16 d''16 c''16 bes'16 \tuplet 6/4 {g'16 ges'8 des''16 a'16 g'16} 
      | \tuplet 3/2 {f'8 aes'4} \tuplet 6/4 {c''8. c''8 aes'16} f'16 c'16 es'16 c'16 d'8 r8 
      | r4 a'16 c''16 des''8~ \tuplet 3/2 {des''8 bes'8 aes'8} ges'16 es'16 ges'16 aes'16 
      | \tuplet 3/2 {es'4 es'8~^\markup{\left-align \small vib}} es'4~ \tuplet 3/2 {es'8 des'8 es'8} \tuplet 3/2 {f'8 des'16 r8.} 
      | r4 c'8 d'16 es'16 \tuplet 6/4 {c'8 fis'16 g'16 ges'16 d'16} c'16 bes16 aes8~ 
      \bar "||" \mark \default aes8 g8~ g8. bes16 es'8 r8 r4 
      | aes4 c'8 d'16 es'16~ es'4 r4 
      | e16 g16 bes16 es'16~ es'8 es'8 es'4. des'16 es'16 
      | f'16 des'16 c'16 bes16 es'8 r8 r8 g'8~ \tuplet 6/4 {g'16 f'8 es'16 des'16 c'16} 
      | bes8 aes8~ aes16 bes16 c'8 \tuplet 3/2 {c'8 es'8 c'8} es'16 ges'16 es'16 ges'16~ 
      | ges'16 a'16 bes'8~ \tuplet 3/2 {bes'8 aes'8 es'8} ges'16 aes'16 bes'8 r4 
      | \tuplet 3/2 {r8 bes8 g8} bes16 d'16 bes32 d'16 f'32~ f'16 d'16 f'16 bes'16 d''8 c''8~ 
      | c''8 fis16 a16 \tuplet 5/4 {cis'16 e'16 aes'16 b'16 cis''16~} cis''8 b'8 a'16 fis'16 cis'8~ 
      | \tuplet 6/4 {cis'8. f16 aes16 c'16} es'16 g'16 bes'16 es''16~ es''16 c''16 aes'16 f'16~ f'4 
      | des'16 es'16 g'16 bes'16 d''16\glissando  es''8. \tuplet 3/2 {des''8 b'8 aes'8~} \tuplet 5/4 {aes'16 e'16 ges'16 aes'16 b'16} 
      | \tuplet 3/2 {bes'8 aes'8 g'8} es'8 es'8 es'4.^\markup{\left-align \small vib} c'16 es'16 
      | g'16 aes'16 e'16 g'16 f'16 e'16 es'16 d'16~ d'16 c'16 b16 bes16 a16 aes16 a16 c'16 
      \bar "||" \mark \default d'16 es'8. r2.\bar  ".."
    }
    >>
>>    
}
