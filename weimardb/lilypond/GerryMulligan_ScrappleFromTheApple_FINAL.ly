\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Scrapple from the Apple"
  composer = "Gerry Mulligan"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key g \minor
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
      
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | f1 
      | a1:7 | s1 | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g4:min7 c4:9- | f1 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | f1 
      | a1:7 | s1 | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g4:min7 c4:9- | f1 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | f1 
      | a1:7 | s1 | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g4:min7 c4:9- | f1 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g2:min7 | f1 
      | a1:7 | s1 | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 
      | g1:min7 | c1:7 | g1:min7 | c1:9- | f1:maj | g2:min7 c2:7 | f2:maj g4:min7 c4:9- | f1 
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


      \tempo 4 = 252
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 c'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {c'4 d'8} e'8 f'8 c'8 b8 bes4 
      | c'2^\markup{\left-align \small vib} c'2^\markup{\left-align \small vib} 
      | c'4 \tuplet 3/2 {bes8 c'8 bes8} aes8 f8 d4 
      | f8 gis8 \tuplet 3/2 {a4 c'8} d'4 es'4 
      | d'8 c'8 bes8 r8 r2 
      | c'8 bes8 a4 \tuplet 3/2 {bes4 a8} g8 a8~ 
      | a8 f4 f8 a4 d'4 
      \bar "||" b8\glissando  c'4. g2^\markup{\left-align \small vib} 
      | r2 r8 d'4 c'8 
      | es'8 c'8 d'4 c'8 f8 g8 f8~ 
      | f16 b8 c'16 \tuplet 3/2 {b8 bes8 f8} \tuplet 3/2 {aes4 f8} d8 c8 
      | f8 gis8 \tuplet 3/2 {a4 c'8} e'8 es'8 r4 
      | r2. \tuplet 3/2 {f'8 e'8 d'8} 
      | c'8 r8 r4 c'8 bes8 a16 g16 r8 
      | r4 g8 f8 \tuplet 3/2 {e4 f8~} f4 
      \bar "||" d8 c8 \tuplet 3/2 {cis4 es8} \tuplet 3/2 {e4 fis8} g8 a8 
      | bes8 gis8 a8 c'8 e'16 f'8 cis'16 e'8 cis'8 
      | d'8 des'8 c'8 bes8 b4 a4 
      | b4.^\markup{\left-align \small vib} a8~ a16 fis8 e16~ e8 r8 
      | r2 e8 d8 cis8 d8 
      | e8 cis8 \tuplet 3/2 {b,8 f,8 a8} b16 e'8. d'4 
      | g4.^\markup{\left-align \small vib} a8 bes8 c'8 \tuplet 3/2 {d'4 c'8} 
      | r1 
      \bar "||" r4 c'8 d'8 \tuplet 3/2 {f'4 g'8~} g'4 
      | g8 a8 \tuplet 3/2 {c'4 d'8~} d'4 \tuplet 3/2 {c4 d8} 
      | \tuplet 3/2 {f4 g8~} g4 a8 bes8 \tuplet 3/2 {c'4 d'8~^\markup{\left-align \small vib}} 
      | d'4 \tuplet 3/2 {bes4 g8~} g8 c'8~ c'8. c'16~ 
      | c'4 a4 f4. bes8\glissando  
      | c'4 bes8 b16 bes16 \tuplet 3/2 {aes4 f8} d8 c8 
      | f4.^\markup{\left-align \small vib} f8 r2 
      | r1 
      \bar "||" \mark \default f4 \tuplet 3/2 {a4 d'8} c'4 d'4 
      | g8 a8 bes8. c'16 d'4 c'4 
      | d'4.^\markup{\left-align \small vib} c'8~ c'16 a8 g16 r4 
      | r2 r8 b8 c'4 
      | f4 a8 d'8 c'4 d'4 
      | f'4.^\markup{\left-align \small vib} des'8 c'8 bes8 g8 gis8 
      | \tuplet 3/2 {a4 c'8} d'4 es'8 e'8 d'8 c'8~ 
      | c'8 f4 f8 c'4 f4 
      \bar "||" bes2^\markup{\left-align \small vib} c'4. g8 
      | r2. r8 c'8 
      | bes8 c'8 a8 bes8 a8 g8 f8 es8 
      | e8 g8 a4 \tuplet 3/2 {c'8\glissando  es'8 des'8} c'8 bes8 
      | r4 d'8 b8 c'8 a8 f4 
      | bes4 bes8 aes8 g8 f8 e8 d8 
      | c16 b,8 d16~ d8 b,8 c8 d8 e8 f8 
      | \tuplet 3/2 {g4 es8} \tuplet 3/2 {f4 a8~} a16 c'16 d'16 e'16 f'4 
      \bar "||" des'8 r8 r2. 
      | \tuplet 3/2 {f8 g8 c'8} f'4 cis'4 bes4 
      | e'4.^\markup{\left-align \small vib} c'8 a8 fis8 r4 
      | r2 \tuplet 3/2 {fis8 a8 c'8} es'4 
      | d'8 des'8 c'8 bes8 b8 d'8 e'8 d'8 
      | g'8 e'8 f'8 e'8 \tuplet 3/2 {d'8 e'4} \tuplet 3/2 {c'8 d'4} 
      | r4 c'8 b8 bes8 gis8 a8 g8 
      | f8 es8 e8 g8 bes8 c'8 d'8 des'8 
      \bar "||" c'8 g8 r4 c'8 f'4. 
      | c'8 r8 r8 g8 c'8 f'4. 
      | c'4 g4 bes8 a8 g8 f8 
      | e8 c8 r4 r8 cis'4 d'8\bendAfter #+4  
      | c'4. r8 r2 
      | f'4 g8 f'8 \tuplet 3/2 {aes'4 aes'8} g'8 g'8 
      | f'8 f'8 c'4 d'4 c'4~^\markup{\left-align \small vib} 
      | c'8 r8 r2. 
      \bar "||" \mark \default r8 c'4 c'8 d'2~ 
      | d'2~ d'8 g'16 a'16~ a'4 
      | d'4. a'8~^\markup{\left-align \small vib} a'2~ 
      | a'2 d'4 aes'4 
      | g'8 f'8 g'8 f'8 es'8 c'8 \tuplet 3/2 {a4 f8~} 
      | \tuplet 3/2 {f8 g8\glissando  aes8} bes4 b4 d'8 b8 
      | c'8 d'8 e'8 f'16 g'16~ g'8 f'8 g'8 f'8 
      | r2. d'8 e'16 f'16 
      \bar "||" a'8 c'8 d'4 g'2~ 
      | g'4 d'8 f'8 g'16 a'8. d'4 
      | g'8 f'8 g'8 f'8 e'8 d'8 r4 
      | r4 f'8 d'8 e'8 d'8 \tuplet 3/2 {c'4 b8} 
      | bes8. gis16 a8 bes8 b8 c'8 d'8 b8 
      | c'8 d'8 \tuplet 3/2 {es'4 e'8} es'8 d'8 des'8 c'8 
      | r4 b4 d'8. c'16~ c'8 a8 
      | f4 bes8 a8 g8 f8 es8 e8~ 
      \bar "||" e4 g4 b4 d'4 
      | fis'4.^\markup{\left-align \small vib} d'8 f'4 cis'8. es'16 
      | e'4~ e'16 c'8 a16 r2 
      | r8 a8~ a16 c'8 e'16 es'8 c'8 a4 
      | cis'8 d'8 b8 g8 r2 
      | r8 g8 b8 d'8 cis'8 b8 r4 
      | \tuplet 3/2 {c'4 b8} bes8 gis8 \tuplet 3/2 {a4 c'8} d'8 r8 
      | r4 ges8 a8 c'8 es'8 c'8 cis'8 
      \bar "||" d'8 des'8 c'8 b8 \tuplet 3/2 {bes4 gis8} a8 g8 
      | f8 es8 e8 g8 a8 c'8 es'4~ 
      | \tuplet 3/2 {es'8 es'8 des'8} c'8 bes8 c'8. bes16~ bes8 r8 
      | r4 c'8 b8 bes8 gis8 a8 c'8 
      | d'16 f'8 f'16~ f'4 f8 r8 r8 f'8~ 
      | f'4 f'8 f'8 f'8 f'4. 
      | f'8. f'16~ f'8 f'8 r2 
      | r2 \tuplet 3/2 {c'4 d'8} e'8 f'8~ 
      \bar "||" \mark \default \tuplet 3/2 {f'8 bes8 c'8} d'8 e'8 g8 a8 bes4 
      | d'8 c'8 bes8 a8 \tuplet 3/2 {g4 f8} d8 es8 
      | e8 g8 \tuplet 3/2 {a4 d'8} ges'8 d'8 bes4 
      | f'4 es'8 e'8 c'8 cis'8 d'8 des'8 
      | c'8 b8 bes8 gis8 a8 g8 f8 r8 
      | r8 aes4 g8 f4 r4 
      | r2 r8 aes8 g8 f8 
      | es8\bendAfter #+4  e8 d8 c8 r2 
      \bar "||" r8 c8 cis8 d8 \tuplet 3/2 {f4 g8} a4 
      | c'4.^\markup{\left-align \small vib} b8 \tuplet 3/2 {bes4 g8} r4 
      | r8 c8 cis8 d8 f8 a8 c'4 
      | a4 bes4 g4.^\markup{\left-align \small vib} gis8 
      | \tuplet 3/2 {a4 c'8} d'8 des'8 \tuplet 3/2 {c'4 a8} f4 
      | bes8 aes8 bes8 aes8 g8 f8 e8 d8 
      | c8 b,8 \tuplet 3/2 {d4 b,8} c8 d8 \tuplet 3/2 {e4 f8} 
      | \tuplet 3/2 {g4 f8~} \tuplet 6/4 {f4 cis'16\bendAfter #+4  d'16~} d'2\bendAfter #-4  
      \bar "||" r2 cis8 e8 g8 a8 
      | c'8 bes8 r2 cis4 
      | d4. d'8~ d'4.. b16~ 
      | b16 a8 d16~ d8 r8 r4 r8. d16~ 
      | d4 d'4 des'16 c'16 bes16 a16~ \tuplet 3/2 {a8 f8 es8} 
      | c'4 \tuplet 3/2 {a8 bes8 b8~} b4 a8 aes8 
      | g8 ges8 f8. es16~ es16 e8 g16 a4 
      | c'4 ges8 bes8 d'8 ges'8 d'4 
      \bar "||" f'4 es'8 e'8 c'8 cis'8 d'8 des'8 
      | c'8 b8 bes16 gis8 a16~ a16 g8 fis16~ fis8 g8 
      | \tuplet 3/2 {a4 ges8} a8 c'8 \tuplet 3/2 {d'8 f'4} d'8 g8 
      | r2 \tuplet 3/2 {r8 g8 gis8~} gis8 a8 
      | d'8 c'8 a8 f8 bes8 aes8 bes8 aes8 
      | bes8 aes8 bes8 aes8 bes8 aes8 f4 
      | \tuplet 3/2 {gis4 a8} bes8 b8 \tuplet 3/2 {c'4 f'8\glissando } \tuplet 3/2 {ges'8 f'4~} 
      | f'4. e'8 \tuplet 3/2 {d'8 c'8 bes8} \tuplet 3/2 {a8 g8 f8} 
      \bar "||" es16 d8. r2.\bar  ".."
    }
    >>
>>    
}
