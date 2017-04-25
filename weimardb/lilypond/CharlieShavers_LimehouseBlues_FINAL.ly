\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Limehouse Blues"
  composer = "Charlie Shavers"
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
      | des1:9 | des1:9 | s1 | s1 | bes1:9 | s1 | s1 | s1 
      | aes1 | s1 | c1:7 | f1:min | bes1:7 | s1 | es1:7 | aes1:7 
      | des1:9 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | aes1 | f1:7 | bes2:min f2:7 | bes1:min | bes1:min5-7 | es1:7 | aes1|
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


      \tempo 4 = 269
      \set Score.currentBarNumber = #0
     
      | r4 r8 es''4 aes''4 e''8 
      \bar "||" \mark \default f''8 aes''8 f''4 aes''4 f''4 
      | aes''4 f''4 aes''4 f''4 
      | aes''4 f''4 aes''4 f''8 aes''8~ 
      | aes''8 f''8 des''8 bes'8~ bes'8. b'16~ b'4~ 
      | b'8\bendAfter #+4  bes'4 f'8~ f'4. aes'8~ 
      | aes'4 f'8 e'8 es'4 d'8 es'8 
      | f'4. d'8~ d'8. f'16~ f'8 e'8 
      | es'8 d'4 f'8~ f'4. r8 
      | r4 r8 es'8 \tuplet 3/2 {c'8 es'4} \tuplet 3/2 {aes'8 c''8 b'8~} 
      | b'8 r8 r8 b'8 c''2 
      | bes'4 \tuplet 3/2 {aes'4 g'8} f'4 e'8 g'8 
      | \tuplet 3/2 {e'4 f'8~} f'8 f'4.^\markup{\left-align \small vib} r4 
      | r8. bes''16~ bes''16 a''8 aes''16~ \tuplet 3/2 {aes''8 g''8 f''8~} f''8 es''8 
      | d''8 c''16 bes'16~ bes'16 a'8 aes'16~ aes'8 bes'8 g'8 aes'8 
      | bes'8. aes'16~ aes'8. g'16~ g'4. f'8 
      | des'8. bes16~ bes8 bes4 r8 r4 
      \bar "||" r8. aes''16~ aes''8 aes''8~ \tuplet 3/2 {aes''8 aes''8 aes''8~} aes''8 aes''8 
      | \tuplet 3/2 {a''8 bes''4} aes''8 aes''8~ aes''8. aes''16~ aes''8. aes''16~ 
      | aes''8. aes''16~ aes''4 aes''8. aes''16~ aes''8. f''16~ 
      | f''8 des''4 b'4. r4 
      | r8. aes''16~ aes''8 aes''8 f''8 f''16 es''16~ es''8 es''8 
      | d''8 d''8 c''8 c''8 bes'8 bes'16 a'16~ \tuplet 3/2 {a'8 a'8 aes'8~} 
      | aes'8 aes'8 f'8 e'8 es'8 d'4 f'8~ 
      | f'4\bendAfter #-4  es'8 d'4. r4 
      | r4 es'8 aes'4 c''4 es''8~ 
      | es''8 d''4 des''4 c''4.~^\markup{\left-align \small vib} 
      | c''4 bes'4 a'8 bes'4 des''16 f''16~ 
      | f''8 f'8~^\markup{\left-align \small vib} f'2~ f'8 r8 
      | r4 aes''4.\glissando  g''4 f''8 
      | e''8 des''16 bes'16~ bes'8 a'8 g'8 es'4 bes8~ 
      | bes8 aes8~ aes8. c'16~ c'8 es'8 f'8 aes'8 
      | c''4 es'8 aes'8~ aes'4. r8\bar  ".."
    }
    >>
>>    
}
