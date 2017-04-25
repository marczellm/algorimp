\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Sophisticated Lady"
  composer = "Coleman Hawkins"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key aes \major
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
      | bes1:min7 | ges4:7 f4:7 e4:7 es4:7 | aes1:maj | aes4:7 g4:7 ges4:7 f4:7 | bes1:7 | bes2:min7 es2:7 | aes1:maj | aes2:7 f2:9- 
      | bes1:min7 | ges4:7 f4:7 e4:7 es4:7 | aes1:maj | aes4:7 g4:7 ges4:7 f4:7 | bes1:7 | bes2:min7 es2:7 | aes1:maj | aes2:11+.9 d2:9- 
      | g2:maj e2:min7 | a2:min7 d2:7 | g2:7 gis2:dim7 | a2:min7 d2:7 | g2:maj e2:min7 | a2:min7 d2:7 | g2:7 c2:min7 | es2:7 c4:min5-7 f4:9- 
      | bes1:min7 | ges4:7 f4:7 e4:7 es4:7 | aes1:maj | aes4:7 g4:7 ges4:7 f4:7 | bes1:7 | bes2:min7 es2:7 | aes1:maj | aes2:7 f2:9- 
      | g2:maj b2:min7 | a4:min7 f4:7 d4:7 es4:7 | g2:7 gis2:dim7 | a4:min7 g4:7 d4:7 f4:7 | g2:maj e2:min7 | a2:min7 d2:7 | g2:7 c2:min7 | es2:7 c4:min5-7 f4:9- 
      | bes1:min7 | ges4:7 f4:7 e4:7 es4:7 | aes1:maj | aes4:7 g4:7 ges4:7 f4:7 | bes1:7 | bes2:min7 es2:7 | aes1:maj | s1 
      | s1|
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


      \tempo 4 = 68
      \set Score.currentBarNumber = #0
     
      | r2. r16 f16 ges16 f32 es32 
      \bar "||" \mark \default f2~ \tuplet 6/4 {f8. fis16 g16 aes16~} \tuplet 3/2 {aes8 c'8 es'8} 
      | e'16 f'16 aes'16 f'16~ f'4~ \tuplet 6/4 {f'8 e'8 des'16 d'16~} d'16 es'8 d'16 
      | c'8 g8~ g4. \tuplet 6/4 {es8 e16~} e32 f16 aes16 c'16 des'32 
      | \tuplet 3/2 {es'8 c'8 es'8} c'16 des'16 d'16 f16~ \tuplet 3/2 {f8 e8 des'8~} \tuplet 6/4 {des'16 c'8 f'8 ges16} 
      | f4. r8 r8 g16 aes16 bes16 c'16 ges'16 f'16 
      | es'8 c'16 des'16 \tuplet 6/4 {es'8 c'16 d'16 es'16 c'16~} \tuplet 6/4 {c'4 des'16 d'16} \tuplet 14/16 {es'8~ es'16~ es'64 g64~} 
      | g2~ g8 es16 f16~ \tuplet 12/8 {f32 c16. es16 f8 e32 f32} 
      | ges2~ \tuplet 10/8 {ges32 d16 es32 e32 fis32 g32 aes32 c'32 f'32~} f'16 es'16 c'16 a16 
      \bar "||" bes8 f8 aes16. f'16 des'32 bes32 a32 aes4~ aes16 bes16 c'32 des'32 es'32 f'32 
      | \tuplet 6/4 {fis'8 des'16 bes16 ges16 f16} \tuplet 6/4 {aes16 c'16 f'16 es'8 f'16~} \tuplet 14/16 {f'64 d'64~ d'16 aes32 e'32 d'32 es'64 c'64~} \tuplet 6/4 {c'16 bes16 aes16 g16 es'16 c'16} 
      | g4 r4 r8 aes'16 g'16 f'16 es'16 des'16 c'16 
      | \tuplet 11/8 {bes16. aes16 g16. aes16 g32~} \tuplet 6/4 {g16 b16 d'16 g'16 f'16 es'16} e'8 bes32 des'32 c'32 bes32 a16 c'32 des'32 es'32 f'32 ges'32 f'32 
      | \tuplet 7/8 {es'32 d'32 aes32 des'32 c'32 aes32 f32~} f32 bes16. g32 aes32 es32 e32~ e4 fis16 g16 e16 f16 
      | g16 aes16 bes16 c'16 des'16 es'16 c'16 des'16 es'4~ \tuplet 3/2 {es'8 es'8 c'8} 
      | \tuplet 6/4 {bes8 aes16 g8 aes16~} aes4. es'16 c'16 g'16. f'32 es'32 e'32 es'32 des'32 
      | c'8 es16 f16 c16 d16 es16 f16 g8 g16 f16 ges16. es'32 d'32 es'32 d'32 c'32 
      \bar "||" b4 \tuplet 6/4 {d8 des16 c16 b,16 e16~} e4~ \tuplet 6/4 {e8 es16 des16 c16 b,16~} 
      | b,8 a8 g32 aes32 g32 f32 g32 aes32 g32 e32 fis16. es32 e16. es32~ \tuplet 10/8 {es32 g32 aes32 a32 bes32 b32 e'8~} 
      | \tuplet 10/8 {e'32 d'16 des'32 c'32 b32 bes32 d16 e32} f4~ f8~ f32 aes32 bes32 des'32~ \tuplet 14/16 {des'32 e'64 f'64 e'32 d'32 e'16 d'64 es'64} 
      | d'16 c'16 b16 a16 e8 e8 es16. aes16 c'16 des'32 d'16 es'16 c'16 aes16 
      | fis16 g8.~ \tuplet 6/4 {g16 b16 d'8 e'16 fis'16~} \tuplet 10/8 {fis'32 g'16. a'16 g'32 a'32 g'32 ges'32} \tuplet 6/4 {f'8 des'8 bes16 f'16~} 
      | f'32 e'32 f'32 e'32 d'32 c'16 b32 a16. e32 fis32 a32 fis32 e32 \tuplet 11/8 {a32 g16. e16 fis16. des'32 d'32~} d'8 c'32 d'32 bes32 b32~ 
      | b4~ \tuplet 10/8 {b16. d'16 e'16. fis'32 g'32~} \tuplet 6/4 {g'16 ges'16 es'8 g16 a16} c'16 d'16 es'16 e'16 
      | f'16 des'16 f16 g16 \tuplet 10/8 {aes16 bes8 c'16. des'32~} \tuplet 7/8 {des'32 es'16 des'32 es'16 es'32} \tuplet 7/8 {e'16. c'32 e'32 f'32 c'32} 
      \bar "||" bes4 r4 \tuplet 10/8 {r4 es32 e32} aes16 bes16 c'16 des'16 
      | \tuplet 7/8 {es'16 f'32 fis'32 aes'32 fis'32 es'32} \tuplet 3/2 {f'8 c'4~} c'16 f'16 e'32 f'32 e'32 d'32 es'16 des'16 g16 b16 
      | c'8 es'8~ \tuplet 6/4 {es'16 g16 ges16 es16 f8} \tuplet 3/2 {g8 es16 r8.} r4 
      | \tuplet 6/4 {r8 es16 e16 aes16 c'16~} \tuplet 13/16 {c'64 es'64 d'32. g32 b32 d'32 g'64 f'64} \tuplet 6/4 {e'8 a16 bes8 des'16~} des'32 c'16 bes16 a32 ges32 f32~ 
      | \tuplet 10/8 {f32 es16. d8~ d32 g32} a16 bes8 aes16 bes32 aes32 ges32 e32 es8~ es8. g16~ 
      | g16 e16 f16 g16 aes16 bes16 g16 aes16 bes16 c'16 des'16 es'16 c'8. es'16 
      | \tuplet 3/2 {bes8 aes4~} aes4. des'16 es'16~ es'16 c'16 bes16 aes16~ 
      | \tuplet 5/4 {aes16 g16 a16 c'16 d'16} \tuplet 6/4 {c'8 d'16 es'16 es'16 ges'16} \tuplet 6/4 {f'16 ges'16 f'16 c'16 es'16 d'16} des'8 r8 
      \bar "||" r8 aes32 a32 bes32 b32~ \tuplet 10/8 {b8. d'32 e'32 g'32 b'32} d''8. g'16 \tuplet 9/8 {aes'32 bes'32 g'16 ges'32 f'32 es'32 des'32 bes32} 
      | e'16 c'16 a4 f'16 e'16 es'16. c'32 aes16 fis32 e32 es16. b16 c'32 bes32 aes32 
      | \tuplet 6/4 {g8 d16 e8 f16} fis16 d16 e16. f32~ f4 \tuplet 10/8 {aes16 b32 d'32 f'32 e'32 d'32 c'32 bes32 aes32} 
      | a4 e16 aes16 c'16 es'16 \tuplet 10/8 {des'32 d'16 c'16 d'32 es'16 d'32 es'32} d'16 c'16 aes16 fis16 
      | g4~ \tuplet 6/4 {g8 b16 d'16 fis'16 a'16~} \tuplet 6/4 {a'8 fis'16 d'16 bes16 g'16} \tuplet 6/4 {aes'8 f'16 des'16 bes16 g'16~} 
      | g'16 f'16 c'16 a16~ \tuplet 12/8 {a16. a16 b32 c'16 d'32 e'32 f'32 fis'32} g'16 e'16 c'32 a32 e'32 f'32 fis'32 e'32 es'32 a32 d'16 c'32 d'32 
      | b4 d'16 f'16 g'16 aes'16 g'16 es'16 g16 a32 bes32 \tuplet 10/8 {c'32 d'32 e'32 ges'32 aes'32 bes'32 c''16 a'32 bes'32~} 
      | bes'8 f16 bes16 c'16 des'16 es'16 f'16 ges'16 es'16 des'32 c'32 bes32 a32~ a16 f'8 es'16 
      \bar "||" \tuplet 3/2 {des'8 bes4} r4 r16 es16 f8~ f16 aes16 c'16 es'16~ 
      | \tuplet 6/4 {es'16 fis'16 e'16 aes16 b16 es'16} \tuplet 9/8 {des'32 e'32 es'32 g32 bes32 d'32 des'32 e'32 d'32} ges32 a32 des'32 bes32 es'32 des'32 f32 aes32 c'32 des'32 d'32 es'32 b32 c'32 g16~ 
      | g4 r4 \tuplet 5/4 {r16 fis'16 g'16 es'16 f'16} \tuplet 6/4 {fis'16 g'16 ges'16 es'16 f'16 es'16} 
      | \tuplet 12/8 {c'8 aes16 f16. ges16 aes32~} aes32 b32 d'16 g'32 f'32 d'32 es'32 \tuplet 6/4 {e'8. a16 bes16 des'16} c'32 bes32 a16 c'32 des'32 es'32 f'32 
      | e'16 es'16 d'8~ \tuplet 12/8 {d'8~ d'32 aes'16 bes'16. aes'32 bes'32} aes'32 e'16 aes32 a32 bes32 aes32 bes32 aes32 e16. fis32 g32 aes32 e32 
      | f8. g16 bes16 aes16\bendAfter #+4  g16 aes16~ \tuplet 6/4 {aes16 bes16 c'16 des'16 d'16 es'16} c'4~ 
      | \tuplet 10/8 {c'32 es'16 c'32 des'32 d'32 es'32 d'32 e'32 des'32} \tuplet 6/4 {bes16 g16 e16 f16 es16 e16~} e32 bes16 c'32 des'32 bes32 g32 bes32 \tuplet 6/4 {c'16 des'16 d'16 es'8 c'16~} 
      | \tuplet 6/4 {c'8. f16 e16 es16} f16 es16 f16 bes16 \tuplet 5/4 {f16 es16 f16 bes16 f16~} f4~ 
      \bar "||" f2~ f8 r8 r4\bar  ".."
    }
    >>
>>    
}
