\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Crazy Rhythm"
  composer = "Stan Getz"
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
      
      | f1:maj | f1:maj | bes1:7 | a2:min7 aes2:dim7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim7 | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1:maj | s1 
      | s1 | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1:6 | s1 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:6 | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:7 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | c1:7 
      | f1:6 | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | c1:7 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | c1:7 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:7 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | c1:7 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1:6 | s1 
      | f1:maj | s1 | bes1:7 | a2:min7 aes2:dim | g1:min7 | c1:7 | f1:6 | c1:7 
      | f1:maj | s1 | bes1:7 | a2:min7 a2:dim | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1:6|
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


      \tempo 4 = 288
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. d''4 
      | d''4 b'4 b'4 aes'4 
      | aes'4 f'4 f'4 d'4 
      | d'4 f'4 f'4 g'4 
      | g'4 aes'4~ aes'16 f'8 des'16 bes8 g8~ 
      | g8 c''4.^\markup{\left-align \small vib} bes'8 a'8 g'8 ges'8 
      | \tuplet 3/2 {f'4 c'8} a8 g4 es'8 d'8 c'8 
      | \tuplet 3/2 {b4 d'8} f'8 a'8 aes'8 dis'8 \tuplet 3/2 {e'4 g'8} 
      \bar "||" f'8 d'4 r8 r2 
      | r8 d'8 \tuplet 3/2 {f'8 ges'8 f'8} d'8 c'8 a8 f8 
      | f'4.^\markup{\left-align \small vib} d'8 r2 
      | r8 d'8 g'8 g'8 f'8 d'8 bes8. e'16~ 
      | e'8 f'8~ f'8. d'16~ d'8 e'4 g'8 
      | \tuplet 3/2 {a'4 a'8~} a'8 a'8~^\markup{\left-align \small vib} a'4. c'8~ 
      | c'8 c'4 e'8 g'8 f'8 e'8 g'8 
      | f'8 des'8 \tuplet 3/2 {bes4 f8} a8 f8 bes8 b8 
      \bar "||" c'8 f'8 e'8 d'16 es'16~ es'8 g16 bes16~ bes8 c'8 
      | d'8 es'8 d'8 c'8 b8 a8 aes8 ges8 
      | f8 g8 bes8 d'8 a8 c'8 es'8 g'8 
      | f'8 r8 r2. 
      | r4 b'8 c''16 b'16~ \tuplet 3/2 {b'8 bes'8 aes'8} g'8 ges'8 
      | f'8 es'8 des'8 c'8 bes8 c'8 cis'8 d'8 
      | dis'8 c'8 g8 dis8 fis8 es'8 d'8 c'8 
      | cis'8. f16~ f8 dis8 e8 b8 c'4~ 
      \bar "||" c'2 r4 r8 g8 
      | a8 c'8 d'8 f'4^\markup{\left-align \small vib} r8 r4 
      | r2. \tuplet 3/2 {g'4 ges'8} 
      | f'8 d'8 b2^\markup{\left-align \small vib} r4 
      | r1 
      | g'8 a'4 f'8 d'8 c'8 r4 
      | r2 r8 c'8 d'8 f'8 
      | a'8 r8 r4 r8 c'8 d'8 f'8 
      \bar "||" \mark \default bes'8 c'8 d'8 f'8 \tuplet 3/2 {b'4 c'8} d'8 f'8 
      | c''4 b'8 c''8~ c''16 a'8 a'16~ a'8. f'16~^\markup{\left-align \small vib} 
      | f'4. d'8 r2 
      | r2 f'4 aes'4 
      | bes'8 b'8 bes'4 aes'4 f'4 
      | es'4 c'4 e'4 c'8 f'8~^\markup{\left-align \small vib} 
      | f'4~ \tuplet 3/2 {f'8 e'8 d'8} c'8 r8 r4 
      | r2 r8 c'8 d'8 e'8 
      \bar "||" f'8 e'8 d'8 des'8 \tuplet 3/2 {c'4 bes8} f4 
      | g16 a8 f16 \tuplet 3/2 {bes4 b8} c'8 f'8 e'8 es'8 
      | d'8 dis'8 e'8 g'8 f'8 d'8 bes8 a8 
      | aes8 bes8 b8 c'8 cis'8 d'8 dis'8 e'8 
      | f'8 cis'8 d'8 f'8 aes'8 f'8 r4 
      | r2. r8. aes'16 
      | \tuplet 3/2 {g'8 f'8 des'8~} des'16 c'8 bes16 \tuplet 3/2 {a4 f8} bes8 b8 
      | c'8 f'8 e'8 g'8 f'8 des'16 bes16~ bes8 f8 
      \bar "||" a8 f8 \tuplet 3/2 {bes4 b8} c'8 a8 f8 es8~^\markup{\left-align \small vib} 
      | es2 c'8 d'4 c'8 
      | bes8 ges8 f8 es8 d8. g16~ g8 bes8~^\markup{\left-align \small vib} 
      | bes4 r2. 
      | c''4 aes'8 f'8 bes'8 g'8 es'8 aes'8~ 
      | aes'8 f'4 des'8 bes8 des'8 f'4 
      | g'4 \tuplet 3/2 {e'4 c'8} ges'8 r8 r4 
      | r8 f'8 d'8 bes8 dis'8\glissando  e'8 e'4~ 
      \bar "||" e'2 d'8 c'8 a8 f8 
      | e2.^\markup{\left-align \small vib} r4 
      | r8. e'16~ e'4 d'8 d'8 r4 
      | r2 e'4 f'4~ 
      | f'2 d'8 f'4.~^\markup{\left-align \small vib} 
      | f'8 r8 r2. 
      | e'8. f'16~ f'8 d'8 e'8. f'16~ f'8 d'8 
      | e'8. f'16~ f'8 d'8 e'8 f'4 des'8 
      \bar "||" \mark \default e'8 f'8~ \tuplet 3/2 {f'8 des'8 f'8~} f'4. c'8 
      | f'4.^\markup{\left-align \small vib} c'8 f'8 g'8 a'4~ 
      | a'8 e'8\glissando  \tuplet 3/2 {f'4 d'8} f'2~^\markup{\left-align \small vib} 
      | f'2 \tuplet 3/2 {f'4 g'8} aes'8 r8 
      | r2. r8. f'16~ 
      | f'8 aes'8 bes'8 b'8 bes'8 aes'8 f'8 c'8 
      | es'8 f'8~^\markup{\left-align \small vib} f'4. r8 r4 
      | gis'8 a'16 f'16~ f'8 c'8 f'16\glissando  fis'16 g'8 e'8 c'8 
      \bar "||" e'8 f'8 r2. 
      | r8 a'4.^\markup{\left-align \small vib} g'8 f'8 e'8 d'8 
      | f'8 r8 r2 \tuplet 3/2 {f'4 g'8} 
      | gis'8 bes'8 \tuplet 3/2 {b'4 cis''8} r2 
      | r8. des''16~ des''16 b'8 bes'16~ bes'8 aes'8 f'16 fis'8 g'16~ 
      | g'8 d'8 f'16 g'16 f'16 e'16~ e'8 es'8 d'8 des'8 
      | c'8 bes8 f8 g8 a4 bes8 b8 
      | c'8 f'8 e'8 g'8 f'8 r8 r4 
      \bar "||" r4 r8. a16~ a8 bes8 c'8 d'8 
      | \tuplet 3/2 {es'4 f'8~} \tuplet 3/2 {f'8 g'8 a'8} d''8 c''8 a'8 g'8 
      | f'8 cis'8 d'8 f'8 bes'8 f'8 aes'8 f'8 
      | g'8 f'8 e'8 g'8 f'8 des'8 \tuplet 3/2 {bes4 c'8} 
      | \tuplet 3/2 {des'4 es'8} c'8 des'8 bes8 f8 bes8 c'8 
      | bes8 f'8 aes8 fis8 g8 r8 r4 
      | r8 a8 \tuplet 3/2 {b8 e'8 g'8} fis'8 es'8 d'8 r8 
      | r2. \tuplet 3/2 {d''4 des''8} 
      \bar "||" c''8 a'8 aes'8 g'8 f'8 d'4. 
      | \tuplet 3/2 {e'4 f'8~} f'8 a'8~^\markup{\left-align \small vib} a'4~ \tuplet 3/2 {a'8 g'8 f'8~} 
      | f'8 e'16 d'16~ d'8 cis'8 e'8 d'8 cis'8 e'8 
      | d'8 c'8 a8 bes8 b8 d'8 f'8 g'8 
      | gis'8 r8 r2 cis''8 d''8 
      | bes'8 b'8 g'8 aes'8 e'8 f'8 cis'8 d'8 
      | bes8 b8 g8 aes4.^\markup{\left-align \small vib} r4 
      | r2 r8 g'16\glissando  aes'16~ aes'8 f'8 
      \bar "||" \mark \default g'8\glissando  aes'4 f'8 g'8\glissando  aes'4 f'8 
      | g'8\glissando  aes'4 f'8 aes'4.^\markup{\left-align \small vib} f'8 
      | aes'4.^\markup{\left-align \small vib} f'8 aes'8. bes'16 r4 
      | r2 f'4 aes'4 
      | bes'4\glissando  a'4 aes'4 f'4 
      | es'4 c'4 e'4 g'8 e'8~^\markup{\left-align \small vib} 
      | e'4 r2. 
      | r1 
      \bar "||" r2. \tuplet 3/2 {f'4 aes'8} 
      | bes'8 b'8 bes'8 aes'8 \tuplet 3/2 {f'4 aes'8} bes'8 b'8 
      | bes'8 aes'8 f'8 aes'8 bes'8 b'8 bes'8 aes'8 
      | \tuplet 3/2 {f'4 gis'8} bes'8 b'8 bes'8 aes'8 f'8 aes'8 
      | bes'8 b'8 bes'8 aes'8 f'8 e'8 es'8 c'8 
      | b8 bes8 aes8 e8 es8 c8 b,8 b,8~ 
      | b,8 r8 r2. 
      | r1 
      \bar "||" f'4 e'4 es'4 d'4 
      | cis'4 d'4 dis'4 e'8 f'8~^\markup{\left-align \small vib} 
      | f'2 \tuplet 3/2 {d'4 c'8} \tuplet 3/2 {bes4 a8~} 
      | a8. g16~ g4. r8 r4 
      | r8 c''8~^\markup{\left-align \small vib} c''4~ c''16 bes'8 aes'16 f'8 des'8 
      | c'4 bes8 es'8~^\markup{\left-align \small vib} es'2~ 
      | es'16 d'8 es'16 d'8 c'8 b8 d'8 f'8 a'8 
      | gis'4 e'8 cis'8 bes8 des'8 e'8 aes'8 
      \bar "||" g'8 r8 r4 r8 aes'16 g'16 r4 
      | r8 aes'8 g'8 r8 r2 
      | aes'8 r8 r4 g'8 r8 r4 
      | aes'8 r8 r4 g'8 r8 r4 
      | r8 aes'8 r4 g'2^\markup{\left-align \small vib} 
      | aes'8 g'8 aes'8 g'8 aes'8 g'4 aes'8~^\markup{\left-align \small vib} 
      | aes'4. g'8 r2 
      | r2 c''4 bes'4 
      \bar "||" \mark \default a'4 f'4 c'8 f'4 f'8~^\markup{\left-align \small vib} 
      | f'4 r4 r8 c''4 bes'8 
      | aes'8 f'8 \tuplet 3/2 {g'4 e'8} f'4 \tuplet 3/2 {g'8 aes'8 bes'8} 
      | \tuplet 3/2 {b'4 cis''8} b'4 r4 r16 des''8 c''16 
      | b'8 dis'8 e'8 f'8 bes'8 aes'8 f'8 fis'8 
      | g'8 cis'8 d'16 g'16 f'8 e'8 es'8 d'8 des'8 
      | c'8 a8 \tuplet 3/2 {aes8 g4} ges8 f'8 e'8 es'8 
      | d'8 c'16 bes16~ bes8 a8 aes8 r8 r4 
      \bar "||" r8 aes'8 g'8 ges'8 f'8 r8 r4 
      | r8 es''8 d''8 des''8 c''8 r8 r4 
      | r8 aes'8 g'8 ges'16 f'16~ f'8 r8 r4 
      | r16 es''8 d''16~ \tuplet 3/2 {d''8 des''8 c''8} r2 
      | r8 des''8 c''8 bes'8 b'8 r8 r4 
      | r8 es'4 f'8 a'8 dis'8 e'8 g'8 
      | f'8 des'8 c'8 bes16 a16~ a8 f8 bes8 b8 
      | c'8 f'8 e'8 g'8 f'8 des'8 bes8 f8 
      \bar "||" a8 bes8 c'8 d'8 es'8 f'8 g'8 b'8 
      | c''16 d''8 es''16~ \tuplet 3/2 {es''8 d''8 c''8} b'8 a'8 aes'8 ges'8 
      | f'8 es'8 d'8 c'8 bes8 r8 r4 
      | r4 a,8 r8 r2 
      | r4 \tuplet 3/2 {bes'8 c''8 b'8} bes'8 aes'8 g'8 ges'8 
      | f'8 es'8 des'4 bes8 c'8 cis'8 d'8 
      | es'8 c'16 g16~ g8 dis8 \tuplet 3/2 {fis4 dis'8~^\markup{\left-align \small vib}} dis'4~ 
      | dis'1~ 
      \bar "||" dis'4 e'4 \tuplet 3/2 {f'4 c'8} a8 f8 
      | bes8 b4 c'4 r8 r4 
      | r2. f'8 fis'8 
      | g'8 dis'8 e'8 g'8 f'8 d'16 bes16~ bes8. e'16~ 
      | e'8 f'8 d'8 bes16 a16~ a8 g8 e'8 f'8 
      | d'8 bes8 a8 g8 e'8 f'8 c'8 a8 
      | g8 f8 e'8 f'8 r2 
      | r2 r8 f'8 b'4 
      \bar "||" \mark \default c''4 gis'4 a'4 e'4 
      | f'4 b4 c'4 g8 aes8~^\markup{\left-align \small vib} 
      | aes4. r8 r2 
      | r2. b4 
      | bes'8 r8 r2. 
      | r2 b'8 c''8 r4 
      | r4 c''8 bes'8 a'8 g'8 ges'8 a'8 
      | g'8 d'8 f'16 ges'16 f'8 e'8 es'8 d'8 des'8 
      \bar "||" c'8 bes16 f16~ f8 g8 a8 f8 bes8 b8 
      | c'8 f'8 e'8 g'8 f'8 c'8 a8 f16 bes16~ 
      | bes8 a8 bes8 f'8 e'8 f'8 \tuplet 3/2 {bes'4 g'8} 
      | gis'8 c'8 \tuplet 3/2 {cis'8 d'4} g'8 d'8 e'8 g'8 
      | \tuplet 3/2 {f'8 c'4\glissando } d'8 es'8 r2 
      | r4 \tuplet 3/2 {c'8 cis'8 d'8} es'8 c'8 e'8 f'8~^\markup{\left-align \small vib} 
      | f'2 d'8 c'16 aes16~ aes8 g8~^\markup{\left-align \small vib} 
      | g4 r2. 
      \bar "||" f4 g8 gis16 a16~ a16 c'8 d'16~ d'8. f'16~ 
      | f'4 gis'8 a'16 f'16~ f'8 g'4 f'8~^\markup{\left-align \small vib} 
      | f'4. d'8 \tuplet 3/2 {c'4 bes8~} bes8 a8~ 
      | a8 g4.^\markup{\left-align \small vib} r2 
      | r8 c''4. bes'8 aes'8 f'8 des'8 
      | c'8\glissando  b8 r8. es'16~^\markup{\left-align \small vib} es'4. d'8~ 
      | d'8 r8 r2. 
      | r2 c'4 d'4~ 
      \bar "||" d'4. c'8 cis'8\glissando  d'4 c'8 
      | cis'8\glissando  d'4 c'8 cis'8\glissando  d'4 c'8 
      | cis'8\glissando  d'4 b8 cis'8.\glissando  d'16~ d'8 b8 
      | \tuplet 3/2 {cis'4\glissando  d'8~} \tuplet 3/2 {d'8 b8 d'8~} \tuplet 3/2 {d'8 f'8 gis'8~} gis'16 b'8 d''16~ 
      | d''8 r8 r2. 
      | r8. cis''16~ cis''8 d''8 bes'8 b'8 g'8 aes'8 
      | e'8 f'8 cis'8 d'8 bes8 b8 g8 aes8 
      | r1 
      \bar "||" \mark \default f8 g8 a8 c'8 d'8 f'16 e'16~ e'8 g'8 
      | \tuplet 3/2 {f'8 c'8 a8~} a8 g8 f8 g8 bes8 c'8 
      | cis'8 d'8 dis'8 e'8 f'8 cis'8 d'8 f'8 
      | aes'8 dis'8 e'8 g'8 f'8 c'8 es'8 d'8 
      | des'8 c'8 b8 r8 r2 
      | r4 r8 g'8~ g'8.\glissando  a'16~ a'8 c''8~^\markup{\left-align \small vib} 
      | c''2 r2 
      | r2 \tuplet 3/2 {g'4 aes'8~} aes'8 c'8~^\markup{\left-align \small vib} 
      \bar "||" c'2~ c'8 r8 r4 
      | r2 g'4 a'8. c''16~^\markup{\left-align \small vib} 
      | c''2 \tuplet 3/2 {ges'4 aes'8~} aes'8 d''8~^\markup{\left-align \small vib} 
      | d''4. r8 r2 
      | r4 d''8 des''8 c''8 a'8 aes'8 g'8 
      | d'8 des'8 c'8 a8 aes8 g8 d8 des8 
      | c4 b,8 cis8 d8 g8 gis8 a8 
      | c'8 cis'8 d'8 g'8 gis'8 a'8 c''8 cis''8 
      \bar "||" d''8 d''4 r8 r2 
      | r8 d''4.^\markup{\left-align \small vib} c''8 a'8 g'8 ges'8 
      | f'8 f'4^\markup{\left-align \small vib} r8 r2 
      | r8. g'16~ g'8 aes'8 f'8 des'8 bes8 g8 
      | g'8 aes'8 f'8 des'8 bes8 f8 \tuplet 3/2 {a8 c'8 bes8~} 
      | bes8 f8 aes8 fis8 \tuplet 3/2 {g4 bes8} des'8 f'8 
      | \tuplet 3/2 {e'4 c'8} a8 g8 fis8 es'8 \tuplet 3/2 {d'4 c'8} 
      | bes8 g8 ges8 f8 \tuplet 3/2 {e4 b,8} e8 fis8 
      \bar "||" g8 e4 bes8 gis8 a8 \tuplet 3/2 {d'4 b8} 
      | c'8 g'8 e'8 f'8 \tuplet 3/2 {bes'4 gis'8} a'8 d''8 
      | r2. d''8 des''8 
      | \tuplet 3/2 {c''8 b'8 aes'8} g'8 ges'16 f'16~ f'8 d'8 bes8. e'16~ 
      | \tuplet 3/2 {e'8\glissando  f'8 f'8~^\markup{\left-align \small vib}} f'2 r4 
      | r2 e'4\glissando  f'4~ 
      | f'2 e'4\glissando  f'4~ 
      | f'2 e'8.\glissando  f'16~^\markup{\left-align \small vib} f'4~ 
      \bar "||" \mark \default f'2 d'4 f'4 
      | g'8 a'4 a'4.^\markup{\left-align \small vib} r4 
      | r8 f'8~ f'8. d'16~ d'8 e'8 g'8 aes'8~ 
      | aes'8 gis'4 aes'4.^\markup{\left-align \small vib} r4 
      | r1 
      | g'8 aes'8 g'8 ges'8 \tuplet 3/2 {f'8 des'8 c'8~} c'8 bes8 
      | \tuplet 3/2 {a8 bes8 a8~} a16 g8 ges16~ ges16 es'8 d'16~ \tuplet 3/2 {d'8 c'8 bes8~} 
      | bes16 g8 ges16~ ges16 f8 e16~ e8 c4. 
      \bar "||" fis'8 g'4 f'8 d'8 a8 \tuplet 3/2 {f8 g'4~^\markup{\left-align \small vib}} 
      | g'4 \tuplet 3/2 {f'4 c'8} r4 r8 g'8~^\markup{\left-align \small vib} 
      | g'4 f'8 d'8 bes8 g8 f'8\glissando  g'8~ 
      | g'4 f'8 cis'8 bes8 g4 g'8~^\markup{\left-align \small vib} 
      | g'4 f'8 des'8 bes8 g8 \tuplet 3/2 {aes'4\glissando  dis'8} 
      | e'8 g'8 f'8 des'8 bes8 f8 a8 f8 
      | \tuplet 3/2 {bes4 b8} c'8 cis'16 d'16~ d'8 e'8 f'8 e'8 
      | d'8 des'16 c'16~ c'8 bes8 f8 g8 a8 es8 
      \bar "||" r2 r8. a'16~ a'8 es'8~ 
      | es'8 a'8 es'4 \tuplet 3/2 {a'4\glissando  d'8} r4 
      | r1 
      | a'8.\glissando  d'16~ d'8 r8 r4 \tuplet 3/2 {aes'4 aes'8} 
      | r2. aes'8\glissando  g'8 
      | des'8 aes'8 g'4 g'8 ges'8 c'8 r8 
      | r1 
      | r4 r8 c'8 \tuplet 3/2 {d'4 f'8} \tuplet 3/2 {aes'4 f'8} 
      \bar "||" g'8 f'8 aes'8 f'8 g'8 f'8 aes'8 f'8 
      | \tuplet 3/2 {g'4 f'8} aes'8 f'8 g'8 f'8 aes'8 f'8 
      | \tuplet 3/2 {g'4 g'8} f'8 d'8 des'8 c'8 b8 d'8 
      | f'8 g'8 a'8 dis'8 e'8 g'8 f'8 d'8 
      | bes8 g8 es'8\glissando  f'8 r2 
      | r2 b'4 c''4 
      | gis'4 a'4 e'4 f'4 
      | b8 c'4 gis8 a4 f4\bar  ".."
    }
    >>
>>    
}
