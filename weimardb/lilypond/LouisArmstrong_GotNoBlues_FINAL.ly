\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Got No Blues"
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
      | r1 
      | f1 | c1 | f1 | c1 | f1 | s1 | c1 | bes1 
      | f1 | c1 | f1 | c1 | f1 | c1 | f1 | s1 
      | s1 | c1 | f1 | c1 | f1 | s1 | c1 | bes1 
      | f1 | c1 | f1 | c1 | f1 | c2 bes2 | f1 | s1 
      | r1|
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


      \tempo 4 = 143
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 6/4 {r8. g'8 a'16~} 
      \bar "||" \mark \default a'4 a'4 a'4^\markup{\left-align \small vib} r4 
      | r8 c''8 d''8 e''8 \tuplet 6/4 {d''8. c''8 g'16~} g'8 gis'8 
      | \tuplet 3/2 {a'8 c''8 a'8} \tuplet 3/2 {c''4 a'8~^\markup{\left-align \small vib}} a'4 r4 
      | r8 e''4.^\markup{\left-align \small vib} d''8 c''8 \tuplet 3/2 {g'4 gis'8} 
      | a'4^\markup{\left-align \small vib} \tuplet 3/2 {e'4 g'8} \tuplet 3/2 {e'8 a8 d'8~} d'8 des'8 
      | c'4^\markup{\left-align \small vib} r4 a'8 bes'8 a'8 e''8 
      | \tuplet 3/2 {d''8 b'8 g'8} \tuplet 3/2 {f'8 d'8 f'8} \tuplet 3/2 {d'8 b8 d'8} f'8 b'8 
      | bes'4^\markup{\left-align \small vib} d'8 dis'8 \tuplet 3/2 {e'8 c''4} r4 
      | a'8 a'4 f'8 c'8 a8 r4 
      | r8 c''8~ \tuplet 3/2 {c''8 b'8 c''8} cis''8 d''8 \tuplet 3/2 {dis''4 e''8} 
      | f''4 f''4 f''4^\markup{\left-align \small vib} r4 
      | r8 a''4.^\markup{\left-align \small vib} g''8 f''8 d''8 a'8 
      | c''4 c''8 c''4.^\markup{\left-align \small vib} r4 
      | r8 d''8 d''4 d''2^\markup{\left-align \small vib} 
      | c''8 f''8 f''8. c''16 \tuplet 3/2 {f''8 f''8 f''8} f''8 d''16 aes''16 
      | \tuplet 3/2 {g''8 f''8 d''8} c''8 b'8~ \tuplet 6/4 {b'16 bes'8. d''16 f''16~} f''8 bes'8 
      \bar "||" \mark \default a'8 c''8 f'4 a'4 d'4 
      | d'8 r8 r8. f''16 e''8 d''8 \tuplet 3/2 {c''4 cis''8} 
      | \tuplet 3/2 {d''8 gis'8 a'8} f'16 ges'8 d'16~ d'8 des'8 c'4 
      | b4 \tuplet 3/2 {f'4 dis'8} e'4.^\markup{\left-align \small vib} c''8 
      | d''8 gis'8 a'8.. f'32~ f'4. f''8~ 
      | f''8 f''4.^\markup{\left-align \small vib} d''8 a'8 \tuplet 3/2 {bes'4 a'8} 
      | b4~ b16 d'8 f'16 a'8 a'8 a'4^\markup{\left-align \small vib} 
      | r4 a16 c'8 e'16 a'8 a'8 a'4^\markup{\left-align \small vib} 
      | \tuplet 3/2 {f'4 f'8~} f'8. g'16 a'8 e''8 \tuplet 3/2 {d''4 d'8~^\markup{\left-align \small vib}} 
      | d'4 r4 \tuplet 3/2 {c''4 d''8~} d''8 c''8 
      | f''4 f''4 f''4 r4 
      | r8. a''16~ a''2~ a''8. g''16 
      | f''8 d''8 gis'8. a'16 e''4 \tuplet 3/2 {d''4 d'8~^\markup{\left-align \small vib}} 
      | d'4~ d'16 gis'8 a'16 c''8 a'8^\markup{\left-align \small vib} r4 
      | \tuplet 6/4 {r4 r16 g''16~} g''16\glissando  a''8 g''16~ g''8 f''8 d''4 
      | f''4^\markup{\left-align \small vib} cis''8 d''8 c''8 bes'8 g'4 
      | aes'16\glissando  bes'8. bes8 d'8 f'8. bes16 d'8 f'8 
      | bes'8 ges'16 bes'16~ bes'16 ges'16 bes'16 ges'16 bes'4.^\markup{\left-align \small vib} r8\bar  ".."
    }
    >>
>>    
}
