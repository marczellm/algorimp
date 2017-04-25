\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "There Will Never Be Another You"
  composer = "David Liebman"
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
      | s4 r4 s2 
      | es1:maj | es1:maj | d1:min5-7 | g1:9- | c1:min7 | s1 | bes1:min7 | es1:7 
      | aes1:maj | f2:min5-7 bes2:7 | es1:maj | c1:min7 | f1:7 | s1 | f1:min7 | bes1:7 
      | es1:maj | s1 | d1:min5-7 | g1:9- | c1:min7 | s1 | bes1:min7 | es1:7 
      | aes1:maj | f2:min5-7 bes2:7 | es1:maj | g2:min7 c2:7 | es2:maj d2:7 | g2:7 c2:7 | f2:min7 bes2:7 | es2:6 bes2:7 
      | es1:maj | s1 | d1:min5-7 | g1:9- | c1:min7 | s1 | bes1:min7 | es1:7 
      | aes1:maj | f2:min5-7 bes2:7 | es1:maj | c1:min7 | f1:7 | s1 | f1:min7 | bes1:7 
      | es1:maj | s1 | d1:min5-7 | g1:9- | c1:min7 | s1 | bes1:min7 | es1:7 
      | aes1:maj | f2:min5-7 bes2:7 | es1:maj | g2:min7 c2:7 | es2:maj d2:7 | g2:7 c2:7 | f2:min7 bes2:7 | es2:6 bes2:7 
      | es1:maj | s1 | d1:min5-7 | g1:9- | c1:min7 | s1 | bes1:min7 | es1:7 
      | aes1:maj | f2:min5-7 bes2:7 | es1:maj | c1:min7 | f1:7 | s1 | f1:min7 | bes1:7 
      | es1:maj | s1 | d1:min5-7 | g1:9- | c1:min7 | s1 | bes1:min7 | es1:7 
      | aes1:maj | f2:min5-7 bes2:7 | es1:maj | g2:min7 c2:7 | es2:maj d2:7 | g2:7 c2:7 | f2:min7 bes2:7 | es1:6 
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


      \tempo 4 = 152
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 \tuplet 7/8 {r32 aes32 bes32 d'32 es'32 aes'32 ges'32} \tuplet 5/4 {des'16 ges'16 es'16 b16 g16} es16 aes16 a32 b32 bes32 c'32 
      \bar "||" \mark \default bes8 r8 r2 \tuplet 5/4 {r8 g'16 a'16 c''16} 
      | a'16 bes'16 c'16 bes16 \tuplet 6/4 {d'16 g'8 ges'16 f'16 e'16~} \tuplet 6/4 {e'16 es'8 bes16 cis'16 d'16} bes16 f16 d16 c16 
      | g16 e16 f16 g16 aes16 b16 des'16 e'16 aes'16 b'16 ges'16 des'16 e'16 b16 ges8 
      | \tuplet 6/4 {aes8 aes8 aes16 aes16~} \tuplet 3/2 {aes8 aes8 aes8} aes16 g16 ges16 f16~ f8. e16 
      | \tuplet 3/2 {es8 es8 es8~} es16 es16 es16 es16~ es16 es16 d16 des16 c4 
      | r1 
      | r4 \tuplet 6/4 {r16 d'8 e'16 ges'16 d'16} \tuplet 3/2 {e'8 bes8 ges8} a16 d'16 b16 a16 
      | \tuplet 6/4 {bes8 cis'8 d'16 es'16~} es'16 des'16 c'16 des'16 f'32 aes'16 c''16. aes'32 b'32~ b'4 
      | a'16 bes'16 g'16 aes'16 \tuplet 5/4 {aes'16 g'16 f'16 es'16 bes16} g16 aes16 bes16 b16 es'16 f'16 g'16 bes'16 
      | \tuplet 6/4 {c''16 des''8. c''16 b'16} a'16 bes'16 ges'16 f'16 \tuplet 5/4 {e'16 es'16 des'16 b16 a16} \tuplet 5/4 {bes8 ges16 f16 e16} 
      | es16. fis32 g32 bes32 d'32 f'32 \tuplet 6/4 {g'16 f'16 d'16 bes16 g16 es'16~} \tuplet 3/2 {es'8 es'8 d'8~} d'16 d'16 bes8 
      | d'16 f'16 g'16 a'16 \tuplet 6/4 {f'8 d'16 bes8 e'16~} \tuplet 6/4 {e'16 d'16 es'8 cis'16 d'16~} d'16 b16 g16 d16 
      | f16 e16 es16 f16 \tuplet 6/4 {g16 bes16 d'16 f'8 d'16} es'8 f'16 g'16~ \tuplet 3/2 {g'8 b'8 d''8} 
      | \tuplet 6/4 {es''8. b'8 es''16} des''4 r2 
      | r2. r8. aes'16~ 
      | \tuplet 6/4 {aes'16 b'8 des''8 bes'16~} bes'4 r4 r8 es'8 
      \bar "||" a'8 c''8~ c''16 bes'8 g'16 es'4 bes4 
      | a'16 bes'16 a'8 c''8 bes'8 g'8 f'8 \tuplet 6/4 {g'16 ges'16 es'16 bes8.} 
      | f'4 f'4. r8 r8 g16 bes16 
      | \tuplet 6/4 {d'16 e'16 f'16 g'16 aes'8} \tuplet 6/4 {ges'8 d'16 f'16 e'16 es'16} g'16 d'16 des'16 bes16 b16 aes16 ges16 f16 
      | es8 g16 bes16 \tuplet 3/2 {es'8 f'8 g'8~} \tuplet 6/4 {g'16 bes'8 f'16 des'16 bes16~} bes16 es'16 f'16 g'16~ 
      | \tuplet 6/4 {g'16 es'16 f'8 c'16 bes16~} bes16 es'16 f'16 c'16~ \tuplet 5/4 {c'16 es'16 b16 f16 es16~} \tuplet 5/4 {es16 bes16 f16 c16 es16} 
      | des8 r8 r2 \tuplet 6/4 {r8. des16 es16 f16} 
      | \tuplet 3/2 {des8 ges8 a8} bes16 e16 g16 a16 \tuplet 5/4 {b16 e'16 ges'16 a'16 b'16} \tuplet 6/4 {des''8 b'8 e'16 b16} 
      | es'8 bes'8 bes8 bes,8~ bes,16 es'8 bes16~ \tuplet 3/2 {bes8 es'8 bes'8} 
      | bes'16 b'8 bes'16~ bes'16 es'8 b16~ b16 bes8 es16 b,4 
      | bes,4 r2. 
      | \tuplet 6/4 {cis16 d16 e16 ges16 a16 d'16} ges'16 bes'16 c''16 d''16~ d''8 r8 r4 
      | r8 a8 \tuplet 6/4 {bes8 es'16 f'16 g'16 bes'16~} bes'16 a'16 fis'16 d'16 r4 
      | r8 aes16 bes16 cis'16 f'16 aes'8 \tuplet 3/2 {g'8 e'8 c'8} r4 
      | \tuplet 3/2 {r8 b,8 es8} \tuplet 5/4 {ges16 es16 ges16 b16 es'16} ges'16 des'16 b16 a16 \tuplet 5/4 {e'16 es'16 e'16 es'16 des'16~} 
      | \tuplet 3/2 {des'8 bes8 b8} r4 aes16 aes16 aes16 aes16~ aes16 aes8 b16 
      \bar "||" \mark \default bes8 r8 r4 \tuplet 5/4 {r16 c'16 d'16 f'16 d'16} \tuplet 3/2 {es'8 f'8 g'8} 
      | bes'16 f'16 d'16 bes16 es'8 g'16 ges'16 f'16 e'16 es'16 aes16 \tuplet 6/4 {bes16 d'16 des'16 c'16 bes8} 
      | b8 aes'16 g'16~ g'8. ges'16~ ges'8 f'8~ f'16 f'8 es'16~ 
      | es'16 d'8 des'16~ \tuplet 6/4 {des'8 c'8. b16~} b8 aes8 \tuplet 3/2 {g4 ges8} 
      | \tuplet 3/2 {f4 bes8~} bes8 b8 \tuplet 3/2 {f'8 bes'8 f'8} \tuplet 3/2 {g'8 c'8 f'8~} 
      | \tuplet 6/4 {f'16 g8 bes8 c'16~} c'16 f'8 bes16 \tuplet 3/2 {es'8 bes8 f8~} f16 c16 es16 bes,16~ 
      | bes,8 r8 r2. 
      | r1 
      | \tuplet 3/2 {es'4 es'8} \tuplet 3/2 {es'4 es'8} es'4\bendAfter #+4  d'16 es'8. 
      | \tuplet 3/2 {es'4 ges'8} \tuplet 3/2 {e'4 d'8} es'4. cis'8 
      | \tuplet 3/2 {d'4 d'8} \tuplet 3/2 {d'4 d'8} d'8 f'8 es'8 d'8~ 
      | d'8 r8 r2 r8. c'16 
      | des'8 des'8 des'8 des'8 des'8 ges'8 e'8 es'8~ 
      | \tuplet 6/4 {es'4~ es'16 des'16~} des'8. b16~ b4 aes8. ges16~ 
      | ges4 r2. 
      | r2. r8 a'8 
      \bar "||" d''4 r2 r8 bes'8 
      | \tuplet 3/2 {d''8 es''4} r2 r8 aes'8 
      | \tuplet 6/4 {b'4~ b'16 g''16~} g''4.. aes'16~ aes'8 g''16 aes''16~ 
      | aes''8 g''8~ g''8. e''16 f''4 es''8. d''16~ 
      | d''8. c''16~ c''8 g'4 es'16 f'16~ f'8 es'8~ 
      | es'8 d'4 c'8~ c'8. g16 es4 
      | f4 r2. 
      | \tuplet 6/4 {r8. bes,16 f16 bes16~} \tuplet 5/4 {bes16 f'16 g'16 c''16 des''16} \tuplet 6/4 {c''16 bes'16 c''16 bes'8 bes'16} e'8 a8 
      | aes4 r4 \tuplet 3/2 {r8 bes8 f'8} bes'16 f'16 bes16 bes16 
      | es'8 aes'8 c''16 des''8 b'16 \tuplet 5/4 {bes'8 ges'16 f'16 e'16} \tuplet 3/2 {es'8 bes8 bes8} 
      | ges16 f16 e16 es16 \tuplet 7/8 {g32 es16 f32 g32 bes32 d'32} f'16 g'16 d'16 bes16 es'16 f'16 g'16 bes'16 
      | \tuplet 3/2 {a'8 aes'4} a'16 ges'16 c'8 es'16 ges'8 es'16 \tuplet 6/4 {f'4~ f'16 d'16} 
      | \tuplet 3/2 {es'8 f'8 g'8} \tuplet 6/4 {bes'16 f'16 d'8 bes'16 d'16} e'16 b16 fis16 cis'16 b4 
      | r4 \tuplet 6/4 {r8. b'8 g'16} a'16 ges'16 des'16 b16 e'16 b'16 ges'16 e'16 
      | aes16 bes16 c'16 es'16 g'16 ges'16 f'16 e'16 es'16 b16 d'16 es'16 \tuplet 3/2 {f'4 des'8} 
      | \tuplet 6/4 {es'16 bes16 ges8 d16 aes16} \tuplet 3/2 {bes8 c'8 des'8} ges'16 des'16 g'16 aes'16 \tuplet 3/2 {des'8 aes'8 b'8} 
      \bar "||" \mark \default cis''8 d''8 bes'4 g'4 f'4 
      | es'8 r8 r2. 
      | \tuplet 6/4 {r8 aes'16 a'16 c''16 des''16} \tuplet 6/4 {ges'16 b'16 c''16 aes'8 b'16} \tuplet 6/4 {a'16 aes'16 e'16 f'16 ges'16 des'16} e'16 es'16 r8 
      | \tuplet 6/4 {r8. bes16 cis'16 d'16} f'16 d'16 es'16 b16~ b8. aes16~ \tuplet 5/4 {aes8. g16 ges16} 
      | f8 es16 es16~ \tuplet 3/2 {es8 f8 f8~} \tuplet 3/2 {f8 g8 g8} bes8 bes8 
      | c'8 c'16 es'16~ es'8 es'8 f'8 f'8 g'8 g'8~ 
      | g'4 f'8 des'16 bes16 r2 
      | r1 
      | \tuplet 3/2 {r8 g'8 bes'8} es'8 r8 r2 
      | r4 g'16 bes'16 des''8 r2 
      | r4 \tuplet 3/2 {g'8 bes'8 es'8} r2 
      | r8 g'16 aes'16 d''4 r2 
      | r8 b'16 d''16~ d''8 des''8 r4 \tuplet 3/2 {r8 b'8 d''8} 
      | es''4 r2 r8 g'16 aes'16 
      | b'8 g''4 r8 r4 r16 aes'16 a'8 
      | g''16 a''8.~ a''4. e''8 \tuplet 5/4 {b''4 aes''16~} 
      \bar "||" aes''8 g''4 e''16 es''16~ es''8 des''16 bes'16~ \tuplet 5/4 {bes'16 g'8. f'16} 
      | ges'8 f'16 d'16~ \tuplet 5/4 {d'16 c'16 bes16 g16 f16~} f16 d16 f16 c16 \tuplet 3/2 {d8 bes,8 a,8} 
      | b,8. des16 \tuplet 3/2 {e8 g8 es8~} \tuplet 6/4 {es16 aes8. b16 es'16~} \tuplet 6/4 {es'16 des'8 a16 f16 b16~} 
      | b16 des'16 es'16 g'16 aes'16 des'16 aes'16 b'16 \tuplet 6/4 {a'8 ges'8 f'16 e'16~} \tuplet 6/4 {e'16 es'16 bes8 des'16 f'16} 
      | \tuplet 3/2 {es'8 f'8 g'8} \tuplet 6/4 {bes'4~ bes'16 bes16~} bes16 c'16 d'16 es'16 f'4~ 
      | \tuplet 3/2 {f'8 g8 a8} bes16 c'8.~ c'16 es16 f16 g16~ g4 
      | r4 r16 d16 es16 g16 des16 f16 e16 es16 \tuplet 6/4 {g8 des16 f16 aes16 b16} 
      | es'16 f'16 aes'16 b'16 a'16 ges'16 des'16 b16 \tuplet 6/4 {e'16 d'16 es'8 cis'16 d'16~} d'16 b16 ges16 d16 
      | g8 r8 r8 a8 es'4. f'8 
      | ges'8 aes'8 f'8 ges'8 \tuplet 3/2 {es'4 b8} bes8 aes8 
      | g8 bes8 d'8 f'8 es'8 f'8 \tuplet 6/4 {g'4 bes'16 b'16} 
      | cis''8 d''4. r4 r16 c''16 b'16 bes'16~ 
      | bes'8 bes'8 es''8 es''8 d''8 d''8 cis''8 des''8 
      | c''8 c''8 b'8 b'8 bes'8 bes'8 \tuplet 6/4 {aes'8. aes'8 ges'16~} 
      | ges'8 ges'8 \tuplet 3/2 {es'8 des'8 b8} \tuplet 3/2 {e'4 e'8} des'16 b16 r8 
      | r8 b16 aes16~ aes8. ges16~ ges4 e8 es8~ 
      \bar "||" es4 r2.\bar  ".."
    }
    >>
>>    
}
