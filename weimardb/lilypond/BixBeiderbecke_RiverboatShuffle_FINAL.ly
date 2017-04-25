\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Riverboat Shuffle"
  composer = "Bix Beiderbecke"
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
      | r1 | s1 
      | aes1 | aes2. a4:dim | es1:7 | s1 | aes1 | s2. a4:dim | es1:7 | s1 
      | aes1 | aes1:7 | des1 | des2:7 c4:7 b4:7 | bes1:7 | s1 | es4:7 r2. | s1 
      | aes1 | s2. a4:dim | es1:7 | s1 | aes1:7 | s1 | des1 | s1 
      | des1:min | s1 | aes1 | f2:7 s2 | bes1:7 | es1:7 | aes1|
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


      \tempo 4 = 211
      \set Score.currentBarNumber = #-1
     
      | \tuplet 3/2 {es''4 aes''8~} aes''8 c''8 es''8 aes'8 c''4 
      | es'4 e'4 f'4^\markup{\left-align \small vib} r4 
      \bar "||" \mark \default r8. es''16~ es''4 f''8 c''8 es''4 
      | c''8 aes'8 g'8 bes'4 aes'8 g'8 f'8 
      | bes'8. ges'16~ ges'8. f'16~ f'8 es'16 c'16~ c'4 
      | es'8 f'8 es'4 es'4.^\markup{\left-align \small vib} r8 
      | r4 \tuplet 3/2 {es''4 f''8} aes''8 es''8 f''8 c''8~ 
      | c''8 es''8 c''8 aes'8 g'8 bes'8 aes'4 
      | bes'8. bes'16~ bes'4 ges'8 es'8~ es'8. f'16~^\markup{\left-align \small vib} 
      | f'4 r4 r8 a'8\glissando  b'8. bes'16~^\markup{\left-align \small vib} 
      | bes'4 r4 bes'4..^\markup{\left-align \small vib} bes'16~ 
      | bes'8 des''4 bes'16 des''16~ des''8 bes'16 e''16\glissando  f''8 r8 
      | r4 bes'8. bes'16~ bes'8 aes'8 f'4 
      | bes'8. bes'16~ bes'8 bes'8 aes'8 g'8 f'4 
      | aes'4 \tuplet 3/2 {d'8 aes'8 bes'8} d''4 \tuplet 3/2 {bes8 d'8 f'8} 
      | bes'4 bes'4 bes'4^\markup{\left-align \small vib} r4 
      | r4 bes'8 r8 \tuplet 6/4 {r4 r16 b'16~} b'4 
      | bes'4 bes'4 bes'4^\markup{\left-align \small vib} aes'8 r8 
      \bar "||" r4 es'8 f'8 aes'8 c''8 \tuplet 3/2 {es''4 c''8} 
      | aes'4 bes'8. aes'16~ aes'8 bes'8 g'4 
      | aes'8 bes'8 \tuplet 3/2 {g'4 aes'8~} aes'8 f'4 es'8 
      | f'4^\markup{\left-align \small vib} r4 \tuplet 3/2 {r8 aes8 c'8} es'4 
      | aes'8 bes'8 aes'4 bes'2^\markup{\left-align \small vib} 
      | des''8 b'8 \tuplet 3/2 {bes'4 aes'8~} aes'8 bes'8 e'4 
      | des'4.^\markup{\left-align \small vib} aes8 des'8 f'8 \tuplet 6/4 {aes'4 f'16 aes'16~^\markup{\left-align \small vib}} 
      | aes'4 r2 \tuplet 3/2 {aes'8 bes'8 aes'8} 
      | des''4 aes'16 bes'16 aes'16 b'16~ b'8. aes'16~ aes'8 bes'8~ 
      | bes'8 aes'8 f'8 aes'4 bes8 des'8 f'8~ 
      | f'8 f'8~^\markup{\left-align \small vib} f'8. f'16~^\markup{\left-align \small vib} f'4 r4 
      | \tuplet 3/2 {c''4 f''8~} f''8 es''8 des''8 c''8 bes'8 aes'8 
      | c''4 c''4 bes8 d'16 f'16~ f'8 aes'8 
      | \tuplet 3/2 {g'4 des''8~} des''8 bes'16 g'16~ g'8 es'8 c''8 aes'8 
      | g'4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
