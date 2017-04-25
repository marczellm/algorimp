\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Angles"
  composer = "Bob Berg"
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
      
      | aes1:maj | s1 | s1 | s1 | c1:min7 | s1 | s1 | s1 
      | des1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | aes1:maj | s1 | s1 | s1 | c1:min7 | s1 | s1 | s1 
      | des1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | f1:min7 | s1 | s1 | s1 | des1:11+.9 | s1 | s1 | s1 
      | g1:9+ | s1 | s1 | s1 | d1:13-.9+11+ | s1 | s1 | s1 
      | aes1:maj | s1 | s1 | s1 | c1:min7 | s1 | s1 | s1 
      | des1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | aes1:maj | s1 | s1 | s1 | c1:min7 | s1 | s1 | s1 
      | des1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | f1:min7 | s1 | s1 | s1 | des1:11+.9 | s1 | s1 | s1 
      | g1:9+ | s1 | s1 | s1 | d1:13-.9+11+ | s1 | s1 | s1 
      | aes1:maj | s1 | s1 | s1 | c1:min7 | s1 | s1 | s1 
      | des1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | aes1:maj | s1 | s1 | s1 | c1:min7 | s1 | s1 | s1 
      | des1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | f1:min7 | s1 | s1 | s1 | des1:11+.9 | s1 | s1 | s1 
      | g1:9+ | s1 | s1 | s1 | d1:13-.9+11+|
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


      \tempo 4 = 270
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 r8 g'4. g'4~ 
      | g'8. g'16~ g'4 g'4. g'8~ 
      | g'8. f'16 es'4 c'4 es'8 des'16 d'16~ 
      | d'2. c'8 bes8 
      | g4 bes8 g4. f8 d8 
      | f4 g8 bes4. r4 
      | r1 
      | r2 es8 f8 aes8 b8~ 
      | b16 f8 aes16 b8 es'8 b8 es'8 \tuplet 3/2 {f'4 aes'8} 
      | es'8 f'8 aes'8 b'8 es''4. des''16 b'16 
      | bes'4 aes'4 es'4 f'4 
      | g'8 bes'8~ \tuplet 3/2 {bes'8 bes'8 c''8} g'4. es'8~ 
      | es'4. bes8~ bes16 f'8 des'16 bes8 f8 
      | aes8 fis8 g8 es'4. r4 
      | r2 \tuplet 3/2 {es''4 e''8} f''8 e''8 
      \bar "||" es''8 bes'8 g'8 es'8 aes'8 bes'8 fis'8 g'8 
      | es'4 f'2. 
      | f'2 \tuplet 3/2 {f'4 bes'8} g'8 f'8 
      | es'8 f'8 g'8 es'8 f'8 e'8 es'8 g'8 
      | f'8 d'8 bes8 g8 es'8 f'8 d'8 c'8 
      | bes8 c'8 d'8 bes8 c'8 bes8 \tuplet 3/2 {g4 f8} 
      | bes4. r8 r2 
      | r2 r8 es8 \tuplet 3/2 {f8 aes8 b8} 
      | f4. f8 aes8 b16 es'16 aes8 r8 
      | r4 \tuplet 3/2 {aes8 b8 es'8} e'16 b8.~ b8 b8 
      | \tuplet 3/2 {es'8 f'8 aes'8} es'4. es'8 \tuplet 3/2 {f'8 aes'8 b'8} 
      | f'4. f'8 aes'16 b'16 es''8 r4 
      | r2 r16 es''16 des''16 b'16 bes'8 a'8 
      | aes'4 r4 fis'8 g'8 aes'8 fis'8 
      | g'8 ges'8 f'8 e'8 es'8 f'8 g'8 es'8 
      | f'8 e'16 es'16~ es'8 g'8 f'8 d'8 bes8 aes8 
      \bar "||" f'8 g'8 aes'8 bes'8 g'8 bes'8 aes'8 e'8 
      | g'8 ges'8 f'8 e'8 es'8 c'8 bes8 aes8 
      | c'2 c'4. g'8~ 
      | g'4 f'8 es'8 d'4 c'4 
      | r1 
      | r2 es8 f8 aes8 b8 
      | g8 aes8 b8 es'8 g'8 es'8 f'8 g'8 
      | aes'8 bes'8 b'8 des''8 es''4~ \tuplet 3/2 {es''8 des''8 b'8} 
      | bes'4 bes'8. bes'16~ bes'8. es''16~ es''4 
      | aes'4 c''4 g'4. r8 
      | r4 aes'8 bes'8 g'8 ges'8 f'8 e'8 
      | es'8 f'8 g'8 es'8 f'8 e'8 es'8 g'8 
      | f'8 des'8 b8 aes8 es'8 des'8 b8 g8 
      | aes4. r8 r2 
      | r8 b,8 es8 b8 des8 d8 f8 e8 
      | es8 g8 b8 d'8 es'8 d'8 \tuplet 3/2 {bes4 aes8} 
      \bar "||" \mark \default es'16 f'16 es'16 c'16 \tuplet 3/2 {aes4 f8} bes16 b16 bes16 g16 aes8 bes8~ 
      | bes16 c'8 es'16 f'8 g'8 bes'8 g'8 aes'8 bes'8 
      | g'4 es'4 c'4 es'4~ 
      | es'4 r2. 
      | r8 bes,8 d8 f8 e8 d8 es8 f8 
      | g8 bes8 \tuplet 3/2 {a4 g8} aes8 g8 ges8 aes8 
      | g8 ges8 f8 e8 es8 f8 g8 bes8 
      | a4 bes4 c'8 d'8 es'8 e'8 
      | f'8 e'8 es'8 g'8 ges'8 des'8 bes8 aes8 
      | es'8 des'8 aes8 f8 bes8 ges8 f8 e8 
      | es8 f8 ges4 r2 
      | aes8 bes8 b8 r8 r2 
      | r2 bes,8 es8 \tuplet 3/2 {g8 bes8 bes8} 
      | \tuplet 3/2 {des'4 aes8} f4 es16 f8 g16 bes8 r8 
      | r2 es8 f16 g16~ g8 bes8 
      | f8 g8 aes8 bes8 g8 bes8 es'8 f'16 g'16~ 
      \bar "||" g'4 r4 \tuplet 3/2 {g'4 aes'8~} aes'8 c''8 
      | es''4 g''2.~ 
      | g''1 
      | es''8. es''16~ es''8 c''8 c''4 g'4~ 
      | g'8 r8 r4 g'8 a'8 c''8 es''8 
      | g''8 a''2.. 
      | \tuplet 3/2 {g''8 b'8 es''8} bes'8 g'8 a'8 f'8 d'8 bes8 
      | es'8 d'8 bes8 g8 es'8 des'8 b4~ 
      | \tuplet 3/2 {b8 bes8 g8} aes8 bes8 b8 des'8 es'8 f'8 
      | ges'8 aes'8 bes'8 b'8 des''4. r8 
      | r4 r8 des''16 des''16\bendAfter #-4  bes'4 des''8 ges'8\bendAfter #-4  
      | bes4 des''8 des''8\bendAfter #-4  bes'4 des''8 des''8\bendAfter #-4  
      | g'4 des''8 des''8\bendAfter #-4  g'4 des''8 des''8\bendAfter #-4  
      | g'4 des''8 des''8\bendAfter #-4  \tuplet 3/2 {g'4 des''8~} des''8 r8 
      | r2. des''8 des''8\bendAfter #-4  
      | bes'4 des''8 des''8\bendAfter #-4  bes'4 c''8 c''8\bendAfter #-4  
      \bar "||" aes'4 c''8 c''8\bendAfter #-4  aes'4 c''8 c''8\bendAfter #-4  
      | aes'4 c''4 g''2 
      | r2 r8 aes,8 es8 bes8 
      | des8 d8 f8 e8 es8 g8 bes8 bes8 
      | g8 aes8 b8 es'8 bes8 b8 es'16 f'8 g'16~ 
      | g'8 bes'8 r4 \tuplet 3/2 {bes'4 g'8~} g'4 
      | g'8 es'4. \tuplet 3/2 {es'4 b8~} b8. b16~ 
      | b8 bes8~ bes8. bes16~ bes8 g4 r8 
      | r2 bes'8 a'8 aes'8 g'8 
      | f'8 bes'8 g'8 aes'8 c''8 es''8 g''8 aes''8 
      | g''8 es''8 c''8 aes'8 g'8 f'8 e'8 f'8 
      | bes'8 g'8 aes'8 fis'8 g'8 ges'8 f'8 e'8 
      | es'8 f'8 g'8 bes'8 aes'8 e'8 g'8 ges'8 
      | f'8 e'8 es'8 r8 r2 
      | r2 g'8 g'8\bendAfter #-4  g'8 c''8 
      | aes'8 f'8 g'8 g'8\bendAfter #-4  g'8 c''8 aes'8 f'8 
      \bar "||" \mark \default g'8 g'8\bendAfter #-4  g'8 c''8 aes'8 f'8 g'8 g'8\bendAfter #-4  
      | g'8 c''8 aes'8 f'8 g'16 g'16\bendAfter #-4  g'16 c''16 aes'8 f'8 
      | g'16 g'16\bendAfter #-4  g'16 c''16~ \tuplet 3/2 {c''8 aes'8 f'8} g'16 g'16\bendAfter #-4  g'16 c''16~ c''16 aes'16 f'8 
      | \tuplet 3/2 {g'8 g'8 g'8} c''16 aes'16 f'8 g'16 g'16\bendAfter #-4  g'4 r8 
      | r2 \tuplet 3/2 {g'8 g'8 g'8} \tuplet 3/2 {c''8 a'8 f'8} 
      | \tuplet 3/2 {g'8 g'8\bendAfter #-4  g'8} c''8 a'16 f'16 \tuplet 3/2 {g'8 g'8 g'8} \tuplet 3/2 {c''8 a'8 f'8} 
      | \tuplet 3/2 {g'8 g'8 g'8} \tuplet 3/2 {c''8 a'8 f'8} \tuplet 3/2 {g'8 g'8 g'8} \tuplet 3/2 {c''8 a'8 f'8} 
      | \tuplet 3/2 {g'8 g'8\bendAfter #-4  g'8} \tuplet 3/2 {c''8 a'8 f'8} g'16 g'16\bendAfter #-4  g'4. 
      | r2 aes'16 aes'16\bendAfter #-4  aes'8 \tuplet 3/2 {des''8 bes'8 ges'8} 
      | \tuplet 3/2 {aes'8 aes'8\bendAfter #-4  aes'8} \tuplet 3/2 {des''8 bes'8 ges'8} \tuplet 3/2 {aes'8 aes'8 aes'8} \tuplet 3/2 {des''8 bes'8 ges'8} 
      | aes'16 aes'16\bendAfter #-4  aes'16 des''16~ \tuplet 3/2 {des''8 bes'8 ges'8} aes'16 aes'16\bendAfter #-4  aes'8 \tuplet 3/2 {des''8 bes'8 ges'8} 
      | aes'16 aes'16 aes'16 des''16 bes'8 ges'8 aes'4. r8 
      | r2 fis'8 g'8 aes'8 fis'8 
      | \tuplet 3/2 {g'4 ges'8~} ges'16 f'8 e'16~ e'16 es'8 f'16 g'8 es'8 
      | f'8 e'8 es'8 g'8 f'8 des'8 bes8 aes8 
      | d'8 des'8 aes8 f8 a8 f8 \tuplet 3/2 {des8 f4} 
      \bar "||" r2 r8 aes,8 es8 g8 
      | bes,8. f16 \tuplet 3/2 {aes4 bes8} bes8\bendAfter #-4  f8 aes8 bes8 
      | bes8\bendAfter #-4  bes8 f'8 bes'8 bes'8\bendAfter #-4  c''8 aes'8 c''8 
      | bes'8 c''8 g''2.~ 
      | g''2 \tuplet 3/2 {es''4 c''8~} c''4 
      | r2 r8 g'8 bes'8 c''8 
      | es''8 f''8 es''8 c''8 bes'8 es''8 c''8 bes'8 
      | ges'8 f'8 es'8 c'8 f'8 c'16 es'16~ \tuplet 3/2 {es'8 f'8 ges'8~} 
      | ges'8 aes'8 bes'8 es''8 c''2 
      | bes'4. ges'8 f'8 es'8 d'8 es'8 
      | aes'8 ges'8 d'8 bes8 f'8 es'8 bes8 ges8 
      | f4 es8 f8~ f4. r8 
      | r1 
      | r8 bes,8 es8 g8 des8 f16 aes16~ aes8 des'8 
      | bes8 bes'8 g'8 bes'8 des'8 f'8 aes'8 des''8 
      | bes'8 g'8 es'8 bes8 f'8 e'8 es'8 g'8 
      \bar "||" es'8 f'8 aes'8 c''8 f''2~ 
      | f''1~ 
      | f''1~ 
      | f''4 es''4 c''2 
      | r1 
      | \tuplet 3/2 {r8 es'8 f'8} aes'8 b'8 g''2~ 
      | g''2. es''4 
      | b'4 bes'4 aes'4 bes'8 g'8~ 
      | g'4 r2. 
      | bes'8 bes'8\bendAfter #-4  c''8 bes'8 \tuplet 3/2 {aes'4 f'8} f'8\bendAfter #-4  aes'8 
      | bes'8 bes'8\bendAfter #-4  bes'8 bes'8\bendAfter #-4  \tuplet 3/2 {c''4 bes'8} c''8 c''8\bendAfter #-4  
      | bes'8 a'8 aes'8 bes'8~ bes'16 g'16 fis'16 g'16 aes'8 fis'8 
      | g'8 ges'8 \tuplet 3/2 {f'4 e'8} es'8 f'8 ges'8 aes'8 
      | f'8 ges'8 \tuplet 3/2 {bes'4 d''8} f''2~ 
      | f''2 d''2~ 
      | d''1\bar  ".."
    }
    >>
>>    
}
