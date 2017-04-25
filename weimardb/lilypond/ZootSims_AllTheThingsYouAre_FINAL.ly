\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "All the Things You Are"
  composer = "Zoot Sims"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | d2:min7 g2:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | a2:min7 d2:7 | g1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis2:min7 r2 | b1:7 | e1:maj | c1:775+ 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim7 
      | bes1:min7 | es1:7 | aes1:maj | s1 | f1:min7|
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


      \tempo 4 = 192
      \set Score.currentBarNumber = #0
     
      | r4 c'4 \tuplet 3/2 {e'4 aes'8} bes'8 c''8 
      \bar "||" \mark \default aes'4 aes'8 f'8 aes'4. aes'8~ 
      | aes'8. aes'16~ aes'4 aes'8. aes'16~ aes'4~ 
      | aes'8. g'16 aes'4 \tuplet 3/2 {f'4 des'8} bes4 
      | es'4. c'8~ c'16 g8 f16~ f4~ 
      | f8 r8 r4 r8 f8 g16 aes8 g16~ 
      | g16 f8 g4. f8 es16 \tuplet 3/2 {g4 f8~} 
      | f16 e8 f16~ f16 g8 b16~ \tuplet 6/4 {b16 d'4 b16~} b16 c'8 e'16 
      | g'8 b'8 c''4. a'8 c''8 g'8~ 
      \bar "||" g'4. r8 r2 
      | r8. g'16~ g'8 d''8 es''4 d''4 
      | d''2 r2 
      | r1 
      | f'4 f'4~ f'16 f'8 g'16 aes'8 g'8~ 
      | g'8. g'16~ g'4.. f'16 e'4 
      | d'8. es'16 e'4 \tuplet 3/2 {d'4 b8~} \tuplet 3/2 {b8 g8 e8} 
      | g4. e8~ \tuplet 3/2 {e8 g8 b8~} b16 d'8 c'16~ 
      \bar "||" c'8 e'8~ e'4. c'8~ \tuplet 3/2 {c'8 a8 e8} 
      | a4 a8. f16~ \tuplet 3/2 {f8 a8 bes8~} bes4 
      | a4.. g16 fis4 b8 d'8~ 
      | d'16 f'16 g'8 d'2 r4 
      | r4 r8 e'16 f'16 ges'4~ ges'16 e'16 ges'16 e'16~ 
      | e'16 es'8 c'16~ c'16 b8 bes16~ bes16 b8 fis'16~ fis'16 es'8 b16~ 
      | b8 e'8~ e'8. b16~ b8 aes4.~ 
      | aes8 e8 aes8 bes8 c'8 d'8 e'8 ges'8 
      \bar "||" aes'2~ aes'8 f'8 c'8 bes16 aes16~ 
      | aes8 f'8~ f'16 f'8 des'16~ des'16 c'8 bes16 aes8 f8 
      | aes8. f16 g8 bes8~ bes16 e'16 f'4.~ 
      | f'16 es'8 c'16~ c'16 g8 f16~ f4. r8 
      | r2 aes'4 aes'8. aes'16~ 
      | aes'4. e'8 aes'4~ \tuplet 3/2 {aes'8 e'8 aes'8~} 
      | aes'4~ aes'16 g'16 aes'16 g'16 f'8 es'8~ es'16 c'8 g16~ 
      | g8 fis8 fis4 aes4 a4 
      | f4.. bes16 \tuplet 3/2 {d'4 f'8~} f'4 
      | r2 r8 e'8 ges'16 a'8 c''16 
      | es''4 es''4 es''4 \tuplet 3/2 {es''4 es''8~} 
      | es''4~ es''16 d''16 es''16 d''16 des''16 c''8 aes'16 e'8 des'8 
      \bar "||" f'4. r8 r2\bar  ".."
    }
    >>
>>    
}
