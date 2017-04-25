\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Walking Shoes"
  composer = "Gerry Mulligan"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | a2:min7 d2:7 | g1 | a2:min7 d2:7 
      | g1 | c1:7 | g1 | f2:7 e2:min7 | a1:min7 | cis2:min7 fis2:7 | g2 g2:dim | a2:min7 d2:7 
      | g1 | c1:7 | g1 | f2:7 e2:min7 | a1:min7 | cis2:min7 fis2:7 | g2 g2:dim | a2:min7 d2:7 
      | fis1:min7 | b1:7 | e1:min | fis2:min7 b2:7 | e1:min | a1:7 | a1:min7 | d1:7 
      | g1 | c1:7 | g1 | f2:7 e2:7 | es2:7 d2:7 | a2:min7 d2:7 | g1 | a2:min7 d2:7 
      | g1|
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


      \tempo 4 = 137
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r2. \tuplet 3/2 {g4 d8} 
      | b,8 gis,8 b,4^\markup{\left-align \small vib} \tuplet 3/2 {e4 e8} d8 ais,8 
      | c4 \tuplet 3/2 {g4 a8} ais8 b8 \tuplet 3/2 {c'4 cis'8~} 
      \bar "||" \mark \default cis'16 d'8 g'16 e'8 es'8~ es'16 d'8 g16 a8. ais16~^\markup{\left-align \small vib} 
      | ais4 r4 r8 d'8 e'8. es'16~ 
      | es'16 d'8 g16 \tuplet 3/2 {a4 c'8~} \tuplet 6/4 {c'16 b4 d16~} d16 e8 f16~ 
      | f4 f8 e4 bes8~ bes16 a8 g16 
      | cis'4\glissando  des'16 c'8 ais16~ ais8 r8 r8. g16 
      | ais4.^\markup{\left-align \small vib} g8 d8. d16~ d16 c8 a,16~ 
      | a,16 b,8 d16~ \tuplet 6/4 {d16 e4 d16} \tuplet 3/2 {g4 a8} \tuplet 3/2 {b4 d'8~^\markup{\left-align \small vib}} 
      | d'4. r8 r8 d'8 e'4 
      \bar "||" g'8 r8 r4 d'4..^\markup{\left-align \small vib} b16~ 
      | b16 c'8 d'16~ d'16 e'8 a16~ a8. b16 c'4^\markup{\left-align \small vib} 
      | b8 c'8 d'4 g8 a8 b8 r8 
      | r4 des8 es8 f8 gis16 c'16 dis'8 cis'8 
      | d'8 des'8 c'4 b8.\glissando  a16~^\markup{\left-align \small vib} a4~ 
      | a16 g8 f16~ \tuplet 5/4 {f8 gis16 a16 c'16} \tuplet 3/2 {f'4\glissando  es'8~} es'16 d'8 c'16~ 
      | \tuplet 6/4 {c'16 b4 d'16} dis'16 g'8. r2 
      | r2 g'8 gis'8~ gis'16 e'8 cis'16 
      \bar "||" a4^\markup{\left-align \small vib} gis4 fis8. gis16 a8 b8 
      | cis'4~^\markup{\left-align \small vib} cis'16 e'8 cis'16~ cis'16 dis'8 e'16~ e'8 fis'8 
      | g'8. fis'16~ fis'16 e'8 b16~ b16 a8 b16~^\markup{\left-align \small vib} b4 
      | e8 r8 r4 r8 e8 g8 b8~ 
      | \tuplet 6/4 {b16 e'4 fis16} \tuplet 3/2 {a4 cis'8~} cis'16 e'8 b16 d'4~ 
      | d'16 cis'8 b16~ b16 a8 aes16~ aes16 g8 e16 cis4~ 
      | cis8 d8 r2. 
      | r8 d,8~ d,16 a,8 ais,16~ ais,16 d8 fis16~ fis16 a8 ais16~ 
      \bar "||" ais16 fis8 g16~ g16 a8 fis16 g4 d'4 
      | c'4^\markup{\left-align \small vib} e'4~ e'16 a8 ais16 \tuplet 3/2 {b8 c'8 ais8~} 
      | ais16 b8 c'16~ c'8 d'8~ d'16 g8 a16~ a16 b8 c'16~ 
      | \tuplet 3/2 {c'8 d'8 e'8} f'4\glissando  f'4~^\markup{\left-align \small vib} f'16 e'8 cis'16~ 
      | cis'8 d'4 des'8~ des'16 c'8 b16 a8 r8 
      | r4 r8 d'8 des'16 c'8 a16~ \tuplet 6/4 {a16 fis4 d16} 
      | \tuplet 3/2 {g4 a8} b8 a8 \tuplet 3/2 {g4 d'8~^\markup{\left-align \small vib}} d'8 r8 
      | r4 r8. d'16 des'16 c'8 b16 a8 g8 
      | b2.~ \tuplet 6/4 {b4\glissando  g16 f16} 
      | e2. r4\bar  ".."
    }
    >>
>>    
}
