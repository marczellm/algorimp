\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Confirmation"
  composer = "Michael Brecker"
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
      | f1:maj 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g1:7 | c1:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f1:maj 
      | c1:min7 | f1:7 | bes1:maj | s1 | es1:min7 | aes1:7 | des1:maj | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f1:maj 
      | s1 | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g1:7 | c1:7 
      | f2:maj r2 | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj r2 
      | c1:min7 | f1:7 | bes1:maj | s1 | es1:min7 | aes1:7 | des1:maj | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g1:7 | c1:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f1:maj 
      | c1:min7 | f1:7 | bes1:maj | s1 | es1:min7 | aes1:7 | des1:maj | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g1:7 | c1:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | c1:min7 | f1:7 | bes1:maj | s1 | es1:min7 | aes1:7 | des1:maj | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g1:7 | c1:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f1:maj 
      | c1:min7 | f1:7 | bes1:maj | s1 | es2:min7 r2 | aes1:7 | des1:maj | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g1:7 | c1:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f1:maj 
      | c1:min7 | f1:7 | bes1:maj | s1 | es1:min7 | aes1:7 | des1:maj | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g1:7 | c1:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f1:maj 
      | c1:min7 | f1:7 | bes1:maj | s1 | es1:min7 | aes1:7 | des1:maj | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | f1:maj | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7|
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


      \tempo 4 = 209
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 bes8 c'8 d'8 e'8 
      \bar "||" \mark \default f'4 c'4.^\markup{\left-align \small vib} r8 r8 e'8~ 
      | e'16 des'8 a16~ a16 bes8 c'16~ \tuplet 3/2 {c'8 cis'8 f'8~} f'16 g'8 c''16 
      | a'4 \tuplet 3/2 {g'4 f'8~} f'8 r8 r8. a'16~ 
      | a'8 g'8 f'8 es'4^\markup{\left-align \small vib} r8 r8. g'16 
      | e'4 \tuplet 3/2 {f'8 a'8 g'8} f'8 d'8 c'8 bes8 
      | a4 ges'4 dis'4 a8 r8 
      | r2 b4 a'4 
      | bes4 aes'4 \tuplet 3/2 {e'4 c'8} bes8. f16 
      \bar "||" a8 f'4.^\markup{\left-align \small vib} r4 r8 e'8 
      | c''8 bes'8 f'8 des'8 c'8 b8 \tuplet 3/2 {bes4 a8~} 
      | a8 b8 des'8 e'8 d'8 e'8 f'8 g'8 
      | dis'8 a'8 des''8 b'8 \tuplet 3/2 {a'4 g'8} \tuplet 3/2 {aes'4 fis'8} 
      | g'8 f'8 \tuplet 3/2 {ges'4 e'8} f'8 d'8~ \tuplet 6/4 {d'16 bes8 g8 es'16~} 
      | \tuplet 5/4 {es'8 d'16 des'16 c'16~} c'8 bes8 \tuplet 3/2 {a4 g8} fis8 dis'8 
      | b8 r8 r4 bes4. a8~^\markup{\left-align \small vib} 
      | a4 r4 r8 cis'8 d'8 f'8 
      \bar "||" d'8 es'8 \tuplet 3/2 {g'4 bes'8\glissando } d''4.. c''16 
      | b'4. a'4 aes'8~ aes'16 e'8 g'16~ 
      | g'8 f'4 d'8 c'4 f'8. d'16~^\markup{\left-align \small vib} 
      | d'4 r4 r8 es'8 ges'8 bes'8 
      | des''4~ des''16 bes'8 ges'16~ \tuplet 3/2 {ges'8 f'8 dis'8} \tuplet 3/2 {e'4 c'8} 
      | \tuplet 3/2 {b4 bes8} a4 f16 aes8 aes'16~ aes'16 f'8 e'16~ 
      | e'8 es'4 d'16 des'16 c'8 des'4 a'16 c''16~ 
      | c''8 bes'8 r4 a'8 aes'8 e'4 
      \bar "||" f'4 a'4.^\markup{\left-align \small vib} r8 r8 e'8 
      | f'8 dis'8 e'8 d'8 cis'8 bes8 a8 g8 
      | f4~ f16 des'16 e'8 d'8 e'8 f'8 g'8 
      | es'4 d'8. c'16~ c'8 r8 r4 
      | \tuplet 3/2 {r8 b'8 g'8} ges'8 e'8 f'8 d'8 bes4 
      | \tuplet 5/4 {dis'16 e'16 es'16 d'16 des'16} c'8. bes16 a8 g8~ g16 fis8 d16~ 
      | d16 g8 a16 bes8 c'8 a4\glissando  \tuplet 3/2 {a4\glissando  f8~^\markup{\left-align \small vib}} 
      | f4 r2 \tuplet 3/2 {c'8 f'8 a'8} 
      \bar "||" \mark \default d''4 a'8 c''8~^\markup{\left-align \small vib} c''2~ 
      | c''8 a'16 aes'16 g'16 ges'16 e'16 d'16 cis'16 e'16 g'16 bes'16 a'8 r8 
      | r4 a16 b16 des'16 e'16 \tuplet 3/2 {d'8 e'8 g'8} \tuplet 6/4 {a'16 f'16 e'8 d'16 g'16~} 
      | g'16 ges'16 f'16 e'16 \tuplet 3/2 {d'8 fis8 g8} d'16 des'16 bes16 a16 c'16 es'16 g'16 f'16 
      | es'16 d'16 c'16 bes16 c'16 d'16 f'16 bes'16~ bes'16 a'16 g'16 ges'16 \tuplet 6/4 {f'16 es'16 d'16 c'16 bes16 aes16} 
      | g16 ges16 f16 es16 \tuplet 3/2 {d8 c8 bes,8} a,8 r8 r4 
      | r8 fis8 g8 a8 bes8 c'8 cis'8 dis'8 
      | e'8 ges'8 aes'8 g'16 bes'16~ \tuplet 6/4 {bes'16 c''8 des''8 es''16~} es''8 c''8 
      \bar "||" des''8 c''8 bes'8 gis'16\glissando  a'16~ a'8 g'8 f'8 dis'8 
      | e'8 d'8 des'8 e'8 g'8 bes'8 a'8 g'8 
      | f'4 d'4^\markup{\left-align \small vib} r2 
      | r8 des''8 \tuplet 3/2 {c''8 b'8 a'8} aes'8 g'8~ g'16 ges'8 e'16 
      | f'8 f8 \tuplet 3/2 {bes8 d'8 es'8} d'8 c'8 bes8 a8 
      | g8 f8 ges8 a8 c'8 es'16 d'16 es'16 d'16 c'16 bes16~ 
      | bes8 c'8 d'8 f'8 a'8. c'16 d'8 f'8~^\markup{\left-align \small vib} 
      | f'4 r4 r8 cis'8 d'8 f'8 
      \bar "||" d'8 es'8 g'8 bes'8~ bes'16 cis''8 d''16~ d''16 e''8 e''16 
      | es''8 d''8 des''8 a'8 aes'8 g'8 ges'8 e'8 
      | f'8 g'8 a'8 bes'8 b'8 c''8 a'8 f'8 
      | a'8 bes'8 \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {e'4 d'8} es'8 f'8 
      | ges'8 aes'8 bes'8 des''8 aes''8. e''16 des''8 b'8~ 
      | b'16 a'8 g'16~ g'16 a'16 b'16 ges'16 f'4. es'8~ 
      | es'16 d'8 f'16 g'8 a'8 c''8 b'8 bes'8 a'8 
      | g'8 f'8 ges'8 r8 r4 r8 a'8 
      \bar "||" r4 r8. c''16~ c''8 r8 r8 e'8 
      | r4 r8 a8 cis'8 d'8 \tuplet 3/2 {e'4 f'8} 
      | d'8 r8 r2 r16 g16 bes16 g16 
      | a16 c'16 es'16 g'16~ \tuplet 6/4 {g'16 c'16 d'16 f'8 d'16} es'16 d'16 des'16 a16 ges16 e16 es16 d16 
      | f16 a16 c'16 bes16~ \tuplet 6/4 {bes16 c'16 d'16 f'8 bes'16} r4 r8 c''8~^\markup{\left-align \small vib} 
      | c''8 c''8 a'8 g'8 fis'8 es'8 d'8 c'8 
      | bes4 d'8. f'16 gis'8 a'8 f'8 c'8~ 
      | \tuplet 6/4 {c'16 e'8. f'16 fis'16} g'8 ges'8 f'8 e'8 d'8 des'8 
      \bar "||" \mark \default c'8 a8 f8 r8 r2 
      | r4 \tuplet 6/4 {des16 es16 ges16 bes8 des'16} e'16 g'16 bes'16 c''16~ \tuplet 3/2 {c''8 bes'8 a'8~^\markup{\left-align \small vib}} 
      | a'4. g'8 \tuplet 3/2 {f'4 e'8~} e'8 d'8 
      | es'8 f'8 g'8 bes'8 c''8 c''8 a'8 f'8\glissando  
      | c''4 a'8 g'8 f'8 e'8 d'8 r8 
      | r4 r8 g8 fis8 es'8 d'8 c'8 
      | b8\glissando  r8 r8 a'4. bes4~ 
      | bes8 aes'4.^\markup{\left-align \small vib} e'8 d'8 \tuplet 3/2 {es'8 d'8 des'8} 
      \bar "||" c'8. c''16~ c''8 r8 r8 c'8~ c'8. des'16~ 
      | des'8 r8 r8 des''8~ des''8. d'16~ d'8 r8 
      | r8 d''8~ d''8. c''16~ c''8 bes'8 a'8 g'8 
      | f'8. es'16~ es'8 f'8 ges'8 e'8 f'8 es'8 
      | d'8 f4 bes4 d'4 a8~ 
      | a8 g4 ges8 es'8 d'8 c'8 b8 
      | \tuplet 3/2 {bes4 c'8} \tuplet 3/2 {d'4 f'8} a'8 c'16\glissando  d'16~ d'8 f'8 
      | r2 r8 cis'8 d'8 f'8 
      \bar "||" d'4 \tuplet 3/2 {g'4 bes'8\glissando } \tuplet 3/2 {d''4\glissando  f''8~} f''4 
      | d''4\glissando  f''8 des''4\glissando  b'16 a'16 ges'16 es'8.~ 
      | es'8 d'8~ d'16 f'16 a'16 c''16 bes'8 a'8 g'8 ges'8 
      | f'8 es'8 d'8 c'8 bes8 c'16 d'16~ d'8 f'8 
      | es'8. ges16 bes8 es'8 \tuplet 3/2 {f'4 d'8} es'8 f'8 
      | ges'8 a'8 aes'8 g'8 ges'8 e'8 \tuplet 3/2 {f'4 c'8} 
      | es'16 f'16 es'16 des'16 c'8 des'8 f'8 aes'8\glissando  \tuplet 3/2 {c''4 es''8} 
      | c''8 bes'8 aes'8 ges'8~ ges'16 e'8 es'16~ es'16 f'16 es'16 des'16 
      \bar "||" c'8 a'8 r2 r8 a'8~ 
      | a'16 gis'16 a'16 a'16 a'8 r8 r4 a'8 a'8 
      | a'8 r8 r4 a'8 a'8 bes'8 r8 
      | r8 a'8 r4 g'8 r8 r8 f'8 
      | r4 d'4. c''8~ c''8. a'16~ 
      | a'8 r8 r8 g'8 ges'8 es'8 d'8 c'8 
      | bes8.\glissando  d'16~ d'8 f'8 gis'8 a'8 bes'8 g'16 a'16~ 
      | a'16 f'16 d'16 c'16 b8 a8 bes8 c'8 d'8 e'8 
      \bar "||" \mark \default f'4 f'8 a'8 d''4\glissando  c''8 bes'8 
      | a'8 aes'8 g'8 ges'8 f'8 des'8 c'8 bes8 
      | a8. des'16~ des'8 e'8 d'8 e'8 f'8 g'8 
      | dis'8 e'8 des'4 es'16 f'16 es'16 b16 ges4 
      | f8^\markup{\left-align \small vib} r8 r2 a16 gis16 a16 b16 
      | c'16 d'16 f'16 d'16 \tuplet 3/2 {es'8 f'8 ges'8} \tuplet 6/4 {aes'16 bes'16 ges'8 f'16 es'16} d'16 cis'16 b16 a16 
      | bes16 c'16 d'16 f'16 a'16 fis'16 g'16 a'16~ \tuplet 3/2 {a'8 d'8 e'8} \tuplet 5/4 {f'16 a'16 g'16 f'16 d'16} 
      | \tuplet 3/2 {e'8 c'8 d'8} f'16 d'16 ges'16 d'16 g'16 e'16 d'16 c'16 bes16 c'16 d'16 e'16 
      \bar "||" a'16 g'16 e'16 des'16 g'16 e'16 g'16 f'16 \tuplet 3/2 {g'8 a'8 bes'8\glissando } des''4~^\markup{\left-align \small vib} 
      | des''4. a'8 \tuplet 3/2 {f'4 cis'8} r4 
      | r8 a8 \tuplet 3/2 {b8 des'8 e'8} d'8 e'8 f'8. g'16 
      | fis'8 g'8 gis'8 a'8 bes'8 g'8 es'8 c'8 
      | f'8 es'8 d'8 c'8 bes8 c'8 d'8 f'8 
      | bes'8 c''8 a'8 g'8 fis'8 es'8 d'8 c'8 
      | \tuplet 3/2 {a4 bes8} d'8 f'8 a'8. c'16 d'8 f'8~^\markup{\left-align \small vib} 
      | f'8 r8 r2 \tuplet 6/4 {f16 g16 bes16 c'16 g16 e16} 
      \bar "||" \tuplet 5/4 {ges8 a16 c'16 e'16} \tuplet 3/2 {des'8 aes8 ges8} \tuplet 3/2 {a8 b8 des'8} es'8 des''8~ 
      | des''4~ des''16 b'16 a'16 aes'16 ges'8 f'8 r4 
      | r8 e'8 a'16 g'16 f'16 e'16~ e'8 es'8 r4 
      | cis'16 d'16 f'16 e'16 es'16 f'16 d'16 c'16 bes16 c'16 d'16 f'16 bes'16 a'16 g'16 ges'16 
      | f'16 e'16 es'16 f'16 \tuplet 3/2 {ges'8 bes'8 des''8\bendAfter #+4 } f''4~ f''16 es''16 des''16 c''16 
      | b'8 bes'8 a'8 ges'8 e'8 c'8 b8 a8 
      | aes8 bes8 c'8 es'8 c'8 des'8~ \tuplet 3/2 {des'8 ges'8 c''8} 
      | es''8 des''8 c''8 bes'8 aes'8 e'8 es'8 des'8 
      \bar "||" c'8 c''4 r8 r4 r16 e16 g16 a16 
      | bes16 des'16 es'16 g'16 bes'16 c''16 e''16\bendAfter #+4  a''16~^\markup{\left-align \small vib} a''4. r8 
      | r4 r8 a''4^\markup{\left-align \small vib} g''8 f''8 e''8 
      | \tuplet 3/2 {es''8 d''8 c''8} b'8 a'8 aes'8 g'8 \tuplet 3/2 {ges'4 e'8} 
      | f'8 g'8 a'8 bes'8 c''4 a'8 g'8 
      | ges'8 a8 c'8 d'16 es'16~ es'16 es'8 d'16~ \tuplet 6/4 {d'8. c'8 bes16~} 
      | bes8 c'8 d'8. f'16 a'8 c'8 \tuplet 3/2 {d'8 e'8 g'8} 
      | e'8 f'8 \tuplet 3/2 {a'4 c''8} f''2~ 
      \bar "||" \mark \default f''8\glissando  r8 r4 f''4. es''16 des''16 
      | c''4. bes'8 a'4 r4 
      | r8. f''16~ f''8. es''16 \tuplet 3/2 {d''8 c''4} r4 
      | \tuplet 3/2 {f''4 e''8} \tuplet 5/4 {d''16 c''16 b'8 a'16~} a'8 aes'16 ges'16~ ges'8 f'8~ 
      | f'8 f''4. d''8 c''8 bes'8\glissando  f''8~ 
      | f''4 \tuplet 3/2 {es''8 des''8 c''8} r2 
      | r8 fis'8 g'8 a'8 bes'8 c''8 cis''8 dis''8 
      | e''8 f''8 ges''4 e''8 es''4 des''8^\markup{\left-align \small vib} 
      \bar "||" c''4. a'4 g'8 \tuplet 3/2 {f'4 e'8~^\markup{\left-align \small vib}} 
      | e'4. d'8 cis'8 a8 \tuplet 3/2 {b8 cis'8 e'8} 
      | d'8 e'8 f'8 g'8 a'8 bes'8 c''8 cis''8 
      | b'8 a'8 aes'8 g'8 \tuplet 3/2 {ges'4 e'8} f'8 es'8 
      | d'8 f'8 g'8 a'8 c''8 bes'8 r4 
      | r8 a'16 g'16 ges'8 a8 \tuplet 3/2 {bes4 c'8} d'8 es'8 
      | d'4.^\markup{\left-align \small vib} c'8 bes16 c'16 d'8 a'16 g'16 e'16 c'16 
      | f'4^\markup{\left-align \small vib} r2 cis16 d16 f16 e16 
      \bar "||" es16 f16 g16 bes16 \tuplet 6/4 {d'16 c'16 bes8 g16 a16~} a16 c'16 es'16 c'16 \tuplet 5/4 {g'8 es'16 d'16 c'16} 
      | f'16 d'16 e'16 des'16 a16 ges16 es'16 des'16 b16 bes16 a16 b16 des'16 es'16 ges'16 a'16 
      | des''4. \tuplet 6/4 {b'16 a'16 aes'16~} aes'16 ges'16 f'16 e'16 es'16 f'16 c'16 es'16 
      | d'16 c'16 bes16 c'16 d'16 f'16 bes'16 a'16 g'16 ges'16 f'16 es'16 \tuplet 6/4 {d'16 c'16 bes16 a16 g8} 
      | \tuplet 6/4 {ges16 f16 es8 d16 des16} c16 b,16 bes,16 a,16 aes,4 r4 
      | r4 a'8 des''8~ des''16 b'16 a'16 aes'16~ aes'4 
      | ges'8 f'8 c'8 es'8 d'8 des'8 es'8 f'8 
      | aes'8 c''8 b'8 bes'8 a'8 aes'16 e'16~ e'8 des'16 b16 
      \bar "||" c'8 r8 r8. f'16~ f'8 r8 r8 des'8 
      | r4 r8 a4 a'4 g'8 
      | f'8 r8 r8 a8 d'4. f'8 
      | es'8 ges4 d'8 f'4. es'8 
      | d'8 f16 fis16 g8 a8 bes8 c'8 d'8 f'8 
      | g'8 a'8 bes'8 c''8 a'8 g'8 fis'8 d'8 
      | \tuplet 5/4 {f'8. d'16 f'16~} f'8. e'16~ e'8 c'8 d'8 f'8~^\markup{\left-align \small vib} 
      | f'8 r8 r4 r8. a'16 c''8 d''8 
      \bar "||" \mark \default f''2..^\markup{\left-align \small vib} e''8~ 
      | e''8 a'8 bes'8 c''8 cis''8 dis''8 c''8 bes'8 
      | a'8 a'8 \tuplet 3/2 {e'8 g'4} ges'8 e'16 f'16~ f'8 e'8 
      | dis'8 f'16 g'16~ g'8 bes'8 des''8 des''8 a'8 f'8 
      | bes'8 c''8\glissando  d''4.^\markup{\left-align \small vib} r8 r8. d''16~ 
      | \tuplet 6/4 {d''16 es''8 d''8 c''16~} c''8 bes'16 a'16~ a'8 g'8 fis'8 es'8 
      | d'8 c'16 b16~ b8 a8 bes8 c'16 d'16~ \tuplet 3/2 {d'8 a'8 c''8} 
      | dis''8 des''8 c''8 bes'16 aes'16~ aes'8 e'8 e'16 des'8 bes16 
      \bar "||" c'4. a'8\glissando  r2 
      | \tuplet 3/2 {e8 g8 bes8} des'16 es'16 f'16 g'16 a'16 bes'16 c''16 a'16~^\markup{\left-align \small vib} a'4~ 
      | a'4 \tuplet 3/2 {aes'8 g'8 b'8} \tuplet 3/2 {a'8 ges'8 f'8} e'16 dis'16 f'16 g'16 
      | bes'16 e'16 des'16 a16 ges16 es'16 des'16 b16 \tuplet 3/2 {a8 b8 des'8} \tuplet 5/4 {aes'8 g'16 ges'16 des'16} 
      | f'16 e'16 es'16 f'16 c'16 es'16 d'16 c'16 \tuplet 3/2 {bes8 c'8 d'8} f'16 bes'16 a'16 aes'16 
      | g'16 ges'8 f'16 r2 es'16 d'16 cis'16 b16 
      | bes16 c'16 d'16 a'16~ \tuplet 5/4 {a'16 g'16 f'16 d'16 e'16} c'16 d'16 e'16 f'16 \tuplet 3/2 {fis'8 g'8 ges'8} 
      | \tuplet 6/4 {f'16 e'8 d'16 des'16 c'16} \tuplet 6/4 {bes16 a16 g16 f16 e8} \tuplet 3/2 {es8 d8 des8} c16 b,8 bes,16 
      \bar "||" a,8 r8 r4 r16 bes'8 a'16~ a'16 g'8 aes'16~ 
      | aes'16 g'8 ges'16~ \tuplet 3/2 {ges'8 e'8 f'8~} \tuplet 3/2 {f'8 dis'8 e'8~} e'16 des'8 a16~ 
      | a16 ges8 es'16 ges'16 es'16 b16 ges16~ ges8 e8 f8 es8 
      | \tuplet 3/2 {d4 f8} \tuplet 3/2 {g8 a8 c'8} \tuplet 3/2 {aes'8 bes8 c'8} cis'8 d'8 
      | f'8. d'16 es'8 f'8 ges'8 gis'8 a'8 bes'8 
      | b'8 a'8 bes'8 ges'8~ ges'16 f'16 e'16 es'16 d'8 r8 
      | r4 r8 a'8 r4 r8 bes'8 
      | c''8 a'8 bes'8 a'8 aes'8 e'8 des'8 b8 
      \bar "||" c'8 a'8 r2. 
      | r8. a'16 r4 r8. a'16 r4 
      | r8. a'16 r4 \tuplet 3/2 {r8 a'8 a'8~} a'8 a'8~ 
      | a'8 a'8 r4 a'8 a'8 r4 
      | r16 bes'8 bes'16~ bes'16 bes'8 bes'16 r4 r8 bes'8 
      | a'8 b'8 \tuplet 3/2 {b'8 b'8 b'8~} b'8 b'8 b'16 c''8 b'16~ 
      | b'16 bes'8 a'16~ a'16 g'8 f'16~ f'8 e'8~ e'16 d'8 e'16~ 
      | e'16 f'8 g'16~ g'16 a'8 bes'16 c''4 bes'8 a'8 
      \bar "||" \mark \default \tuplet 6/4 {bes'8 a'8 aes'16 g'16~} g'16 a'8 g'16~ g'16 ges'16 f'8 \tuplet 3/2 {g'8 ges'8 f'8} 
      | e'4 r4 \tuplet 3/2 {cis'4 bes8} cis'8 e'8 
      | d'8 r8 r4 \tuplet 3/2 {d'8 e'8 g'8} a'8 r8 
      | r4 \tuplet 3/2 {d'4\glissando  d'8} r2 
      | \tuplet 6/4 {r16 f'8 e'16 es'16 f'16~} f'16 c'16 d'16 c'16 r2 
      | r4 a16 gis16 a16 b16 \tuplet 6/4 {cis'16 d'16 f'16 d'8 es'16} d'4 
      | r4 b16 d'16 f'16 d'16 a'16 f'16 e'16 d'16 \tuplet 6/4 {g'8 ges'8 f'16 dis'16} 
      | e'16 d'16 c'16 b16 bes16 c'16 d'16 f'16 a'16 g'16 f'16 d'16 e'16 c'16 d'16 e'16 
      \bar "||" \tuplet 5/4 {f'16 g'16 a'16 bes'16 c''16~^\markup{\left-align \small vib}} c''4. r8 r8 a'8 
      | \tuplet 3/2 {bes'4 gis'8} a'8 dis'8~ dis'8. e'16~ e'8 g'8~ 
      | \tuplet 6/4 {g'4~ g'16 f'16~} f'4 cis'8. d'16~ d'8 f'8~ 
      | f'8 d'4 bes'8 des''8 des''8 \tuplet 3/2 {a'4 f'8} 
      | bes'8 c''8 d''8 c''8 \tuplet 3/2 {bes'4 gis'8} a'8 g'8 
      | \tuplet 3/2 {ges'4 a8} c'8 d'8 es'8 des'8 c'8 bes8 
      | b8 a8 bes8 c'8 d'8 f'8 a'8 e'8 
      | g'8 f'8 e'8 f'4^\markup{\left-align \small vib} r8 r4 
      \bar "||" r8 c'8 \tuplet 3/2 {d'4 bes'8} cis''8 d''8 f''8 e''8 
      | es''8 d''8 \tuplet 3/2 {des''4 a'8} aes'8 g'8 ges'8 e'8 
      | f'8 f'8 g'8 a'8 bes'8 bes'8 a'8 g'8 
      | f'8 es'8 d'8 c'8 \tuplet 5/4 {bes8. c'16 d'16~} d'16 es'16 f'16 d'16~ 
      | d'16 es'16 es'4 des''8 des''8 es''8 \tuplet 3/2 {es''8 f''4} 
      | r4 r8 des''8 b'8 bes'8 a'8 g'8 
      | aes'8 f'8 es'8 des'8 c'8 des'4 c''8 
      | es''8 dis''8 e''8 es''8~^\markup{\left-align \small vib} es''4. des''8 
      \bar "||" \tuplet 3/2 {c''4 a'8} bes'8 bes'8 a'8 f'4. 
      | e'4. a8 cis'8 d'8 e'8 f'8 
      | d'8 r8 r2. 
      | cis'16 d'16 f'16 e'16 es'8 g'16 bes'16 d''16 c''16 bes'16 g'16 a'16 c''16 b'16 a'16 
      | a'16 ges'16 f'16 e'16 es'16 f'16 c'16 es'16 d'16 c'16 bes16 a16 bes8 r8 
      | r4 r8 a'16 g'16 fis'8 es'8 \tuplet 3/2 {d'4 c'8} 
      | bes8. d'16~ d'8 f'8 e'8. d'16~ d'8 e'8 
      | f'8 g'8 a'8 bes'16 c''16~ c''8\glissando  bes'8 a'8 bes'8 
      \bar "||" \mark \default a'4 \tuplet 3/2 {f'4 d'8} f'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {e'8 f'8 e'8} dis'8 e'8 f'8 e'8 \tuplet 3/2 {cis'4 a8} 
      | d'8 e'8 \tuplet 6/4 {f'8. g'8 a'16~} a'8 g'8 gis'8 b'8 
      | a'8 g'8 aes'8 g'8 ges'8 e'8 f'8 es'8 
      | d'8 bes8 r2.\bar  ".."
    }
    >>
>>    
}
