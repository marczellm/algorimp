\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Rainbow People"
  composer = "Dexter Gordon"
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
      | s4 r2. | s1 
      | es2 f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2:maj c2:7 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2 des2:7 | b2:min7 e2:7 
      | bes1:min7 | es1:7 | a1:min5-7 | aes1:7 | g1:7 | c1:7 | f1:7 | bes1:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2 c2:7 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2 c2:7 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2:maj des2:7 | b1:7 
      | bes1:min7 | es1:7 | a1:min5-7 | aes1:7 | g1:7 | c1:7 | f1:7 | bes1:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2:maj c2:7 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2:maj c2:7 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2:maj des2:7 | c2:min7 b2:min7 
      | bes1:min7 | es1:7 | a1:min5-7 | aes1:7 | g1:7 | c1:7 | f1:7 | bes1:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | g2:min7 f2:min7 | fis2:min7 b2:7 | f1:min7 | bes1:7 | es2:maj c2:7 | f2:min7 bes2:7 
      | es2:maj f2:min7|
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


      \tempo 4 = 120
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r4 r8 es8 \tuplet 3/2 {e4 c'8~} c'8 e8 
      | f8 g8 aes8 f8 ges8 a8 \tuplet 6/4 {d'8 es'16 d'16 c'8~} 
      \bar "||" \mark \default c'16 bes8 es'16~ es'8 es'8 \tuplet 3/2 {d'4 f'8~} f'8 f'8 
      | es'8 c'8~ c'16 es'8 g'16 f'8 g'8~ g'16 aes'8 bes'16~ 
      | bes'16 g'8 bes16~ bes16 c'8 f'16~ f'8 r8 r4 
      | r8 aes'8 \tuplet 3/2 {e'8 cis'8 aes8~} \tuplet 3/2 {aes8 fis'8 aes'8} fis'4~ 
      | \tuplet 6/4 {fis'4~ fis'16 g'16~} \tuplet 3/2 {g'8\bendAfter #+4  aes'8 g'8~} g'8~ g'32 f'16\bendAfter #+4  g'32~ g'8 f'8~ 
      | \tuplet 6/4 {f'4~ f'16 es'16~} \tuplet 3/2 {es'8 f'8 es'8} g'4 r4 
      | r4 \tuplet 3/2 {d'8 c'8 f'8~} \tuplet 6/4 {f'16 d'8 e'8 c'16~} c'8 r8 
      | r8. g'16~ g'16 f'8 bes'16 g'4.. bes16 
      \bar "||" f'4~ \tuplet 5/4 {f'8 d'16 es'16 f'16} d'8~ d'32 bes32 c'32 d'32 bes4 
      | \tuplet 6/4 {g16 aes16 bes16 g8.~} g2 f16. d16 es32 g32 bes32~ 
      | bes16 d'16 b16 c'16 es'16 g'16 d'16 es'16 \tuplet 6/4 {g'16 bes'16 d''8 es''8} bes'8 r8 
      | r4 a'4 des'8 r8 r4 
      | \tuplet 3/2 {c'8 b8 c'8} es'16 d'16 es'16 e'16 \tuplet 3/2 {f'8 d'4} bes8 r8 
      | r4 aes16 bes16 c'16 es'16 fis'16 g'16 fis'16 g'16 \tuplet 3/2 {es'8 bes8 fis8} 
      | g32 bes16 es'16 d'16 c'32 f'8 bes8~ bes16 des'16 es'16 f'16 aes'16 des''16 aes'8~ 
      | \tuplet 6/4 {aes'16 b16 cis'16 d'8 e'16} \tuplet 6/4 {fis'8 e'8 d'16 cis'16~} cis'16 b16 fis16 a16 \tuplet 3/2 {fis8 aes8 e8} 
      \bar "||" r2. \tuplet 3/2 {r8 aes'8 g'8} 
      | \tuplet 3/2 {bes'8 aes'8 c''8} \tuplet 3/2 {bes'8 des''8 c''8} \tuplet 3/2 {es''4 c''8~} c''8 a'8~ 
      | a'4~ a'16 g'16 es'16 c'16~ c'16 a8 d'16~ d'16 c'8 aes16~ 
      | aes4 r4 \tuplet 3/2 {aes'8 e'8 c'8} \tuplet 3/2 {aes8 d'8 aes8~} 
      | aes4 r4 g'16 ges'16 f'16 e'16 d'16. c'16 b16 d'32~ 
      | \tuplet 6/4 {d'16 f'8 a'16 g'16 f'16} e'16 g'16 bes'16 d''16~ d''16 fis'16 g'16 bes'16 \tuplet 3/2 {g'8 a'8 e'8} 
      | r2 \tuplet 6/4 {fis'8 g'8 es'16 d'16~} d'16 c'8 fis'16 
      | g'16 es'16 c'16 aes16 \tuplet 3/2 {g8 f8 es8} d4 bes8 r8 
      \bar "||" r2 r16 es'8 bes16~ bes8 r8 
      | r8 f'8 \tuplet 3/2 {bes8 ges'4} bes16 g'32~ g'8 bes32 r4 
      | r2 \tuplet 6/4 {r8. aes'8 g'16} aes'8 g'8 
      | es'4.. bes16~ bes16 e'8 cis'16~ cis'16 a8 g16 
      | es'4 es'4. c'8 \tuplet 3/2 {es'4 es'8} 
      | g'4 g'4 \tuplet 3/2 {es'4 bes8~} bes16 d'8 f'16~ 
      | f'16 es'8 bes16 r2 \tuplet 3/2 {des'8 e'8 g'8} 
      | \tuplet 3/2 {f'8 aes'8 c''8} \tuplet 3/2 {b'8 aes'8 f'8} d'4 bes'8 g'8 
      \bar "||" \mark \default d'4. f'16 d'16 es'8 bes4 r8 
      | r4 \tuplet 6/4 {r16 aes8 bes16 c'16 es'16~} es'16 fis'16 g'16 fis'16 g'16 es'16 bes16 fis16 
      | g16 bes16 es'16 d'16 c'16 f'32~ f'8 d'32 \tuplet 3/2 {es'8 c'8 aes8} f16 g16 f16 e16 
      | f16 a8.~ \tuplet 6/4 {a4 c'16 cis'16~} cis'16 a16 e16 es16 aes8 ges8 
      | r2 r32 f16 e16\glissando  f16 g32 \tuplet 6/4 {aes8. g16 aes16 bes16~} 
      | \tuplet 6/4 {bes16 c'16 b8 c'16 d'16} es'16 d'16 es'16 f'16~ \tuplet 6/4 {f'16 g'16 fis'8 g'16 aes'16} \tuplet 3/2 {bes'8 g'8 aes'8} 
      | f'16 g'8. bes'4 g'16 aes'16 g'16 f'16 e'8 c''8 
      | r4 \tuplet 6/4 {r16 es''16 c''16 aes'16 f'8} es'16 d'16 c'16 b16~ \tuplet 6/4 {b16 c'16 d'16 g'8.} 
      \bar "||" d'8 f'16 es'16~ es'4 d'8 c'8 r4 
      | r4 \tuplet 6/4 {r16 g'8 es'16 c'16 aes16~} \tuplet 3/2 {aes8 f'8 d'8} bes16 g16 r8 
      | r4 r16 es'16 c'16 aes16 f16 d'8 des'16~ des'16 c'8 b16~ 
      | b8 a8~ a8. e16 aes8 fis8 cis'4~ 
      | cis'16 bes8 bes16 r2. 
      | bes8 g'8 g'16 aes'8 aes'16~ aes'8 bes'8 bes8. g'16~ 
      | g'16 es'8 es'16~ es'4 bes16 des'8 aes'16~ aes'8. aes'16~ 
      | \tuplet 3/2 {aes'8 fis'8 cis''8} b'8 ges'4. r4 
      \bar "||" r4 \tuplet 7/8 {r32 f'16 c''16 aes'32 f'32} des'8 r8 r4 
      | \tuplet 6/4 {b'8 g'16 e'8 des'16~} \tuplet 6/4 {des'16 g'8 aes'16 f'16 des'16~} des'16 bes16 es'16 d'16 des'16 f'16 c'16 b16 
      | bes8 r8 r4 \tuplet 6/4 {g'16 ges'16 f'16 es'16 d'8} c'16 bes16 a8 
      | r4 r8 aes'8 g'16 ges'16 bes16 d'16 ges'16 d'16 c'16 aes16 
      | fis8 g4. g'4. f'8~ 
      | f'16 e'8 c'16 f'8 f'8 fis'8 g'4. 
      | f'4. c''8~ c''2 
      | b'8 bes'8 f''4. r8 r4 
      \bar "||" r8. bes'16 d''8 es''8 bes'16 d''8 es''16~ es''8 r8 
      | r4 \tuplet 3/2 {a'8 bes'8 ges'8} \tuplet 3/2 {a'4 bes'8~} bes'4~ 
      | bes'8. es'16~ \tuplet 6/4 {es'16 fis'8 g'8 es'16~} es'16 fis'32~ fis'8 g'32~ g'8 es'8~ 
      | es'4 f'8 es'8 aes'8 cis'8 r4 
      | r4 g'16 aes'16 e'16 g'16 f'4 g'16 aes'16 e'16 g'16 
      | \tuplet 5/4 {f'8 es'16 d'16 c'16~} \tuplet 6/4 {c'16 b8 c'16 g'16 f'16} \tuplet 3/2 {es'8 c'8 aes8} f16 g16 f16 e16 
      | f16 bes16 es'8 r2. 
      | \tuplet 3/2 {des'8 e'8 g'8} e'16 f'16 g'16 aes'16 bes'16 b'16 des''16 bes'16 aes'16 g'16 f'16 es'16 
      \bar "||" \mark \default d'16 f'16 d'16 es'16 f'16 d'8.~ d'16 d'16 bes16 c'16 d'16 bes16 g16 aes16 
      | \tuplet 6/4 {bes8 g8 es16 f16} d8 bes,8 r2 
      | r4 \tuplet 3/2 {es8 c8 es8} \tuplet 3/2 {g8 c'8 bes8~} bes4 
      | fis4 cis16 fis8 a16~ \tuplet 3/2 {a8 e'8 fis'8} es'4~ 
      | es'4 c'16 d'16 es'16 f'16 g'16 aes'16 e'16 g'16 f'16 es'16 d'16 c'16 
      | b16 c'16 g'16 f'16 \tuplet 3/2 {es'8 c'8 aes8} f16 g16 f16 e16 f16 bes16 r8 
      | r4 r16 es'8 es'16 g'16 e'16 f'16 g'16 aes'16 e'16 c'16 aes16 
      | \tuplet 7/8 {e32 g16 f16 e32 f32} aes8 c'8 \tuplet 6/4 {b8 cis'16 d'8 e'16~} e'32 ges'16 d'16 b16 g32 
      \bar "||" bes2 \tuplet 3/2 {g'8 aes'8 es'8} f'8 d'8~ 
      | d'8 es'8 c'16 d'16 bes4. \tuplet 3/2 {c'8 es'8 g'8} 
      | bes'16 d''16 es''16 es''16 \tuplet 3/2 {es''8 es''4} r2 
      | r16 c''16 cis''8~ cis''16 cis''8 cis''16 cis''4 r4 
      | \tuplet 6/4 {r4 r16 es''16~} es''4 c''8 aes'8 f'8 c'8 
      | es'8 c'8 es'8 c'8 d'8 g'4. 
      | es'4. aes'8~ aes'16 f'8 des'16~ des'8 ges'8~ 
      | ges'16 es'8 b16~ b8 r8 r4 \tuplet 6/4 {r4 r16 c''16~} 
      \bar "||" c''4~ c''16 bes'8 aes'16~ \tuplet 3/2 {aes'8 g'8 f'8~} f'16 es'8 d'16 
      | des'8 es'8 f'8 g'8 c''8 bes'8 a'8 bes'8~ 
      | bes'16 es''8 c''16 r2. 
      | d''8. aes'16~ aes'4 r2 
      | d''16 des''16 c''16 bes'16 b'8 d'4 a'4.~ 
      | \tuplet 6/4 {a'16 g'16 a'16 g'16 f'16 es'16} e'8 c'8~ c'4~ \tuplet 3/2 {c'8 c'8 bes8} 
      | \tuplet 6/4 {a8 a8 bes16 c'16~} \tuplet 3/2 {c'8 c'8 d'8} es'16 d'16 c'16 bes16 a16 c'16 es'16 g'16 
      | f'8 r8 r4 \tuplet 6/4 {g'8 aes'16 e'8 g'16} \tuplet 3/2 {f'8 es'8 d'8} 
      \bar "||" \tuplet 3/2 {c'8 bes4~} bes8. bes'16~ bes'8. g'16~ g'16 f'8 es'16 
      | f'4. g'8 r2 
      | r8 es'8 \tuplet 6/4 {es'8. es'8 es'16~} \tuplet 7/8 {es'16 c'8 bes32~} bes4~ 
      | \tuplet 6/4 {bes8 b'8. b'16~} b'16 b'8 b'16~ b'8 a'8 fis'8 r8 
      | r8. bes'16~ bes'16 g'16. es'16 c'32~ \tuplet 6/4 {c'8 aes'8. f'16~} \tuplet 6/4 {f'8 d'8. bes16~} 
      | \tuplet 3/2 {bes8 fis'8 g'8~} g'16 aes'8 a'16~ a'16 bes'8 g'16~ g'8 g'8~ 
      | \tuplet 7/8 {g'16 es'8 bes32~} bes8 r8 r4 r16 bes8 b16~ 
      | b16 c'8 aes'16 f'8 fis'8 g'8 es'8~ es'16 bes8 bes16 
      \bar "||" \mark \default f'8. es'16~ es'4 r2\bar  ".."
    }
    >>
>>    
}
