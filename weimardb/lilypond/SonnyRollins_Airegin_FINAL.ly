\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Airegin"
  composer = "Sonny Rollins"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key aes \major
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
      
      | f1:min7 | c1:9+ | f1:min7 | f1:9- | bes1:min7 | f1:9+ | bes1:min7 | s1 
      | des1:maj | d2:min7 g2:7 | c1:maj | des2:min7 ges2:7 | b1:maj | c2:min7 f2:7 | bes1:maj | s1 
      | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 | f1:min7 | c1:9+ | f1:min7 | f1:9- 
      | bes1:min7 | f1:9+ | bes1:min7 | s1 | des1:maj | d2:min5-7 g2:7 | c2:min5-7 ges2:7 | f2:7 b2:7 
      | bes1:min7 | es1:7 | aes1:6 | g2:min5-7 c2:9- | f1:min7 | c1:9+ | f1:min7 | f1:9- 
      | bes1:min7 | f1:9+ | bes1:min7 | s1 | des1:maj | d2:min7 g2:7 | c1:maj | des2:min7 ges2:7 
      | b1:maj | c2:min7 f2:7 | bes1:maj | s1 | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 
      | f1:min7 | c1:9+ | f1:min7 | f1:9- | bes1:min7 | f1:9+ | bes1:min7 | s1 
      | des1:maj | d2:min5-7 g2:7 | c2:min5-7 ges2:7 | f2:7 b2:7 | bes1:min7 | es1:7 | aes1:6 | g2:min5-7 c2:9- 
      | f1:min7 | c1:9+ | f1:min7 | f1:9- | bes1:min7 | f1:9+ | bes1:min7 | s1 
      | des1:maj | d2:min7 g2:7 | c1:maj | des2:min7 ges2:7 | ces1:maj | c2:min7 f2:7 | bes1:maj | s1 
      | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 | f1:min7 | c1:9+ | f1:min7 | f1:9- 
      | bes1:min7 | f1:9+ | bes1:min7 | s1 | des1:maj | d2:min5-7 g2:7 | c2:min5-7 ges2:7 | f2:7 b2:7 
      | bes1:min7 | es1:7 | aes1:6 | g2:min5-7 c2:7|
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


      \tempo 4 = 243
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 f'4 c'16\glissando  des'8 c'16~ 
      | c'1 
      | \tuplet 3/2 {g8 aes8 g8} f2. 
      | \tuplet 3/2 {f'4 bes8~} bes8 r8 r2 
      | r4 ges'8 e'8 es'8 des'8 c'8 b8 
      | bes8 aes8 a8 bes8 es'8 ges'8~ ges'16 f'8 es'16 
      | des'8 bes4.^\markup{\left-align \small vib} r2 
      \bar "||" r1 
      | r4 r8 g'4 g'4 b'8 
      | e'4 g'8 f'8 e'8 c'8 a4 
      | fis'8 g'8 e'8 es'8 des'8 es'8 e'8 fis'8 
      | \tuplet 3/2 {es'4 fis8~} fis16 g8 bes16~ bes16 g'8 bes16~ bes8 b8 
      | e'8 f'4 es'8 r2 
      | r4 r8 a16 bes16 d'8 f'8 a'8 g'8 
      | f'8 d'8~ d'16 es'16 f'16 es'16 d'8 bes8 r4 
      | r2 g'8 aes'8 g'8 f'8 
      | es'8 d'8 des'8 bes8 c'8 des'8 \tuplet 3/2 {bes4 g8} 
      | aes8 bes8 b8 bes8 f'8 e'8 es'8 c'8 
      | des'8 c'8 bes8 aes8~ aes16 g8 f16 e8 g8 
      \bar "||" bes8 des'8 c'8 bes16 aes16~ aes4 e8 aes8 
      | g8 f8 e8 g8 bes8 des'8 c'8 bes8 
      | \tuplet 3/2 {aes4 bes8~} bes8 e'8 \tuplet 3/2 {g'4 e'8} \tuplet 3/2 {f'4 g'8} 
      | \tuplet 3/2 {aes'4 f'8~} f'8 r8 r2 
      | r2. r8. f'16 
      | ges'4 \tuplet 3/2 {e'8 f'4~} f'4. es'8 
      | des'4 g4 g2^\markup{\left-align \small vib} 
      | r1 
      \bar "||" r8 g'8 \tuplet 3/2 {aes'4 e'8} f'8 r8 r4 
      | r8. bes16 b8 des'8 d'8 g'8 r4 
      | r8. b16~ \tuplet 3/2 {b8 es'8 g'8} bes'8 aes'8 g'8 f'8 
      | es'8 c'8 des'8 c'8 bes8 g8 a8 c'8 
      | \tuplet 3/2 {bes4 c'8} des'8 es'8 f'8 aes'8 g'8 f'8 
      | es'8 d'8 des'8 b8 c'8 des'8 bes8. g16 
      | aes8 bes8 b8 bes8 f'8 e'8 es'8 des'8 
      | c'8 b8 bes8 aes8 g8 f8 e8 g8 
      \bar "||" \mark \default f16 ges8 e16 f8 g8~ \tuplet 3/2 {g8 aes8 bes8} \tuplet 3/2 {c'4 aes8} 
      | bes8 r8 r8. bes16~ bes8 e'8 \tuplet 3/2 {g'4 e'8} 
      | \tuplet 3/2 {f'4 g'8} aes'8 bes'8 c''4 c''4 
      | bes'4 bes'8 aes'4 aes'8 f'4 
      | r1 
      | f'8 ges'8 f'8 e'4 f'4.~ 
      | f'8 e'16 f'16 \tuplet 3/2 {es'4 c'8} des'8. a16 r4 
      | r1 
      \bar "||" r2 r16 g'16 aes'4. 
      | g'4 \tuplet 3/2 {aes'8 g'8 f'8~} f'8 r8 r4 
      | r16 e'16 f'16 fis'16 g'8 ges'8 f'16 e'8 c'16~ c'4 
      | fis'4 \tuplet 3/2 {e'4 es'8~} es'8 fis'4 des'8~ 
      | des'8 bes4 b4 es'8 ges'4 
      | f'4 es'8 r8 r8. bes16~ bes8 d'8 
      | r4 r8. bes16~ bes8. d'16~ d'4 
      | a'4 g'4 e'16 f'8. d'8 r8 
      | r2 aes'8 a'16 aes'16 g'8 f'8 
      | es'8 d'8 des'8 bes8 c'8 des'8 bes8 g8 
      | aes4 \tuplet 3/2 {aes'8 a'8 aes'8} g'8 f'8 c'8 bes8 
      | f'8 d'8 e'8 g'8 \tuplet 3/2 {des'4 des'8} c'8 bes8 
      \bar "||" aes8 r8 r8. e16 f8 g8 aes8 b8 
      | c'8 e'8 \tuplet 3/2 {f'8 g'4} aes'8 b'8 c''8 g'8 
      | aes'8 r8 r4 r8 e'8 f'8 des'8 
      | d'8 r8 r2 r8 c'8 
      | des'8 es'8 f'8 c'8 es'8 c'8 des'8 c'16 bes16~ 
      | bes8 aes8 a8 c'8 es'8 ges'8 f'8 es'8 
      | c'8 des'8 r2. 
      | r4 r8 f8 g4 a8 r8 
      \bar "||" r2. r8. ges'16 
      | aes'4. g'4. fis'16 g'16 f'8 
      | es'4 es'8 f'8 ges'8 f'16 e'16 es'8 des'8 
      | c'8 b8 bes8 aes8 a8 ges8 f8 es8 
      | r4 f8 g8 c'8 des'8 c'8 bes8 
      | a8 aes8 g8 r8 r8 ges8 e8 des8 
      | es4~ \tuplet 3/2 {es8 es8 g8} bes8 aes8 g8 f8 
      | e8 g8 bes8. c'16 des'8 e'8 \tuplet 3/2 {g'4 e'8} 
      \bar "||" \mark \default \tuplet 3/2 {f'4 d'8} r2. 
      | r2 c'8 f'8 aes'8. c''16~ 
      | c''8. c''16~ c''16 fis'8 g'16~^\markup{\left-align \small vib} g'2~ 
      | g'4 bes'8 g'16 aes'16~ aes'8 f'4\bendAfter #-4  r8 
      | r2 \tuplet 3/2 {f'8 ges'8 e'8} es'8 des'8 
      | c'8 b8~ b16 bes8 aes16~ aes16 a8 c'16~ c'8 es'8~ 
      | es'8 f'4 ges'8 aes'4 f'8. es'16~ 
      | es'8 f'8 des'2^\markup{\left-align \small vib} r4 
      \bar "||" r4 r8 aes'4 f'8 \tuplet 3/2 {des'4 bes8} 
      | b8 r8 r4 g'8 aes'8 g'8 f'8 
      | \tuplet 3/2 {e'4 c'8} a8 aes8 g8. e16~ \tuplet 3/2 {e8 g8 bes8} 
      | fis'8 g'16 fis'16 e'8 f'16 es'16 des'4 f'8\glissando  fis'8 
      | des'4 bes4 b4.^\markup{\left-align \small vib} r8 
      | r4 r8 e'8\glissando  f'2 
      | a8 bes8~ \tuplet 3/2 {bes8 d'8 f'8} a'8 bes'8 r4 
      | e'8 f'8 r4 des'8 d'8 r4 
      | r4 r8. a16 bes8 c'8 des'8 es'8 
      | f'8 aes'8 g'8 f'16 es'16~ \tuplet 3/2 {es'8 d'8 des'8~} des'8 bes16 c'16~ 
      | c'8 es'8 \tuplet 3/2 {bes4 g8} aes4 \tuplet 3/2 {g'8\glissando  aes'4} 
      | g'4 f'4 e'4 c'4 
      \bar "||" c''8 r8 r2. 
      | b8 f'8 aes'8 c''8 bes'8 aes'8 g'8 f'8 
      | e'8 des'8 c'8 bes8 \tuplet 3/2 {aes4 f8} r4 
      | r1 
      | r4 f8 bes8 des'8 f'8 es'8. c'16 
      | des'8 c'8 bes8 aes8 a8 c'8 es'8 f'16 fis'16~ 
      | fis'8 g'16 ges'16 f'8 es'8 des'8 bes4.^\markup{\left-align \small vib} 
      | r2 r8 a8 bes8 f'8 
      \bar "||" aes'8. f'16~ f'8 des'8 bes8. f'16~ f'4 
      | aes'4 \tuplet 3/2 {f'4 b8} r2 
      | r8. b16 c'8 es'16 g'16 bes'8 g'8 bes'4 
      | a'8 aes'8 ges'8 des'8 b8 a8 fis'8 aes'8 
      | g'16 f'8 des'16 r2. 
      | r16 g'16 a'16 aes'16 g'8 f'8 es'8 c'8 des'8 des'8 
      | \tuplet 3/2 {c'4 aes8~} aes4 bes8 aes8 g8 f8 
      | e4 \tuplet 3/2 {c'8 des'4} c'4. r8\bar  ".."
    }
    >>
>>    
}
