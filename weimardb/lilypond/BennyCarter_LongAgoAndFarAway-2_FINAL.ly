\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Long Ago and Far Away (Solo 2)"
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
      | r1 
      | f2:6 d2:min7 | g2:min7 c2:7 | f2:maj d2:min7 | g2:min7 c2:7 | f1:6 | g2:min7 c2:7 | f2:6 d2:7 | g2:min7 c2:7 
      | aes2:6 f2:min7 | bes2:min7 es2:7 | aes1:maj | g1:7 | c1:maj | a1:min7 | g1:min7 | c1:7 
      | f2:6 d2:min7 | g2:min7 c2:7 | f2:maj d2:min7 | g2:min7 c2:7 | f2:6 d2:min7 | g2:min7 c2:7 | f2:6 d2:7 | g2:min7 c2:7 
      | c1:min7 | f1:7 | bes1:maj | bes2:min6 es2:7 | f2:6/a aes2:dim7 | g2:min7 c2:7 | f1:6 | g2:min7 c2:7 
      | f2:6/a aes2:dim7 | g2:min7 c2:7 | f1:6|
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


      \tempo 4 = 186
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r8 c'8 d'8 f'8~ f'16 g'8 f'16 g'8 f'8 
      \bar "||" \mark \default g'8 f'8 \tuplet 3/2 {g'4 f'8} c''8 g'8 r4 
      | g'8 f'8 g'8 f'8 c''8 g'8 \tuplet 3/2 {f'4 e'8} 
      | f'4 f'8 f'8\bendAfter #+4  g'4 c'8 d'8 
      | f'8 e'8 g'16 a'16 g'16 f'16 e'8 d'4 bes8 
      | \tuplet 3/2 {a4 b8} \tuplet 3/2 {c'4 f'8} e'8 f'8 a'8 c''8 
      | d''8 bes'8 g'4 c''4 bes'8. g'16\bendAfter #+4  
      | a'8 bes'16 b'16 c''8 f'8~ \tuplet 3/2 {f'8 c'8 cis'8} d'8 f'8 
      | d'4 e'16 f'8 g'16\bendAfter #+4  a'4 g'4 
      \bar "||" aes'4 r2 r8 es'8 
      | aes'8 bes'8 a'16\bendAfter #+4  bes'16 aes'16 f'16 es'8 des'4 bes8 
      | \tuplet 3/2 {aes4 es'8} c'8 g4 es'8 c'8 ges8~ 
      | ges8 dis'8 c'8 f4 b8 d'8 g'8 
      | e'8^\markup{\left-align \small vib} r8 r4 r8 c'8 e'8 a'8 
      | f'4^\markup{\left-align \small vib} r4 r8 d'8 f'8 a'8 
      | \tuplet 3/2 {c''4 a'8} bes'8 d''8 f''8 e''8 c''16 d''16 c''16 a'16 
      | bes'8 g'8 e'16 des'16 c'16 b16 bes16 gis16 a16 c'16 \tuplet 3/2 {e'8 g'8 d'8~} 
      \bar "||" d'8 c'8 f'4 f'4^\markup{\left-align \small vib} r4 
      | r8 a8 bes8 d'8 f'8 a'8 \tuplet 5/4 {c''8 d''16 des''16 b'16} 
      | bes'8 gis'8 a'8 c''8 f''8 e''8 c''16 d''16 c''16 a'16 
      | d''8 bes'4 gis'8 a'8 g'8 e'8 c'8 
      | g'8 f'8 d'8 a4^\markup{\left-align \small vib} r8 r4 
      | r8 a4 b16 c'16 e'16 a'8 g'16 e'16 des'16 c'16 bes16 
      | a4 f'8 d'8 r4 r8 c'8 
      | \tuplet 3/2 {bes4 d'8} \tuplet 3/2 {f'4 g'8} a'8 aes'8 g'8 ges'8 
      \bar "||" f'8 e'8 \tuplet 3/2 {es'4 g'8} bes'8 d''8 c''8 g'8 
      | \tuplet 3/2 {b'4 g'8} es'8 b8 g4 \tuplet 3/2 {f4 c'8\bendAfter #+4 } 
      | d'8 r8 r2. 
      | r4 r8 des'8 f'8 a'8 \tuplet 3/2 {c''4 bes'8} 
      | \tuplet 3/2 {a'4 b'8} c''8 f''8 d''8 b'8 a'16 bes'16 a'16 ges'16 
      | \tuplet 3/2 {d''4 a'8} bes'8 g'8 e'8 des'8 c'8 bes8 
      | a8 bes16 b16 c'8 f'8 e'8 f'8 aes'8 b'8 
      | \tuplet 3/2 {d''4 a'8} bes'8 b'8\bendAfter #+4  c''4 bes'8 g'16\bendAfter #+4  a'16~ 
      | a'8 bes'16 b'16 c''8 g'16\bendAfter #+4  aes'16~ aes'8 r8 r4 
      | r8 cis'8 d'16 f'16 a'8 c''4 bes'4~ 
      | bes'8 f''8 c''8 bes'8 \tuplet 3/2 {a'4 bes'8} b'16 c''8 a'16 
      | f'8. e'16 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} f'2~ 
      | f'1~ 
      | f'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
