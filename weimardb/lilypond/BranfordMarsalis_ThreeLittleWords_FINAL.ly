\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Three Little Words"
  composer = "Branford Marsalis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | g1:min7 | s1 | c1:9sus4 | c1:7 | f1:maj | s1 | bes2:7 a2:7 | aes2:7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | c1:6 | d2:min7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | g1:min7 | s1 | c1:9sus4 | c1:7 | f1:maj | s1 | bes2:7 a2:7 | aes2:7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | c1:6 | d2:min7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | g1:min7 | s1 | c1:9sus4 | c1:7 | f1:maj | s1 | bes2:7 a2:7 | aes2:7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | c1:6 | d2:min7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | g1:min7 | s1 | c1:9sus4 | c1:7 | f1:maj | s1 | bes2:7 a2:7 | aes2:7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | c1:6 | d2:min7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | g1:min7 | s1 | c1:9sus4 | c1:7 | f1:maj | s1 | bes2:7 a2:7 | aes2:7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | c1:6 | d2:min7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | g1:min7 | s1 | c1:9sus4 | c1:7 | f1:maj | s1 | bes2:7 a2:7 | aes2:7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | c1:6 | d2:min7 g2:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | c1:maj | s1 | s1 | es2:min7 aes2:9 | d1:min7 | g1:7 | d1:min7 | g1:7 
      | g1:min7 | s1 | c1:9sus4 | c1:7|
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


      \tempo 4 = 264
      \set Score.currentBarNumber = #0
     
      | r8 es'8~ es'4. es'8 des'4 
      \bar "||" \mark \default es'4 r4 r8 c'4 dis'8~ 
      | dis'8 dis'4 dis'4.^\markup{\left-align \small vib} c'4 
      | dis'8 e'8~ e'4. g8 ais8 dis'8~ 
      | dis'8 es'4 es'4.^\markup{\left-align \small vib} c'8. e'16~ 
      | e'8 f'8 \tuplet 3/2 {fis'4 g'8~} g'8 f'4 f'8 
      | e'8 c'8 gis8 f8 ais8. g16~ g8. g16~ 
      | g4. r8 r2 
      | r2 g8 ais8 b8 cis'8 
      \bar "||" \tuplet 3/2 {dis'8 f'8 fis'8~} fis'16 gis'8\glissando  b'16 c''8. b'16~ b'4 
      | gis'8. bes'16~ bes'8 a'8 fis'4 g'4 
      | f'4 g'4 e'8 g'8 fis'8 e'8 
      | f'8 e'8 es'8 f'8 e'16 d'8 es'16~ \tuplet 3/2 {es'8 c'8 d'8~^\markup{\left-align \small vib}} 
      | d'4 r2 d'4 
      | f'8 e'8 f'8 e'8 c'8 g8 \tuplet 3/2 {b4 g8} 
      | c'4.^\markup{\left-align \small vib} r8 r2 
      | r8 c'8 d'8 e'16 g'16~ g'8 e'8 \tuplet 3/2 {f'8 ges'8 f'8} 
      \bar "||" e'8 d'8 c'8 b16 bes16~ bes8 g16 a16~ a8 g8 
      | d8 f8 e8 g8 a8 d'8 a8 bes8 
      | d'8 f'8 a'8 fis'8 g'8 a'8 ges'8 d'16 bes16~ 
      | bes8 g8 f'8 d'16 e'16~ e'8 d'8 c'8 bes8 
      | a4 c'4 f'4 g'4 
      | a'4 f'4 g'4 f'8 aes'8~ 
      | aes'8 d'4. r2 
      | r2 r8. g16 ais8 b8 
      \bar "||" dis'4 e'4 dis'4 e'8. dis'16~ 
      | dis'4. e'4. g8 a8 
      | dis'8 b8 \tuplet 3/2 {e'4 b8} dis'8 b8 e'4 
      | \tuplet 3/2 {g4 a8~} a8 c'4 a4 c'8 
      | r4 c'4 dis'8. e'16~ e'4 
      | g8. a16~ a8. c'16~ c'8 d'4 c'8 
      | r4 r8. g16~ g8. a16~ a8. c'16~ 
      | c'4 d'8. dis'16~ dis'4 e'4 
      \bar "||" \mark \default g'8 r8 r8. a'16~ a'8 r8 r4 
      | f'4 a'8 gis'8 e'4 dis'4 
      | ges'8 f'8 d'8 cis'16 e'16~ e'8 dis'8 \tuplet 3/2 {c'8 gis8 d'8~^\markup{\left-align \small vib}} 
      | d'2~ d'8 d'8 e'8 d'8 
      | cis'8 d'8 e'8 cis'8 d'8 e'8 \tuplet 3/2 {f'8 g'8 e'8~} 
      | e'8. e'16~ e'8. c'16~ c'8 g8 \tuplet 3/2 {a8 b8 d'8~} 
      | d'8 b8 d'8. des'16~ des'8 b16 des'16~ des'8 b16 c'16~ 
      | c'8 b16 c'16~ c'8 ais16 b16~ b8 g8 r4 
      \bar "||" r8 ais'8\glissando  b'8 gis'16 ais'16~ ais'8 gis'8 ais'8 gis'16 a'16~ 
      | a'8 fis'16 a'16~ a'8 fis'8 gis'8 f'8 gis'8 f'16 g'16~ 
      | g'16 aes'16 g'16 f'16~ \tuplet 3/2 {f'8 g'8 ais'8~} ais'8 g'16 a'16~ a'8 a'8 
      | g'8 ges'8 f'8 e'8 es'8 f'16 e'16~ e'8 d'8 
      | e'8 r8 r4 e'8 f'8 des'8 e'8 
      | d'8 a8 c'8 d'8 b8 a16 g16~ g16 fis8 g16~ 
      | g8 a8 c'8 e'16 g'16~ g'8 e'8 r4 
      | r2 r8 g'8\glissando  gis'8. ais'16~ 
      \bar "||" ais'8. g'16~ g'4 bes'8. g'16~ g'8. dis'16~ 
      | dis'8 e'4 dis'4 e'4 bes'8~ 
      | bes'8 g'4 bes'4 g'8 dis'4 
      | e'4 g'8. c''16~ c''8. bes'16~ bes'4 
      | bes'8. a'16~ a'8. bes'16~ bes'4 a'4 
      | a'4 bes'8 c''8 gis'8\glissando  a'8 f'8. a'16~ 
      | a'8. gis'16~ gis'4 a'8. gis'16~ gis'8. gis'16~ 
      | gis'4 aes'8 r8 r8 g'8 g'8 g'8~ 
      \bar "||" g'8 g'8 g'8 g'4 g'8 g'8. g'16~ 
      | g'8. g16~ g8. a16~ a4 b8. c'16~ 
      | c'8. d'16~ d'8. e'16~ e'16 e'8 f'16~ f'8 dis'16 e'16~ 
      | e'8 c'8 g8 f8 bes8 g8 a8 g8 
      | f8 r8 r4 e'8 d'8 \tuplet 3/2 {a8 bes8 c'8~} 
      | \tuplet 3/2 {c'8 ais8 b8~} b8 d'8 f'8 aes'8 g'8 f'8 
      | e'8 d'8 b16 g8 b16~ b8 c'4 b8 
      | dis'4 e'4 g'8. b'16~ b'4 
      \bar "||" \mark \default c''8 r8 r4 dis''16 e''8. r4 
      | c''8 r8 r4 \tuplet 3/2 {a'8 ais'16 r8.} r8. g'16 
      | r4 r8. a'16~ a'8 gis'4 a'8\glissando  
      | bes'8 g'16 a'16~ a'8 g'4^\markup{\left-align \small vib} r8 r4 
      | r8. a'16~ a'8 a'8 g'8. a'16 r4 
      | r8. a16~ a8 a8 g8. a16 r4 
      | r8 a'4 a'8 g'16 a'8 bes'16~ \tuplet 3/2 {bes'8 g'8 a'8} 
      | g'8 f'4 d'16 dis'16~ \tuplet 3/2 {dis'8 e'8 f'8~} f'8 fis'8 
      \bar "||" g'8 e'16 f'16~ \tuplet 3/2 {f'8 ges'8 f'8} e'8 c'8~ c'8. f'16~ 
      | f'8 d'4 fis'8 \tuplet 3/2 {g'8 fis'8 dis'8} a'8 a'8 
      | gis'8 a'8 ais'8 f'8 r4 r8. d'16~ 
      | d'8 dis'8 e'8 d'8 des'8 bes16 g16~ g16 gis8 a16~ 
      | \tuplet 3/2 {a8 e8 g8~} g8 e16 f16~ \tuplet 3/2 {f8 a8 cis'8} d'8 e'8 
      | f'8 cis'8 d'8 e'8 cis'8 gis8 \tuplet 3/2 {f8 gis8 c'8~} 
      | c'16 a8 f16~ f16 d8 b16~ \tuplet 3/2 {b8 a8 ges8} r4 
      | r2. r8. g'16~ 
      \bar "||" g'8 c''4 b'8 g'8. bes'16~ bes'8 g'16 a'16~ 
      | a'8 aes'8 g'8 ges'8 f'8 d'8 e'4~ 
      | e'8 e'8 \tuplet 3/2 {des'8 aes8 bes8~} bes8 c'8 d'8 bes8 
      | g4 f8 dis16 e16~ e8 des'8 ais8 b16 c'16~ 
      | c'4 c'4 f'4 f'4 
      | \tuplet 3/2 {gis'8\glissando  a'4} bes'8 a'8 \tuplet 3/2 {g'8 f'8 g'8~} g'16 e'8 f'16~ 
      | \tuplet 3/2 {f'8 g'8 aes'8~} \tuplet 3/2 {aes'8 f'8 g'8~} g'16 f'8 c'16~ \tuplet 3/2 {c'8 ais8 dis'8~} 
      | \tuplet 3/2 {dis'8 c'8 d'8~} d'8 r8 r4 r8. g16~ 
      \bar "||" g8 c'4 dis'4 e'4 g8~ 
      | g16 a8 c'16~ c'8 dis'8~ dis'8. e'16~ e'4 
      | r4 g8 a16 c'16~ c'8 dis'8 e'8 c'8 
      | g'8 g'8 \tuplet 3/2 {g'8 e'8 des'8} es'8 r8 r8. g16~ 
      | g8 a4 g16 c'16~ \tuplet 3/2 {c'8 bes8 es'8~} es'8 c'16 e'16~ 
      | e'8 c'8 g8 f16 ais16~ ais8 g16 ais16 ais8 g8~ 
      | g8 ais8 g8 f8 e8 f8 ais8 d'8 
      | b8 c'8 \tuplet 3/2 {e'8 g'8 b'8~} b'8 g'8 r4 
      \bar "||" \mark \default r8 ais'4 g'4 ais'4 g'8 
      | \tuplet 3/2 {ais'4 g'8} r2 r8 g'8 
      | a'4 a'8\glissando  ais'8 ais'4 aes'8 g'8~ 
      | g'8 e'8 f'8. dis'16~ dis'8 e'4 d'8 
      | des'4 \tuplet 3/2 {bes4 a8~} \tuplet 3/2 {a8 a8 d8~} d8 f8 
      | \tuplet 3/2 {g8 a8 cis'8~} cis'8 e'8 \tuplet 3/2 {f'8 fis'8 g'8~} g'8 e'8 
      | f'4 a16 b16 e'4.^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" r4 r8 e'4 fis'8 g'8. e'16 
      | f'8 fis'8 g'8 e'8 f'16 fis'16 g'16 e'16~ \tuplet 3/2 {e'8 f'8 fis'8} 
      | \tuplet 3/2 {g'8 e'8 f'8} fis'8 g'8 \tuplet 3/2 {dis'8 e'8 fis'8~} fis'8 dis'8 
      | \tuplet 3/2 {e'8 ges'4} \tuplet 3/2 {dis'8 e'8 ges'8~} ges'8 dis'8 \tuplet 3/2 {e'8 g'8 f'8~} 
      | f'8 d'8 r2 r8. f'16~ 
      | f'8 d'4 d'8 e'8. d'16 e'8 d'8 
      | f'8 d'8 a4 b4^\markup{\left-align \small vib} r4 
      | r2 r8 g'4 g'8~ 
      \bar "||" g'8 g'8 r4 g'8. g'16~ g'4 
      | g'4. a'4 g'4 g'8~ 
      | g'8 g'4. g'4 g'8. g'16~ 
      | g'8. g'16~ g'8. g'16 r4 r8. a'16~ 
      | a'4 a'8. a'16~ a'4 a'4 
      | \tuplet 3/2 {a'8\glissando  bes'4} a'8. a'16~ a'4 aes'4 
      | aes'4 g'4 g'4 fis'8. fis'16~ 
      | fis'4 des'8. des'16~ des'4 a4 
      \bar "||" e'8 r8 r2 r8 e'8~^\markup{\left-align \small vib} 
      | e'4 dis'8 e'8 \tuplet 3/2 {g8 a8 c'8~} \tuplet 3/2 {c'8 b8 dis'8~} 
      | dis'8. e'16~ e'8 r8 r4 r8 e'8~ 
      | e'4 dis'8 e'8 g16 a8 c'16~ c'8 a16 dis'16~ 
      | dis'4 e'8 r8 r4 r8 e'8~ 
      | e'4 f'8 dis'8 \tuplet 3/2 {e'4 c'8} g8 f16 ais16 
      | b4 c'8. b16~ b8 c'4. 
      | b8. c'16~ c'8 r8 r8 e'16 g'16~ g'8 g'8~^\markup{\left-align \small vib} 
      \bar "||" \mark \default g'4 f'8 g'8 \tuplet 3/2 {dis'4 c'8~} c'16 g16 fis16 c'16 
      | r4 r8 g4 g'4 g'8~ 
      | g'8. f'16~ f'8 g'8 dis'8 c'8 \tuplet 3/2 {g4 c'8~} 
      | c'8 d'4 es'4 r8 r4 
      | dis'8 e'8 f'8 e'16 g'16~ g'8 r8 r8 f'8~ 
      | f'16 g'16 f'4 e'8 r4 r8 e'8~ 
      | e'8 e'8 dis'8 e'8 g'8 e'8~ e'16 f'8 d'16~ 
      | d'8\glissando  dis'4 dis'8 es'4 d'16 dis'8 f'16~ 
      \bar "||" f'8 d'8 d'8 f'8 \tuplet 3/2 {cis'8 dis'8 cis'8} \tuplet 3/2 {b8 c'4} 
      | g'8 f'8 r4 r8. f'16~ f'8 g'8~^\markup{\left-align \small vib} 
      | g'8. f'16~ f'8 g'8 dis'8 e'16 f'16~ f'8 dis'8 
      | e'8 c'8 g8 f16 bes16~ bes8 g16 es16~ es8 g8 
      | e8 f16 g16 bes16 d'8 a'16~ a'16 bes'8 d'16~ \tuplet 3/2 {d'8 ges'8 a'8~} 
      | a'8 f'16 d'16~ d'16 ais8 g'16~ g'8 e'8 c'8 ais8 
      | f'8 d'8 \tuplet 3/2 {bes8 g8 e'8~} e'8 des'8 \tuplet 3/2 {bes8 a8 d'8~} 
      | \tuplet 3/2 {d'8 b8 a8} \tuplet 3/2 {ais8 b8 c'8~} c'8 a16 f16~ f8 d8 
      \bar "||" b8 r8 r8. bes16~ bes8 g8 \tuplet 3/2 {d8 bes4~} 
      | bes8 bes8 \tuplet 3/2 {g8 d8 e8} \tuplet 6/4 {bes16 g8 e16 d16 e16} \tuplet 3/2 {bes8 g8 d8} 
      | e16 bes16 g16 d16 e8 r8 r4 r8. bes16~ 
      | bes16 g8 e16~ e16 c16 a8~ a16 f8 g16~ g8 a8 
      | b8 c'16 d'16~ \tuplet 3/2 {d'8 e'8 g'8~} \tuplet 3/2 {g'8 e'8 f'8~} f'16 g'16 f'8 
      | e'8 d'8 c'8 bes8 a8 c'8 d'16 e'8 g'16~ 
      | g'8 e'8 \tuplet 3/2 {f'8 ges'8 aes'8~} \tuplet 3/2 {aes'8 e'8 g'8~} \tuplet 3/2 {g'8 d'8 e'8~} 
      | \tuplet 3/2 {e'8 g'8 aes'8~} aes'8 g'8 aes8 e8 gis8 d16 e'16~ 
      \bar "||" e'16 b8 d'16~ d'8 gis8 b8 r8 r4 
      | r8. c'16~ c'8 d'4 e'8~ e'8. f'16~ 
      | f'4 g'8. a'16~ a'8. a'16\glissando  ais'8. gis'16~ 
      | gis'8. a'16~^\markup{\left-align \small vib} a'8 r8 r2 
      | a'8 f'8 \tuplet 3/2 {d'4 g'8~} g'8 g'4 dis'8~ 
      | dis'16 e'8 f'16~ f'8 e'4 c'8 g8 f8 
      | b4 c'8. dis'16~ dis'8. e'16~ e'8. fis'16~ 
      | fis'8. g'16~ g'4 b'4 g'4 
      \bar "||" \mark \default c''8 r8 r4 g'8 r8 r4 
      | a'4. e'8 r2 
      | g'8 r8 r8. a'16~ a'8 r8 r4 
      | g'4. bes'8 r4 r8. aes'16~ 
      | aes'8 r8 r4 g'8 r8 r8. e'16~ 
      | e'8 r8 r8. f'16~ f'8 r8 r8. d'16~ 
      | d'8. e'16~ \tuplet 3/2 {e'8 c'8 d'8~} d'16 b8 g16~ g8 f8 
      | a8 b16 cis'16~ cis'8 d'8 e'8 f'8 g'8 a'8 
      \bar "||" c''8 r8 r4 g'8 r8 r8. a'16 
      | r2 e'8 r8 r4 
      | g'8 r8 r4 a'8 r8 r4 
      | g'8 r8 r4 bes'8 r8 r4 
      | g'8 r8 r4 e'8 r8 r4 
      | f'8 d'8 e'8 cis'8 d'8 e'8 fis'8 g'8 
      | a'8 c''8 b'8 g'16 a'16~ a'16 f'8 e'16~ \tuplet 3/2 {e'8 g'8 f'8~} 
      | f'8 d'8 \tuplet 3/2 {cis'8 e'4} d'4~ \tuplet 3/2 {d'8 e'8 gis'8~} 
      \bar "||" gis'4. aes'4.^\markup{\left-align \small vib} ges'8 aes'8 
      | bes'8 ges'8 aes'8 aes'16 es'16~ es'8 r8 r4 
      | r8 aes'4 aes'4.^\markup{\left-align \small vib} ges'8 aes'8 
      | bes'8 ges'8 aes'8 ges'8 des'8 b16 es'16~ es'8 des'8 
      | es'8 g'16 ges'16~ ges'16 aes'8 ges'16~ ges'8 des'8 \tuplet 3/2 {bes8 es'4} 
      | des'8 aes8 fis4 g4 bes8 g8 
      | aes8 ais8 b8 e'8 f'8 g'8 gis'8 ais'8 
      | b'8 ges'8 d'8 b8 e'8 cis'8 b8 fis8 
      \bar "||" g8 c''8 c''8 g'8~ g'16 g'8 g'16~ g'8 g'8 
      | a'4 a'8. d'16~ d'8 d'4 d'16 e'16 
      | g'4 g'8 g'4 a'8 g'4~ 
      | g'8 bes,8~ bes,16 f8 ais16~ ais8 b8 f'8 bes'8~ 
      | bes'8 aes'8 g'2^\markup{\left-align \small vib} r4 
      | r8 e'8 \tuplet 3/2 {f'4 dis'8} \tuplet 3/2 {e'4 c'8} \tuplet 3/2 {g4 f8} 
      | ais8 g8 ais8 g8 \tuplet 6/4 {c'4 ais16 c'16~} c'8. a16 
      | d'4 e'8 f'4 e'8 r4 
      \bar "||" \mark \default r8 g'4 g'4 g'4 fis'8 
      | g'4 g'4 g'8\bendAfter #-4  r8 r4 
      | r8. g'16~ g'8 g'4 g'4 g'8 
      | g'8\bendAfter #-4  r8 r4 r8 es'4 c'8 
      | es'4. c'8 r2 
      | fis'4 g'4 \tuplet 3/2 {dis'4 e'8~} e'8 c'8~^\markup{\left-align \small vib} 
      | c'4 g8 a8 c'8 dis'8 \tuplet 3/2 {e'4 c'8} 
      | \tuplet 3/2 {e'4 c'8~} c'8 g8 c'8 r8 r4 
      \bar "||" e'4 e'4 g'4^\markup{\left-align \small vib} r4 
      | f'4. g'4 c'4 dis'8 
      | e'8 g'8 e'8. g'16~^\markup{\left-align \small vib} g'4 r4 
      | f'4~ \tuplet 3/2 {f'8 d'8 g'8~} g'8 c'4 dis'8 
      | e'8 g'16 e'16~ e'4 g'2^\markup{\left-align \small vib} 
      | f'8 r8 r8 g'4 c'4 dis'8 
      | e'8 c'8 g8 f8 ais16\glissando  b8 c'16~ c'8 r8 
      | r8 g4 a4 c'4 dis'8\glissando  
      \bar "||" f'16 fis'8. g'4 e'4 c'4 
      | g8. bes16~ bes8 g8 bes2~^\markup{\left-align \small vib} 
      | bes1~ 
      | bes4 r2.\bar  ".."
    }
    >>
>>    
}
