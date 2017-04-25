\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dickie's Dream"
  composer = "Dickie Wells"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7 | c2:min c2:min/bes | aes2 g2:7|
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
     
      \bar "||" \mark \default r1 
      | r2 g'4 \tuplet 3/2 {g'4 g'8~} 
      | g'8\bendAfter #+4  aes'8 g'4.. f'16~ f'8 e'8 
      | es'2 \tuplet 3/2 {c'4 c'8~} c'4 
      | g8. g16~ g8 g8 aes4 g4 
      | c'4. d'8 c'8. fis16\glissando  g4 
      | c'8 c'4 c'4 r8 r4 
      | r1 
      \bar "||" g'2 aes'2 
      | g'16\glissando  ges'8. c'4 c'4 c'4 
      | es'8. e'16~ e'4 c'4 es'4 
      | c'8. g16~ g4 aes4 g4 
      | c'8 c'8 c'8 c'8 \tuplet 3/2 {cis'8 d'8 c'8~} c'8 c'8~ 
      | c'16 g8 g16~ g8 g8 \tuplet 3/2 {aes4 g8~} g8. c'16~ 
      | c'2. r4 
      | r2 aes'4 a'4~ 
      \bar "||" \tuplet 6/4 {a'16 g'4 g'16~} g'4 c'4.. g'16~ 
      | g'8 g'4 g'8 a'4 g'8. g'16~ 
      | g'4 c'4 es'2 
      | c'8. c'16~ c'8 es'8~ es'4. r8 
      | r2 f8. bes16~ bes8 f8 
      | bes4 d'4 f'4 f'8 e'8 
      | es'4 g4 g2 
      | aes8. g16~ g8 c'8~ c'2~ 
      \bar "||" c'4 r2 \tuplet 3/2 {f'8 aes'8 b'8} 
      | c''4 c'4 c'4. des'8 
      | c'4 g4. g8 aes4 
      | g4. aes8 es'2 
      | d'8 c'8 g2~ g8 r8 
      | r2 aes8. g16~ g8 d'8 
      | es'2 c'8. c'16~ c'8 c'8 
      | c'8. g16~ g8 g4. r4\bar  ".."
    }
    >>
>>    
}
