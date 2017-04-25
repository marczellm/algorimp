\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cognac Blues"
  composer = "Dizzy Gillespie"
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
      | r1 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:min7 | s1 | f2:7 d2:min7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7|
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


      \tempo 4 = 114
      \set Score.currentBarNumber = #0
     
      | r2. \tuplet 3/2 {c''8 f''8 a''8} 
      \bar "||" \mark \default \tuplet 3/2 {bes''8 bes''8 a''8} \tuplet 3/2 {bes''8 bes''8 a''8} f''8 r8 \tuplet 5/4 {r8 c''16 f''16 a''16} 
      | \tuplet 3/2 {bes''8 bes''8 a''8} \tuplet 3/2 {bes''8 bes''8 a''8} f''4\bendAfter #-4  \tuplet 6/4 {r8 c''16 f''8 a''16} 
      | \tuplet 3/2 {bes''8 bes''8 a''8} \tuplet 3/2 {bes''8 bes''8 a''8} \tuplet 3/2 {bes''8 bes''8 a''8} \tuplet 3/2 {bes''8 bes''8 a''8} 
      | \tuplet 6/4 {bes''8 c'''16 aes''16 c'''16 aes''16} \tuplet 6/4 {c'''16 aes''16 c'''16 aes''16 c'''8} \tuplet 5/4 {aes''16 c'''16 aes''16 c'''16 g''16} f''4 
      | f''8 r8 r4 f''8. aes''16~ aes''8. g''16~ 
      | g''8 aes''8 bes''8. aes''16 g''16 aes''8 f''16 r4 
      | r8 b''8~ b''8. bes''16~ bes''16 aes''8 f''16 es''8 b'8 
      | bes'16 e''16 bes'16 e''16 bes'32 es''16 bes'32 es''16 b'32 d''32 bes'8 g'8 f'4 
      | d'16 f'8 d'16 f'16 g'16 aes'16 bes'16~ bes'8 r8 r4 
      | r4 r16 f'16 a'16 bes'16 a'16 aes'16 g'16 f'16 d'4 
      | f'2^\markup{\left-align \small vib} r2 
      | r2. r8 d'''8\bendAfter #+4  
      \bar "||" \mark \default f'''2... es'''16\bendAfter #+4  
      | f'''4\bendAfter #-4  r2 r8 c'''8~ 
      | c'''8 f'''8 es'''8 a''16 es'''16~ es'''8 des'''8 bes''16 a''16 aes''16 g''16 
      | ges''16 f''16 e''16 es''16 d''16 des''16 c''16 bes'16 bes'16 g'16 a'16 c''16 ges'16 e'16 f'16 es'16 
      | d'16 ges'16 aes'16 bes'16 \tuplet 6/4 {b'4 d''16 b'16} des''16 b'16 g'16 aes'16~ aes'16 f'16 b'16 g'16 
      | f'8 r8 r8. ges'16 aes'8 bes'8 \tuplet 3/2 {b'4 c''8} 
      | f''8 b'8 \tuplet 3/2 {bes'4 a'8~^\markup{\left-align \small vib}} a'8 r8 r4\bar  ".."
    }
    >>
>>    
}
