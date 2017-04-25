\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Be-Bop"
  composer = "Don Byas"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \minor
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
      
      | f2:min g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 c2:7 | f2:min g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 f2:min 
      | f2:min7 g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 c2:7 | f2:min g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 f2:min 
      | f1:min7 | bes1:9+ | es1:maj | s1 | es1:min7 | aes1:9+ | des1:maj | g2:min5-7 c2:9- 
      | f2:min7 g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 c2:7 | f2:min g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | c2:7 f2:min 
      | f2:min7 g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 c2:7 | f2:min g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 f2:min 
      | f2:min7 g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 c2:7 | f2:min g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 f2:min 
      | f1:min7 | bes1:9+ | es1:maj | s1 | es1:min7 | aes1:9+ | des1:maj | g2:min5-7 c2:9- 
      | f2:min7 g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | g2:min5-7 c2:7 | f2:min g2:min5-7 | f2:min/aes bes2:min6 | f1:min/c | c2:7 f2:min 
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


      \tempo 4 = 289
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 g8 
      | aes8 bes8 b16 c'8.~^\markup{\left-align \small vib} c'4 aes4 
      | g4 e8 f8 b8 r8 r4 
      | r2 c'8 e'8 aes'8 c''8~ 
      | c''8 b'4 f'8~^\markup{\left-align \small vib} f'2~ 
      | f'4~ f'16 aes'16 b'16 aes'16~ aes'16 g'8 f'16~ f'16 e'8 f'16 
      | \tuplet 3/2 {g'4 e'8} f'8 des'8~ des'16 c'8 bes16~ bes16 aes8 g16 
      | f4 g4 \tuplet 3/2 {f8 e4} d8 des8~ 
      \bar "||" \tuplet 3/2 {des8 g8 e8} f8 c'8 r2 
      | r4 r8 des'8 d'2~^\markup{\left-align \small vib} 
      | d'2. f'8 aes'8 
      | c'8 des'8~ \tuplet 3/2 {des'8 e'8 g'8} bes'8 des'8 d'8 g'16 ges'16~ 
      | ges'16 f'16 e'8 f'8 g'8 \tuplet 3/2 {e'8 f'8 c'8~} c'8 r8 
      | r2 c'8\glissando  d'4.~^\markup{\left-align \small vib} 
      | d'4 des'8. des'16~ des'8 c'8 aes4 
      | f8\glissando  g4. f8 r8 r4 
      \bar "||" r4 des'8 d'8 g'8 ges'16 f'16 \tuplet 3/2 {e'4 f'8} 
      | fis'8 g'8 \tuplet 3/2 {aes'4 e'8} g'8 f'8 es'8 d'8 
      | \tuplet 3/2 {c'4 aes8} f8 fis8 g8 bes8 des'8 d'8 
      | f'8 d'8 es'8 f'8~ f'16 fis'16 g'8 \tuplet 3/2 {c''4 bes'8} 
      | g'8 r8 r4 des'8 d'8 \tuplet 3/2 {es'4 f'8~} 
      | f'16 fis'16 g'16 ges'16 f'8 es'8 \tuplet 3/2 {c'4 bes8} \tuplet 3/2 {aes4 ges8} 
      | f4 des'4 e'16 f'8 aes'16~ \tuplet 3/2 {aes'8 ges'8 f'8} 
      | \tuplet 3/2 {e'4 bes8} c'8 d'8~ d'16 e'8 g'16~ \tuplet 3/2 {g'8 f'8 e'8~} 
      \bar "||" e'16 g'8 e'16~ \tuplet 3/2 {e'8 f'8 des'8~} des'8 c'8 r4 
      | r4 r8 es'4\glissando  f'4.~ 
      | f'4 fis'8\glissando  g'16 c''16 f'2~ 
      | f'4 es'8\glissando  e'8 c''8 ges'4.~^\markup{\left-align \small vib} 
      | ges'4 \tuplet 3/2 {e'8\glissando  f'8 c'8} r2 
      | r4 d'4\glissando  e'2~^\markup{\left-align \small vib} 
      | e'4 des'8 des'8 c'2~^\markup{\left-align \small vib} 
      | c'4 bes8 aes8 g8 f8 e8 f8 
      \bar "||" \mark \default g8 e8 \tuplet 3/2 {f8 aes8 c'8~} c'8 f'16 aes'16~ aes'8 c''8~ 
      | c''8\glissando  r8 r4 r8 c''4.~^\markup{\left-align \small vib} 
      | c''2 \tuplet 3/2 {es''8 des''8 f''8~} f''4~ 
      | f''2 des''4.^\markup{\left-align \small vib} b'8 
      | c''8 b'8 bes'8 aes'8 g'8 f'8 g'8 f'8 
      | \tuplet 3/2 {e'4 d'8~} d'8 des'8 c'8 bes8 \tuplet 3/2 {aes8 g8 f8} 
      | \tuplet 3/2 {e4 f8} g8 e8 f8 c'8 r4 
      | r8 f8\glissando  ges8 bes8 des'8. e'16 aes'8 ges'8 
      \bar "||" f'8. bes16~ bes16 c'8 d'16~ d'16 g'16 ges'16 f'16 \tuplet 3/2 {e'4 d'8} 
      | \tuplet 3/2 {des'4 c'8} bes8 aes8 g8 f8 e8. g16~ 
      | g8 e8 \tuplet 3/2 {f8 c'4} r4 ges8 aes8 
      | c'8 es'8 bes8 b8 \tuplet 3/2 {des'4 d'8} g'4~ 
      | g'16 c'8 d'16 es'8 e'8 g'8 f'8 e'8 f'8 
      | r2 r8 c'8\glissando  des'4~ 
      | des'4. b16 c'16~ c'8 f8 r4 
      | e8 ges4 e8 f8 c'8 r4 
      \bar "||" r4 aes8 a16 des'16~ des'8 d'8 \tuplet 5/4 {g'8 e'16 d'16 es'16~} 
      | es'4 des'8 d'16 f'16~ f'8 c'8 aes8 f8 
      | g8 r8 r4 es'4. g'8 
      | c''8 b'8 bes'2~^\markup{\left-align \small vib} bes'8 g'8 
      | ges'8 r8 r4 r8 des'8 d'8 es'8 
      | f'8 ges'8 f'8 e'8 g8 ges8 es'8 c'8 
      | \tuplet 3/2 {bes8 ges8 e8~} e16 f8 aes16 des'4 \tuplet 3/2 {e'8 f'8 aes'8~} 
      | aes'16 g'16 ges'16 f'16~ f'16 e'8 des'16~ des'16 bes8 b16~ b16 c'8 bes16~ 
      \bar "||" bes16 aes8 g16 f4~ f16 g8 e16~ e16 f8 c'16 
      | r2 r8 c'4 des'8 
      | d'8 g'8 c'2.~^\markup{\left-align \small vib} 
      | c'4 a8\glissando  bes8 c'8 des'8 f4~^\markup{\left-align \small vib} 
      | f4. bes8 c'8 r8 r4 
      | r4 r8 des'8 d'2~^\markup{\left-align \small vib} 
      | d'8. c'16~ \tuplet 3/2 {c'8 e'8 aes'8} \tuplet 3/2 {d''4 des''8} c''8. g'16~ 
      | g'8 ges'8 f'8 d'4 des'8 c'8 g8 
      \bar "||" ges8 f8 r2.\bar  ".."
    }
    >>
>>    
}
