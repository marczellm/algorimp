\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Heebie Jeebies"
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
      
      | es1:7 | es1:7 | aes1 | s1 | es2:7 f2:min7 | c2:dim es2:7 | aes2:7 des2:6 | d2:dim aes2 
      | es1:7 | s1 | aes1 | aes1:7 | des2 f2:dim | aes2 f2:7 | bes2:7 es2:7 | aes2 f2:7 
      | bes2:7 es2:7 | aes1|
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


      \tempo 4 = 166
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default es''4. f''8\glissando  \tuplet 3/2 {g''4 bes''8~} bes''8 g''8 
      | bes''4 g''8\glissando  fis''8\glissando  \tuplet 3/2 {g''8 f''8 es''8} des''8 c''16 bes'16 
      | c''2^\markup{\left-align \small vib} c''8 es''8~ \tuplet 6/4 {es''16 f''8. b'16 c''16~} 
      | c''8 aes''4^\markup{\left-align \small vib} f''8 aes''8 f''4.^\markup{\left-align \small vib} 
      | g''8 a''8\glissando  bes''8 es''8 g''8 f''8 es''8 c''8 
      | \tuplet 3/2 {des''4 des''8~} des''8 des''8~^\markup{\left-align \small vib} des''4.. b'16~ 
      | \tuplet 3/2 {b'8 c''8 es''8~} es''8 b'16 c''16~ c''8 aes''4^\markup{\left-align \small vib} f''8 
      | aes''8 f''8 b'8 c''8 es''4^\markup{\left-align \small vib} f''8 r8 
      | r8 des'''4. bes''8 fis''8~ \tuplet 6/4 {fis''4 g''16 es''16~} 
      | \tuplet 6/4 {es''8. f''8 bes'16~} \tuplet 6/4 {bes'8. c''8 des''16~} des''8 des''4.^\markup{\left-align \small vib} 
      | b'8 c''8 es''8 b'8 c''8 aes''4^\markup{\left-align \small vib} es''16 aes''16~^\markup{\left-align \small vib} 
      | aes''4 \tuplet 3/2 {c''4 es''8~^\markup{\left-align \small vib}} es''4.. e''16~ 
      | e''8 f''8 aes''8 f''8 \tuplet 3/2 {aes''4 f''8~^\markup{\left-align \small vib}} f''8 c''8 
      | \tuplet 6/4 {es''4~^\markup{\left-align \small vib} es''16 c''16~} \tuplet 6/4 {c''8 b'8 bes'16 a'16~} a'8 f''8 \tuplet 6/4 {r4 r16 d''16~} 
      | d''8 aes''8 f''8 d''8 \tuplet 3/2 {des''4 g''8} f''8 des''8 
      | c''4^\markup{\left-align \small vib} b'16 bes'16 a'8 f''4..^\markup{\left-align \small vib} d''16~ 
      | d''8 aes''8 f''8 d''8 des''8 g''4^\markup{\left-align \small vib} des''8 
      | c''8 b'8 \tuplet 3/2 {c''4 des''8} c''8 r8 r4\bar  ".."
    }
    >>
>>    
}
