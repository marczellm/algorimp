\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dinah"
  composer = "Lionel Hampton"
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
      | s2 r2 
      | aes1 | s1 | s1 | f1:min7 | bes1:min7 | es1:7 | aes2 es2:7 | aes1 
      | s1 | s1 | s1 | f1:min7 | bes1:min7 | es1:7 | aes2 es2:7 | aes1 
      | f1:min | aes1:5+ | aes1 | f1:min6 | f2:min7 aes2:5+ | f2:min7 bes2:7 | bes1:min7 | es1:7 
      | aes1 | s1 | s1 | f1:min7 | bes1:min7 | es1:7 | aes2 es2:7 | aes1 
      | s1 | s1 | s1 | f1:min7 | bes1:min7 | es1:7 | aes1 | es2:7 s2 
      | aes1 | s1 | s1 | f1:min7 | bes1:min7 | es1:7 | aes2 es2:7 | aes1 
      | f1:min | aes1:5+ | aes1 | f1:min6 | f1:min7 | d2:min7 bes2:7 | es1:7 | s1 
      | aes1 | s1 | s1 | f1:min7 | bes1:min7 | es1:7 | aes2 es2:7 | aes1|
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


      \tempo 4 = 200
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 es''8 f''8 g''8 
      \bar "||" \mark \default aes''8 aes''8 g''8 f''8 g''8 g''8 \tuplet 3/2 {f''4 es''8} 
      | f''8 f''4 r8 r8 es''8 f''8 g''8 
      | \tuplet 3/2 {aes''4 aes''8} g''8 f''8 g''8 g''8 f''8 es''8 
      | f''8 f''4 r8 r8 es''8 f''8 g''8 
      | aes''8 aes''8 es''4 f''4 \tuplet 3/2 {c''8 des''8 e''8} 
      | g''8 b''8 g''4 \tuplet 3/2 {des''4 b'8} g'8 e'8 
      | bes'8 aes'8 es'4 bes8 es'16 bes16~ bes4 
      | es'2 r2 
      \bar "||" r8 es'8 aes'4 es''4 des''4 
      | es''4 des''8. b'16~ b'8 aes'4 r8 
      | r8 es'8 aes'4 es''4 des''4 
      | es''4 \tuplet 3/2 {des''4 es''8~} es''4 f''8 ges''8 
      | \tuplet 3/2 {aes''4 f''8} es''8 des''8 bes'4 es'8 f'8 
      | \tuplet 3/2 {bes'4 aes'8} e'8 des'8 bes8 des'8 des'8 c'8 
      | \tuplet 6/4 {c'8. c'8 c'16~} c'8 es'8 aes'4 es''4 
      | aes''4 r2 \tuplet 6/4 {r4 r16 e'16~} 
      \bar "||" e'8 f'16 aes'16~ aes'8 bes'8 c''8 f''8 c''4 
      | b'8 f''8 b'8. bes'16~ bes'8 f''8 \tuplet 6/4 {bes'4~ bes'16 aes'16~} 
      | aes'8 f''8 \tuplet 6/4 {aes'4~ aes'16 g'16~} g'8 f''16 g'16~ g'8. f'16~ 
      | f'4 f'8 g'8 aes'8 bes'8 g'8 aes'8 
      | f'4 \tuplet 3/2 {es'8 aes'8 b'8} ges''4 es''8 des''8 
      | b'4 aes'8. ges'16 aes'8 ges'8 aes'4~ 
      | \tuplet 6/4 {aes'16 bes'8 des''8 ges''16~} ges''8 e''8 \tuplet 3/2 {des''4 b'8} aes'4 
      | g'8 b'8 e'8 es'8 b8 es'8 b8 es'8~ 
      \bar "||" es'8 c'8 es'4 aes'4. r8 
      | r2 \tuplet 3/2 {es'8 aes'8 c''8} es''4~ 
      | es''8. es'16~ \tuplet 3/2 {es'8 aes'8 c''8} es''2 
      | \tuplet 3/2 {es'8 aes'8 c''8} es''8. d''16 \tuplet 3/2 {des''4 b'8} c''8 c'8 
      | f'8 aes'4 f'8 aes'4.. aes'16~ 
      | aes'8. aes'16~ aes'4 b'8 aes'8 f'4 
      | es'4. aes'4 r8 r4 
      | aes'4 aes'4 b'8 aes'8 \tuplet 3/2 {f'4 e'8} 
      \bar "||" \mark \default \tuplet 3/2 {es'4 aes'8~} aes'4 b'4 r4 
      | aes'4. b'4. r4 
      | aes'8. aes'16~ aes'8. b'16~ b'8 r8 r4 
      | aes'4. b'4. r4 
      | r8 aes'4. b'2 
      | es'4 es'4 es'4 des'4 
      | c'4 c'8 r8 r2 
      | r2. es''8 es''8~ 
      \bar "||" es''8 es''4. d''4 d''4 
      | des''4 \tuplet 3/2 {des''4 c''8~} c''8 r8 r4 
      | bes'4 bes'4 bes'4 r4 
      | \tuplet 3/2 {bes'4 aes'8} f'8 es'4. des'4 
      | r1 
      | r4 \tuplet 6/4 {c''4~ c''16 c''16~} c''8. c''16~ c''8 r8 
      | r4 c''4 es''4 \tuplet 3/2 {des''4 b'8} 
      | c''8 aes'4. es'4 es''4 
      \bar "||" es''8. d''16~ d''16 des''8 c''16 f''4 \tuplet 3/2 {aes'4 bes'8} 
      | c''8 ges''8~ \tuplet 3/2 {ges''8 f''8 es''8} ges''4~ ges''16 es''16 ges''8~ 
      | \tuplet 3/2 {ges''8 f''8 es''8} ges''8. f''16 es''8. des'''16~ des'''8 b''8 
      | \tuplet 3/2 {aes''4 f''8} des''8 b'8 aes'8 g'8 \tuplet 3/2 {des''4 c''8} 
      | aes'4 \tuplet 3/2 {aes8 des'8 f'8} aes'4 d'8 f'16 aes'16 
      | c''4. c''4. d'16 f'16 ges'16 es''16~ 
      | es''4 \tuplet 6/4 {des'8 f'16 aes'8 des''16~} des''4 es''8. b'16 
      | g'8 es'8~ es'16 b8 es'16 \tuplet 6/4 {g'4~ g'16 b'16~} b'4 
      \bar "||" aes'4 r2. 
      | des''4 des''4 des''8 es''4 c''8 
      | r1 
      | des''4 des''8. c''16 \tuplet 3/2 {des''4 es''8~} \tuplet 3/2 {es''8 des''8 b'8} 
      | aes'4. aes'4 r8 r4 
      | \tuplet 3/2 {es'8 g'8 bes'8} es''4 des''8 b'8 c''4 
      | b'8 e''8 b'8 bes'8 aes'4 bes8 es'8~ 
      | es'4 f'8 aes'4. r4\bar  ".."
    }
    >>
>>    
}
