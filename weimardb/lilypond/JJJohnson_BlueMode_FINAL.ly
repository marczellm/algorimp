\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Mode"
  composer = "J.J. Johnson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key bes \major
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
      | bes1:7 | es2:7 e2:min5-7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes2:7 f2:7 | bes4:7 g4:7 c4:min7 f4:7 | bes1:7 | a2:min7 d2:7 | g1:min7 | f2:min7 bes2:7 
      | es1:7 | s1 | es2:min7 d2:7 | des2:7 g2:7 | c1:min7 | c2:7 f2:7 | bes2:7 g2:7 | c2:min7 f2:7|
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


      \tempo 4 = 64
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 6/4 {r8 c'16 d'16 f'16 g'16} 
      \bar "||" \mark \default bes'16. bes'32 bes'16 bes'32 aes'32~ \tuplet 6/4 {aes'16 f'16 es'8 bes16 cis'16\glissando } d'16 f'8 f'16~ \tuplet 5/4 {f'8 e'16 es'16 d'16} 
      | des'8 es8 c'4^\markup{\left-align \small vib} r2 
      | \tuplet 6/4 {r16 c'16 bes16 a8 bes16} \tuplet 3/2 {d'8 f'4} es'4~ es'16 des'16 a'16 g'16 
      | f'16 e'16 d'16 c'32 bes32~ \tuplet 7/8 {bes16 aes32 aes32 c'32 es'32 fis'32\bendAfter #+4 } \tuplet 6/4 {g'8 c'16 fis'16\bendAfter #+4  g'16 ges'16~} ges'16 bes'16\glissando  aes16 f'16~ 
      | f'8 c'8 \tuplet 3/2 {es'8 des'4} r4 \tuplet 14/16 {r8 r32 des'32 c'64\bendAfter #+4  des'64~} 
      | \tuplet 5/4 {des'16 bes16 des'16\bendAfter #+4  c'16 des'16~} des'8. e'16~ e'16 des'16 e'4 g'16 ges'32 f'32~ 
      | f'4 d'4 es'8 bes16 d'16~^\markup{\left-align \small vib} \tuplet 6/4 {d'4~ d'16 a16} 
      | \tuplet 6/4 {c'8 a16 bes16 d'16 f'16} \tuplet 6/4 {a'8 g'16 g'16 f'16 e'16} d'8 c'16 b16~ b16 aes'16 g'16 d'16 
      | \tuplet 12/8 {f'16. es'16. bes16. g16 c'32\bendAfter #+4 } \tuplet 3/2 {d'8 c'4~^\markup{\left-align \small vib}} c'8 r8 r4 
      | r8. d'16 es'8 bes16 d'16 \tuplet 6/4 {c'8 bes16 a16 c'16 es'16} aes'8 ges'16 c'16 
      | e'16\bendAfter #+4  f'8.~ f'16 bes16 bes16 bes16~ bes8. es'16 \tuplet 5/4 {g16 bes16 d'16 f'16 c'16} 
      | bes16 c'8.^\markup{\left-align \small vib} r2. 
      \bar "||" f'4 bes'4~ \tuplet 11/8 {bes'32 a'16. g'16 f'16. es'32 d'32~} d'8 f'8 
      | a4 e'4~ \tuplet 6/4 {e'16 es'16 c'8 a16 g16} fis16 es'16 c'16 cis'16 
      | d'16 c'16 bes16 a16 \tuplet 3/2 {c'8 bes16 r8.} r4 \tuplet 5/4 {r16 c''16 b'16 bes'16 a'16~} 
      | a'32 aes'16. c'16. f'32\bendAfter #+4  g'8 c'16 ges'16~ ges'16 bes'16\glissando  aes4 r8 
      | \tuplet 6/4 {r4 r16 c''16\bendAfter #+4 } \tuplet 6/4 {des''8 c''8. bes'16} \tuplet 3/2 {c''8 des''16 r8.} r4 
      | r8. c''32\bendAfter #+4  des''32~ \tuplet 3/2 {des''8 c''8 bes'8} aes'16 f'16 es'16 bes16 c'16\bendAfter #+4  d'16 f'8 
      | \tuplet 12/8 {c'4~ c'16 bes32 c'32} d'4 f8 r8 r4 
      | r4 f'8 es'8 \tuplet 3/2 {d'8 c'8 b8} \tuplet 14/16 {f16 aes32. g16. f64~} 
      | f8 es8^\markup{\left-align \small vib} r2 \tuplet 6/4 {fis16 g16 bes16 c'8 bes16} 
      | c'16\bendAfter #+4  des'16 des'16 c'16~^\markup{\left-align \small vib} c'8 r8 r2 
      | \tuplet 6/4 {f'8. d'8 es'16} f'16 bes'16 a'16 g'16 f'16 e'16 es'32 gis32 bes32 d'32~ \tuplet 12/8 {d'16. cis'16 a16. gis16 bes32 c'32~} 
      | c'8. a16 \tuplet 3/2 {c'8 d'4} es'8 bes16 cis'16~ cis'16 d'16 f'8\bar  ".."
    }
    >>
>>    
}
