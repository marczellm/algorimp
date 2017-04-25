\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tiger Rag (Solo 2)"
  composer = "Benny Goodman"
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
      | r1 
      | aes1 | s1 | s1 | s1 | s1 | s1 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | aes1 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | s1 | des1 | s1 
      | s1 | des1:min | aes1 | f1:7 | bes1:7 | es1:7 | aes1 | s1 
      | des1 | des1:min | aes1 | f1:7 | bes1:7 | es1:7 | aes1|
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


      \tempo 4 = 271
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8 aes''8~^\markup{\left-align \small vib} aes''2~ 
      \bar "||" \mark \default aes''4 f''4 aes''4. f''8~ 
      | f''8 aes''4 f''8 aes''4 f''4~ 
      | f''8 b''8 c'''4 aes''4 f''8 aes''8~^\markup{\left-align \small vib} 
      | aes''2 \tuplet 3/2 {f''4 es''8} c''4 
      | es''8. g'16 bes'2.~ 
      | bes'2\glissando  aes'4 es''4~ 
      | es''2 bes'4 aes'4 
      | es''4 r4 aes'4 bes'4~ 
      | bes'4 aes'4 es''2^\markup{\left-align \small vib} 
      | r4 bes'2 aes'4 
      | f''2 \tuplet 3/2 {bes'4 c''8} es''4^\markup{\left-align \small vib} 
      | r2 r8 des'''8 es'''4~^\markup{\left-align \small vib} 
      | es'''2 c'''8 bes''8 g''8 f''8 
      | es''8. g''16~ \tuplet 3/2 {g''8 aes''8 a''8~} \tuplet 3/2 {a''8 bes''8 b''8~} b''8 c'''8 
      | \tuplet 3/2 {bes''8 b''8 a''8} \tuplet 3/2 {bes''8 aes''4} f''8 es''8 c''8 aes'8~ 
      | aes'4 aes''2^\markup{\left-align \small vib} e''4 
      \bar "||" b'4 aes'4 b'4 aes'4 
      | \tuplet 3/2 {f''8 es''4~} es''8 es''4^\markup{\left-align \small vib} r8 r4 
      | b'8 es''8 \tuplet 3/2 {f''4 es''8} aes''8 bes''8 aes''8 f''8 
      | es''8 c''8 bes'8 aes'8 f'8 es'8 r4 
      | es'4^\markup{\left-align \small vib} r4 bes'8 c''8 es''8 c''8 
      | aes''8 r8 r8. f''16~ \tuplet 3/2 {f''8 es''8 c''8} bes'4 
      | es''4 es''4 es''8. d''16 r4 
      | r4 g''8 aes''8~ aes''8. f''16~ f''8. aes''16~ 
      | aes''4. f''8 d''8 b'8 aes'8 f'8 
      | d'8 f'8 b8 d'8 f'8 aes'8 b'8 f''16 es''16~ 
      | es''4. g'8 b'8 c''16 es''16 c''4 
      | g''8 e''8 f''8 es''8 c''8 aes'8 f'8. e''16 
      | f''8 e''8 f''8. d''16~ d''16 es''16 d''16 es''16~ es''4 
      | des''16 d''16 des''8 d''4 \tuplet 3/2 {c''8 des''8 c''8} des''4 
      | r4 \tuplet 3/2 {bes'8 b'8 c''8} b'8 c''8 b'8 c''8 
      | b'16 c''8 b'16~ \tuplet 3/2 {b'8 c''8 b'8~} b'16 c''16 b'16 c''16~ c''8 r8 
      | r4 r8 aes''4 aes''4 f''8 
      | es''8 c''8 bes'4 es''4^\markup{\left-align \small vib} r4 
      | r4 d'8 f'8 b8 d'8 f'8 aes'8 
      | b'8 d''8 c''4 g''4 bes''8 r8 
      | r4 b''8 c'''8 g''8 bes''8 aes''8 f''8 
      | es''8 c''8 bes'8 aes'8 f'4 des''8 es''8 
      | b'8 c''8 \tuplet 3/2 {es'8 fis'8 g'8} b'8 c''16 es''16~ es''8 c''8 
      | g''8 aes''8 a''8 bes''8 b''16 c'''8 bes''16~ bes''8 a''8 
      | aes''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
