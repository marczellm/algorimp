\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Limehouse Blues"
  composer = "Sidney Bechet"
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
      | s2. r4 | s1 | s1 | s1 | s1 
      | des1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | aes1 | s1 | c1:7 | f1:min7 | bes1:7 | s1 | es1:7 | aes1:7 
      | des1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | aes1 | f1:7 | bes1:min7 | s1 | bes1:min5-7 | es1:7 | aes1|
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


      \tempo 4 = 274
      \set Score.currentBarNumber = #-4
     
      \bar "||" \mark \default r2. r8. des''16~ 
      | des''8 bes'8 c''4 \tuplet 3/2 {des''4 d''8~} d''8 es''8~^\markup{\left-align \small vib} 
      | es''2~ es''8 c''8 es''8 c''8 
      | bes'8 aes'8 f'8 aes'8~^\markup{\left-align \small vib} aes'2 
      | \tuplet 3/2 {f'4 aes'8~^\markup{\left-align \small vib}} aes'4. r8 r4 
      \bar "||" \mark \default r8 aes'8~ aes'16 f'16 aes'16 f'16~ f'16 des'8 aes'16~ aes'16 f'16 aes'16 f'16 
      | des'8 aes'8~ aes'16 f'16 aes'16 f'16 des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} 
      | des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} 
      | des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} 
      | c'8 aes'8~ aes'16 f'16 aes'16 f'16 d'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8~} 
      | f'16 c'8 aes'16~ aes'16 f'16 aes'16 f'16~ f'16 d'8 aes'16~ aes'16 f'16 aes'16 f'16 
      | des'8 aes'8 f'16 aes'16 f'8 d'8 aes'8 f'16 aes'16 f'8 
      | c'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} d'8 r8 r4 
      | es'8 f'8 es'8 f'8~ f'16 c'8 es'16 f'8 aes'8 
      | c''8 es''8 f''8 aes''8 f''8 es''8 c''8 aes'8 
      | c''2~ c''8\bendAfter #+4  g''4.~^\markup{\left-align \small vib} 
      | g''2~ g''8. f''16~ f''8 g''8 
      | aes''4 e''8 g''4 e''4 fis''8~ 
      | fis''8\glissando  g''8~^\markup{\left-align \small vib} g''2~ g''8 bes'8 
      | e''8 f''8 des''8 bes'8 g'8 f'8 des'8 es'8 
      | f'4.^\markup{\left-align \small vib} g'8 r2 
      \bar "||" r8 aes'8 f'8 aes'16 f'16 des'8 aes'8~ aes'16 f'16 aes'16 f'16 
      | des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} 
      | des'8 aes'8 f'16 aes'16 f'8 des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} 
      | des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} des'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} 
      | c'8 aes'8 f'16 aes'16 f'8 d'8 aes'8 f'16 aes'16 f'8 
      | c'8 aes'8 f'16 aes'16 f'8 d'8 aes'8 f'16 aes'16 f'8 
      | c'8 aes'8 \tuplet 3/2 {f'8 aes'8 f'8} d'8 aes'8 f'16 aes'16 f'8 
      | c'8 aes'8 f'16 aes'16 f'16 d'16 r4 r8. es''16~^\markup{\left-align \small vib} 
      | es''4. c''8 es''8 c''4 f''8~^\markup{\left-align \small vib} 
      | f''4~ \tuplet 3/2 {f''8 es''8 f''8} es''8 c''4 des''8~ 
      | des''8 des''4 des''8 c''8 des''4 bes'8~^\markup{\left-align \small vib} 
      | bes'2 r4 r8. des''16~ 
      | des''4 c''8. des''16~ des''8 d''4 es''8~^\markup{\left-align \small vib} 
      | es''2.. c''8 
      | bes'8 aes'8 f'4 aes'4^\markup{\left-align \small vib} f'8. aes'16~ 
      | aes'8 f'4 aes'8~^\markup{\left-align \small vib} aes'4. r8\bar  ".."
    }
    >>
>>    
}
