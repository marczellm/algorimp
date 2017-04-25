\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Jo-Jo"
  composer = "Dickie Wells"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key bes \major
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
      | s2 r2 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | s1 | s1 | s1 | s1 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7|
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


      \tempo 4 = 183
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 bes8 
      \bar "||" \mark \default cis'16\glissando  d'8 bes16~ bes8 bes4 des'8 bes8 des'8 
      | bes8 des'8 bes8. f'16~ \tuplet 6/4 {f'8. es'8 cis'16~} cis'8 d'8 
      | bes8 des'8 bes4^\markup{\left-align \small vib} \tuplet 3/2 {f'4 bes8} bes8 des'8 
      | \tuplet 6/4 {f'4~ f'16 f'16~} f'4 f'4~ f'16 c'8\glissando  des'16~ 
      | des'8\glissando  c'4 bes8~ bes16 c'16\glissando  des'16 bes16~ bes8 c'8\glissando  
      | des'8 bes4^\markup{\left-align \small vib} r8 r2 
      | r4 \tuplet 3/2 {e'8 f'4} g'8. a'16~ a'8 bes'8 
      | a'8 g'8 f'8 d'8 \tuplet 3/2 {des'4\glissando  c'8~} c'16 bes8 des'16~ 
      | des'8 c'8 \tuplet 3/2 {bes4 f'8~} f'8 bes8 des'8 c'8 
      | bes8. c'16~ c'8\glissando  des'8~ \tuplet 6/4 {des'16 bes4 c'16~} c'8\glissando  des'8 
      | bes8. f16~^\markup{\left-align \small vib} f2 r4 
      | r2. e'8\glissando  aes'8~ 
      \bar "||" \mark \default aes'4\glissando  g'4 f'8 r8 r8 g'8~ 
      | g'8\glissando  aes'8\glissando  \tuplet 3/2 {g'4 f'8~} f'8 aes'8 f'8 r8 
      | r2 \tuplet 3/2 {f'4 g'8\glissando } \tuplet 3/2 {aes'4 g'8} 
      | aes'8 bes'4.^\markup{\left-align \small vib} aes'4 g'4 
      | f'4 bes4 \tuplet 3/2 {cis'8\glissando  d'8 bes8~} bes8 f'8~ 
      | f'2 g'4 \tuplet 3/2 {f'4\glissando  e'8} 
      | es'4 bes4 \tuplet 6/4 {cis'8\glissando  d'8. bes16~} bes8 bes8~ 
      | bes4 r2. 
      | r8 f'8 \tuplet 3/2 {g'4 a'8} bes'4 c''4 
      | d''8.\glissando  des''16~ des''16 a'8 a'16 bes'8 r8 r4 
      | f'4 bes4 \tuplet 3/2 {des'4 bes8~} bes4 
      | cis'16 d'8.~ d'4\bendAfter #-4  \tuplet 3/2 {bes4 f8~} f8 f'8\bar  ".."
    }
    >>
>>    
}
