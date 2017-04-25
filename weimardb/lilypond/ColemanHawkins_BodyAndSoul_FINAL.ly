\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Coleman Hawkins"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      | s2 r2 
      | es2:min d2:775+ | es2:min7 d2:7 | des2:maj es2:min7 | f2:min7 e2:dim | es1:min7 | c2:min5-7 b2:7 | bes2:min7 es4:min7 aes4:7 | des2:maj f4:min5-7 bes4:9- 
      | es2:min d2:775+ | es2:min7 d2:7 | des2:min7 es2:min7 | f2:min7 e2:dim | es1:min7 | c2:min5-7 b2:7 | bes2:min7 es4:min7 aes4:7 | des2 e4:min7 a4:7 
      | d2:maj e2:min7 | b4:min7 fis4 g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d2:maj fis4:min7 e4:min7 | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes4:7sus4 bes4:7 
      | es2:min b2:775+ | es2:min7 aes2:7 | des2:maj ges2:7 | f2:min7 e2:dim | es1:min7 | aes2:7 a2:dim | s2 es4:min7 aes4:775+ | s2 f4:min5-7 bes4:7 
      | es2:min d2:775+ | fes2:min7 d2:7 | des2:maj es2:min7 | f2:min7 e2:dim | es1:min7 | c2:min5-7 b2:7 | bes2:min7 es4:min7 aes4:7 | des2:maj f4:min5-7 bes4:9- 
      | es2:min d2:775+ | es2:min7 d2:7 | des2:maj es2:min7 | f2:min7 e2:dim | es1:min7 | c2:min5-7 b2:7 | bes2:min7 es4:min7 aes4:7 | des2 e4:min7 a4:7 
      | d2:maj e2:min7 | b4:min7 fis4 g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d2:maj fis4:min7 e4:min7 | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes4:7sus4 bes4:7 
      | es2:min d2:775+ | es2:min7 aes2:7 | des2:maj ges2:7 | f2:min7 e2:dim | es1:min7 | aes2:7 a2:dim | bes1:7|
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


      \tempo 4 = 95
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. es16~ \tuplet 3/2 {es8 es8 es8} 
      \bar "||" \mark \default r4 r16 es16 f16 ges16 \tuplet 6/4 {f16 ges16 f4~} f8. es16~ 
      | es16 bes8\bendAfter #+4  bes16~ bes8 bes8~ bes4~ bes16 d16 a16 d16 
      | aes8 des8 r4 \tuplet 3/2 {bes8 aes8 f8~} \tuplet 3/2 {f8 aes8 bes8} 
      | \tuplet 3/2 {c'8 es'4~} es'8. des'16 c'4~ \tuplet 6/4 {c'16 des'16 d'16 es'8.} 
      | bes4 r4 \tuplet 9/8 {r32 bes16 bes32 c'16 des'16 des'32~} \tuplet 5/4 {des'16 bes16 des'16 bes16 ges16} 
      | es8 f4. \tuplet 6/4 {c8 es16 f16 a16 c'16} es8 r8 
      | r4 r32 des16 es16 f16 aes32 ges4 des16 e16 f16 aes16 
      | des4 \tuplet 3/2 {es8 f8 aes8} b16 d8. \tuplet 10/8 {es16. f16 aes16 b16 es32~} 
      \bar "||" es4 r4 r8 f16 ges16 bes16 c'16 f'16 es'16 
      | c'16 bes16 ges16 c16 bes,4 bes8 c8~ \tuplet 3/2 {c8 a8 c8~} 
      | c16 aes16 des8 f8 r8 r4 r16 aes16 bes16 c'16 
      | \tuplet 6/4 {es'8 c'16 es'8 c'16} es'8 des'16 aes16 bes16 c'8. d'16 es'8 bes16~ 
      | bes8 r8 r4 \tuplet 6/4 {bes16 bes16 c'16 des'8 es'16} f'16 es'16 des'16 c'16 
      | bes8 a8~ \tuplet 6/4 {a8 es8 ges16 a16~} \tuplet 6/4 {a16 c'16 es'8 ges'16 f'16} \tuplet 3/2 {es'8 c'8 a8} 
      | bes4~ \tuplet 5/4 {bes8 des'8 des'16~} des'16 f'16 des'16 d'16 aes16 ges16 des16 d16 
      | f16 ges16 aes16 f4. aes16 a8~ \tuplet 10/8 {a16 e'16. des'16 a16 ges32~} 
      \bar "||" \tuplet 7/8 {ges32 e16 des16 d32 ges32~} ges32 a16 d'16 b16 ges32 a2 
      | a'16 ges'16 e'16 d'16 e'16 des'32 d'16 e'16 d'32~ \tuplet 9/8 {d'32 bes8.. e'32~} \tuplet 6/4 {e'16 d'16 bes8 g16 a16~} 
      | a8. ges16 \tuplet 3/2 {d8 a8 g8~} g8 e16 g16 \tuplet 3/2 {a8 e'4} 
      | d'4. a8~ a16 es16 d16 g16 a16 es'16 d'8~ 
      | \tuplet 6/4 {d'16 g16 f8 es16 d16~} d16 a16 d16 f16~ f4~ \tuplet 6/4 {f16 g16 a16 b8 d'16~} 
      | d'16 e'16 d'16 e'16 d'8. b16 d'16 c'16 g16 f16 d16 es16 b16 a16~ 
      | a4 c'4~ c'16 bes16 a16 bes16 b8 f16 d16 
      | g8 e8~ \tuplet 5/4 {e16 g16 a16 e'16 es'16} c'16 a16 ges16 es16~ es32 d16 f16 aes16 b32~ 
      \bar "||" \tuplet 5/4 {b16 bes16 ges16 d16 es16} \tuplet 3/2 {f8 es4~} es4 bes16 d'16 f'16 d'16 
      | \tuplet 6/4 {es'4 c'16 des'16~} \tuplet 5/4 {des'16 bes16 ges16 es16 des16} c8 c'8 f16 bes8 d16 
      | c16 a8 d16 c16 es16 aes8 r4 \tuplet 7/8 {r32 bes16 a16 aes32 e32} 
      | f4 aes16 c'16 es'16 c'16 \tuplet 6/4 {des'8 bes16 c'8 g16~} g4 
      | \tuplet 3/2 {c'8 g8 des'8} ges8 r8 r4 f16 ges16 bes16 des'16 
      | \tuplet 3/2 {f'8 f'8 f'8~} f'8~ f'32 es'32 f'32 es'32 ges'8 es'16 c'16~ \tuplet 6/4 {c'16 a16 ges8 es16 e16} 
      | f4. bes16 des'16 f'16 des'16 d'16 a16 ges16 des16 d16 ges16 
      | aes16 f8.~ f8 aes16 b16 d'16 f'16 d'16 b16 aes16 f16 d16 f16 
      \bar "||" \mark \default es'16 ges'16 es'16 des'16 bes16 ges16 es16 c16 f8 es8 r4 
      | r8 bes'32 a'32 aes'32 g'32 ges'8. es'16 \tuplet 11/8 {c'8.. aes'32 g'32 ges'32 f'32} \tuplet 3/2 {d'4 bes8} 
      | d'8 aes'8\bendAfter #-4  des'16 f'8 f16 aes8 r8 r4 
      | r8 bes'16 a'16 \tuplet 10/8 {aes'16. f'16 es'16 bes16 des'32} c'4 \tuplet 3/2 {e8 g8 c'8} 
      | \tuplet 3/2 {c'8 bes4~} bes4 \tuplet 5/4 {bes8 c'16 des'16 f'16~} f'16 f'8 f'16 
      | \tuplet 3/2 {f8 a8 es8} f16 ges8. a16 c'16 es'16 ges'16 f'4~ 
      | \tuplet 6/4 {f'8. es'16 e'16 es'16} des'16 bes16 es'16 f'16~ \tuplet 5/4 {f'16 f16 aes16 d'16 bes16} d'16 e'8 f16 
      | \tuplet 6/4 {aes16 des'8 bes16 des'16 es'16~} \tuplet 9/8 {es'16. f32 aes32 c'16. bes32} c'8 des'8~ \tuplet 6/4 {des'16 b8. b16 bes16} 
      \bar "||" r4 r8.. bes32~ bes32 es'16 f'16 es'16 des'32 bes16 ges16 es16 c16 
      | f8. es16 f8 es8 \tuplet 3/2 {ges8 es8 ges8} es16 ges16 e8~ 
      | \tuplet 6/4 {e16 aes16 ges8 aes16 ges16} f4. bes16 a16 aes4 
      | r4 c''8 bes'8 aes'16 g'16 e'16 des'16 c'8. bes16 
      | c'16 des'16 es'16 c'16 bes4 r4 bes16 c'16 des'16 f'16~ 
      | f'16 f16 a16 c'16 \tuplet 3/2 {f'8 es'4~} \tuplet 7/8 {es'8 e'16 f'32} es'16 des'16 c'16 a16 
      | ges16 es16 f16 bes16~ bes4 a16 ges16 es16 d16 \tuplet 3/2 {ges8 a4} 
      | aes4~ \tuplet 6/4 {aes4 a16 bes16} \tuplet 9/8 {b8. d16 e32} \tuplet 3/2 {f8 e4~} 
      \bar "||" \tuplet 6/4 {e16 a16 e8 ges16 a16~} a16 e'16 d'8 r4 \tuplet 6/4 {r16 a'8 ges'16 a'16 ges'16} 
      | \tuplet 6/4 {a'4 ges'16 e'16~} \tuplet 7/8 {e'32 c'32~ c'8 bes32~} bes16 b16 a'16 g'16 bes4~ 
      | bes8 bes4 ges'8~ ges'16 d'16 a16 ges16 g8 e'16 d'16~ 
      | d'8. bes16 \tuplet 3/2 {g8 ges4~} \tuplet 6/4 {ges16 es16 d16 ges8 a16~} \tuplet 6/4 {a16 es'16 d'16 a8 ges16} 
      | es16 d16 ges8 f4. a16 e16 g8 e16 g16 
      | d'16 c'16 c'16 b16 g16 ges16 d16 es16 \tuplet 3/2 {b8 a8 c'8~} c'4~ 
      | \tuplet 6/4 {c'8. c'16 b16 bes16} \tuplet 6/4 {a8 b8 d16 a16~} a16 d8 g16~ g8 a16 e16 
      | es8 ges'16 a16 \tuplet 6/4 {e'4 aes'16 ges'16} es'16 c'16 a16 ges16~ \tuplet 6/4 {ges16 f8. aes16 d16~} 
      \bar "||" \tuplet 6/4 {d16 f16 aes8 b16 f'16} es'4. bes16 bes16 es'8 bes'16 bes'16 
      | \tuplet 6/4 {es''8. bes8 bes16~} \tuplet 6/4 {bes16 e'4 b'16} e''8 bes'8 e'8 bes8~ 
      | bes8 bes16 bes16 \tuplet 3/2 {f'4 bes'8} f''8 bes'16 f'16 \tuplet 3/2 {c'8 bes4~} 
      | bes4 c''8 bes'8 g'4 e'16 des'16 c'16 bes16 
      | \tuplet 6/4 {aes8 g8. ges16~} ges16 es16 f16 bes16 f'8. es'16~ es'8 r8 
      | r8 es'16 f'16 ges'16 a'16 ges'16 es'16 c'16 a16 ges16 es16 f8 c'16 des'16 
      \bar "||" bes4. f'8~ \tuplet 10/8 {f'16. es'8 d'16 a32~} a16 ges16 es16 d16 
      | ges4~ ges16 e16 g16 b16 \tuplet 3/2 {e8 g4~} \tuplet 6/4 {g16 es16 ges16 bes8 es16} 
      | ges4 d16 ges16 a16 d16 \tuplet 6/4 {ges4~ ges16 des16~} des8 f8~ 
      | f1\bar  ".."
    }
    >>
>>    
}
