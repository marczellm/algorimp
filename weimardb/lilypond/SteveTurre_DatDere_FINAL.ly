\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dat Dere"
  composer = "Steve Turre"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key c \minor
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
      
      | c2:min es2:7 | a2:min5-7 aes2:7 | c2:min aes2:7 | d2:min5-7 g2:7 | c2:min es2:7 | a2:min5-7 aes2:7 | d2:min5-7 g2:775+ | c2:min g2:95+ 
      | c2:min es2:7 | a2:min5-7 aes2:7 | c2:min aes2:7 | d2:min5-7 g2:7 | c2:min es2:7 | a2:min5-7 aes2:7 | d2:min5-7 g2:775+ | c1:min 
      | c4:min7 g4:7 c2:min | g4:min7 d4:7 g2:min7 | c2:min7 aes2:7 | d2:min5-7 g2:7 | c4:min7 g4:7 c2:min | g4:min7 d4:7 g2:min7 | d2:min5-7 g2:9 | c2:min g2:9 
      | c2:min es2:7 | a2:min5-7 aes2:7 | c2:min aes2:7 | d2:min5-7 g2:7 | c2:min es2:7 | a2:min5-7 aes2:7 | d2:min5-7 g2:775+ | c2:min g2:9 
      | c2:min es2:7 | a2:min5-7 aes2:7 | c2:min aes2:7 | d2:min5-7 g2:7 | c2:min es2:7 | a2:min5-7 aes2:7 | d2:min5-7 g2:775+ | c1:min 
      | c4:min7 g4:7 c2:min | g4:min7 d4:7 g2:min7 | c2:min7 aes2:7 | d2:min5-7 g2:7 | c4:min7 g4:7 c2:min | g4:min7 d4:7 g2:min7 | d2:min5-7 g2:9 | c2:min g2:9 
      | c2:min es2:7 | a2:min5-7 aes2:7 | c2:min aes2:7 | d2:min5-7 g2:7 | c2:min es2:7 | a2:min5-7 aes2:7 | d2:min5-7 g2:775+ | c2:min g2:9 
      | c2:min es2:7 | a2:min5-7 aes2:7 | c2:min aes2:7 | d2:min5-7 g2:7 | c2:min es2:7 | a2:min5-7 aes2:7 | d2:min5-7 g2:775+ | c1:min 
      | r1|
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


      \tempo 4 = 116
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r16. c8 f32~ \tuplet 3/2 {f8 g8 c'8} 
      | f'8 g'8 f'8 g'16 f'16~ \tuplet 3/2 {f'8 es'8 f'8} \tuplet 6/4 {es'8. f'8 es'16} 
      | c'8 bes8 \tuplet 3/2 {c'8 bes8 c'8~} c'8 f16\glissando  ges16~ ges16 f8 es16~ 
      | \tuplet 3/2 {es8 fis8 g8} bes2~^\markup{\left-align \small vib} \tuplet 5/4 {bes16 cis'16 es'16 fis'16 g'16} 
      | r4 \tuplet 6/4 {r4 g'16 f'16~} f'16 es'16 c'8 c'4~^\markup{\left-align \small vib} 
      | c'8 e'8\glissando  f'4~^\markup{\left-align \small vib} f'16 es'16 c'8~ \tuplet 6/4 {c'16 g16\glissando  aes8. g16~} 
      | \tuplet 6/4 {g4 g16 g16} g16 f8 aes16~ aes16 b16 aes16 g16 \tuplet 6/4 {f8. es8 cis'16\glissando } 
      | d'4.^\markup{\left-align \small vib} c'16 bes16~ \tuplet 6/4 {bes16 a4 c'16~} \tuplet 6/4 {c'16 es'4 c'16} 
      \bar "||" \tuplet 3/2 {fis'8 g'4} a'8 r8 r4 c'8 es'8 
      | \tuplet 3/2 {g'4 f'8~} f'8\bendAfter #-4  r8 r8. e'32\bendAfter #+4  f'32~ f'8 r8 
      | \tuplet 6/4 {r4 e'16\bendAfter #+4  f'16~} f'4 \tuplet 3/2 {ges'8 f'8 es'8} c'8. a16~ 
      | a16 cis'16 d'8~^\markup{\left-align \small vib} d'8. c'16~ \tuplet 5/4 {c'16 b16 d'16 b16 aes16~} \tuplet 6/4 {aes8 g8. f16~} 
      | \tuplet 3/2 {f8 d8 es8} d4 r4 \tuplet 6/4 {d16 es16 g16 aes16 bes16 d'16} 
      | c'16 bes16 g16 aes16~ aes16 a8 bes'16 aes'32 g'32 f'32 es'32 c'32 aes32 ges32 es32~ es16 c'16 a16 bes16 
      | des'16 cis'16\glissando  d'16 f'16~ f'4 \tuplet 3/2 {aes'8 g'8 f'8} \tuplet 3/2 {g'4 es'8} 
      | c'4 c'4. a'16 aes'16~ aes'16 g'16 f'8 
      \bar "||" \tuplet 3/2 {es'8 b8 a8} g8. es'16~ es'8 c'8 bes8 a8~ 
      | a8 es'8 d'8 c'4 g8 \tuplet 3/2 {bes4 a8~} 
      | a8 g8 d'16 d'16 c'16 es'16~ es'8 d'8 \tuplet 3/2 {c'4 aes8} 
      | \tuplet 3/2 {g4 f8} r2. 
      | \tuplet 7/8 {r16 d'32 f'32 g'32 aes'32 g'32} \tuplet 6/4 {ges'16 f'16 d'4} \tuplet 3/2 {f'8 es'8 c'8} \tuplet 3/2 {c'8 c'4~} 
      | \tuplet 7/8 {c'32 a32 c'32 d'32 es'32 d'32 c'32~} c'32 a8. d'32~ d'16 c'16 bes8 bes4~^\markup{\left-align \small vib} 
      | bes8 d16 g16 \tuplet 3/2 {b8 c'8 d'8~} d'16 f'16 g'16 aes'16~ aes'16 g'16 f'16 es'16 
      | \tuplet 3/2 {g'8 f'8 es'8~} es'16 c'16 f'16 es'16 \tuplet 3/2 {c'8 bes8 es'8~} es'16 c'16 bes16 g16 
      \bar "||" \mark \default \tuplet 3/2 {c'8 bes8 g8~} g16 f16 bes16 g16~ \tuplet 7/8 {g32 d16. bes,16 d32~} d16 g16. c'16 d'32~ 
      | d'8 c'16 d'16 cis'16\glissando  d'16 c'16 d'16~ \tuplet 6/4 {d'16 d'8 d'8 c'16~} \tuplet 5/4 {c'16\glissando  d'8 c'16 d'16~} 
      | \tuplet 3/2 {d'8 c'8\glissando  d'8} c'8 bes16 c'16~ c'16 bes16 c'16. bes32~ bes8 r8 
      | r4 \tuplet 6/4 {r16 b4 aes16~} aes8 g8 f8 c'8\glissando  
      | \tuplet 3/2 {d'8 c'8\glissando  d'8} \tuplet 3/2 {c'8\glissando  d'8 c'8\glissando } \tuplet 3/2 {d'8 c'8\glissando  d'8} c'8 r8 
      | r2 \tuplet 6/4 {r16 c'16 des'16 f'16 bes'8} r4 
      | r8. c''16~ c''16 ges'8 f'16 es'4 \tuplet 3/2 {f'4 g'8~} 
      | \tuplet 6/4 {g'16 es'4 c'16~} \tuplet 6/4 {c'4~ c'16 g'16~} g'16 c''8 c''16 \tuplet 3/2 {c''4 c''8~} 
      \bar "||" c''8 c''8~ c''8. c''16~ c''8\bendAfter #-4  r8 r4 
      | r8 r32 f''32\bendAfter #+4  ges''32 f''32~ f''8 des''8 c''4 c''8 a'8 
      | f'16\glissando  ges'16 f'8 es'4~^\markup{\left-align \small vib} \tuplet 6/4 {es'16 c'16 es'16 f'16 g'16 f'16} d'16 bes16 c'16 d'16~^\markup{\left-align \small vib} 
      | d'8. des'16~ \tuplet 6/4 {des'16 b16 d'16 bes16 aes16 aes16} b4 \tuplet 6/4 {f16 a16 c'16 d'16 f'16 aes'16~} 
      | aes'4 f'4 fis'16\glissando  g'16 g'8 bes'8 g'8~ 
      | g'8 g'8 \tuplet 3/2 {g'4 f'8} g'16 g'16 g'16 g'16 b'8 g'8~ 
      | g'8 g'8~ g'16 f'16\glissando  ges'16 f'16 \tuplet 3/2 {es'8 c'8 bes8} fis16 g16 f16 d16 
      | \tuplet 3/2 {aes,4 f8} \tuplet 3/2 {bes8 g8 es8} \tuplet 3/2 {g8 es'8 c'8~} \tuplet 3/2 {c'8 c'8 f'8} 
      \bar "||" \tuplet 3/2 {d'8 bes8 d'8~} \tuplet 6/4 {d'16 aes'8 g'8 d'16} g'4 \tuplet 3/2 {c'4 es'8~} 
      | es'16 es'32~ es'8 es'32~ es'16 c'16 es'16 c'16 \tuplet 3/2 {es'4 f'8~} \tuplet 6/4 {f'16 d'16 c'16 aes16 fis16 g16~} 
      | g8. e'16 f'16 es'8 c'16~ \tuplet 6/4 {c'16 bes4 g16\glissando } aes16 ges8 es16~ 
      | es16 fis16 g16 bes16~ \tuplet 6/4 {bes16 g4 g16~} \tuplet 5/4 {g8. g16 c'16~} c'16 es'16 g16 bes16 
      | c'4~^\markup{\left-align \small vib} \tuplet 6/4 {c'4 aes16\bendAfter #+4  a16} ges4 r8. c'16 
      | es'4..^\markup{\left-align \small vib} c'16~ \tuplet 6/4 {c'4~ c'16\bendAfter #-4  es'16~} es'16 f'16 es'16 f'16~ 
      | f'16 es'16 f'16 es'16 \tuplet 3/2 {fis'8\glissando  g'4~} \tuplet 6/4 {g'16 ges'16 f'16 e'16 es'8~} \tuplet 6/4 {es'8 c'16 bes16 fis16 c'16~^\markup{\left-align \small vib}} 
      | c'4 r4 r8 c'16 c'16 \tuplet 3/2 {c'8 e'8 g'8} 
      \bar "||" \mark \default r4 bes'4 \tuplet 3/2 {g'4 f'8} es'8 c'8~ 
      | c'16 cis'16 d'8~ \tuplet 6/4 {d'4 es'16 d'16~} \tuplet 3/2 {d'8 c'8 a8} \tuplet 3/2 {bes4 g8} 
      | r4 r8 g16 aes16~ \tuplet 6/4 {aes16 aes16 aes8 g16 aes16} a4~ 
      | a8 bes8 \tuplet 5/4 {b8 aes16 c'16 aes16} des'16 bes16 d'16 c'16 \tuplet 6/4 {es'8 cis'16 e'8 cis'16} 
      | fis'16 g'16 g'16 g'16~ g'8. g'16~ \tuplet 6/4 {g'16 c''8. aes'16 g'16} r4 
      | r16 f'16 f'16 f'16~ \tuplet 6/4 {f'4 fis'16 g'16} es'8. des'16~ des'8. des'16~ 
      | des'16 f'16 es'16 f'16 es'8 g'8~^\markup{\left-align \small vib} g'2~ 
      | g'2~ g'8 g'16 bes'16~ \tuplet 10/8 {bes'16 c''8 c''16 c''32 bes'32~} 
      \bar "||" bes'16 c''8 bes'16 aes'16 ges'16 r8 r4 es'4~ 
      | \tuplet 6/4 {es'16 c'8. c'16 c'16\bendAfter #-4 } r4 \tuplet 3/2 {r8 g'8 bes'8~} bes'16 c''16 c''16 bes'16~ 
      | \tuplet 7/8 {bes'32 c''8 b'32 a'32} ges'16 es'16 r8 r8. e'16\glissando  f'4~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {f'16 d'4 b16\bendAfter #-4 } r2 r32 c''16. b'32 bes'32 a'32 g'32~ 
      | g'8. c'16 b16 bes16 a8~ a16 c8 es16 g4 
      | es16 f32~ f8 es32~ \tuplet 6/4 {es4~ es16 es16~} \tuplet 6/4 {es16 g4 es16} \tuplet 3/2 {f4 f8~} 
      | \tuplet 5/4 {f16 es8. c16~} c8 f8 \tuplet 3/2 {g4 bes8~} bes16 c'32~ c'8 es'32~ 
      | es'8 g'16 f'16~ \tuplet 3/2 {f'8 es'8 d'8~} d'16 c'8 g16~ g16 d16 c16 aes,16 
      \bar "||" g,4 r2.\bar  ".."
    }
    >>
>>    
}
