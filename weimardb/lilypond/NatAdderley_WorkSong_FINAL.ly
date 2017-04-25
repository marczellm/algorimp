\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Work Song"
  composer = "Nat Adderley"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \minor
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
      
      | f1:min7 | s1 | s1 | s1 | s1 | s1 | g1:7 | c1:7 
      | f1:min7 | s1 | s1 | s1 | f1:7 | bes1:7 | g2:7 c2:7 | f1:min7 
      | s1 | s1 | s1 | s1 | s1 | s1 | g1:7 | c1:7 
      | f1:min7 | s1 | s1 | s1 | f1:7 | bes1:7 | g2:7 c2:7 | f1:min7 
      | s1 | s1 | s1 | s1 | s1 | s1 | g1:7 | c1:7 
      | f1:min7 | s1 | s1 | s1 | f1:7 | bes1:7 | g2:7 c2:7 | f1:min7 
      | s1|
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


      \tempo 4 = 155
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. f'16~ f'4 aes'4 c''4 
      | es''4 es''4 es''4. r8 
      | r8 f'8 \tuplet 3/2 {aes'4 c''8~} \tuplet 6/4 {c''16 es''4 es''16~} es''8. es''16~ 
      | es''4 g''4 \tuplet 3/2 {es''4 c''8} aes'4 
      | c''8. c''16 r2. 
      | r4 r8. c''16~ \tuplet 6/4 {c''8 e''8. g''16~} g''8 f''8 
      | e''4 des''8 c''8 bes'16 aes'16 bes'16 aes'16 g'16 f'8 d'16 
      | e'8 e'8 r4 \tuplet 6/4 {r16 des''4 b'16~} b'16 c''8 bes'16~ 
      | bes'16 g'16 a'8 f''2.~ 
      | \tuplet 6/4 {f''16 es''4 f''16} r4 r8. c''16 es''8. f''16~ 
      | f''4 \tuplet 3/2 {es''4 c''8} bes'8 g'8 \tuplet 3/2 {f'4 es'8} 
      | f'4^\markup{\left-align \small vib} r4 r8. f'16~ f'8. f'16 
      | \tuplet 3/2 {aes'8\glissando  a'4} f'4 bes'4 f'4 
      | b'8. f'16 b'8. c''16 \tuplet 3/2 {b'8 bes'8 aes'8} \tuplet 3/2 {f'4 aes'8} 
      | bes'8. f'16 aes'16 bes'16 g'16 f'16 \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {e'4 f'8} 
      | r2 f''8. es''16 \tuplet 3/2 {aes''4 f''8~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default f''4 d''4 aes'8\bendAfter #-4  g'8 r4 
      | r2 f''4 aes''4~ 
      | aes''8. f''16~ f''8 aes''8 c'''8 b''8~ b''16 ges''16 f''8 
      | \tuplet 6/4 {es''8 c''8. bes'16~} bes'16 aes'16 c''16 d''16 f''8 es''8 \tuplet 3/2 {c''4 bes'8~} 
      | bes'16 aes'8 f'16~ f'4 f'16 es'16 f'16 g'16 aes'16 g'16 aes'16 bes'16 
      | b'16 bes'16 d''16 des''16 d''16 des''16 d''16 e''16 f''16 e''16 f''16 g''16 aes''16 bes''16 g''16 f''16 
      | e''16 des''16 r8 r4 des''16 d''16 des''16 b'16 c''8\bendAfter #-4  b'8 
      | r4 r16 f''8 e''16 es''4 d''4 
      | c''8. d''16 es''4 f''2^\markup{\left-align \small vib} 
      | c''8. d''16~ \tuplet 6/4 {d''16 es''4 f''16~} f''8. aes''16 g''4 
      | f''4 es''8 es''8 d''8\bendAfter #-4  r8 r4 
      | r2. \tuplet 3/2 {des'''8 e'''8 des'''8} 
      | c'''8 r8 r4 \tuplet 3/2 {r8 f'''8 ges'''8~} ges'''4~ 
      | ges'''4~ ges'''16 es'''8 c'''16~ c'''16 bes''8 aes''16 \tuplet 3/2 {f''4 d''8} 
      | f''4 f''4 aes''8 r8 r4 
      | r2 r8 f''8~ \tuplet 6/4 {f''8 aes''8. bes''16~} 
      \bar "||" \mark \default bes''8 b''8 c'''4~ c'''16 bes''32 c'''16 aes''32 f''32 es''32 f''8 r8 
      | r2 \tuplet 3/2 {b''4 c'''8~} c'''4~ 
      | c'''8 bes''16 g''16 \tuplet 3/2 {f''8 f''16 r8.} r2 
      | c'''8\bendAfter #+4  e'''8 \tuplet 3/2 {c'''4 b''8~} b''16 aes''8 aes''16~ aes''16 f''8 es''16 
      | c''8 bes'8 aes'4 a'8\bendAfter #-4  r8 r4 
      | r4 r8. f'16~ f'16 aes'8 c''16 es''8. f''16~ 
      | f''8 fis''8 es''4 aes''8 r8 r4 
      | r4 \tuplet 3/2 {aes''8 g''8 f''8} \tuplet 3/2 {e''4 des''8} \tuplet 3/2 {c''4 bes'8} 
      | \tuplet 3/2 {aes'4 f''8} r4 f''8 r8 r4 
      | \tuplet 3/2 {f''4 d''8} \tuplet 3/2 {aes''4 f''8~^\markup{\left-align \small vib}} f''4 es''8 r8 
      | r8 f''8 \tuplet 3/2 {aes''8 f''8 es''8} \tuplet 3/2 {c''4 bes'8} aes'8 f'8 
      | aes'8 r8 r4 r8. f'16 aes'8. bes'16 
      | \tuplet 3/2 {b'8 c''8 c''8} \tuplet 3/2 {b'8 c''8 c''8} \tuplet 3/2 {b'8 c''8 c''8} \tuplet 3/2 {b'8 c''8 c''8} 
      | \tuplet 3/2 {b'8 c''8 c''8} \tuplet 3/2 {b'8 c''8 c''8~} c''16 b'16 c''16 c''16~ c''16 b'16 c''16 c''16 
      | es''8. f''16~ f''4 \tuplet 3/2 {aes''4 f''8} r4 
      | f''8. es''16 r4 \tuplet 3/2 {es''4 c''8} es''4 
      \bar "||" f''4 f''4.\bendAfter #-4  r8 r4\bar  ".."
    }
    >>
>>    
}
