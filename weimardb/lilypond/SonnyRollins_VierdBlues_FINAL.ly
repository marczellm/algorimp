\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Vierd Blues"
  composer = "Sonny Rollins"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7|
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


      \tempo 4 = 114
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 aes8 bes4.~ 
      | bes1~ 
      | bes1 
      | f'4 r2. 
      | aes8 bes2..~ 
      | bes4.. f16 g4 r4 
      | r2 r16 a16 bes16 a16 d'8 g'8 
      | \tuplet 6/4 {d'8. bes16 b16 bes16} \tuplet 3/2 {g8 d'4~} d'16 bes32~ bes8 g32~ g4 
      | f8.. d32 ges2 r4 
      | r4 r8. e16~ \tuplet 7/8 {e32 g32~ g8 d32~} d8 r8 
      | r2. r16 bes16 cis'16 d'16 
      \bar "||" \mark \default g'8 des'8~ des'4. g'8 des'4 
      | r2. f8 aes8 
      | c'8 aes4. f4 c'8 aes8~ 
      | aes4 r2. 
      | r2 r8 aes16 c'16 des'16 es'16 f'16 g'16 
      | a'16 bes'16 c''16 a'16 bes'8 c''16 des''16~ des''8 a'8 \tuplet 3/2 {f'8 des'8 a8} 
      | f8 r8 r4 \tuplet 7/8 {r16. g16. e32~} \tuplet 5/4 {e16 f8 g16 aes16~} 
      | aes8 e8 r4 d16 e16 f8~ f16 es16 f16 a16 
      | \tuplet 3/2 {d'8 b8 c'8} d'16 es'8 b16~ b8 r8 r4 
      | r2. r8. f16~ 
      | \tuplet 6/4 {f16 aes4 e16~} e2 r4 
      | r1 
      \bar "||" \mark \default r4 \tuplet 6/4 {r8. f'8 g'16} aes'8 f'8 r4 
      | r4 r8 a8 bes2~ 
      | bes2.. r8 
      | r2 r8 aes16 bes16 \tuplet 6/4 {b8 d'16 f'8 ges'16~} 
      | \tuplet 6/4 {ges'16 d'16 b16 bes8 aes16} g4 r2 
      | r4 r8.. a'32~ a'16 f'16 g'16 a'16 f'16 des'16 a16 f16 
      | r2. \tuplet 6/4 {g'16\bendAfter #+4  a'16 aes'16 e'8.~} 
      | e'4 g'8 f'8~ \tuplet 6/4 {f'16 a8 bes8 es'16~} es'16 cis'16 d'16 es'16 
      | bes8 f8~ f8. e16 es4. g16 bes16~ 
      | bes16 cis'16 d'8 bes8 r8 r8. f16 es4 
      | f4 es8 d4. r4 
      | r1 
      \bar "||" \mark \default r4 c'16 d'8. a8 bes4 f8~ 
      | f8 es8 es4 r2 
      | r2 f16 g16 bes16 d'16 es'16 d'16 bes16 g16 
      | aes16 g16 f16 e16 g8 f16 es16 \tuplet 6/4 {d8 f8 aes16 b16~} \tuplet 6/4 {b16 bes16 g16\glissando  aes8 fis16} 
      | g16 bes16 f16 des16 es8 r8 r2 
      | r8. bes16~ bes32 es'16 f'16 e'32\glissando  f'32 es'32 des'16 bes16 es'16 f'16 \tuplet 6/4 {e'16\glissando  f'16 des'16 bes16 es'8} 
      | \tuplet 6/4 {f'8 e'16\glissando  f'16 des'16 bes16~} bes16 b16 c'16 b16 \tuplet 6/4 {bes16 a16 aes16 f16 b16 c'16~} \tuplet 7/8 {c'32 b32\glissando  c'32 b32 bes32 a32 aes32} 
      | f4 r2 g'8 cis'16 d'16 
      | f'16 d'16 es'8 b16 d'16 c'16 b16 bes16 g16 a16 f16 g16 es8 d16 
      | f8 es16 f16~ f16 es16 f16 bes16 \tuplet 6/4 {d'8 es'8 d'16 c'16~} \tuplet 6/4 {c'16 bes16 f8 a16 c'16~} 
      | \tuplet 6/4 {c'16 bes16 f8 d16 es16} f8 r8 r2 
      | aes'16 bes'16 a'16 g'16 f'16 e'16 es'16 d'16 c'16 bes16 g16 gis16 \tuplet 5/4 {a8 ges16 f16 es16} 
      \bar "||" \mark \default bes,16 f16 aes8 f16 c'8.~ c'4. f8 
      | \tuplet 3/2 {g8 bes8 c'8} bes16 des'16 es'8 f'2 
      | e16 f8 aes16 f8 c'8~ c'2~ 
      | c'8 des'8~ des'16 bes16 es'8 bes16 f'4.. 
      | r4 r16 des'16 bes16 f'16 aes'8 f'8 c''4~ 
      | c''8 r8 r2. 
      | r8. c'16\glissando  d'16 fis'16 g'16 aes'16~ aes'4 \tuplet 6/4 {e'8 f'16 g'8 e'16} 
      | \tuplet 6/4 {f'8 d'8 bes16 g16~} \tuplet 6/4 {g16 c'8 es'16 c'16 cis'16} \tuplet 6/4 {d'8. c'16 b16 d'16} f'32 aes'16. g'32 f'16 d'32~ 
      | \tuplet 6/4 {d'16 es'16 ges'16 es'16 d'8} c'16 g16 f16 b16~ b4 d'16 b16 g16 es16 
      | bes16 g16 a16 g16~ \tuplet 10/8 {g32 f16 e16 es16 f32 fis32 g32} d'16 es'16 c'16 bes16 a16 c'16 es'16 g'16 
      | \tuplet 6/4 {f'8 a8 bes16 es'16~} \tuplet 6/4 {es'16 d'8 bes16 aes16 fis16~} \tuplet 6/4 {fis16 g8 f'8 d'16} \tuplet 6/4 {es'8 ges'16 es'16 d'16 c'16~} 
      | \tuplet 6/4 {c'16 bes16 f8 d16 es16} f8 r8 r4 \tuplet 3/2 {des'4 a8} 
      \bar "||" \mark \default b16 c'8.~ \tuplet 6/4 {c'4~ c'16 a16~} \tuplet 5/4 {a16 f8. f16~} f4 
      | r4 es16 f16 g16 bes16~ bes8 f16 bes16 c'16 d'8 bes16 
      | c'8 aes8 \tuplet 3/2 {f8 aes16 r8.} r2 
      | r2. ges'16 bes'16 d'16 ges'16 
      | bes8 r8 r4 r8. a'16 des''8 f'16 a'16~ 
      | \tuplet 6/4 {a'16 des'16 f'8 a16 des'16~} des'8 aes8 r2 
      | r4 r8. f'16 aes'8 e'4.~ 
      | e'4 \tuplet 3/2 {g'8 f'8 gis8} \tuplet 6/4 {a8 bes16 d'8 es'16~} es'32 d'16 c'16. b32 g32 
      | \tuplet 5/4 {d'8 b16 c'16 d'16} es'16 bes8 f16 es'8. d'16 bes4 
      | r2. r8.. f32~ 
      | \tuplet 3/2 {f8 g8 aes8} f2~ f8 bes8~ 
      | \tuplet 6/4 {bes16 cis'8 d'8 bes16~} bes16 f8 es16~ es4.. c'16~ 
      \bar "||" \mark \default c'16 bes16 c'16\glissando  d'16 bes8 r8 r2\bar  ".."
    }
    >>
>>    
}
