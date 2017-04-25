\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Little Willie Leaps in"
  composer = "Joe Lovano"
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
      | r1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 a2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 a2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 a2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 a2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 a2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 e2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 a2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:maj | e2:min7 a2:7 | d2:min7 g2:7 | g1:min7 | c1:7 
      | f1 | g2:min7 c2:7 | a2:min7 d2:9- | g2:min7 c2:9- | f1:maj | g2:min7 c2:7 | a1:min7 | d1:9- 
      | b2:min7 e2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:9 | g1:min7 | c1:7 | f1:9 | s1 
      | f1|
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


      \tempo 4 = 304
      \set Score.currentBarNumber = #0
     
      | a8 f8 e8 a8 d'8 bes8 g8 bes8 
      \bar "||" \mark \default c'8 a8 bes8 c'8 \tuplet 3/2 {des'8 dis'8 e'8} \tuplet 3/2 {g'4 e'8} 
      | f'8 c''8 \tuplet 3/2 {a'4 f'8} e'4 d'8 g'8~ 
      | g'4 f'8 g'8 f'16 e'8. d'8. c'16~ 
      | c'4 c'4 bes4. a8 
      | r2. c'4~ 
      | c'8. a16 bes8 a4 gis8 \tuplet 3/2 {a4 g8} 
      | f4 fis16 g8. f4 fis8 a8 
      | e4 g4 f8 d8 r4 
      | r1 
      | r8. gis16~ gis16 b8 gis16~ \tuplet 3/2 {gis8 a8 bes8} c'8 r8 
      | r8 c'8 des'8 e'8 g'4. ges'8~ 
      | ges'16 f'8 e'16~ \tuplet 3/2 {e'8 d'8 des'8} \tuplet 3/2 {c'4 b8} bes4 
      | fis4 cis'4 bes8 cis'8 e'4 
      | \tuplet 3/2 {cis'8 d'4} e'4 e'8\glissando  f'4 d'8 
      | r2. f'8 ges'8 
      | bes'8 ges'8 e'8 d'16 aes'16~ aes'8 b8 c'8 g'8~ 
      \bar "||" g'8 e'16 d'16 bes4 d'8 r8 r4 
      | a8 r8 r4 c'8 r8 r4 
      | a8 bes4 c'8 d'4 e'4~ 
      | e'4. c'8 d'4 e'4~ 
      | e'4 c'4 c'8\bendAfter #-4  r8 r4 
      | r4 \tuplet 3/2 {e'4 d'8} c'8 b8~ b16 bes8 g16 
      | gis8 a8~ a16 f8 e16 g8 r8 r4 
      | fis4 d8 r8 r2 
      | r4 r8 a8 gis8. f16~ f4 
      | \tuplet 3/2 {g4 ges8} f4 e4. a8 
      | \tuplet 3/2 {d'4 des'8~} des'16 c'8 b16~ b16 bes8 gis16 a4 
      | fis16 g8 a16 bes8 d'8 e'8 f'8 g'4 
      | a'8. bes'16~ bes'4 g'8 r8 r4 
      | r4 r8 g'8 e'8 d'8~ \tuplet 3/2 {d'8 c'8 bes8} 
      | a4 c'8 d'8 g'4 r4 
      | r2 r8 g'8~ g'8. g'16 
      \bar "||" \mark \default g'4 g'8 g'8 g'4 g'8 g'8 
      | g'4 g'8 g'8 \tuplet 3/2 {g'4 g'8~} g'16 g'8 g'16~ 
      | g'2. c''4\bendAfter #-4  
      | r2 r8 g'4 g'8 
      | g'4 g'8 g'8 \tuplet 3/2 {g'4 g'8~} g'16 g'8 g'16~ 
      | g'8 g'8 \tuplet 3/2 {g'4 g'8~} g'8 g'8 g'4 
      | g'2 d'4 r4 
      | r2 d''8 c''8 b'8 a'8 
      | \tuplet 3/2 {gis'4 ges'8} f'8 e'8~ e'16 d'8 c'16 \tuplet 3/2 {b4 gis8} 
      | a8 bes8 \tuplet 3/2 {c'4 a8} bes8 c'8 cis'8 f'8 
      | a'8 bes'8 a'16 g'8 f'16 e'8 r8 r4 
      | g'4. ges'8 f'8 e'8 d'8 des'8 
      | bes8 g8 \tuplet 3/2 {gis4 a8~} a8 f8 d4 
      | \tuplet 3/2 {g4 e8} f8 g8 \tuplet 3/2 {gis4 b8} cis'8 bes8 
      | b8 des'8 es'8 f'8 ges'8 bes'8 \tuplet 3/2 {aes'4 f'8~} 
      | f'8 g'8 \tuplet 3/2 {f'8 es'8 des'8} bes4 e'4~ 
      \bar "||" e'8 d'8 c'8 bes8 c'8 r8 r4 
      | c'4~ \tuplet 3/2 {c'8 d'8 e'8} \tuplet 3/2 {f'4 c'8} r4 
      | r8 c'8~ \tuplet 3/2 {c'8 d'8 e'8} f'4 \tuplet 3/2 {c'8 d'8 e'8} 
      | f'4~ \tuplet 3/2 {f'8 d'8 e'8} f'8 c'8 r4 
      | r2 r8 c'8~ \tuplet 3/2 {c'8 e'8 g'8} 
      | \tuplet 3/2 {a'8 bes'8 a'8} g'8 f'8 e'8 d'8 c'8 bes8 
      | a8 g8 f8 e8 g4 f8 g8 
      | a8.\bendAfter #-4  es16 r2. 
      | d'8 c'8 b8 a8 gis4. f8 
      | e8. c'16~ \tuplet 3/2 {c'8 b8 a8} gis8 fis8 e4 
      | g8. a16 bes4 bes8 a8 \tuplet 3/2 {g8 ges4} 
      | f8 r8 r2. 
      | r4 f8 a8 g8 f8 e8 g8 
      | bes8 es'8 des'8 a16 c'16~ c'8 c'8 bes4 
      | a8 c'8 d'8 e'16 g'16~ g'8 f'8 r4 
      | r2. r8 g'8\glissando  
      \bar "||" \mark \default \tuplet 3/2 {a'4 c''8~} c''8 a'8 bes'8 a'8 g'8 f'8~ 
      | f'16 e'8 f'16 g'4. ges'8 f'8 e'8~ 
      | \tuplet 3/2 {e'8 dis'8 des'8~} des'16 c'8 b16~ b16 bes8 aes16~ \tuplet 3/2 {aes8 f8 ges8} 
      | c'4 \tuplet 3/2 {a8 bes8 c'8} cis'8 d'8 e'8 f'8 
      | g'8 gis'8 a'8 bes'8~ \tuplet 3/2 {bes'8 g'8 f'8~} f'16 e'8 g'16~ 
      | g'8 r8 r8 f'8 e'8 d'8 c'8 bes8 
      | \tuplet 3/2 {gis8 a8 gis8} a8 d'8 c'8 a8 f4 
      | g8 r8 r4 ges8 d8 r4 
      | r2 r8 b8 \tuplet 3/2 {gis4 e8~} 
      | e8 r8 r4 e'4.^\markup{\left-align \small vib} d'8 
      | c'8 a8\bendAfter #-4  g4 g4 a8 r8 
      | r2. d8 f8 
      | a8 g8 f8 e8 fis8 a8 cis'8. a16 
      | \tuplet 3/2 {gis8 a8 d'8} \tuplet 3/2 {e'4 cis'8} d'8 e'8 f'8 fis'8 
      | aes'8 bes'8 b'8 es''8 des''8 aes'8 g'8 f'8 
      | e'8 r8 r4 c''4. bes'8~ 
      \bar "||" bes'16 a'8 g'16 f'8 e'8 d'8 c'8 bes8 a8 
      | r1 
      | r8 d''8~ \tuplet 3/2 {d''8 c''8 a'8} g'8 e'8~ e'16 d'8 a16 
      | g8 e8 r2. 
      | d''8 c''8 a'8 g'8 e'8 d'8 a16 g8 e16~ 
      | e8 d8 d''4. c''8 a'8 g'8 
      | e'8 d'8 cis'8 d'8 \tuplet 3/2 {a'4 cis'8} d'8 a'8~ 
      | a'8 f'8 e'8 c'8 b4 a4 
      | e'8 c'8 \tuplet 3/2 {gis8 f8 e8~} e8 r8 r4 
      | r8. c16 cis8 f8 a8 g8 f8 e8 
      | f8 bes8 d'8 gis16 a16~ a8 bes8 \tuplet 3/2 {c'4 a8} 
      | bes8 c'16 des'16~ \tuplet 3/2 {des'8 e'8 g'8} a'8 g'16 f'16 e'8 d'8 
      | \tuplet 3/2 {g'4 e'8} d'8 c'8 f'8 e'16 d'16 c'8 bes8 
      | r2 dis'16 e'4..~ 
      | e'8 d'8 c'16 bes8 a16~ a16 g8 e16~ \tuplet 3/2 {e8 f8 g8~} 
      | g8 a4 r8 r2 
      \bar "||" \mark \default r8 b,8~ \tuplet 3/2 {b,8 f'8 aes'8} \tuplet 3/2 {f'4 f8} e8 g8 
      | bes8 d'8 g8 a8~ a16 c'8 a16~ a16 bes8 c'16 
      | \tuplet 3/2 {cis'8 dis'8 e'8} \tuplet 3/2 {g'4 e'8} f'4 c''4~ 
      | c''4 \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {gis'8\glissando  a'4} f'4 
      | \tuplet 3/2 {fis'8\glissando  g'4~^\markup{\left-align \small vib}} g'2. 
      | g'8 f'8 d'8 c'8 r2 
      | r2 aes'8 g'8 fis'8 g'8 
      | a'8 a'8 ges'8 f'8 e'8 d'8 es'8 ges'8 
      | f'8 es'8 d'8 c'8 b8 a8 gis8 f8 
      | e8 d8 \tuplet 3/2 {c8 bes,8 a,8~} a,8 r8 r4 
      | r2 r8 bes,8 d16 f16 a8 
      | g8 f8 \tuplet 3/2 {e8 g8 bes8} d'8 aes8 bes8 cis'8 
      | \tuplet 3/2 {d'8 e'8 f'8} a'8 b'8 cis''8 d''4 a'8 
      | f'8 e'8 d'8. g'16~ g'8 e'8 f'8\glissando  a'16 b'16~ 
      | b'4 es''4 des''4 \tuplet 3/2 {aes'4 ges'8} 
      | b'8 ges'8 r4 bes'8 r8 r8 aes'8 
      \bar "||" g'8 f'16 e'16 bes4 aes'4\glissando  gis'16 a'8.~ 
      | a'8 r8 r2 fis'16 g'8.~ 
      | g'8 f'8 \tuplet 3/2 {e'4 d'8} c'8 bes4 a8~ 
      | \tuplet 3/2 {a8 cis'8 d'8~} d'4 a'8 r8 r4 
      | r4 r16 c8 d16 e16 f16 a16 g16 \tuplet 3/2 {f8 e8 ges8} 
      | bes8 d'16 a16~ \tuplet 3/2 {a8 bes8 c'8} d'16 dis'16 e'16 f'16 g'8 a'8 
      | cis'8\glissando  d'4 a'4. r4 
      | r8. bes'16 a'16 g'16 ges'16 e'16 d'16 des'16 c'16 bes16 a4 
      | r1 
      | r8 gis,8 d8 a,8 dis8 bes,8 \tuplet 3/2 {d8 f4} 
      | cis8 es16 ges16~ \tuplet 3/2 {ges8 aes8 g8} \tuplet 3/2 {ges8 f4} \tuplet 3/2 {aes8 bes8 d'8} 
      | c'16 bes8 g16 \tuplet 3/2 {a8 bes8 c'8} a8 bes8 c'8 cis'16 d'16~ 
      | d'16 a'16 c''16 bes'16~ bes'8 r8 r2 
      | r4 \tuplet 3/2 {r8 a'8 g'8} f'8 e'8 d'8 c'8 
      | \tuplet 3/2 {bes4 g8} aes8. e16 f8 e8 d8 c8 
      | g8 f8 r2. 
      \bar "||" \mark \default r4 a4 c'8. a16~ a8. bes16~ 
      | bes8 c'8 d'8 f'8 r2 
      | r4 r8 d'8 c'4 d'4 
      | bes4 c'8. aes16~ aes4 bes8 g8~ 
      | g4 \tuplet 3/2 {gis8 a4} f4. fis8\glissando  
      | \tuplet 3/2 {g4 f8~} f4 \tuplet 3/2 {g8\glissando  aes8 c'8~} c'8 g8~ 
      | g4.. f16 g8 a8 r4 
      | r1 
      | r2 b'8 a'8 gis'8 ges'8~ 
      | \tuplet 3/2 {ges'8 f'8 e'8} d'8 c'8 b8 g8 gis8 a16 b16~ 
      | b8 a8 f8. e16~ e8 fis8 g8 ges8 
      | f4 e8 fis8 g8 es'8 \tuplet 3/2 {a8 bes8 e'8~} 
      | e'8 fis'4 b'8 e''8 b'8 \tuplet 3/2 {g'8 g'8 e'8~} 
      | e'4 a'8. c'16~ c'8 g'16 ges'16~ ges'8 f'8 
      | e'8. d'16 es'8 bes'4 aes'8 r4 
      | r8 bes8 d'8 f'8 \tuplet 3/2 {a'4 g'8} r4 
      \bar "||" r4 r8 g'8 f'8 r8 r8 f'8 
      | e'8 r8 r8 f'16 e'16~ e'8 d'4 e'8 
      | \tuplet 3/2 {d'8 c'16 r8.} r2 bes4~ 
      | bes4 g4 \tuplet 3/2 {gis8\glissando  a4} c'4 
      | gis8\glissando  a4\bendAfter #-4  r8 r2 
      | r2 \tuplet 3/2 {des''8 c''8 b'8} bes'8 a'8 
      | aes'8 g'8 ges'8 f'4 e'8 \tuplet 3/2 {d'8 c'4} 
      | b8 bes8 a8 aes8 g8 ges8~ ges16 f8 bes16 
      | b8 ges8 f8 dis8 e4 r4 
      | r4 \tuplet 3/2 {d'4 des'8} c'4 b4 
      | aes8 r8 r8. c'16~ c'8 r8 \tuplet 3/2 {r8 bes8 des'8} 
      | e'8 cis'8 d'8 gis'8 a'4 g'4 
      | d'4.^\markup{\left-align \small vib} r8 r2 
      | \tuplet 3/2 {d'4 b8} e'4 f'8. g'16~ g'8 c'8~ 
      | c'8 c'4. f'8\glissando  a'4. 
      | b4. r8 r8. c'16~ \tuplet 3/2 {c'8 f'8 a'8~} 
      \bar "||" \mark \default a'16 bes'8 a'16~ a'8 f'8 c'4 a'8 bes'8 
      | a'8 f'8 c'4 f'16 a'8 bes'16 a'8 f'8 
      | c'8 f'8 a'4. bes'8~ bes'16 a'8 f'16 
      | c'8 f'8 a'8. bes'16 a'8 f'8 c'8 f'8 
      | a'1 
      | bes'8 a'8 f'4 d'8 a'8 bes'8 a'8~ 
      | a'8 f'8 d'4 a'8 bes'8 a'8 r8 
      | r2 r8 d'16 f'16 gis'16 a'16 d''8 
      | \tuplet 3/2 {b'8 a'8 g'8} f'16 e'8 gis'16 b'8 a'16 gis'16~ gis'16 es'16 d'16 cis'16 
      | b8 gis16 ges16 f16 e16 r8 r4 r8. g'16 
      | gis'16 a'16 b'8 es''8 c''16 des''16 \tuplet 3/2 {b'8 bes'8 b'8} \tuplet 3/2 {a'8 g'8 a'8} 
      | c''16 c''16 bes'16 a'16 \tuplet 3/2 {g'8 fis'4} \tuplet 3/2 {g'8 bes'8 ges'8} f'16 e'16 f'16 g'16 
      | a'16 f'16 e'16 dis'16 e'16 g'8 b'16 ges'8 f'8 \tuplet 3/2 {cis'8 bes8 a8} 
      | gis8 bes16 e'16 d'8 des'8 \tuplet 3/2 {g8 f8 dis8} des4 
      | c4 bes,8 aes,4 r8 r4 
      | r4 \tuplet 3/2 {aes,8 es8 bes,8~} \tuplet 3/2 {bes,8 d8 bes,8} \tuplet 3/2 {a,8 d8 ges8} 
      \bar "||" f8 e16 d16 \tuplet 3/2 {des8 c8 f8} ges16 bes8 g16 aes16 bes8 c'16~ 
      | \tuplet 3/2 {c'8 a8 bes8} \tuplet 3/2 {c'8 cis'8 d'8} es'8 cis'16 d'16 des'8 e'8 
      | gis'16 a'16 gis'16 ges'16 \tuplet 3/2 {f'8 es'8 d'8~} d'16 f'16 g'16 bes'16 \tuplet 3/2 {d''8 c''4} 
      | r1 
      | r8. c'16 \tuplet 3/2 {e'8 a'8 d''8} \tuplet 3/2 {c''8 b'8 a'8} f'4\bendAfter #-4  
      | bes'8 a'8 g'8 ges'8 f'4 e'8 d'8 
      | des'8 c'8 bes8 g8 \tuplet 3/2 {gis8 a4} f8 e8 
      | g4 e4 f8 d8 r4 
      | r2 d'8 c'8 b8 gis8 
      | a8 b8 e'4 \tuplet 3/2 {a8 bes8 c'8} \tuplet 3/2 {e'4 cis'8} 
      | d'8 e'8 f'8 g'16 gis'16~ gis'8 a'8 r4 
      | r4 a'8\glissando  bes'4 a'8 g'8 f'8 
      | e'8 f'8 g'8 ges'8 f'8 dis'8 e'8 g'8 
      | \tuplet 3/2 {f'8 d'8 bes8~} bes4 e'2~ 
      | e'8 d'8 des'16 bes8 c'16~ c'8 des'8 bes8 r8 
      | r2 aes'8 ges'8 des'8 b8 
      \bar "||" \mark \default g'8 e'8 c'8 a8 ges'8 d'8 bes8 g8 
      | e'8 c'8 aes4 d'8 r8 r4 
      | r8 e'8~ e'4. c'8 a4 
      | \tuplet 3/2 {d'4 aes8} f4~ f16 c'8 g16 \tuplet 3/2 {f8 d4~} 
      | d16 g16\glissando  a8\bendAfter #-4  r2. 
      | r2 b8\glissando  c'4 bes8 
      | \tuplet 3/2 {a8 g8 f8~} f8 fis8 g8 ges8 \tuplet 3/2 {f4 dis8} 
      | e4 a,4 d4.^\markup{\left-align \small vib} r8 
      | r1 
      | r8 bes,8 b,8 gis8 gis,8. bes,16~ bes,4 
      | a,8 r8 r4 c8 r8 r4 
      | e8 cis8 \tuplet 3/2 {d4 e8} f8 g8 aes8 e'8 
      | aes8 g8 e'8. f'16~ \tuplet 3/2 {f'8 a'8 b'8} e''8 r8 
      | r8 a''8~ a''2 r4 
      | r2 bes''8 aes''8 g''8 f''8 
      | es''8 des''4 b'8~ \tuplet 3/2 {b'8 a'8 aes'8} g'8 ges'8 
      \bar "||" e'4~ e'16 e'8 a'16~ a'8 ges'8\glissando  f'8 dis'16 e'16~ 
      | e'4 d''8 r8 r4 c''4 
      | r4 a'8 r8 r4 bes'8 r8 
      | r2 ges'8 a'4. 
      | f'8 g'4. \tuplet 3/2 {e'4 f'8~} f'4 
      | c'8 r8 r2. 
      | c'8 d'8 e'16 g'16 a'16 c''16~ c''8 a'8 \tuplet 3/2 {f'8 e'4} 
      | a'4 e'8 g'8 ges'8 d'8 r4 
      | r4 r8 bes16 a16~ \tuplet 6/4 {a16 aes16 g8 fis16 bes,16~} bes,8. f16 
      | e4~ \tuplet 3/2 {e8 b8 bes8} a16 aes16 g16 ges16 f16 e8. 
      | \tuplet 3/2 {g4 a8} bes8 g8 \tuplet 3/2 {gis8 a8 g8} f8 d8 
      | f4 r2. 
      | r16 c8 d16 \tuplet 3/2 {e8 f8 g8~} \tuplet 3/2 {g8 f8 e8~} e8 g8 
      | bes8 c'8 a8 bes8 c'8 des'8 dis'8 e'8 
      | g'8 e'8 f'8 g'8\glissando  a'8 f'4 r8 
      | r2. f'8 g'8 
      \bar "||" \mark \default a'8 c''8 a'8 f'8 c'8 f'8 a'8 b'8\glissando  
      | c''4 bes'4 g'8\glissando  a'4\bendAfter #-4  r8 
      | r4 r8 f'8 d''8 des''8 c''8 b'8 
      | \tuplet 3/2 {bes'4 g'8} \tuplet 3/2 {gis'4 a'8} c''8 a'8 f'4 
      | g'8 a'8 bes'8 g'8 \tuplet 3/2 {f'4 g'8~} g'8 r8 
      | r8 ges'8 f'8 e'8 d'8 des'8 bes8. g16 
      | gis4 e'8 c'8 gis8 f8 d8 cis8 
      | ges8 r8 r4 f8 d4 r8 
      | r4 r8 cis8 \tuplet 6/4 {d16 dis16 f16 a8 gis16~} \tuplet 3/2 {gis8 ges8 f8} 
      | es16 d8 b16~ b8 gis8 a8 bes8 c'8 a8 
      | bes8 c'8 \tuplet 3/2 {des'8 e'8 f'8} a'4 r4 
      | \tuplet 3/2 {g'8 aes'8 g'8} ges'8 f'8 e'8 d'8 \tuplet 3/2 {c'4 des'8~} 
      | des'16 c'8 aes16 g8 gis16 a16~ a8 r8 r8. fis16~ 
      | fis8\glissando  g8~ g8. e16 f4 d8 r8 
      | r2 \tuplet 3/2 {aes,8 bes,8 es8} f8 aes8 
      | bes8 es'8 f'8 gis'8 a'8 b'16 e''16~ e''8 r8 
      \bar "||" r2. a,4~ 
      | a,8 c8 d8 e8 f8 g16 gis16~ gis16 a16 b8 
      | \tuplet 3/2 {c'8 e'8 f'8~} \tuplet 3/2 {f'8 a'8 b'8} cis''16 d''8. e''4~ 
      | e''4 r4 r8. d''16~ d''8 c''8~ 
      | c''4 a'4 e'8 bes'8 \tuplet 3/2 {g'4 f'8} 
      | gis'16 a'8. f'8 d'8 g'4 r4 
      | r2 a'8 aes'16 g'16~ g'8 ges'8 
      | f'8 e'8 d'8 c'8 b8 r8 r4 
      | d'8 c'8 b8 a8 gis4. f8 
      | e8 c'8~ c'16 b8 a16~ \tuplet 3/2 {a8 gis8 fis8} e8 f8 
      | g8 a8 \tuplet 3/2 {bes4 g8} \tuplet 3/2 {bes8 a8 g8} \tuplet 3/2 {ges4 e8} 
      | f8 r8 r2 c'8 bes8 
      | r2 c8 d8 \tuplet 3/2 {e8 fis8 g8~} 
      | g16 gis8 a16~ a8 bes8 g8 f8 \tuplet 3/2 {e4 f8~} 
      | f8 a8 d'4~ d'16 bes16 des'16 dis'16 \tuplet 3/2 {e'4 cis'8} 
      | d'8 e'8 f'8 g'8 \tuplet 3/2 {gis'8 a'4~} a'4~ 
      \bar "||" \mark \default a'8 g'8 f'8 r8 r2\bar  ".."
    }
    >>
>>    
}
