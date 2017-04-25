\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "After Theatre Jump"
  composer = "Buck Clayton"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key des \major
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
      | s4 r2. | s1 
      | des2 bes2:7 | es2:min7 aes2:7 | des2 bes2:min7 | es2:min7 aes2:7 | des2 des2:7 | ges2:7 ges2:min | des2 bes2:min7 | es2:min7 aes2:7 
      | des2 bes2:7 | es2:min7 aes2:7 | des2 bes2:min7 | es2:min7 aes2:7 | des2 des2:7 | ges2 ges2:min | des2 bes2:min7 | es2:min7 aes2:7 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | es1:7 | aes1:7 
      | des2 bes2:7 | es2:min7 aes2:7 | des2 bes2:min7 | es2:min7 aes2:7 | des2 des2:7 | ges2 ges2:min | des2 bes2:min7 | es2:min7 aes2:7|
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


      \tempo 4 = 176
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2. r8. aes'16~ 
      | aes'8 aes'4 aes'4 aes'8~ aes'8. aes'16~ 
      \bar "||" \mark \default aes'4 e'4 f'4. bes'8 
      | aes'4 \tuplet 3/2 {e'4 f'8~^\markup{\left-align \small vib}} f'4. bes'8 
      | aes'4 e'4 f'4.^\markup{\left-align \small vib} bes'8 
      | des''4 \tuplet 3/2 {bes'4 aes'8~^\markup{\left-align \small vib}} aes'4 r4 
      | r2 aes'8 bes'8 des''8 es''8 
      | e''8 f''8 bes'4 des''8 bes'16 a'16~ a'8 aes'8~^\markup{\left-align \small vib} 
      | aes'4 e'4 f'8 bes8 \tuplet 3/2 {des'4 f'8} 
      | \tuplet 3/2 {aes'4 bes'8~^\markup{\left-align \small vib}} bes'8 r8 r2 
      \bar "||" r8 f'8 aes'4 b'8 des''8 b'8 des''8 
      | b'4 bes'2^\markup{\left-align \small vib} r4 
      | r8 f'8 aes'4 b'8 des''8 b'8 des''8 
      | bes'8\glissando  b'8 bes'8. aes'16~^\markup{\left-align \small vib} aes'4 r4 
      | r8 f'8 aes'4 des''4.^\markup{\left-align \small vib} b'8 
      | \tuplet 3/2 {bes'4 aes'8} e'4 \tuplet 3/2 {f'4 aes'8} bes'8 b'16 bes'16 
      | \tuplet 3/2 {aes'4 des'8~} des'4 \tuplet 3/2 {e'8\glissando  f'8 aes'8~} aes'4 
      | \tuplet 3/2 {bes'4 des''8~} des''8 des''4^\markup{\left-align \small vib} r8 r4 
      \bar "||" b'8\glissando  c''8~ \tuplet 6/4 {c''4~ c''16 c''16~} c''8 aes'4 c''8 
      | \tuplet 3/2 {d''4 c''8} bes'8. aes'16~ aes'8 g'4. 
      | aes'8 a'8 aes'8 a'8 \tuplet 3/2 {g'4 c'8} es'8 g'8~ 
      | g'16 c''8 c''16~ c''8 c''4.^\markup{\left-align \small vib} r4 
      | r2 e''8\glissando  f''4 bes'8 
      | c''8 d''8 g''16 f''8 c''16~ c''8 bes'4^\markup{\left-align \small vib} r8 
      | r4 \tuplet 3/2 {bes'4 c''8} \tuplet 3/2 {es''4 c''8} es''8 es''8 
      | aes''4 aes'8 bes'4.^\markup{\left-align \small vib} r4 
      \bar "||" r8 aes''2..~ 
      | aes''2\glissando  bes'8. e'16 f'8. c''16\glissando  
      | des''8 es''8 e''8 f''8 des''8 bes'8 a'8 aes'8~^\markup{\left-align \small vib} 
      | aes'4 e'4 \tuplet 3/2 {f'4 aes'8} f'8 es'8 
      | des'8. aes16~ aes8 e'8 f'8 aes'8 bes'8 des''8 
      | \tuplet 3/2 {e''4 e''8~} e''8 e''4. es''4 
      | des''8 bes'8 des''8 des''8 \tuplet 3/2 {des''4 bes'8} e'4 
      | f'8 aes'8 des''8 e''16 des''16~ des''8 aes'8 r4\bar  ".."
    }
    >>
>>    
}
