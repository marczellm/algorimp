\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Just One of Those Things"
  composer = "Pepper Adams"
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
      | d1:min7 | s1 | s1 | s1 
      | d1:min7 | d1:min7 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | aes1:7 | g1:min7 | c1:7 | f1:6 | fis1:dim | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | aes1:7 | g1:min7 | c1:7 | f1:6 | fis1:dim7 | f1:min7 | bes1:7 
      | es1:maj | e1:dim | f1:min7 | bes1:7 | es1:6 | s1 | d1:min7 | g1:7 
      | c1:6 | s1 | fis1:min5-7 | f1:min7 | e1:min7 | es1:dim | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | d1:7 | g1:min7 | c1:7 | f1:maj | s1 | e1:min5-7 | a1:7 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | aes1:7 | g1:min7 | c1:7 | f1:maj | fis1:dim7 | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | aes1:7 | g1:min7 | c1:7 | f1:maj | fis1:dim7 | f1:min7 | bes1:7 
      | es1:6 | e1:dim | f1:min7 | bes1:7 | es1:6 | s1 | d1:min7 | g1:7 
      | c1:6 | s1 | fis1:min5-7 | f1:min7 | e1:min7 | es1:dim | g1:min7 | e2:min5-7 a2:9+ 
      | d1:min7 | s1 | e1:min7 | a1:7 | f1:7 | s1 | b1:min5-7 | bes1:min6 
      | f1:/a | d1:7 | g1:min7 | c1:7 | f1:maj | s1 | e1:min5-7 | a1:7|
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


      \tempo 4 = 314
      \set Score.currentBarNumber = #-3
     
      | r2 g8 e8 f8 g8 
      | a8 c'8 e'8 d'8 c'8 a8 g16 f8 e16~ 
      | \tuplet 3/2 {e8 c8 d8~} d8 g8 \tuplet 3/2 {e4 f8} a8 bes8~ 
      | bes8 aes8 \tuplet 3/2 {g8 f8 e8} d8 des4 e8~ 
      \bar "||" \mark \default \tuplet 3/2 {e8 cis8 d8~} d8 e8 f8 g16 a16~ \tuplet 3/2 {a8 bes8 e'8~} 
      | \tuplet 3/2 {e'8 d'8 e'8} d'8 b8 \tuplet 3/2 {a4 b8} a8 r8 
      | r4 r8. e16~ e8 f8 \tuplet 3/2 {g8 a8 bes8~} 
      | bes16 a8 aes16~ \tuplet 3/2 {aes8 g8 f8~} f16 e8 d16~ d8 b,8 
      | c8. b,16 \tuplet 3/2 {c4 d8} es8 f8 g8 a8 
      | \tuplet 3/2 {d'4 b8~} \tuplet 3/2 {b8 c'8 d'8} es'8 f'8 r4 
      | r8 cis8~ \tuplet 3/2 {cis8 f8 g8} c'8 bes8 a8 f8 
      | c'4 aes8 f8 des16 c8. bes,8 r8 
      | r2 aes,8 c8~ c16 es8 g16~ 
      | g16 aes8 bes16~ bes16 b8 des'16 \tuplet 3/2 {c'8 bes8 aes8~} aes8 r8 
      | r2 g4 \tuplet 3/2 {a8 bes8 c'8~} 
      | c'8 cis'8 d'8 bes8 b8 c'8 r4 
      | r4 c'8 a8 g8 f16 e16~ e8 c8 
      | d8 e8 g8 f8 e8 d8 bes8 g8 
      | a8 r8 r4 es8 f8 g16 a8 a16 
      | \tuplet 3/2 {bes4 a8\glissando } bes8 bes8 a8. dis16 r4 
      \bar "||" r8 cis8 \tuplet 3/2 {d4 e8} f8 g8 a8 bes8 
      | \tuplet 3/2 {dis8\glissando  e4~} e8 d'8 e'8 d'8 r4 
      | r4 r8. a16 bes4 e8. gis16 
      | a8 r8 r4 gis8 f8 cis4 
      | a,8 d4. \tuplet 3/2 {d4 b,8} \tuplet 3/2 {c4 des8} 
      | es8 r8 r4 \tuplet 3/2 {r8 des8 es8} g4 
      | c'8 d'8 f'8 c'8 r4 r8 c'8 
      | des'8 es8~ \tuplet 3/2 {es8 f8 g8} c'8 bes8 r4 
      | r4 e'8 d'8 \tuplet 3/2 {c'4 a8} g8 f8 
      | e4 \tuplet 3/2 {e4 c8} d8 r8 r4 
      | r8. d16~ d8 ges8 \tuplet 3/2 {a8 c'8 a8} bes8 c'8 
      | des'8. es'16~ es'8 c'4 bes8~ bes16 f8 g16 
      | a4 r2 a8 c'8 
      | e'8 d'8 c'8 a8~ \tuplet 3/2 {a8 g8 f8} \tuplet 3/2 {e4 d8} 
      | f8 e8 f8 g8 aes4. d8 
      | g8 f8 es8 c8 d8 bes8 r4 
      \bar "||" r4 g8 bes8 d'8 c'8 bes8 g8 
      | f8 es8 d8 bes,8 \tuplet 3/2 {cis4 b,8} c8 r8 
      | r2 bes,8. g,16 aes,8 bes,8~ 
      | \tuplet 3/2 {bes,8 c8 es8} g8 f8 aes8 bes8 g8 f8 
      | \tuplet 3/2 {es8 d8 bes,8} c8 d8 \tuplet 3/2 {f4 es8} d8 es8 
      | g8 bes8 c'8 es'8 r2 
      | r4 e8 cis8 d8 e8 a8 g16 a16~ 
      | a8 b8 a16 bes8 b16~ b16 aes8 g16~ g8 f8 
      | e8. g16~ g8 d'8 b8 c'8 r4 
      | r8. b16~ b8 a8 g8 e8 c4 
      | fis4 a8 c'8 e'8 r8 r4 
      | dis'8 e'8 \tuplet 3/2 {es'8 c'8 b8} aes8 g8 f8 r8 
      | r2. e8 g8 
      | b8 a8 g8 e8 d8 c8 b,8 g,8 
      | c8 r8 r2 c16 b,8 a,16 
      | aes,4 \tuplet 3/2 {bes,8 c8 es8} d4 \tuplet 3/2 {dis4 f8} 
      \bar "||" \tuplet 3/2 {g8 a4} r2. 
      | d8 f8 a8 bes4 a8 f8 des8 
      | g4 r2 dis'8 g8 
      | a16\glissando  bes8 dis16~ dis16 f16 g8 bes8 a8 r4 
      | r2 c'8 b8 a8 g8 
      | f8 e8 \tuplet 3/2 {es4 f8} g8 a8 d'8 c'8~ 
      | c'8 f'8 des'8 c'8 \tuplet 3/2 {bes8 a8 g8~} g4 
      | e'8\glissando  f'8 des'8 c'16 bes16 es4 ges8 r8 
      | r2 a8 c'8 e'8 g'8~ 
      | g'8 e'16 f'16 fis'8 d'8 r2 
      | e'8 f'8 d'8 bes16 a16~ a8 g8 \tuplet 3/2 {ges8 e8 f8~} 
      | \tuplet 3/2 {f8 dis8 e8~} e8 c'8 r2 
      | r4 c'8 d'8 e'8 f'8 \tuplet 3/2 {e'8 d'8 c'8~} 
      | \tuplet 3/2 {c'8 d'8 c'8~} c'16 bes8 a16~ a8 c8 d8 e8 
      | g8 f8 e8 c8 d8 a,8 bes,8 b,8 
      | des8 dis8 e8 fis8 g8 a8 bes8 b16 cis'16~ 
      \bar "||" \mark \default cis'8 e'8 d'8 a8 g8 r8 r4 
      | \tuplet 3/2 {r8 des'8 e'8} \tuplet 3/2 {d'4 a8} g8 f8 \tuplet 3/2 {e4 cis8} 
      | \tuplet 3/2 {d4 a,8~} a,16 bes,8 c16 cis8 dis8 e8 fis8 
      | g8 a8 bes8 c'16 cis'16~ cis'16 e'8 d'16 b4 
      | c'8 r8 r2 b16 c'8 d'16 
      | es'8 f8 \tuplet 3/2 {g8 a8 des'8} c'8 r8 r4 
      | r8 d'8 g'4 f'4 c'8 cis'8 
      | es4~ \tuplet 3/2 {es8 f8 c'8} bes8 r8 r4 
      | r8. b16~ \tuplet 3/2 {b8 e'8 d'8} r4 r8. es'16~ 
      | es'16 c'16 des'16 bes16~ bes8 a8 g8 ges8 r4 
      | r8 d8 g8 a8 bes8 b,8 c8 d8 
      | a8 g16 f16~ f8 dis8 e8 d8 c8 bes,8 
      | a,8 c8 e8 c8 \tuplet 3/2 {e4 c8} r4 
      | r4 r8. c16~ c8 d8 e8 g8 
      | e8 f8 a8 c'8 e'8. d'16~ d'8 a8 
      | bes8 c'8 des'8 e'8 fis'8 r8 r4 
      \bar "||" r2 aes2~^\markup{\left-align \small vib} 
      | aes4 r4 gis'8. a'16~ a'4~ 
      | a'4~ \tuplet 3/2 {a'8 e'8 g'8~} g'8 f'4 e'8~ 
      | e'8 d'4 cis'8~ cis'16 e'8 f'16~ f'8 gis8 
      | a8 r8 r4 c'8 b8~ b16 bes16 a16 g16~ 
      | \tuplet 3/2 {g8 f8 es8~} es4 \tuplet 3/2 {f4 g8} \tuplet 3/2 {a8 d'4} 
      | \tuplet 3/2 {c'8 e'8 f'8~} f'8 d'8 \tuplet 3/2 {c'4 bes8} a16 dis8 c16~ 
      | c8 des8 \tuplet 3/2 {es4 f8~} f16 c'8 bes16 r4 
      | r2 aes8 g8 es'8 g'8 
      | e'4 \tuplet 3/2 {aes8 g8 aes8~} aes16 bes16 c'16 es'16 aes'8 r8 
      | r2 \tuplet 3/2 {fis8 g4} bes16 des'16 f'8 
      | d'8. f16 ges4 \tuplet 3/2 {aes8 des'8 f'8} a'8 r8 
      | r2 e'8 d'8 c'8 a8 
      | \tuplet 3/2 {g8 f8 e8~} e8 c8 d4 g8 f8 
      | e8 f8 bes8 a8 aes16 g16 a8 c'8 b8 
      | c'8. d'16 es'8 b8 \tuplet 3/2 {aes8 g8 f8} bes8 g8 
      \bar "||" f8 es8 d8 bes,8 c8 d8 f8 es8~ 
      | \tuplet 3/2 {es8 cis8 dis8} gis8 bes8 des'8 c'8 r4 
      | r4 r16 es'8 b16 \tuplet 3/2 {aes8 f8 f8~} f8 d'8~ 
      | d'8\glissando  es'8 c'8 aes8 ges8. bes16 r4 
      | r4 d'8 c'8 bes8 g8 f8 es8 
      | d8 es8 g8 bes8 d'8 c'4 d8~ 
      | d8 e8 f8 a8 c'8 r8 r4 
      | r8 c'8 a16 b8 d'16 \tuplet 3/2 {gis4 f8} \tuplet 3/2 {g4 f8} 
      | \tuplet 3/2 {e4 g8} a8 b8 \tuplet 3/2 {cis'8\glissando  d'4~} d'16 c'8 b16~ 
      | b8 c'8 b8 a8 g8 e8 d8 r8 
      | r4 \tuplet 3/2 {a,4 b,8} c16 e8 fis16 gis4 
      | \tuplet 3/2 {ges4 f8} r2 r8 f8 
      | \tuplet 3/2 {g8 gis8 bes8~} bes16 c'8 d'16 \tuplet 3/2 {c'8 b16 r8.} r4 
      | r8. des'16~ des'16 c'8 b16~ b8 aes8 g8 e8 
      | c4 d4 r4 r8. e16~ 
      | \tuplet 3/2 {e8 f8 g8~} g16 a8 bes16~ \tuplet 3/2 {bes8 gis8 a8~} a16 g8 f16~ 
      \bar "||" f8 r8 r2. 
      | r2 r16 aes16 ges16 f16 des8 bes,8 
      | cis8 d4. cis4 e8 bes,8~ 
      | bes,8 r8 r4 e8 c16 a,16 \tuplet 3/2 {bes,8 bes,16 r8.} 
      | r8. d16~ d8 b,8 c8 d16 es16~ es8 f8 
      | \tuplet 3/2 {g8 a8 d'8} c'8 r8 r4 cis8 d8 
      | \tuplet 3/2 {f8 g8 a8~} a8 c'8 bes4 c8 cis8~ 
      | cis8 f8 g16 a8 c'16~ c'8 dis'8 r4 
      | r4 r8 e'8 \tuplet 3/2 {d'8 c'4} a8 g16 ges16 
      | \tuplet 3/2 {f8 e8 c8} \tuplet 3/2 {dis4 bes8} r4 r8. cis16 
      | d8 f8 a16 c'16 bes16 a16~ \tuplet 3/2 {a8 bes8 c'8~} c'16 des'8 es'16~ 
      | es'8 c'4 bes8 f8 g16 gis16\glissando  a8 r8 
      | r4 a8 c'8 dis'16\glissando  e'16 d'8 c'8 a8 
      | \tuplet 6/4 {g4 f16 e16~} e8 c8 d8 e8 g8 e8 
      | f8 g8 r2 g8 a8 
      | \tuplet 3/2 {bes4 aes8} \tuplet 3/2 {g8\glissando  a4~} a8 f8 d4\bar  ".."
    }
    >>
>>    
}
