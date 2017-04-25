\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Lester Young"
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
      
      | es2:min d2:7 | fes2:min7 d2:7 | des2:maj es2:min7 | f2:min7 e2:dim | es1:min7 | c2:min7 b2:7 | bes2:min7 es4:min7 aes4:7 | des2:maj f4:min7 bes4:7 
      | es2:min d4:7 e4:7 | es2:min7 d4:7 es4 | des2:maj es2:min7 | f2:min7 e2:dim | es2:min7 d2:7 | c2:min7 b2:7 | bes2:min7 es4:min7 aes4:7 | des2 e4:min7 a4:7 
      | d2:maj e2:min7 | b2:min7 g2:min7 | fis2:min7 e2:min7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min d2:7 | es2:min7 aes2:7 | des2:maj ges2:7 | f2:min7 e2:dim | s1 | aes2:7 a2:dim | bes2:min7 es2:min7 | des2 f4:min7 bes4:7 
      | es1:min|
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


      \tempo 4 = 79
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {es8 f8 es8} f8. f16 \tuplet 3/2 {d8 es8 ges8} 
      | bes8 bes8 bes4 r4 \tuplet 6/4 {a4~ a16 f16~} 
      | f16 aes8 aes16 f8 aes16 c'16 es'4. r8 
      | r4 c'8 des'8 es'8. c'16 bes8 c'8~ 
      | c'16 des'8 des'16~ des'16 bes16 ges16 es16 bes,2 
      | f8 f8 r4 \tuplet 3/2 {r8 f8 ges8} \tuplet 3/2 {a8 c'8 es'8} 
      | f'4~ \tuplet 10/8 {f'32 des'16. bes16 f16. des32} es8 f8~ f16 ges16 aes8 
      | es8 des8~ des4~ des32 g32 aes16 f32 d32 c32 b,32~ b,8 bes,8~ 
      \bar "||" bes,4 \tuplet 3/2 {bes,8 f4~} f4 r4 
      | r16 d16 es16 ges16 \tuplet 6/4 {bes16 des'8 des'8 des'16} \tuplet 3/2 {des'4 bes8} \tuplet 3/2 {a8 c'8 aes8~} 
      | \tuplet 6/4 {aes16 c'4 c'16} aes8 f8 bes4 bes4 
      | r4 \tuplet 7/8 {r32 e'32 f'16 g'32 f'32 c'32~} \tuplet 6/4 {c'16 es'4 bes16~} \tuplet 3/2 {bes8 c'8 des'8} 
      | bes4~ bes16 d16. es16 e32~ e16 f16 ges16. bes32~ bes8 ges16 es16 
      | f4. r8 r8 f16 ges16 aes16 c'16 e'16 f'16~ 
      | f'32 des'8. bes32 f8 des8~ des16 es16 f16 ges16 a4 
      | aes8 f16 aes16 des'8 des'16 des'16~ \tuplet 3/2 {des'8 a8 b8~} b16 a16 b8~ 
      \bar "||" \tuplet 6/4 {b16 d4 e16} ges8 a4. r4 
      | r16 a16 b16 a16~ \tuplet 3/2 {a8 d'8 e'8} \tuplet 3/2 {e'8 d'8 bes8~} \tuplet 3/2 {bes8 d8 e8~} 
      | e4 \tuplet 3/2 {d8 f8 ges8} \tuplet 3/2 {g8 bes4~} bes4 
      | c'8 e8~ e16 des8 d16 r2 
      | r4 r16 d16 f16 a16 c'16 b16 g4. 
      | r4 \tuplet 6/4 {e8. g16 b16 d'16~} d'4 des'8 c'8~ 
      | \tuplet 6/4 {c'16 a4 d16~} d32 f16. a32 c'16 a32 b8 g4. 
      | \tuplet 3/2 {e8 c8 e8} g16 es16 c16 es16 \tuplet 10/8 {g16 d8.. g32~} g16 des16 f8 
      \bar "||" es4 r4 r16 bes,16 es16 f16 ges16 bes16 ges16 f16 
      | \tuplet 3/2 {es8 bes,4~} bes,16 es16 f4 e8 c4 
      | r4 \tuplet 6/4 {r16 c16 des8 f16 aes16~} aes16 bes16 c'8 bes8 aes8 
      | \tuplet 3/2 {d'8 es'4~} es'8 c'8 des'4 bes4 
      | r4 \tuplet 6/4 {r16 d8 es16 ges16 bes16} des'8 es'16 des'16 \tuplet 5/4 {bes8 ges16 es16 c16} 
      | f2 aes16\bendAfter #+4  a16 aes16 es'16~ es'4~ 
      | \tuplet 6/4 {es'16 des'8. bes16 f16~} f16 es16 des8 e8 aes8 e16 es16 des8 
      | f4~ \tuplet 6/4 {f16 aes16 g8 ges16 f16~} f16 es16 d16 c16 d8. c16 
      \bar "||" bes,4 r2.\bar  ".."
    }
    >>
>>    
}
