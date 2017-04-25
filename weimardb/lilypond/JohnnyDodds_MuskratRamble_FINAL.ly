\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Muskrat Ramble"
  composer = "Johnny Dodds"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key aes \major
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
      
      | bes1:7 | es1:7 | aes1 | s2 aes2:dim | es1:7 | s1 | aes1 | s1 
      | bes1:7 | es1:7 | aes1 | s1 | f1:7 | bes1:min | bes2:7 es2:7 | aes1|
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


      \tempo 4 = 185
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. es''16~ es''8 g''4 f''16 es''16~ es''8 es''8 
      | \tuplet 3/2 {g''4 g''8~} g''8 es''8 f''8 es''8 \tuplet 6/4 {g''8. es''8 aes''16~} 
      | aes''8 c'''8~^\markup{\left-align \small vib} c'''2~ c'''8. b''16~ 
      | b''8\glissando  c'''8 es''8\glissando  e''16 f''16~ f''8 aes''4^\markup{\left-align \small vib} f''8 
      | g''8 aes''8 \tuplet 3/2 {bes''4 aes''8} \tuplet 3/2 {g''4\glissando  f''8} es''8 d''8 
      | des''2~^\markup{\left-align \small vib} des''8 es''4.^\markup{\left-align \small vib} 
      | aes'8 b'8 c''8 aes'8 b'8 c''8 \tuplet 3/2 {es''4 c''8} 
      | \tuplet 3/2 {aes''4 f''8\glissando } ges''8 f''8 es''8 c''8 b'16 c''16 c''8 
      | r8. f''16 g''4 fis''4 \tuplet 6/4 {g''4 fis''16 g''16~} 
      | g''8 f''8 g''8 f''8 es''8 des''16 c''16 bes'8 des''8 
      | c''4~^\markup{\left-align \small vib} \tuplet 6/4 {c''4~ c''16 des''16} b'8 c''8 \tuplet 6/4 {es''8. c''8 aes''16~} 
      | aes''8 g''4 ges''4.^\markup{\left-align \small vib} r4 
      | \tuplet 3/2 {aes''4 aes''8~^\markup{\left-align \small vib}} aes''8 e''8 f''8 aes''8 f''8 e''8 
      | \tuplet 6/4 {aes''8. f''8 es''16~} es''8 c''8 f''8 es''8 r4 
      | aes''8\glissando  f''8 es''8 d''8 \tuplet 3/2 {des''4 g''8~} \tuplet 3/2 {g''8\glissando  es''8 des''8} 
      | c''2~^\markup{\left-align \small vib} c''8 r8 r4\bar  ".."
    }
    >>
>>    
}
