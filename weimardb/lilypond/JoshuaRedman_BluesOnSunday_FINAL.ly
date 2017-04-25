\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues on Sunday"
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
      | es1:7 | s1 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | s1 | s1 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | c1:7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | c1:7 | f1:min7 | bes1:7 | es1:7 | bes1:7|
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


      \tempo 4 = 133
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r8 b'4 des''4 c''8 bes'8 es'8 
      | \tuplet 3/2 {aes'8\glissando  a'8 aes'8} \tuplet 3/2 {ges'8 es'8 des'8} \tuplet 3/2 {bes8 a8 aes8} ges4 
      \bar "||" \mark \default es4 r4 r8. es16 \tuplet 3/2 {ges8 aes8 bes8} 
      | \tuplet 3/2 {aes8\bendAfter #+4  a8 g8} \tuplet 3/2 {es4 aes8} ges4 \tuplet 3/2 {c8 des4} 
      | es8 r8 r4 r8 es8 \tuplet 3/2 {ges8 aes8 bes8} 
      | c'8\glissando  des'8 bes8 es8 g16\glissando  aes8 es16 ges4 
      | es8 r8 r2 \tuplet 3/2 {f'8 des'8 es'8} 
      | des'8 bes8 \tuplet 3/2 {es4 des8} aes16\glissando  a8 es16 \tuplet 3/2 {f8\glissando  ges4} 
      | es4 \tuplet 6/4 {r4 r16 f'16~} \tuplet 3/2 {f'8\bendAfter #+4  g'8 ges'8} aes'8 g'16 a'16~ 
      | a'16\bendAfter #+4  g'16 bes'8 es'8 es'4.^\markup{\left-align \small vib} r4 
      | r8 es'16\glissando  f'16~ \tuplet 6/4 {f'8 g'8. ges'16} \tuplet 3/2 {aes'4 c'8} \tuplet 3/2 {cis'8 d'8 es'8} 
      | f'4 bes8 c'8 des'8\bendAfter #+4  c'16 cis'16\bendAfter #+4  d'4 
      | es'8 es8 es8 ges4 r8 r4 
      | b'8\glissando  des''8 c''8 b'8 bes'4 es'16 f'16 ges'8 
      \bar "||" \mark \default es'4..^\markup{\left-align \small vib} bes16 \tuplet 3/2 {des'4 es'8} f'8 es'8~^\markup{\left-align \small vib} 
      | es'8 r8 r4 \tuplet 3/2 {a'8 aes'8 ges'8} es'4 
      | es'4 r4 r8 c''8 \tuplet 3/2 {des''8 a'8 c''8} 
      | bes'16 a'16 f'16 aes'16 \tuplet 3/2 {g'8 es'8 f'8} \tuplet 3/2 {e'8 des'8 a8} \tuplet 3/2 {e8 des8 es8~^\markup{\left-align \small vib}} 
      | es4 r4 r8 e'8 \tuplet 3/2 {ges'8 d'8 f'8} 
      | \tuplet 3/2 {es'8 bes8 des'8} \tuplet 3/2 {c'8 aes8 ges8} \tuplet 3/2 {bes8 ges8 f8} \tuplet 3/2 {es8 aes8 es8} 
      | \tuplet 3/2 {fis8 g8 aes8} \tuplet 3/2 {a8 bes8 es8} \tuplet 6/4 {fis8 g8 aes16 a16~} \tuplet 6/4 {a8 bes16 c'8 d'16~} 
      | d'16 f'16 d'16 es'16~ \tuplet 6/4 {es'16 e'8. g16 bes16~} bes16 des'16 c'16 g16~ g16 bes16 g16 aes16~ 
      | aes16 bes16 c'16 es'16 \tuplet 3/2 {g'8 e'8 f'8} \tuplet 3/2 {g'8 aes'8 bes'8} \tuplet 3/2 {c''8 es''8 d''8} 
      | bes'8 r8 r4 \tuplet 3/2 {f''8 fis''8 g''8} \tuplet 3/2 {es''8 des''8 bes'8} 
      | \tuplet 3/2 {a'8 aes'8 ges'8} es'4 \tuplet 3/2 {fis'8 g'8 bes'8\bendAfter #-4 } r4 
      | r8. aes'32 bes'32 b'8 c''8~ \tuplet 6/4 {c''16 cis''4 d''16~} d''8 es''8 
      \bar "||" \mark \default es''4 es'4 ges'4^\markup{\left-align \small vib} r4 
      | \tuplet 6/4 {r8. ges'8 b'16~} b'8 c''8~ c''8. cis''16~ cis''8 d''8 
      | es''4 es'4 ges'8. es'16~ \tuplet 6/4 {es'16 a'16 aes'16 ges'16 es'8~} 
      | es'8 r8 \tuplet 6/4 {r4 a'16 bes'16} b'8 c''4. 
      | es''8. es'16 \tuplet 3/2 {f'8 ges'8 es'8} ges'4 c''16 b'32 c''16. cis''32 d''32~ 
      | d''8 es''16 es'16 \tuplet 3/2 {f'8\glissando  ges'8 es'8~^\markup{\left-align \small vib}} es'8 r8 r4 
      | r4 r8 bes'16 aes'16 \tuplet 6/4 {g'8. bes'8 bes'16} r4 
      | r8 r32 des''32 c''32 b'32 bes'16 aes'16 g'16 f'16 \tuplet 6/4 {e'8 des'16 c'8 bes16~} bes32 g16 aes16 bes32 des'32 e'32~ 
      | \tuplet 6/4 {e'16 g'16 e'8 f'16 g'16} aes'16 b16 c'16 es'16 \tuplet 5/4 {g'8 ges'16 f'16 e'16} es'16 c'16 aes16 f16 
      | d'16 bes16 c'16 aes16~ \tuplet 6/4 {aes16 g16 f16 bes8 a16} aes16 bes16 c'16 d'16 \tuplet 5/4 {ges'8 cis'16 d'16 f'16} 
      | es'16 c'16 aes16 f16 d'16 c'16 bes16 aes16 g16 bes16 c'16 d'16 f'16 d'16 es'16 f'16 
      | \tuplet 3/2 {g'8 bes'16 r8.} r2 r8. f''16 
      \bar "||" \mark \default ges''4 \tuplet 3/2 {es''8 des''8 bes'8} \tuplet 3/2 {a'8 aes'8 ges'8} es'4 
      | \tuplet 3/2 {ges8 ges'8 ges'8} es'8. aes'16\bendAfter #-4  r4 r8. ges''16~ 
      | ges''4 es''16. des''16 bes'16 a'32~ \tuplet 3/2 {a'8 aes'8 ges'8} es'4 
      | \tuplet 6/4 {aes'8 a'8\bendAfter #+4  g'16\bendAfter #+4  a'16~} \tuplet 6/4 {a'8 aes'16\bendAfter #+4  c''8 b'16} bes'8 bes8 \tuplet 3/2 {f'8 aes'8 fis'8\glissando } 
      | g'16 es'16 f'16 des'16~ des'16 bes16 f16 es'16 \tuplet 3/2 {des'8 c'8 aes8} \tuplet 3/2 {es8 ges8 bes8} 
      | es4 r4 r8 g16 a16 c'16 b16 bes16 aes16 
      | g16 bes16 c'16 f'16 d'16 es'8 bes'16 d''16 es''16 c''16 aes'16 \tuplet 6/4 {g'8 f'16 d''16 des''16 c''16} 
      | \tuplet 5/4 {b'16 bes'16 aes'16 g'16 f'16} d'16 es'16 e'16 g16 bes16 des'16 c'16 g16 \tuplet 6/4 {bes16 aes16 a16 bes16 c'16 e'16} 
      | \tuplet 5/4 {g'16 e'16 f'16 g'16 aes'16~} aes'16 bes'16 c''16 aes'16 g'16 f'16 e'16 f'16 bes'16 a'16 aes'8 
      | b'16 bes'16 a'16 des'16 aes'16 ges'16 f'16 e'16 es'16 c'16 aes16 f16 \tuplet 6/4 {d'8 bes16 c'16 d'16 f'16} 
      | d'16 es'8 bes'16 d''16 es''16 bes'16 aes'16 g'16 es'8 des'16 b'16\glissando  c''8 bes'16~ 
      | bes'8 r8 r2 es''8. es'''16 
      \bar "||" \mark \default es'''8\bendAfter #-4  r8 r4 \tuplet 6/4 {r4 r16 a''16~} a''16\glissando  c'''8 d'''16\glissando  
      | es'''8 es'''8\bendAfter #-4  r4 r8. aes''16~ \tuplet 6/4 {aes''16\glissando  c'''4 es'''16~} 
      | es'''4\bendAfter #-4  r4 r8 aes''8\glissando  cis'''8 d'''16\glissando  es'''16~ 
      | es'''8 es''8 r4 r8 a''8 des'''8~ des'''32 e'''16 e'''32~ 
      | e'''16 e'''16 es''8 r8. des'''16 \tuplet 3/2 {es'''8\bendAfter #+4  e'''4~} e'''8 es'8 
      | ges'8\bendAfter #-4  r8 r8. c'''16~ c'''8 es'''4\bendAfter #-4  es'8 
      | fis'8 g'4 c'''8 es'''16 es'''8.~ es'''8 es'8 
      | fis'16 g'16 aes'16 g'16 aes'16 a'16 aes'16 a'16 \tuplet 3/2 {bes'4 c'''8~} c'''16 d'''16 es'''8 
      | es''8 des'''8~ des'''16 des''8 bes''16~ \tuplet 3/2 {bes''8 c''8 ges''8} es''4~ 
      | es''16 f''16 ges''8 \tuplet 3/2 {es''8 des''8 bes'8} \tuplet 3/2 {a'8 aes'8 ges'8~} ges'32 f''32 ges''32~ ges''8 es''32~ 
      | \tuplet 3/2 {es''8 des''8 bes'8} \tuplet 3/2 {a'8 aes'8 ges'8} f''16\glissando  ges''8. \tuplet 3/2 {es''8 des''8 bes'8} 
      | \tuplet 3/2 {aes'8 a'8 es'8} \tuplet 3/2 {a'8 aes'8 ges'8} es'4~ \tuplet 3/2 {es'8 es'8 es'8} 
      \bar "||" \mark \default \tuplet 3/2 {fis'8\glissando  g'8 c''8} b'16 bes'8 es'16~^\markup{\left-align \small vib} es'4. es'16 es'16~ 
      | \tuplet 3/2 {es'8 bes'8 aes'8} \tuplet 3/2 {ges'8 des'8 es'8~^\markup{\left-align \small vib}} es'4. bes16 bes16~ 
      | \tuplet 6/4 {bes16 cis'16 d'8 f'16 e'16} es'16 d'16 des'16 f16 c'16 bes16 f16 aes16 g16 es16 f16 des16 
      | c16 bes,16 es16 d16~ d32 cis16 d16 g32 b32 ges'32~ \tuplet 6/4 {ges'16 e'8 b16 a16 g16} des'4 
      | c'8 r8 r8. aes16 \tuplet 3/2 {bes4 ges8} es8. des16~ 
      | des16 c8 aes16~ aes8 r8 r8. aes16 a8 c'8 
      | bes8 g8 es8 c8 aes8 bes8 \tuplet 3/2 {fis8 g8 es8} 
      | r2 r8 c8 es8 g8~ 
      | g16 es8 c16~ c16 es8 ges16 es8 c8 es8 g8 
      | \tuplet 3/2 {bes8 a8 aes8} \tuplet 3/2 {g4 es8} bes,8 a,8 \tuplet 3/2 {aes,4 f8} 
      | d16 es8. c'8. bes16~^\markup{\left-align \small vib} bes4 es4 
      | aes8\bendAfter #-4  g8~ g16 aes8 ges16 \tuplet 3/2 {es4 bes,8} des8. es16~ 
      \bar "||" es8 r8 r2.\bar  ".."
    }
    >>
>>    
}
