\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dickie's Dream"
  composer = "Buck Clayton"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key c \minor
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
      
      | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 
      | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | es1:7 | d2:min g2:7 
      | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 
      | c2:min c2:min/bes|
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


      \tempo 4 = 231
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default aes'8. g'16~ g'4 cis''8 d''4 c''8~ 
      | c''8. c''16~ c''4 \tuplet 3/2 {bes'8 b'4~} b'8 bes'8~ 
      | \tuplet 6/4 {bes'4~ bes'16 bes'16~} bes'4 a'8. aes'16~ aes'8. g'16~ 
      | g'8 c''8~ \tuplet 3/2 {c''8 g'8 ges'8} f'8 e'16 es'16~ es'8 c'8~ 
      | c'4 r2 r8. c''16~ 
      | c''16 b'8 c''16~ c''4 c''8 b'8 c''4 
      | c''8 b'8 c''4 c''8. g'16~ g'8. g'16~ 
      | g'4. r8 r2 
      \bar "||" r8 g'8 c''8 es''8 g''8. g''16~ g''4 
      | \tuplet 3/2 {g''4 ges''8} f''8 e''8 \tuplet 3/2 {es''4 d''8~} d''8 d''8~ 
      | d''4 c''8 b'16 c''16~ c''4 c''4 
      | c''8 b'8 bes'8 a'8 aes'8 g'8~ g'8. c''16~ 
      | c''4 g'8 es'8 f'4 es'4 
      | \tuplet 3/2 {des'4 es'8~} es'8 c'8 es'8. c'16~ c'8 d'16 es'16~ 
      | \tuplet 6/4 {es'8 c'8. d'16~} d'8 es'8 es'8 c'4 c'8~ 
      | c'4 r2. 
      \bar "||" c'8 des'4 e'8 g'4. g'8~ 
      | g'4. g'8 aes'4 g'4 
      | d''8 des''8 c''8 b'8 bes'8 aes'8 \tuplet 3/2 {a'8 g'8 aes'8} 
      | g'8 es'8 c'4 es'2 
      | d''4. d''8 c''8. aes'16~ aes'8. g'16~ 
      | g'2 f'4 aes'4 
      | bes'8. g'16~ g'8 f'8 es'4 es'4 
      | fis'8 g'4 d'4. r4 
      \bar "||" r4 d''4. c''16 d''16 c''8 d''8 
      | \tuplet 3/2 {c''8 d''8 c''8} d''4 c''8 d''8 cis''16 d''16 c''16 d''16~ 
      | d''8. bes'16 c''8 d''8 c''16 des''16 c''16 d''16~ d''8 c''16 des''16 
      | c''8 d''8 c''16 des''16 c''8 \tuplet 3/2 {d''4 des''8} \tuplet 3/2 {c''4 b'8} 
      | bes'8 aes'4 g'4 g'4. 
      | g'8 aes'8 g'4 g'8 aes'8 g'4 
      | g'8 aes'8 g'4 c''4. c''8 
      | c''4 g'4 \tuplet 3/2 {es'4 c'8~} c'8 g8~ 
      \bar "||" g4. r8 r2\bar  ".."
    }
    >>
>>    
}
