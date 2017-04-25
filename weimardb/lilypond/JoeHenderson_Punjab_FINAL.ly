\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Punjab"
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key d \major
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
      
      | d1:maj | d2:maj bes2:13.9 | b1:maj | aes1:maj | f1:min5-7 | bes1:7 | e1:11+.9 | s1 
      | s1 | s2 es2:7 | aes1:maj | g1:13.9 | ges2:13.9 b2:maj | f1:9 | f1:9sus4 | s1 
      | g2:maj a2:maj | b2:maj c2:maj11+.9 | d1:maj | s2 bes2:13.9 | b1:maj | aes1:maj | f1:min5-7 | bes1:7 
      | e1:11+.9 | s1 | s1 | s2 es2:7 | aes1:maj | g1:13.9 | ges2:13.9 b2:maj | f1:9 
      | f1:9sus4 | s1 | g2:maj a2:maj | b2:maj c2:maj11+.9 | d1:maj | s2 bes2:13.9 | b1:maj | aes1:maj 
      | f1:min5-7 | bes1:7 | e1:11+.9 | s1 | s1 | s2 es2:7 | aes1:maj | g1:13.9 
      | ges2:13.9 b2:maj | f1:9 | f1:9sus4 | s4 r2. | g2:maj a2:maj | b2:maj c2:maj11+.9 | d1:maj | s2 bes2:13.9 
      | b1:maj | aes1:maj | f1:min5-7 | bes1:7 | e1:11+.9 | s1 | s1 | s2 es2:7 
      | aes1:maj | g2.:13.9 r4 | ges2:13.9 b2:maj | f1:9 | f1:9sus4 | s1 | g2:maj a2:maj | b2:maj c2:maj11+.9 
      | d1:maj | s2 bes2:13.9 | b1:maj | aes1:maj | f1:min5-7 | bes1:7 | e1:11+.9 | s1 
      | s1 | s2 es2:7 | aes1:maj | g1:13.9 | ges2:13.9 b2:maj | f1:9 | f1:9sus4 | s1 
      | g2:maj a2:maj | b2:maj c2:maj | d1:maj|
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


      \tempo 4 = 160
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r16 cis'16 d'16 fis'16 
      | a'16 cis''16 e''8~ e''4~ \tuplet 6/4 {e''8 cis''16 a'16 fis'16 d'16} \tuplet 3/2 {cis'8 b8 ais8~} 
      | ais4 r4 r16 ais,16 b,16 dis16 fis16 ais16 g16 gis16 
      | \tuplet 6/4 {ais16 b16 c'8 dis'16 f'16} \tuplet 3/2 {ais'8 gis'8 g'8} f'16 dis'16 cis'16 c'16 ais16 g8. 
      | r2 r8. ais'16 b'16 ais'8 gis'16~ 
      | \tuplet 5/4 {gis'16 fis'8 g'16 fis'16} f'8 dis'8~ dis'16 cis'8 b16~ b16 fis8 dis16 
      | ais4 b8 gis4 r8 r4 
      | r4 r8. gis'16 \tuplet 3/2 {ais'8 fis'8 gis'8} \tuplet 3/2 {e'8 fis'8 cis'8} 
      | \tuplet 3/2 {e'8 b8 cis'8~} cis'16 gis16 ais16 fis16 \tuplet 6/4 {gis8. e16 fis16 cis16~} cis16 e16 fis16 gis16~ 
      | gis16 ais16 b16 cis'16~ \tuplet 3/2 {cis'8 e'8 g'8} gis'16 ais'8.~ \tuplet 6/4 {ais'16 gis'8. fis'16 g'16~} 
      \bar "||" g'8 f'8 dis'8 c'8 \tuplet 3/2 {ais4 gis8} \tuplet 3/2 {g4 dis8} 
      | c'8 a16 f16 d8. ais16\glissando  b4 r4 
      | r4 r16 cis'16 e'16 gis'16 b'16 ais'8 gis'16 fis'8 e'8~ 
      | \tuplet 5/4 {e'16 dis'16 fis'16 dis'16 cis'16} c'8 ais8 gis16 c'16 dis'16 g'16 d'8. c'16 
      | f'4 dis'8. g16~ g16 fis8 g16 \tuplet 3/2 {d'4 c'8~} 
      | c'16 a8 b,16 dis8 g8 fis8. a16~ a16 cis'8 e'16 
      | fis'4~ fis'16 cis'8 gis'16~ gis'4 \tuplet 6/4 {r4 r16 ais'16~} 
      | ais'16 dis'16 ais16 gis16 ais8 r8 r2 
      \bar "||" \mark \default \tuplet 6/4 {r4 c''16\glissando  cis''16~} \tuplet 6/4 {cis''8. fis'16 dis'16 cis'16~} cis'16 b8 cis'16~ cis'4~ 
      | cis'2 r4 \tuplet 6/4 {ais'4~ ais'16 ais'16~} 
      | \tuplet 6/4 {ais'4 gis'16 dis'16} \tuplet 3/2 {ais8 gis4} ais4~ \tuplet 6/4 {ais4~ ais16 g'16~} 
      | \tuplet 6/4 {g'8. d'16 ais16 g16} f8 g8 r4 g8 dis8 
      | f4 r2 r8. b16 
      | \tuplet 3/2 {ais8 gis4} f16 gis16 fis16 f16 gis16 b16 gis16 dis'16 d'16 cis'16 b16 ais16 
      | fis16 gis8 e16 e8 r8 r2 
      | r4 r16 b,16 e16 a16 fis8 b16 e'16~ e'8 fis'16 b'16 
      | gis'8 r8 r8 dis'8 \tuplet 3/2 {fis'8 dis'8 e'8} \tuplet 3/2 {cis'8 b8 gis8} 
      | e4 \tuplet 3/2 {r8 e8 fis8} gis16 b16 gis16 ais16~ ais8. ais16 
      \bar "||" g8 r8 r4 g16 ais16 b16 ais16 g16 gis8. 
      | ais16 b8 d'16~ d'16 f'8 d'16 a'8 g'8 \tuplet 3/2 {f'4 d'8} 
      | e'8 fis'8 gis'8 ais'8 dis'8 f'8 g'8 a'8~ 
      | a'16 c'8 d'16~ d'16 dis'8 f'16~ f'16 g'8 dis'16 \tuplet 3/2 {d'4 c'8} 
      | \tuplet 3/2 {f'8 fis'4~} fis'4 f'4..^\markup{\left-align \small vib} dis'16~ 
      | dis'16 dis'16 d'16 c'16~ c'16 ais8 g16~ \tuplet 6/4 {g16 a4 f16} r4 
      | r4 \tuplet 6/4 {r16 a'16 fis'16 d'8 b16~} b8 b'16 gis'16 e'16 cis'16 r8 
      | r1 
      \bar "||" \mark \default r2. \tuplet 6/4 {r4 b'16 a'16} 
      | gis'8. b'16 a'16 gis'8 b'16 a'16 gis'8 fis'16 f'8. gis'16 
      | fis'16 f'8 gis'16 \tuplet 3/2 {fis'8 f'4} \tuplet 6/4 {g'16 fis'16 f'8. f'16} dis'16 d'8. 
      | f'16 dis'16 d'8 \tuplet 6/4 {f'16 dis'16 d'8. f'16} \tuplet 6/4 {dis'8 d'8. ais16~^\markup{\left-align \small vib}} ais4~ 
      | ais8 ais8 ais4~ ais16 b8 f16~ f4~ 
      | f16 f8 dis16~ dis16 ais,8 gis,16~ \tuplet 6/4 {gis,4~ gis,16 ais16} gis4 
      | fis4~ fis16 gis8 e16~^\markup{\left-align \small vib} e4 r4 
      | r4 \tuplet 3/2 {r8 e'8 fis'8} \tuplet 3/2 {gis'8 ais'4} r4 
      | \tuplet 6/4 {r4 r16 ais'16} gis'16 fis'16 e'16 ais'16 gis'16 fis'16 e'16 ais'16 \tuplet 6/4 {g'16 gis'16 fis'16 e'16 ais'16 gis'16} 
      | fis'16 e'16 ais'16 gis'16 \tuplet 6/4 {fis'16 e'16 ais'8 gis'16 fis'16~} \tuplet 6/4 {fis'16 e'8 a'16 gis'16 fis'16~} \tuplet 5/4 {fis'16 e'16 ais'16 gis'16 fis'16~} 
      \bar "||" \tuplet 5/4 {fis'16 e'16 ais'16 gis'16 g'16} f'16 dis'8 ais'16 \tuplet 6/4 {gis'16 g'16 f'16 dis'8 ais'16} \tuplet 6/4 {gis'16 g'16 f'16 dis'16 a'16 gis'16} 
      | \tuplet 6/4 {g'16 f'16 dis'16 d'8.~} \tuplet 6/4 {d'16 gis'16 g'16 f'16 dis'16 d'16} \tuplet 6/4 {gis'8 g'16 f'16 dis'16 d'16} \tuplet 6/4 {gis'8 f'16 dis'16 d'16 gis'16} 
      | g'16 fis'16 e'4 r8 r2 
      | r2 \tuplet 5/4 {r8 d'16 fis'16 cis'16} d'16 f'16 dis'8~ 
      | \tuplet 6/4 {dis'4~ dis'16 d'16~} d'16 c'16 g8~ \tuplet 6/4 {g16 a16 c8 dis'16 g'16} f'16 d'16 ais16 dis'16 
      | \tuplet 5/4 {d'16 ais16 g16 f16 c'16~} c'16 a16 ais16 d'16 a'16 g'16 f'16 dis'16 d'16 c'16 ais16 b16~ 
      | b8 fis4 d4 gis4 r8 
      | r2 \tuplet 6/4 {r4 ais'16\glissando  b'16~} b'4~ 
      \bar "||" \mark \default b'4. a'8~ a'16 b'16\glissando  cis''4.~^\markup{\left-align \small vib} 
      | cis''4. b'8 a'8 gis'8 fis'16 e'8 d'16~ 
      | d'16 cis'8 b16~ b16 ais8 gis16~ gis16 fis8 e16 dis8 cis8 
      | c8 d16 dis16 \tuplet 6/4 {f16 g16 ais4} \tuplet 6/4 {gis4~ gis16 b16~} \tuplet 6/4 {b16\glissando  c'4 fis'16~} 
      | fis'16 ais'8 gis'16 dis'4 b16 f'16\glissando  fis'16 dis'16 f'4~^\markup{\left-align \small vib} 
      | f'4~ f'16 f'16 dis'16 cis'16 ais'8 ais16 b16 e8 f8 
      | r1 
      | r2 \tuplet 3/2 {r8 gis'8 ais'8} \tuplet 3/2 {ais'8 ais'8 ais'8} 
      | \tuplet 3/2 {ais'8 ais'8 ais'8} \tuplet 3/2 {ais'8 ais'8 ais'8} \tuplet 3/2 {ais'8 cis''8 cis''8} \tuplet 6/4 {cis''8 cis''16 cis''8 cis''16} 
      | r2 \tuplet 6/4 {gis'8 cis''16 b'8 gis'16} ais'8 g'8 
      \bar "||" r2. r8. b'16 
      | c''4~ \tuplet 6/4 {c''8 a'16 g'16 f'16 e'16} \tuplet 6/4 {d'16 c'16 b16 a16 g16 fis16~} \tuplet 6/4 {fis8 g16 a16 ais16 dis'16} 
      | \tuplet 6/4 {cis'16 d'8 f'16 g'16 gis'16} b'16 gis'16 a'16 fis'16~ fis'16 gis'16 e'16 dis'16 cis'16 fis'16 b16 gis16~ 
      | gis16 ais16 fis16 g16 gis16 e16 dis16 cis16 \tuplet 6/4 {c8. dis16 e16 ais16~} \tuplet 3/2 {ais8 dis8 f8~} 
      | \tuplet 6/4 {f16 dis8 f16 g16 ais16} d'16 c'16 a16 g16 \tuplet 6/4 {a16 c'8 dis'16 f'16 d'16~} \tuplet 6/4 {d'4~ d'16 ais'16} 
      | \tuplet 3/2 {d''8 c''8 g'8} dis'16 ais'16 g'16 gis'16 \tuplet 6/4 {a'8 f'8 fis'16 g'16} \tuplet 6/4 {dis'8 d'16 c'16 f'16\glissando  fis'16~} 
      | fis'8. cis'16~ cis'4 gis'8. e'16~ \tuplet 6/4 {e'4~ e'16 gis'16\glissando } 
      | ais'4 fis'4 a'16\glissando  b'4.. 
      \bar "||" \mark \default \tuplet 3/2 {a'8 b'4~^\markup{\left-align \small vib}} b'2 r4 
      | r8. b'16 a'4 b'16 cis''4..~^\markup{\left-align \small vib} 
      | cis''2 r4 r8 cis''8 
      | r2 r8 g''8 r4 
      | r8 dis''4. b'8 gis'8 dis'8 fis'8 
      | f'8 dis'8 cis'8 b8 gis8. dis16 \tuplet 3/2 {ais4 gis8} 
      | \tuplet 3/2 {fis4 e8} dis8 r8 r4 \tuplet 6/4 {r4 cis16 dis16~} 
      | dis4. ais,16 b,16~ b,16 dis16 fis16 e16 \tuplet 3/2 {fis8 gis8 ais8} 
      | b16 cis'16 dis'16 e'16 fis'16 gis'16 ais'16 b'16 ais'16 gis'16 fis'16 e'16 \tuplet 6/4 {dis'16 cis'16 b16 ais8 gis16} 
      | fis16 gis16 ais8 r2 r8 gis,16 g16 
      \bar "||" e16 c16 dis16 ais16~ ais16 gis8 dis'16 \tuplet 5/4 {g'16 ais'16 a'16 gis'16 f'16} dis'16 g'16 f'16 cis'16 
      | b4 \tuplet 6/4 {e'16 f'16 e'16 d'8 c'16} \tuplet 6/4 {b8 d'16 dis'16 f'16 gis'16} \tuplet 7/8 {e'16 d'16 g'32 gis'32 fis'32} 
      | \tuplet 3/2 {e'8 dis'8 cis'8} \tuplet 6/4 {b16 ais8 fis16 g16 gis16~} \tuplet 6/4 {gis16 e16 cis8 fis16 e16} \tuplet 3/2 {f8 fis8 ais8} 
      | dis'16 cis'16 c'16 ais16 a16 c'16 dis'16 g'16 d'16 dis'16 g'16 ais'16 \tuplet 6/4 {d''16 c''8 g'8 dis'16~} 
      | \tuplet 5/4 {dis'16 ais'16 b'16 ais'16 g'16~} \tuplet 6/4 {g'16 a'8 b'16 a'16 f'16~} \tuplet 6/4 {f'16 g'16 a'16 g'16 dis'8} f'16 g'16 f'16 d'16 
      | dis'16 g'16 dis'16 c'16 d'4 \tuplet 3/2 {fis'4 gis8} fis4 
      | gis4 a4 fis8 ais8 b4 
      | r2 a'16\glissando  b'8.~ b'8 gis'8\glissando  
      \bar "||" a'4. fis'8 cis'4 r4\bar  ".."
    }
    >>
>>    
}
