\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Train"
  composer = "Lee Morgan"
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
      
      | es1:7 | bes1:7 | es1:7 | s1 | bes1:7 | s1 | es1:7 | c1:min7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | bes1:7 | es1:7 | s1 
      | bes1:7 | s1 | es1:7 | c1:min7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | bes1:7 | es1:7 | s1 | bes1:7 | s1 | es1:7 | c1:min7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | es1:7 | bes1:7 | es1:7 | s1 
      | bes1:7 | s1 | es1:7 | c1:min7 | f1:min7 | bes1:7 | es1:7 | bes1:7 
      | es1:7 | bes1:7 | es1:7 | s1 | bes1:7 | s1 | es1:7 | c1:min7 
      | f1:min7 | bes1:7 | es1:7 | bes1:7 | a1:6|
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


      \tempo 4 = 134
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 aes'8 
      | \tuplet 3/2 {g'8 aes'8 g'8} aes'16 g'16 aes'16 g'16~ g'16 aes'16 g'16 aes'16~ aes'16 g'16 aes'16 g'16~ 
      | g'16 g'16 aes'8 \tuplet 6/4 {g'8. es'8 bes16~} bes8 es'4.^\markup{\left-align \small vib} 
      | r1 
      | r2 \tuplet 3/2 {r8 aes'8 ges'8} aes'16 ges'8 aes'16 
      | \tuplet 3/2 {ges'8 aes'8 ges'8} \tuplet 3/2 {aes'8 ges'8 aes'8} \tuplet 3/2 {ges'8 aes'8 ges'8} aes'8 ges'8~ 
      | ges'8 aes'8~ aes'16 fis'16 g'8 \tuplet 3/2 {es'8 bes8 d'8} es'4^\markup{\left-align \small vib} 
      | r2 r16 des''16 f''8 c''8 bes'16 a'16~ 
      | a'16 aes'8 c''16~ c''16 aes'16 g'16 e'16~ e'16 f'8 g'16~ g'16 aes'8 bes'16~ 
      | \tuplet 6/4 {bes'8. cis''16 d''16 des''16} \tuplet 6/4 {b'8. f'16 bes'16 f'16} d'8 des'32 e'32 des'32 b32~ b16 bes8 aes16 
      | \tuplet 3/2 {fis8 g4~} \tuplet 6/4 {g16 c'4 aes16} des'16 es'8 es'16 r4 
      | r4 \tuplet 3/2 {es'8 es'8 es'8} \tuplet 3/2 {a'8\bendAfter #+4  bes'4~} bes'4~ 
      \bar "||" bes'2. \tuplet 3/2 {a'8 des''4} 
      | \tuplet 3/2 {a'8 des''4} a'16 des''8. des'16 ges'8. \tuplet 3/2 {des'8 ges'4} 
      | des'4 \tuplet 3/2 {des'4 des'8} r2 
      | r2. \tuplet 6/4 {r16 g'8 e'16 f'16 g'16} 
      | aes'8 r8 r2. 
      | r16 b'16 c''8~ c''16 f''8 e''16~ e''16 es''8 c''16~ \tuplet 5/4 {c''16 aes'16 bes'16 aes'16 f'16} 
      | \tuplet 3/2 {ges'4 cis''8} \tuplet 3/2 {d''8 des''8 c''8~} c''16 bes'16 f'16 aes'16~ aes'16 g'8 f'16 
      | \tuplet 3/2 {d'4 es'8} \tuplet 3/2 {e'8 g'8 bes'8~} \tuplet 3/2 {bes'8 des''8 c''8} ges'8. es'16 
      | e'16 f'16 g'16 b'16~ b'16 c''8 aes'16~ \tuplet 6/4 {aes'8 aes'16 g'16 ges'16 f'16~} \tuplet 6/4 {f'8 cis''16 d''16 des''16 b'16~} 
      | \tuplet 3/2 {b'8 bes'8 a'8} aes'8 c''8 g'8 f'8 a'16 bes'8.~ 
      | bes'2 \tuplet 3/2 {es''8 bes'8 f'8} bes'4 
      | r1 
      \bar "||" \tuplet 6/4 {bes'8 c''16 bes'16 a'16 bes'16~} bes'32 b'16 c''16 des''32 f''32 d''32 es''16 bes'16 a'16 aes'16 g'16 ges'16 f'16 e'16 
      | es'16 b16 es'16 g'16 \tuplet 5/4 {e'16 d'16 es'16 e'16 g'16} f'16 g'16 aes'16 f'16 \tuplet 6/4 {ges'8 aes'16 d''16 c''16 b'16} 
      | bes'16 aes'16 g'16 f'16 es'16 e'16 f'16 des'16~ des'16 bes16 a8 c'16 a16 bes16 cis'16 
      | \tuplet 6/4 {d'16 es'16 e'16 f'16 aes'16 c''16~} c''16 a'16 bes'16 aes'16 \tuplet 7/8 {g'16 f'32 e'32 f'32 e'32 d'32} e'16 f'16 g'16 aes'16 
      | bes'16 g'16 aes'16 bes'16 b'16 c''16 f''16 e''16 es''16 des''8 b'16 \tuplet 5/4 {c''16 b'16 aes'16 g'16 f'16} 
      | bes'16 g'16 aes'16 bes'16 \tuplet 3/2 {c''8 aes'16 r8.} r2 
      | r16 g''16 aes''16 fis''16 g''16 e''16 f''16 es''16 \tuplet 6/4 {d''16 des''16 c''16 d''16 c''16 b'16} bes'16 aes'16 f'16 fis'32 g'32~ 
      | g'16 es'16 c'16 bes16 f'16 d'16 es'16 f'16 g'16 aes'16 g'16 f'16 \tuplet 5/4 {e'8 aes'16 g'16 e'16} 
      | f'16 g'16 aes'16 bes'16 \tuplet 3/2 {c''8 es''8 g''8~} g''16 e''16 f''16 es''16 d''32 des''16 c''32 des''32 c''32 b'16 
      | bes'16 a'16 aes'16 g'16 \tuplet 5/4 {f'16 es'16 d'16 f'16 g'16} cis''16 d''16 des''16 b'16 ges'16 d'16 b16 a16 
      | bes16 d'32 des'32 b32 f16 ges32 \tuplet 6/4 {bes16 c'16 d'16 f'16 d'8} \tuplet 6/4 {es'16 f'8 g'8 aes'16} \tuplet 6/4 {d''16 c''16 b'16 bes'16 a'8} 
      | aes'16 g'16 f'16 es'16~ es'16 f'16 aes'16 b'16~ \tuplet 6/4 {b'16 aes'16 a'16 bes'8.~} \tuplet 3/2 {bes'8 bes'8 bes'8~} 
      \bar "||" \tuplet 6/4 {bes'16 bes'16 b'8 c''16 c''16~} \tuplet 6/4 {c''16 b'16 c''16 c''16 c''8} c''8 c''8 g''4~ 
      | \tuplet 6/4 {g''8 b'16 c''16 b'16 c''16} c''16 c''16 c''16 c''16~ \tuplet 6/4 {c''8 es''8. fis''16} r4 
      | r4 r16 g''16 aes''16 e''16 g''16 e''16 f''16 es''16 \tuplet 6/4 {d''8 c''16 b'16 a'16 bes'16} 
      | \tuplet 12/8 {c''16. des''16 es''16. f''16 g''32 aes''32} g''16 f''16 e''16 d''16 \tuplet 6/4 {es''8 des''8 c''16 des''16} c''16 aes'16 g'16 f'16 
      | bes'16 g'16 aes'16 bes'16 b'16 c''16 f''16 e''16 es''16 des''16 c''32 des''32 c''32 b'32 \tuplet 7/8 {c''16 aes'32 g'32 aes'32 g'32 f'32} 
      | bes'16 g'16 aes'16 bes'16 b'16 c''16 r8 r4 r8 r32 a''32 b''32 c'''32~ 
      | \tuplet 6/4 {c'''4 g''16 bes''16~} bes''8 b'8 \tuplet 3/2 {es''8 aes''4} \tuplet 5/4 {g''16 f''16 es''16 b'16 bes'16} 
      | f''16 d''16 es''16 f''16 g''16 aes''16 g''16 f''16 d''16 es''16 e''16 g'16 \tuplet 6/4 {bes'16 des''8 bes'16 aes'16 a'16} 
      | \tuplet 3/2 {aes'8 g'8 e'8} es'16 c'16 g'16 e'16 f'16 g'16 aes'16 bes'16 \tuplet 3/2 {es''8 es''8 g''8~} 
      | \tuplet 6/4 {g''16 e''8 f''16 es''16 d''16~} \tuplet 6/4 {d''16 des''16 c''16 d''16 c''16 b'16} bes'16 a'16 aes'16 c''16~ \tuplet 7/8 {c''16 f'32 ges'32 f'32 e'32 d'32} 
      | \tuplet 5/4 {es'8 bes16 es'16 g'16} \tuplet 5/4 {e'8 d'16 e'16 g'16} f'16 d'16 f'16 g'16 aes'4 
      | r16 b'16 c''16 b'16 \tuplet 6/4 {des''16 bes'16 a'16 aes'16 c''8} g'16 f'16 bes'8~ \tuplet 6/4 {bes'16 es'16 aes'8 f'16 fis'16~} 
      \bar "||" fis'32 g'32~ g'8 d''32\bendAfter #+4  es''32~ es''4 \tuplet 3/2 {es''8 es''4} es''4 
      | \tuplet 3/2 {ges''8 es''4} es''4 \tuplet 3/2 {des''8 es''4} es''4~ 
      | es''8 es''8 \tuplet 3/2 {ges''8 aes''8 a''8~} a''16 aes''8 ges''16~ ges''16 es''8 des''16 
      | \tuplet 6/4 {c''16 des''16 f''16 e''16 a'16 bes'16~} bes'16 bes'16 a'16 aes'16~ aes'8 ges'8 es'16 ges'8 aes'16~ 
      | aes'8 aes'8 \tuplet 6/4 {d''16 g'16 ges'8. e'16} ges'8 aes'8 aes'4~^\markup{\left-align \small vib} 
      | aes'16 g'32 aes'32 a'32 bes'16.~ bes'8. es''16~ es''16 aes'16 a'16 aes'16~ \tuplet 3/2 {aes'8 es'8 fis'8} 
      | g'8 es'8 bes4^\markup{\left-align \small vib} r2 
      | r8 aes'8~ \tuplet 6/4 {aes'16 g'8. es'16 f'16~} f'16 e'16 g'16 bes'16 des''8 b'8~ 
      | \tuplet 6/4 {b'8. c''8 ges''16} d''16 bes'16 f'16 g'16~ g'16 aes'8 bes'16~ bes'16 c''8 es''16~ 
      | es''8 cis''16 d''16~ d''16 bes'8 d''16~ \tuplet 3/2 {d''8 bes'8 c''8~} c''16 aes'8 c''16~ 
      | c''8 aes'16 bes'16~ \tuplet 6/4 {bes'4~ bes'16 aes'16~} \tuplet 7/8 {aes'16. aes'16 g'32 f'32~} f'16 e'8 g'16~ 
      | \tuplet 6/4 {g'16 f'8 bes16 a16 es'16~} es'16 d'16 f'16 aes'16~ aes'16 b'8 bes'16 \tuplet 3/2 {e'4 des'8} 
      \bar "||" c'16 es'8 es'16~^\markup{\left-align \small vib} es'4 es'8 r8 r4\bar  ".."
    }
    >>
>>    
}
