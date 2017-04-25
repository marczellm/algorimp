\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bop Goes to Leesel"
  composer = "Lee Konitz"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:7 | f1:7 | bes1:7 | f1:7 
      | bes1:7|
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


      \tempo 4 = 229
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8 c''16 bes'16~ bes'16 a'8 bes'16 
      | c''8 bes'8~ bes'16 a'8 bes'16 d''8 bes'8 f'8 e'8 
      | a'4 c''8 a'8 bes'8 a'8 aes'8 g'8 
      | f'8 es'8 cis'8 d'16 bes'16~ bes'8 f'8 d'8 bes8 
      | es'8 c'8 es'8 des'4.^\markup{\left-align \small vib} r4 
      | r1 
      | r1 
      | r2 a'8.\glissando  b'16~ b'8 d''8 
      | g''8 ges''16 f''16~ f''8 e''8 es''8 d''8 c''8 b'8 
      | bes'8 g'8~ g'16 es'8 c'16~ c'16 f'8 ges'16 a'8 aes'8~ 
      | aes'16 ges'8 f'16~ f'16 es'8 cis'16 d'8 f'8 \tuplet 3/2 {g'4 f'8} 
      | a'4 c''8 bes'8 a'4 d''8 d''8 
      \bar "||" \mark \default f''8 f''8 d''8 d''8 bes'8 bes'8 g'8 g'8 
      | bes'2^\markup{\left-align \small vib} g'4 c''8 g'8~ 
      | g'8 bes'8~^\markup{\left-align \small vib} bes'4. r8 r4 
      | r1 
      | r8 c''8 \tuplet 3/2 {fis'4 g'8} \tuplet 3/2 {bes'4 des''8} \tuplet 3/2 {f''4 e''8} 
      | es''8 d''8 c''8 b'8 bes'8 g'8 es'8 c'8 
      | ges'4 es'16 f'8 es'16 \tuplet 3/2 {c'4 cis'8} d'8 f'8 
      | \tuplet 3/2 {g'4 f'8} bes'8 a'8 \tuplet 3/2 {gis'4 bes'8} b'8 g'8 
      | r2 r8 bes'16 a'16 g'8 f'8 
      | r1 
      | r16 bes'8 bes'16 \tuplet 3/2 {a'4 bes'8} c''8 bes'8 a'8 g'8 
      | \tuplet 3/2 {f'8 ges'8 f'8} d'8 f'8 bes'8 bes'8 f'16 g'8 bes'16 
      \bar "||" \mark \default g'8 es'8 g'8 c''8 \tuplet 3/2 {g'8 a'8 bes'8} \tuplet 3/2 {a'8 f'4} 
      | r4 r16 g'8 a'16 c''8 bes'8 a'8 bes'8 
      | c''8 d''8 es''8 e''8 f''8 d''8 bes'8 a'8 
      | g'8 aes'4 d''8 ges''8 d''8 b'8 aes'8 
      | ges'4. bes'16 des''16 \tuplet 3/2 {es''4 des''8} es''8 des''8~^\markup{\left-align \small vib} 
      | des''4 r2. 
      | r2. r8 a'8 
      | c''8 bes'8 a'8 bes'8 \tuplet 3/2 {a'4 aes'8} g'8 a'8 
      | bes'8 g'8 \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {f'4 e'8~} e'16 es'16\glissando  d'16 es16 
      | \tuplet 3/2 {f4 a8} \tuplet 3/2 {des'4 a8} c'8 bes8 a8 bes'8 
      | g'8 ges'8 f8 es8 r4 f16 g8 f16~ 
      | f8 bes8 r2. 
      \bar "||" \mark \default r8 d'8 gis8 a8 c'8 bes8 r4 
      | \tuplet 3/2 {d'4 f'8} g'8 f'8 bes'8 g'8 es'8 c'8 
      | \tuplet 3/2 {f'8 g'8 f'8~} f'16 e'8 f'16~ f'16 g'8 f'16~ f'4 
      | \tuplet 3/2 {bes'4 c''8} bes'16 a'8 bes'16 c''8 bes'8 a'8 bes'16 des''16~ 
      | des''8 es''16 des''16 \tuplet 3/2 {c''4 des''8} es''8 des''8 bes'8 g'8 
      | r1 
      | r4 cis''4 d''8 es''16 d''16 a'4 
      | bes'8 d''8 bes'16 f'8. aes'8 g'4 g'8 
      | bes'8 g'8 bes'8 d''16 f''16~ f''8 e''8 es''8. f'16~ 
      | f'16 ges'8 a'16 \tuplet 3/2 {d''4 a'8} d''8 c''8 a'8 f'8 
      | bes'2^\markup{\left-align \small vib} r2 
      | r1 
      \bar "||" \mark \default bes'8 c''16 bes'16 g'4 bes'8 c''16 bes'16 g'4 
      | \tuplet 6/4 {bes'4 c''16 bes'16} \tuplet 3/2 {g'4 a'8} c''8 des''8~ \tuplet 3/2 {des''8 c''8 b'8} 
      | bes'8 g'8 es'8 c'8 \tuplet 3/2 {f'4 es'8} c'8 cis'8 
      | d'8 f'8 \tuplet 3/2 {g'4 f'8} bes'8 b'4. 
      | bes'2^\markup{\left-align \small vib} r2 
      | r1 
      | r2 a'4 d''8 e''8 
      | a''8 bes''8 a''8 g''8 ges''8 f''8 d''8 b'8 
      | fis'8 g'8 bes'8 d''8 f''8. e''16 es''8 g'8 
      | fis'8 g'8~ g'16 d''8 des''16~ des''16 c''8 f'16~ f'8 a'8 
      | c''8 bes'8 a'8 bes'16 a'16~ a'8 g'8 ges'8 f'8 
      | es'8 cis'8 \tuplet 3/2 {d'4 f'8} \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {a'4 bes'8} 
      \bar "||" \mark \default c''8 bes'8 a'8 bes'16 a'16 bes'2^\markup{\left-align \small vib} 
      | r2. r8 c''8 
      | d''8 a'8 c''8 bes'8 a'8 bes'8 g'8 ges'8 
      | f'8 e''16\glissando  f''16~ f''4 d''8 c''8 bes'8 f'8~ 
      | f'8 f'8 g'8 f'4.^\markup{\left-align \small vib} r4 
      | r2 r8 g'8 \tuplet 3/2 {bes'4 c''8} 
      | des''8 g'8 c''8 b'8 bes'8 g'8 es'8 c'8 
      | f'8 es'8 c'8 cis'8 \tuplet 3/2 {d'4 c'8} \tuplet 3/2 {b4 g8} 
      | a8 b8 d'8. b16 c'8 d'8 \tuplet 3/2 {es'4 d'8} 
      | c'8 bes8 gis8 a8 c'8 a8 bes8 c'8 
      | cis'8 d'8 es'8 e'8 \tuplet 3/2 {f'4 e'8} es'8 c'8~ 
      | c'8 d'8 \tuplet 3/2 {f'4 g'8} \tuplet 3/2 {a'4 bes'8} \tuplet 3/2 {c''8 d''8 e''8} 
      \bar "||" \mark \default \tuplet 3/2 {a''8\glissando  bes''4} r2.\bar  ".."
    }
    >>
>>    
}
