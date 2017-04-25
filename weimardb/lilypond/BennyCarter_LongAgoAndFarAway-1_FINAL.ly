\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Long Ago and Far Away"
  composer = "Benny Carter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | f1:6 | g2:min7 c2:7 
      | f2:6 d2:min7 | g2:min7 c2:7 | f1:maj | g2:min7 c2:7 | f1:6 | g2:min7 c2:7 | a2:min7 d2:7 | g2:min7 c2:7 
      | aes1:6 | bes2:min7 es2:7 | aes1:maj | g1:7 | c1:maj | a2.:min7 d4:7 | g1:min7 | c1:7 
      | f2:6 d2:min7 | g2:min7 c2:7 | f1:maj | g2:min7 c2:7 | f1:6 | g2:min7 c2:7 | a2:min7 d2:7 | g2:min7 c2:7 
      | c1:min7 | f1:7 | bes1:maj | es1:7 | f2:6 d2:min7 | g2:min7 c2:7 | f1:6 | g2:min7 c2:7|
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


      \tempo 4 = 185
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r4 r8 c'8 cis'16 d'8 f'16~ f'8 e'8 
      | \tuplet 3/2 {g'4 bes'8} d''8 des''4 bes'8 g'8 gis'8 
      \bar "||" \mark \default a'8 f'8~ f'8. des'16~ des'16 c'8 a16~ a16 bes16 d'16 f'16 
      | a'8 g'8 f'8 e'8 g'16 a'16 g'16 f'16 e'8 d'8 
      | c'8 r8 r2 r8 a8 
      | \tuplet 3/2 {bes8 d'8 f'8} a'16 c''16 bes'8 g'16 e'16 des'16 c'16 b16 bes16 gis16 a16 
      | c'16 g'8 e'16~ \tuplet 5/4 {e'16 g'16 a'16 g'16 f'16} c''8 a'8 f'4 
      | g'8 f'4 des'8 c'8 bes8~ bes16 g8 gis16~ 
      | gis16 a8 c'16 g8 f8 \tuplet 3/2 {fis4 a8} c'8 es'8 
      | d'8 bes8~ \tuplet 5/4 {bes16 g16 a16 g16 f16} c'8 r8 r4 
      \bar "||" r8 a8~ \tuplet 5/4 {a16 bes8 b16 c'16} es'16 aes'16 bes'16 c''16 es''16 aes''8 f''16~ 
      | f''16 es''8 des''16 c''8 bes'8~ \tuplet 6/4 {bes'16 a'16 bes'16 aes'16 g'8} bes'8 aes'8 
      | \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} f'8 r8 r4 
      | r8 a8~ a16 b8 d'16 f'8 a'8~ a'16 a'16 g'16 f'16 
      | e'8 g'8 b'8 d''4. \tuplet 3/2 {c''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'8 r8 r4 r8. cis'16~ cis'16 d'16 f'16 a'16 
      | c''8 bes'4 f'8 a'8 c''8 fis'8 g'8~ 
      | g'8 c'8~ c'16 cis'8 d'16 bes'4 a'4 
      \bar "||" f'8 r8 r4 \tuplet 6/4 {r8 c'8. d'16~} \tuplet 6/4 {d'16 f'4 f'16~} 
      | f'4\glissando  f'4 f'8 f'4 f'8~ 
      | f'8 f'4^\markup{\left-align \small vib} r8 r8 a'8 f'8 c'8~ 
      | c'16 bes8 d'16 f'8 a'4 g'8 \tuplet 3/2 {f'4 e'8} 
      | c'8^\markup{\left-align \small vib} r8 r2 r8 cis'8~ 
      | cis'16 d'8 f'16~ \tuplet 3/2 {f'8 d'8 cis'8~} cis'16 d'8 g'16 r4 
      | r4 r8. cis'16 d'8 a'8 d'8 cis'8 
      | \tuplet 3/2 {d'4 bes'8} r2 r8. cis'16 
      \bar "||" d'8 c''8 \tuplet 3/2 {bes'4 gis'8} \tuplet 3/2 {a'4 es'8~} \tuplet 5/4 {es'16 g'16 bes'16 g'16 f'16~} 
      | f'16 es'8 c'16 g8 gis8 \tuplet 3/2 {a4 f8~} f16 es8 f16 
      | d4~ d16 f8 a16 c'8 a8 bes8 f'8~ 
      | \tuplet 3/2 {f'8 des'8 bes8} g8 f8 \tuplet 3/2 {c'4 b8~} b16 bes8 gis16~ 
      | gis16 a16 c'16 e'16 g'8 f'8 d'8 r8 r4 
      | r8 cis'8~ cis'16 d'16 f'16 a'16 c''8 bes'8 g'8 gis'8 
      | a'8 f'8 d'8 des'8 \tuplet 3/2 {c'4 bes8~} bes8\glissando  c'8~ 
      | c'8. bes16~ bes16 c'8 a16~ a16 bes8 c'16 a8 bes8 
      | c'4 r2.\bar  ".."
    }
    >>
>>    
}
