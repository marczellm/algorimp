\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Baby Won't You Please Come Home"
  composer = "Sidney Bechet"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | bes1 
      | bes2 d2:7 | g1:7 | c1:7 | s1 | f2:7 fis2:dim | g1:min | c1:7 | f1:7 
      | bes2 d2:7 | g1:7 | c2:min es2 | d1:7 | es2 e2:dim | bes2 g2:7 | c2:7 f2:7 | bes2 g2:7 
      | c2:7 f2:7 | bes1|
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


      \tempo 4 = 207
      \set Score.currentBarNumber = #0
     
      | r2 r8 f'8 g'8 bes'8 
      \bar "||" \mark \default cis''16\glissando  d''8 d''16 d''4~ d''16 d''8 cis''16\glissando  \tuplet 3/2 {d''4 d''8} 
      | \tuplet 3/2 {d''4 d''8~} d''8 d''8~^\markup{\left-align \small vib} d''2 
      | g'8 a'8 bes'8 c''8 d''8 g''16 d''16~ d''8 bes'8 
      | \tuplet 3/2 {a'4 g'8~} g'8 a'4 g'4^\markup{\left-align \small vib} r8 
      | r4 gis'8 a'8 \tuplet 6/4 {d''8. des''8 c''16~} c''8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r4 \tuplet 3/2 {cis''8\glissando  d''4} des''4 
      | c''8 d''8 c''8 g'8 c''8 d''8 c''8 c''8~^\markup{\left-align \small vib} 
      | c''4 r4 r8 cis''8~ \tuplet 3/2 {cis''8 d''8 f''8} 
      \bar "||" d''4 d''4 d''4 \tuplet 3/2 {d''4 d''8~^\markup{\left-align \small vib}} 
      | d''4 a'8 g'4^\markup{\left-align \small vib} r8 r4 
      | c''8 g'8 c''4 des''8 c''8 cis''8 d''8~^\markup{\left-align \small vib} 
      | d''4. r8 r8 cis''8~ cis''16 d''8 bes'16 
      | c''8 bes'8 c''8 des''8 \tuplet 3/2 {c''4 bes'8~} bes'8 a'8 
      | \tuplet 3/2 {bes'4 g'8} cis'8 d'8 a'8 g'8 r4 
      | g'8 a'8 bes'8 c''8 d''8 es''8 \tuplet 3/2 {e''4 e''8\glissando } 
      | f''4.^\markup{\left-align \small vib} e''8 es''8 d''4 g''8~ 
      | g''8 c''16\glissando  des''16~ des''8 bes'8 c''8 bes'8 g'8 f'8 
      | bes'2^\markup{\left-align \small vib} g'8 f'4 f'8\bar  ".."
    }
    >>
>>    
}
