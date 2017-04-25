\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Early Morning Rock"
  composer = "Johnny Hodges"
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
      | s4 r2. 
      | es1:7 | s1 | s1 | s1 | aes1:7 | s1 | es1:7 | f1:7 
      | bes1:7 | aes1:7 | es1:7 | s1 | s1 | s1 | s1 | s1 
      | aes1:7 | s1 | es1:7 | s1 | bes1:7 | aes1:7 | es1:7 | s1 
      | s1|
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


      \tempo 4 = 176
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 \tuplet 3/2 {bes4 c'8\glissando } \tuplet 3/2 {es'4 f'8\glissando } 
      \bar "||" \mark \default \tuplet 3/2 {g'4 es'8~} es'8 es'4.^\markup{\left-align \small vib} r4 
      | r2 a'16\glissando  bes'8 aes'16 g'8 es'8 
      | c'8 g8 aes8 aes8 g8. bes16 c'8 es'8~^\markup{\left-align \small vib} 
      | es'4 r4 \tuplet 3/2 {bes4 c'8} \tuplet 6/4 {es'4 f'16\glissando  ges'16~} 
      | ges'8 es'8~ es'8. es'16~^\markup{\left-align \small vib} es'4 r4 
      | r2 \tuplet 3/2 {bes'4 aes'8} \tuplet 3/2 {ges'4 es'8} 
      | \tuplet 3/2 {g'4 bes8~} bes8 a16 aes16 \tuplet 3/2 {g4 bes8} c'8 bes8 
      | f'4 \tuplet 3/2 {f'4 f'8~^\markup{\left-align \small vib}} f'4 es'8. c'16\glissando  
      | \tuplet 3/2 {g'4 bes8~} bes8 r8 r2 
      | r8 g'8\glissando  bes'8. aes'16 \tuplet 3/2 {ges'4 es'8} bes8. g16 
      | aes4 \tuplet 3/2 {g4 es'8~^\markup{\left-align \small vib}} es'4 r4 
      | r2 r8 g'8 bes'8 c''8~ 
      \bar "||" \mark \default \tuplet 6/4 {c''4~ c''16\glissando  des''16~^\markup{\left-align \small vib}} des''2.~ 
      | des''4 \tuplet 3/2 {c''8\glissando  des''8 c''8} bes'16 a'8 bes'16 ges'4 
      | f'8 es'8 \tuplet 3/2 {bes8\glissando  c'8 des'8~^\markup{\left-align \small vib}} des'4 r4 
      | r2 aes'16 a'16 aes'16\glissando  a'16 aes'16\glissando  bes'8 c''16~ 
      | c''8\glissando  des''2..^\markup{\left-align \small vib} 
      | des''4~ des''16 a'8 bes'16 \tuplet 3/2 {ges'4 d'8} f'4 
      | a'16\glissando  bes'8 bes'16 \tuplet 3/2 {ges'4 es'8~} es'8 r8 r4 
      | r8. bes16~ bes8 c'8 c''8. ges'16~ ges'16 es'8 ges'16~ 
      | ges'8 f'4.^\markup{\left-align \small vib} r2 
      | r8 bes8~ bes16 c'8 c''16~ \tuplet 3/2 {c''8 ges'8 c'8~} c'8 c''8 
      | fis'16 g'16 ges'8 es'16 ges'8. es'2~^\markup{\left-align \small vib} 
      | es'8 b8\glissando  c'8 b16 bes16 a8 bes8 r4 
      \bar "||" \mark \default g8 r8 r2.\bar  ".."
    }
    >>
>>    
}
