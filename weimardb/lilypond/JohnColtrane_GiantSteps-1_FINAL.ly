\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Giant Steps"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:min7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:min7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:7 ges2:7 
      | ces2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj ges2:7 | ces1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | des2:7 ges2:7 | ces1:maj | f2:min7 bes2:7 | es1:maj | des2:7 ges2:7 
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


      \tempo 4 = 290
      \set Score.currentBarNumber = #0
     
      | des'8 e'8 aes'8 b'8 bes'4. aes'8 
      \bar "||" \mark \default fis'8 es'8 b4~ b16 d'8 e'16 fis'8 a'8 
      | g'8 d'8 b4 b8 aes8 g8 f8 
      | es8 f8 g8 aes8 bes8 c'8 \tuplet 3/2 {d'4 f'8~} 
      | f'16 e'8 c'16~ \tuplet 3/2 {c'8 aes8 g8} fis8 es'8 d'8 c'8 
      | b8 d'8 g'8 b'8 d'8 f'8 aes'8 c''8 
      | es'8 f'8 g'8 bes'8 e'8 aes'8 bes'8 cis''8 
      | bes'4 aes'8 fis'8 r2 
      | bes'8 a'8 \tuplet 3/2 {aes'4 g'8} f'8 es'8 d'8 c'8~ 
      | c'16 bes8 aes'16 \tuplet 3/2 {g'4 d'8~} d'16 f'8 es'16~ es'16 d'8 f'16 
      | e'8 c'8 a8 e8 g8 e8 \tuplet 3/2 {fis4 es'8} 
      | \tuplet 3/2 {d'4 c'8} \tuplet 3/2 {b4 a8} g8 a8 b8 d'8 
      | es'8 cis'8 b8 bes4 fis8 aes8 bes8 
      | b8 cis'8 es'8 fis'8 bes'8 a'8 aes'8 g'8 
      | f'8 r8 r4 r16 g'8 ges'16 f'8 d'8 
      | \tuplet 3/2 {es'4 f'8~} f'8 bes'8 \tuplet 3/2 {es''4 bes'8~} bes'8 r8 
      | r4 \tuplet 3/2 {bes'8 b'8 bes'8~} bes'4. fis'8 
      \bar "||" \mark \default bes'8.\glissando  d''16~ d''2~ d''8. c''16~ 
      | c''16 b'8 d'16 g'8 b'8 bes'8 a'8 aes'8 c''8 
      | bes'8 g'8 f'8 es'8 g'8 es'4. 
      | bes'8 d''4 bes'4 fis'8 d'8 r8 
      | r8 d'8 g'8 b'8 d'8 f'8 aes'8 c''8 
      | es'8 f'8 g'8 bes'8 e'8. aes'16~ aes'8 bes'8 
      | fis'4. es'8 des'8 c'8~ c'16 b8 g16 
      | \tuplet 3/2 {c'4 d'8} es'4 \tuplet 3/2 {c'8 g'8 f'8~} f'16 d'8 c'16 
      | bes8 r8 r4 \tuplet 3/2 {aes'8 g'8 es'8} r4 
      | r8 a4 g'8 b'8 a'8 fis'8 e'8 
      | d'16 e'8 fis'16~ fis'8 a'8 g'8 a'16 b'16 bes'4~ 
      | bes'8 b'8~^\markup{\left-align \small vib} b'2~ b'8. bes'16~ 
      | bes'8 fis'8 aes'8 bes'8 fis'8 es'8 cis'8 b8 
      | c'8 d'8 es'8 c'8 g'8 f'8 \tuplet 3/2 {d'4 c'8} 
      | bes4. g'8 r2 
      | r8 cis'8 \tuplet 3/2 {e'8 aes'8 bes'8} fis'8 aes'8 bes'8 cis''8 
      \bar "||" \mark \default bes'8 cis'8 es'8. f'16 d'8 e'8 fis'8 a'8 
      | g'8 d'8 b4 c'8 aes8 g8 f8 
      | es8 f8 g8 aes8 bes8 c'8 d'8 f'8 
      | e'8 aes'8 g'8 r8 r8 b'8 d'8 e'8 
      | fis'8 g'8 \tuplet 3/2 {a'8 b'8 d''8~} d''16 aes'8 c''16 bes'8 aes'8 
      | g'4 \tuplet 3/2 {f'8 g'8 g'8~} g'16 e'8 fis'16~ \tuplet 3/2 {fis'8 aes'8 bes'8} 
      | cis''4~ cis''16 bes'8 aes'16~ \tuplet 3/2 {aes'8 fis'8 es'8~} es'8 r8 
      | r4 r8. c''16\glissando  d''4^\markup{\left-align \small vib} bes'8 des''8 
      | c''16 bes'8 aes'16 g'8 f'8 es'8. f'16~ f'8. bes'16~ 
      | bes'16 b'8\glissando  d''16~ d''2~ d''8 des''8 
      | c''16 b'8 fis'16 a'8 fis'8 g'8 d'8 b8 aes8 
      | es'8 b8 bes8 fis8 aes8 fis8 aes8 bes8 
      | b8 cis'8 es'8 fis'8 a'8 fis'8 es'8 b8 
      | aes'4. g'16 f'16 d'8 es'8 d'8 c'8 
      | bes8 aes8 g8 f8 es8 f4 bes8 
      | es'8 r8 r2. 
      \bar "||" \mark \default r8 fis8 b8 es'8 d'8 e'8~ \tuplet 3/2 {e'8 fis'8 a'8~} 
      | a'16 g'8 d'16~ d'16 b8 g16 c'8 aes8~ \tuplet 3/2 {aes8 g8 f8~} 
      | f16 es8 f16~ \tuplet 3/2 {f8 g8 aes8~} aes8 bes8 c'8 d'8 
      | f'8 e'8 aes'8 g'4 b'8 d'8 e'8 
      | a'8 g'8 a'8 b'8 c''8 d'8 es'8 aes'8 
      | c''16 es'8 f'16 g'4 g'4 r4 
      | r8 fis'8 es'4 \tuplet 3/2 {cis'8 b8 cis'8~} cis'8 es'8 
      | fis'16 bes'8 a'16 aes'8 g'8 f'8 es'8 \tuplet 3/2 {d'4 c'8} 
      | \tuplet 3/2 {bes4 aes'8} \tuplet 3/2 {g'4 d'8} f'8 es'8 d'8 f'8 
      | e'8 c'8 \tuplet 3/2 {aes4 fis8} g2^\markup{\left-align \small vib} 
      | d'8 r8 r4 g'16 b'8. r4 
      | r8 cis'8 \tuplet 3/2 {e'8 aes'8 b'8} bes'4\glissando  \tuplet 3/2 {c''8 cis''4} 
      | cis''4. bes'8 fis'8 es'4 bes'8~ 
      | bes'8\bendAfter #+4  d''4 b'8 \tuplet 3/2 {bes'4 aes'8} \tuplet 3/2 {g'4 f'8} 
      | es'8 f'8 g'8 bes'8 es''4 r4 
      | r8 es''8 cis''8 b'8 bes'4. fis'8~ 
      \bar "||" \mark \default fis'16\glissando  b'8 d''16~^\markup{\left-align \small vib} d''2~ d''8. cis''16 
      | \tuplet 3/2 {b'4 d'8~} d'16 g'8 b'16 bes'8 a'8~ a'16 aes'8 c''16 
      | bes'8 g'8 \tuplet 3/2 {f'4 es'8} g'4 bes'8. es''16~ 
      | es''4 d'4 b'8 a'8 r4 
      | r4 d'8 g'8 b'8 d'8 f'16 aes'8 c''16~ 
      | c''16 es'8 f'16~ f'8 g'8 bes'8 es''8~ es''16 cis''8 b'16 
      | bes'8 aes'8 fis'8 e'8 es'8 cis'8 \tuplet 3/2 {b4 g8} 
      | c'8 d'8~ d'16 es'8 f'16 g'8 f'8 d'8 c'8 
      | bes8 aes'8 g'8 d'8~ d'16 f'8 es'16~ es'16 d'8 c'16~ 
      | \tuplet 3/2 {c'8 aes'8 g'8~} g'8. g'16 b'4 g'8 b'8~^\markup{\left-align \small vib} 
      | b'4. g'8 b'8 d''8 r4 
      | r8 cis'8 \tuplet 3/2 {e'8 aes'8 b'8} bes'8 c''16\glissando  cis''16~ cis''4~ 
      | cis''4~ cis''16 bes'8 aes'16 fis'8 es'8 b4 
      | bes'4\glissando  d''8. b'16 bes'8 aes'8 g'8 f'8~ 
      | f'16 es'8 f'16~ f'16 g'8 bes'16 es''8 r8 r4 
      | \tuplet 3/2 {r8 bes'8\glissando  cis''8~^\markup{\left-align \small vib}} cis''2~ cis''8 bes'8 
      \bar "||" \mark \default aes'8 fis'8 \tuplet 3/2 {es'4 b8} d'8 e'8 fis'8 a'8~ 
      | a'16 g'8 d'16~ d'8 b8 g16 c'8 es'16 d'8 c'8 
      | bes8 c'8 d'8 f'8 es'8 f'4 g'16 bes'16 
      | b'8 a'8 g'8 fis'8 r2 
      | r8 d'8 g'8 b'8 d'8 f'8 \tuplet 3/2 {aes'4 b'8} 
      | es'8 f'8 g'8 bes'8 \tuplet 3/2 {e'4 g'8} bes'8 des''8 
      | \tuplet 3/2 {c''8 bes'8 aes'8~} aes'8 bes'8 \tuplet 3/2 {fis'8 bes'8 a'8} aes'4 
      | \tuplet 3/2 {g'8 f'8 es'8~} \tuplet 3/2 {es'8 d'8 c'8~} c'16 bes8 aes16~ aes16 g8 f16~ 
      | f16 es16 f16 g16 \tuplet 3/2 {aes8 bes8 c'8} d'16 es'16 g'16 aes'16 bes'4 
      | r4 b8 d'8 e'16 g'16 a'16 b'16~^\markup{\left-align \small vib} b'4~ 
      | b'2 g'16 a'8 g'16 r4 
      | r8 cis'8 e'16 aes'16 b'16 bes'16~ bes'8\glissando  c''8 es''4 
      | cis''4. bes'8 fis'8 es'8 r4 
      | r8 bes'8\glissando  \tuplet 3/2 {d''4 b'8} bes'8 aes'16 g'16~ \tuplet 3/2 {g'8 f'8 es'8~} 
      | es'8 d'8 f'8 d'16 es'16~ es'8 f'8 g'8 bes'8 
      | \tuplet 3/2 {es'4 b8} aes4 bes8. fis16~ fis4 
      \bar "||" \mark \default bes16 b8 c'16~ c'16 cis'16 es'8 fis'16 d'8 e'16~ e'16 fis'8 a'16 
      | g'8 d'8 \tuplet 3/2 {b4 g8} c'8 es'8 d'8 c'8 
      | bes8 g'4 r8 r4 r8 fis'8\glissando  
      | g'4..^\markup{\left-align \small vib} f'16 fis'8 g'8~ \tuplet 3/2 {g'8 a'8 b'8~} 
      | b'8 g'8~ \tuplet 6/4 {g'4 b'16 cis''16} aes'4 c''16 bes'8 aes'16 
      | g'4 \tuplet 3/2 {es'8 f'8 g'8} \tuplet 3/2 {e'4 fis'8~} fis'16 aes'8 bes'16 
      | cis''4 bes'8 aes'8 \tuplet 3/2 {fis'4 es'8} b8 bes8 
      | c'8 d'8 es'4 f'16 g'8 f'16 \tuplet 3/2 {d'4 c'8~} 
      | c'16 bes8 aes'16~ aes'16 g'8 d'16 f'8 es'8 d'8 f'8 
      | \tuplet 3/2 {e'4 c'8} aes4 d'4..^\markup{\left-align \small vib} c'16 
      | b8 d'8 e'8 fis'8 r2 
      | r8 cis'8 aes'8 b'8 bes'4 fis'4 
      | fis'4. es'8 cis'4 b4~ 
      | \tuplet 3/2 {b8 c'8 d'8} es'8 c'8 g'8 f'8 \tuplet 3/2 {d'4 c'8} 
      | bes8 es'8 \tuplet 3/2 {f'4 g'8~} g'8 g'8 bes'4 
      | r2 r8 aes'8\glissando  bes'4~ 
      \bar "||" \mark \default bes'4. fis'8 \tuplet 3/2 {b'8 d''8 c''8~} c''8 a'8~ 
      | a'8. c''16 b'4~ \tuplet 3/2 {b'8 g'8 b'8} \tuplet 3/2 {bes'4 a'8~} 
      | a'16 aes'8 c''16 bes'8 g'8~ g'16 f'8 es'16 g'8 bes'8 
      | e'8 r8 r4 b'8 a'8 fis'8 e'8 
      | d'8 e'8 fis'8 a'8 d'8 f'8 aes'8 c''8 
      | es'8 f'8~ \tuplet 3/2 {f'8 g'8 bes'8} e'8 fis'8 aes'8 bes'8 
      | cis''4 bes'8 aes'8 \tuplet 3/2 {fis'4 es'8} b4 
      | g'8 aes'8 g'8 f'8 es'8 d'8 c'8 bes16 aes16~ 
      | aes8 g8 bes8 c'8 d'16 f'8 es'16~ es'16 g'8 g'16 
      | r2 g'4~ \tuplet 3/2 {g'8 fis'8 a'8} 
      | g'8 d'8~ d'16 b8 g16 d'8 r8 r4 
      | es'4 \tuplet 3/2 {b4 fis8} bes4..^\markup{\left-align \small vib} fis16 
      | b8 cis'8~ \tuplet 3/2 {cis'8 es'8 fis'8} \tuplet 3/2 {a'4 a'8} g'8 g'8 
      | f'8 g'8 \tuplet 3/2 {aes'4 f'8} a'8 ges'8 \tuplet 3/2 {d'4 bes8} 
      | \tuplet 3/2 {g'4 es'8} d'8 f'8 es'8 r8 r4 
      | r4 \tuplet 3/2 {r8 f'8 fis'8~} fis'2 
      \bar "||" \mark \default b8 cis'8 es'8 fis'8 d'8 e'8 fis'8 a'8 
      | d'4. g'16 b'16 aes'4~ \tuplet 3/2 {aes'8 c''8 bes'8~^\markup{\left-align \small vib}} 
      | bes'4.. g'16~ \tuplet 3/2 {g'8 f'8 es'8} r4 
      | r8 a8 r4 \tuplet 3/2 {g'8 b'4~} b'8 d'8~ 
      | d'8 g'8 a'8 b'8 d''16 b'16 bes'8 a'8 aes'16 c''16~ 
      | c''16 bes'8 g'16~ \tuplet 3/2 {g'8 f'8 es'8} e'8 fis'8 aes'8 bes'8 
      | cis''8 bes'8 aes'8 fis'8 \tuplet 3/2 {es'4 cis'8} \tuplet 3/2 {b4 g8} 
      | c'8 d'8 es'8. g'16 f'4 r4 
      | r8 aes'8 g'8 d'8 f'8 es'8 d'8 c'8 
      | e'8. aes'16 g'4 b'8 a'8 fis'8 e'8 
      | \tuplet 3/2 {d'8 e'8 fis'8} a'8 a'8 \tuplet 3/2 {g'4 d'8} b8 aes8 
      | e'4 r4 es'2 
      | bes4.^\markup{\left-align \small vib} fis8 b8 cis'8 es'8 fis'8~ 
      | fis'16 a'8 aes'16 \tuplet 3/2 {g'4 ges'8~} ges'16 f'8 es'16 d'8 c'8 
      | bes8 aes'8 \tuplet 3/2 {g'4 d'8} \tuplet 3/2 {f'4 es'8} d'4 
      | c'16 es'8 b16~ b16 aes8 e16 bes2^\markup{\left-align \small vib} 
      \bar "||" \mark \default \tuplet 3/2 {fis8 b8 cis'8} es'8 fis'8 d'8 e'8 fis'8 a'8 
      | g'4 r4 r8 bes'8\glissando  d''4 
      | \tuplet 3/2 {b'8 bes'8 aes'8} g'8 f'8 es'8 f'8~ \tuplet 3/2 {f'8 g'8 bes'8} 
      | es''8 r8 r4 c''8.\glissando  d''16~ d''8 cis''8 
      | b'4 d'16 g'8 b'16~ b'16 aes'8 c''16~ c''16 bes'8 aes'16 
      | g'8 r8 r4 r8 e'8 fis'8 aes'8 
      | bes'8 cis''8 bes'8 aes'8 fis'8 es'8 b4~ 
      | b16 es'8 f'16~ f'8 g'8 f'8 a'8 \tuplet 3/2 {ges'8 d'8 c'8~} 
      | \tuplet 3/2 {c'8 bes8 g'8} aes'8 f'8 es'8 f'8 g'8 bes'8 
      | b'8 a'8 g'8 fis'4 e'8 d'8 c'8 
      | b8 d'8 g'8 a'8 b'4 g'16 a'16 b'8 
      | bes'8 r8 r4 r16 b'16 cis''4. 
      | bes'4. cis''8 \tuplet 3/2 {bes'4 fis'8} \tuplet 3/2 {es'4 b8} 
      | c'8 d'8 es'8 f'8 g'8 f'8 \tuplet 3/2 {d'4 c'8} 
      | bes8 es'4 g'16 bes'16 es''4. bes'8 
      | c''8. bes'16~^\markup{\left-align \small vib} bes'2 r4 
      \bar "||" \mark \default r4 b'16\glissando  cis''8.~ cis''8 d''4. 
      | b'4 c''8 b'8 \tuplet 3/2 {g'8 a'8 c''8} bes'8 r8 
      | r4 r8 b'8 d''2^\markup{\left-align \small vib} 
      | c''8 bes'8 g'8 es'4 c''8\glissando  d''8. cis''16 
      | b'4 g'8 b'4 d'8 \tuplet 3/2 {aes'4 c''8~} 
      | \tuplet 3/2 {c''8 es'8 f'8~} \tuplet 3/2 {f'8 g'8 bes'8} es''2~ 
      | es''4 cis''8 b'8 \tuplet 3/2 {bes'4 fis'8} es'4 
      | bes'8\glissando  d''8 des''8 b'8 bes'8 a'8 aes'8 g'8 
      | f'8 es'8 d'8 c'8 bes8 c'8 d'8 f'8 
      | e'8 g'8 r4 bes'8 d''4 cis''8 
      | b'4 fis'8 a'4 a'8 g'8 r8 
      | r4 r8 a'8\glissando  bes'4.^\markup{\left-align \small vib} fis'8 
      | aes'8 bes'8 fis'8 es'4 es'4 b8 
      | c'8 d'8 \tuplet 3/2 {es'4 c'8} g'8 f'8 d'8 c'8 
      | bes8 c'16 d'16~ d'8 f'8 \tuplet 3/2 {es'4 f'8} \tuplet 3/2 {es'8 g'8 bes'8~} 
      | bes'16 es'8 b16 aes8 ges8 bes2^\markup{\left-align \small vib} 
      \bar "||" b8 des'8 es'8 ges'8~ ges'16 d'8 c'16 \tuplet 3/2 {b4 d'8~} 
      | d'8 b8 ges8 r8 r2\bar  ".."
    }
    >>
>>    
}
