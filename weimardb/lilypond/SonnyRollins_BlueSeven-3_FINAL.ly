\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Seven (Solo 3)"
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
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7|
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


      \tempo 4 = 133
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default d'4 d'4 aes4 aes8 r8 
      | r2 \tuplet 6/4 {r16 aes16 bes16 a16 aes16 f16} gis16 a16 aes16 f16 
      | c'8 bes8 aes16 bes16 aes16 f16 aes4 f4^\markup{\left-align \small vib} 
      | r2 r8 f16 ges16 \tuplet 3/2 {b8 d'8 f'8} 
      | \tuplet 3/2 {ges'8 des'8 b8} \tuplet 3/2 {bes8 aes8 g8} des4~^\markup{\left-align \small vib} \tuplet 6/4 {des8 f8 a16 des'16~} 
      | \tuplet 3/2 {des'8 f'8 a'8} \tuplet 3/2 {c''8 a'8 bes'8~} \tuplet 6/4 {bes'16 c''8 a'8 f'16~} \tuplet 3/2 {f'8 des'8 a8} 
      | fis'16 g'8.~^\markup{\left-align \small vib} \tuplet 3/2 {g'8 f'8 c'8} aes16 g16 f16 g16~^\markup{\left-align \small vib} g8 r8 
      | r2 r8. g'16~ g'8 bes'8 
      | cis''16\glissando  d''8 bes'16 es'4^\markup{\left-align \small vib} r2 
      | r16 bes'16 es''16 d''16 c''16 bes'16 b'16 bes'16 g'8 a'16 g'16~ g'16 f'8 es'16~ 
      | \tuplet 6/4 {es'8 d'16 es'16 d'16 bes16~} bes16 cis'16 d'16 f'16 es'8 g'16 bes'16~ bes'16 des''16 bes'16 c''16~ 
      | c''16 bes'8 aes'16~ \tuplet 5/4 {aes'8 bes'16 aes'16 f'16~} f'16 aes'8 f'16 e'8 es'16 c'16~ 
      \bar "||" \mark \default \tuplet 6/4 {c'16 g'4 f'16} g'4^\markup{\left-align \small vib} r4 r8 f'8 
      | c'8 aes8 d4~ d16 g'8 f'16~ f'16 c'8 aes16~ 
      | \tuplet 6/4 {aes16 g'16 aes'16 g'8 f'16} \tuplet 3/2 {c'8 aes4^\markup{\left-align \small vib}} r2 
      | r8 f16 aes16 \tuplet 6/4 {g'4 f16 aes16~} \tuplet 6/4 {aes16 g'8. f16 aes16~} \tuplet 6/4 {aes16 g'8. c'16 des'16~} 
      | \tuplet 6/4 {des'8 c''8 c'16 des'16} c''4^\markup{\left-align \small vib} r2 
      | r8 c'8 \tuplet 3/2 {des'8 c''8 c'8} \tuplet 6/4 {des'8. c''8 c'16} des'8 c''8 
      | r2 \tuplet 3/2 {bes'8 ges'8\glissando  aes'8} f'4 
      | r4 \tuplet 6/4 {r8. f16 a16 c'16~} \tuplet 6/4 {c'16 a16 bes8 b16 d'16~} \tuplet 6/4 {d'16 f'16 aes'8 g'16 f'16~} 
      | \tuplet 10/8 {f'32 d'16 es'16. f'32 fis'32 g'32 a'32\glissando } b'16 d''16 b'16 c''16 es''8 b'8 r4 
      | r4 r8. g'16 \tuplet 5/4 {gis'8\bendAfter #+4  a'16 aes'16 f'16~} f'8. g'16 
      | aes'8. e'16~ e'4 c'8 e'8 r4 
      | r8 e'8~ e'8. e'16~ e'4 cis'8\glissando  d'8 
      \bar "||" aes1~ 
      | aes2~ aes8 r8 r4\bar  ".."
    }
    >>
>>    
}
