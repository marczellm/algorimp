\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Mr. P.C."
  composer = "John Coltrane"
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
      | s4 r2. 
      | c1:min7 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | aes1:7 | g1:7 | c1:min7|
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


      \tempo 4 = 258
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8. g16~ g8 a8 b8 d'8 
      \bar "||" \mark \default c'8 b8 \tuplet 3/2 {c'4 es'8} d'8 cis'8 \tuplet 3/2 {d'4 f'8~} 
      | \tuplet 3/2 {f'8 es'8 d'8} es'8 g'8 f'4 g'8 es'8~^\markup{\left-align \small vib} 
      | es'4 r2. 
      | \tuplet 3/2 {r8 a'8\glissando  c''8~} c''2 b'8 bes'8 
      | aes'8 es'8 e'8 g'8 f'8 g'8 aes'8 bes'8 
      | g'8 f'8 \tuplet 3/2 {es'4 c'8} d'2~ 
      | d'4. c'8 d'8. a16~ a8 r8 
      | r2 r8 ges8 aes8 bes8 
      | c'8 es'8 ges'8 aes'8 bes'2~^\markup{\left-align \small vib} 
      | bes'8 g16 a16~ a16 b16 cis'16 es'16 g'8 a'8 bes'4~^\markup{\left-align \small vib} 
      | bes'4. aes'8 g'8 es'8 r4 
      | r4 r8. a'16\glissando  b'2 
      \bar "||" \mark \default \tuplet 3/2 {b'4 g'8} a'8 b'8 a'8 f'8 g'8 a'16 g'16~ 
      | \tuplet 3/2 {g'8 es'8 f'8~} f'16 g'8 f'16~ f'4.. es'16 
      | \tuplet 3/2 {f'8 es'8 f'8} es'8 c'16 es'16~ \tuplet 3/2 {es'8 ges'8 f'8} es'16 f'16 g'16 ges'16 
      | \tuplet 3/2 {e'8 g'8 c''8} b'8 bes'4 r8 r4 
      | r4 r8 bes'16\glissando  c''16~ c''4 g'8 bes'8 
      | aes'8 es'8 \tuplet 3/2 {e'4 g'8} f'8 c'8 bes8 aes8 
      | g8 a8 b8 d'8 c'8 d'8~ d'16 es'8 f'16 
      | g'4 d'8 f'8 es'8 c'8 \tuplet 3/2 {g4 ges8} 
      | aes8 bes8 c'16 es'16 ges'16 aes'16 bes'4 \tuplet 3/2 {bes8 b8 des'8} 
      | es'8 g'8 \tuplet 3/2 {b'8 es''4~} es''4. d''8 
      | c''8 b'8 g'8 a'4.^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" \mark \default r8 f''16 g''16~ g''2~ g''8 f''8 
      | es''4 g'16 a'8 d''16~ d''4. des''8 
      | \tuplet 3/2 {b'4 g'8~} \tuplet 3/2 {g'8 a'8 b'8} g'8 es'8 r4 
      | r4 r8 bes'8\glissando  des''4 c''4~^\markup{\left-align \small vib} 
      | c''4. bes'8 aes'8 es'8 e'8 g'8 
      | f'8 g'8 aes'8 f'8 bes'4.^\markup{\left-align \small vib} aes'8~ 
      | aes'16 g'8 es'16 d'8 f'8 es'8 c'8 b8 d'8 
      | \tuplet 3/2 {c'4 g8} f8 es8 g4.^\markup{\left-align \small vib} es8 
      | ges4.. aes16 \tuplet 3/2 {bes8 c'8 es'8} aes'8 bes'8~ 
      | bes'8 bes8~ bes8. b16~ b16 g'8 d'16 b8 aes8 
      | d'4. c'8 d'8 es'4\bendAfter #-4  r8 
      | r1 
      \bar "||" \mark \default r8 c'8 b8 d'8 c'8 d'8 \tuplet 3/2 {es'4 f'8} 
      | g'8 es'8 c'8. aes16 f'8 d'8 b8 d'8~ 
      | d'16 c'16 g16 a16~ \tuplet 3/2 {a8 bes8 b8} c'8 d'8 es'8 f'8 
      | g'8 c'8~ \tuplet 3/2 {c'8 e'8 g'8} c''4. bes'8 
      | aes'8 f'4 aes'8 bes'2~^\markup{\left-align \small vib} 
      | bes'4~ bes'16 g'8 aes'16 g'8 es'8 b8 aes8 
      | g8 a8 b8 d'8 c'8 d'8 es'8 f'8 
      | g'8 d'8 f'8 d'16 es'16~ es'8 c'8 r4 
      | \tuplet 3/2 {r8 ges8 aes8} \tuplet 3/2 {bes8 c'8 es'8} \tuplet 3/2 {ges'8 bes'8 des''8~} des''8 r8 
      | r8 b8 d'8 a'8 \tuplet 3/2 {g'8 a'8 g'8} aes'8 c''8 
      | b'4 r4 c''8 d''4 c''8 
      | b'8 aes'8 g'8 ges'8 \tuplet 3/2 {f'4 es'8} d'8 c'8 
      \bar "||" \mark \default b8 g8 a8 b8 \tuplet 3/2 {c'4 d'8} es'8 f'8 
      | g'8 c''8 g'8 f'8~^\markup{\left-align \small vib} f'4. es'8 
      | g'8 es'8 d'8 f'8 es'8 c'8 r4 
      | r2 e'8 es'8 e'8 g'8 
      | f'8 c'8 f'8 aes'8 g'8 es'8 \tuplet 3/2 {g'4 bes'8} 
      | aes'8 es'8~ es'16 c'8 aes16 d'8 c'8 \tuplet 3/2 {bes4 aes8} 
      | g8 a8 b8 d'8 c'8 d'8 es'8 f'8 
      | g'8 es'8 f'8 c'8 es'8 c'8 g4 
      | \tuplet 3/2 {f8 ges8 aes8} bes8 c'8 es'8 ges'8 aes'8 bes'8 
      | b'8 r8 r4 r16 bes'16 c''16 cis''16 d''8. c''16 
      | b'8 g'8 a'8 b'8 a'8 f'8 r4 
      | r4 \tuplet 3/2 {r8 es'8 f'8~} f'2~ 
      \bar "||" \mark \default f'4. es'8 f'8. es'16~ es'8 f'8~ 
      | f'4 es'4 f'4 r4 
      | r8 g'8 ges'8 es'8 d'8 f'8 es'8 c'8 
      | b4 b8 d'8 c'8 d'8 e'8 g'8 
      | f'8 e'8 es'8 d'8 c'8 aes8 \tuplet 3/2 {g4 aes8} 
      | bes8 c'8 d'8 f'8 bes'4.^\markup{\left-align \small vib} aes'8 
      | g'8 es'8 d'8 f'8 es'8 c'8 r4 
      | r4 r8 aes'16\glissando  bes'16~ bes'8 bes'4.~ 
      | bes'4. ges'8 bes'8 des''4 bes'8 
      | fis'8 es'8~ es'16 b'16 c''4 a'8 \tuplet 3/2 {f'8 d'8 f'8} 
      | \tuplet 3/2 {c''8 b'4~^\markup{\left-align \small vib}} b'2~ \tuplet 6/4 {b'8 g'8 a'16 b'16} 
      | a'8 f'8 d'8 b8 g'4 r4 
      \bar "||" \mark \default r8. g'16~ g'16 a'8 b'16 c''8 c''8 d''4~ 
      | d''2 c''16 d''8. es''8\bendAfter #-4  d''8 
      | r4 r8. c''16 d''4. des''8 
      | b'16 bes'8.~ bes'8 e'8 aes'16 bes'16 es''4. 
      | des''8 c''8 g'8. bes'16~ bes'16 g'8 es'16 e'8 g'8 
      | f'8 aes'8 \tuplet 3/2 {c''4 es''8~} es''8 es''8 g''4~ 
      | g''4 bes'8 f''8 \tuplet 3/2 {es''8 d''8 aes'8~} aes'8 r8 
      | r4 r8 b'8 d''2~ 
      | d''8 bes'8 \tuplet 3/2 {ges'8 d'8 bes8} \tuplet 3/2 {d8 es8 ges8} a16 d'16 ges'16 aes'16 
      | bes'4 \tuplet 3/2 {a8 b8 cis'8} es'16 g'16 b'8 es''4~ 
      | es''4 b'8 d''8 c''8 es'4 r8 
      | r4 r8 bes'16 c''16~ c''2 
      \bar "||" \mark \default \tuplet 3/2 {c''4 g'8} b'8 d''8~ d''16 c''8 g'16 \tuplet 3/2 {a'8 b'8 d''8} 
      | \tuplet 3/2 {des''8 c''8 a'8} b'8 d''8 des''16 c''8 g'16 \tuplet 3/2 {es'4 c'8~} 
      | c'16 b8 a16 \tuplet 3/2 {b4 d'8} c'8 d'8 es'8 f'8~ 
      | f'16 e'8 c'16~ c'8 bes'8 es''4 des''8. b'16~ 
      | b'16 c''8 fis'16~ fis'8 g'16 bes'16 aes'8 es'8 \tuplet 3/2 {e'4 g'8} 
      | f'8 aes'8~ aes'16 c''8 es''16~ es''8. es''16~ es''16 d''16 des''16 b'16~ 
      | \tuplet 6/4 {b'16 c''4 a'16~} a'8 r8 r4 r8 bes'8 
      | b'4 c''16 b'16 a'8 \tuplet 3/2 {b'8 g'8 es'8} b4 
      | \tuplet 3/2 {es'4 c'8} bes4 \tuplet 3/2 {c'4 des'8} es'8 f'8 
      | \tuplet 3/2 {d'4 e'8~} e'8 f'16 g'16~ \tuplet 3/2 {g'8 a'8 c''8} b'8 d''8 
      | bes'8 aes'8 \tuplet 3/2 {es'4 f'8} g'8 es'8 c'4 
      | f'8 r8 r4 r8 g'8 ges'8 f'8 
      \bar "||" \mark \default es'4 c'4 c'4 c'4 
      | c'4. fis'8\glissando  g'4. f'8 
      | \tuplet 3/2 {es'8 c'8 es'8} \tuplet 3/2 {g'8 es'8 g'8~} g'16 bes'8 d''16~ d''4 
      | \tuplet 3/2 {c''8 bes'4~} bes'8. g'16~ g'16 es'8 c'16~ c'8 r8 
      | r8. f16~ f16 aes16 c'16 es'16 \tuplet 3/2 {g'8 bes'4~} bes'4~ 
      | bes'8\glissando  g'8 aes'16 g'16 f'16 es'16 d'16 c'16 bes16 aes16~ \tuplet 6/4 {aes16 g16 f16 es8 d16} 
      | c4 r4 r8. d16~ d16 f16 e16 es16 
      | \tuplet 3/2 {g8 a8 b8} \tuplet 6/4 {c'8 d'8 e'16 f'16} \tuplet 3/2 {g'8 a'8 b'8~} b'8 r8 
      | r8. e16 ges16 aes16 bes16 c'16 \tuplet 3/2 {d'8 f'8 aes'8} bes'4 
      | bes8 cis'8 es'16 g'8 b'16~ b'8 es''4.~ 
      | es''2 b'8. d''16~^\markup{\left-align \small vib} d''4~ 
      | d''4 r2. 
      \bar "||" \mark \default bes'16 b'16 cis''16 d''16~ d''8 des''16 c''16 \tuplet 3/2 {b'4 aes'8} g'8 ges'8 
      | f'8 es'8 d'8 c'8 b8. a16 b8 d'8 
      | \tuplet 3/2 {c'4 d'8} es'8 f'8~ \tuplet 3/2 {f'8 g'8 aes'8~} aes'8 b'8 
      | c''4 g'8 aes'8 g'8 f'8 e'8 g'8 
      | f'8 c'8 aes8 g8 c'4 g8 c'8~ 
      | c'16 bes8 c'16~ c'8 d'8 a'8 aes'8 g'8 f'8 
      | \tuplet 3/2 {es'4 g'8} a'8. d''16~ d''8. d''16 b'8 r8 
      | r2 c''4..^\markup{\left-align \small vib} aes'16~ 
      | aes'16 bes'8 ges'16 es'4 \tuplet 3/2 {bes8 f'8 ges'8} r4 
      | r4 \tuplet 3/2 {bes'8 d''4} cis''16 b'8 aes'16 g'8 f'8 
      | es'8 c'16 es'16 g'8 d'8 f'8 aes'8 r4 
      | r4 \tuplet 3/2 {r8 ges'8\glissando  aes'8~} aes'4~ \tuplet 3/2 {aes'8 g'8 f'8} 
      \bar "||" \mark \default es'4 b8 d'8 c'8 d'4 f'8~ 
      | f'16 fis'8 g'16 aes'8 fis'8 g'8 es'8 d'8 f'8 
      | es'8 c'8 b8 d'8 c'8 d'8 r4 
      | c''8 fis'8 g'8 bes'8 aes'8 g'8 \tuplet 3/2 {e'8 c'4} 
      | g'8 f'8~^\markup{\left-align \small vib} f'2~ f'8 es'8 
      | f'4~ f'16 es'8 f'16~ f'16 es'8 c'16 bes8 aes8 
      | g8 a8 b8 d'8 c'4 d'8 es'8 
      | r4 r8 d'8 es'4. d'8 
      | es'8 f'16 ges'16 \tuplet 3/2 {aes'8 bes'8 des''8} c''4. bes'8 
      | d'8 f'8 \tuplet 3/2 {g'8 a'8 c''8} b'4.^\markup{\left-align \small vib} aes'8 
      | \tuplet 3/2 {g'8 es'4} r2. 
      | r4 bes'16 b'8.~ b'4. g'8 
      \bar "||" \mark \default \tuplet 3/2 {b'8 c''4~} c''4 es''4 g''4~ 
      | g''8. f''16~ f''8 es''4 f''8 g''4 
      | \tuplet 3/2 {f''4 es''8~} es''2. 
      | c''4. bes'8 c''4.. bes'16 
      | aes'8 es'8 e'8 g'8 f'8 aes'8 c''8. des''16 
      | es''8 c''8~ c''16 aes'8 g'16~ g'8 f'8 r4 
      | r8 g'8~ g'16 ges'8 f'16 e'8 es'8 d'8 c'8~ 
      | \tuplet 3/2 {c'8 b8 c'8} d'8 es'8 \tuplet 3/2 {c'4 d'8} es'8. f'16~ 
      | f'16 ges'8 aes'16~ aes'16 bes'8 des''16~ \tuplet 3/2 {des''8 bes'8 ges'8} es'4 
      | cis'16 d'8 e'16~ e'16 f'8 d'16 g'8 es'8 b4 
      | es'8 c'8 \tuplet 3/2 {es'8 g'8 es'8} g'16 bes'8. r4 
      | r4 aes'8\glissando  bes'8~ bes'2~ 
      \bar "||" \mark \default bes'4. g'8 es'8 c'8 \tuplet 3/2 {es'8 g'8 bes'8} 
      | g'8 es'8 \tuplet 3/2 {c'8 es'8 fis'8} g'16 a'8 ges'16~ ges'16 d'8 es'16~ 
      | es'16 fis'16 g'16 bes'16~ bes'2~ \tuplet 3/2 {bes'8 g'8 es'8} 
      | c'16 es'16 g'16 aes'16 bes'16 g'8 es'16~ \tuplet 3/2 {es'8 c'8 es'8} g'16 bes'8. 
      | r4 r8 bes'16 b'16 \tuplet 3/2 {d''8 es''4} d''16 c''16 bes'16 aes'16 
      | f'8 aes'8 \tuplet 3/2 {bes'8 es''4} c''16 aes'8 f'16 d'8 es'16 g'16 
      | bes'4. g'8 f'16 es'16 c'16 es'16 \tuplet 3/2 {g'8 bes'8 g'8} 
      | es'16 c'16 es'16 f'16 g'16 bes'16 g'8 \tuplet 3/2 {f'8 es'8 g'8} bes'4 
      | r2 \tuplet 3/2 {r8 bes'8 d''8~} \tuplet 3/2 {d''8 des''8 c''8} 
      | b'8 aes'8 g'8 ges'8 f'8 es'16 d'16~ d'8 c'8 
      | b8 g8 b8 d'8 c'8 d'8 es'8 f'8 
      | g'8 es'8 c'4 \tuplet 3/2 {f'4 d'8} b8 g8 
      \bar "||" \mark \default es'8 c'8 \tuplet 3/2 {es'4 g'8~} g'8 g'8 f'8 aes'8~ 
      | aes'2~ \tuplet 3/2 {aes'8 g'8 aes'8} \tuplet 3/2 {g'4 f'8} 
      | es'8 c'8 r2. 
      | e'8 g'8 bes'4 es''8. es''16~ \tuplet 3/2 {es''8 des''8 c''8~} 
      | c''4. bes'16 aes'16 g'4. f'16 es'16 
      | \tuplet 3/2 {c'8 bes8 aes8} g16 f16 es16 c16~ c8 bes,8 r4 
      | r8. d16~ \tuplet 6/4 {d16 es8. c16 f16} \tuplet 3/2 {d8 es8 d8} \tuplet 6/4 {es16 f16 ges8 aes16 a16~} 
      | a16 b16 c'16 cis'16 d'16 es'16 f'16 es'16 \tuplet 3/2 {f'8 g'8 a'8} bes'16 b'16 r8 
      | r4 d16 f16 aes16 a16 c'16 es'8 fis'16 \tuplet 3/2 {g'8 bes'4~} 
      | \tuplet 6/4 {bes'8 cis16 es16 f16 g16} a16 b16 cis'16 es'16 f'16 g'16 a'16 b'16~ b'4~ 
      | b'8 bes'8 b'16 g'16 a'16 b'16 a'8 f'8 r4 
      | r4 r8. fis'16\glissando  g'2 
      \bar "||" \mark \default c'8 es'8 g'8. bes16~ bes8 d'8~ d'16 f'8 c'16~ 
      | c'4. es'16 ges'16 \tuplet 3/2 {bes4 d'8} f'4 
      | \tuplet 3/2 {c'4 es'8} g'4 \tuplet 3/2 {bes4 d'8} f'8 es'8~^\markup{\left-align \small vib} 
      | es'4. c'8 es'8 g'8 r4 
      | r8 f'8 aes'8 c''8 es'8 g'8 bes'8 f'8~ 
      | f'8. g'16~ g'16 c''16 es'8 g'8 bes'8 c'4 
      | es'4 g'4 bes4. d'16 f'16 
      | c'4~ c'16 es'8 g'16 d'4 r4 
      | r8 g'8 ges'8 ges'8~ \tuplet 3/2 {ges'8 f'8 e'8~} \tuplet 6/4 {e'16 es'8. d'16 c'16~} 
      | c'16 bes8 f16~ f8. f16~ f16 a8 d'16~ d'16 b8 a16~ 
      | a8 a8 b8 d'8 c'8 d'8~ d'16 es'8 f'16~ 
      | f'16 g'8 c''16 g'8 f'8~ f'16 es'8 g'16 es'8 d'8 
      \bar "||" \mark \default c'4 d'8 es'8~^\markup{\left-align \small vib} es'2~ 
      | es'8 d'8~ d'16 es'8 f'16 r2 
      | r8 es'8 \tuplet 3/2 {f'4 fis'8} g'2~ 
      | g'4~ g'16 bes'16 a'16 f'16~ \tuplet 3/2 {f'8 es'8 c'8~} c'4~ 
      | c'4 \tuplet 3/2 {f'8 c'8 f'8} aes'8 f'8 \tuplet 3/2 {aes'8 c''8 es''8~} 
      | es''4. d''16 b'16 bes'16 aes'16 g'8 r4 
      | r4 r8. g'16~ g'16 ges'8 es'16~ es'16 d'8 f'16 
      | \tuplet 3/2 {es'4 c'8~} c'16 b8 g16 c'4 es'8 f'8 
      | \tuplet 3/2 {ges'4 f'8~} f'2. 
      | ges'16 f'8.~ \tuplet 3/2 {f'8 ges'8 f'8~} f'4 es'8 c'8~ 
      | c'2 bes4^\markup{\left-align \small vib} d'8 c'8~ 
      | c'4 g2 r4\bar  ".."
    }
    >>
>>    
}
