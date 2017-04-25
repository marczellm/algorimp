\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Got It Bad"
  composer = "Benny Carter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      
      | des1:maj | f2:min7 bes2:7 | es1:7 | s1 | es1:min7 | f4:7 bes4:7 es4:7 aes4:7 | des2:6 bes2:min7 | es2:min7 aes2:7 
      | des1:maj | bes1:min7 | es1:7 | s1 | es1:min7 | f4:7 bes4:7 es4:7 aes4:7 | des1:6 | g1:11+.9 
      | ges1:maj | fis1:maj | ges1:min6 | b1:7 | des2:maj b2:7 | f2:min7 bes2:7 | es1:min7 | aes1:7 
      | des1:maj | bes1:min7 | es1:7 | s1 | es1:min7 | f4:7 bes4:7 es4:7 aes4:7 | des1:6 | es2:min7 aes2:7 
      | ges1:maj | s1 | ges1:min6 | b1:7 | des2:maj b2:7 | f2:min7 bes2:7 | es1:min7 | aes1:7 
      | des1:maj | bes1:min7 | es1:7 | s1 | es1:min7 | f4:7 bes4:7 es4:7 aes4:7 | es2:min7 aes2:7 | des1:maj|
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


      \tempo 4 = 68
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 3/2 {g4^\markup{\left-align \small vib} aes8~^\markup{\left-align \small vib}} \tuplet 6/4 {aes4~ aes16 g'16\glissando } bes'8 aes'4.~ 
      | aes'4~ \tuplet 6/4 {aes'8 f8 ges16 a16} \tuplet 6/4 {c'8 es'8 c'16 des'16~^\markup{\left-align \small vib}} des'4 
      | r4 \tuplet 6/4 {r4 es'16\glissando  f'16~^\markup{\left-align \small vib}} f'4. des'16 bes16~ 
      | bes16 e'16\glissando  f'2..~^\markup{\left-align \small vib} 
      | f'8.. aes32~ aes16\glissando  bes16 des'16 es'16 \tuplet 3/2 {f'8\glissando  des'4~^\markup{\left-align \small vib}} des'8 es'8 
      | f'8 aes'8~^\markup{\left-align \small vib} aes'2~ aes'16 des'16 es'16 bes16 
      | des'4^\markup{\left-align \small vib} r2 \tuplet 5/4 {b'16\glissando  des''16 aes'16 f'16 c'16\glissando } 
      | des'8 bes8 ges'16 des'16 bes16 ges16 f16 aes16 e16 aes16 es4^\markup{\left-align \small vib} 
      \bar "||" r4 \tuplet 6/4 {r16 g8 aes16 c'16 des'16~} \tuplet 6/4 {des'16 g'16\glissando  a'16 aes'8 f'16} c'4~^\markup{\left-align \small vib} 
      | c'8. bes16\glissando  b32 c'32 es'32 f'32 ges'16 c''32 a'32~ \tuplet 6/4 {a'16 bes'16 f'8 des'16 bes16} \tuplet 7/8 {aes32 a32 aes32 ges32 es'32\glissando  f'32 des'32~} 
      | des'64 g16. es'32\glissando  f'32. e'64 des'64 b64 g64~ \tuplet 11/8 {g16 aes16. f'16. es'32 des'32 b32} \tuplet 14/16 {aes32 a16 es'32\glissando  f'32. es'64 b64 bes64} a16 bes8.~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {bes4~ bes16 c'16~} c'16 des'16 f'16 a'16~ a'32\glissando  bes'32 b'32 c''32 bes'16 f'32 des'32~ des'32 g'32 a'32 g'32 f'32 des'16 g32~ 
      | \tuplet 6/4 {g16 ges8 c'16\glissando  es'16 bes16} \tuplet 3/2 {f'8 es'4^\markup{\left-align \small vib}} r4 r16 bes16 des'16 f'16 
      | aes'16 ges'16 f'16 es'16 d'16 b16 bes16 aes16 g16. bes32 des'16 d'32\glissando  e'32~ \tuplet 6/4 {e'8 aes16 bes8 des'16~^\markup{\left-align \small vib}} 
      | des'4 r4 r16. ges'32\glissando  aes'32 ges'16 f'32~ \tuplet 6/4 {f'16 es'16\glissando  e'16 es'16 des'16 a16} 
      | aes8 bes8 des'4~^\markup{\left-align \small vib} \tuplet 12/8 {des'8~ des'32 bes16. b32 c'32 es'32 ges'32~} \tuplet 12/8 {ges'16. a'32\glissando  bes'16 a'16. aes'16 g'32} 
      \bar "||" ges'8^\markup{\left-align \small vib} r8 r4 \tuplet 3/2 {r8 es'8 f'8} aes'16. bes'32 aes'32 ges'32 aes'32 bes'32 
      | aes'16 ges'16 f'16 es'16~^\markup{\left-align \small vib} es'4. r8 r4 
      | r8 bes8\glissando  des'16 es'16 f'16 ges'16 aes'16 ges'16 des''16 a'16 \tuplet 6/4 {aes'16 bes'16 aes'16 ges'16 des'16 a16} 
      | b16 ges'16 f'16 es'16 ges2^\markup{\left-align \small vib} r4 
      | r8. a16\glissando  c'8 des'8~ des'16 c'16 des'16 c'16 \tuplet 6/4 {des'16 c'8 des'16 e'16 f'16~} 
      | \tuplet 6/4 {f'16 aes'16 b'16 c''16 aes'16 es'16~} \tuplet 6/4 {es'16 c'16 aes'16\glissando  bes'16 aes'16 d'16~^\markup{\left-align \small vib}} d'8 r8 \tuplet 14/16 {r16. a16 bes32 d'64 f'64~} 
      | \tuplet 6/4 {f'16 aes'16 bes'16 aes'16 ges'16 des''16} \tuplet 6/4 {bes'16 ges'8 f'16 des'16 bes16~} bes16 f'32\glissando  ges'32 aes'32 e'16 des'32 es'4~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {es'8 g8 b16 es'16~} \tuplet 5/4 {es'16 a'16 es'16 b16 a16~} \tuplet 6/4 {a16 aes16 ges'16\glissando  aes'16 f'16 c'16~^\markup{\left-align \small vib}} c'8 r8 
      \bar "||" r4 \tuplet 6/4 {ges16\glissando  g16 aes8 c'16 des'16~} \tuplet 5/4 {des'16 e'16 f'16 g'16 aes'16} bes'16 ges'16 des'16 bes16 
      | \tuplet 12/8 {g'32\glissando  aes'16. f'16. des'16 bes16 f'32} ges'16 f'16 des'16 bes16 a32 bes32 b32 c'32 a16 bes16 f16\glissando  ges32 g32 aes32 f16 ges32 
      | \tuplet 6/4 {g8 bes16 des'8 e'16~} \tuplet 14/16 {e'64\glissando  f'32. bes16 des'16~ des'64 f'64} bes8^\markup{\left-align \small vib} r8 r4 
      | \tuplet 6/4 {r8 bes8 des'16 f'16} a'16 c''16 bes'16 f''16~ f''32 des''16 a'16 bes'32\glissando  b'32 c''32 \tuplet 5/4 {bes'16 f'16 des'16 bes16 aes16} 
      | \tuplet 5/4 {g16 ges16 des'16\glissando  es'16 bes16~} \tuplet 7/8 {bes32 e'32 f'32\glissando  ges'32 g'32 aes'32 es'32~^\markup{\left-align \small vib}} es'8 r8 r4 
      | r8 f'16 es'16 \tuplet 12/8 {c'16. des'32 d'16. bes'16 aes'32 bes'32 aes'32} \tuplet 6/4 {f'16 g'8. des''16 f''16~} \tuplet 6/4 {f''16 es''16 c''8 a'16 ges'16} 
      | \tuplet 6/4 {f'8 c''16 des''16 aes'16 f'16} des'16 bes16 a16 aes16~^\markup{\left-align \small vib} aes8 r8 r4 
      | \tuplet 6/4 {r8 ges16 g16 aes16 bes16~} \tuplet 10/8 {bes32 b16. es'16 ges'16 f'32 g'32} \tuplet 6/4 {a'16 c''16 bes'16 aes'16 ges'16 es'16} f'16 aes'16 des'16 b16 
      \bar "||" bes4~^\markup{\left-align \small vib} \tuplet 6/4 {bes4 a16 bes16~} bes32 des'32 f'32 e'32 ges'16 bes'32 des''32~ des''32 f''16 des''32 bes'32 ges'32 des'32 c'32 
      | \tuplet 6/4 {bes16 a16 aes16 g16 ges16 bes16} f16 es16 d16 des16~^\markup{\left-align \small vib} des4~ \tuplet 6/4 {des8 des'8 es'16 f'16~} 
      | f'32 ges'32 aes'32 bes'32 aes'32 ges'16 aes'32 \tuplet 6/4 {bes'16 aes'16 ges'16 des''16 aes'16 des'16~} des'4~ des'16 des'16 aes'32 bes'32 aes'32 ges'32 
      | \tuplet 7/8 {aes'32 bes'32 aes'32 ges'32 c''32\glissando  des''32 aes'32} des'4~^\markup{\left-align \small vib} \tuplet 10/8 {des'8 des'16 aes'32 bes'32 aes'32 ges'32~} ges'32 c''32\glissando  des''32 aes'16 des'32 g'32\glissando  aes'32 
      | ges'16 des'16 aes8^\markup{\left-align \small vib} r4 \tuplet 6/4 {r8 ges16\glissando  g8 aes16} \tuplet 6/4 {c'16 des'8 f'16 g'16 aes'16} 
      | bes'32 b'32 c''32 aes'16 es'16 c'32~ \tuplet 14/16 {c'32 des'16 d'16. a'64 bes'64~} \tuplet 6/4 {bes'16 g'16 aes'16 f'16 d'16 bes16} aes4~^\markup{\left-align \small vib} 
      | aes8 f16 ges16 \tuplet 12/8 {bes16. des'16. e'16\glissando  f'16. des'32~} \tuplet 6/4 {des'16 bes8 des'8 e'16\glissando } f'4~ 
      | \tuplet 6/4 {f'8 g8 b16 es'16} \tuplet 5/4 {e'16\glissando  f'16 des'16 a16 g16} \tuplet 6/4 {aes8\glissando  ges'16 aes'16 ges'16 bes16} \tuplet 5/4 {e'16\glissando  f'16 e'16 es'16 d'16} 
      \bar "||" des'4~^\markup{\left-align \small vib} des'16 ges16 g16 aes16\glissando  g'16 bes'16 aes'4.~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {aes'8. aes16 a16 b16} \tuplet 6/4 {d'16\glissando  e'16 ges'16 f'16 es'16 c'16~} \tuplet 6/4 {c'16 des'16 es'16 f'16 des'8~^\markup{\left-align \small vib}} des'8 r8 
      | r4 bes8 d'16\glissando  f'16~ \tuplet 3/2 {f'8 bes8\glissando  des'8\glissando } \tuplet 3/2 {f'8 bes8 des'8\glissando } 
      | \tuplet 3/2 {f'8 bes8 des'8\glissando } f'16 bes16 des'4^\markup{\left-align \small vib} r8 r4 
      | \tuplet 6/4 {r8 bes8 des'16 f'16~} f'32 e'16 es'32 des'32 es'32 des'32 bes32~ bes16\glissando  des'16 bes4.~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {bes16 e'16 ges'16 g'16 aes'16 ges'16} f'16 es'16 c'16 des'16 \tuplet 6/4 {d'8\glissando  aes'16 bes'16 aes'16 f'16} \tuplet 6/4 {des'16\glissando  d'16 aes16 f8 ges16} 
      | g16 bes16 des'16 c'16\glissando  e'8 r8 \tuplet 6/4 {r4 aes16 a16~} \tuplet 6/4 {a16 bes8 f'16 c'16 es'16} 
      | des'1~^\markup{\left-align \small vib} 
      | des'1\bar  ".."
    }
    >>
>>    
}
