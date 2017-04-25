\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Hotter than That"
  composer = "Johnny Dodds"
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
      | r1 | s1 
      | es1 | s1 | s1 | s1 | s1 | s1 | bes1:7 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | es1 | s1 
      | s1 | s1 | s1 | s1 | es1:7 | s1 | aes1 | s1 
      | s1 | a1:dim | es1 | c1:7 | f1:7 | bes1:7 | es1|
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


      \tempo 4 = 212
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r8 ges''8~^\markup{\left-align \small vib} ges''4. bes''8 g''8 bes''8~ 
      | bes''8 bes''4 bes''8 bes''8. bes''16~ bes''4 
      \bar "||" \mark \default \tuplet 6/4 {bes''4~ bes''16 g''16~} g''8. es''16~^\markup{\left-align \small vib} es''2 
      | fis''8 g''4 es''8 c'''2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {fis''4 g''8~} g''8 bes''8 es'''2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {d'''4 des'''8~} des'''8 bes''8 c'''8 bes''8 des'''4 
      | c'''8. bes''16~ bes''4 fis''4 \tuplet 3/2 {g''4 bes''8~} 
      | bes''8 bes''4 fis''8 g''8 bes''8 c'''4~ 
      | c'''8 f''8 aes''8 d''8 f''8 bes'8 c''8 cis''8 
      | \tuplet 3/2 {d''4 g'8} bes'8 d''8 f''8 e''8 g''8 f''8 
      | aes''2 \tuplet 3/2 {f''4 aes''8~} aes''8 f''8 
      | aes''8 f''8 cis''8 d''8 f''8 e''8 g''8 f''8 
      | g''16\glissando  aes''8. aes''4 aes''4 cis''8 d''8 
      | f''4.^\markup{\left-align \small vib} r8 r8 g''16\glissando  aes''16~ aes''8 f''8 
      | d'''2^\markup{\left-align \small vib} \tuplet 3/2 {cis'''4\glissando  d'''8} c'''4~^\markup{\left-align \small vib} 
      | c'''8 bes''8~^\markup{\left-align \small vib} bes''2 r4 
      | bes''8 es'''4.^\markup{\left-align \small vib} des'''8 c'''4 bes''8 
      | \tuplet 3/2 {b''8 c'''8 bes''8} f''8\bendAfter #+4  ges''8~ ges''4. f''8 
      \bar "||" bes'4 c''4 es''8. es''16~ es''4 
      | \tuplet 3/2 {fis''4 g''8~} g''8 bes''8~ \tuplet 6/4 {bes''8 bes''8. c'''16~} c'''16 bes''8 c'''16~ 
      | c'''8 des'''4. \tuplet 3/2 {bes''4 c'''8~} c'''8 bes''8~ 
      | bes''16 c'''16\glissando  des'''16 bes''16 \tuplet 3/2 {c'''8\glissando  des'''8 bes''8~} bes''8 g''8 fis''4 
      | g''4 g''4 es''8 f''4 es''8 
      | f''4^\markup{\left-align \small vib} r4 es''8 f''8 es''8 des''8 
      | c''8 g'8 c''8 es''8 aes''8 c''8 es''8 aes''8 
      | c'''2~^\markup{\left-align \small vib} c'''8 r8 r4 
      | \tuplet 3/2 {b''4 c'''8} b''8 c'''8 \tuplet 3/2 {bes''4 aes''8~} aes''8 es''8 
      | ges''4 fis''4 es''4^\markup{\left-align \small vib} c''8 b'16 c''16 
      | bes'8 g''4 fis''8 \tuplet 3/2 {g''4 ges''8} \tuplet 6/4 {f''8 c''8. es''16\glissando } 
      | e''4.^\markup{\left-align \small vib} c''4.^\markup{\left-align \small vib} g'4 
      | \tuplet 3/2 {a'4 c''8} \tuplet 3/2 {d''8 c''4} es''8 c''4 es''16 d''16~ 
      | d''8 g'8 bes'8 d''16 f''16~ f''8 bes'16 d''16~ \tuplet 6/4 {d''8 aes''8. g''16~} 
      | g''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
