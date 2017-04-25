\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Whispering"
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
      | s2 r2 
      | es1 | es1 | d1:7 | s1 | es1 | s1 | c1:775+ | c1:7 
      | f1:7 | s1 | bes1:7 | s1 | es1 | s1 | bes1:7 | bes1:775+ 
      | es1 | s1 | d1:7 | s1 | es1 | s1 | c1:775+ | c1:7 
      | f1:7 | s1 | bes1:7 | s1 | f1:min7 | bes1:7 | es1 | f2:min7 bes2:7 
      | es1|
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


      \tempo 4 = 199
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. fis''8 g''8 
      \bar "||" \mark \default fis''16 g''16 ges''16 f''16~ f''4 es''8 c''8 bes'8. es''16~ 
      | es''4. g'16 bes'16~ bes'8 c''8 es''8 g''8 
      | d''4 r4 r8. fis'16~ fis'8 c''8~ 
      | c''2~ c''8 r8 r4 
      | r4 r8. c'''16~ c'''8 bes''8 g''8 f''8 
      | es''8 c''8 bes'8 g'8 \tuplet 3/2 {f'4 e'8} bes'8 es''8 
      | aes''4. g'8 bes'8 c''8 aes''8 aes''8 
      | g''4. c''16 e''16~ e''8 g''8 d''8 es''8 
      | g''4 g'4 c''4. r8 
      | r8. g''16~ \tuplet 3/2 {g''8 bes''8 g''8~} g''8 g''8 \tuplet 3/2 {g''8 bes''8 g''8} 
      | ges''4 ges''4 ges''4 ges''8 bes''16 ges''16 
      | f''4 f''4 f''4 bes''8 g''8 
      | f''8 es''8 \tuplet 3/2 {d''4 es''8} d''4 \tuplet 3/2 {g'8 a'8 bes'8} 
      | \tuplet 3/2 {d''4 es''8} c''8. d''16~ d''8 c''8 \tuplet 6/4 {g''8. e''8 f''16~} 
      | f''8 es''8 \tuplet 3/2 {c''4 aes'8} f'4 r4 
      | r8 c'''4 g''8 bes''8 g''8 es''8 c''8 
      \bar "||" es''2 a'16 bes'8. \tuplet 6/4 {c''4~ c''16 es''16~} 
      | es''8 g''4 bes''8~ bes''8. g''16~ g''8 d''8~ 
      | d''8 d''8~ d''2 a'8 c''8~ 
      | c''4. r8 r2 
      | r4 bes'8 c''8 a'8 bes'8 fis'8 g'8 
      | \tuplet 3/2 {bes4 c'8} es'8 ges'8 bes'8 es''8 g''8 bes''8 
      | aes''2~ aes''8 aes''4 g''8 
      | g''4.. g''16~ g''2~ 
      | g''4 fis''4 \tuplet 3/2 {g''4 es''8} c''4 
      | es''2 b'8 c''8 es''4 
      | g''4 g''8. g''16~ g''4 es''4 
      | bes''2~ bes''4~ bes''16 g''8 f''16~ 
      | f''8 es''4. \tuplet 3/2 {c''4 aes'8} ges'8 es'8 
      | bes'8 c''8 \tuplet 3/2 {es''4 g''8~} g''4 \tuplet 3/2 {bes'4 es''8~} 
      | es''8 r8 \tuplet 6/4 {r4 r16 bes'16~} bes'8 c''8 es''8 g''8 
      | \tuplet 3/2 {bes''4 es''8} \tuplet 3/2 {g''4 c''8} es''8 c''8 bes'4 
      \bar "||" es''4. r8 r2\bar  ".."
    }
    >>
>>    
}
