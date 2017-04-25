\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "There Will Never Be Another You (Solo 2)"
  composer = "Chet Baker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | f1:maj | f1:maj | e1:min5-7 | a1:7 | d1:min7 | s1 | c1:min7 | bes1:7 
      | bes1:maj | es1:11+.9 | f1:maj | d1:min7 | g1:7 | s1 | g1:min7 | c1:7 
      | f1:maj | s1 | e1:min5-7 | a1:7 | d1:min7 | s1 | c1:min7|
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


      \tempo 4 = 170
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 r8 a'8 g'4 
      | aes'4. g'8 ges'8 c'8 \tuplet 3/2 {d'4 f'8~} 
      | f'8 r8 r2. 
      | r8 g'8 \tuplet 3/2 {es'4 f'8} g'8 aes'16 g'16 f'8 g'8 
      | aes'8 g'4 f'8 es'8 d'8 c'8 des'8~ 
      | des'8 aes'8 \tuplet 3/2 {c''4 es''8~} es''4~ es''16 c''8 b'16~ 
      | b'8 g'4.^\markup{\left-align \small vib} r4 r8 es'8 
      \bar "||" f'8 aes'16 g'16 es'4 f'8 g'8 es'4 
      | \tuplet 3/2 {f'4 ges'8} es'8 f'8~^\markup{\left-align \small vib} f'4. f'8~ 
      | f'8 g'8 \tuplet 3/2 {es'4 f'8} \tuplet 3/2 {g'4 aes'8} f'8 g'8 
      | aes'8 bes'8 g'4 f'8 es'8 c'4 
      | d'8 c'8 \tuplet 3/2 {d'4 c'8~^\markup{\left-align \small vib}} c'4 \tuplet 3/2 {d'4 c'8} 
      | d'8. c'16~^\markup{\left-align \small vib} c'4 dis'8 c'8 dis'8 c'8~ 
      | c'8 d'8 es'8 c'8 \tuplet 3/2 {es'4 fis'8} g'4~^\markup{\left-align \small vib} 
      | g'4 f'8 r8 r2 
      \bar "||" bes'4~ bes'16 c''8 bes'16~ bes'16 g'8 f'16 es'4~ 
      | es'8 bes'8~ bes'16 c''8 bes'16 g'8 f'8 \tuplet 3/2 {es'4 g'8~} 
      | g'8 g'8 aes'8 g'8~ g'16 cis'8 d'16~ \tuplet 6/4 {d'16 f'4 d'16~} 
      | d'16 dis'16 f'16 es'16 \tuplet 3/2 {d'4 c'8} b4~ b16 f'8 aes'16 
      | g'4~ g'16 d''8 b'16~ b'16 c''8 d''16 dis''8 e''8 
      | f''8 es''8 d''8 c''8 bes'8 a'8 \tuplet 3/2 {aes'4 c''8~} 
      | c''16 g'8 f'16~ f'16 g'8 f'16~^\markup{\left-align \small vib} f'4 r4\bar  ".."
    }
    >>
>>    
}
