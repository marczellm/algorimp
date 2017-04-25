\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Ideal"
  composer = "Ben Webster"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | bes2.:maj r4 
      | bes2:maj g2:7 | c1:min7 | aes2:7 g2:7 | c1:7 | c2:min7 f2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | ges2:7 f2:7 
      | bes2:maj g2:7 | c1:min7 | aes2:7 g2:7 | c1:7 | c2:min7 des2:min7 | bes4:maj es4:maj g4:min7 c4:7 | ges2:7 f2:7 | bes1:6 
      | bes2:maj g2:7 | c1:min7 | aes2:7 g2:7 | c1:7 | c2:min7 f2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | ges2:7 f2:7 
      | bes2:maj g2:7 | c1:min7 | aes2:7 g2:7 | c1:7 | c2:min7 des2:min7 | bes4:maj es4:maj g4:min7 c4:7 | ges2:7 f2:7 | bes1:6|
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


      \tempo 4 = 74
      \set Score.currentBarNumber = #0
     
      | r2. r8 f'8 
      \bar "||" \mark \default \tuplet 6/4 {g'16 f'16 e'16 f'8 d'16} \tuplet 3/2 {bes8 g4^\markup{\left-align \small vib}} f16\glissando  b8 d'16 g'4^\markup{\left-align \small vib} 
      | r4 \tuplet 3/2 {r8 g8 bes8} \tuplet 5/4 {d'8 e'16\glissando  f'16 es'16} f'8 es'8 
      | f8 ges8~^\markup{\left-align \small vib} \tuplet 10/8 {ges8~ ges32 bes16 c'16 es'32~} es'16 d'16 f4^\markup{\left-align \small vib} r8 
      | r8. d16 es16 e8. \tuplet 5/4 {g16 a8 c'16 bes16~} bes8 r8 
      | r8 ges8\glissando  \tuplet 6/4 {gis16 a16 c'16 d'8 es'16~} es'32\glissando  f'8 d'16 c'32~ c'16 a16\glissando  g16 f16 
      | \tuplet 6/4 {g8\glissando  a8 g16 a16\glissando } \tuplet 5/4 {g16 a16\glissando  g16 a16 f'16} d'4^\markup{\left-align \small vib} r4 
      | r8 f16 d'16 \tuplet 3/2 {es'8 e'8 es'8} \tuplet 6/4 {d'8 g8 bes16 c'16} r4 
      | \tuplet 3/2 {r8 g8 bes8} b16 c'16 b16 bes16~ bes32 a16 f16 d16 e32~ \tuplet 6/4 {e16 des'16 a8 ges16 es16} 
      \bar "||" \tuplet 3/2 {d4 c'8} \tuplet 6/4 {bes16 a16 aes4} g8 d'8 \tuplet 3/2 {es'8 d'8 g8} 
      | d'8 es'8 g8^\markup{\left-align \small vib} r8 r4 \tuplet 11/8 {r8.. es16. f32} 
      | ges8 f'8 \tuplet 6/4 {e'16 f'16 e'16 ges8 f16~} f16 d'16\glissando  es'16 d'16 es'16 d'16 f16 d16 
      | es8 cis'16\glissando  d'16 bes16 c'16 d'16 g16 bes8^\markup{\left-align \small vib} r8 r4 
      | r8 bes16 c'16 d'16 f'16 es'16 f'16~ \tuplet 6/4 {f'16 es'16 f'16\glissando  fis'8 bes16~} \tuplet 5/4 {bes16 cis'16\glissando  d'16 cis'16\glissando  d'16} 
      | bes8 c'8~ \tuplet 12/8 {c'8. bes16. a32 bes32 a32} g16 f'16 d'16 bes16 g16 a16 g16 f16 
      | d8 d'8 bes8 g16 gis16 \tuplet 3/2 {a8 f'4^\markup{\left-align \small vib}} d'8 f16 g16 
      | bes8 r8 r4 r8 f16 bes16 c'16 bes16 des'16 bes16~ 
      \bar "||" \mark \default bes16 c'16\glissando  d'16 f'16 bes16 des'16 f8 g8^\markup{\left-align \small vib} r8 r4 
      | r8. cis'16 \tuplet 12/8 {d'8~ d'32 e'16.\glissando  f'16. d'32~} \tuplet 6/4 {d'16 f'8 es'8 e'16\glissando } f'8 es'8 
      | f'8 es'8^\markup{\left-align \small vib} r4 \tuplet 6/4 {r16 cis'16 d'8 es'16 cis'16~} cis'16 d'16 bes16 f16 
      | es16 e16^\markup{\left-align \small vib} r8 r4 \tuplet 10/8 {r16. e16.\glissando  f16 ges32 a32~} \tuplet 11/8 {a32 d'16 es'16\glissando  e'16 f'16 g'32 f'32} 
      | e'16 es'8 bes'16 g'16 f'16 es'16 bes16 g16 cis'16 d'16 f'16 c'4~^\markup{\left-align \small vib} 
      | c'8 aes8 g16 f16 c'8 es'8 fis'8 \tuplet 6/4 {a'4^\markup{\left-align \small vib} d'16 e'16~} 
      | e'8 a'16 bes'32 a'32 g'16 a'16 g'16 d'16~ \tuplet 3/2 {d'8 bes8 c'8} bes8^\markup{\left-align \small vib} r8 
      | r8. f16 fis8 gis8~^\markup{\left-align \small vib} gis8. d16 f8^\markup{\left-align \small vib} cis8 
      \bar "||" d4~ d32 e16 f16 fis16 g32~ g8 gis16\glissando  bes16 \tuplet 3/2 {d'8 es'8 d'8} 
      | \tuplet 6/4 {d'8\glissando  e'16 f'8 es'16} g4^\markup{\left-align \small vib} r4 \tuplet 3/2 {r8 g'8 c''8} 
      | \tuplet 3/2 {b'8 bes'8 a'8} \tuplet 3/2 {aes'8 ges'8 fis'8\glissando } \tuplet 5/4 {g'8 d'8 bes16~} \tuplet 3/2 {bes8 g8 a8~} 
      | a16 cis'16\glissando  d'16 g16 bes8^\markup{\left-align \small vib} r8 r4 \tuplet 11/8 {r8.. bes16. bes32~} 
      | \tuplet 10/8 {bes16. d'32\glissando  f'8 d'32\glissando  f'32~} f'16 d'16\glissando  f'16 f'16 \tuplet 5/4 {e'16 d'16 es'16\glissando  e'16 f'16} \tuplet 6/4 {bes8 es'8 f'16 cis'16~} 
      | \tuplet 5/4 {cis'16 d'16 g'16 f'16 d'16} a4^\markup{\left-align \small vib} r4 r16 g16 f16 d'16 
      | bes16 g16 f16 d16 es16 e16 d'16 bes16~ bes16 gis16 a16 c'16~ c'16 f16 g16 bes16~^\markup{\left-align \small vib} 
      | bes2. r4\bar  ".."
    }
    >>
>>    
}
