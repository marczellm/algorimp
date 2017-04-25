\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues in Be-Bop"
  composer = "Sonny Stitt"
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
      
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | bes2:min7 a2:7 
      | aes1:7 | bes1:7 | es1:7 | s2 bes2:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | bes2:min7 a2:7 | aes1:7 | bes1:7 | es1:7|
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


      \tempo 4 = 186
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 6/4 {r4 bes16 c'16} d'16 es'8 f'16 g'8 aes'8 
      | a'8 bes'8 b'8. a'16 bes'16 c''16 bes'16 a'16 \tuplet 3/2 {g'8 bes'8 c''8} 
      | f''8 e''8 \tuplet 3/2 {es''4 c''8\glissando } des''8. bes'16~ bes'4 
      | r2. r8. es''16~ 
      | es''8 des''4 es''8 b'16\glissando  c''8 ges'16~ ges'8 r8 
      | r4 \tuplet 6/4 {r4 a'16\glissando  bes'16~} bes'8. aes'16~ \tuplet 3/2 {aes'8 es'8 c'8} 
      | g'8 ges'8 f'8 e'8 es'8 b8 bes8 aes16 g16~ 
      | g8 d'8 \tuplet 3/2 {f'4 des'8} e'8 cis'8 a8 ges8 
      | f8. c'16 es'4 d'8 f'8 c'8 b8 
      | \tuplet 3/2 {bes8 a8 aes8~} aes16 bes16 c'16 es'16 g'8 ges'8 f'8 e'8 
      | \tuplet 3/2 {es'4 f'8} \tuplet 6/4 {g'4~ g'16 es''16~} es''8 c''8 r4 
      | r2. r8 f''8\glissando  
      \bar "||" \mark \default ges''8. es''16~ es''16\glissando  f''8 ges''16~ ges''8 f''8 r4 
      | r4 r8 es''8 f''8 g''16 ges''16 f''8 es''8~ 
      | \tuplet 6/4 {es''16 d''4 des''16~^\markup{\left-align \small vib}} des''4 r2 
      | r8 f'8 bes'8 c''8 \tuplet 3/2 {des''8 c''8 bes'8} a'8 g'8 
      | aes'8 ges'8 \tuplet 3/2 {es'4 c'8} f'4. c'8~ 
      | c'4 f'4.^\markup{\left-align \small vib} r8 r8 c'8 
      | d'16 es'8 f'16 g'8 aes'8 bes'8 aes'8 g'8 f'8 
      | e'8 g8 bes8 des'8 c'4 bes8. aes16~ 
      | aes4 c'8 es'16 g'16~ g'8 f'4^\markup{\left-align \small vib} r8 
      | r2. r8 es''8~^\markup{\left-align \small vib} 
      | es''4.. ges'16 f'4 es'8 r8\bar  ".."
    }
    >>
>>    
}
