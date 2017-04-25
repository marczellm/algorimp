\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Airegin"
  composer = "Miles Davis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | s2. r4 | s1 
      | f1:min7 | c1:9+ | f1:min7 | f1:9- | bes1:min7 | f1:9+ | bes1:min7 | s1 
      | des1:maj | d2:min7 g2:7 | c1:maj | cis2:min7 fis2:7 | b1:maj | c2:min7 f2:7 | bes1:maj | s1 
      | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 | f1:min7 | c1:9+ | f1:min7 | f1:9- 
      | bes1:min7 | f1:9+ | bes1:min7 | s1 | des1:maj | d2:min5-7 g2:7 | c2:min5-7 ges2:7 | f2:7 b2:7 
      | bes1:min7 | es1:7 | aes1:6 | g2:min5-7 c2:7 | f1:min7 | c1:9+ | f1:min7 | f1:9- 
      | bes1:min7 | f1:9+ | bes1:min7 | s1 | des1:maj | d2:min7 g2:7 | c1:maj | cis2:min7 fis2:7 
      | b1:maj | c2:min7 f2:7 | bes1:maj | s1 | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 
      | f1:min7 | c1:9+ | f1:min7 | f1:9- | bes1:min7 | f1:9+ | bes1:min7 | s1 
      | des1:maj | d2:min5-7 g2:7 | c2:min5-7 ges2:7 | f2:7 b2:7 | bes1:min7 | es1:7 | aes1:6 | g2:min5-7 c2:7 
      | f1:min7 | c1:9+ | f1:min7 | f1:9- | bes1:min7 | f1:9+ | bes1:min7 | s1 
      | des1:maj | d2:min7 g2:7 | c1:maj | cis2:min7 fis2:7 | b1:maj | c2:min7 f2:7 | bes1:maj | s1 
      | bes1:min7 | es1:7 | aes1:maj | g2:min5-7 c2:7 | f1:min7 | c1:9+ | f1:min7 | f1:9- 
      | bes1:min7 | f1:9+ | bes1:min7 | s1 | des1:maj | d2:min5-7 g2:7 | c2:min5-7 ges2:7 | f2:7 b2:7 
      | bes1:min7 | es1:7 | aes1:6 | g2:min5-7 c2:7 | f1:min7|
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


      \tempo 4 = 241
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2. c''8 des''8 
      | c''8 bes'8 aes'8 g'8 e'4 c'4 
      \bar "||" \mark \default f'8 r8 r4 c''8 r8 r4 
      | aes'4. e'4 b'4 c''8~ 
      | c''4. des''8 c''8 bes'8 r4 
      | r1 
      | r4 des''4 f''2 
      | c''4. es''8~ es''8. des''16 r4 
      | r8 e'16 f'16~ f'8 c''8 r2 
      | r1 
      \bar "||" r4 \tuplet 3/2 {des'4 es'8} f'8 g'8 aes'8 bes'8~ 
      | bes'8 e'8 f'8 g'8 a'8 b'16 c''16~ c''8 des''8 
      | d''8 e''8 d''8 c''8 b'8 a'8 g'8 r8 
      | r2 aes''8 fis''16 e''16 es''8 des''8 
      | b'8 a'8 bes'2^\markup{\left-align \small vib} r4 
      | r4 \tuplet 3/2 {r8 d'8 es'8} f'8 g'8 a'8 bes'8 
      | c''8 a'8 bes'8 c''8 \tuplet 3/2 {d''4 bes'8} r4 
      | r2. r8 f''8 
      | c''4 es''4 des''8 r8 r4 
      | c''4 bes'8 aes'8 \tuplet 3/2 {g'4 f'8} es'8 des'8 
      | c'4. f'16 e'16 f'16 bes'8 g'16 \tuplet 3/2 {aes'4 bes'8} 
      | c''8 des''8 c''8 bes'8 aes'8 g'8 \tuplet 6/4 {e'4 des'16 f'16~^\markup{\left-align \small vib}} 
      \bar "||" f'2 c''4 aes'8. e'16~ 
      | e'4. c''8 r2 
      | r2 c''8 des''8 c''8 bes'8 
      | aes'8 f'8 r2. 
      | des''2 c''4. a'8~ 
      | \tuplet 3/2 {a'8 bes'8 f'8} \tuplet 3/2 {des'4 a8~} a8 es'8 des'4 
      | c'4 r2. 
      | r2. r8 c''8~ 
      \bar "||" c''8 c''4 aes'8 f'4 des'4 
      | c''4.^\markup{\left-align \small vib} c''8 r2 
      | r8 g'8 bes'8 g'8 \tuplet 3/2 {aes'4 bes'8~} bes'8 des''8~ 
      | des''4 b'8 r8 r4 r8 b'8 
      | \tuplet 3/2 {c''4 c''8~} c''8 g'8 es'4 des'4 
      | bes'4. bes'8 r2 
      | r2 c''8 es''8 c''8 bes'8 
      | aes'16 a'16 aes'16 g'16~ g'8 e'8 r4 \tuplet 3/2 {r8 d''8 d''8} 
      \bar "||" \mark \default c''4~ \tuplet 3/2 {c''8 d''8 d''8} c''4. d''16 d''16 
      | c''4. bes'8 aes'8 e'8 r4 
      | g'8. e'16 f'8 g'8 aes'8 c''8 r4 
      | r2. r8 e'16 f'16~ 
      | f'8 g'8~ g'16 a'16 bes'8 c''8 des''8 \tuplet 6/4 {es''4 b'16 c''16~} 
      | c''4 des''2 a'4~ 
      | a'4 bes'2~^\markup{\left-align \small vib} bes'8. bes'16~ 
      | bes'8. c''16~ c''4 des''8 r8 r4 
      \bar "||" r1 
      | r8 e'8 f'8 g'8 a'8 b'8 \tuplet 3/2 {c''4 des''8} 
      | d''8 e''8 d''8 c''8 b'4 g'4~^\markup{\left-align \small vib} 
      | g'8 r8 r2. 
      | r8 bes'8 fis'4 bes'4 ges'8 r8 
      | r2. f'8 g'8 
      | a'8 bes'8 c''8 d''8 c''4.. bes'16 
      | a'4 f'2~ f'8 r8 
      | r4 aes'8 f'8 g'8 f'8 es'8 d'8 
      | des'8 es'8 f'8 aes'8 c''8 r8 r4 
      | bes'4.^\markup{\left-align \small vib} g'8 aes'8 bes'8 c''8 des''8 
      | c''8 bes'8 aes'8 g'8 e'4 c'4 
      \bar "||" f'2^\markup{\left-align \small vib} c''8 r8 r4 
      | r8 e'8~ \tuplet 3/2 {e'8 e'8 c''8} r2 
      | c''4 c''4 c''4.^\markup{\left-align \small vib} des''8 
      | c''8 bes'8 aes'8 r8 r2 
      | r8. des''16~ des''8. g''16~ g''4 c''4 
      | es''4.^\markup{\left-align \small vib} des''8~ \tuplet 3/2 {des''8 es'8 f'8~} f'8. c''16~ 
      | c''8. c''16~ c''8. es''16~ es''4. c''8 
      | des''8 f'4 c''4 bes'8 r4 
      \bar "||" r2. des'8 es'8 
      | f'8 g'8 aes'8 bes'8 b'8 c''8 des''8 d''16 es''16 
      | c''8 c''8 \tuplet 3/2 {des''8 d''8 des''8} c''8 a'8 r4 
      | bes'4. d''8 r2 
      | b'8 c''4 aes'4 f'4 es'8 
      | des'8 es'8 f'8 aes'16 c''16~ c''16 b'8 bes'16~ bes'8 a'8 
      | aes'8 es'4. es'8 r8 r4 
      | r4 \tuplet 3/2 {r8 d'8 e'8~} e'8 f'8 \tuplet 3/2 {g'4 a'8~} 
      \bar "||" \mark \default a'8. bes'16~ bes'8. aes'16~ aes'2 
      | g'8. e'16~ e'4 e'4 f'4~ 
      | f'8. g'16\glissando  aes'4 bes'4. aes'8~ 
      | aes'8. f'16~ f'4.\bendAfter #-4  r8 r4 
      | r4 \tuplet 3/2 {c''4 des''8~} des''8 c''4 a'8 
      | bes'8 f'8 des'8 es'8 c'4 \tuplet 3/2 {a4 bes8} 
      | f'4. r8 r2 
      | r1 
      \bar "||" r8 es'8 f'8 g'8 aes'8 bes'8 c''4 
      | c''8 des''8 b'8 bes'16 aes'16~ aes'8 f'8 es'8 d'16 des'16 
      | c'8 r8 r2. 
      | r1 
      | r16 a'8 bes'16~ bes'8. fis'16~^\markup{\left-align \small vib} fis'2~ 
      | fis'16 es'8 f'16~ f'8 g'8 a'8 des''8 c''8 aes'8 
      | bes'16 a'8 g'16~ g'8 f'8 a'4 g'4 
      | f'8. d'16~ d'4. bes'4 c''8 
      | des''4 es'16 f'8 c''16 r2 
      | r16 bes'8 aes'16~ aes'16 g'8 bes'16 des''4 e''8 d''8 
      | es''8 c''8 des''4 \tuplet 3/2 {c''4 b'8} bes'8 a'8~ 
      | a'4 bes'8 c''8 des''4 c''8 bes'8 
      \bar "||" aes'4 f'4.^\markup{\left-align \small vib} r8 r4 
      | r4 c''8 des''8 c''4. bes'8 
      | aes'8 f'8 r4 f'4 r4 
      | r1 
      | c''4 es''4 des''4. e'8 
      | f'4. c''8 des''4. c''8 
      | bes'4 bes'4.^\markup{\left-align \small vib} r8 r4 
      | r1 
      \bar "||" r8 c''8~ c''8. c''16~ c''4.. c''16~ 
      | c''8. es''16~ es''4 c''4 bes'4 
      | es'4. es'8~^\markup{\left-align \small vib} es'4. ges'8~ 
      | ges'4. f'4. r4 
      | r4 des'8 es'8 f'8 g'8 aes'8 bes'16 c''16~ 
      | c''8 des''8 c''8 b'8 bes'8 a'16 aes'16~ aes'8 es'8~ 
      | es'4 r4 r8 c'8 es'16 f'8 g'16~ 
      | g'8 aes'8 bes'8 aes'8 g'4 e'4 
      \bar "||" f'4. r8 r2\bar  ".."
    }
    >>
>>    
}
