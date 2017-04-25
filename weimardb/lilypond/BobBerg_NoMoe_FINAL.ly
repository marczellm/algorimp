\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "No Moe"
  composer = "Bob Berg"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \major
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
      | es1:maj 
      | bes2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | d2:min7 g2:775+ | c2:min7 f2:775+ 
      | bes2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | c2:min7 f2:7 | bes1 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | c2:min7 f2:7 | bes1 
      | s2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | d2:min7 g2:775+ | c2:min7 f2:775+ 
      | bes2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | c2:min7 f2:7 | bes1 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | c2:min7 f2:7 | bes1 
      | s2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | d2:min7 g2:775+ | c2:min7 f2:775+ 
      | bes2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7 | es2:maj e2:dim | c2:min7 f2:7 | bes1 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2 g2:7 | c2:min7 f2:775+ | bes2 g2:7 | c2:min7 f2:775+ | f2:min7 bes2:7|
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


      \tempo 4 = 162
      \set Score.currentBarNumber = #0
     
      | r8 es'8~ \tuplet 3/2 {es'8 aes'8 bes'8} des''16 es''8.~ es''16 b'16 des''8 
      \bar "||" \mark \default \tuplet 3/2 {bes'4 aes'8} r2. 
      | r8 es'4 g'16 bes'16~ bes'16 d''16 es''4 des''8 
      | bes'8 aes'4 f'8 \tuplet 3/2 {es'4 cis'8~} cis'8 bes8 
      | r2. r16 a'16 g'16 f'16 
      | \tuplet 3/2 {es'8 d'16 r8.} r2 \tuplet 6/4 {aes'8 g'16 ges'8 aes'16~} 
      | \tuplet 6/4 {aes'16 g'8 ges'16 f'16 e'16~} \tuplet 6/4 {e'16 es'8 f'16 ges'16 e'16} \tuplet 3/2 {f'8 e'8 es'8} g'16 f'16 es'16 d'16 
      | c'16 bes16 ges16 f16 es16 d16 f16 a16 bes4 r4 
      | r2. \tuplet 6/4 {r8 d'16 es'8 a'16} 
      \bar "||" bes'4 \tuplet 3/2 {bes4 fis'8} g'4. d'8 
      | f'16 ges'16 f'16 es'16 bes8 g8 d'8 des'8 a8 g8 
      | bes8 c'8 d'8 f'8 \tuplet 3/2 {cis'4 es'8} f'8 gis'8 
      | ges'8 aes'8 bes'8 des''8 b'8 a'8 aes'8 ges'8 
      | f'8 g'8 aes'4 bes'8 ges'8 d'4 
      | es'4 r2. 
      | r2 r8 f'8 a'8 d''8 
      | bes'8 f'8 d'8. es'16~ es'8 d'8 bes4 
      \bar "||" gis16 a8. r4 r8. f16~ \tuplet 6/4 {f16 fis16 gis8 d'16 es'16~} 
      | es'16 fis'8 a'16~ \tuplet 6/4 {a'8 d''8. f''16~} f''16 es''8 f''16 es''16 d''8 c''16~ 
      | c''16 b'8 g'16 a'8 f'8 d'8 c'8 b4 
      | \tuplet 3/2 {gis8 a8 f8} d8 c8 b,4 g8. e16~ 
      | e8 r8 r2. 
      | r4 e'16 f'16 g'16 e'16~ \tuplet 6/4 {e'16 a16 c'8 e'16 g'16} \tuplet 6/4 {a'16 bes'16 d''16 c''16 bes'8} 
      | a'16 g'16 f'16 e'16 \tuplet 6/4 {es'16 f'8 g'16 es'16 e'16} f'16 e'16 es'16 g'16 f'16 es'16 bes16 g16 
      | c'4. d'8 es'8 f'8 f'16 fis'16 g'16 ges'16 
      \bar "||" f'8 bes'8 r2 \tuplet 3/2 {f'8 d'8 es'8~} 
      | es'4 aes'16 g'16 ges'8 r4 \tuplet 3/2 {e'8 f'8 ges'8} 
      | r4 e'16 f'16 ges'16 e'16 f'16 e'16 es'16 g'16 f'16 d'16 b8 
      | \tuplet 3/2 {es'8 d'8 g8} c'16 d'16 es'16 e'16 f'16 e'16 es'16 g'16 f'16 es'16 d'16 c'16 
      | a16 c'16 d'16 f'16 bes'8. f'16 aes'16 g'16 d'4. 
      | es'8 bes'8 bes'4 \tuplet 3/2 {e'8 bes'4} bes'4 
      | f'8 bes'8 bes'4 r2 
      | r2. \tuplet 3/2 {f'8 g'8 bes'8~} 
      \bar "||" \mark \default bes'16 c''16 es''8 \tuplet 3/2 {c''8 des''8 bes'8~} bes'8 r8 r4 
      | r4 \tuplet 3/2 {es'8 f'8 aes'8~} aes'16 c''16 des''8 \tuplet 3/2 {bes'4 ges'8~} 
      | ges'8 es'4 ges'8 f'8 d'8 b4 
      | c'8 d'8 es'8 e'8 f'8 des'8 a8. bes16~ 
      | bes8 c'8 d'8 f'8 bes'4 aes'8 bes'8 
      | e'16 g'8 es'16~ es'8 c'8~ \tuplet 6/4 {c'16 c'8 cis'16 d'16 des'16} \tuplet 3/2 {c'4 g8} 
      | c'16 d'8 f'16~ f'4 r2 
      | r2. aes'16 g'8 aes'16~ 
      \bar "||" aes'16 g'8 aes'16~ \tuplet 6/4 {aes'16 g'8 aes'8 g'16~} g'8 d'8 f'4 
      | r2. \tuplet 3/2 {g'8 aes'4~} 
      | aes'2 fis'8 cis'4 es'8~ 
      | es'2 aes'16 g'16 ges'16 aes'16 g'16 ges'16 f'16 e'16 
      | es'16 f'16 ges'16 e'16 f'16 e'16 es'16 g'16 \tuplet 3/2 {f'8 d'8 g8} es'16 des'16 bes16 a16 
      | aes16 bes16 des'16 es'16 f'16 aes'16 bes'16 des''16 bes'8 cis''8 gis'8 cis''8 
      | ges'8 des''8 f'8 des''8 e'8 des''8 es'8 des''8 
      | d'8 bes'8 bes'8 r8 r4 r8 bes'8 
      \bar "||" c''16 d''16 cis''8 f''4 c''8 f''4. 
      | bes'8. f''16~ f''4 \tuplet 6/4 {a'8. cis''8 f''16~} f''8 r8 
      | r8. bes'16 cis''8 e''8~ e''2 
      | r4 cis''8 e''8 cis''8 a'8 f'8 r8 
      | r4 \tuplet 3/2 {bes'8 c''8 es''8} c''8 aes'8 e'8 es'8 
      | des'8 es'8 \tuplet 3/2 {e'4 ges'8} aes'8 c''8 es''8 des''8 
      | c''8 bes'8 a'8 c''8 aes'8 g'8 ges'8 aes'8 
      | f'8 es'8 bes8 g8 c'16 cis'16 d'8 \tuplet 3/2 {g'4 bes'8~} 
      \bar "||" bes'8 r8 r4 r8 bes'8~ bes'16 bes'8 bes'16~ 
      | \tuplet 6/4 {bes'8 b'16 c''16 cis''16 d''16} bes'8 aes'8 f'16 es'8 des'16~ \tuplet 3/2 {des'8 bes8 a8} 
      | r2 c''16 des''16 c''16 bes'16 gis'8 f'8 
      | \tuplet 6/4 {c''16 cis''16 d''16 des''16 bes'8} gis'16 a'16 aes'16 f'16 cis''16 d''16 des''16 bes'16 aes'16 bes'16 aes'16 f'16 
      | cis''16 d''16 des''16 bes'16 aes'8 bes'8 des''8 es''8 d''16 es''16\bendAfter #+4  d''16 es''16~ 
      | es''4 des''8 bes'8 gis'8 f'8 es'8 g8 
      | c'16 d'8 f'16 \tuplet 3/2 {g'4 bes'8~} bes'8 r8 r4 
      | r2 bes'8 f'8~ f'16 a'8 d''16~ 
      \bar "||" d''16 bes'8 f'16 d'4 es'8 cis'8 b4 
      | c'8 d'8 es'4 e'8 ges'8 gis'4 
      | a'8 b'8 des''4 d'8 e'8 fis'4 
      | g'8 a'8 \tuplet 3/2 {b'4 bes'8~} bes'8 f'8 \tuplet 3/2 {a'4 bes'8} 
      | a'16 aes'16 r8 r2. 
      | r1 
      | r1 
      | r1 
      \bar "||" r4 aes'16 g'16 ges'16 aes'16 g'16 ges'16 f'16 e'16 es'16 f'16 fis'16 e'16 
      | f'16 e'16 es'16 g'16 f'16 es'16 f'16 g16 \tuplet 5/4 {c'8 a16 b16 des'16~} \tuplet 6/4 {des'16 c'16 aes16 f8 e16} 
      | es16 e16 g8 \tuplet 6/4 {bes16 c'8 d'16 f'16 bes'16~} \tuplet 6/4 {bes'16 f'8 d'16 bes16 es'16~} \tuplet 6/4 {es'16 d'8 g16 gis16 c'16~} 
      | \tuplet 6/4 {c'16 d'16 es'8 e'16 f'16} \tuplet 3/2 {e'8 es'8 g'8} f'16 d'16 bes16 aes16 d'16 des'16 a8 
      | bes4 r2. 
      | r1 
      | r1 
      | r1 
      \bar "||" a,8 es8 d8 g8 a8 es'8 d'8 bes'8 
      | a'8 bes'8 a'8 g'8 fis'8 es'8 d'8 c'8 
      | b8 d'8 f'8 g'8 bes'8 gis'8 es''4 
      | b'4 \tuplet 5/4 {bes'8 b'16 bes'16 gis'16} e'8 b8 bes8 aes8 
      | g8 r8 r2. 
      | r1 
      | r1 
      | r2. r8 aes'16 g'16 
      \bar "||" \tuplet 3/2 {f'8 es'8 d'8} des'16 aes16 g16 ges16 es16 d16 cis4. 
      | aes'16 g'16 ges'16 aes'16 g'16 ges'16 f'16 e'16 es'16 f'16 ges'16 e'16 \tuplet 5/4 {f'16 e'16 f'16 es'16 g'16} 
      | f'16 des'16 bes16 aes16 es'16 des'16 bes16 ges16 bes16 ges16 f16 e16 es16 g16 a16 cis'16 
      | es'16 des'16 bes16 g16 \tuplet 6/4 {c'16 d'8 es'16 c'16 es'16} f'16 e'16 es'16 g'16 \tuplet 3/2 {f'8 des'8 f8} 
      | bes8 r8 r2.\bar  ".."
    }
    >>
>>    
}
