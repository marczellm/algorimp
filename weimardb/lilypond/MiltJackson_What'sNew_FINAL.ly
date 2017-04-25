\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "What's New"
  composer = "Milt Jackson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key c \major
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
      | s2 c2:7 
      | f1:6 | es2:min7 aes2:7 | des1:maj | g2:min5-7 c2:7 | f2:min7 d2:min5-7 | g2:min5-7 c2:7 | f1:min6 | d2:min5-7 g2:7 
      | c1:6 | bes2:min7 es2:7 | aes1:maj | d2:min5-7 g2:7 | c2:min7 a2:min5-7 | d2:min5-7 g2:7 | c2:6 a2:min7|
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


      \tempo 4 = 72
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 6/4 {r8. c''16 d''16 e''16} 
      \bar "||" \mark \default \tuplet 10/8 {f''8~ f''32 c''16 a'16 f'32~} f'16 f'16 a'16 c''16 \tuplet 6/4 {cis''16 d''16 bes'16 g'16 c''8~^\markup{\left-align \small vib}} c''8. bes'32 a'32 
      | \tuplet 6/4 {aes'16 g'16 ges'16 aes'16 ges'16 f'16} \tuplet 3/2 {es'4^\markup{\left-align \small vib} des'8} \tuplet 5/4 {c'16 es'16 ges'16 a'16 gis'16} \tuplet 6/4 {a'16 aes'16 ges'8. des'16} 
      | e'16 f'16 aes'8 aes'2.~^\markup{\left-align \small vib} 
      | aes'8. f''16 \tuplet 5/4 {g''16 aes''16 g''16 f''16 es''16~} \tuplet 6/4 {es''16 des''8 bes'16 g'16 c''16~} c''16 bes'16 aes'16 c'16 
      | g'16 f'16 g'16 aes'16~^\markup{\left-align \small vib} aes'8. c'16~ \tuplet 10/8 {c'32 f'32 g'32 aes'32 bes'32 c''32 f''32 c''32 bes'16} aes'32 c''32 aes'32 g'32 f'32 g'32 aes'16 
      | \tuplet 6/4 {b'16 c''16 b'16 bes'8.~^\markup{\left-align \small vib}} bes'8. c''32 b'32 bes'32 aes'32 f'32 e'32 aes'32 des''16 c''32~^\markup{\left-align \small vib} c''8. bes'16 
      | r4 \tuplet 6/4 {r8 gis'16 a'16 c''16 e''16} g''16 e''16 f''16 g''16 \tuplet 6/4 {a''16 ais''8 b''16 c'''16 b''16} 
      | bes''16 aes''16 f''8 \tuplet 6/4 {g''8 f''16 d''16 c''16 aes'16} \tuplet 6/4 {d''16 es''16 d''16 c''16 d''16 f''16} \tuplet 6/4 {gis''4 ais''16 b''16} 
      \bar "||" c'''1~^\markup{\left-align \small vib} 
      | \tuplet 10/8 {c'''16 b''16 c'''16 b''16 c'''32 b''32~} \tuplet 6/4 {b''16 c'''16 aes''16 f''16 aes''8} f''16 ges''16 f''16 ges''16 \tuplet 6/4 {f''16 ges''16 e''16 es''16 des''16 es''16} 
      | \tuplet 6/4 {des''16 aes'16 b'16 c''16 es''8} es''16. des''32 c''32 es''32 g''32 bes''32 g''16 aes''16 bes''16 c'''16 \tuplet 6/4 {b''16 bes''16 aes''16 g''8.} 
      | f''8 f''8 f''16. es''32 d''32 es''32 d''32 c''32 \tuplet 6/4 {b'16 d''16 f''16 aes''8 g''16~} g''16 d''16 f''16 dis''16 
      | g'16 c''16 d''32 es''32 f''32 g''32~ g''8 a'8~^\markup{\left-align \small vib} a'8. c''16~ \tuplet 6/4 {c''8. g'16 es'16 c'16} 
      | f'4.^\markup{\left-align \small vib} \tuplet 6/4 {f'16 g'16 es'16~^\markup{\left-align \small vib}} es'4. b16 g16 
      | \tuplet 3/2 {d'8 c'8 c'8} c'4^\markup{\left-align \small vib} r2\bar  ".."
    }
    >>
>>    
}
