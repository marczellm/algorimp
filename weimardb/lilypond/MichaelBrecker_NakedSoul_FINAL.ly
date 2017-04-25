\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Naked Soul"
  composer = "Michael Brecker"
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
      
      | g1:min | g1:min | g1:11+.9 | d1:11+.9+ | f1:min11.9 | e2:/g g2 | c1:7sus4 | c1:9+ 
      | f1:sus4 | d1:11+.9+ | bes1:sus4 | ges1:/a | c1:/aes | c1:13-.9+11+ | f1:maj | e2:maj9+ d2:13-.9+11+ 
      | g1:min9 | f1:7/g | g1:maj11+.9 | d1:11+.9+ | ges1:/f | e2:/b g2:13-.9+11+ | g1:min7 | a1:/c 
      | des1:maj | es1:6 | des2:5+/c a2:/b | b1:maj/ais | c1:/aes | des2:11+.9+ c2:13-.9+11+ | f1:min7+maj | s1 
      | g1:min | a1:/g | g1:11+.9 | d1:11+.9+ | f1:min11.9 | e1:/g | c1:7sus4 | c1:9+ 
      | f1:sus4 | d1:11+.9+ | bes1:sus4 | ges1:/a | c1:/aes | c1:13-.9+11+ | f1:maj | e2:maj9+ d2:13-.9+11+ 
      | g1:min9 | f1:7/b | g1:maj11+.9 | d1:11+.9+ | ges1:/f | e2:/b g2:13-.9+11+ | g1:min7 | a1:/c 
      | des1:maj | es1:6 | des2:5+/c a2:/b | b1:maj/ais | c1:/aes | des2:11+.9+ c2:13-.9+11+ | f1:min7 | s1 
      | g1:min|
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


      \tempo 4 = 92
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. d'16 g'16 a'16 bes'16 c''16~ \tuplet 5/4 {c''16\glissando  cis''16 d''16 c''16 bes'16} a'16\bendAfter #-4  a'8.~ 
      | a'8 c'8 c'4 c'2 
      | c''8\glissando  cis''4 b'16 bes'16 a'8 r8 r4 
      | r4 r8 c'8 c'4~ c'16 ais'16\glissando  ais'16 c''16~ 
      | c''4. \tuplet 6/4 {bes'16 a'16\bendAfter #-4  a'16\bendAfter #-4 } aes'16 aes'32\bendAfter #-4  g'32 c'16. c'32~ c'16 c'8 es'16~ 
      | \tuplet 6/4 {es'16 des'16 c'16 b8.} r2 \tuplet 6/4 {ais'16\glissando  b'16 gis'16 dis'8 aes'16} 
      | \tuplet 7/8 {g'16 f'16 d'32 e'32 d'32} c'8 r8 r2 
      | r4 r8 a16 bes16 c'16 des'16 e'16 g'16 a'16 ais'16 b'16\glissando  c''16~ 
      \bar "||" \tuplet 6/4 {c''16\bendAfter #+4  b'16 c''8. ais'16} \tuplet 6/4 {b'16 bes'16 aes'16 bes'8.~^\markup{\left-align \small vib}} bes'8~ bes'32 aes'32 f'32 es'32 \tuplet 3/2 {b8 es'8 bes8} 
      | \tuplet 3/2 {dis'8 gis8 d'8} f4^\markup{\left-align \small vib} r2 
      | r4 r8 es8 d16 es16 f16 g16 \tuplet 7/8 {aes8~ aes32 bes32\bendAfter #-4  a32} 
      | r2 r8 des'16 dis'16 \tuplet 6/4 {e'16 fis'16 g'8 aes'16 bes'16~} 
      | \tuplet 3/2 {bes'8 aes'8 g'8~} \tuplet 5/4 {g'16 f'16 d'16 e'16 d'16} c'4. \tuplet 6/4 {ais16 gis16 e16} 
      | \tuplet 3/2 {aes8 dis4~} dis16 e32 ges32 aes32 bes32 c'32 dis'32 \tuplet 6/4 {e'16 ges'16 bes'16 c''4.} bes'16 aes'16 
      | \tuplet 6/4 {g'8 f'16 d'16 e'16 d'16} c'8 r8 r2 
      | r4 r16. d''32 c''32 ais'32 aes'32 g'32~ \tuplet 6/4 {g'16 ges'16 bes'8 f'16 e'16~} \tuplet 10/8 {e'32 es'16 f'16 cis'32 d'16 des'32 c'32~} 
      \bar "||" \tuplet 5/4 {c'16 bes16 g16 d16 bes16~} bes4~ bes16 c'16\glissando  d'8 des'32 c'32 bes32 f16 g32 gis32 a32 
      | \tuplet 3/2 {c'8 f'4~} f'4 d'16 c'16 b16 f'16~ \tuplet 6/4 {f'16 es'16 d'16 des'16 b16 e'16~} 
      | e'32 es'32 d'32 cis'32 b32 bes32 a16~ a8 r8 r4 \tuplet 7/8 {r16. dis32 fis32 g32 ais32} 
      | c'32 d'32 dis'32 f'32 fis'32 gis'32 ais'32 c''32~ c''8~ c''32 ais'32 gis'32 ges'32 f'2~^\markup{\left-align \small vib} 
      | f'16 c'16 ais16\glissando  b16~ b8 c'8~ c'16. f'32 es'32 es'32 c'32 b32~ \tuplet 6/4 {b16 bes16 aes16 f8.} 
      | r2 aes'16 g'16 ges'16 bes'16 \tuplet 6/4 {aes'16 es'16 aes'16 g'8 f'16} 
      | \tuplet 6/4 {g'16 d'16 e'16 d'16 c'8~} c'8 r8 r4 f'16 dis'16 e'16 g'16 
      | bes'16 c''16 cis''16 e''16 bes'4~ \tuplet 9/8 {bes'16 a'16 ais'16 c''16 cis''32} \tuplet 3/2 {dis''8 c''8 ais'8} 
      \bar "||" aes'16 f'16 es'16 c'16 bes16 aes16 f16 c16 es16 c16 f16 es16 \tuplet 6/4 {aes16 f8 bes16 f16 c'16~} 
      | \tuplet 6/4 {c'4 bes16 aes16} bes8 r8 r4 \tuplet 5/4 {r8 f16 g16 a16} 
      | bes16 c'16 des'16 es'16 f'16 g'16 a'16 bes'16 c''16 cis''16 b'16 a'16 gis'16 ges'16\glissando  f'16 e'16 
      | dis'16 b16 gis16 dis16 ais4.. aes'16 g'16 f'16 d'16\glissando  e'16 
      | \tuplet 3/2 {f'8 g'8 e'8} c'8 r8 r4 \tuplet 6/4 {r8 dis'16 cis'16 gis16 e16} 
      | \tuplet 3/2 {ais4 c'8} \tuplet 3/2 {des'4 dis'8} e'16 ges'16\glissando  aes'16 g'16~^\markup{\left-align \small vib} g'4~ 
      | \tuplet 6/4 {g'8. f'16 es'16 c'16~} \tuplet 5/4 {c'16 bes16 aes16 f16 c16} \tuplet 3/2 {es8 aes8 f8} r4 
      | r16 d'16 es'16 bes'16 d''16 d''16 f''8~^\markup{\left-align \small vib} f''2~ 
      \bar "||" \mark \default f''4 g''8 r8 r8. d'16~ d'32 g'16 d'32 a'16. d'32 
      | bes'16 a'16 c''4.\glissando  \tuplet 10/8 {des''32 c''32 ais'32 g'32 f'32 d'32 c'32 ais32 g32 f32} d4~ 
      | \tuplet 9/8 {d32 fis16 a32 b32 cis'32 e'32 fis'32 a'32} \tuplet 6/4 {b'16 cis''16 e''16 bes'16 a'16\bendAfter #+4  b'16~} \tuplet 12/8 {b'8 c''16 bes'32 a'32 fis'16 e'32 d'32} \tuplet 10/8 {cis'32 b32 a32 ges32 f32 e16 d32 f32 fis32} 
      | \tuplet 10/8 {gis32 ais32 c'32 d'32 e'32 d'32 dis'32 f'32 fis'32 gis'32} \tuplet 7/8 {ais'32 c''32 d''32 b'32 ges'32 f'32 b'32} \tuplet 10/8 {gis'32 es'32 d'32 gis'32 ges'32 f'32 cis'32 b32 d'16} a32 gis32 c'32 b32 bes32 a32 ges32 f32 
      | dis32 c16 es16 f16 aes32 bes4~^\markup{\left-align \small vib} bes16 aes16 f8 r4 
      | \tuplet 6/4 {r8 g'8 gis'16 fis'16} \tuplet 3/2 {g'8 g''8 g''8} \tuplet 6/4 {dis''16 b'8 dis'16 gis'16 ais'16} \tuplet 6/4 {b'8 cis''16 dis''16 cis''16 b'16} 
      | bes'16 aes'16 g'16 f'16 \tuplet 6/4 {e'8 f'16 fis'16 g'16 a'16} bes'16 c''16 des''16 es''16 c''16 f'16 g'16 c''16 
      | a'16 aes'16 g'16 c''32 a'32~ \tuplet 6/4 {a'16 ges'8 des'16 aes'16 es'16~} es'16 des'16 aes16 ges16 \tuplet 6/4 {f'16 es'16 c'16 b8 ges16} 
      \bar "||" bes4~ \tuplet 3/2 {bes8 f8 aes8} \tuplet 3/2 {bes8 aes8 f8~^\markup{\left-align \small vib}} f4~ 
      | f16 gis,32 b,32 dis32 fis32 ais32 gis32 \tuplet 9/8 {f32 e32 dis32 f32 gis32 b32 dis'32 cis'32 b32} gis32 f32 g32 b32 dis'32 ais32 g32 gis32 \tuplet 7/8 {ais32 c'32 dis'32 f'32 gis'32 ais'32 c''32} 
      | d''32 des''32 c''32 b'32 bes'8~^\markup{\left-align \small vib} \tuplet 5/4 {bes'8 a'16 aes'16 g'16} f'16 es'16 d'16 c'16 bes8 r8 
      | r4 \tuplet 10/8 {r16 e'16. des''16. c''32 b'32} bes'16 a'8 ges''16~ ges''8 r8 
      | r4 \tuplet 3/2 {r8 c''8 e''8} g''16 aes''16 g''8 \tuplet 3/2 {e''8 c''8 aes'8} 
      | \tuplet 5/4 {g'16 f'16 e'16 g'16 bes'16} \tuplet 3/2 {es''8 g''8 aes''8} ges''16 e''16 es''16 des''32 c''32~ c''16 b'16 bes'16 a'16 
      | aes'32 g'16 f'16. d'32 e'32~ \tuplet 6/4 {e'16 f'8 g'16 aes'16 f'16~} \tuplet 6/4 {f'16 g'16 aes'8 ais'16 b'16} d''16 f''8.~ 
      | f''8 e''8 es''16 d''16 c''16 b'32 ais'32~ \tuplet 7/8 {ais'16 ges'32\glissando  f'16 es'32 d'32~} d'16 c'16 b16. a32~ 
      \bar "||" \tuplet 6/4 {a16 bes16 c'16 d'16 e'8} f'16 g'16 a'16 bes'16 \tuplet 5/4 {c''16 b'16 bes'16 a'16 bes'16} a'32 aes'32 g'16 a'16 aes'32 g'32 
      | ges'16 f'16 c'8 r2 \tuplet 10/8 {r16. f32 ges32 a32 b32 cis'32 d'32 e'32} 
      | ges'32 cis'32 e'32 fis'32 a'32 b'32 cis''32 e''32 \tuplet 6/4 {b'16 e''16 a'16 e'16 b'16 e''16} \tuplet 6/4 {a'16 b'16 cis''16 e''16 b'8~} b'32 f32 fis32 gis32 ais32 c'32 dis'32 f'32 
      | \tuplet 6/4 {fis'16 gis'16 ais'16 c''16 d''8~} \tuplet 10/8 {d''8 c''32 b'16 ais'16 dis''32} f''2~^\markup{\left-align \small vib} 
      | f''4~ f''16 es''16 c''16 es''16 \tuplet 6/4 {c''16\glissando  b'8 bes'16 aes'16 bes'16} aes'16 f'8.^\markup{\left-align \small vib} 
      | r4 \tuplet 5/4 {g'16 gis'16 ais'16 b'16 cis''16} es''16 c''16 des''16 b'16 c''16 ais'16 b'8 
      | aes'16 b'16 bes'16 aes'16 \tuplet 5/4 {g'16 f'16 d'16 e'16 d'16} \tuplet 10/8 {c'32 b8 bes16 c'16 des'32~} des'16 dis'16 e'16 fis'16 
      | g'16 a'16 ais'16 c''16 \tuplet 5/4 {dis''8 e'16 c''16 cis'16~} cis'32 a'16 ais32 fis'16 g32 dis'32 e4~ 
      \bar "||" \tuplet 3/2 {e8 c'8 es'8} f'16 gis'16 a'16\glissando  c''16 bes'4~ bes'16 aes'16 g'16 f'16 
      | \tuplet 3/2 {es'8 f'8 es'8} r2 \tuplet 9/8 {r16. bes,32 des32 es32 a32 g32 f32} 
      | \tuplet 10/8 {e32 es32 f32 g32 bes32 es'32 c'16 b32 bes32} \tuplet 6/4 {a16 b16 e16 es'16 ges'16 f'16} \tuplet 9/8 {a'32 g'32 ais'32 cis''32 a'32 b'32 cis''32 b'32 a'32} \tuplet 10/8 {gis'32 ges'32 f'16 e'32 es'32 d'32 cis'32 b32 ais32~} 
      | ais8. f16 gis16 ais8.~ \tuplet 6/4 {ais8 aes'16 g'16 ges'16 f'16} cis'16 e'16 g'16 gis'16 
      | \tuplet 3/2 {c''8 e''8 g''8~} g''4 r4 \tuplet 5/4 {r8 d''16 dis''16 f''16} 
      | es''4~ es''16 a'16\glissando  b'16 bes'16~ bes'4 aes'16 f'16 es'16 c'16~ 
      | \tuplet 6/4 {c'16 b16 bes8 aes16 f16~} f16 es16 aes16 f16~ f8 r8 r4 
      | r8.. ges'32 f'16 es'16 d'16 des'16 \tuplet 6/4 {c'16 bes16 g8 es16 a16} \tuplet 3/2 {bes8 c'8 d'8~} 
      \bar "||" \mark \default \tuplet 6/4 {d'16 c'8. bes16 g16} d8 r8 r2\bar  ".."
    }
    >>
>>    
}
