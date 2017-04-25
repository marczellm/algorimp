\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Just Friends"
  composer = "Benny Carter"
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
      | r1 
      | bes1:maj | bes1:maj | bes1:min7 | es1:7 | f1:maj | s1 | aes1:min7 | des1:7 
      | g1:min7 | c1:7 | a1:min7 | d1:min7 | g1:7 | s1 | g1:min7 | c2:7 b2:7 
      | bes1:maj | s1 | bes1:min7 | es1:7 | f1:maj | s1 | aes1:min7 | des1:7 
      | g1:min7 | c1:7 | e2:min5-7 a2:7 | d1:min7 | g1:7 | g2:min7 c2:7 | f1:6 | c2:min7 f2:7 
      | bes1:maj | s1 | bes1:min7 | es1:7 | f1:maj | s1 | aes1:min7 | des1:7 
      | g1:min7 | c1:7 | a1:min7 | d1:min7 | g1:7 | s1 | g1:min7 | c2:7 b2:7 
      | bes1:maj | s1 | bes1:min7 | es1:7 | f1:maj | s1 | aes1:min7 | des1:7 
      | g1:min7 | c1:7 | e2:min5-7 a2:7 | d1:min7 | g1:7 | g2:min7 c2:7 | f1:6 | c2:min7 f2:7 
      | bes1:maj | s1 | bes1:min7 | es1:7 | f1:maj | s1 | aes1:min7 | des1:7 
      | g1:min7 | c1:7 | a1:min7 | d1:min7 | g1:7 | s1 | g1:min7 | c2:7 b2:7 
      | bes1:maj | s1 | bes1:min7 | es1:7 | f1:maj | s1 | aes1:min7 | des1:7 
      | g1:min7 | c1:7 | e2:min5-7 a2:7 | d1:min7 | g1:7 | g2:min7 c2:7 | f1:6 | c2:min7 f2:7|
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


      \tempo 4 = 205
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 c'16\glissando  cis'16~ 
      \bar "||" \mark \default cis'16 d'8 f'16~ f'16 g'8 f'16~ f'8 d''8 des''8 c''8 
      | b'8 bes'8 f'8 d'16 c'16 bes4 g8 f8 
      | \tuplet 3/2 {c'8 bes4} des'8 f'8~ \tuplet 5/4 {f'16 f'8. bes'16~} bes'16 f'8 bes'16 
      | des''8 c''8 b'16 bes'8 g'16~ g'16 des'16 c'16 b16 bes8. gis16 
      | a8 bes8 b8 c'8 \tuplet 3/2 {d'4 b8} c'8 d'8 
      | e'8 f'8 g'8. e'16 f'8 g'8 r4 
      | r4 r16 g'8 aes'16~ aes'8 e'8 f'8. cis'16~ 
      | cis'8. d'16~ d'8. bes16 b8 g8~ g16 aes8 d'16 
      | bes4 r4 r8. g16 \tuplet 3/2 {bes8 d'8 f'8~} 
      | f'16 e'8 g'16~ g'16 bes'8 d''16~ d''16 c''16 d''16 c''16 \tuplet 6/4 {b'8 bes'16 g'16 e'16 des'16} 
      | \tuplet 3/2 {c'4 a'8~} a'16 e'8 c'16 b16 bes8 gis16~ gis16 a8 c'16~ 
      | c'16 g'8 e'16~ e'16 f'8 a'16 c''8 e''8~ \tuplet 3/2 {e''8 f''8\glissando  g''8~} 
      | \tuplet 6/4 {g''4 es''16\glissando  e''16~} \tuplet 3/2 {e''8 bes'8\glissando  b'8~} b'8 g'8 a'4 
      | f'4 d'4 b4 g8 e'8 
      | r2 \tuplet 5/4 {r16 c'16 d'16 c'16 b16~} b16 bes8 gis16~ 
      | gis16 a8 c'16 f'8 ges'8~ ges'16 es'8 b16 bes8 f'8~ 
      \bar "||" f'16 d'8 a16 c'4 bes2~ 
      | \tuplet 3/2 {bes8 c'8 d'8} f'8 a'8 c''8 a'8 bes'8 c''16 bes'16 
      | a'8 bes'8~ bes'16 c''16 bes'16 a'16 \tuplet 3/2 {bes'4 c''8} \tuplet 3/2 {a'4 bes'8~} 
      | \tuplet 3/2 {bes'8 c''8 bes'8} a'8 bes'8 \tuplet 3/2 {g'4 gis'8~} gis'16 a'8 b'16\glissando  
      | \tuplet 3/2 {c''4 a'8} e'4 e'16 g'8 e'16 f'4 
      | e''8. b'16\glissando  c''8 r8 \tuplet 3/2 {r8 cis''8 d''8~} d''8 bes'8 
      | \tuplet 3/2 {b'4 g'8~} g'8 aes'8 e'8 f'8~ f'16 cis'8 d'16~ 
      | d'8 bes8 b8 g8 aes8 r8 r4 
      | r16 bes8 d'16 f'8 a'8~ \tuplet 5/4 {a'16 g'16 aes'16 g'16 f'16} e'8 g'8 
      | bes'8 cis''8 d''8 bes'8 g'8 e'8 \tuplet 3/2 {c''8 d''8 c''8} 
      | \tuplet 3/2 {bes'4 g'8} e'8 des'8 c'8 bes8 \tuplet 3/2 {a4\glissando  b8} 
      | c'8 a'8~ a'16 e'8 c'16~ \tuplet 3/2 {c'8 a8 bes8~} \tuplet 6/4 {bes16\glissando  b4 f'16} 
      | \tuplet 3/2 {a'4 fis'8} g'8 b'4 d''8 \tuplet 3/2 {f''8\glissando  g''4} 
      | e''8. b'16\glissando  c''8. gis'16\glissando  a'8. f'16~ f'8 c'8 
      | f'4 f'4 r4 r8. bes16\glissando  
      | c'8 f'4 a'8 c''8. aes'16\bendAfter #+4  g'8 aes'8 
      \bar "||" \mark \default d''4 f''8 r8 r4 r8 a''8\glissando  
      | \tuplet 3/2 {bes''4 f''8~} f''16 cis''16\glissando  d''8 \tuplet 3/2 {bes'4 g'8~} g'8. b'16\glissando  
      | c''8 a'8~ a'16 bes'8 g'16 \tuplet 3/2 {aes'4 f'8~} \tuplet 3/2 {f'8 des'8 c'8} 
      | b16 bes8 aes16 g8 c'8 bes8 gis8~ gis16 a8 c'16~ 
      | c'16 g8 c'16 f4 r2 
      | r8. f16~ f8. bes16~ bes4 e4 
      | c'4 r8 d4 r8 r4 
      | r4 \tuplet 3/2 {g8 aes8 b8~} b16 d'8 f'16~ f'8 d'8 
      | c'16 b16 bes8 g8 c'8 a4 bes8 r8 
      | r4 r8. b16~ \tuplet 3/2 {b8\glissando  d'8 f'8~} f'16 e'8 g'16~ 
      | g'16 e'8 c'16 a8 bes8 b16 c'8 a16 f4 
      | c'16\glissando  d'8. a4 f8. a16~ a8 b8~ 
      | b8 d'8~ d'8. f'16~ f'8 a'4 b'8~ 
      | b'8 d''8~ d''8. g''16 e''8 c''4 d''8~ 
      | d''16 bes'8 g'16~ g'8 c''8~ \tuplet 6/4 {c''16 a'4 e'16~} e'8 a'8~ 
      | a'16 e'8 es'16~ es'8 r8 r2 
      \bar "||" c'16 d'8 g'16 g'8 r8 r4 r8 b8 
      | d'8 f'16 g'16~ g'8 g'8 r2 
      | b8\glissando  d'8 f'4 g'8. bes'16~ bes'8 des'8~ 
      | des'8 r8 r2 r8. c'16~ 
      | c'8 d'8 e'4 f'4 \tuplet 3/2 {d'4 e'8~} 
      | e'8 f'8 g'4 e'8 f'4 g'8 
      | aes'4 \tuplet 3/2 {g'4 aes'8~} aes'8 bes'8 b'4 
      | \tuplet 3/2 {cis''4 d''8~} d''8 e''8 d''8 e''4 d''8~ 
      | d''8\bendAfter #-4  d''8 r4 r8 g'8\glissando  a'8 c''8~ 
      | c''16 a'8 e'16 g'8 e'8 cis'16 d'16 c'16 a16 bes4 
      | a'8. e'16~ e'8. cis'16~ cis'8 d'8 r4 
      | r4 r8. e'16 f'8 a'8 gis'8 a'8~ 
      | a'16 d''8 a'16~ a'16 f'8 d'16 b8 bes4. 
      | g8\glissando  a8 bes16 c'16 es'16 a'16~ a'8 f'4 f'8~ 
      | f'8. c'16 f'8 r8 r4 r8 d'8 
      | f'8 a'8 \tuplet 3/2 {c''4 f''8} e''8 es''8 d''8 d'8 
      \bar "||" \mark \default \tuplet 3/2 {f'4 a'8} c''16 d''16 c''16 b'16 \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {d'4 b8} 
      | bes8 g8~ g16 f8 c'16 bes4 f'8. des'16~ 
      | des'8 bes8 g'4 f'8 r8 r4 
      | r4 \tuplet 6/4 {r4 a'16 bes'16~} bes'8 g'8 a'4 
      | c''8 a'8 \tuplet 3/2 {e'8 es'8\bendAfter #+4  e'8} \tuplet 3/2 {c'4 g'8~} g'8 e'8 
      | f'4 e'8. c'16~ c'8 a8 g4 
      | aes4 bes8. b16~ b8. cis'16~ cis'8 d'8~ 
      | d'8 e'8 f'4 g'8 aes'4 b'8 
      | \tuplet 3/2 {bes'4 d'8~^\markup{\left-align \small vib}} d'8 r8 r2 
      | r2 c''16 d''16 c''16 b'16 bes'8 a'8 
      | e'8 f'8 \tuplet 3/2 {g'4 e'8} f'8 e'8 c'8 a8 
      | c'16\glissando  d'8 a16~ a8 f4 d4. 
      | b4 d'4.\glissando  c'8 \tuplet 3/2 {a4 b8~^\markup{\left-align \small vib}} 
      | b8 r8 r4 r8. a'16 r4 
      | r8 fis'4\bendAfter #+4  g'8 ges'4 bes8. d'16\glissando  
      | e'8 r8 r8. e'16~ e'8 es'8~ \tuplet 3/2 {es'8 bes8 es'8~} 
      \bar "||" es'4 d'4\glissando  des'8 r8 r4 
      | r8. g'16\glissando  \tuplet 3/2 {a'8 b'8 a'8} g'8 c''8 a'4 
      | des'2^\markup{\left-align \small vib} r2 
      | r8 g'8\glissando  a'8 g'4 c''4 a'8\glissando  
      | aes'8 aes8\glissando  bes4\glissando  c'2~ 
      | c'4 g'8. e'16~ e'8 f'8 e'8 c'8~ 
      | c'8 b8~ b16 d'8 a16~ a8 g4 aes8 
      | e4 f8 r8 r4 \tuplet 6/4 {r4 r16 bes16~} 
      | bes16 d'8 f'16~ f'8 d'8 \tuplet 3/2 {es'8 e'8 g'8~} \tuplet 3/2 {g'8 bes'8 d''8~} 
      | d''16 c''8 a'16~ \tuplet 3/2 {a'8 bes'8 g'8} e'4 \tuplet 3/2 {c'4 a8~} 
      | a4 bes8. a'16~ a'8. e'16~ e'8 c'8~ 
      | c'8 cis''8\glissando  d''8. a'16~ a'8 e'4 f'8 
      | r2 r16 d'8 f'16~ f'8 a'8~ 
      | a'16 cis''16 d''4 a'8 f'4 c'16 e'8 f'16~ 
      | f'4 cis'16 d'16 c''16 bes'16~ bes'16 g'8 gis'16~ gis'16 a'8 f'16~ 
      | f'8 c'16 d'16 \tuplet 6/4 {c'16 b16 bes16 a8 gis16~} \tuplet 3/2 {gis8 a8 c'8} a8 r8\bar  ".."
    }
    >>
>>    
}
