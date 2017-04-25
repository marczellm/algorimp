\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Nobody's Sweetheart"
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
      | aes1 | aes1 | f1:7 | s1 | f1:min7 | s1 | bes1:7 | s1 
      | es1 | s1 | c1:7 | s1 | aes1 | s1 | es1:7 | s1 
      | aes1 | s1 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | f1:min | s1 | e1:dim | s1 | aes1 | s1 | bes1:min | es1:7 
      | aes1 | s2 c2:7 | f1:7 | s1 | bes1:7 | es1:7 | aes1|
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


      \tempo 4 = 311
      \set Score.currentBarNumber = #0
     
      | r2 r8 aes''4 f''8 
      \bar "||" \mark \default aes''4 \tuplet 3/2 {f''4 es''8} f''4 es''8 c''8 
      | es''4 c''8. c''16~ c''8. a'16~ a'4 
      | a'4 f'4. r8 r4 
      | r4 \tuplet 3/2 {b''4 c'''8~} c'''8 bes''8 aes''8 f''8 
      | \tuplet 3/2 {d''4 bes'8~} bes'4 c''8 des''8 d''8 c''8 
      | aes''8 f''8 d''8 bes'8 aes'4 c''8 bes'8 
      | g''4 d''8 f''4. r4 
      | r4 r8 es'16 g'16 bes'4~ bes'16 g'16 bes'16 es''16 
      | r4 r8 bes'8 \tuplet 3/2 {es''8 g''4~} g''16 es''16 g''16 bes''16 
      | es'''4. c'''8~ c'''8. g''16~ g''8 bes''8~ 
      | bes''8 aes''8 es''8 c''16 es''16~ es''16 c''8 g''16~ g''16 f''8 e''16~ 
      | e''16 f''8 aes'16~ aes'8 b'8~ b'16 c''8 f''16~ f''16 c''8 f''16~ 
      | f''8 r8 r4 des''8. es''16 f''8 a''16 bes''16~ 
      | bes''8 g''8 bes''8 g''4 f''8 d''8. f''16~ 
      | f''4 c''4 es''4 r4 
      | r4 b''8 c'''8~ c'''2~ 
      \bar "||" c'''4 b''8 c'''16 g''16 \tuplet 3/2 {aes''4 d''8~} d''16 es''8 b'16~ 
      | b'16 c''8 aes'16~ aes'4 b'8 c''8 es''8 c''8 
      | g''8. es''16~ es''4 f''4 r4 
      | r2 aes''4 f''8 aes''8~ 
      | aes''8 f''4 d''8 bes'8 aes'8 \tuplet 3/2 {f'4 c''8~} 
      | c''16 bes'8 g''16~ g''8 f''8 bes''8 aes''8 f''8 d''8 
      | bes'8 aes'8 f'8 d'8 bes'4 r4 
      | r4 bes''2. 
      | r4 des''8 es''8 f''8 bes''8 \tuplet 3/2 {aes''8 bes''8 aes''8} 
      | f''8 es''16 des''16 bes'8 aes'8 des''4 bes'4~ 
      | bes'8 des'''4. bes''8 aes''8 e''8 des''8 
      | aes''2 \tuplet 3/2 {des''4 es''8} f''8 des''8 
      | c''2 b'8 c''8 \tuplet 3/2 {es''4 c''8} 
      | g''4 b'8 c''8 es''8 c''8 g''16 f''8 b'16~ 
      | \tuplet 3/2 {b'8 c''8 es''8~} es''8 c''8 g''8 f''8 \tuplet 3/2 {b'8 c''8 es''8~} 
      | es''8 c''8 g''16 f''8 b'16~ \tuplet 3/2 {b'8 c''8 es''8~} es''16 c''8 g''16~ 
      | \tuplet 3/2 {g''8 f''8 es''8~} es''8 c''8~ c''8. c''16~ c''8 es''8 
      | c''2 es''8 c''8 es''4 
      | c''4. a'4. r4 
      | r4 r8 e''4 f''4.~ 
      | f''4.. es''16~ es''8 des''8 bes''8 aes''16 g''16 
      | f''4 es''8. es''16~ es''2 
      | b'8 c''16 es''16~ es''16 c''8 aes''16~ aes''2\bar  ".."
    }
    >>
>>    
}
