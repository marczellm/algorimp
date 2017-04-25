\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Slipped again"
  composer = "Steve Coleman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \major
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7|
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


      \tempo 4 = 132
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r8 g16 bes16 c'8 es'16 f'16 \tuplet 3/2 {g'8 bes'8 c''8~} c''4~ 
      | c''4.. bes'16~ bes'8 a'8~ a'16 a'8 g'16~^\markup{\left-align \small vib} 
      | g'4. r8 r4 \tuplet 3/2 {r8 g8 bes8} 
      | \tuplet 3/2 {aes8 bes8 c'8} \tuplet 3/2 {es'8 f'8 aes'8} bes'16 c''8 c''16~ c''4~ 
      | c''2~ c''16 f''16 es''8~ es''16 c''8 bes'16 
      | r4 r8 a'8 bes'2~ 
      | bes'8. a'16 \tuplet 3/2 {bes'8 c''8 bes'8} a'16 bes'16 c''8 c''4 
      | aes'8 g'4.^\markup{\left-align \small vib} r2 
      | r8 g16 a16~ \tuplet 6/4 {a16 c'8 des'8 es'16~} es'16 f'16 g'16 bes'16 \tuplet 3/2 {c''8 des''8 es''8} 
      | c''4. c''8 c''2~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {c''16 bes'8 g'16 bes'16 c''16} f'8 g'8 r4 c''16 bes'16 g'16 es'16 
      \bar "||" \mark \default \tuplet 6/4 {c'16\glissando  fis'16 g'4~} g'8 bes8 c'2~ 
      | c'8 cis'16\glissando  d'16~ d'4. \tuplet 6/4 {f'16 aes'16 c''16~} \tuplet 6/4 {c''16 bes'16 aes'8 bes'16\glissando  b'16} 
      | r4 r8 cis''16 d''16~ d''4. c''16 d''16 
      | dis''16 e''16 f''16 e''16~ e''16 es''16 c''16 b'16 es''16 d''16 a'16 ges'16 d''16 b'16 a'16 bes'16 
      | a'16 aes'16 bes'16 b'16 \tuplet 6/4 {d''8 c''16 bes'16 f'16 es'16~} es'16 aes'16 bes'4.^\markup{\left-align \small vib} 
      | g'16 d'16 bes8 r4 c'16 bes16 f16 bes16 aes16 bes8 d'16 
      | f'16 aes'16 g'8~ g'16 e'8 c'16 d'16 e'16 g'16 bes'32 f'32~ f'16 ges'8 bes'16 
      | \tuplet 3/2 {b'8 dis''8 cis''8~} \tuplet 6/4 {cis''16 bes'16 des''8 c''16 b'16~} \tuplet 6/4 {b'16 bes'16 a'8 aes'16 g'16} fis'16 e'16 es'16 d'16 
      | \tuplet 3/2 {des'4 des'8~^\markup{\left-align \small vib}} des'4 a'4^\markup{\left-align \small vib} r4 
      | r2 c''8 a'8~ a'16 e'8 des'16 
      | c'4 c'4 g'4.^\markup{\left-align \small vib} r8 
      | r1 
      \bar "||" \mark \default cis''16 d''16 f''2..~ 
      | f''2... e''16~ 
      | \tuplet 6/4 {e''16 es''4 es''16~} \tuplet 3/2 {es''8 d''8 des''8} g'16 des''16 c''16 b'16~ b'16 f'16 bes'16 a'16 
      | aes'4 \tuplet 6/4 {bes16 b16 d'16 aes'16 es'16 bes'16} f'8 r8 r4 
      | r4 \tuplet 5/4 {r8. ges'16 bes'16} \tuplet 3/2 {d''8 c''8 bes'8} d''16 bes'16 g'16 d'16~ 
      | d'16 g'16 f'16 d'16 bes16 c'16 es'16 bes16 f16 des'16 es'16 c'16 \tuplet 6/4 {bes4 gis16\glissando  a16~} 
      | a8 bes8 \tuplet 5/4 {e'16 g'16 a'16 b'16 e''16} \tuplet 3/2 {g''4 e''8~} e''32 b'16 a'16 e'16 b32 
      | gis8 r8 r4 \tuplet 3/2 {dis'8 cis'8 gis8} bes16 cis'16 bes16 f16 
      | g8. f'16 a'16 f'16 des'16 bes16 e'16 aes'16 bes'16 des''16 ges'16 c''16 b'16 ges'16 
      | aes'16 ges'16 es'16 des'16 g'8 r8 r4 \tuplet 3/2 {des'4 c'8~} 
      | c'8. a'16~^\markup{\left-align \small vib} a'4 r2 
      | r16 a'16 g'16 ges'16 \tuplet 3/2 {a'8 g'8 d'8} f'16 e'16 bes16 f16~ f16 es'16 des'8 
      \bar "||" \mark \default bes16 des'16 c'16 bes16 a16 bes16 g16 f'16~ f'4. r8\bar  ".."
    }
    >>
>>    
}
