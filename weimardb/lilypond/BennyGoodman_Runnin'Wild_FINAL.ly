\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Runnin' Wild"
  composer = "Benny Goodman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | r1 
      | bes1 | bes1 | bes1:7 | s1 | es1 | s1 | bes1 | s1 
      | f1:7 | c2:min6 d2:7 | g1:min | bes1:min6 | f1 | c1:7 | f1:7 | s1 
      | bes1 | s1 | bes1:7 | s1 | es1 | s1 | d1:7 | s2 g2:7 
      | c1:7 | f1:7 | bes1 | s1 | f1:7 | s1 | bes1 | s1 
      | r1|
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


      \tempo 4 = 285
      \set Score.currentBarNumber = #0
     
      | r4 fis''8 g''8~ g''2~ 
      \bar "||" \mark \default g''4. f''8 d''8 bes'8 g'8 f'16 des''16~ 
      | des''8\bendAfter #+4  c''8 des''4 c''8 bes'8 \tuplet 3/2 {g'4 f'8} 
      | bes'4.^\markup{\left-align \small vib} f'4.^\markup{\left-align \small vib} r4 
      | r4 bes''2.~^\markup{\left-align \small vib} 
      | bes''4 \tuplet 3/2 {g''4 bes''8} g''16 bes''16 g''8 f''8 g''8 
      | f''16 g''16 f''8 es''8 f''16 es''16 f''16 es''8 c''16~ \tuplet 3/2 {c''8 es''8 d''8~^\markup{\left-align \small vib}} 
      | d''4. bes'8 c''8 d''8 f''8 d''8 
      | g''8 f''8 d''8 bes'8 g'8 f'8 cis''8 d''16 es''16~ 
      | es''8 r8 \tuplet 3/2 {r8 f'8 g'8} c''8 es''8 \tuplet 3/2 {g''4 bes''8} 
      | d'''2.^\markup{\left-align \small vib} c'''8 bes''8~ 
      | bes''8 g''8~^\markup{\left-align \small vib} g''4. r8 r4 
      | r8 g'8 \tuplet 3/2 {bes'4 d''8} g''4. g'8 
      | \tuplet 3/2 {a'4 c''8} f''8 a''8 c'''4 c'''4 
      | c'''4..^\markup{\left-align \small vib} a''16 b''4 c'''4 
      | \tuplet 3/2 {g''4 aes''8~} aes''8 g''4.^\markup{\left-align \small vib} f''8 g''8 
      | aes''8 aes''4.^\markup{\left-align \small vib} g''4 \tuplet 3/2 {c''8\glissando  cis''8 d''8} 
      \bar "||" f''4 f''4 aes''8 g''16 f''16 cis''8. d''16 
      | f''4 f''4 aes''8 g''16 f''16 cis''8 d''8 
      | f''4 f''4 \tuplet 3/2 {aes''8 g''8 f''8} cis''8 d''8 
      | bes''8 a''8 bes''8 a''8 aes''8 f''8 d''8 c''16 d''16 
      | g''2^\markup{\left-align \small vib} es'8 g'8 bes'8 es''8 
      | g''8 bes''8 es'''2. 
      | d'''4 r4 es''4 d''4 
      | r4 d'8\bendAfter #+4  es'8 d'8 r8 r4 
      | r4 c''8 des''4. c''4~ 
      | c''2 bes'4 c''8\glissando  des''8~ 
      | des''4 bes'4 c''16\glissando  des''8. bes'4 
      | f''4 es''4 des''4 bes'4~ 
      | bes'8 des''8 bes'4 des''4 bes'8 f''8~ 
      | f''8 es''4. \tuplet 3/2 {des''4 bes'8} \tuplet 3/2 {g'4 f'8} 
      | bes'4 bes'4 \tuplet 3/2 {g'4 f'8~} f'4 
      | bes'4.^\markup{\left-align \small vib} r8 r8 g'8 bes'8 d''8 
      \bar "||" f''4 r2.\bar  ".."
    }
    >>
>>    
}
