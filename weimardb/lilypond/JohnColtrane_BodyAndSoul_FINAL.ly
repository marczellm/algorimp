\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "John Coltrane"
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
      | s2. r4 
      | es2:min/aes es2:min9/aes | aes1:7 | es1:min/aes | aes1:7 | des1:9/aes | f2:5+/aes g2:5+/aes | f1:min7/aes | e2:min7 a2:7 
      | aes1:sus4 | s1 | aes1:7 | b1:11+.9 | f2:5+/aes g2:5+/aes | f2:5+/aes g2:5+/aes | f2:5+/aes aes2:7 | des2:9 f4:13-.9- bes4:775+ 
      | es2:min/aes es2:min9/aes | aes1:7 | es2:min/aes es2:min9/aes | aes1:7 | des1:9/aes | f2:5+/aes g2:5+/aes | f1:min7/aes | e2:min7 a2:7 
      | aes1:sus4 | s1 | aes1:7 | b1:11+.9 | f2:5+/aes g2:5+/aes | f2:5+/aes g2:5+/aes | f2:5+/aes aes2:7 | des2:9 e4:min7 a4:7 
      | d1:9 | e1:min7 | d1:/fis | g2:min7 c2:7 | d2:maj f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj 
      | d1:min5-7 | g1:9- | c1:9 | es1:7 | aes2:maj b2:7 | e2:maj g2:7 | c2:maj b2:7 | bes2:sus4 bes2:13.9 
      | es2:min/aes es2:min9/aes | aes1:7 | es2:min/aes es2:min9/aes | aes1:7 | des1:9/aes | f2:5+/aes g2:5+/aes | f1:min7/aes | e2:min7 a2:7 
      | aes1:sus4 | s1 | aes1:7 | b1:11+.9 | f2:5+/aes g2:5+/aes | f2:5+/aes g2:5+/aes | f2:5+/aes aes2:7 | des2:9 f4:13-.9- bes4:775+ 
      | es2:min/aes es2:min9/aes|
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


      \tempo 4 = 142
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8. bes16~ 
      \bar "||" \mark \default bes8 es'4 es'8 \tuplet 3/2 {f'4 es'8~} es'8 es'16\glissando  f'16~ 
      | f'4. es'8 f'4 \tuplet 3/2 {es'4 a'8\glissando } 
      | \tuplet 3/2 {bes'4 bes'8~^\markup{\left-align \small vib}} bes'2.~ 
      | bes'8 r8 r8 a'8\glissando  c''4. bes'16 c''16 
      | aes'8 r8 r8 aes'8~ aes'16 a'16\glissando  bes'8 aes'8. g'16\glissando  
      | \tuplet 6/4 {a'4~ a'16 aes'16~} aes'8 g'4 aes'8~ \tuplet 6/4 {aes'8. bes'8 es''16~^\markup{\left-align \small vib}} 
      | es''2 r4 r8 des''8 
      | b'2~^\markup{\left-align \small vib} b'8 a'8 \tuplet 6/4 {ges'8 b'8 g'16 e'16} 
      | r4 r8 es'8~ \tuplet 6/4 {es'16 des''8. c''16 b'16} \tuplet 6/4 {bes'4 a'16 bes'16~} 
      | bes'4. aes'16 bes'16 \tuplet 3/2 {ges'4 des''8~} des''8 des''8~ 
      | des''16 es'16\glissando  f'8~ f'8. f'16~ f'4~ \tuplet 6/4 {f'4 es'16 f'16~} 
      | \tuplet 6/4 {f'16 aes'16 ges'8 es'16 des'16} b16 bes16 a16 c'16~ \tuplet 6/4 {c'16 aes16 b8 a16 g16} ges16 a16 f16 e16 
      | es4 r8 des'8 \tuplet 6/4 {es'4~ es'16 f'16~} f'8 ges'16\glissando  aes'16~ 
      | aes'4.. aes'16~ aes'8 aes'8 \tuplet 6/4 {des''4 g'16\glissando  aes'16~} 
      | aes'8. es'16~ es'8 es'16 aes'16 f'8. e'16\glissando  f'8 des'8~^\markup{\left-align \small vib} 
      | des'4 r4 r16 f'32\glissando  ges'8 es'32 f'16\glissando  ges'8. 
      \bar "||" es'2~^\markup{\left-align \small vib} \tuplet 6/4 {es'4~ es'16 ges'16~} ges'16 f'16 es'16 ges'16 
      | d'4. ges'8 \tuplet 3/2 {es'4 b8} r4 
      | r8 des'8 \tuplet 6/4 {bes8 ges8 des'16 ges'16~} ges'8 e'8~ \tuplet 3/2 {e'8 d'8 des'8} 
      | \tuplet 3/2 {e'8 d'4} e'8. c'16~^\markup{\left-align \small vib} c'2 
      | bes16 es'16 r8 r4 r8 aes'8 bes'8 aes'8 
      | aes'16\glissando  a'8. \tuplet 3/2 {aes'4 g'8~} g'8 aes'8~ \tuplet 6/4 {aes'8 es''8 c''16 es''16} 
      | c''4. aes'16 c''16 \tuplet 3/2 {aes'8 f'8 aes'8} \tuplet 3/2 {f'8 c'8 f'8} 
      | \tuplet 3/2 {ges'8 e'8 ges'8} \tuplet 3/2 {e'8 des'8 e'8} des'8. b16 \tuplet 3/2 {g8 e16 r8.} 
      | r4 r8 es'16 des'16 des''8 des''8~ \tuplet 6/4 {des''16 des''8. c''16\glissando  des''16~} 
      | \tuplet 5/4 {des''8 c''16 b'16 bes'16~} bes'8 bes'8~ bes'16 bes'8 ges'16~ ges'8 des''8 
      | \tuplet 3/2 {es'8\glissando  f'4~} f'4 ges'16 aes'16 bes'16 des''16 \tuplet 6/4 {g'16 a'16 b'16 a'16 g'16 ges'16} 
      | \tuplet 6/4 {a'16 f'16 e'16 es'16 g'16 ges'16} r4 \tuplet 6/4 {r4 e'16\glissando  f'16~} f'8 es'8 
      | des'4. es'4 es'8 \tuplet 6/4 {f'4 ges'16\glissando  aes'16~} 
      | aes'4. aes'4 aes'8 des''8. aes'16~ 
      | aes'4 es'8 aes'16 f'16~ f'4 es'16\glissando  f'8 des'16~ 
      | des'8 r8 r4 \tuplet 6/4 {des'16 d'16 e'16 d'8 des'16} b16 bes16 a16 aes16 
      \bar "||" \tuplet 6/4 {ges16 b16 a16 ges8.} r4 \tuplet 6/4 {r4 d'16 e'16} \tuplet 3/2 {ges'4 a'8~} 
      | \tuplet 3/2 {a'8 aes'8\glissando  a'8~} a'16 a'8 bes'16\glissando  b'4 a'8 b'8\glissando  
      | d''4.. d''16~ d''8 d''8 a'8 a'8~^\markup{\left-align \small vib} 
      | a'4. g'16 f'16 \tuplet 6/4 {g'16\glissando  a'4 a'16~} a'8 a'8~^\markup{\left-align \small vib} 
      | a'4. r8 r8 aes'16\glissando  a'16~ a'8 a'8 
      | aes'16\glissando  a'8 bes'16~ bes'8 bes'8~ \tuplet 6/4 {bes'4~ bes'16 des''16~} \tuplet 6/4 {des''4 c''16 des''16~} 
      | des''4.. b'16~ b'16 des''16 d''16 des''16 \tuplet 5/4 {b'16 des''16 d''16 b'16 a'16~^\markup{\left-align \small vib}} 
      | a'4. ges'16 des'16~ des'16 e'16 des'16 e'16 des'8 a8 
      | r4 r8 d'8 \tuplet 6/4 {e'16 f'4 g'16~} g'8 aes'8~ 
      | aes'16 g'16 aes'16\glissando  bes'16~^\markup{\left-align \small vib} bes'2~ bes'8 aes'16 g'16~ 
      | \tuplet 3/2 {g'8 d''8\glissando  e''8~} e''8 g'4 g'8~ \tuplet 3/2 {g'8 e''8 es''8~^\markup{\left-align \small vib}} 
      | es''4~ \tuplet 6/4 {es''8 c''8. aes'16} g'4 \tuplet 6/4 {es''8. des''8 c''16~^\markup{\left-align \small vib}} 
      | c''4. aes'16 c''16 \tuplet 6/4 {b'4~ b'16 bes'16\glissando } b'8. aes'16~ 
      | aes'8 r8 \tuplet 6/4 {r8. b16 e'16 aes'16~} \tuplet 5/4 {aes'16 b'16 f'16 g'16 a'16} b'16 g'8 f'16~ 
      | f'8 e'4. r4 r16 d'16\glissando  es'8 
      | es'8 d'8~ d'16 aes'16\glissando  bes'8~^\markup{\left-align \small vib} bes'4.. f'16 
      \bar "||" ges'16 f'16 e'8 aes'16 ges'16 es'16 des'16 bes16 ges16 f16 es16~ es16 ges16 aes8 
      | ges8. es16 f8 r8 r4 r8 f'16 es'16~ 
      | es'16 a'16\glissando  bes'8 bes'8 bes'8~^\markup{\left-align \small vib} bes'2~ 
      | bes'4.. bes'16 \tuplet 3/2 {b'8\glissando  c''4\bendAfter #+4 } \tuplet 3/2 {b'8 c''8 aes'8~} 
      | aes'2~ aes'8 bes'8 \tuplet 6/4 {aes'4 g'16\glissando  a'16~} 
      | a'8 aes'4 g'4 aes'4. 
      | \tuplet 3/2 {bes'8 es''4} es''2~ es''16 des''8 ges'16~ 
      | ges'2~ \tuplet 3/2 {ges'8 e'8 b8} \tuplet 3/2 {g8 ges8 g8} 
      | r4 r8 es'16 des'16~ des'8 des''8~ des''16 des''8 des''16~ 
      | des''8 c''16 b'32 bes'32~ bes'8 bes'8~ bes'4~ \tuplet 3/2 {bes'8 ges'8 des''8} 
      | es'8\glissando  f'4 f'4. r4 
      | r8. es'16\glissando  \tuplet 3/2 {f'4 es'8~} es'8 aes'8~ aes'8. f'16~ 
      | f'8 des'8~ des'4.. bes16~ \tuplet 6/4 {bes16 c'8 es'8 a16~} 
      | a4. r8 r8 ges8 aes16 b16 g8~ 
      | \tuplet 6/4 {g4 d16 g16~} \tuplet 3/2 {g8 des8 c8~} c8 aes8 \tuplet 3/2 {aes4 f8~} 
      | f4 r4 ges'4 \tuplet 3/2 {f'8\glissando  ges'4} 
      \bar "||" \mark \default es'4~ \tuplet 5/4 {es'8 d'16 es'16 f'16} es'16 d'16 es'4 r8\bar  ".."
    }
    >>
>>    
}
