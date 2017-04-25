\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bag's Groove"
  composer = "Milt Jackson"
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
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:min7 | c1:7 | f1:7 | c1:7 
      | f2:7 r2|
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


      \tempo 4 = 175
      \set Score.currentBarNumber = #0
     
      | r8 f''8 aes''8 bes''8 b''8 c'''8 bes''8 aes''8 
      \bar "||" \mark \default f''4 f''8 gis''8 a''8 f''4. 
      | \tuplet 3/2 {f''4 es''8} d''8 f''8 \tuplet 3/2 {cis''8 d''8 des''8} c''8 bes'8 
      | \tuplet 3/2 {a'4 c''8} g'8 e'8 \tuplet 3/2 {f'4 es'8} r4 
      | r8 cis''16 d''16~ d''16 des''8 b'16~ b'16 aes'16 ges'16 f'16~ \tuplet 6/4 {f'8. es'8 d'16~} 
      | d'8 f'8 \tuplet 3/2 {g'8 aes'8 bes'8} b'8 bes'8 aes'8 f'8~ 
      | f'8 cis'8 d'16 f'16 g'8 gis'16 a'16 bes'16 a'16 f'8 c'8~ 
      | c'8 f'8 \tuplet 3/2 {g'8 a'8 bes'8} c''8. d'16~ d'4~ 
      | d'8 d'8 f'16 a'16 c''16 d'16~ d'16 g'16 aes'16 b'16~ b'8 a'8 
      | \tuplet 3/2 {bes'4 fis'8} g'8 a'8 bes'8 c''8 \tuplet 3/2 {cis''8 d''8 des''8} 
      | c''8 g'8 c''16 d''16 f''8 g''8 aes''8 e''8 c''8 
      | f''2 c''8 d''8 f''8 g''8 
      | gis''8 a''8 bes''8 b''8 c'''8 d'''8 es'''8 cis'''8 
      \bar "||" \mark \default d'''8 c'''8 des'''8 b''8 c'''8 bes''8 a''8 g''8 
      | f''8 es''8 \tuplet 3/2 {d''8 f''8 a''8~} a''16 c'''8 bes''16~ bes''16 des''8 b'16~ 
      | b'16 c''8 bes''16~ bes''16 g''8 gis''16 \tuplet 3/2 {a''8 bes''8 a''8} g''8 f''8~ 
      | f''16 es''16 g''16 bes''16 d'''8 des'''8~ des'''16 a''16 aes''16 ges''16 f''8 es''8 
      | d''8 f''8 g''8 e''8 \tuplet 3/2 {g''8 aes''8 g''8} f''8 es''8 
      | c''8 bes'8 \tuplet 3/2 {aes'8 f'8 g'8} \tuplet 3/2 {bes'8 b'8 bes'8} aes'8 f'8~ 
      | f'4 \tuplet 3/2 {d'4 f'8} gis'8 a'8 c''8. d'16~ 
      | d'8. d'16 \tuplet 3/2 {f'8 a'8 c''8~} c''16 gis'16 a'16 bes'16 b'4~ 
      | \tuplet 6/4 {b'8 bes'8. fis'16} \tuplet 3/2 {g'4 a'8} bes'8 c''8 cis''8. d''16~ 
      | d''8 d''8 des''8 b'8 bes'8 aes'8 ges'4 
      | f'8 g'16 a'16~ a'8 bes'8 c''4. f'8 
      | \tuplet 3/2 {bes'8 c''8 bes'8} aes'8 bes'8 \tuplet 3/2 {c''8 bes'8 aes'8~} aes'4 
      \bar "||" \mark \default f'4.^\markup{\left-align \small vib} r8 r2\bar  ".."
    }
    >>
>>    
}
