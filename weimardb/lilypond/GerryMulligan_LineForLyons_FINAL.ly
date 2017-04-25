\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Line for Lyons"
  composer = "Gerry Mulligan"
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
      | bes1:6 | c2:min7 f2:7 
      | bes2:9 bes2:7 | es2:min7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:9 bes2:7 | es2:min7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes1:maj | bes1:7 
      | es1:maj | e2:min5-7 a2:7 | d1:min7 | g1:9- | c1:min7 | f1:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:9 bes2:7 | es2:min7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes1:maj | c2:min7 f2:7 
      | bes2:6 bes2:7|
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


      \tempo 4 = 173
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2 r8 a8 \tuplet 3/2 {bes4 g8} 
      | a8 bes8 c'4. a8 \tuplet 3/2 {bes4 c'8} 
      \bar "||" \mark \default \tuplet 3/2 {d'4 bes8} \tuplet 3/2 {c'4 a8} bes8 c'8~ \tuplet 6/4 {c'16 d'4^\markup{\left-align \small vib} es'16} 
      | f'4 es'8. ges16~^\markup{\left-align \small vib} ges4. es'8 
      | d'4 \tuplet 3/2 {bes4 f8} \tuplet 3/2 {es8 e4} des'4 
      | c'4^\markup{\left-align \small vib} \tuplet 3/2 {bes4 a8~} a8 g8 f8 es8 
      | \tuplet 3/2 {d4 c'8~} c'4 g4 r4 
      | r4 r8 g8 \tuplet 3/2 {c'4 g8} \tuplet 3/2 {bes4 a8~} 
      | a8 f4.^\markup{\left-align \small vib} aes8 g8 fis8. g16 
      | c'4^\markup{\left-align \small vib} bes8 gis8 \tuplet 3/2 {a4 c'8} es'16 g'8. 
      \bar "||" f'2^\markup{\left-align \small vib} r4 r8. f16 
      | ges8 bes8 \tuplet 3/2 {c'4 e'8} f'4 es'8. es'16~ 
      | es'8 d'8 cis'8. d'16 es'4 b8 d'8 
      | \tuplet 3/2 {c'8 d'8 c'8} g8 bes8~ \tuplet 6/4 {bes16 a8. f16 g16~} g8 f8 
      | d'8. bes16 r4 r8. f16 g8. f16 
      | es'4 \tuplet 3/2 {c'4 a8~} a8 f8 g8. f16 
      | \tuplet 3/2 {f'4 bes8} r2 r8 bes16 a16 
      | aes8 c'8 f8 aes8 d8 a,8 \tuplet 3/2 {c8 bes,8 c8} 
      \bar "||" es8 f8 g8. aes16 \tuplet 3/2 {bes4 c'8~} c'16 d'8 d'16\glissando  
      | e'4 \tuplet 3/2 {d'4 cis'8~} cis'8. d'16 \tuplet 3/2 {e'4 f'8~} 
      | f'8. c'16~^\markup{\left-align \small vib} c'4 r2 
      | \tuplet 6/4 {r4 d'16 c'16} \tuplet 3/2 {b4 c'8} \tuplet 3/2 {d'4 es'8} \tuplet 3/2 {f'4 g'8~} 
      | g'8 c'4.^\markup{\left-align \small vib} b4 d'8. es'16~ 
      | es'8. g16~ g8 f8 \tuplet 3/2 {ges4 gis8} \tuplet 3/2 {a4 c'8~} 
      | c'8 bes8 a8 bes8 \tuplet 3/2 {d'4 f'8} g'8 f'8~^\markup{\left-align \small vib} 
      | f'4 r2 r8 f'8 
      \bar "||" g'16\glissando  a'8. \tuplet 3/2 {d'4 f'8~} f'8 bes8 d'4^\markup{\left-align \small vib} 
      | \tuplet 3/2 {f'4 aes'8~} aes'16 des'8 f'16~ f'16 bes8 des'16~ des'16 ges8 es16 
      | f8 g4 bes8 b8 c'8 d'8. es'16~ 
      | es'8 g'8 c'8 es'8 \tuplet 3/2 {a4 c'8} \tuplet 3/2 {f4 g8} 
      | \tuplet 3/2 {a4 bes8} \tuplet 3/2 {b4 c'8} d'8 c'4 b16 c'16 
      | es'8 g8 bes8. g16 \tuplet 3/2 {a4 bes8} c'8 bes8~^\markup{\left-align \small vib} 
      | bes4 r4 \tuplet 6/4 {r4 bes16 d'16} g'4 
      | f'2 d'16 es'16 c'16 bes16 a8 g16 f16 
      \bar "||" d4 r2.\bar  ".."
    }
    >>
>>    
}
