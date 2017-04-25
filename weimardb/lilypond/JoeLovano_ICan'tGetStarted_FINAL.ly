\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Can't Get Started"
  composer = "Joe Lovano"
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
      | s4 r2. | s1 | s1 | s1 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:min5-7 | d2:min7 g2:7sus4 | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:min7 g2:7sus4 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:min5-7 | d2:7 g2:7sus4 | c2:maj a2:min7 | d2:min7 g2:7 | c2:6 bes2:7 | c1:maj 
      | e2:min7 a2:7 | e2:min7 a2:7 | d2:maj g2:maj | d1:maj | d2:min7 g2:7 | d2:min7 g2:7 | e2:min7 a2:7 | d2:7 g2:7sus4 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 | c2:maj a2:9- | d2:min7 g2:7 | c1:6 | d2:min7 g2:7 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 | c2:maj a2:min7 | d2:min7 g2:7 | c2:6 bes2:7 | c1:maj 
      | e2:min7 a2:7 | e2:min7 a2:7 | d2:maj g2:maj | d1:maj | d2:min7 g2:7 | d2:min7 g2:7 | e2:min7 a2:7 | d2:7 g2:7sus4 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 | c2:maj a2:9- | d2:min7 g2:7 | c1:6 | d2:min7 g2:7 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 | c2:maj a2:min7 | d2:min7 g2:7 | c2:6 bes2:7 | c1:maj 
      | e2:min7 a2:7 | e2:min7 a2:7 | d2:maj g2:maj | d1:maj | d2:min7 g2:7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 
      | c2:maj a2:min7 | d2:min7 g2:7 | e2:7 a2:7 | d2:7 g2:7sus4 | c2:maj a2:9- | d2:min7 g2:7 | c1:6 | d2:min7 g2:7|
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


      \tempo 4 = 107
      \set Score.currentBarNumber = #-3
     
      \bar "||" \mark \default r4 \tuplet 6/4 {r16 d16 dis16 e16 g16 a16} \tuplet 6/4 {bes16 g8 a16 e'16 a16~} \tuplet 5/4 {a16 bes16 dis'16 e'16 g'16} 
      | bes'16 g'16 a'8 \tuplet 6/4 {d'8 g'8 f'16 des'16} bes8 a8 \tuplet 3/2 {des'4 a8~} 
      | \tuplet 3/2 {a8 aes8 e8} \tuplet 3/2 {d8 g8 f8} aes4~^\markup{\left-align \small vib} \tuplet 5/4 {aes8 g16 aes16 ais16} 
      | b16 d'16 f'16 aes'16 \tuplet 3/2 {fis'8 g'8 des'8} es'16 ges'16 dis'16 e'16~ e'16 d'16 c'16 aes16~ 
      \bar "||" \mark \default aes16 g16 f16 c16~ c16 e8 c16 b,16 d8 c16~ c8 r8 
      | r8 b8 \tuplet 3/2 {a8 f8 e8~} e16 g16 f16 e16 d8 r8 
      | r4 r8 d'8 d'8 e'8 \tuplet 6/4 {c'8. c'8 d'16~} 
      | \tuplet 3/2 {d'8 c'8 d'8~} d'16 b8 b16~ b8 ais8 gis4 
      | gis16 ais8 ais16~ ais8 g4 r8 r8 a8 
      | e8 g8 f8 f8 g8 gis4 ais16 b16 
      | d'8 e'4 r8 r4 \tuplet 6/4 {r8. f'16 e'16 d'16} 
      | \tuplet 5/4 {des'16 b16 bes16 a16 aes16} bes16 d'16 c'16 aes16~ aes16 ais16 g16 gis16~ gis16 d16 g8 
      \bar "||" d16 f8 e16 g4^\markup{\left-align \small vib} e8 d16 c16~ c8 e8 
      | c8 a,4 r8 r2 
      | r8. c16 \tuplet 7/8 {d16 f32 gis16 fis32 g32~} g16 bes16 g16 aes16 \tuplet 5/4 {ais16 b16 c'16 des'16 dis'16} 
      | e'16 f'16 fis'16 g'16 e'16 c'16 g16 b16 \tuplet 3/2 {a8 ais8 gis8} \tuplet 3/2 {e8 dis8 f8} 
      | \tuplet 3/2 {f4 e8} g4. \tuplet 6/4 {a16 b16 d'16~} \tuplet 3/2 {d'8 b8 c'8~} 
      | c'8 a8~^\markup{\left-align \small vib} a4~ \tuplet 3/2 {a8 g8 f8~} f4~ 
      | \tuplet 3/2 {f8 e8 c8~} c8 r8 r4 r16 c16 b,16 bes,16~ 
      | \tuplet 3/2 {bes,8 c8 a,8~} a,8 r8 r4 \tuplet 6/4 {r16 a'4 a'16~} 
      \bar "||" a'16 fis'16 dis'16 a16~ \tuplet 3/2 {a8 cis'8 a8~} a32 b16. fis16. e32~ \tuplet 3/2 {e8 cis8 f8~} 
      | f16 cis8 b,16 r2 \tuplet 6/4 {r8 d16 dis16 e16 fis16} 
      | \tuplet 3/2 {a8 fis8 cis'8~} cis'8 cis'16 d'16 e'16 fis'32 a'16.\glissando  c''32 cis''32~^\markup{\left-align \small vib} cis''4~ 
      | cis''4 r4 \tuplet 6/4 {r8 a'8 c''16\bendAfter #+4  des''16} \tuplet 6/4 {c''8. c''16\bendAfter #+4  des''16 c''16} 
      | \tuplet 6/4 {a'8. a'8 gis'16~} gis'16 a'8 gis'32 a'32~ a'16 gis'16 a'8 g'8 g'8~ 
      | \tuplet 6/4 {g'8 g'8. f'16~} f'4. e'8 \tuplet 3/2 {d'8 c'8 b8} 
      | e'4^\markup{\left-align \small vib} r2 \tuplet 6/4 {r16 f'16 e'8 dis'16 f'16} 
      | fis'16 bes'16 a'16 f'16 \tuplet 3/2 {cis'8 gis'8 f'8~} f'16 dis'16 ges'8~ ges'16 f'16 es'16 d'16 
      \bar "||" c'16 b16 aes16 g16 fis16 e8. g16 b8. a8 e8 
      | g8 f8 r4 r8. a16 c'16 a16 ais16 b16~ 
      | b32 cis'16 d'32 e'32 fis'32 a'32 cis''32~ \tuplet 6/4 {cis''16 d''16 cis''16 b'16 a'16 gis'16~} \tuplet 5/4 {gis'16 ges'16 f'16 e'16 dis'16} \tuplet 6/4 {aes'8 g'8 d'16 e'16} 
      | \tuplet 5/4 {g'8 e'16 c'16 b16~} b16 a16 ais16 b16 dis'8 g'16 ais'16~ \tuplet 3/2 {ais'8 gis'8 f'8} 
      | \tuplet 3/2 {d'8 b8 g8} \tuplet 3/2 {b8 g4~^\markup{\left-align \small vib}} g16 f16 e8 r4 
      | \tuplet 6/4 {r4 f16 e16} \tuplet 3/2 {d4 e8} \tuplet 6/4 {f16 g16 gis16 ais8.~} \tuplet 5/4 {ais8 aes16 g16 f16~} 
      | \tuplet 6/4 {f16 e4 b16~} b32 d'16. b32 c'16 d'32~ \tuplet 6/4 {d'16 f'8 e'16 dis'16 c'16~} c'16 ais16 g16 gis16 
      | \tuplet 6/4 {aes16 g16 fis16 g8.} r4 r16 f16 e8~ \tuplet 6/4 {e16 g4^\markup{\left-align \small vib} e16} 
      \bar "||" \mark \default d8 c8 r2. 
      | \tuplet 6/4 {r8. d''16 c''16 b'16~} \tuplet 5/4 {b'16 c''16 b'16 bes'16 a'16~} \tuplet 6/4 {a'8 b'16 a'16 aes'16 g'16} a'8 r8 
      | r4 \tuplet 6/4 {r16 aes'16 g'16 ges'16 f'16 fis'16~} \tuplet 6/4 {fis'16 g'8 f'16 e'16 dis'16} ges'4~ 
      | ges'16 f'16 e'4 e'8 r4 r16 dis'8 b16 
      | d'4~ \tuplet 3/2 {d'8 d'8 b8} r2 
      | \tuplet 6/4 {r4 b16 g16} \tuplet 3/2 {a8 f8 e8~} \tuplet 5/4 {e16 g8 ges16 f16~} f16 e16 f16 g16 
      | \tuplet 6/4 {ais16 d'16 f'16 e'8 es'16} d'16 cis'16 b16 ais16 aes16 g16 ais16 ges16~ \tuplet 3/2 {ges8 f8 d8} 
      | r4 r8.. a32 \tuplet 6/4 {g16 fis16 e16 g16 ais16 d'16} \tuplet 6/4 {b16 a16 gis16 ais16 c'8} 
      \bar "||" \tuplet 10/8 {b16 c'32 d'32 e'32 d'32 c'32 b16 c'32~} c'32 f'32 a'32 g'32 f'32 e'16 ais'32 d''16 c''16 a'8 r4 
      | r8. g'32 a'32~ a'32 g'16. ges'32 f'16 e'32 d'8 c'8 \tuplet 6/4 {b8 a16 g8 ges16} 
      | f8 r8 r8. dis16~ dis16 e16 g16 ais16 b16 cis'16 dis'32 f'16 e'32 
      | \tuplet 3/2 {dis'8 f'8 gis'8~} \tuplet 5/4 {gis'16 a'16 b'16 dis''16 e''16} cis''8 a'8 ais'8 gis'8~ 
      | gis'16 dis'16 g'8~ \tuplet 6/4 {g'8 f'8 g'16 f'16} \tuplet 6/4 {e'16 f'16 e'16 d'16 e'16 d'16} c'16 d'16 c'8 
      | d'8 r8 r8 c'8 d'16 c'16 b8^\markup{\left-align \small vib} a16 g8 g16 
      | \tuplet 6/4 {e'8 c'8. c'16~^\markup{\left-align \small vib}} c'4. f'16 e'16 es'16 f'16 ges'16 bes'16~ 
      | \tuplet 6/4 {bes'16 aes'8 g'16 fis'16 gis'16} \tuplet 3/2 {f'4 e'8} \tuplet 6/4 {dis'8 ges'16 f'16 e'16 cis'16~} \tuplet 6/4 {cis'16 b8 fis16 g16 b16} 
      \bar "||" d'16 cis'16 aes16 g16 \tuplet 3/2 {fis8 ais8 f8~} f16 e8 a16~ a4 
      | r4 r16 cis16 e16 b,16 a,4 r4 
      | r4 b,16 cis16 fis16 cis16~ \tuplet 6/4 {cis16 d16 e16 f16 gis16 fis16} gis16 cis'8. 
      | cis'16 e'16 cis'16 d'16 \tuplet 6/4 {e'16\bendAfter #+4  f'16 ges'4~} ges'16. f'16 e'16 es'32~ \tuplet 6/4 {es'16 d'8 c'16 cis'16 e'16~} 
      | e'16 cis'16 d'16 e'16~ e'32 f'16 g'32 a'16 c''32 d''32 dis''16 e''8.~ e''16 d''16 c''16 b'16 
      | d''16 c''16 b'16 c''16 a'8 r8 \tuplet 6/4 {r4 b'16 a'16} aes'16 g'16 a'16 gis'16 
      | e'8 g'8~ g'16 g'8 g'16~ g'16 g'8 gis'16~ gis'8 a'8 
      | r4 \tuplet 6/4 {r16 dis'16 e'16 g'8.} \tuplet 3/2 {e'8 f'4~} f'8 fis'8~ 
      \bar "||" fis'8. g'16 r4 \tuplet 3/2 {r8 e'8 d'8} r4 
      | r8 e'8 a8 r8 r8.. gis32~ gis32 a32 ais32 c'32 e'32 d'32 c'32 b32 
      | \tuplet 6/4 {cis'16 e'16 f'16 a'16 aes'8} r4 \tuplet 7/8 {r32 g'32 gis'32 f'32 c'32 ais32 fis32~} \tuplet 10/8 {fis16 g'16. dis'32 c'16 ais32 b32~} 
      | \tuplet 6/4 {b16 gis16 a16 c'8 b16} \tuplet 6/4 {c'16 d'16 e'16 fis'16 bes'16 a'16~} \tuplet 6/4 {a'16 cis'16 dis'16 ges'16 f'8} \tuplet 6/4 {cis'16 ais16 fis16 gis16 dis'16 cis'16} 
      | \tuplet 6/4 {ais16 fis16 cis16 ais,8 dis16} gis,4 r2 
      | \tuplet 6/4 {r16 des16 b,16 des8 b,16} \tuplet 6/4 {f16 es16 d16 des8 bes16} gis16 ais16 dis'32 ais32 b32 c'32 dis'32 c'16 cis'32 dis'16 c'32 d'32 
      | \tuplet 6/4 {e'16 d'16 c'16 b16 a16 gis16} \tuplet 6/4 {b16 ais16 d'16 b8 c'16} e'16 a'16 g'8~ \tuplet 3/2 {g'8 g'8 e'8} 
      | d'8 c'8 r4 r16. f'32 e'32 es'32 d'32 c'32 \tuplet 5/4 {b16 ais16 aes16 g16 r16} 
      \bar "||" \mark \default r4 \tuplet 7/8 {b'16 c''32 d''32 des''32 c''32 b'32} a'16 g'16 f'16 e'16 \tuplet 6/4 {d'16 e'16 g'16 e'16 f'8} 
      | \tuplet 10/8 {c'16 a32~ a8 e'32 f'32 e'32} d'16 a16 f16 e16~ e8 d8 r4 
      | r8 d32 e32 f32 a32 \tuplet 5/4 {c'16 ais16 b16 c'16 cis'16} d'32 dis'32 f'32 fis'32 g'16 gis'32 f'32~ \tuplet 5/4 {f'16 cis'16 ais16 f'16 g'16~} 
      | \tuplet 7/8 {g'16 ges'32 f'32 e'32 d'32 c'32} \tuplet 5/4 {b16 gis16 a16 c'16 ais16} b16 cis'32 dis'32 g'32 ais'16 g'32 \tuplet 7/8 {gis'16 ais'16 b'32 dis''32 dis''32~} 
      | dis''8 b'8 e''8 r8 r8 b'16 a'16~ a'16 a'8 a'16~ 
      | \tuplet 3/2 {a'8 a'8 g'8} c''4 \tuplet 3/2 {b'8 a'8 f'8} g'4 
      | g'16 ges'16 f'16 e'16 dis'16 f'16 fis'16 ais'16~ \tuplet 6/4 {ais'16 gis'8 cis'8 ges'16~} ges'16 f'16 e'16 f'16 
      | cis'8 gis16 d'16~ d'8 c'8 \tuplet 3/2 {d'8 b4~} b16 a16 b16 g16~ 
      \bar "||" g8 f8 g16 e8 b16 d'4.^\markup{\left-align \small vib} c'16 a16 
      | r4 r8 e8 \tuplet 3/2 {g8 e8 f8} d8 r8 
      | r4 \tuplet 6/4 {r8 d'8. d'16~} d'8 d'8 e'8 c'8 
      | d'8 b4 b8 r4 bes16 a16 f16 ais,16 
      | gis,4 r4 \tuplet 3/2 {r8 b'8 gis'8} d''16 gis'16 a'16 b'16 
      | f'8 e'8 \tuplet 3/2 {g'8 e'8 f'8} c'16 gis16 a16 e'16~ \tuplet 3/2 {e'8 d'8 c'8} 
      | d'8 e'8~ \tuplet 6/4 {e'16 c'8. a16 c'16~} c'4 c'4~ 
      | \tuplet 3/2 {c'8 c'8 b8} r4 r8 c'16 cis'16 d'32 dis'32 e'8 f'32 fis'32~ 
      \bar "||" fis'16 g'16 gis'16 a'16~ a'4 gis'16 a'4. a'16~ 
      | a'8 r8 r4 fis'4 \tuplet 3/2 {ges'4 f'8} 
      | e'4 fis'4 \tuplet 3/2 {a'8 gis'16 r8.} r8. fis'16~ 
      | fis'16 b'16 fis''16 e''16 \tuplet 6/4 {des''16 c''16 a'16 b'8 fis'16} e'8 a'16 fis'16~ fis'16 e'16 cis'16 d'16 
      | e'16 f'8 g'16~ \tuplet 6/4 {g'16 d'16 gis'16\glissando  a'8.~} a'4. gis'16 a'16~ 
      | a'16 gis'16 a'16 aes'16 f'8 dis'16 e'16~ e'16 dis'16 e'8 d'4 
      | g'4. e'16 g'16~ g'16 aes'8\bendAfter #-4  g'16 r4 
      | r8 g'16\glissando  a'16~ a'8 e'8 \tuplet 3/2 {a'8 a'8 ais'8~} ais'8.. ais'32~ 
      \bar "||" \tuplet 3/2 {ais'8 ais'8 d''8} b'4. \tuplet 10/8 {a'32 g'16. b'32} g'8 e'8 
      | \tuplet 3/2 {gis'8\bendAfter #+4  a'8 aes'8} f'16 e'8 d'16~ \tuplet 3/2 {d'8 d'8 c'8~} c'16 b8 a16~ 
      | a4. d'4 e'8 c'8. d'16~ 
      | d'8 b4 b8 r4 r8 b,16 c16~ 
      | \tuplet 3/2 {c8 e8 g8~} g16 ais16 b8 c'8 a4 g8 
      | f8 g8 \tuplet 3/2 {d'8 f'4~} f'8 e'16 d'16 \tuplet 3/2 {c'8 b4} 
      | g16 d'8 c'16~ c'8 r8 r4 r16 dis'16 f'16 g'16 
      | bes'16 aes'16 g'16 ges'16~ ges'8 f'16 e'16 d'16 dis'16 c'16 aes16~ aes8 g8 
      \bar "||" g'8 d'8 d'4 e'4. r8\bar  ".."
    }
    >>
>>    
}
