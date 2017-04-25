\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Savoy Blues"
  composer = "Louis Armstrong"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \major
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
      | g1 | c2 cis2:dim | g1:/d | g1:7 | c1 | s1 | g1 | s1 
      | d1:7 | s1 | g2 c2:7 | g2 d2:7 | g1 | c2 cis2:dim | g1:/d | g1:7 
      | c1 | s1 | g1 | s1 | d1:7 | s1 | g2 c2:7 | g2 d2:7|
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


      \tempo 4 = 129
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 6/4 {r16 d''4 d''16~} 
      \bar "||" \mark \default d''8 ais'16 b'16~ b'16 g'8 d'16~^\markup{\left-align \small vib} d'8 r8 r4 
      | r8 c''8 e''8 e'8 g'8 b'8~ b'16 b'8 g'16 
      | \tuplet 3/2 {a'8 g'4~^\markup{\left-align \small vib}} g'8 f'8 \tuplet 3/2 {d'8 b8 a8~^\markup{\left-align \small vib}} a4 
      | r2. \tuplet 3/2 {a'8 ais'8 b'8~} 
      | b'16 e''8 d''16 c''8 dis'8 \tuplet 3/2 {e'8 b'8 a'8} \tuplet 3/2 {g'8 e'8 c'8} 
      | a4^\markup{\left-align \small vib} r4 \tuplet 6/4 {cis'16\bendAfter #+4  d'4 cis'16\bendAfter #+4 } d'8 fis16\bendAfter #+4  g16 
      | b8 d'8 b16 d'8.^\markup{\left-align \small vib} r2 
      | \tuplet 3/2 {r8 c''8\bendAfter #+4  d''8~} \tuplet 3/2 {d''8 b'8 a'8~^\markup{\left-align \small vib}} a'8. g'16~ \tuplet 3/2 {g'8 fis'8 e'8} 
      | \tuplet 3/2 {fis'8\bendAfter #+4  g'8 e'8} \tuplet 3/2 {g'8 e'4~^\markup{\left-align \small vib}} e'8 r8 r4 
      | r16 c''16 gis'16 e''16~ e''16 e'8 g'16 \tuplet 3/2 {b'4 b'8~} b'8 g'8~ 
      | g'16 d'16 cis'16 d'16 e'8 g'8 \tuplet 3/2 {d''4 c''8} e'8. b'16 
      | b'4 r2 d''8 e''8~ 
      \bar "||" \mark \default \tuplet 3/2 {e''8 g''8 e''8} g''8 e''16 d''16~ \tuplet 3/2 {d''8 b'8 d''8} \tuplet 3/2 {b'8 a'8 g'8} 
      | e'8 g'16 e'16~ \tuplet 6/4 {e'8 a'8. g'16~} \tuplet 3/2 {g'8 e'8 a'8~} \tuplet 3/2 {a'8 g'8 e'8~} 
      | \tuplet 6/4 {e'16 g'4 g'16~^\markup{\left-align \small vib}} g'4 e'8 d'8 r4 
      | r8 a''8~^\markup{\left-align \small vib} a''2~ a''8 g''8~ 
      | g''16 a''8 g''16 a''8 g''8 e''8 d''16 c''16~ \tuplet 3/2 {c''8 dis'8 e'8} 
      | g'8 b'8 \tuplet 3/2 {a'8 g'8 e'8} c'8 a8 d'4 
      | \tuplet 3/2 {d'8 g8 b8~^\markup{\left-align \small vib}} b8 r8 r4 r8.. g''32\glissando  
      | a''8 aes''16 g''16~ g''16 a'8 aes'16 g'8 b'16 d''16~ \tuplet 5/4 {d''16 fis''8 dis''16\bendAfter #+4  e''16~} 
      | e''16 fis''16\bendAfter #+4  g''8 e''8 c''8 d'16\bendAfter #+4  dis'16 e'16 g'16\bendAfter #+4  \tuplet 3/2 {gis'8 b'8 cis''8\bendAfter #+4 } 
      | \tuplet 3/2 {d''8 b'8 d''8} b'2^\markup{\left-align \small vib} r4 
      | g'8 f'8 g'8 fis'16 dis'16 e'8 d''8 c''8 g'8 
      | b'4..^\markup{\left-align \small vib} d'16 g'8 r8 r4\bar  ".."
    }
    >>
>>    
}
