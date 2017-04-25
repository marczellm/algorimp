\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Handful of Keys"
  composer = "Benny Goodman"
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
      | es2 f2:min7 | es2:6 ges2:dim | f2:min f2:min7 | f2:min6 ges2:dim | f2:min f2:min7 | f2:min6 bes2:7 | es2 c2:min7 | f2:min7 bes2:7 
      | es2 f2:min7 | es2:6 ges2:dim | f2:min f2:min7 | f2:min6 ges2:dim | f2:min f2:min7 | f2:min6 bes2:7 | es2 bes2:min5-7 | es2 d2:7|
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


      \tempo 4 = 303
      \set Score.currentBarNumber = #-1
     
      | r2. bes''4~^\markup{\left-align \small vib} 
      | bes''1~ 
      \bar "||" \mark \default bes''2 fis''8 g''8 es''8 c''8 
      | es''4.^\markup{\left-align \small vib} c''8~ c''8. fis''16~ fis''8 g''8 
      | \tuplet 3/2 {es''4 c''8~} c''8. ges''16~ ges''8. es''16~ es''8. f''16~ 
      | f''8 r8 r8 aes'8 cis''8 d''8 f''8 d''16 g''16~ 
      | g''8 f''8 bes''8 a''8 aes''8 f''8 d''8 bes'8 
      | aes'8 f'8 d'8 f'4 f'4 aes'8 
      | es''4^\markup{\left-align \small vib} r4 r8 es''8 g''8 bes''8\bendAfter #+4  
      | d'''8 es'''2..~ 
      \bar "||" es'''1~ 
      | es'''8 d'''4 des'''8 c'''8 b''8 bes''8 a''8 
      | aes''8 g''8 ges''8 f''8 \tuplet 3/2 {e''8 es''8 d''8~} d''8 des''8 
      | c''4. bes''8 r2 
      | r4 r8 aes'8 cis''8 d''8 f''8 d''8 
      | f''8 d''8 \tuplet 3/2 {f''8 g''4} g''8 f''8 d''8 es''8 
      | es''4 d'8 g'8 bes'8 c''8 es''8 c''8 
      | g''8 aes''8 a''8 bes''8 g''4 fis''4\bar  ".."
    }
    >>
>>    
}
