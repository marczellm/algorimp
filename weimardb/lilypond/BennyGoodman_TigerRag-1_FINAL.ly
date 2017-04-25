\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tiger Rag"
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
      | aes1 
      | aes1 | s1 | s1 | s1 | s1 | s1 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | aes1 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | s1 | des1 | s1 
      | s1 | des1:min | aes1 | f1:7 | bes1:7 | es1:7 | aes1|
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


      \tempo 4 = 268
      \set Score.currentBarNumber = #0
     
      | \tuplet 3/2 {r8 f8\glissando  es'8~} es'2.~ 
      \bar "||" \mark \default es'4. b4. c'4 
      | es'4 b4 c'4 es'4 
      | b4 c'4 f'4 b4 
      | c'4 es'4 f4 es4 
      | aes2^\markup{\left-align \small vib} \tuplet 3/2 {es4 f8} \tuplet 3/2 {aes4 c'8} 
      | es'4 es8 f8 aes8 c'8 es'8. es'16~^\markup{\left-align \small vib} 
      | es'4. es4 r8 r4 
      | \tuplet 6/4 {r4 bes16 f'16~} f'8 e'8 f'8 e'8 f'8 e'8 
      | f'2^\markup{\left-align \small vib} c'4 f'4~^\markup{\left-align \small vib} 
      | f'4 f'8 r8 r8 es'8\glissando  f'8 e'8 
      | f'2^\markup{\left-align \small vib} c'4 f'4~^\markup{\left-align \small vib} 
      | f'8. f'16~ f'8 c'8 des'8 bes8 g8 es8 
      | c'8 bes8 es'8 d'8 des'8 bes8 g8 es8 
      | bes4^\markup{\left-align \small vib} r2 \tuplet 3/2 {g8 aes4} 
      | g8 aes8 g8 aes8 f8 aes8 g8 aes16 g16~ 
      | g16 aes8 g16~ \tuplet 3/2 {g8 aes8 f8~} f8 aes16 g16~ g8 aes8 
      \bar "||" g8 aes8 ges8 aes8 bes8 aes8 g8 aes8 
      | g8 aes8 \tuplet 6/4 {g4 aes16 c'16~} c'8 aes8 g8 aes8 
      | g8 aes8 g8 aes8 es8 aes8 g8 aes8 
      | g8 aes8 g8 aes8 \tuplet 3/2 {es'4 aes8} \tuplet 3/2 {g4 aes8} 
      | \tuplet 3/2 {c'4 aes8} g8 aes8 \tuplet 3/2 {f'4 aes8} \tuplet 3/2 {g4 aes8} 
      | \tuplet 3/2 {es'4 aes8} \tuplet 3/2 {g4 aes8} c'8. a16 \tuplet 3/2 {bes4 a8} 
      | \tuplet 3/2 {bes4 aes8} f8 es8 aes8 r8 r4 
      | r8 f16 a16 ges'16\glissando  aes'8.~^\markup{\left-align \small vib} aes'2~ 
      | aes'4.. f'16~ f'4. g'16 aes'16~ 
      | aes'4. f'4. b'8 c''8 
      | \tuplet 3/2 {b'8 c''8 b'8} bes'4 aes'4 f'4 
      | c''4. f'4.^\markup{\left-align \small vib} \tuplet 3/2 {c'4 des'8} 
      | d'8 es'8 c'8 bes8 aes8 f8 c'8 des'8 
      | d'8 es'8 c'8 bes16 aes16~ aes8 f8 es8 f8 
      | aes8 r8 r4 es8 f8 a8 c'8 
      | f'4.\glissando  es'8 c'8 aes8 f8 es16 aes16~ 
      | aes8 r8 r2.\bar  ".."
    }
    >>
>>    
}
