\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Crazy Rhythm"
  composer = "J.J. Johnson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | r1 | s1 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | s2. c4:7 
      | c1:min7 | f1:7 | bes2 f2:7 | bes1 | bes1:min | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | s1 | f2:maj/b aes2:dim7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | s2. c4:7 
      | c1:min7 | f1:7 | bes2 f2:7 | bes1 | bes1:min | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | s2. c4:7 
      | c1:min7 | f1:7 | bes2 f2:7 | bes1 | bes1:min | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | s2. c4:7 
      | c1:min7 | f1:7 | bes2 f2:7 | bes1 | bes1:min | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | s2. c4:7 
      | c1:min7 | f1:7 | bes2 f2:7 | bes1 | bes1:min | es1:9 | d1:7 | g2:7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | c1:7 | s1 | f1 | s1 
      | s1|
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


      \tempo 4 = 277
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r8 f'8 f'4 f'4. f'8~ 
      | f'8. d'16~ \tuplet 3/2 {d'8 f'8 g'8~} g'8 e'8 d'4 
      \bar "||" \mark \default f'2 f'2~^\markup{\left-align \small vib} 
      | f'8 gis'8 a'4 c'8. d'16~ d'4 
      | f'4. c'4.^\markup{\left-align \small vib} r4 
      | r2 d'8. a16~ a16 c'8 bes16~ 
      | bes4. c'8 cis'8. d'16~ d'4 
      | a'4. e'8~^\markup{\left-align \small vib} e'4. r8 
      | r8 g'8 e'8 f'8~ f'8. d'16 \tuplet 3/2 {e'4 c'8~} 
      | c'8 d'4 bes8 c'4 aes8 bes8~ 
      \bar "||" bes8 gis16 a16~ a4 f8 g4 e8 
      | \tuplet 3/2 {f4 g8~} g8 a8 a8 c'8 r4 
      | r1 
      | fis'8 g'8 e'4 e'8 f'8 \tuplet 3/2 {d'4 c'8} 
      | e'8 e'8 \tuplet 3/2 {c'4 a8} \tuplet 3/2 {cis'8\glissando  d'4} bes4 
      | c'4 c'4 c'4. bes8 
      | a8 bes16 d'16~ d'8 f'8~ f'2 
      | r2 r8 f'4 fis'8 
      \bar "||" g'8 g'4 d'8 \tuplet 3/2 {f'4 f'8~} f'8 c'8 
      | \tuplet 3/2 {es'4 es'8~} es'8 c'8 \tuplet 3/2 {d'4 d'8~} \tuplet 3/2 {d'8 a8 c'8~} 
      | c'8 bes8 a8 bes8 d'8 f'4.~ 
      | f'4. r8 r2 
      | es'8 es'8~ \tuplet 3/2 {es'8 c'8 des'8~} des'8 des'4 es'8 
      | f'8 f'4 aes'8 \tuplet 3/2 {g'4 g'8~} g'8 f'8 
      | es'8 c'4. c'4.^\markup{\left-align \small vib} r8 
      | r4 r8 f'4. e'8 f'8~ 
      \bar "||" f'8 c'8 r4 f'4 f'8 c'8 
      | r4 \tuplet 3/2 {a'4 a'8} r2 
      | r2 \tuplet 3/2 {a'4 a'8~} a'8 d'8 
      | r4 a'8. a'16~ a'8 d'8 r4 
      | \tuplet 3/2 {f'4 f'8~} f'8 c'8~^\markup{\left-align \small vib} c'4. r8 
      | r4 r8. f'4. e'8 f'16~ 
      | f'8. c'16~ c'4 d'4 d'4 
      | r2. r8. b'16 
      \bar "||" \mark \default c''4.. c'16~ c'4. d'8~ 
      | d'2.. a'8 
      | g'8 a'8 g'8 g'4 a'8 \tuplet 3/2 {g'4 g'8~} 
      | g'8 a'8 g'8 g'4 a'8 g'8 f'8 
      | r2 e'8 f'8 d'8 e'8 
      | c'4 d'4 bes4~ \tuplet 3/2 {bes8 c'8 bes8} 
      | a8 c'8~ c'8. c'16~^\markup{\left-align \small vib} c'4. r8 
      | r2 c'8 d'8 e'8 f'8~ 
      \bar "||" f'8 g'8 f'8 e'8 f'8 e'8 d'8 c'8 
      | r4 r16 d'8 bes16~ bes8 c'8 a4 
      | \tuplet 3/2 {bes4 c'8~} c'16 d'8 es'16 f'8 g'4 r8 
      | r2 \tuplet 3/2 {g'8 f'8 e'8} d'8 cis'8~ 
      | cis'8 d'4. e'8 f'4 r8 
      | r2. \tuplet 3/2 {r8 e'8 f'8~} 
      | f'4 c'8. d'16~^\markup{\left-align \small vib} d'2 
      | r1 
      \bar "||" a'16\glissando  bes'8.~ bes'4 f'4. e'16 es'16~ 
      | es'8 g8 bes8 d'8~ d'4.. c'16~ 
      | c'8 bes8 a8 c'8 d'8 f'4.~^\markup{\left-align \small vib} 
      | f'8 r8 r4 r8. bes16~ bes8 c'8 
      | des'8 es'4. f'4~ \tuplet 3/2 {f'8 des'8 es'8~} 
      | es'4 des'8 c'4 bes8 a4~ 
      | a4.. d'16~ d'4. g8~ 
      | g4 r2 r8. d'16~ 
      \bar "||" d'4. cis'16 d'16~ d'4. c'8 
      | d'8 e'8 \tuplet 3/2 {f'8 g'8 aes'8~} aes'8 g'8 f'8 e'8 
      | f'8 d'8~ d'8. d'16~ d'2 
      | r2 \tuplet 3/2 {gis'8 gis'8 gis'8~} gis'16 gis'8 gis'16 
      | r2. aes'4~ 
      | aes'8\glissando  f'8 r4 g'16 aes'8 aes'16~ aes'16 aes'8 aes'16~ 
      | aes'8 f'4. f'4.^\markup{\left-align \small vib} r8 
      | r2. r8 d''8 
      \bar "||" \mark \default c''8 r8 r4 f'4.. bes'16~ 
      | bes'8 a'4. c'4 g'4 
      | f'4. a4. d'4 
      | c'4. f4 bes4 a8~ 
      | a8 c'4. g2 
      | r2 f'4. e'8 
      | c'2 c'4. r8 
      | r1 
      \bar "||" a'8 c''4 g'8 bes'4 r4 
      | f'8 a'4 e'8 g'8 r8 r8. d'16 
      | f'4~ \tuplet 3/2 {f'8 des'8 e'8~} e'4 bes8 d'8~ 
      | d'8. a16~ a4 c'4 r4 
      | r2 g8 a8 bes8 cis'8 
      | d'8 e'8 f'8 g'16 aes'16~ aes'16 g'8 aes'16~ aes'8 g'8 
      | \tuplet 3/2 {aes'8 g'8 aes'8} g'4 aes'4 g'8 f'8~ 
      | f'8 d'8~^\markup{\left-align \small vib} d'4. r8 r4 
      \bar "||" r4 r8. f'16~ f'8 aes'16 bes'16~ \tuplet 3/2 {bes'8 c''8 des''8~} 
      | des''8 c''16 des''16~ \tuplet 3/2 {des''8 c''8 des''8~} des''8. c''16~ c''8 bes'8~ 
      | bes'8 f'8~ f'8. g'16~^\markup{\left-align \small vib} g'2 
      | r2 r8 es'8~ es'16 d'8 des'16~ 
      | des'8 es'4. c'8 des'8 bes4~ 
      | \tuplet 3/2 {bes8 c'8 des'8} es'8 f'8~ f'16 g'8 g'16~ g'8 f'8 
      | e'8 r8 r2 r8. d'16~ 
      | d'4 e'2 f'4 
      \bar "||" d'2~ d'8 e'8 f'8 d'8~ 
      | d'8 e'4 f'4. d'4~ 
      | d'8 e'8~ e'8. f'16~ f'8. d'16~ d'4~ 
      | d'8 r8 r4 e'8 f'8 d'8 e'16 f'16~ 
      | \tuplet 3/2 {f'8 d'8 e'8~} \tuplet 3/2 {e'8 f'8 d'8~} \tuplet 3/2 {d'8 e'8 f'8~} f'8 d'8 
      | e'16 f'8 d'16~ d'8 e'16 f'16~ \tuplet 3/2 {f'8 d'8 e'8} f'8 r8 
      | r4 r8. f'16~ f'4~ \tuplet 3/2 {f'8 e'8 f'8} 
      | r1 
      \bar "||" \mark \default a'8 g'8 f'4 g'8 f'4 e'8~ 
      | e'8 f'4 d'4 e'8 r4 
      | c'4. c'4.^\markup{\left-align \small vib} r4 
      | r1 
      | g'8. g'16 g'8 g'8 g'2~ 
      | g'8 g'8 g'8 g'8 g'8. c''16~ c''16 c''16 c''16 c''16~ 
      | c''8 g'4 g'8 r2 
      | r1 
      \bar "||" c''2 bes'8 a'8 bes'8 c''8~ 
      | c''8 c''4. bes'8 a'8 bes'8 c''8 
      | r1 
      | r2 bes'8 a'8 bes'8 c''8~ 
      | c''8 b'8 bes'4 a'8 g'4 f'8 
      | e'4 bes8 es'4 des'4 b8 
      | c'8. a16~ a8 bes8 c'8 f'8 r4 
      | r1 
      \bar "||" f'4.. es'16~ es'8 c'4 d'8~ 
      | d'8 f'4. des'8. f'16~ f'4 
      | c'4. f'8 bes4 \tuplet 3/2 {f'4 a8~} 
      | a8 f'4 aes8 r2 
      | r8 es'4 c'8 des'8 es'8 c'8 des'8 
      | bes8 r8 r2 e'8 c'16 a16~ 
      | a8 g8 \tuplet 3/2 {fis4 gis8} \tuplet 3/2 {c'8 dis'8 c'8~} c'8 cis'16 d'16~ 
      | \tuplet 3/2 {d'8 e'8 f'8~} f'16 g'8 a'16~ a'8 r8 r4 
      \bar "||" g'4~ \tuplet 3/2 {g'8 f'8 g'8~} g'8 f'4 e'8~ 
      | e'8 e'4 d'8 e'4 d'4 
      | b4. g'8 a'4. r8 
      | r2 f'4 d'4 
      | bes4. a'8~^\markup{\left-align \small vib} a'4. r8 
      | r2. r8 a'8~ 
      | a'8 g'8 f'8. a'16~ a'8. f'16~ f'4 
      | a'8 gis'8 a'8 f'8 r4 a'8 gis'8 
      \bar "||" \mark \default a'8 f'4 a'8 gis'8 a'8 f'4~ 
      | f'8 a'8 bes'8 a'8 bes'8 bes'8 \tuplet 3/2 {bes'4 a'8~} 
      | a'16 bes'8 bes'16~ bes'16 bes'8 bes'16~ bes'8 bes'4 bes'8~ 
      | bes'4 a'8 aes'8 bes'8. a'16~ a'4 
      | f'4. c'8~ c'4. r8 
      | r1 
      | r8 c'8 d'4 e'4 f'8. g'16~ 
      | g'8. gis'16~ gis'8 a'4 bes'8~ bes'8. b'16~ 
      \bar "||" b'8. c''16~ c''8 r8 r4 a8. bes16~ 
      | bes4 b4 c'8. cis'16~ cis'8 d'8~ 
      | d'8 dis'4 e'4 f'8~ f'8. fis'16~ 
      | fis'8. g'16~ g'8 r8 r2 
      | r8 g4 a8 bes4 c'4 
      | cis'4 d'4 dis'8. e'16~ e'8. f'16~ 
      | f'8 g'8~ g'8. a'16~ a'8. bes'16~ bes'4 
      | c''4 r2. 
      \bar "||" bes'4 a'8. g'16~ g'8. f'16~ f'8 es'8 
      | r4 r8 cis'8 d'4 f'4 
      | c'4 \tuplet 3/2 {bes4 c'8} bes2^\markup{\left-align \small vib} 
      | r1 
      | es'8 des'8 \tuplet 3/2 {es'8 des'8 c'8~} c'8 bes4 es'8~ 
      | \tuplet 3/2 {es'8 des'8 es'8~} es'16 des'8 c'16 bes8 r8 r8 e'8~ 
      | e'8 c'8 a8 g8 fis8. dis'16~ \tuplet 3/2 {dis'8 c'8 d'8~} 
      | d'16 e'8 f'16 g'8 a'8~ \tuplet 3/2 {a'8 g'8 f'8~} f'8. g'16~ 
      \bar "||" g'4~ g'16 f'8 g'16~ g'8 f'8 r4 
      | r4 g'8. g'16~ g'8 f'8~ f'8. e'16~ 
      | e'4~ \tuplet 3/2 {e'8 d'8 e'8} d'2^\markup{\left-align \small vib} 
      | r2. gis'8 gis'8 
      | gis'8 aes'8 aes'4 aes'8 r8 r4 
      | aes'8 r8 r8 aes'8 r4 des''8. b'16~ 
      | b'8. aes'16~ aes'4 aes'4 f'8. f'16~ 
      | f'8 d'8 d'4 e'4 r4 
      \bar "||" \mark \default c'2~ c'8 r8 r4\bar  ".."
    }
    >>
>>    
}
