\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Fall in Love Too Easily"
  composer = "Chet Baker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | f2:min7 bes2:7 | es2:maj c2:min7 | d2:min5-7 g2:9- | c1:min7 | d2:min5-7 g2:9- | c1:min7 | d2:7 aes2:11+.9 | g1:maj 
      | a2:min5-7 d2:9+ | g1:7 | g2:min7 c2:7 | f2:min7 c2:7 | f2:min7 bes2:9 | des2:11+.9 c2:7 | f2:min7 bes2:13.9 | es1:6|
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


      \tempo 4 = 65
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {g'8 aes'8 g'8} g'8.^\markup{\left-align \small vib} f'16 g'8 aes'8 
      | bes'8 bes'4^\markup{\left-align \small vib} r8 r4 \tuplet 5/4 {r8 a16\glissando  bes16 c'16} 
      | \tuplet 3/2 {d'8 es'8 d'8} cis'2~^\markup{\left-align \small vib} cis'8 d'16 es'16 
      | \tuplet 3/2 {f'8 g'8 g'8~^\markup{\left-align \small vib}} g'8 r8 r2 
      | \tuplet 6/4 {r8 g'16 aes'16 c''16 es''16} g''8 aes''8 f''8.^\markup{\left-align \small vib} es''16 g''8 d''8^\markup{\left-align \small vib} 
      | f''8 d''16 es''16 \tuplet 6/4 {b'16 d''16 c''8 g'16 f'16} \tuplet 5/4 {es'16 d'16 es'16 d'16 c'16} \tuplet 3/2 {d'8\glissando  es'8 b8} 
      | \tuplet 6/4 {d'4~^\markup{\left-align \small vib} d'16 c'16~} c'16 es'16 b16 d'16~^\markup{\left-align \small vib} d'8. c'16 \tuplet 3/2 {es'8 f'8 d'8} 
      | e'16\glissando  f'8 e'16 es'16 d'8.^\markup{\left-align \small vib} r2 
      \bar "||" r4 \tuplet 3/2 {r8 e'8 g'8~} g'16 fis'16 a'16 c''16~ c''4 
      | b'16 c''16 d''16 g'16~ g'32 g'16. g'16. g'32~ \tuplet 6/4 {g'8 aes'16 g'16 fis'16 g'16~} \tuplet 3/2 {g'8 a'8\glissando  bes'8~^\markup{\left-align \small vib}} 
      | bes'2~ bes'16 c''16 des''16 e'16~ \tuplet 3/2 {e'8 e'8 f'8} 
      | g'8 aes'4^\markup{\left-align \small vib} r8 r4 r16 f'16 g'16 aes'16 
      | bes'8.^\markup{\left-align \small vib} g'16~ \tuplet 3/2 {g'8 es'8 c'8} \tuplet 6/4 {a'16\glissando  bes'8. ges'16 ges'16} es'8 bes8~^\markup{\left-align \small vib} 
      | bes8. a16 \tuplet 11/8 {bes16 d'16. f'16. e'16 d'32~} \tuplet 6/4 {d'16 es'8 g'16 bes'16 d''16~} \tuplet 6/4 {d''16 c''16 d''16 c''16 g'8} 
      | a'16\glissando  bes'8.~^\markup{\left-align \small vib} \tuplet 6/4 {bes'8. aes'8 g'16~} g'16 aes'16 g'16 es'16~ \tuplet 9/8 {es'16 e'32\glissando  f'32~ f'8 c'32} 
      | es'2^\markup{\left-align \small vib} d'8^\markup{\left-align \small vib} bes16 d'16 des'4 
      \bar "||" c'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
