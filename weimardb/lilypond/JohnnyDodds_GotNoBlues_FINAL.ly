\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Got No Blues"
  composer = "Johnny Dodds"
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
      | s2. r4 
      | es2 c2:7 | f2:7 bes2:7 | es2 c2:7 | f2:7 bes2:7 | es1 | s2 c2:7 | f1:7 | bes1:7 
      | es2 c2:7 | f2:7 bes2:7 | c2:min b4:min bes4 | a2 d2:7 | es2 c2:7 | f2:7 bes2:7 | es1|
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


      \tempo 4 = 142
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 3/2 {r8 f''8 fis''8} 
      \bar "||" \mark \default g''16 bes''16 g''4\bendAfter #-4  f''16 es''16 c''2^\markup{\left-align \small vib} 
      | des'''2 bes''16 c'''16 bes''8~^\markup{\left-align \small vib} \tuplet 6/4 {bes''4~ bes''16 fis''16~} 
      | fis''8 g''8 \tuplet 3/2 {es''4 c''8} \tuplet 3/2 {es''8 c''4~^\markup{\left-align \small vib}} c''4 
      | cis''8 d''8 f''8 d''16 g''16~ g''8 f''16 aes''16~ aes''8 bes'8 
      | g''8 bes''8 c'''4 c'''8 c''8 es''8 c''8~ 
      | \tuplet 6/4 {c''8. es''8 f''16~} f''16 fis''8 g''16 c'''4~^\markup{\left-align \small vib} \tuplet 6/4 {c'''4~ c'''16 f''16~} 
      | f''8 g''16 es''16~ es''8 f''16 c''16~ c''8 es''8~^\markup{\left-align \small vib} \tuplet 3/2 {es''8 bes'8 cis''8\bendAfter #+4 } 
      | \tuplet 3/2 {d''4 des''8} bes'8 bes''4.^\markup{\left-align \small vib} \tuplet 6/4 {c'''4~ c'''16 fis''16~} 
      \bar "||" fis''8 g''8 c'''4 des'''8 c'''8~ \tuplet 6/4 {c'''4~ c'''16 f''16~} 
      | \tuplet 6/4 {f''8. g''8 aes''16~} \tuplet 6/4 {aes''8. d''8 f''16~} f''8 bes'4.~^\markup{\left-align \small vib} 
      | bes'16 d''16 fis''16 g''16~ g''8 f''16 g''16~ \tuplet 6/4 {g''8 dis''8. f''16~} f''8 es''8~^\markup{\left-align \small vib} 
      | es''8 f''8~^\markup{\left-align \small vib} \tuplet 3/2 {f''8 dis''8 f''8~} f''8 dis''16 c''16~ \tuplet 6/4 {c''8. g'8 dis''16~} 
      | \tuplet 5/4 {dis''8 f''8 fis''16~} fis''8 g''8 c'''8 bes''8~^\markup{\left-align \small vib} \tuplet 6/4 {bes''4~ bes''16 bes'16~} 
      | bes'8 c''8 cis''8 d''8 f''8 aes''4.^\markup{\left-align \small vib} 
      | ges''8 des'''8~^\markup{\left-align \small vib} \tuplet 6/4 {des'''4~ des'''16 c'''16~} c'''8 f''4 g''8 
      | \tuplet 6/4 {es''8. des''16 c''16 bes'16~} bes'8 f'8~ \tuplet 3/2 {f'8\bendAfter #+4  ges'8 f'8~} f'8 r8\bar  ".."
    }
    >>
>>    
}
