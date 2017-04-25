\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Serenity"
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      
      | d4:min5-7 r4 s4 s4 | g1:775+ | aes2:maj ges2:maj | e2:min7 a2:7 | f2:min7 bes2:7 | es2:maj d4:min5-7 g4:7 | c2:min7 c2:min7/bes | aes2:min7 des2:7 
      | g2:775+ ges2:7 | f1:7 | e1:maj | f2:min7 bes2:775+ | es1:maj | d2:min5-7 g2:775+ | d1:min5-7 | g1:775+ 
      | aes2:maj ges2:maj | e2:min7 a2:7 | f2:min7 bes2:7 | es2:maj d4:min5-7 g4:7 | c2:min7 c2:min7/bes | aes2:min7 des2:7 | g2:775+ ges2:7 | f1:7 
      | e1:maj | f2:min7 bes2:775+ | es1:maj | d2:min5-7 g2:775+ | d1:min5-7 | g1:775+ | aes2:maj ges2:maj | e2:min7 a2:7 
      | f2:min7 bes2:7 | es2:maj d4:min5-7 g4:7 | c2:min7 c2:min7/bes | aes2:min7 des2:7 | g2:775+ ges2:7 | f1:7 | e1:maj | f2:min7 bes2:775+ 
      | es1:maj | d2:min5-7 g2:775+ | d1:min5-7 | g1:775+ | aes2:maj ges2:maj | e2:min7 a2:7 | f2:min7 bes2:7 | es2:maj d4:min5-7 g4:7 
      | c2:min7 c2:min7/bes | aes2:min7 des2:7 | g2:775+ ges2:7 | f1:7 | e1:maj | f2:min7 bes2:775+ | es1:maj | d2:min5-7 g2:775+ 
      | d1:min5-7 | g1:775+ | aes2:maj ges2:maj | e2:min7 a2:7 | f2:min7 bes2:7 | es2:maj d4:min5-7 g4:7 | c2:min7 c2:min7/bes | aes2:min7 des2:7 
      | g2:775+ ges2:7 | f1:7 | e1:maj | f2:min7 bes2:775+ | es1:maj | d2:min5-7 g2:775+|
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


      \tempo 4 = 157
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 g'8 
      | \tuplet 3/2 {bes'8 g'8 aes'8} es'8 b8~ b8. g'16\glissando  aes'16 g'8 f'16~ 
      | f'16 es'8 c'16~ c'4 \tuplet 3/2 {des'4 bes8~} bes4~ 
      | bes16 b8 g16 e8 d8 cis8. c'16~ c'4~ 
      | c'8 aes8 f8 es8 \tuplet 6/4 {d4 cis'16\glissando  d'16~} d'8 c'8~ 
      | c'16 bes8 g16~ g16 f8 es16 aes8 g8 f8 d8 
      | es8. c'16 r2. 
      | r8 g16 aes16 bes16 b16 des'16 es'16 ges'16 f'16 es'16 des'16~ des'16 b16 bes8~^\markup{\left-align \small vib} 
      | bes2~ \tuplet 6/4 {bes16 e'16 f'16 e'16 d'8} cis'8 b8 
      | bes8. ges16 aes8 a4. \tuplet 6/4 {f4 g16 aes16~} 
      | aes4~ aes16 b16 fis16 e16 es4.^\markup{\left-align \small vib} r8 
      | r1 
      | r2. r8. g'16~ 
      | \tuplet 6/4 {g'16 aes'8. aes'16 g'16~} g'16 fis'8 g'16~ \tuplet 6/4 {g'16 d''8\glissando  es''8 d''16~} d''8~ d''32 c''32 b'32 c''32~ 
      \bar "||" \mark \default c''4~ c''8~ c''32 aes'32 f'32 es'32 \tuplet 6/4 {d'16 c'16 b4~} b4~ 
      | \tuplet 6/4 {b16 aes16 g16 es16 d16 c16} b,16 d16 aes16 g16~ g8. g'16 f'8 es'8~ 
      | \tuplet 6/4 {es'16 c'4 des'16} f'16 aes'16 c''4 bes4 r8 
      | r2 b'16 g'16 e'16 d'16 cis'4 
      | c''16 aes'16 f'16 es'16 d'4. c''8 aes'4 
      | \tuplet 3/2 {bes'4 g'8~} g'8. d'16~ d'16 f'16 ges'16 f'16 es'16 cis'8 b16~ 
      | \tuplet 6/4 {b16 g'8. g'16 f'16} \tuplet 6/4 {es'4~ es'16 g'16} \tuplet 3/2 {d'4 c'8} bes16\glissando  b16 bes16 g16 
      | \tuplet 3/2 {b4 ges8} \tuplet 3/2 {es4 aes8~^\markup{\left-align \small vib}} aes4 r4 
      | r2 d'8 b8~ b16 f16 fis8~ 
      | \tuplet 6/4 {fis16 des'8 c'8 bes16} g4 aes16\glissando  a4. f16 
      | \tuplet 3/2 {g8 aes8 b8} fis8 e8 es8 b,8 r4 
      | r8 b,8 r4 r16 es8 f16 aes4 
      | es16 bes8 aes16~ aes16 g8 es16 f4^\markup{\left-align \small vib} r4 
      | r2 \tuplet 6/4 {r8. g'16 fis'16 g'16} \tuplet 6/4 {aes'8. g'16 aes'16 g'16~} 
      \bar "||" \mark \default \tuplet 5/4 {g'16 fis'16 g'16 aes'16 g'16} fis'16 g'16 fis'16 g'16 \tuplet 6/4 {ges'16 aes'8 g'16 aes'16 g'16} fis'8 r8 
      | r4 r16 g'16 fis'16 g'16 aes'16 g'16 fis'16 g'16 fis'16 g'16 aes'16 g'16~ 
      | g'16 fis'16 g'16 aes'16 r2. 
      | r2 fis'16 fis'16 e'16 d'16 cis'8 a8 
      | \tuplet 6/4 {g'16 aes'16 g'16 f'8 es'16~} \tuplet 6/4 {es'16 d'8 c'16 bes16 a16} aes16 c'16 g16 f16 \tuplet 6/4 {ges'16 a'16 fis'16 g'8 aes'16} 
      | b16 cis'16 d'16 e'16 \tuplet 3/2 {f'4 aes'8} \tuplet 3/2 {bes'8 b'8 aes'8} \tuplet 3/2 {g'8 fis'16 r8.} 
      | r2 r16 g'16 f'16 es'16 des'16 c'16 bes16 b16~ 
      | \tuplet 6/4 {b8 bes8 aes16 es16} ges8 es8 b,16 bes,16 a,16\bendAfter #-4  aes,16~ aes,16 bes16 g16 aes16 
      | \tuplet 6/4 {bes16 b16 cis'16 d'16 es'16 f'16} \tuplet 6/4 {e'8 f'8 a'16 b'16} e''16 f''16 e''16 es''16 r4 
      | r2 r8 d''4 c''8 
      | bes'16 g'16 a'4 c'4 aes'16 fis'16 es'16 cis'16 b8~^\markup{\left-align \small vib} 
      | b8 r8 r4 r16 bes'16 b'16 bes'16 aes'8 fis'8 
      | \tuplet 3/2 {g'8 ges'8 es'8} d'8 c'8 bes8 g8 f8 es8 
      | aes8. fis16 g4. g'8~ \tuplet 6/4 {g'16 aes'4 d''16} 
      \bar "||" \mark \default es''4.. cis''16\glissando  d''4.. c''16\glissando  
      | cis''4~ \tuplet 6/4 {cis''16 b'16 aes'16 fis'16 e'16 cis'16~} cis'16 b8 aes16 \tuplet 3/2 {g4 g8} 
      | f8 es8 bes,8 aes,8~ \tuplet 3/2 {aes,8 bes8 aes8} es8 fis8 
      | g4~ g16 b8 d'16~ d'8 fis'8 d'16 e'8.~ 
      | e'8. aes16~ aes8 c'4 g'8 \tuplet 3/2 {f'8 d'4} 
      | r4 r8. f'16 es'8 des'8 \tuplet 3/2 {b4 aes8~} 
      | aes16 g8 es'16~ \tuplet 3/2 {es'8 bes8 b8~} b16 c'8 d'16~ d'16 es'8 f'16~ 
      | \tuplet 5/4 {f'16 ges'8 ges'16 es'16~} \tuplet 3/2 {es'8 b8 aes8\glissando } e'16 f'8. r4 
      | r2 \tuplet 6/4 {r16 c''16 a'16 g'16 ges'16 f'16} \tuplet 6/4 {e'16 es'16 cis'16 b16 a16 g16} 
      | \tuplet 5/4 {fis16 e16 d16 c16 b,16} bes,4 bes16 g16 a16 c'16~ c'16 es'16 g'16 d'16 
      | \tuplet 3/2 {b8 fis'8 es'8~} es'8 r8 r4 \tuplet 6/4 {es'8 aes'16 fis'16 es'16 cis'16} 
      | b16 des'16 es'16 ges'16 f'16 e'16 es'16 c'16 \tuplet 3/2 {g8 f8 d'8} \tuplet 6/4 {c'16 bes16 a8 aes16 c'16} 
      | \tuplet 3/2 {g8 f8 bes8} aes16 bes16 c'8 \tuplet 6/4 {es'16 g'16 es'16 ges'8 ges'16} e'16 d'16 c'16 bes16 
      | \tuplet 6/4 {aes16 g16 a16 bes8.} es8 r8 r8 g'8 \tuplet 3/2 {f'4 es'8} 
      \bar "||" \mark \default r2 \tuplet 3/2 {g'4 f'8} f'16 g'8.~ 
      | g'16 bes'8 aes'16 bes'2~ bes'8 g'8~ 
      | \tuplet 6/4 {g'16 bes'16 g'8 f'16 es'16~} \tuplet 6/4 {es'16 g'16 f'16 des'8.} \tuplet 3/2 {f'8 aes'8 ges'8} \tuplet 3/2 {des'8 bes4} 
      | r4 \tuplet 5/4 {fis'16 a'16 g'16 e'16 d'16} fis'16 e'16 cis'16 b16~ \tuplet 5/4 {b8 g'8 bes'16} 
      | aes'16 f'16 es'16 g'16 \tuplet 6/4 {f'16 c'8 es'16 d'16 bes16} aes16 c'16 g16 f16 \tuplet 6/4 {aes16 g16 f16 es16 f16 es16} 
      | d16 c16 bes,8 r2. 
      | r8 g'8 \tuplet 3/2 {c''4 d''8~} d''4. g'8 
      | b'8 d''8\glissando  es''4 des''4\bendAfter #+4  bes'16 b'8 bes'16 
      | a'16 bes'8 b'16 \tuplet 6/4 {g'16 f'16 e'8. b16~} b16 bes8 fis16 \tuplet 6/4 {aes4 aes16 a16~} 
      | a4 c'16 es'8 g'16 bes'16 d''8 c''16~ c''16 g'8 ges'16~ 
      | ges'16 b'16 c''16 cis''16 \tuplet 3/2 {a'8 aes'8 fis'8~} fis'16 e'8 es'16~ es'16 cis'8 b16~ 
      | b16 a8 ges16 aes4.^\markup{\left-align \small vib} r8 \tuplet 6/4 {r4 bes16 aes16} 
      | g8. es16~ es4 bes16 b16 bes16 g16 aes8 bes8~ 
      | bes16 b8 cis'16 \tuplet 3/2 {d'4 e'8} f'8 g'8~ g'32 aes'32~ aes'8 fis'32\glissando  g'32~ 
      \bar "||" g'4 es'8 aes4 r8 r4\bar  ".."
    }
    >>
>>    
}
