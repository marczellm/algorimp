\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Big Butter and Egg Man"
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
      | g1 | g1 | a1:7 | s1 | d1:7 | s1 | g1 | s2. d4:7 
      | g1 | g1:dim | a1:min | d1:7 | s1 | s1 | g1 | s1 
      | g1:7 | s1 | c1 | s1 | e1:7 | s1 | a1:7 | d1:7 
      | g1 | s1 | a1:7 | s1 | a1:min7 | d1:7 | g1 | s1 
      | s1|
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


      \tempo 4 = 197
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8. cis'16 d'8 e'8~ \tuplet 3/2 {e'8 g'8 b'8~} 
      \bar "||" \mark \default b'8. b'16~ b'8. b'16~^\markup{\left-align \small vib} b'4 r4 
      | r2 d'8 e'8 \tuplet 3/2 {g'4 b'8~} 
      | b'8 b'8~ b'8. b'16 r2 
      | r2 dis'8. e'16~ e'8 g'8 
      | \tuplet 3/2 {b'4 b'8~} b'8 b'4^\markup{\left-align \small vib} r8 r4 
      | r8 b'16 g''16~^\markup{\left-align \small vib} g''4 \tuplet 3/2 {d''4 b'8~} b'8 fis'8 
      | a'8 g'8 g'4 g'4^\markup{\left-align \small vib} \tuplet 3/2 {d'4 b8} 
      | r2 \tuplet 3/2 {f'8\glissando  fis'8 g'8} b'8 d''8 
      \bar "||" \tuplet 3/2 {fis''4 e''8~^\markup{\left-align \small vib}} e''4 \tuplet 3/2 {d''8 des''8 c''8} \tuplet 6/4 {b'4 fis'16 a'16~^\markup{\left-align \small vib}} 
      | a'4. g'16 fis'16~ fis'8. e'16~ \tuplet 6/4 {e'4 fis'16\glissando  g'16~} 
      | g'8 g'8~ \tuplet 3/2 {g'8 e'8 c'8~} c'8 a16 c'16~ c'8 a8~^\markup{\left-align \small vib} 
      | a4 r4 r8. f'16~ f'8 fis'8 
      | b'8^\markup{\left-align \small vib} b'8~ b'2 a'8 gis'8 
      | b'8 d''8 b'4 \tuplet 3/2 {ais'4 b'8~} b'8 fis'8 
      | a'8 g'4.^\markup{\left-align \small vib} \tuplet 3/2 {e'4 ais8} b8 d'8 
      | r4 r8. a'16 \tuplet 3/2 {d''8 d''8 d''8} \tuplet 3/2 {d''8 d''8 d''8} 
      \bar "||" d''8 d''4 d''8 d''8. d''16~ d''8 d''8 
      | d''8 e''8~ \tuplet 3/2 {e''8 g''8 cis''8~} cis''8. a'16 ais'8 b'8 
      | d''8 c''8~^\markup{\left-align \small vib} \tuplet 6/4 {c''4~ c''16 fis'16} g'8 dis'16 e'16~ e'8 cis'16 d'16 
      | r4 r8. d''16~ d''8 d''4 d''8 
      | d''8 d''4 d''8 cis''8. cis''16~ cis''8 des''8~ 
      | des''16 c''8 c''16~ c''8 c''8~ \tuplet 6/4 {c''16 gis'4 gis'16~} gis'8 b'8~ 
      | b'8 b'4.^\markup{\left-align \small vib} b'8 r8 r4 
      | \tuplet 3/2 {b'4 a'8} fis''8. c''16\glissando  \tuplet 3/2 {b'4 a'8} \tuplet 3/2 {d''4 ais'8} 
      \bar "||" b'4 fis'8 a'8 \tuplet 6/4 {g'4 b16 cis'16} e'8 d'8~^\markup{\left-align \small vib} 
      | d'8 r8 r4 \tuplet 3/2 {b'4 c''8~} c''8 b'8 
      | e''8 g'8 e'8 e'8 b'4.\bendAfter #-4  g'16 e'16 
      | g'4^\markup{\left-align \small vib} r4 r8 a'4 b'8 
      | c''8 c''8 b'8. c''16~ \tuplet 3/2 {c''8 cis''8 a'8~} a'8 cis''8 
      | d''4 \tuplet 3/2 {c''8 cis''8 d''8~} d''8 d''8 b'8 r8 
      | r4 \tuplet 6/4 {b'8. b'8 d''16~} d''8 d''8 des''4 
      | \tuplet 6/4 {c''8. e''8 a'16} e'8 g'8 b'8. ais'16~ ais'8. b'16~ 
      \bar "||" b'8. d''16~ d''8 r8 r2\bar  ".."
    }
    >>
>>    
}
