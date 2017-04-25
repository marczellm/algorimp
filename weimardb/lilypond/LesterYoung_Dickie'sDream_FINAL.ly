\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dickie's Dream"
  composer = "Lester Young"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7|
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
     
      \bar "||" \mark \default c'4.. d'16~ d'4 r4 
      | r4 r8 g8 c'8 d'8 \tuplet 3/2 {es'4 f'8} 
      | \tuplet 3/2 {g'4 es'8} f'8 g'16 f'16 es'8 c'8 \tuplet 3/2 {g4 es8} 
      | c8 d8 es8 f8 \tuplet 3/2 {aes4 f8} aes8 f8 
      | g4~ \tuplet 6/4 {g4 aes16 bes16~} bes16 b16 c'4 g8~ 
      | g4. f8~ f16 aes8 f16~ f16 g8 es16~ 
      | es16 f8 d16~ d16 es8 f16 g8 c'4.~ 
      | c'4 r2. 
      \bar "||" \tuplet 3/2 {a'4 g'8} es'8 d'8 \tuplet 3/2 {c'4 aes8} \tuplet 3/2 {g4 es8} 
      | \tuplet 3/2 {a4 f8} g8. es16 f4~ \tuplet 3/2 {f8 d8 es8~} 
      | \tuplet 3/2 {es8 c8 d8} es8 f8 g8 c'4.~ 
      | c'4. g8 aes4 g8 f8 
      | g8 c'8~ c'2 r4 
      | r4 r8 g'8 aes'8 f'8 g'8. es'16 
      | f'8 d'8 es'4 c'8. g16~ g8. es16 
      | g4. c'8~ c'4. a8~ 
      \bar "||" a4 r2 \tuplet 3/2 {a'4 g'8} 
      | e'8 d'8 bes8 a8 g8 f8~ f16 e8 es16 
      | g4 f4. r8 r4 
      | r8 f8 a8 c'8 es'8 g'8 f'8 g'16 f'16 
      | d'8 c'8 aes8 f8 d8 c8 g8 f8 
      | aes4. f16 g16~ g8 g4 es8 
      | \tuplet 3/2 {f4 d8} es8 g8 bes8 es'4. 
      | d'4 g4 d'8 f'8 g'4 
      \bar "||" es'2 r4 r8. g16 
      | es'4 \tuplet 3/2 {g8 a4~} \tuplet 6/4 {a16 d'4 g16} a8 c'8~ 
      | c'2~ c'8 ges8 a4 
      | \tuplet 3/2 {es'4 g8} a8 d'8 c'8 g8 es4 
      | g8 c8 \tuplet 5/4 {es8 e16 ges16 aes16} \tuplet 3/2 {a8 bes8 c'8~} c'8 g8~ 
      | g4. f8 aes8. f16 r4\bar  ".."
    }
    >>
>>    
}
