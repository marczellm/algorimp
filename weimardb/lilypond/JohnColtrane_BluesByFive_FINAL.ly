\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues by Five"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7|
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


      \tempo 4 = 177
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 r8 aes8 bes16 bes8 c'16~ 
      | c'8. es'16 f'2 aes'8 bes'8~ 
      | bes'2 \tuplet 3/2 {aes'8 g'8 f'8} r4 
      | r1 
      | r16 es'8 f'4. c'16 cis'16 d'16 es'4 
      | r1 
      | r1 
      | r8 a'4 e'8 c'8 bes8 r4 
      | \tuplet 6/4 {r8. a'8 bes'16~} bes'8 g'8 es'8 d'8 c'8 es'8 
      | f'4 \tuplet 3/2 {f'8 d'8 c'8~} c'8 b4. 
      | \tuplet 3/2 {es'8 d'8 es'8} \tuplet 3/2 {d'8 c'4} \tuplet 3/2 {e'8 f'4} \tuplet 3/2 {cis'8\glissando  d'4} 
      \bar "||" \mark \default bes8 r8 r2. 
      | r1 
      | r4 \tuplet 6/4 {c'8 d'8. es'16~} es'16 f'8 g'16~ g'16 aes'8 bes'16~ 
      | \tuplet 3/2 {bes'8 bes'8 c''8~} \tuplet 6/4 {c''4~ c''16\bendAfter #-4  c'16~} c'16 es'8 d'16~ d'8 c''16 bes'16~ 
      | bes'4~ \tuplet 5/4 {bes'8 a'16 aes'16 g'16~} g'8 g'16 es'16~ es'8 es'8 
      | \tuplet 3/2 {des'4 des'8} r2. 
      | r1 
      | r8 bes'8 ges'8 es'8 \tuplet 6/4 {c'8. b8 a'16~} \tuplet 3/2 {a'8 f'8 d'8} 
      | c'16 g'16 bes'16 g'16 e'8 des'8~ des'16 g'8 es'16~ es'8 d'8 
      | c'4 \tuplet 6/4 {f'4~ f'16 d'16~} d'8 f'8 des'8 a8~ 
      | a16 c'8 f16~ \tuplet 6/4 {f16 g4 bes16~} bes4 r4 
      | r1 
      \bar "||" \mark \default r2 r16 cis'16\glissando  d'4 g'8 
      | es'4. \tuplet 6/4 {f'16 g'16 aes'16} bes'8. e'16~ \tuplet 6/4 {e'8. f'16 gis'16 a'16} 
      | g'2 ges'8 f'8 es'8 d'8 
      | c'8 bes8~ bes16 c'16 es'16 f'16 g'8 f'8 \tuplet 6/4 {fis'16 g'16 aes'4} 
      | g'2^\markup{\left-align \small vib} \tuplet 3/2 {bes8 es'4} r4 
      | r1 
      | r4 e'8 f'16 es'16~ es'16 d'8 f'16~ f'16 d'8 c'16~ 
      | c'16 b8 g16~ g4 g16 es'8 d'16~ d'8 b8 
      | \tuplet 3/2 {g8 c'4~} c'16\bendAfter #+4  a16 g16 a16 g8 r8 r8. f16~ 
      | f8. f16~ f16 e8 bes16~ bes16 d'8 c'16~ c'8 a8 
      | g8 bes8~ bes16 bes8 bes16~ bes8 r8 r4 
      | r1 
      \bar "||" \mark \default r4 r8. f'16~ f'16 gis'16 a'16 bes'16~ bes'8 bes'8~ 
      | bes'2 \tuplet 6/4 {g'8. es'8 f'16~} f'8 g'8 
      | f'4~ \tuplet 6/4 {f'8 es''8 c''16 aes'16} f'8 c'16 e'16~ e'8. f'16 
      | bes'16 d''16 es''8 \tuplet 5/4 {c''16 bes'16 aes'16 f'16 es'16} d'4 es'16 f'16 des''16 b'16~ 
      | b'8 r8 r2. 
      | bes'8\glissando  c''4\bendAfter #-4  bes'8 ges'8 f'16 es'16~ es'8 d'8 
      | c'8 bes8~ \tuplet 6/4 {bes4 c'16 es'16} f'16 g'16 c''16 a'16 r4 
      | r1 
      | b'8 ges'8~ ges'8. es'16 g'16 bes'16 f'8 r4 
      | r2 a'16 g'16 f'8 es'8 d'8 
      | c'4 a4 f'8 aes'8 ges'8 des'8 
      | \tuplet 3/2 {b8 fis'8 g'8} \tuplet 3/2 {ges'8 e'8 d'8} c'8 b8 \tuplet 6/4 {ges'8. f'8 es'16~} 
      \bar "||" \mark \default es'16 cis'16 d'8 f'16 g'8 aes'16~ aes'2 
      | \tuplet 3/2 {es'8 fis'8\glissando  g'8~} g'8. bes'16 c''16 des''8 es'16~ es'8 r8 
      | r1 
      | \tuplet 6/4 {r16 bes'16 c''16 d''8 des''16} c''8 bes'8~ bes'16 aes'8 g'16~ g'16 f'8 d'16 
      | es'8 r8 r8. g'16~ g'16 f'8 g'16~ g'16 aes'8 bes'16~ 
      | bes'16 g'8 es'16~ es'8 bes4 e'8~ e'16 des'16 e'16 g'16 
      | bes'8 f'16 es'16~ \tuplet 6/4 {es'8 d'8. c'16~} c'8 bes8 f4 
      | r1 
      | r4 r8. g16~ g16 d'8 es'16~ es'16 f'8 g'16~ 
      | \tuplet 3/2 {g'8 d'8\glissando  es'8~} es'4 c'8 a8 f8. c'16\glissando  
      | d'4. bes8 bes4.^\markup{\left-align \small vib} r8 
      | r1 
      \bar "||" \mark \default \tuplet 6/4 {r4 r16 bes16~} bes8 d'8 d'8 f'8 d'16 f'16 aes'16 f'16 
      | \tuplet 3/2 {aes'8 g'8 es'8~} \tuplet 6/4 {es'16 g'8 bes'8 g'16} bes'8\glissando  des''8 e'4 
      | r2 r8. e'16~ \tuplet 6/4 {e'16 f'8. es'16 f'16~} 
      | f'16 e'16 des'16 e'16 es'4. c'16 aes16 f16 d'16 r8 
      | r2. bes4 
      | \tuplet 3/2 {bes8 es'8 bes8} \tuplet 3/2 {es'8 g'8 es'8} \tuplet 3/2 {g'8 des'8 bes8} \tuplet 3/2 {des'8 f'8 des'8} 
      | \tuplet 3/2 {f'8 aes'8 f'8} \tuplet 3/2 {aes'8 c''8 a'8} \tuplet 3/2 {c''8 a'8 f'8} d'4 
      | r4 r8 g'16 aes'16 e'8 aes'16 e'16 b4 
      | \tuplet 3/2 {r8 g'8 es'8} \tuplet 3/2 {g'8 es'8 c'8} \tuplet 3/2 {aes8 f'8 d'8} f'8 d'8~ 
      | \tuplet 3/2 {d'8 es'8 c'8} es'8 c'8~ \tuplet 6/4 {c'16 a16 des'8. des'16~} \tuplet 3/2 {des'8 f'8 des'8} 
      | \tuplet 3/2 {f'8 a'8 f'8} \tuplet 3/2 {a'8 f'8 d'8} \tuplet 3/2 {c'8 g'8 es'8} g'16 es'16 c'16 bes16~ 
      | \tuplet 3/2 {bes8 f'8 d'8} \tuplet 3/2 {f'8 d'8 c'8} \tuplet 3/2 {bes8 es'4} r4 
      \bar "||" \mark \default r4 r8. cis'16~ \tuplet 7/8 {cis'32 d'16 es'32 f'32 g'32 aes'32} g'16 f'8.~ 
      | \tuplet 6/4 {f'4~ f'16 d'16} es'8 f'16 g'16 gis'16 a'16 bes'16 c''16 \tuplet 6/4 {des''16 c''16 b'16 bes'8.} 
      | r1 
      | r4 r8. f'16\glissando  g'2 
      | \tuplet 3/2 {f'8 es'4} bes16 d'8 f'16~ f'16 es'8 f'16~ f'16 g'8 bes'16~ 
      | bes'16 c''8 des''16~ des''8 a'8 bes'4 \tuplet 3/2 {g'8 e'8 des'8~} 
      | des'16 a'16 bes'16 a'16 g'16 f'8 es'16~ es'16 d'8 c'16~ c'8 bes8~ 
      | \tuplet 5/4 {bes16 f'16 ges'16 f'16 e'16~} e'8 es'8 des'8 b8 aes8 e8~ 
      | e8 g8 es8 r8 r2 
      | r2 d'8 a8~ \tuplet 3/2 {a8 cis'8\glissando  d'8~} 
      | d'8 bes8~ bes8. aes16~ aes8 b16 es'16~ es'8 b8 
      | g8 c'8 r4 bes8 a8 r4\bar  ".."
    }
    >>
>>    
}
