\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Yesterdays"
  composer = "J.J. Johnson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key d \minor
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
      | s2 r4 s4 | s1 | s1 
      | d1:min | e2:min5-7 a2:9- | d1:min | e2:min5-7 a2:9- | d2:min d2:min/cis | d1:min/c | b1:min5-7 | e1:7 
      | a1:775+ | d1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:maj | e1:min5-7 | a1:9- 
      | d1:min | e2:min5-7 a2:9- | d1:min | e2:min5-7 a2:9- | d2:min d2:min/cis | d1:min/c | b1:min5-7 | e1:7 
      | a1:775+ | d1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:maj | e1:min5-7 | a1:9- 
      | d1:min | e2:min5-7 a2:9- | d1:min | e2:min5-7 a2:9- | d2:min d2:min/cis | d1:min/c | b1:min5-7 | e1:7 
      | a1:775+ | d1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:maj | e1:min5-7 | a1:9- 
      | d1:min | e2:min5-7 a2:9- | d1:min | e2:min5-7 a2:9- | d2:min d2:min/cis | d1:min/c | b1:min5-7 | e1:7 
      | a1:775+ | d1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:maj | e1:min5-7 | a2.:9- r4|
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


      \tempo 4 = 125
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r2 c''2~ 
      | \tuplet 3/2 {c''8 bes'8 bes'8} \tuplet 3/2 {bes'8 a'8 a'8} \tuplet 3/2 {a'8 g'8 g'8} \tuplet 3/2 {g'8 f'8 f'8} 
      | \tuplet 3/2 {f'8 e'8 e'8} \tuplet 3/2 {e'8 d'8 d'8} \tuplet 3/2 {d'8 des'8 des'8} \tuplet 3/2 {des'8 e'8 cis'8} 
      \bar "||" \mark \default \tuplet 3/2 {d'8 e'8 f'8} g'8 r8 r8. f'16 e'8 d'8 
      | \tuplet 3/2 {c'8 a8 bes8} \tuplet 3/2 {c'8 a8 bes8} \tuplet 3/2 {es'8 c'8 des'8} \tuplet 3/2 {es'8 c'8 des'8} 
      | e'4. cis'16 d'16 e'4 \tuplet 3/2 {r8 d'8 a8} 
      | \tuplet 3/2 {g4 g8~^\markup{\left-align \small vib}} g8 r8 r4 r8. a16~ 
      | \tuplet 6/4 {a16 b8. b16 cis'16} d'8 d'16 e'16 \tuplet 6/4 {f'8 e'16 d'8 des'16} e'16 cis'16 d'16 e'16 
      | f'16 gis'16 a'16 fis'32 g'32~ \tuplet 5/4 {g'16 f'16 e'16 d'16 des'16~} \tuplet 6/4 {des'8 e'8 cis'16 d'16~} d'16 e'16 f'16 g'16 
      | a'8 g'16 f'16 g'8 f'16 e'16 f'8 e'16 d'16 e'8 d'16 b32 d'32~ 
      | \tuplet 3/2 {d'8 cis'8 bes8} cis'8 b16 a16 b8 b8 r4 
      \bar "||" e'16 f'16 e'16 d'16 \tuplet 5/4 {cis'16 e'16 g'16 a'16 bes'16~} bes'8 e'16 a'16~ a'8. g'16 
      | fis'16 fis'16 e'8 d'8 des'16 c'16 e'4 d'8. c'16 
      | b8 b16 c'32 d'32~ d'16 e'16 f'16 g'16 a'8 c''8 b'8 a'8 
      | bes'8 r8 r8 d'8 \tuplet 3/2 {a'4 g'8~} g'4~ 
      | g'16 bes'16 g'16 e'16 \tuplet 3/2 {c'8 a'8 f'8} \tuplet 3/2 {d'8 bes8 g'8} \tuplet 6/4 {es'8 c'16 a8 f'16} 
      | r4 r8. d'16~ d'16 c'8 bes16 c'8 bes8 
      | a2~ a8 r8 r4 
      | c''8 r8 r4 a2~ 
      \bar "||" \mark \default a8 c'16 cis'16 d'16 e'16 f'16 g'16 a'8 bes'8 c''8. bes'16 
      | \tuplet 3/2 {a'8 bes'8 g'8} a'8 f'16 g'16~ g'16 e'16 f'8 \tuplet 3/2 {des'8 e'8 cis'8} 
      | \tuplet 3/2 {d'8 a4} a4^\markup{\left-align \small vib} r4 \tuplet 6/4 {r4 g16 a16} 
      | bes8 bes16 c'16 des'16 c'16 bes16 a16 aes16 f16 e4 g16 a16~ 
      | a4 \tuplet 6/4 {b4 cis'16 d'16~} \tuplet 7/8 {d'16 cis'32 d'16 e'32 f'32~} f'16 e'16 f'16 f'16 
      | f'16 e'16 f'16 e'16 f'16 g'16 aes'16 g'16 aes'16 g'16 aes'16 g'16 aes'16 g'16 f'8~ 
      | f'8 a'8 \tuplet 3/2 {g'4 f'8} g'4. f'8 
      | \tuplet 3/2 {e'8 bes4} bes4^\markup{\left-align \small vib} r2 
      \bar "||" r4 r16 f'16 e'16 d'16~ d'16 cis'8 bes16~ bes16 a8 g16~ 
      | g16 fis8 a16 c'8 e'8~ \tuplet 3/2 {e'8 b'8 c''8~} \tuplet 3/2 {c''8 a'8 b'8~} 
      | \tuplet 3/2 {b'8 g'8 a'8~} \tuplet 3/2 {a'8 f'8 g'8} e'8 f'8 d'8 e'8 
      | c'4 g8 a8 bes8 d'8 a'8 g'8 
      | f'16\bendAfter #+4  e'16 f'4 e'8 \tuplet 3/2 {es'4 bes8} \tuplet 3/2 {d'4 a8} 
      | c'8 r8 r8 bes8 a8 bes8 d'8 e'8 
      | f'4 a4 d'16 e'16 f'4 bes8 
      | \tuplet 3/2 {es'8 f'8 g'8~} g'8 bes8 \tuplet 3/2 {es'8 f'8 g'8~} g'8. a16 
      \bar "||" \mark \default d'16 e'16 f'16 g'16 a'8 a'8 a'8 a'16 a'16~ a'8 bes'8 
      | a'16 g'16 f'8 g'8. f'16 e'16 d'16 des'16 g'16 g'4 
      | r8 a'8 d''8 des''8 a'8 c''16 b'16~ b'8 g'16 bes'16~ 
      | \tuplet 6/4 {bes'8 a'8. g'16~} g'16 f'16 e'16 d'16~ d'32 f'32~ f'8 des'32 c'32~ c'16 bes8 gis16 
      | a8 e'16 cis'16 d'4~ d'16 e'16 f'16 g'16 aes'4~ 
      | aes'16 g'8 f'16 g'8 f'16 e'16 f'8 e'16 d'16 e'8 d'16 b16 
      | d'8 d'8 r4 \tuplet 6/4 {d'16 e'16 f'8 g'16 a'16~} a'4~ 
      | a'16 g'8 f'32 g'32~ \tuplet 6/4 {g'8 f'8 e'16 f'16~} f'8 e'16 d'16 e'8 e'8 
      \bar "||" e'16 f'16 e'16 d'16 cis'4 r2 
      | r16 a16 gis16 a16 \tuplet 3/2 {b8 bes8 b8} c'4 r4 
      | d'16 es'16 d'16 cis'16 b8 r8 r2 
      | \tuplet 3/2 {g8 fis8 g8} \tuplet 3/2 {a8 gis8 a8} bes2 
      | \tuplet 6/4 {c'16 d'8 c'16 bes16 a16~} a8 g'8 f'4. d'8 
      | c'8 r8 r8. c''16 r2 
      | \tuplet 6/4 {c''8. c''16 c''16 c''16} \tuplet 6/4 {c''8. c''16 c''16 c''16} \tuplet 6/4 {c''8. c''16 c''16 c''16} \tuplet 6/4 {c''8. a'16 a'16 a'16} 
      | \tuplet 5/4 {a'8 f'16 f'16 ges'16} \tuplet 6/4 {ges'8. es'16 es'16 es'16} es'8 c'8 c'8 cis'8 
      \bar "||" \mark \default d'4 e'8. c'16 f'4 g'4 
      | a'8 bes'8 a'8 g'8 f'16\bendAfter #+4  ges'16 f'4 bes8 
      | d'8\glissando  e'8~ e'4.. d'16~ d'16 a8 f16~ 
      | \tuplet 6/4 {f16 g4 g16~} g4. ges16\bendAfter #+4  a16 ges4\bendAfter #-4  
      | r4 r16 cis16 d16 e16 f4. g8 
      | gis8 r8 r8 a8 b4 \tuplet 3/2 {c'4 e'8\glissando } 
      | f'2. g'8 e'8~^\markup{\left-align \small vib} 
      | e'2~ e'8 r8 r4 
      \bar "||" \tuplet 3/2 {e'8 f'4~} f'2 \tuplet 3/2 {a4 e'8~} 
      | e'1~ 
      | e'4 \tuplet 3/2 {e'8 e'8 e'8} e'8 r8 r8 g8~ 
      | g16 d'8 d'16~ d'2 r4 
      | \tuplet 3/2 {cis'8\glissando  d'4~} d'4. r8 r8. a16~ 
      | a16 c'8 bes4. a8 bes16~ bes16 d'8 e'16~ 
      | e'8 a'8~ a'4.. g'16~ \tuplet 3/2 {g'8 f'8 g'8} 
      | \tuplet 3/2 {f'8 e'8 f'8} e'8 d'8 es'2\bar  ".."
    }
    >>
>>    
}
