\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cheese Cake"
  composer = "Dexter Gordon"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | s2. r4 | s1 
      | c1:min9 | d2:min5-7 g2:775+ | c1:min9 | c1:7 | f1:min9 | c1:775+ | f1:min9 | s1 
      | d1:min5-7 | g1:775+ | f1:min7 | bes1:7 | es2:min7 aes2:7 | d2:min5-7 g2:775+ | c1:min9 | d2:min5-7 g2:7 
      | c1:min9 | d2:min5-7 g2:775+ | c1:min9 | c1:7 | f1:min9 | c1:775+ | f1:min9 | s1 
      | d1:min5-7 | s1 | f1:min7 | bes1:7 | es2:min7 aes2:7 | d2:min5-7 g2:775+ | c1:min9 | s1 
      | g1:min7 | c1:7 | f1:min7 | bes1:7 | es1:min7 | aes1:7 | d1:min5-7 | g1:775+ 
      | c1:min9 | d2:min5-7 g2:775+ | c1:min7 | c1:7 | f1:min9 | c1:775+ | f1:min9 | s1 
      | d1:min5-7 | g1:775+ | f1:min7 | bes1:7 | es2:min7 aes2:7 | d2:min5-7 g2:775+ | c1:min9 | s1 
      | s1 | d2:min5-7 g2:775+ | c1:min9 | c1:7 | f1:min9 | c1:775+ | f1:min9 | s1 
      | d1:min5-7 | g1:775+ | f1:min7 | bes1:7 | es2:min7 aes2:7 | d2:min5-7 g2:775+ | c1:min9 | d2:min5-7 g2:775+ 
      | c1:min9 | d2:min5-7 g2:775+ | c1:min9 | c1:7 | f1:min9 | c1:775+ | f1:min9 | s1 
      | d1:min5-7 | g1:775+ | f1:min7 | bes1:7 | es2:min5-7 aes2:7 | d2:min5-7 g2:775+ | c1:min9 | s1 
      | g1:min7 | c1:7 | f1:min7 | bes1:7 | es1:min7 | aes1:7 | d1:min5-7 | g1:775+ 
      | c1:min9 | d2:min5-7 g2:775+ | c1:min7 | c1:7 | f1:min9 | c1:775+ | f1:min9 | s1 
      | d1:min5-7 | g1:775+ | f1:min7 | bes1:7 | es2:min7 aes2:7 | d2:min5-7 g2:775+ | c1:min9|
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


      \tempo 4 = 221
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2. r8 cis'8 
      | d'1^\markup{\left-align \small vib} 
      \bar "||" \mark \default c'8 d'8~ d'8. c'16 d'4 \tuplet 3/2 {c'4 a8~} 
      | a8 g4 g8 d'4.^\markup{\left-align \small vib} b8 
      | a8 g8 \tuplet 3/2 {a4 d'8~} d'8 r8 r4 
      | r4 r8. d'16~ d'8 c'8 \tuplet 3/2 {d'4 g'8~^\markup{\left-align \small vib}} 
      | g'4 d'8 c'8~ c'16 aes8 f16~ f8 d8 
      | c8 g8 \tuplet 3/2 {f4 g8} aes8 bes8 c'8 es'8 
      | d'8 c'8 bes8 b8 c'4 g'8 f16 ges16 
      | bes4.^\markup{\left-align \small vib} r8 r4 d'8. g'16~^\markup{\left-align \small vib} 
      | g'4~ g'16 ges'8 e'16~ e'16 f'8 a16~ a16 d'8 f'16~ 
      | f'16 e'8 d'16~ d'16 cis'8 d'16~ d'16 e'8 f'16~ f'8 d'8 
      | c'8 b16 c'16~ c'16 d'8 es'16~ es'16 c'8 aes16~ aes8 g8~ 
      | g8 bes8~ \tuplet 3/2 {bes8 c'8 es'8} g'8 aes'8 g'8 ges'8~ 
      | ges'16 es'8 bes16 c'8 des'8 bes8 ges8~ ges16 f8 es16 
      | d8 r8 r4 \tuplet 3/2 {d'8\glissando  es'4} d'8 c'8 
      | b8 c'8 d'8 es'8~ es'16 c'8 g16~^\markup{\left-align \small vib} g4~ 
      | g4 r2. 
      \bar "||" c'8 b8 c'8 d'8 es'8 d'8 es'8 f'8 
      | fis'8 g'8 aes'8 fis'8 g'8 es'8 d'8 c'8 
      | f'4.^\markup{\left-align \small vib} d'8 es'4 \tuplet 3/2 {g8 a8 b8} 
      | d'8 b8 c'8 d'8 e'8 f'16 e'16 \tuplet 3/2 {d'4 c'8~} 
      | c'16 b8 g16~ \tuplet 3/2 {g8 bes8 g8~} \tuplet 3/2 {g8 f8 aes8} g8 f8 
      | e8 des'4 bes8~ bes16 c'8 aes16~ aes8 g8 
      | \tuplet 3/2 {aes8 bes4} c'8 es'8 g'4 f'4~^\markup{\left-align \small vib} 
      | f'4 r2 r8 g'8~^\markup{\left-align \small vib} 
      | g'4 f'8 c'16 aes16 g4 f8. bes'16~ 
      | bes'4 \tuplet 3/2 {aes'8 es'8 bes8~} bes8 aes8 r4 
      | \tuplet 6/4 {r4 a'16 bes'16~} bes'4 aes'8 es'8 bes8. a16 
      | des''4 bes'8\glissando  f'16 d'16 des'4 b8. bes'16~^\markup{\left-align \small vib} 
      | bes'4~ bes'16 ges'8 f'16 es'4. g'8\glissando  
      | aes'2^\markup{\left-align \small vib} f'8 es'8 b8. fis16 
      | bes4 aes4 \tuplet 3/2 {g4 d'8~} d'8 r8 
      | r4 r8. d'16~ d'8 e'8 f'8 g'8 
      \bar "||" a'8 g'16 f'16 \tuplet 3/2 {e'4 a'8} f'8 d'8 bes4 
      | \tuplet 3/2 {e'8 f'8 fis'8} g'8 ges'16 f'16 e'8 d'8 \tuplet 3/2 {c'4 b8} 
      | bes8 a8 bes4 \tuplet 3/2 {f'4 e'8} f'4 
      | es'8 d'8 \tuplet 3/2 {es'4 bes'8~} bes'16 g'8 aes'16~ aes'16 e'8 g'16~ 
      | g'16 f'8 g16~ g16 d'8 es'16~ \tuplet 3/2 {es'8 c'8 des'8} r4 
      | r8 f'8~^\markup{\left-align \small vib} f'8. des'16~ des'16 c'16 des'16 bes16 ges8 e8 
      | \tuplet 3/2 {f4 g8~} \tuplet 3/2 {g8 a8 b8} \tuplet 3/2 {e'8 f'8 e'8} d'8 c'8 
      | \tuplet 3/2 {b4 d'8} f'8 a'8 \tuplet 3/2 {es'8 f'8 fis'8} g'8 ges'16 f'16 
      \bar "||" es'4 es8 g8 \tuplet 3/2 {d'4 c'8~} c'8 r8 
      | r2 r16 es8 g16~ g16 d'8 g'16~ 
      | g'8 d''4 d''8 g'4. r8 
      | r4 \tuplet 3/2 {b'8\glissando  c''4~^\markup{\left-align \small vib}} c''4. bes'8 
      | aes'8 bes'8 aes'8 g'8 f'8 e'8 f'8 g'8 
      | aes'8 g'8 \tuplet 3/2 {f'8 e'8 g'8~} g'16 f'8 es'16~ es'16 d'8 c'16~ 
      | c'8 bes8 c'4 aes8 g8 f16 es8 des16 
      | bes4.^\markup{\left-align \small vib} r8 r2 
      | r16 f'16\bendAfter #+4  ges'16 f'16~ f'2~ f'8 g'16\bendAfter #+4  aes'16 
      | g'4. g'4 f'4. 
      | f'8 es'8~ es'2~ es'8 es'8~ 
      | es'8 d'4 d'8 c'4. e'8\glissando  
      | f'4~^\markup{\left-align \small vib} f'16 d'8 es'16~ es'8 c'8 aes4 
      | es'4^\markup{\left-align \small vib} cis'8 d'8~ d'16 bes8 b16~ b4 
      | d'4.^\markup{\left-align \small vib} b8 c'4 a8 r8 
      | r1 
      \bar "||" \mark \default es8 a8 \tuplet 3/2 {d'4 g'8} c''4 c''8\glissando  e''16 f''16~ 
      | f''4. es''8~^\markup{\left-align \small vib} es''2~ 
      | es''4. b'8 d''8 c''4 r8 
      | r2 d''8\glissando  es''4.~^\markup{\left-align \small vib} 
      | es''2 c''4 g'8 bes'8 
      | aes'4 g'8 aes'8 e'8 g'8~ g'16 f'8 es'16~ 
      | es'16 d'8 c'16~ c'16 bes16 b16 c'16~ c'8 f'8~ f'8. bes16~^\markup{\left-align \small vib} 
      | bes4 r2. 
      | r8 d'8~ \tuplet 3/2 {d'8 a'8 c''8} b'8 a'8 aes'8 a'8 
      | bes'8 c''8 \tuplet 3/2 {a'4 f'8} \tuplet 3/2 {e'4 d'8} \tuplet 3/2 {g'4 ges'8} 
      | f'8 e'8 es'8 d'8 c'8 b8 d'8 es'8 
      | c'8 aes8 g8 ges8 \tuplet 3/2 {bes4 aes8~} aes8 f'8 
      | aes'8. ges'16~ ges'8 f'8 aes'8 ges'4 f'16 g'16~ 
      | g'4 f'8 es'8 g'8 f'4 es'16 g'16~ 
      | g'4 f'8 cis'8~ cis'8. d'16~ d'8\bendAfter #-4  r8 
      | r4 r8 g'8~^\markup{\left-align \small vib} g'4. f'8 
      \bar "||" es'8 f'16 es'16 d'8 es'16 d'16 c'8 d'8 es'8. f'16\glissando  
      | fis'16 g'8. bes'8 g'8\bendAfter #-4  fis'4 \tuplet 3/2 {es'4 g'8} 
      | es'4 c'8 es'8 c'4 \tuplet 3/2 {g4 bes8} 
      | g4. r8 r4 r8 bes'8 
      | c''4 \tuplet 3/2 {bes'8 b'8 bes'8} aes'8 g'8 f'4 
      | e'8 f'8 g'8 aes'8 \tuplet 3/2 {f'4 c'8} es'8 c'8 
      | cis'8 d'4 bes16 b16 c'4 g'8 ges'8 
      | bes4 aes4.^\markup{\left-align \small vib} r8 r4 
      | d'8 f'8 e'8. c'16 g'4 d'8 f'8 
      | e'4 g'4\bendAfter #-4  f'8 r8 r4 
      | c'8 es'8 d'8. c'16 f'4 \tuplet 3/2 {c'4 es'8} 
      | d'8. c'16 f'2 \tuplet 3/2 {es'4 aes'8~} 
      | aes'8 es'8 g'8\glissando  aes'8 es'8. d'16~ d'8 g'8 
      | r4 \tuplet 3/2 {g'4 d'8~} d'2\glissando  
      | d'8 es'8 \tuplet 3/2 {d'4 c'8} g4 g8. g16~ 
      | g4 r2. 
      \bar "||" d'4 d'4 d'2~ 
      | d'8 e'4 a'8~ a'16 g'8 e'16~ e'8 d'8~ 
      | d'16 c'8 d'16~ d'8 g8 bes8 c'4 c'8~ 
      | c'4. r8 r2 
      | c'4. c'8 c'4. es'8 
      | f'4.^\markup{\left-align \small vib} es'4 f'8 es'4 
      | r4 d'8 es'8 \tuplet 3/2 {d'4 c'8} \tuplet 3/2 {b4 d'8~} 
      | d'16 f'8 aes'16~ aes'16 g'8 f'16~ f'16 c'8 g16~ g8. b16 
      \bar "||" \tuplet 3/2 {d'4 c'8~} c'16 g'8 c'16 es'8 g'4.^\markup{\left-align \small vib} 
      | f'8 g'8 aes'8 c''8 r4 \tuplet 6/4 {r16 fis'8. g'16 a'16} 
      | b'16 d''8.~ d''8 b'8~ \tuplet 6/4 {b'16 c''4 g'16~} g'4\bendAfter #-4  
      | r1 
      | c'8 des'8 e'8 aes'8 bes'4 \tuplet 3/2 {es''4 des''8~} 
      | des''8 c''8~^\markup{\left-align \small vib} c''4.. bes'16~ bes'8 g'8 
      | aes'8 c'8 d'8 e'8 g'8 f'8 e'8 f'8 
      | \tuplet 3/2 {aes'4 c''8\bendAfter #-4 } bes'8 r8 r2 
      | d'8 f'8 a'8 c''8 c''4 e''4 
      | g''4. e''4. r4 
      | \tuplet 3/2 {r8 e''8\glissando  f''8~} f''2~ f''8. d''16~ 
      | d''8 d''4 bes'4 bes'8 \tuplet 5/4 {aes'8.\bendAfter #-4  g'16 g'16~} 
      | g'4\bendAfter #-4  r2 r8 aes'8 
      | g'4. aes'8 g'4. aes'8 
      | g'4. es'8 d'4. aes8 
      | g2 d'8 es'8~ es'16 d'8 c'16 
      \bar "||" g4 g2.^\markup{\left-align \small vib}\bar  ".."
    }
    >>
>>    
}
