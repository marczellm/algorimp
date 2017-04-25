\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Nearness of You"
  composer = "Branford Marsalis"
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
      | s2 a2:7 | d2:maj b2:min7 | e2:min7 a2:7 
      | d1:maj | a2:min7 d2:7sus4 | g1:maj | g1:dim7 | fis2:min7 b2:7 | e2:min7 a2:7 | fis2:min7 b2:7 | e2:min7 a2:7 
      | d1:maj | a2:min7 d2:7sus4 | g1:maj | g1:dim7 | fis2:min7 b2:7 | e2:min7 a2:7 | d2:maj c2:7 | d1:6 
      | e1:min7 | a1:7 | d1:maj | a2:min7 d2:7 | g1:maj | fis2:min5-7 b2:7 | e1:7 | e2:min7 a2:7 
      | d1:maj | a2:min7 d2:7sus4 | g1:maj | g1:dim7 | fis2:min7 b2:7 | e2:min7 a2:7 | d2:maj b2:min7 | e2:min7 a2:7 
      | d1:maj | a2:min7 d2:7sus4 | g1:maj | g1:dim7 | fis2:min7 b2:7 | e2:min7 a2:7 | fis2:min7 b2:7 | e2:min7 a2:7 
      | d1:maj | a2:min7 d2:7sus4 | g1:maj | g1:dim7 | fis2:min7 b2:7 | e2:min7 a2:7 | d2:maj c2:7 | d1:6 
      | e1:min7|
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


      \tempo 4 = 37
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r2 \tuplet 6/4 {r8 b8 cis'16 d'16} \tuplet 3/2 {e'8 d'8 cis'8} 
      | d'8.^\markup{\left-align \small vib} a16 d'4^\markup{\left-align \small vib} b16 d'16 b16 d'16~^\markup{\left-align \small vib} \tuplet 10/8 {d'8 b32 d'16 b32 d'32 b32} 
      | g16 d'16 g16 d'16~^\markup{\left-align \small vib} \tuplet 14/16 {d'16 g32. d'32 g32 d'32 g64~} \tuplet 18/16 {g32. d32 f32 d32 ais32. f32 d'32 ais64 f'64~} f'32 d'32 ais'32 f'32 c''32\glissando  d''32 ais'32 f'32 
      \bar "||" \mark \default a'4\bendAfter #-4  r2 a,4~ 
      | \tuplet 9/8 {a,32 b'32 a'32 e'32 g'32 fis'32 d'32 a32 fis32} c'32 d'32 e'32 c'32 a32 e32 g32 e32 fis16 d'8.~^\markup{\left-align \small vib} \tuplet 17/16 {d'64 f'64 d'64 dis'64 es'64 d'64 ais64 fis32 c'64 ais64 fis64 d64 ais64 fis64 d64 dis64} 
      | r4 r16 c'16 fis8 \tuplet 10/8 {a8~ a32 b16. ais32 fis32} \tuplet 6/4 {cis'16 d'16 a16 b8 a16} 
      | bes8 bes8 bes8 bes8 bes16 c'16 d'16 bes16 g8. aes16~ 
      | aes8 aes8 g16 gis16 gis8 gis16 ais16 c'16 ais16 \tuplet 6/4 {fis4~ fis16 g16~} 
      | \tuplet 6/4 {g8 g8. e16} g8 g8 g16 a16 ais16 cis'16 e'16 g'16 a'16 bes'16 
      | r4 a'4~^\markup{\left-align \small vib} a'16 a'16 gis'16 a'16 a'16\glissando  b'8 fis'16\glissando  
      | g'16 a'16 aes'16 g'16~^\markup{\left-align \small vib} g'4. ais'32 g'32 dis'32 ais32 \tuplet 6/4 {f'16 dis'16 ais16 dis16 f16 dis16} 
      \bar "||" e16 a16 fis8~^\markup{\left-align \small vib} \tuplet 10/8 {fis8 a32 d'16 a32 e'32 a'32} fis'16 e'32 a'32 fis'16 e'32 a'32 \tuplet 9/8 {fis'32 g'16 e'32 c'32 a32 c'32 e'32 g'32} 
      | \tuplet 11/8 {b'16 a'8 fis'32\glissando  g'16 e'32 c'32} a16 c'32 e'32 g'32 b'32 c''32 a'32~ \tuplet 18/16 {a'16~ a'64 gis'64 b'32 a'64 e'64 g'32. e'64 fis'64 g'64 fis'64 e'64~} \tuplet 18/16 {e'64 d'32. cis'32 c'32 b32 a32. g32 fis32 a64~} 
      | \tuplet 10/8 {a32 c'32 d'32 dis'32 c'32 cis'32 d'16 d16} fis16 a16 d'16 e'16 \tuplet 12/8 {ais32 fis'16 e'32 d'32 b16.\bendAfter #-4  b16. b32~} b32 b16 ais16 b16 a32 
      | bes8. b''16 r4 bes16 a''16 bes16 a''16 \tuplet 6/4 {bes8 a''16 bes16 a''16 bes16} 
      | a16 cis'16 e'8^\markup{\left-align \small vib} r2 \tuplet 10/8 {r16 fis'16 g'16 dis'32 f'32 fis'32 f'32} 
      | \tuplet 6/4 {e'16 c'16 a16 e16 d'8~^\markup{\left-align \small vib}} d'32 b32 fis32 cis'32 b32 a32 aes32 g32 \tuplet 10/8 {a32 b32 cis'16 dis'32 e'32 fis'32 dis'32 e'32 fis'32} \tuplet 9/8 {g'32 a'32 a'32\glissando  ais'32 c''32 a'32 gis'32 a'32 a32~} 
      | \tuplet 18/16 {a64 e'64\glissando  fis'32 e'32 e'32 d'32 d'32 cis'32 cis'32 b64 b64} a32 a32 a32 fis32 fis32 e32 e32 d32~ \tuplet 10/8 {d16. d16 bes,32 a16 a'32 g'32} \tuplet 9/8 {g'32 f'32 fis'32 e'32 e'32 d'32 d'32 b32 bes32} 
      | a32 a32 g32 g32 fis32 e'32 cis'32 d'32~^\markup{\left-align \small vib} d'8 r8 r4 \tuplet 6/4 {r4 a16 b16} 
      \bar "||" cis'16. d'32 cis'16 cis'32\glissando  d'32 \tuplet 3/2 {cis'8 g4^\markup{\left-align \small vib}} r4 \tuplet 6/4 {r4 a16 b16~} 
      | b16 d'16 cis'16 d'16 cis'8. g16~^\markup{\left-align \small vib} g4.. a16~ 
      | \tuplet 6/4 {a16 a16 fis16 a16 d'16 d'16} \tuplet 6/4 {fis16 a16 d'16 fis16 a16 d'16~} d'8~ d'32 g32 b32 d'32~ d'32 g32 b32 d'32 g32 b32 d'16~ 
      | \tuplet 13/16 {d'16. b64 c'64 gis64 b64 a64 e64 g64} \tuplet 7/8 {fis32 a32 c'32 d'32 dis'32 f'32 d'32~} d'64 fis'16 a'16 d''64 cis''64 c''64 b'64 a'64 g'64 fis'64 \tuplet 17/16 {e'64 d'64 cis'64 c'64 b64 a64 g64 a32 c'64 f'64 dis'64 f'64 d'64 c'64 ais64 fis64} 
      | \tuplet 6/4 {f16 e16 d4^\markup{\left-align \small vib}} r4 r8 d'32 cis'32 c'32 d'32~ d'32 b32 d'16 g'32 ais'32\glissando  b'32 bes'32 
      | a'4^\markup{\left-align \small vib} r4 a'32 c''32 fis'32 a'32 dis'32 fis'32 c'32 dis'32 a32 c'32 fis32 a32 dis32 fis32 a32 dis'32 
      | b4^\markup{\left-align \small vib} g32 b32 d'32 g'32 g'16 b'32 g'32~ \tuplet 18/16 {g'8~ g'32. g'64 a'64 b'64 g'64 a'64 g'64 e'64} \tuplet 10/8 {b32 fis'32 e'32 d'32 cis'32 c'32 b32 bes32 a16~^\markup{\left-align \small vib}} 
      | \tuplet 12/8 {a8~ a32 a32 g32 fis32 g32 a32 cis'32 fis'32~} \tuplet 17/16 {fis'32. dis'64 fis'64 e'64 d'64 cis'64 b64 a64 aes64 g64 a64 fis64 dis64 fis64 dis64} \tuplet 14/16 {e64 fis64 g64 a64 b64 d'64 cis'64 b64 a64 gis64 b64 fis'32 fis'64} \tuplet 19/16 {g'64 a'32 d''64 cis''64 c''64 b'64 a'64 gis'64 fis'64 e'64 d'64 cis'64 b64 a64 g64 fis64 e64 dis64~} 
      \bar "||" \tuplet 23/16 {dis8~ dis32. a32 d'32. a64 e'32. a64 fis'64 a'64} \tuplet 22/16 {fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'32~} \tuplet 24/16 {fis'8~ fis'32. gis'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64 fis'64 a'64} \tuplet 26/32 {fis'64 g'128 e'128 g'128 e'128 g'64 e'128 g'128 e'64 g'128 e'128 g'128 e'128 g'64. e'128 fis'128 d'128 fis'128 d'128 fis'128 d'128} 
      | \tuplet 20/16 {fis'64 d'32 d'16 e'64 c'64 e'64 c'64 e'64 c'64 e'64 c'64 e'64 c'64 e'64 c'64 e'64} \tuplet 12/8 {c'32 e'32 c'32 e'32 c'32 e'32 c'32 e'32 c'8~} \tuplet 20/16 {c'64 d'64 b64 d'64 b64 d'64 b64 d'64 b64 d'64 b64 d'64 b64 d'64 b64 d'64 ais64 d'64 ais64 d'64} \tuplet 19/16 {ais64 d'64 ais64 d'64 ais64 d'64 ais64 d'64 ais64 d'64 ais64 d'64 ais64 d'64 ais64 d'64 ais64 d'64 a'64} 
      | \tuplet 18/16 {d'64 a64 d'64 a64 d'64 a64 d'64 a64 d'64 a'64 d'64 a64 d'64 a64 d'64 a64 d'64 a64} \tuplet 12/8 {d'32 a32 d'32 a32 fis32 d32 a32 fis32 e32 fis32 fis16~} \tuplet 13/16 {fis8 g32 a64 a64\glissando  ais64} \tuplet 7/8 {b32 d'32 e'32 e'32\glissando  fis'32 a'32 a'32} 
      | \tuplet 10/8 {aes'32\bendAfter #-4  g'32 fis'16 g'32 d'32 bes32 f32 c'32 a32} \tuplet 10/8 {bes32 d'32 f'32 a'32 g'32 a'32 g'8^\markup{\left-align \small vib}} \tuplet 10/8 {es'32\glissando  f'32 d'32 bes32 g32 e'32 d'32 bes32~^\markup{\left-align \small vib} bes16} r4 
      | \tuplet 6/4 {r8 a'16 gis'16 a'16 a16} \tuplet 5/4 {a16 g'16 fis'16 g'16 a16} \tuplet 5/4 {a16 fis'16 f'16 fis'16 a16} \tuplet 10/8 {fis'32 g'32 fis'32 e'32 d'32 dis'32 c'16 b32 a32} 
      | \tuplet 12/8 {g32 e32 g32 b32 g32 b32 d'32 b32 d'32 g'32 d'32 g'32} a'16\glissando  b'8.~^\markup{\left-align \small vib} \tuplet 6/4 {b'16 b'16 g'16 d'16 b16 d'16} g'16 cis'8.~ 
      | cis'16 a16 d'8 e'16\glissando  fis'16 d'8~ \tuplet 20/16 {d'16. a16 d'64~ d'8 b'64~} b'16 a'16 f'16 d'16~ 
      | \tuplet 6/4 {d'16 a16 d'16 e'16\glissando  fis'8} g'16. fis'32 d'16. a32 \tuplet 6/4 {b8 a16 cis'8 a16} d'16 a16 e'8 
      \bar "||" \mark \default fis'8 a'8~^\markup{\left-align \small vib} \tuplet 6/4 {a'4~ a'16 fis'16} g'32 a'32 b'32 a'32 g'32 fis'32 e'32 fis'32 \tuplet 14/16 {g'64 a'64 b'64 a'64 g'64 fis'32 e'64 d'32 e'64 fis'64 g'64 fis'64} 
      | \tuplet 6/4 {e'16 d'16 cis'16 c'8.^\markup{\left-align \small vib}} r4 a'16 b'16 d''8~^\markup{\left-align \small vib} \tuplet 14/16 {d''8. a'64\glissando  b'64} 
      | r4 r8 r32 ais32 b32 d'32 e'32 f'32 fis'32 e'32 f'32 e'32 f'32 dis'32~ \tuplet 10/8 {dis'32 e'32 d'32 dis'32 cis'16 d'32 b32 g32 d32} 
      | \tuplet 11/8 {a16 fis16 b32 d'32 e'32 f'32 f'32 e'32 e'32} \tuplet 6/4 {d'16 d'16 bes16 cis'16 a16 g16~^\markup{\left-align \small vib}} g8 r8 r8. f16\glissando  
      | fis8 a8 fis8 a8 fis16 a16 b16 a16\glissando  \tuplet 6/4 {ais16 c'16 b8 a16 aes16} 
      | g4^\markup{\left-align \small vib} r4 r16 g16 a16 g16 \tuplet 6/4 {a16\glissando  ais16 gis16 a8 g16} 
      | fis4^\markup{\left-align \small vib} r4 r16 fis16 f16 fis16 fis16 g16 dis8 
      | f16\glissando  fis16 f16 e16~ e4 r4 \tuplet 24/16 {r32 ais'64 g'64 f'64 dis'64 g'64 f'64 dis'64 ais64 dis'32 c'64 ais64 g64 f64 dis64 ais64 g64 f64 dis64 c64\glissando  cis64 c64} 
      \bar "||" bes,16 a,16 r8 \tuplet 10/8 {r8 r32 a32 d'32 a32 e'32\glissando  f'32} \tuplet 9/8 {fis'16 a16 a32 d'32 a32 f'32 fis'32~} fis'32 a16 a32 d'32 a32 f'16 
      | \tuplet 9/8 {fis'16 fis'16 g'32 fis'32 e'32 d'32 cis'32~} \tuplet 26/32 {cis'128 c'32. e'32. a'64 b'128~ b'32 d''32~ d''128 b'128~} b'16 a'16 gis'16 a'16~^\markup{\left-align \small vib} a'4 
      | a16 b16 d'16 b16 d'8^\markup{\left-align \small vib} r8 \tuplet 6/4 {r4 b16 d'16} \tuplet 6/4 {fis'16 fis'16 e'16 b8 a16} 
      | bes8 d'16 bes16\glissando  dis'16 e'16 bes,8^\markup{\left-align \small vib} r4 r16 dis'16\glissando  e'16 d'16 
      | a4~ a16 dis'16\glissando  e'16 d'16 a16 gis8.~ \tuplet 6/4 {gis8 dis'16\glissando  e'16 d'8} 
      | g4~^\markup{\left-align \small vib} \tuplet 12/8 {g32 g32 e32 g32 b32 g32 b32 d'32 b32 d'32 g'32 d'32} g'16 b'8.~^\markup{\left-align \small vib} b'16 b'16\glissando  cis''8 
      | d''2~^\markup{\left-align \small vib} d''8 c''16 bes'16~ bes'32 fis'32 aes'8 bes'32 c''32~ 
      | c''32 a'16 d'32 e'16 fis'32 gis'32~ \tuplet 6/4 {gis'16 e'16 b16 gis8.~^\markup{\left-align \small vib}} \tuplet 20/16 {gis16. a16.. b16. c'64} \tuplet 3/2 {cis'8 d'8 dis'8} 
      \bar "||" e'2~^\markup{\left-align \small vib} e'8 r8 r4\bar  ".."
    }
    >>
>>    
}
