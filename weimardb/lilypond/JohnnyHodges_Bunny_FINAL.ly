\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bunny"
  composer = "Johnny Hodges"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      
      | a2:min7 d2:7 | g2 e2:7 | a2:min7 d2:7 | d2:min7 g2:7 | c2 f2:7 | bes2 bes4:min7 es4:7 | a2:min7 d2:7 | g2 c2 
      | a2:min7 d2:7 | g2 e2:7 | a2:min7 d2:7 | d2:min7 g2:7 | c2:maj f2:7 | bes2 bes4:min7 es4:7 | a2:min7 d2:7 | g2 c2 
      | d2:min7 g2:7 | c2:maj a2:7 | d2:min7 g2:7 | c1:maj | c2:min7 f2:7 | bes1 | a2:min7 d2:7 | b2:min7 e2:7 
      | a2:min7 d2:7 | g2 e2:7 | a2:min d2:7 | d2:min7 g2:7 | c2 f2:7 | bes2 bes4:min7 es4:7 | a2:min7 d2:7 | g2 c2 
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


      \tempo 4 = 114
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 g8 d'8\glissando  e'8 \tuplet 3/2 {g4 a8} \tuplet 3/2 {c'4 d'8\glissando } 
      | es'8 d'4^\markup{\left-align \small vib} r8 r2 
      | r4 gis'8\glissando  a'8 gis'8\glissando  a'8 gis'8\glissando  a'8 
      | a'8 es'8 c'8 d'4.^\markup{\left-align \small vib} \tuplet 3/2 {c'4 a8} 
      | \tuplet 3/2 {d'8\glissando  e'8 c'8} d'4^\markup{\left-align \small vib} r4 \tuplet 6/4 {c''8. a'16 f'16 d'16\glissando } 
      | es'8 c'4^\markup{\left-align \small vib} r8 r4 \tuplet 6/4 {r16 c''8. g'16 f'16} 
      | \tuplet 3/2 {dis'8\glissando  e'8 c'8} \tuplet 3/2 {g4 g8} a8 c'8 \tuplet 3/2 {c'8 d'8 a8} 
      | c'8^\markup{\left-align \small vib} r8 r2 gis'16\glissando  a'8.\glissando  
      \bar "||" bes'4 \tuplet 3/2 {a'4 e'8} g'8 g'8 a'4 
      | d'16\glissando  dis'8 c'16 d'4^\markup{\left-align \small vib} r4 r8 g'8 
      | \tuplet 5/4 {a'16\glissando  ais'16 c''16 ais'16 g'16} a'4.^\markup{\left-align \small vib} g'8 \tuplet 3/2 {c''8 a'8 dis'8} 
      | \tuplet 3/2 {c'8 d'8 c'8} d'4^\markup{\left-align \small vib} r4 g8 a8 
      | \tuplet 3/2 {c'4 d'8\glissando } dis'8 r8 r4 g8 a8 
      | c'8 a'8 es'8 r8 r4 c'8 d'8\glissando  
      | e'4 g'8. e'16 g'4^\markup{\left-align \small vib} \tuplet 3/2 {a'4 c'8~^\markup{\left-align \small vib}} 
      | c'8 r8 r2 g'8\glissando  gis'8 
      \bar "||" \tuplet 3/2 {gis'8\glissando  a'8 c''8} \tuplet 3/2 {c'4 cis'8} d'4^\markup{\left-align \small vib} gis'8\glissando  a'8 
      | gis'8\glissando  a'8 c''8 a'16 g'16 gis'4~^\markup{\left-align \small vib} \tuplet 5/4 {gis'16 ais'16 c''16 ais'16 gis'16} 
      | a'4^\markup{\left-align \small vib} d'4^\markup{\left-align \small vib} r4 g'16\glissando  a'16 d''16 a'16 
      | gis'16 d''16 cis''16 aes'16 g'4^\markup{\left-align \small vib} r4 \tuplet 3/2 {c'4 c'8} 
      | \tuplet 3/2 {g'8\glissando  a'4} es'4^\markup{\left-align \small vib} r2 
      | r8. f'16 \tuplet 6/4 {g'16\glissando  aes'16 c''16 a'16 f'8} g'16\glissando  aes'8 f'16 \tuplet 3/2 {d'4 c'8} 
      | gis'8\glissando  a'8~^\markup{\left-align \small vib} a'4~ \tuplet 3/2 {a'8 a'8 ais'8} \tuplet 3/2 {c''8 a'8 f'8} 
      | c'4^\markup{\left-align \small vib} \tuplet 3/2 {c'4 cis'8} \tuplet 3/2 {d'4 a'8} c'4 
      \bar "||" \tuplet 6/4 {d'16 fis'16\glissando  g'4} \tuplet 3/2 {d'8\glissando  e'8 g'8} r2 
      | r4 r8 c''8 b'8 b'8 \tuplet 3/2 {a'4 d'8~} 
      | d'8\glissando  e'8 g'4 g'4 g'4 
      | \tuplet 7/8 {a'8~ a'32 d'32\glissando  es'32} r2 \tuplet 3/2 {g8 a8 c'8} 
      | d'16\glissando  dis'16 c'16 d'16~^\markup{\left-align \small vib} d'8 r8 r8. c'16 \tuplet 3/2 {es'8 c'8 d'8} 
      | \tuplet 3/2 {c'8 d'8 c'8} \tuplet 3/2 {es'8 c'8 d'8} c'8 c''4.^\markup{\left-align \small vib} 
      | g'8\glissando  a'8 d'8\glissando  dis'8 \tuplet 6/4 {c'4 d'16 g16~} g8 a8 
      | c'4^\markup{\left-align \small vib} \tuplet 3/2 {d'8\glissando  es'8 d'8~} d'8\glissando  dis'8 \tuplet 3/2 {g4 a8} 
      \bar "||" c'4 r2.\bar  ".."
    }
    >>
>>    
}
