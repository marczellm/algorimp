\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Remember"
  composer = "Hank Mobley"
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
      | r1 | s1 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:9- | aes1:maj | es2:min7 aes2:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:9- | aes1:maj | es2:min7 aes2:7 
      | des1:maj | s1 | es1:min7 | ges1:7 | aes1:maj | s1 | g1:min5-7 | c1:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:7 | aes1:maj | es2:min7 aes2:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:9- | aes1:maj | es2:min7 aes2:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:9- | aes1:maj | es2:min7 aes2:7 
      | des1 | s1 | des1:min7 | ges1:7 | aes1:maj | s1 | g1:min5-7 | c1:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:7 | aes1:maj | es2:min7 aes2:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:9- | aes1:maj | es2:min7 aes2:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:9- | aes1:maj | es2:min7 aes2:7 
      | des1:maj | s1 | des1:min7 | ges1:7 | aes1:maj | s1 | g1:min5-7 | c1:7 
      | des1:7 | c1:7 | b1:11+.9 | bes1:7 | bes1:min7 | es1:7 | aes1:maj | es2:min7 aes2:7 
      | des1:7|
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


      \tempo 4 = 166
      \set Score.currentBarNumber = #-1
     
      | r8. bes16 \tuplet 3/2 {c'8 d'8 bes'8} aes'8 g'8 ges'8 f'8 
      | es'8 des'8 c'8 bes8 aes8 g8 ges8 aes8~ 
      \bar "||" \mark \default aes16 e16 f4 es'8 des'4 \tuplet 3/2 {aes4 f8} 
      | e4. des'8 c'4 \tuplet 3/2 {g4 e8} 
      | es4.. b16~^\markup{\left-align \small vib} b4 es4 
      | d4~ \tuplet 3/2 {d8 d8 bes8} r2 
      | r8 bes8 \tuplet 3/2 {des'8 f'8 aes'8} c''4 f'8 c''8 
      | b'4\glissando  e'4.^\markup{\left-align \small vib} r8 r4 
      | \tuplet 3/2 {r8 bes'8 aes'8} bes'8 aes'8 g'8 f'8 es'8 f'8 
      | ges'8 aes'8 a'8 g'8 aes'8 ges'8 f'8 es'8 
      \bar "||" des'4..^\markup{\left-align \small vib} aes'16 r2 
      | f'8\glissando  g'8~ \tuplet 6/4 {g'4 ges'16 f'16} e'8 c'8 g4 
      | f'8 fis'4 e'8 es'8 b8 fis8. e16 
      | f4.^\markup{\left-align \small vib} r8 r2 
      | r2. r8 es'8 
      | \tuplet 3/2 {aes'4 es'8} g'8 bes'8 \tuplet 3/2 {aes'4 es'8} d'8 f'8~ 
      | \tuplet 3/2 {f'8 es'8 c'8} b8 des'8~ des'16 c'8 aes16~ aes16 g8 bes16~ 
      | bes16 aes8 f16~ f16 ges16 a16 des'16~ des'16 f'8 es'16~ es'16 aes'8 ges'16~ 
      \bar "||" ges'16 e'8\glissando  f'16~ f'8. g'16~ \tuplet 6/4 {g'16 f'16 es'8. des'16~} des'4 
      | des'4 des'2^\markup{\left-align \small vib} des'4\bendAfter #-4  
      | r1 
      | es'16 fis'16 es'16 des'16 aes'8 e'4 es'8 \tuplet 3/2 {des'4 c'8~^\markup{\left-align \small vib}} 
      | c'4~ c'16 es'16 g'16 bes'16 aes'8 g'8 f'8 e'8~ 
      | \tuplet 6/4 {e'8 es'8. c'16~^\markup{\left-align \small vib}} c'4 r2 
      | r2 \tuplet 3/2 {des''4\glissando  c''8~} c''16 fis'8 g'16~ 
      | g'8 bes'8~^\markup{\left-align \small vib} bes'4. a'8 \tuplet 3/2 {aes'4 ges'8} 
      \bar "||" e'8\glissando  f'4 g'16 f'16 es'8. des'16~ des'4 
      | d'8 e'4 g'8 e'16 d'8 c'16 r4 
      | \tuplet 6/4 {r8. aes'8 g'16} fis'8 e'8 es'8 des'8 b4 
      | f'16 g'8. f'8 es'8 d'8 c'8 b4 
      | bes4^\markup{\left-align \small vib} r4 r8 bes8 \tuplet 3/2 {des'8 f'8 aes'8} 
      | c''8. aes'16 c''4~ c''16 bes'16\glissando  c''16 b'16 g'4 
      | aes'4 aes'4.^\markup{\left-align \small vib} r8 r4 
      | r16 c''16\bendAfter #+4  des''16 c''16 aes'2 f'4 
      \bar "||" \mark \default aes'8. aes'16 r2 r16 bes'16\glissando  c''8 
      | g'4 g'8 r8 r2 
      | des''4~^\markup{\left-align \small vib} des''16 b'8 fis'16~ fis'8 des'8 b4 
      | \tuplet 3/2 {bes'8\glissando  c''4} bes'8 f'8~ f'16 c'8 bes16~^\markup{\left-align \small vib} bes4 
      | r4 r8 f8~ \tuplet 3/2 {f8 bes8 des'8} f'8 aes'8~ 
      | \tuplet 3/2 {aes'8 c''8 bes'8~} \tuplet 6/4 {bes'16 aes'4 f'16} g'4 bes'8. aes'16 
      | r2 r8. d'16~ d'16 es'16 ges'16 bes'16~ 
      | bes'16 des''8 bes'16 c''8 bes'8~ bes'16 aes'8 f'16 ges'8 ges'8 
      \bar "||" \tuplet 3/2 {f'8 f'8 aes'8} bes'8 f'8 aes'4^\markup{\left-align \small vib} bes'4 
      | e'4 a'4 g'4^\markup{\left-align \small vib} a'4 
      | es'4 aes'4 fis'4 \tuplet 3/2 {aes'4 d'8~} 
      | d'8. g'16~ g'8.\glissando  f'16~ f'8 f'4.~ 
      | f'8 bes8 \tuplet 3/2 {des'8 f'8 aes'8} c''8 des''8 a'8 c''8 
      | bes'8 f'8 aes'8 bes'16 aes'16~ \tuplet 3/2 {aes'8 g'8 f'8} es'8 des'8 
      | c'8 bes8 aes8 g8 ges8 r8 r4 
      | r8 ges16 bes16 des'16 f'16 es'16 aes'16~ \tuplet 6/4 {aes'8. ges'16 a'16 b'16~} b'8 a'8~ 
      \bar "||" a'8 aes'8~^\markup{\left-align \small vib} aes'4. e'16 f'16 \tuplet 3/2 {bes'8 a'8 aes'8~} 
      | aes'8 bes'8 \tuplet 6/4 {a'8 aes'8. bes'16~} \tuplet 3/2 {bes'8 a'8 aes'8~^\markup{\left-align \small vib}} \tuplet 6/4 {aes'4 ges'16 f'16~} 
      | \tuplet 6/4 {f'8 des'16 bes8 a16} aes8 ges8 \tuplet 7/8 {f16. g32 a32 bes32 des'32} es'16 c'16 des'16 es'16 
      | e'16 fis'16 aes'16 bes'16 \tuplet 3/2 {es''4 des''8~} des''16 aes'8 e'16~ e'16 es'8 des'16 
      | c'8 r8 r4 r8 es'8 \tuplet 3/2 {aes'4 c''8~} 
      | \tuplet 6/4 {c''8 c''16\glissando  des''8 c''16~} c''16 aes'8 es'16~ es'16 des'16 es'16 c'16~ c'8 r8 
      | r4 r8 des''8 b'16\glissando  bes'8.~ bes'8 aes'8 
      | \tuplet 6/4 {g'4 ges'16 f'16} e'8 des'8~ des'16 c'8 bes16 aes8 ges8 
      \bar "||" f4~ f16 bes16 c'16 es'16~ es'16 des'16 es'16 f'16 \tuplet 6/4 {aes'8. f'8 f'16\glissando } 
      | g'8 d'8 \tuplet 3/2 {bes8 ges'8 d'8} bes16 f'16 d'8 e'4~ 
      | e'8 bes16 des'16 aes'8 b'16 a'16~ a'16 des'16 e'16 aes'16 fis'8 r8 
      | r8 aes'16\glissando  bes'16~ bes'8 a'16 aes'16 g'16 f'16 es'8 d'16 c'16 b16 a16 
      | bes16 c'16 des'16 es'32 f'32 \tuplet 3/2 {aes'8 g'8 f'8} es'16 d'16 des'16 es'16 c''8 r8 
      | r2 \tuplet 3/2 {des''4 aes'8} \tuplet 3/2 {es'8 d'8 des'8} 
      | \tuplet 3/2 {bes8 c'4} aes'2^\markup{\left-align \small vib} r4 
      | r4 des''8\glissando  c''16 b'16 aes'8 des''8\glissando  c''16 aes'8 des''16~ 
      \bar "||" \mark \default des''16\glissando  c''16 aes'8 \tuplet 3/2 {des''8\glissando  c''8 aes'8~} aes'8 des''8~ des''16\glissando  c''16 aes'8 
      | \tuplet 3/2 {des''8 c''8 g'8~^\markup{\left-align \small vib}} g'4 r2 
      | \tuplet 6/4 {r4 des''16 c''16} \tuplet 3/2 {b'8 aes'8 g'8} \tuplet 3/2 {fis'8 des'8 c'8} b8 r8 
      | r8 b'16\glissando  c''16~ c''8 bes'8 \tuplet 6/4 {a'16 aes'8 g'16 f'16 es'16~} \tuplet 5/4 {es'16 d'16 c'16 b16 aes16} 
      | \tuplet 6/4 {bes8 c'16 des'16 es'16 f'16} \tuplet 3/2 {aes'8 g'8 f'8} es'16 d'16 des'16 es'16 \tuplet 3/2 {f'8 aes'8 b'8} 
      | c''16 aes'16 f'16 aes'16~ \tuplet 6/4 {aes'16 bes'16 g'8 es'16 fis'16~} fis'16\glissando  aes'16 g'16 f'16 es'16 des'16 c'16 bes16 
      | aes16 g16 ges4 r8 r8 f'8 \tuplet 3/2 {es'8 d'8 aes'8~} 
      | aes'4~ \tuplet 5/4 {aes'8 g'16 f'16 e'16} c'8 aes4.^\markup{\left-align \small vib} 
      \bar "||" r4 des8 aes8 des'8 es'8 f'8. e'16~ 
      | e'16 f'16\glissando  g'8~ g'8. f'16 \tuplet 3/2 {e'4 c'8~} c'8 g8~ 
      | g4 b,4 b8 des'8 es'8 ges'8~ 
      | ges'16 f'8 c'16 es'8. es'16 \tuplet 3/2 {d'4 c''8~} c''8 r8 
      | r2 bes'8 c''4 aes'16 f'16 
      | \tuplet 3/2 {des'8 bes'4~} bes'16 f'16 es'16 c'16 aes'8 es'8 \tuplet 3/2 {g'4 f'8} 
      | es'8 d'8 \tuplet 3/2 {des'4 des'8} c'8. bes16~ \tuplet 3/2 {bes8 aes8 g8} 
      | ges4 r2 r8 des'8~ 
      \bar "||" des'16 e'8 f'16 fis'8 g'4 aes'8 des'4 
      | es'8\glissando  f'8~ \tuplet 6/4 {f'4~ f'16 aes'16~} aes'4~ \tuplet 5/4 {aes'8 g16 bes16 des'16~} 
      | \tuplet 3/2 {des'8 e'8 f'8~} \tuplet 3/2 {f'8 fis'8 g'8~} g'16 aes'8 g'16~ g'16 fis'16. g'32 ges'32 f'32 
      | e'4 es''8 des''8 aes'8 e'8~ e'16 es'8 des'16 
      | c'8 r8 r4 r8. des''16~ des''16 c''8 bes'16 
      | aes'8 bes'8 \tuplet 3/2 {aes'8 g'8 f'8} es'8 c'8~ c'16 aes8 f16 
      | \tuplet 3/2 {bes4 fis8} g8 a8 bes8 c'8 des'8 a8 
      | bes8 c'8 des'8 es'8 e'8 fis'8 g'8 e'8 
      \bar "||" \tuplet 3/2 {f'4 aes'8} r2 \tuplet 3/2 {aes'4 f'8} 
      | \tuplet 3/2 {e'4 g'8} r2 \tuplet 5/4 {r16 g'16 aes'16 g'16 e'16~} 
      | e'16 es'8 ges'16 r4 r16 f'16\glissando  fis'4 g'16 fis'16 
      | \tuplet 3/2 {d'4 f'8} r2. 
      | r16 bes'16 c''8~ \tuplet 6/4 {c''8 aes'8. f'16~} f'8 aes'8~^\markup{\left-align \small vib} aes'16 f'16 aes'16 c''16~ 
      | \tuplet 3/2 {c''8 bes'8 b'8~} b'16 ges'8 e'16~ e'8 b8~ b16 des'8 es'16 
      | r4 r8 aes'8 \tuplet 3/2 {g'8 ges'8 f'8} \tuplet 3/2 {es'4 des'8~} 
      | \tuplet 3/2 {des'8 b8\glissando  c'8~} c'16 es'16 ges'16 bes'16~ bes'16 aes'8 f'16~ f'16 fis'16 g'16 ges'16 
      \bar "||" f'8 des'8 r2.\bar  ".."
    }
    >>
>>    
}
