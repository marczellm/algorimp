\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Once in a While"
  composer = "Louis Armstrong"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \major
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
      
      | c1 | c1 | e1:7 | s1 | a1:min | s1 | c1:7 | s1 
      | f1 | f1:min | c1 | a1:7 | d1:7 | s1 | g1:7 | s1 
      | c1 | s1 | e1:7 | s1 | a1:min | s1 | c1:7 | s1 
      | f1 | f1:min | c1 | a1:7 | d1:7 | g1:7 | c1|
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


      \tempo 4 = 198
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {e''4 g''8~} g''8. c''16 e''8. g'16 
      | \tuplet 3/2 {c''4 e'8} g'8 c''8 e''4 e''8 r8 
      | \tuplet 6/4 {r4 g''16 gis''16~^\markup{\left-align \small vib}} gis''4 fis''8 d''8 b'8 g'16\bendAfter #+4  gis'16~ 
      | gis'8 e'8 d'8 c'8 b2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {e''4 a''8~} a''8 e''8 a''4..^\markup{\left-align \small vib} e''16 
      | a''8 e''8 a''4 a''4 a''4 
      | a''8. aes''16~ aes''16 g''8 gis'16 a'8 aes'8 \tuplet 3/2 {g'4 a''8~} 
      | a''8 aes''8 g''4 g''8 aes''8 e''4~ 
      | e''16 f''8 dis''16 e''4 d''8 c''8 a'4 
      | d''8 c''8 \tuplet 5/4 {aes'8. es'16\bendAfter #+4  f'16~} f'8 e'8 dis'8 e'8 
      | g'8 c'8 e'8 g'8 \tuplet 3/2 {c''4\glissando  b'8} \tuplet 3/2 {d''4 c''8} 
      | e''4 e''4 e''4^\markup{\left-align \small vib} r4 
      | fis'8 e''8~ e''8. c''16 e''8 d''8 c''8. a'16 
      | c''4 c''4 c''8^\markup{\left-align \small vib} r8 r4 
      | f''8 cis''16 e''16~ \tuplet 6/4 {e''16 d''8 gis'16 bes'16 c''16} \tuplet 6/4 {c''8. c''16 cis''16 d''16} \tuplet 3/2 {cis''8 bes'8 ges'8} 
      | f'8 f'8~ \tuplet 3/2 {f'8 e'8 a'8~} a'8 a'16 a'16~ a'8 a'8 
      \bar "||" g'8. fis'16 g'8. fis'32 g'32~^\markup{\left-align \small vib} g'8 r8 r4 
      | r8 g''4 e''8 g''4 \tuplet 3/2 {f''4 gis''8~} 
      | gis''8 gis''8 e''4 d''4.^\markup{\left-align \small vib} b'8 
      | gis'8 e'8 d'4 d'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {e''4 a''8~} a''8 e''8 a''4.^\markup{\left-align \small vib} e''8 
      | a''8 dis''8 \tuplet 3/2 {e''4 d''8~} d''8 c''8 cis''8 d''8~ 
      | d''8 a'8 bes'8 ges'8 a'8 g'8~ \tuplet 3/2 {g'8 d'8 dis'8} 
      | e'8 r8 r8. c''16\glissando  e''4.^\markup{\left-align \small vib} des''8 
      | c''8 c''8 a'4 a'4 b'16 c''8. 
      | g'4. aes'8 e''4.^\markup{\left-align \small vib} des''8 
      | \tuplet 3/2 {b'8 cis''8 b'8~} b'8 c''4 c''8 g'4 
      | e'8 r8 r8 d''4 d''4 c''8 
      | d''8 c''8 d''4 d''4 b'4 
      | c''4..^\markup{\left-align \small vib} d''16~ d''8. d''16~ d''8. c''16~ 
      | c''16 d''8 c''16 a'4 d''8. c''16 \tuplet 3/2 {a'4 c''8~} 
      | c''8 c''8 dis''4 e''8 d''4 c''8 
      | e''8 c''8 a'8. d''16~ d''8 c''8 e''4 
      | c''8. c''16~^\markup{\left-align \small vib} c''4 a'8 g'8 r4\bar  ".."
    }
    >>
>>    
}
