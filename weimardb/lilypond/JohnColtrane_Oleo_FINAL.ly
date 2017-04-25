\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Oleo"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj 
      | s2 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | s2 bes2:7 | s2 es2:min6 | bes2:maj g2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7|
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


      \tempo 4 = 266
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r1 
      | d4 f4 a4 \tuplet 3/2 {f4 bes8~} 
      | bes4. g8 d'8 c'8~ \tuplet 3/2 {c'8 bes8 g8~} 
      | g16 c'8 d'16~ d'16 es'8 e'16 f'8 es'8~ \tuplet 3/2 {es'8 d'8 c'8~} 
      | c'16 bes8 aes16~ aes16 g8 f16 es4 bes4~ 
      | bes16 des'8 f'16~ f'16 a'8 g'16~ g'16 f'8 es'16~ es'16 d'8 c'16~ 
      | c'8 bes8 r2. 
      \bar "||" r4 r16 d'8 es'16~ es'8 b8 gis8 b16 d'16~ 
      | d'8 c'8 d'8 es'16 e'16~ e'8 f'8 g'8 a'8 
      | bes'16 b'8 c''16 \tuplet 3/2 {b'8 a'4} \tuplet 3/2 {f'8 bes'4} b'16 gis'8 e'16~ 
      | e'8 des'8~ des'8. bes'16~ bes'16 a'8 g'16 f'4 
      | es'16 d'8 c'16~ c'8 bes8 g16 es'8. c'8 aes8 
      | f16 g8. bes4 r2 
      | r2 f8 g8 \tuplet 3/2 {a4 c'8~} 
      | c'8 bes8 d'8 f'8 a'8 g'8 f'8 d'8 
      \bar "||" e'4~ \tuplet 3/2 {e'8 g'8 bes'8} gis'4. b'8 
      | g'4 b'8 fis'8 r2 
      | r2 d'4 \tuplet 3/2 {cis'8 d'8 e'8} 
      | f'8 g'8 a'8 c''8 b'8 a'8 g'8 f'8 
      | e'8 r8 r4 f'8 d'8 ges'8 a'8 
      | g'8 d'8 f'4 d'16 e'8 c'16~ c'8 r8 
      | r2 r8. g16 b8 d'8 
      | c'8 es'8~ es'16 d'8 c'16 \tuplet 3/2 {f'4 es'8} d'8 c'8 
      \bar "||" bes8 c'8 r4 a'8 bes'8~ bes'16 f'8 d'16~ 
      | \tuplet 3/2 {d'8 fis'8 g'8} \tuplet 3/2 {es'4 c'8} f'8 c'8 r4 
      | r2 es'8 d'16 c'16 b8 d'8 
      | c'8 d'8~ d'16 es'8 e'16 f'4 es'16 d'8 c'16~ 
      | c'8 bes8 a8 aes16 bes16 c'8 d'8~ \tuplet 3/2 {d'8 es'8 f'8} 
      | g'8 es'8 bes'8 ges'8 f'8 es'8 d'8 c'8 
      | bes8 a8~ a8. d'16~ d'8 es'8 b8 d'8 
      | c'8 d'8 es'8 e'8 f'8 g'8 a'8 f'16 bes'16~ 
      \bar "||" \mark \default bes'4. f'8~ f'4. d'8 
      | c'4. g'4. r4 
      | r1 
      | \tuplet 3/2 {a'4 g'8} f'8 d'8 \tuplet 3/2 {es'8 e'8 es'8} d'8 c'8 
      | bes8 r8 \tuplet 6/4 {r4 bes16 c'16~} c'16 d'8 es'16 f'4 
      | \tuplet 3/2 {g'8 bes'4} bes'2~ bes'8 g'8 
      | f'8 c'8 r2. 
      | r1 
      \bar "||" \tuplet 3/2 {a'8\glissando  b'8 cis''8} \tuplet 3/2 {d''8 des''8\glissando  c''8~} c''16 b'16 bes'16 g'16~ g'8 g'8 
      | d''8 c''8 \tuplet 6/4 {bes'4 g'16 a'16~} a'8 f'8~ \tuplet 3/2 {f'8 a'8 bes'8~} 
      | bes'8 a'8 \tuplet 3/2 {bes'4 g'8} \tuplet 3/2 {gis'4 f'8~} f'16 cis'16 f'16 aes'16 
      | g'8 e'8~ e'16 d'8 c'16~ c'16 b8 des'16 es'8 f'8 
      | g'8 d'8 f'4 d'8 c'8~ c'16 bes8 g16 
      | \tuplet 3/2 {es'4 f'8~} f'16 g'8 es'16 bes'8 ges'8 \tuplet 3/2 {es'4 c'8} 
      | \tuplet 3/2 {f'4 d'8} bes8 g8 es'8. c'16 a8 f8 
      | d'8 c'8 bes8 f8 r2 
      \bar "||" r4 r8 c'4 c'8 \tuplet 3/2 {e'4 g'8~} 
      | \tuplet 6/4 {g'16 a'16 b'16 c''16 cis''8} \tuplet 3/2 {d''4 b'8} c''8 a'8 r4 
      | r1 
      | cis'8 d'8 e'8 cis'8 d'8 e'16 f'16~ f'8 d'8 
      | \tuplet 3/2 {g'4 e'8} \tuplet 3/2 {c'4 g8} bes8. c'16~ c'16 f'16 a'16 c''16 
      | a'4 e'8 c'8 bes8 r8 r4 
      | r1 
      | r8. a16~ a8 c'16 e'16 aes'8 ges'8 f'8 es'8 
      \bar "||" d'8 c'8 bes4 bes2 
      | bes8 c'8 r2. 
      | r2. bes4 
      | c'4. bes8 c'8 es'8 d'8 c'8 
      | bes4. bes8 c'8 d'8 es'8 f'8 
      | g'4. es'4 d'8 c'8 bes8~ 
      | bes8 r8 r2. 
      | r2 r8 bes8 r4 
      \bar "||" \mark \default bes4 bes8 c'8 d'8 c'8 b8 d'8 
      | c'8 d'8 es'8 e'8 f'8 es'8 d'8 c'8~ 
      | c'8 c'8 d'8 es'8 bes'8 a'8 \tuplet 3/2 {gis'4 f'8~} 
      | f'16 d'16 f'16 aes'16 \tuplet 3/2 {g'4 f'8~} f'16 ges'8 es'16~ \tuplet 3/2 {es'8 b8 aes8} 
      | f'8 e'8~ e'16 f'8 g'16 aes'8 g'8 f'8 d'8 
      | es'8 f'8 g'8. es'16 bes'8 ges'8 \tuplet 3/2 {es'4 c'8} 
      | d'8 f'8 g'8 bes'8 r2 
      | r1 
      \bar "||" r2 r16 g'16 a'4.~ 
      | a'4 g'8 es'8~ es'2 
      | es'4. es'8 g'4 r4 
      | r2 g'8 ges'8 \tuplet 3/2 {f'4 es'8} 
      | d'8 c'4 bes8 \tuplet 3/2 {es'4 c'8~} c'16 aes8 bes16~ 
      | bes4 bes4 f'8 es'8~ es'16 bes8 ges16 
      | f8 es'4 cis'8 d'4 \tuplet 3/2 {f8 a8 c'8~} 
      | c'8 bes8~ bes8. f'16~ f'16 a'8 g'16~ g'16 f'8 d'16 
      \bar "||" e'4 cis'4~ cis'16 f'8 d'16 c'8 a16 gis16 
      | e'8 c'8~ c'16 gis8 e16 g4 fis8 r8 
      | r2 bes'8 ges'8 f'8 es'8 
      | d'8 e'8 f'8 d'8 g'8 es'8 b8 bes8~ 
      | bes16 g'16\glissando  a'8~ a'2~ a'8 a'8~ 
      | a'4 e'8 c'8 bes8 c'8 e'8 a'8 
      | \tuplet 3/2 {g'4 c'8} d'8 es'4 r8 r4 
      | r1 
      \bar "||" r8 f'8~ f'16 d'8 es'16~ \tuplet 3/2 {es'8 f'8 g'8~} g'8 a'8 
      | bes'8 a'8\glissando  c''4 bes'2~ 
      | bes'16 bes'8 a'16 bes'8 cis''8 d''8 cis''16 b'16~ b'8 d''16 c''16~ 
      | c''8 g'8 bes'8 g'8 a'8 g'8~ g'16 f'8 es'16~ 
      | es'8 d'4. \tuplet 3/2 {c''8 bes'4~} bes'8. aes'16 
      | g'8 es'8 r2. 
      | r1 
      | r8. es'16 f'2. 
      \bar "||" \mark \default f'4 \tuplet 3/2 {f'4 d'8} es'4.. cis'16 
      | d'4 bes8 c'4 d'8 es'8 g'8 
      | \tuplet 3/2 {f'4 d'8~} d'16 es'8 c'16~ c'16 d'8 c'16 b4 
      | c'8 r8 r8. e'16~ e'16 f'8 es'16~ \tuplet 3/2 {es'8 d'8 c'8} 
      | bes8 c'8~ c'16 d'8 f'16 bes'8 g'8 aes'8 f'8 
      | g'8 es'8 f'8 d'16 es'16~ es'8 des'8 bes8 ges8 
      | f8 es'8 d'8 c'8 bes4 g8 bes8~ 
      | bes8 r8 r4 r8. bes16 r4 
      \bar "||" bes8 r8 r4 es'4 b8 r8 
      | r8 c'8~ c'8. e'16~ e'8 r8 r4 
      | r1 
      | \tuplet 3/2 {r8 f'8 e'8~} e'16 f'8 g'16 a'8 g'8 f'8 es'8~ 
      | \tuplet 3/2 {es'8 d'8 c'8} bes8 g8 es'4 d'8 c'8 
      | bes8 g8 f4 bes8 r8 r4 
      | r2 a4. g16 a16 
      | bes8 c'8 d'8 es'8 f'8. c'16 r4 
      \bar "||" r1 
      | \tuplet 3/2 {e'8 c'8 e'8} g'8 e'8 g'16 b'8.\glissando  d''4 
      | r1 
      | a4 \tuplet 3/2 {a4 c'8} b8 r8 r4 
      | r2 \tuplet 3/2 {fis'4 g'8} e'8 c'8 
      | bes8 c'16 d'16~ d'16 f'16 a'16 b'16 a'8 e'8 d'8 es'8~ 
      | es'16 f'8 d'16~ d'16 es'8 f'16 g'4 e'16 d'8. 
      | e'4 des'16 aes16 f8 des'8 r8 r4 
      \bar "||" r2 cis'8 d'8 f'4 
      | es'4. f'8~ f'16 gis'16\glissando  a'8 f'8 bes'8~ 
      | bes'2 r2 
      | r2 r16 a'16\glissando  bes'4. 
      | a'8 aes'8 g'8. d'16~ d'8\bendAfter #-4  g'4. 
      | \tuplet 3/2 {d'8 f'4} \tuplet 3/2 {es'8 bes'8 ges'8~} ges'16 f'8 es'16~ es'16 d'8 c'16 
      | bes4 c'8 es'16 f'16 a'8 bes'8 \tuplet 3/2 {f'4 d'8} 
      | fis'8 g'8 es'4 c'16 f'8. \tuplet 3/2 {des'8 a8 ges8} 
      \bar "||" \mark \default f8 es'8~ es'16 d'8 c'16~ c'8 bes4 r8\bar  ".."
    }
    >>
>>    
}
