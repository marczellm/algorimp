\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Alone Together"
  composer = "Paul Desmond"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \minor
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
      | d2:min5-7 g2:7 
      | c1:min6 | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- | c1:min6 | g2:min5-7 c2:9- | f1:min7 | s1 
      | a2:min7 d2:7 | f2:min7 bes2:7 | es1:maj | d2:min5-7 g2:7 | c1:maj | d2:min5-7 g2:7 | c1:min6 | d2:min5-7 g2:9- 
      | c1:min6 | d2:min5-7 g2:9- | c1:min6 | g2:min5-7 c2:9- | f1:min7 | s1 | a2:min7 d2:7 | f2:min7 bes2:7 
      | es1:maj | d2:min5-7 g2:7 | c1:maj | s1 | g1:min5-7 | c1:9- | f1:min6 | s1 
      | f1:min5-7 | bes1:9- | es1:maj | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- 
      | c1:min6 | aes2:7 g2:7 | c1:min6 | d2:min5-7 g2:7 | c1:min6 | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- 
      | c1:min6 | g2:min5-7 c2:9- | f1:min7 | s1 | a2:min7 d2:7 | f2:min7 bes2:7 | es1:maj | d2:min5-7 g2:7 
      | c1:maj | d2:min5-7 g2:7 | c1:min6 | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- | c1:min6 | g2:min5-7 c2:9- 
      | f1:min7 | s1 | a2:min7 d2:7 | f2:min7 bes2:7 | es1:maj | d2:min5-7 g2:7 | c1:maj | s1 
      | g1:min5-7 | c1:9- | f1:min6 | s1 | f1:min5-7 | bes1:9- | es1:maj | d2:min5-7 g2:9- 
      | c1:min6 | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- | c1:min6 | aes2:7 g2:7 | c1:min6 | d2:min5-7 g2:7 
      | c1:min6 | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- | c1:min6 | g2:min5-7 c2:9- | f1:min7 | s1 
      | a2:min7 d2:7 | f2:min7 bes2:7 | es2:maj s2 | d2:min5-7 g2:7 | c1:maj | d2:min5-7 g2:7 | c1:min6 | d2:min5-7 g2:9- 
      | c1:min6 | d2:min5-7 g2:9- | c1:min6 | g2:min5-7 c2:9- | f1:min7 | s1 | a2:min7 d2:7 | f2:min7 bes2:7 
      | es1:maj | d2:min5-7 g2:7 | c1:maj | s1 | g1:min5-7 | c1:9- | f1:min6 | s1 
      | f1:min5-7 | bes1:9- | es1:maj | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- | c1:min6 | d2:min5-7 g2:9- 
      | c1:min6 | aes2:7 g2:7 | c1:min6 | d2:min5-7 g2:7 | c1:min6|
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


      \tempo 4 = 200
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 d'8 b8 \tuplet 3/2 {g4 bes8} es'8 f'8~ 
      \bar "||" \mark \default f'16 g'8 f'16 r4 r8 g'4 es'8 
      | f'8 g'8 aes'8 a'8 b'8. a'16~ a'8 b'8~^\markup{\left-align \small vib} 
      | b'4 g'8 f'8 es'8 c'8 d'8 b8~ 
      | b8. c'16 es'8 f'8 ges'8 f'8 es'8 c'8 
      | g4 r4 c'4..^\markup{\left-align \small vib} d'16~^\markup{\left-align \small vib} 
      | d'4. g'8 r2 
      | r2 \tuplet 6/4 {c'4~ c'16 d'16~} d'4 
      | f'4.^\markup{\left-align \small vib} c''4.^\markup{\left-align \small vib} r4 
      | r8 c'8 es'8 fis'8 a'8. d''16 \tuplet 3/2 {f''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 c''8. aes'16 bes'8 g'8 aes'8 bes'16 aes'16 
      | f'4 g'4. f'8 d'8 es'8 
      | c'8. d'16~ d'8 b8 c'8 d'16 c'16 b4 
      | d'4.^\markup{\left-align \small vib} b8 c'8. g'16~ g'8 r8 
      | r1 
      \bar "||" f''4 es''8 d''8~ \tuplet 6/4 {d''16 c''4 g'16~} g'8 f'8~^\markup{\left-align \small vib} 
      | f'4~ f'16 es'8 d'16 r4 r8. c'16~^\markup{\left-align \small vib} 
      | c'4 \tuplet 3/2 {es'4 fis'8} \tuplet 3/2 {g'4 c''8~} c''8 a'8~^\markup{\left-align \small vib} 
      | a'4 f'4 d'8. b16~ b8 c'8 
      | r1 
      | bes'8 c''8 des''8 bes'8 \tuplet 3/2 {g'4 aes'8} \tuplet 3/2 {bes'4 c''8~} 
      | c''8 f'4. g'4.^\markup{\left-align \small vib} aes'8 
      | e'8. f'16 g'8 aes'8 bes'8 b'8 c''8 es''8~ 
      | \tuplet 3/2 {es''8 d''8 a'8} \tuplet 3/2 {fis'4 es'8~} es'16 b8 c'16~ c'8 d'8~^\markup{\left-align \small vib} 
      | d'4 fis'8 r8 r2 
      | r8 g'4.^\markup{\left-align \small vib} bes'8 g'8 f'8 es'8 
      | d'4 f'8 a'8 c''8. b'16~ b'8 g'8~^\markup{\left-align \small vib} 
      | g'4. f'8 e'8. d'16~ d'8 r8 
      | r1 
      \bar "||" r8 bes8 des'8 ges'8 bes'4 \tuplet 3/2 {c''4 des''8~^\markup{\left-align \small vib}} 
      | des''4 c''8 bes'8 aes'8 bes'8~ bes'16 g'8 aes'16~^\markup{\left-align \small vib} 
      | aes'4 g'8 ges'8 f'8 c'8 g4 
      | c'8 r8 r2. 
      | r8 f'8 g'8 aes'8 bes'8 b'8 aes'8 b'8 
      | bes'8 r8 r8 aes'4.^\markup{\left-align \small vib} bes'4~^\markup{\left-align \small vib} 
      | bes'4 f'8 g'8 aes'8 bes'8 g'8 bes'8 
      | aes'4. f'4 f'8 g'4~^\markup{\left-align \small vib} 
      \bar "||" g'8 c'8 d'8 es'8 f'8 g'8~ \tuplet 3/2 {g'8 es'8 g'8} 
      | f'4. a8 r4 b4 
      | \tuplet 3/2 {b8 d'4~} d'8. c'16~ c'8 g'4. 
      | g'4^\markup{\left-align \small vib} r2. 
      | r2 ges'8 a'8 c''8 d''8 
      | es''8 d''8 c''4 d''4 g'4 
      | es'2^\markup{\left-align \small vib} f'8 aes'4 es''8 
      | \tuplet 6/4 {d''4~ d''16 g'16} r2. 
      \bar "||" \mark \default g''8 f''8 es''8 d''8 c''4 \tuplet 3/2 {g'4 a'8~} 
      | a'8 c''4.^\markup{\left-align \small vib} b'4 d''8. g'16~ 
      | g'8 d''4.^\markup{\left-align \small vib} c''8 bes'8 g'8 es'8 
      | \tuplet 3/2 {f'4 fis'8~} fis'8 g'4. d'8 g8~^\markup{\left-align \small vib} 
      | g2. r4 
      | r4 bes16 des'8 a'16~ a'8. des''16~^\markup{\left-align \small vib} des''4 
      | c''8 b'8 bes'8 a'8 aes'8 g'8 \tuplet 3/2 {aes'4 aes'8~^\markup{\left-align \small vib}} 
      | aes'4 aes'8. aes'16~ aes'8 aes'4.\glissando  
      | f'4.^\markup{\left-align \small vib} r8 r2 
      | r4 r8. fis'16~^\markup{\left-align \small vib} fis'4 g'4 
      | bes'4.^\markup{\left-align \small vib} g'8 f'4. g'8~^\markup{\left-align \small vib} 
      | g'4. e'8 d'4 c'8 b8~^\markup{\left-align \small vib} 
      | b4. g8 \tuplet 3/2 {a4 b8~} b8 d'8~ 
      | d'8 r8 r2. 
      \bar "||" r8 c'8~^\markup{\left-align \small vib} c'2 r4 
      | r8 d'8 es'8 f'8 g'4 \tuplet 3/2 {g'4 g'8~^\markup{\left-align \small vib}} 
      | g'2. r4 
      | r8 f'8 \tuplet 3/2 {es'4 c'8~} c'8 d'8 b8 c'8~ 
      | c'8 d'8 es'8 f'8 g'8 r8 r4 
      | r1 
      | r4 r8 c''4.^\markup{\left-align \small vib} f''8 c''8 
      | bes'8 a'8 aes'8 g'8 \tuplet 3/2 {f'4 ges'8} a'8 c''8 
      | es''4 d''8 des''8 c''8 a'8 \tuplet 3/2 {fis'4 fis'8} 
      | bes'4 a'8 aes'8 g'8 e'8 b8. aes16 
      | g4 bes8 d'8 \tuplet 3/2 {f'4 d'8} es'8 f'8 
      | g'4 aes'8 f'8 \tuplet 3/2 {cis'4 aes8} \tuplet 3/2 {g4 g8~} 
      | g16 b8 d'16~ d'8 c'8 e'8 g'8 b'8 d''8 
      | b'8 g'8 e'8 b8 d'8 des'8 c'8 b8 
      \bar "||" bes8 des'8 fis'8 g'8 aes'8. a'16~ a'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 g'8 aes'8 r4 r8 g'8~^\markup{\left-align \small vib} 
      | g'4~ g'16 e'8 f'16 r2 
      | r4 r8 g'8~ g'16 aes'8 c''16 es''8 aes''8~ 
      | aes''8.\glissando  g''16~ g''8 f''8~ f''16 es''8 b'16~ b'4 
      | bes'4.^\markup{\left-align \small vib} g'8 \tuplet 3/2 {aes'4 a'8} bes'8 b'8 
      | c''8 bes'8 g'4 aes'8 g'8 \tuplet 3/2 {es'4 d'8} 
      | a'8 f'8 d'8. c'16 b8 d'8 f'8 aes'8 
      \bar "||" g'4 es'4 d'2~^\markup{\left-align \small vib} 
      | d'4.. d'16~ d'2~ 
      | d'4~ \tuplet 6/4 {d'4~ d'16 g16~^\markup{\left-align \small vib}} g4. r8 
      | r1 
      | c'8. d'16 es'4. c'16 es'16~ es'8 f'8 
      | ges'8 f'8 es'4 \tuplet 3/2 {d'4 c'8} \tuplet 3/2 {g4 c'8} 
      | r1 
      | r2 r8. c'16 d'8 b16 c'16 
      \bar "||" \mark \default d'16 es'8.~ es'8 g'4.^\markup{\left-align \small vib} c''4 
      | a4. f'4.^\markup{\left-align \small vib} b'4 
      | g8 r8 r8 es'4.^\markup{\left-align \small vib} c''4 
      | d'8 f'8 \tuplet 3/2 {a'4 c''8} b'8 d''8 g'8 r8 
      | r2. r8 c'8 
      | \tuplet 3/2 {des'4 f'8} g'8 bes'8 c''8. des''16~ des''8 c''8~^\markup{\left-align \small vib} 
      | c''4~ \tuplet 6/4 {c''16 bes'4 c''16~} c''8. bes'16~^\markup{\left-align \small vib} bes'4 
      | aes'8 bes'8 g'8 aes'8 f'8 g'8 aes'4 
      | fis'4~ fis'16 es'8 c'16~ c'4 r4 
      | r2 r8 bes'8 c''8 es''8 
      | d''8 bes'8 c''8 aes'8 bes'2~^\markup{\left-align \small vib} 
      | bes'8 g'8 a'8 c''8 b'8 g'8 a'8 f'8 
      | g'4..^\markup{\left-align \small vib} e'16 f'8 fis'8 g'8 e'8 
      | d'8 des'16 c'16 b8 c'16 des'16 c'16 d'16 c'8 b8 d'16 c'16 
      \bar "||" d'2..^\markup{\left-align \small vib} g'8~^\markup{\left-align \small vib} 
      | g'2 r2 
      | r8. d'16~ d'8 d'8~ \tuplet 6/4 {d'8 d'8. b16~} b8 c'8 
      | bes'4\glissando  \tuplet 3/2 {aes'8 es'8 b8~} \tuplet 3/2 {b8 bes8 aes8~} aes8 aes8 
      | d'8. b16~ b8 d'8 es'8 f'8~ f'16 g'8 aes'16 
      | bes'4 \tuplet 3/2 {c''4 c''8~^\markup{\left-align \small vib}} c''4. r8 
      | r1 
      | r4 \tuplet 3/2 {f''4 e''8} c''8 es''8 \tuplet 3/2 {d''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 b'4 c''4 f'4 
      | aes'8. a'16~ a'8 bes'8~ bes'8. bes16~ bes8. bes16 
      | fis'4 g'4 aes'4 c'4 
      | f'4 \tuplet 3/2 {fis'4 g'8~} g'8 c'4 e'8~^\markup{\left-align \small vib} 
      | e'2 r2 
      | r8 d'8 b8 c'8 e'8 g'4 a'8~^\markup{\left-align \small vib} 
      \bar "||" a'2. r4 
      | r8 bes'8 \tuplet 3/2 {c''4 des''8} c''4 \tuplet 3/2 {bes'4 g'8~^\markup{\left-align \small vib}} 
      | g'2. r4 
      | c'8 f'8 g'8 aes'8 bes'4 b'8. aes'16~^\markup{\left-align \small vib} 
      | aes'2. r4 
      | r8 aes8~ aes16 b8 d'16~ d'16 e'8 aes'16~ aes'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 g'8 aes'8~ aes'16 f'8 fis'16~ fis'8 g'8~^\markup{\left-align \small vib} 
      | g'4 \tuplet 3/2 {e'4 c'8} b8. f'16~ f'8 g'8~^\markup{\left-align \small vib} 
      \bar "||" g'2.. f'16 es'16 
      | d'8 d'8~^\markup{\left-align \small vib} d'4. r8 r4 
      | r8 c'8 d'8 b8 \tuplet 3/2 {c'4 d'8} es'8 f'8~ 
      | f'8 a8 c'8 b4 r8 r4 
      | r8 g'4.\glissando  f'8 es'8 c'8 aes8 
      | \tuplet 3/2 {a4 c'8} es'8 ges'8 f'8 es'8 c'8 d'8 
      | es'8 c'8 d'8 b8 c'8 d'8 es'8 f'8 
      | ges'8 f'8 es'4 f'8 es'8 c'16 bes16 c'8~^\markup{\left-align \small vib} 
      \bar "||" \mark \default c'2.. r8\bar  ".."
    }
    >>
>>    
}
