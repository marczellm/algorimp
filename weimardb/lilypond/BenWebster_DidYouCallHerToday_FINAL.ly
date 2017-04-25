\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Did You Call Her Today"
  composer = "Ben Webster"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key aes \major
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
      
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1:6 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1 | f1:7 | bes1:min7 | es1:7 | aes1:6 | s1 
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1:6 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 
      | bes1:7 | es1:7 | aes1:6 | s1 | es1:min7 | aes1:7 | des1:6 | s1 
      | des1:7 | d1:dim | aes1:6 | f1:7 | bes1:min7 | es1:7 | aes1:6 | s1 
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


      \tempo 4 = 118
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {g'4 aes'8~^\markup{\left-align \small vib}} aes'4 \tuplet 3/2 {f'4 d'8} 
      | \tuplet 3/2 {des'8 es'8 c'8} bes4^\markup{\left-align \small vib} r2 
      | r8 d'8 es'8 ges'8~ \tuplet 3/2 {ges'8 fis'8\glissando  g'8} f'8 es'8 
      | \tuplet 6/4 {aes'8 f'8. b16~} b8\glissando  c'4 r8 r4 
      | r8 es'8~ es'16\glissando  f'8 des'16 \tuplet 3/2 {aes'4 f'8} e'8. c'32 es'32~ 
      | es'8 c'8 aes4 ges8 aes4^\markup{\left-align \small vib} r8 
      | r2 \tuplet 3/2 {g8\glissando  bes8 des'8~} \tuplet 3/2 {des'8 d'8\glissando  f'8} 
      | aes'8 bes'8~ bes'16 des'8 des'16~^\markup{\left-align \small vib} des'4 r4 
      | r4 bes8 c'8 des'8 es'8 e'8 g'8 
      | aes'8 aes8~^\markup{\left-align \small vib} aes8. b16~ b8. bes16~ bes8. aes16 
      | \tuplet 3/2 {c'4 es'8} r4 r8. g16\glissando  \tuplet 3/2 {a8 c'8 d'8~} 
      | d'16 f'16 g'16 d'16~ \tuplet 3/2 {d'8 f'8 c'8} \tuplet 3/2 {d'8 a8 c'8} g8 r8 
      | r4 r16 g32 a32 d'16 e'32 aes'32\bendAfter #+4  \tuplet 3/2 {g'8 aes'8 aes'8~^\markup{\left-align \small vib}} aes'8 aes'8~ 
      | \tuplet 3/2 {aes'8 aes'8 f'8} \tuplet 3/2 {des'4 d'8~} d'16 g'8 f'16~ f'8 fis'16\glissando  g'16 
      | bes'8 es'16 d'16 es'8^\markup{\left-align \small vib} r8 r4 r8 e'8 
      | f'8. bes16~ bes8 b8 \tuplet 3/2 {c'8 g8 a8} c'8 f'8~ 
      \bar "||" \mark \default f'16 c'8 c'16~^\markup{\left-align \small vib} c'4 r4 \tuplet 3/2 {r8 aes8 c'8} 
      | des'8 d'16 bes16 \tuplet 3/2 {des'8 d'8 b8} \tuplet 3/2 {des'8 d'8 bes8} \tuplet 3/2 {d'8 es'8 c'8} 
      | es'4.^\markup{\left-align \small vib} e'8 f'8. aes16~ \tuplet 6/4 {aes8 bes16 aes16 g8} 
      | aes16 aes8 es'16~ es'8 c'8 r4 \tuplet 3/2 {r8 f'8 es'8~} 
      | \tuplet 3/2 {es'8 g'8\glissando  aes'8} f'8 es'8 \tuplet 3/2 {bes'4 f'8} es'8 bes8 
      | \tuplet 3/2 {des'8 c'8 aes8} ges8^\markup{\left-align \small vib} r8 r4 es'16\glissando  f'8. 
      | \tuplet 3/2 {bes8 des'8 bes8} es'4\glissando  f'4.\bendAfter #-4  ges8 
      | \tuplet 3/2 {f4 es8~} \tuplet 3/2 {es8 es8 es8} r2 
      | \tuplet 3/2 {r8 aes8 b8} \tuplet 3/2 {des'4 des'8} r4 r8 aes16 bes16 
      | \tuplet 3/2 {des'8 d'8 des'8~} des'16 des'16 c'8~ c'8. aes16 \tuplet 3/2 {b4 d'8} 
      | es'8. b16 c'4 es'4.^\markup{\left-align \small vib} aes8 
      | \tuplet 3/2 {a8 c'8 d'8} f'8 g'8 \tuplet 3/2 {d'8 des'8 c'8} a8 g8 
      | aes8 r8 r4 fis'16 g'16 ges'16 f'16 \tuplet 3/2 {d'8 g'4} 
      | \tuplet 3/2 {g8 es'8 c'8} b8 r8 r4 es8. des'16 
      | c'8. aes16~ aes16 bes16 aes16 g16 aes8 r8 r4 
      | r4 e'16 f'8 aes'16 bes'16.\glissando  b'8 c''32~ c''8. aes'16 
      \bar "||" \mark \default bes'8\bendAfter #+4  b'8 r2. 
      | \tuplet 6/4 {f'4~ f'16 aes'16} \tuplet 3/2 {b'4 aes'8~^\markup{\left-align \small vib}} aes'4 \tuplet 3/2 {f'4 es'8} 
      | \tuplet 6/4 {aes'4 es'16 des'16} b4 des'8 es'8^\markup{\left-align \small vib} r4 
      | r4 r8 g'8 \tuplet 3/2 {aes'8 bes'8 aes'8} g'16\glissando  aes'8 bes'16 
      | fis'8 g'8\glissando  aes'8 bes'16 f'16 g'16\glissando  aes'8 bes'32 aes'32 ges'4 
      | f'8 aes'8 \tuplet 6/4 {e'4 d'16 es'16~} es'8 r8 r4 
      | r4 \tuplet 3/2 {es'8\glissando  f'8 aes'8} r2 
      | \tuplet 6/4 {bes8 des'8 es'16 des'16~^\markup{\left-align \small vib}} des'4 r2 
      | r2 es'8\glissando  f'16 aes'16 bes'4 
      | \tuplet 3/2 {bes'8 b'4} bes'8 aes'8~^\markup{\left-align \small vib} \tuplet 6/4 {aes'4 bes'16 aes'16} f'8 r8 
      | r4 a8\glissando  bes16 b16 \tuplet 3/2 {c'8 des'8 b8} d'8 b16 es'16~ 
      | \tuplet 3/2 {es'8 b8 e'8} \tuplet 3/2 {f'4 bes8~} bes16 a16 c'16 des'16~ des'16 f'16\glissando  ges'16 f'16~ 
      | f'16 es'16 d'16 f'16 \tuplet 3/2 {c'8 bes8 c'8~^\markup{\left-align \small vib}} c'8 r8 r8. g16~ 
      | g16 aes8 f'16\glissando  g'16 aes'16 g'16 f'16 g'8 aes4 g8 
      | \tuplet 6/4 {es'8. c'8 des'16} es'8 c'8 bes8^\markup{\left-align \small vib} r8 r4 
      | \tuplet 7/8 {r16. e16 f32 ges32~} \tuplet 6/4 {ges8 f16 a8 f16} c'16 f16 es'8 \tuplet 6/4 {f'8.\glissando  ges'8 e'16} 
      \bar "||" \mark \default \tuplet 3/2 {f'8 bes8 c'8~^\markup{\left-align \small vib}} c'8 r8 r8 ges'8~ \tuplet 6/4 {ges'16 aes'16 bes'16 aes'16 f'8} 
      | des'8 r8 r4 c''8 bes'8 c'16 des'8 g16 
      | c'8. g'16\glissando  \tuplet 5/4 {aes'8 bes'16 aes'16 f'16} \tuplet 6/4 {bes4\glissando  b16 c'16~^\markup{\left-align \small vib}} c'8 r8 
      | r8 aes8 a16\glissando  b8. \tuplet 3/2 {c'4 des'8~} des'8 bes16 c'16~ 
      | \tuplet 3/2 {c'8 bes8 des'8} \tuplet 3/2 {bes4 c'8} \tuplet 3/2 {c'4 aes8} ges8 r8 
      | r8. es'16\glissando  e'8 f'8 \tuplet 3/2 {es'8\glissando  e'8 des'8} \tuplet 3/2 {es'4 c'8} 
      | \tuplet 3/2 {des'4 aes8} e4 \tuplet 3/2 {e'8\glissando  f'8 des'8~^\markup{\left-align \small vib}} des'8 r8 
      | r4 r8 aes8 \tuplet 3/2 {b4 des'8} d'8 es'8 
      | des'16\bendAfter #+4  es'16 des'8 \tuplet 3/2 {d'4 d'8\glissando } \tuplet 3/2 {es'4 aes8~} aes4 
      | \tuplet 3/2 {aes4 bes8~^\markup{\left-align \small vib}} bes8 r8 r4 \tuplet 3/2 {ges8 aes8 c'8} 
      | es'8 fis'16\glissando  g'16~ g'16 fis'16\glissando  g'16 fis'16\glissando  \tuplet 3/2 {g'8 f'8 c''8~} c''16 g'16 f'16 g'16~ 
      | g'8\glissando  r8 r4 des'16\glissando  d'8. \tuplet 3/2 {aes'4 aes'8~^\markup{\left-align \small vib}} 
      | aes'8 r8 r8. g32 a32 \tuplet 6/4 {d'8 f'16 g'16 aes'16 aes'16~} aes'8 aes'8~^\markup{\left-align \small vib} 
      | aes'8 r8 r4 e'16 f'8 aes'16 bes'16\glissando  b'8 c''16 
      | c''8\bendAfter #-4  b'8 \tuplet 3/2 {aes'4 es'8} aes'4.^\markup{\left-align \small vib} f'8 
      | \tuplet 3/2 {es'8 aes'4} des'8 aes'8 c'8. b16~ b16 bes8 f16 
      \bar "||" aes8 r8 r2.\bar  ".."
    }
    >>
>>    
}
