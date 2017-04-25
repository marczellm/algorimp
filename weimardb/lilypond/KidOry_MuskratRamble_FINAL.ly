\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Muskrat Ramble"
  composer = "Kid Ory"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | aes1 | aes2 aes2:dim | es1:7 | s1 | aes1 | s1 | bes1:7 | es1:7 
      | aes1 | s1 | f1:7 | bes1:min | bes2:7 es2:7 | aes1|
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


      \tempo 4 = 184
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 es'2.\bendAfter #+4  
      \bar "||" \mark \default aes'4 es'4 c'4 \tuplet 3/2 {f'4 es'8~} 
      | es'8 c'8 aes4 es4 des'8 bes8 
      | r2 es8. f16~ f8 fis8 
      | g4 \tuplet 3/2 {des'4 c'8~} c'8 bes8 r4 
      | r8 es'8 c'8. aes16 \tuplet 3/2 {es'4 c'8~} c'8. es'16 
      | c'8. aes16 es'8 c'8 aes4 r4 
      | f'8 r8 r8 fis'8 r4 r8. g'16 
      | r4 r8 es'8~ es'2\bendAfter #+4  
      | aes'4 es'4 c'4 f'8 es'8~ 
      | es'8 c'8 aes4 es4~ es16\bendAfter #+4  e8 f16~ 
      | f8 r8 r4 des'4 r4 
      | r8 es8 aes8 c'4. es'4 
      | d'8 r8 r4 des'4.\glissando  c'8 
      | c'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
