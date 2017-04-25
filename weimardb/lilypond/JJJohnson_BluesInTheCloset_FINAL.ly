\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues in the Closet"
  composer = "J.J. Johnson"
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
      | r1 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | f1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7|
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


      \tempo 4 = 234
      \set Score.currentBarNumber = #0
     
      | r2 r8 es'8 d'4 
      \bar "||" \mark \default bes2~ bes8 es'8 d'8 bes8~ 
      | bes8 bes8~ bes4. es'8 d'4 
      | bes2 es'4 \tuplet 3/2 {d'4 bes8} 
      | r2 r8 es'8~ es'8. des'16~ 
      | des'8 es'8 des'4 des'4 bes4 
      | bes4.^\markup{\left-align \small vib} r8 r4 r8 es'8 
      | \tuplet 3/2 {d'4 bes8~} bes8 es'8 \tuplet 3/2 {d'4 bes8} r4 
      | r8 g'8 \tuplet 3/2 {f'4 d'8} r4 r8 es'8 
      | d'8 bes8 r4 f4 r4 
      | r8 d'16 c'16~ c'8 f8 r4 \tuplet 6/4 {r4 e'16 es'16} 
      | d'8 bes4. bes4 r4 
      | r4 r8 d'8 es'4 d'4 
      \bar "||" \mark \default es'4 d'8 bes8~ bes2~ 
      | bes4. des'16 d'16~ d'8 f'16 g'16~ g'8 c''8 
      | bes'2~ bes'8 aes'4 f'8 
      | aes'8 f'8 r4 f'4 bes4 
      | es'8\glissando  f'4. es'8 f'4.^\markup{\left-align \small vib} 
      | r1 
      | f'8 g'16 a'16~ a'8 bes'8 a'8 g'16 f'16~ f'8 e'8 
      | d'4 d'4. g'4 f'8 
      | es'4 es'2~^\markup{\left-align \small vib} es'8 r8 
      | r2 a'8 bes'8~ \tuplet 3/2 {bes'8 g'8 a'8~} 
      | a'8 f'8 f'4.^\markup{\left-align \small vib} r8 r4 
      | r2 r8 g'8 g'8 a'8 
      \bar "||" \mark \default bes'8 c''8 a'4 bes'4 f'4 
      | a'8 bes'8 a'8 g'8 f'8 e'8 es'4 
      | d'8 des'8 bes8 a16 aes16~ aes8 bes8 c'8. f'16 
      | g'4 g'8 ges'8 r4 r16 bes8 e'16~ 
      | e'8\glissando  f'8~ f'2 \tuplet 3/2 {es'4 des'8} 
      | \tuplet 3/2 {es'4 des'8} r2. 
      | b'8 c''8~ c''16 a'8 f'16 d'8 r8 r8 bes'8~ 
      | bes'8 b'4 aes'8 e'8 des'8 r4 
      | r8 bes'8 a'8 g'8 \tuplet 3/2 {f'4 e'8} \tuplet 3/2 {es'4 bes8} 
      | d'8 f'4. des'8 f'4. 
      | c'8. c'16~ c'8 c'8 r2 
      | r4 r8 des'8 \tuplet 3/2 {d'4 f'8} g'4 
      \bar "||" \mark \default bes'4 bes'4 bes'4. bes'8~ 
      | bes'8 bes'4 bes'8 bes'4. bes'8~ 
      | bes'4 aes'8 f'16 aes'16~ aes'8 bes'4.~ 
      | bes'4 r2. 
      | \tuplet 3/2 {r8 c''8 des''8~} des''16 des''8 des''16~ \tuplet 3/2 {des''8 a'8 bes'8} bes'8 bes'8~ 
      | \tuplet 3/2 {bes'8 fis'8 g'8} g'8 g'8 es'8 e'8 e'8 e'8 
      | des'8 r8 r4 r16 a'8 bes'16 c''8 g'8~ 
      | g'8 a'8 \tuplet 3/2 {bes'4 a'8~} a'8 g'8 f'8 e'8 
      | \tuplet 3/2 {es'4 es'8~^\markup{\left-align \small vib}} es'4 es'8 r8 r4 
      | r4 r8 d'8 \tuplet 3/2 {b4 c'8~} c'4 
      | es'4 g'4 c''4 a'8 g'8 
      | f'8 e'8 es'8. d'16~ \tuplet 3/2 {d'8 des'8 a8~} a4 
      \bar "||" \mark \default c'8 bes8 \tuplet 3/2 {a4 bes8} d'8 f'4.^\markup{\left-align \small vib} 
      | r2 r8 e'8 g'8 bes'8~ 
      | bes'4.. aes'16~ aes'8 f'4^\markup{\left-align \small vib} r8 
      | r4 r8 e'8 f'8. bes16~ bes4 
      | \tuplet 3/2 {es'8\bendAfter #+4  f'4} d'8 r8 r2 
      | r4 r8 es'8\glissando  f'2~ 
      | f'8 r8 r8. f'16~ f'8\glissando  d'8 r4 
      | r4 r8 f'8 e'8 f'8 f'8 f'8~ 
      | \tuplet 3/2 {f'8 e'8 f'8} f'8 f'8 e'8 f'8 f'8 f'8 
      | fis'4 g'8 a8 r2 
      | r8 a16 bes16~ \tuplet 3/2 {bes8 d'8 f'8} a'8 bes'8 g'8 a'8 
      | f'8 aes'8 \tuplet 3/2 {es'4 e'8} d'4 es'4 
      \bar "||" \mark \default c'2 c'2 
      | c'4 g'4 f'4 \tuplet 3/2 {d'4 c'8~} 
      | c'8 c'4. c'8 r8 r4 
      | bes4 g8 r8 r4 r8 bes8~^\markup{\left-align \small vib} 
      | bes4 c'8 bes8 des'8 r8 r8. des'16~ 
      | des'4 es'8 e'8 r4 r8 bes8 
      | des'8 d'8 \tuplet 3/2 {es'4 e'8} f'8 g'8 a'8 bes'8 
      | a'8 g'8 f'8 e'8 es'8 a8 \tuplet 3/2 {bes4 des'8} 
      | d'8. f'16~ f'2 r4 
      | r2 aes'8 aes'8 aes'8 aes'8 
      | aes'8 f'8 r4 f'4 f'8 r8 
      | r2. r8 d'8 
      \bar "||" \mark \default a2. es'8 bes8~ 
      | bes4 \tuplet 3/2 {e'4 b8~} b4 \tuplet 3/2 {f'4 c'8} 
      | r2 f'8 g'8 aes'8 bes'8 
      | aes'8 r8 r4 g'8 ges'8 f'8 e'8 
      | es'8 bes16 bes16~ bes8 c'8 des'8 es'16 e'16 r4 
      | r8. bes16~ bes8 c'8 des'8 es'8 e'8 fis'16 g'16 
      | r1 
      | r8 a'8 bes'8 c''8 des''4 a'4 
      | bes'4 fis'4 g'4 es'8 e'8 
      | r4 des'4 a'8 bes'8 g'8 a'8 
      | f'8 g'8 es'8 f'8 d'8 r8 r4 
      | r4 c'8 c'8 c'8 c'16 c'16~ c'8 c'8 
      \bar "||" \mark \default c'8 c'4 c'4. c'8 des'8 
      | c'8 c'8 c'4 c'4 c'8 c'8 
      | c'8 c'8 r4 c'4.^\markup{\left-align \small vib} c'8 
      | r4 r8 g'4. f'4 
      | c'4.^\markup{\left-align \small vib} r8 r2 
      | r8 a8 bes8 c'8 des'8 es'8 \tuplet 3/2 {c'4 des'8} 
      | \tuplet 3/2 {bes4 c'8} des'8 es'8 f'8 r8 r4 
      | r4 r8 g'8 f'4 d'4 
      | es'2 es'8 r8 r4 
      | r2 g'4 bes'4 
      | c''4. des''8 c''4 bes'8 g'8~ 
      | g'4 g'8 g'8 g'8 g'8 g'8 g'8 
      \bar "||" \mark \default g'8 g'16 g'16~ g'4 g'4. g'8~ 
      | g'8 f'16 g'16~ g'4. g'8~ \tuplet 3/2 {g'8 f'8 g'8~} 
      | \tuplet 3/2 {g'8 f'8 d'8~} d'4 c'4 c'8 r8 
      | r2 r8 bes8 \tuplet 3/2 {des'8 es'8 f'8} 
      | es'4. d'8\glissando  es'4. des'8 
      | es'8 f'8 r4 r8 bes16 des'16~ \tuplet 3/2 {des'8 es'8 f'8} 
      | es'4. des'16 es'16~ \tuplet 3/2 {es'8 des'8 bes8~} bes4 
      | bes4 bes8 r8 r2 
      | r8 c'8~ \tuplet 3/2 {c'8 d'8 es'8~} \tuplet 3/2 {es'8 f'8 g'8~} g'8 bes'8 
      | a'8 a'4 aes'8 g'8. g'16~ g'8 aes'8 
      | a'8. a'16~ a'8 aes'8 g'8. g'16~ g'8 aes'8 
      | \tuplet 3/2 {a'4 a'8~} a'8 a'8 g'8 g'4 g'8 
      \bar "||" \mark \default f'4 d'8 e'8 \tuplet 3/2 {f'4 bes'8~} bes'4 
      | es'8 f'8 g'8 a'8 r4 r8 g'8 
      | f'8 g'8 es'8 f'8 d'8 es'8 \tuplet 3/2 {c'4 d'8} 
      | bes4 c'8 aes8 r2 
      | g16 aes16 bes8 \tuplet 3/2 {bes8 a8 g8} g8 r8 r4 
      | \tuplet 3/2 {bes4 c'8~} c'8 des'8~ \tuplet 3/2 {des'8 es'8 e'8~} e'8 g'8 
      | \tuplet 3/2 {f'4 d'8~} d'4 d'4.^\markup{\left-align \small vib} r8 
      | r1 
      | des''8 d''2..~ 
      | d''8 c''4 bes'8 a'8 g'8 \tuplet 3/2 {f'4 es'8} 
      | d'8 f'8 g'4 bes'4 bes'8 r8 
      | r4 r8 aes'4. f'4 
      \bar "||" \mark \default aes'8 a'8 bes'8. bes'16~ bes'8\glissando  a'4 f'8 
      | g'8. bes'16~ bes'8 bes'4 f'8 g'4 
      | aes'8 bes'8 r2. 
      | aes'8. bes16 d'8 g'8\bendAfter #+4  fis'16 g'8. bes4 
      | e'8\glissando  f'2..~ 
      | f'2 es'8 f'8 g'8 f'8~ 
      | f'8 f'4.^\markup{\left-align \small vib} f'8 r8 r4 
      | r2. r8 f'8 
      | e'8 f'8 r2 r8 f'8 
      | e'8 f'8 r2 r8 f'8 
      | \tuplet 3/2 {es'8 e'8 f'8} f'4 \tuplet 3/2 {es'8 e'8 f'8} f'4 
      | \tuplet 3/2 {es'8 e'8 f'8} f'4 \tuplet 3/2 {es'8\glissando  e'8 f'8} f'8 r8 
      \bar "||" \mark \default r4 f'8 e'8 f'8 g'8 r4 
      | f'4.^\markup{\left-align \small vib} d'8 r4 r8 es'8 
      | d'8 d'8 c'8 c'16 bes16~ bes4 a8 aes8 
      | r1 
      | r8 bes8 c'8. a16 bes4 c'8 a8 
      | bes4 c'8 bes8 r4 r8 des'8 
      | \tuplet 3/2 {d'4 f'8} g'4 f'4 g'8 f'8 
      | aes'8. g'16 g'8 f'8 r4 r8 d''8 
      | c''4. bes'8 a'4. g'8 
      | f'8. g'16~ g'8 es'8 r2 
      | des'8 d'8 es'8 f'8 ges'8 bes'8 r4 
      | bes'2^\markup{\left-align \small vib} r4 r8. des'16\glissando  
      \bar "||" \mark \default d'4.. f'16~ f'8 r8 r8 d'8 
      | \tuplet 3/2 {es'4 g'8} bes'8. d''16~ d''8. c''16~ c''8. bes'16~ 
      | bes'8 a'8 aes'4 g'8 f'4 e'8~ 
      | e'8 ges'8 aes'4 ges'8 e'8\glissando  bes4 
      | es'8 f'8 g'4 f'8 es'4.^\markup{\left-align \small vib} 
      | r1 
      | r16 c''8 bes'16 a'8 g'8 f'8 e'8 d'8 c'8 
      | b4 r4 r8 aes'8 g'8 f'8 
      | es'4 es'2 es'4~ 
      | es'4. d'8 es'8 d'8 es'8 d'8 
      | \tuplet 3/2 {es'4 es'8} d'4 es'8 r8 r4 
      | r1 
      \bar "||" \mark \default es'2 d'8 es'8 f'8 c'8~ 
      | c'8 bes4. bes8 r8 r4 
      | r8 es'4. d'8 e'8 f'4 
      | c'4.^\markup{\left-align \small vib} r8 r2 
      | r8 aes'4\glissando  des'8~ \tuplet 3/2 {des'8 g'8 ges'8} f'8 e'8 
      | es'8 d'8 des'4 c'8 a8 \tuplet 3/2 {bes8 d'8 f'8~} 
      | f'16 a'8 g'16~ g'8 g'4 f'4.~ 
      | f'1~ 
      | f'4. r8 r2 
      | r8 g'8 a'8 bes'4 c''8 d''4 
      | c''8 bes'8 a'8 bes'8~ bes'16 g'8 a'16 f'8 r8 
      | r2. r8. bes'16~ 
      \bar "||" \mark \default bes'8 bes'8 \tuplet 3/2 {bes'8 bes'8 bes'8~} bes'2~ 
      | bes'4~ bes'16 a'8 g'16~ g'16 f'8 e'16~ e'16 d'8 c'16 
      | bes8 a8 aes8. des'16 es'8 g'8 f'8 es'8 
      | d'8 r8 r2 \tuplet 3/2 {r8 g8 bes8} 
      | des'8 es'8 c'8 des'16 bes16 r2 
      | r4 r8 e'4. des'8 e'8~ 
      | e'8. e'16~ e'8 e'8 des'8 e'8 des'4 
      | e'4 des'4 e'4 des'8 e'8~ 
      | e'4 e'8 e'8 des'8 e'8~ e'8. e'16~ 
      | e'4 e'4..^\markup{\left-align \small vib} des'16~ des'8 e'8~ 
      | e'8 des'8 e'4 des'8 r8 r4 
      | r4 r8 des'8 d'8 f'16 g'16~ g'8 bes'8~ 
      \bar "||" \mark \default bes'8 g'8 bes'4 g'8 bes'4 g'8 
      | bes'4 g'8 bes'4 g'8 bes'4 
      | g'8 bes'4. g'8.\glissando  es'16 r4 
      | r2 des''8 b'8 c''8 bes'8 
      | r1 
      | r4 aes'8. f'16 g'4. ges'8~ 
      | ges'8 d'8 f'4. e'4 des'8 
      | es'4. d'4 c'8 d'8 r8 
      | r8 c'4. b8 r8 r4 
      | bes8 des'8 d'8 e'8 f'4 f'4 
      | g'4. f'8 r4 r8 e'8 
      | es'4 bes8 des'16 d'16~ d'8 f'16 g'16~ g'4 
      \bar "||" bes'4~ \tuplet 6/4 {bes'16 g'8 f'16 d'16 bes16~} bes4\glissando  f8 r8\bar  ".."
    }
    >>
>>    
}
