\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues in Be-Bop"
  composer = "Kenny Dorham"
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
      
      | es1:7 | s1 | s1 | s1 | aes1:7 | s1 | es1:7 | s1 
      | bes1:7 | aes1:7 | es1:7 | s1 | s1 | s1 | s1 | s1 
      | aes1:7 | s1 | es1:7 | s1 | bes1:7 | aes1:7 | es1:7|
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


      \tempo 4 = 187
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 3/2 {g'4 aes'8} bes'8. bes'16~^\markup{\left-align \small vib} bes'2 
      | c''8 d''8 es''8 es''4. g'16 a'16 aes'8 
      | \tuplet 3/2 {des''8 b'8 des''8} \tuplet 5/4 {c''8 bes'16 aes'16 a'16~} \tuplet 6/4 {a'16 f'8 des'16 bes16 a16~} a8 f'16 a'16 
      | aes'16 f'8 g'16 \tuplet 3/2 {f'8 es'8 cis'8} d'16 f'16 aes'16 b'16~ b'8 g'16 bes'16 
      | \tuplet 6/4 {aes'8 g'8 aes'16 c''16~} c''8 r8 r2 
      | r2. r8 g'8~ 
      | g'16 aes'8 c''16~ c''8 es''8 aes''8 ges''8 f''8 e''8 
      | es''8\glissando  g'8 bes'8 d''8 \tuplet 6/4 {cis''16 d''16 des''16 a'8.} aes'8 ges'8 
      | \tuplet 3/2 {f'4 es''8} g''8. f''16~^\markup{\left-align \small vib} f''4~ \tuplet 6/4 {f''8 ges''16 f''8 d''16~} 
      | d''8 c''8~ \tuplet 6/4 {c''8. bes'8 cis''16~} \tuplet 5/4 {cis''8. d''16 des''16} b'4 
      | a'16 bes'8 g'16 es'4 aes'16 bes'8 aes'16 g'4 
      | r2. \tuplet 3/2 {bes'4 c''8} 
      \bar "||" \mark \default des''8 es''16 des''16 c''8 bes'8 \tuplet 3/2 {des''4 bes'8~} bes'8 des''8~ 
      | des''8 bes'8 r2 bes'8. c''16~ 
      | c''16 des''8 g'16 bes'8 des''8 c''16 des''16 c''16 b'16 bes'8 aes'8 
      | a'8 des''8 fis''16\glissando  g''16 a''8 aes''8 f''8 \tuplet 3/2 {es''8 des''8 bes'8~} 
      | \tuplet 6/4 {bes'16 aes''16 a''16 g''16 f''8~} f''16 d''16 es''16 d''16 des''8 bes'8 bes'4 
      | bes'4 a'16 bes'16 bes'8 aes'8 ges'8 es'8. g'16~ 
      | g'8 bes'4.^\markup{\left-align \small vib} r2 
      | r8 g''8\glissando  d''8. c''16 des''8. b'16~ b'8 c''8~ 
      | c''8 f'8 g'8. aes'16~^\markup{\left-align \small vib} aes'4.. b'16~ 
      | \tuplet 6/4 {b'16 des''16 b'16 a'8.} e'4 a'16 aes'8 ges'16~ ges'16 e'8 es'16~^\markup{\left-align \small vib} 
      | es'4. g'8~ \tuplet 6/4 {g'16 a'16\glissando  bes'8. aes'16~} aes'4 
      | bes'8 g'8 es'4 f'8 r8 r4\bar  ".."
    }
    >>
>>    
}
