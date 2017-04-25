\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Where or When"
  composer = "Ben Webster"
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
      
      | aes1:maj | aes1:maj | aes1:dim7 | aes1:maj | des1:maj | s1 | s1 | bes2:min7 es2:9sus4 
      | d2:7 f2:7 | bes2:7 es2:7 | aes1:maj | s1 | aes1:dim7 | aes1:maj | des1:maj | s1 
      | s1 | bes2:min7 es2:9sus4 | g1:min7 | c1:7 | f1:min7 | bes1:7 | g1:min7 | c1:7 
      | f1:min7 | bes1:7 | s2 e2:11+.9 | es1:7 | aes1:maj | d2:min7 g2:7 | des2:11+.9 c2:7 | f1:min7 
      | bes1:min7 | c2:min7 f2:7 | bes1:min7 | f1:7 | bes1:min7 | es1:7 | aes1:9 | s1 
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


      \tempo 4 = 82
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 r32 aes32 bes32 c'32 es8 es8~ es4. \tuplet 6/4 {d8 es16} 
      | f4. r8 r4 r8 es16 e16 
      | \tuplet 3/2 {f8 fis8 g8~} g2~ g16 g16. ges32 f32 e32 
      | es8 g4. r2 
      | r8 fis16. g32 aes4 aes8 aes8~ aes8.. f32~ 
      | \tuplet 7/8 {f16. fis16 g32 aes32~} aes16 des'8 f16~ f4. r8 
      | r4 r8 f16 fis16 \tuplet 3/2 {g8 bes8 a8} aes16 des'8 e16~ 
      | e4. r8 r4 r8 aes16 bes16~ 
      | bes16 b16 c'2.. 
      | f4~ f16 ges16 aes16 bes16 \tuplet 3/2 {c'8 des'8 es'8} ges'16 e'8 b16~ 
      \bar "||" b16 c'16 es'16 bes16 \tuplet 3/2 {g8 aes4~} aes8. aes16 \tuplet 6/4 {ges16 f16 e16 es16 es'8} 
      | c'16 bes16 a16 aes16 g4~ g16 f16 es16 f16 \tuplet 3/2 {es8 f16 r8.} 
      | r4 c8 es16 f16~ f16 fis16 g16 es16 \tuplet 6/4 {f8 g8 es16 f16} 
      | g4 r4 \tuplet 9/8 {r8 d32 es32 f32 aes32 bes32} des'16 c'16 bes16 aes16 
      | \tuplet 3/2 {ges8 f8 g8} aes2~ \tuplet 6/4 {aes8. ges8 f16~} 
      | f16 aes16 des'16 f16~ f4~ \tuplet 3/2 {f8 es8 ges8} es16 e16 g16 c'16 
      | bes8 aes8 aes4. r8 r8 aes16 des'16~ 
      | \tuplet 10/8 {des'16. aes32~ aes8 g32 ges32} f16 e8. r4 \tuplet 3/2 {r8 aes8 bes8} 
      | b16 c'8.~ c'2 r4 
      | r8 fis8 g8 a16 bes16 c'16 des'8 e'16~ \tuplet 12/8 {e'32 g'32~ g'8 fis'32 g'8 fis'32} 
      \bar "||" \tuplet 3/2 {g'8 f'8 c'8~} c'8 r8 r8.. f32~ f16 aes16 a16 bes16 
      | b8 es'16 des'16 f4. f8 aes16 es'16 des'16 aes16~ 
      | \tuplet 10/8 {aes16 bes16 b32 c'16. b32 c'32~} c'8 c'8~ c'4. r8 
      | r8 fis8 g16 bes16 g16 des'16 \tuplet 3/2 {bes8 es'8 e'8~} e'4~ 
      | \tuplet 5/4 {e'8 g'16 f'16 c'16} aes8 c'8~ c'4. b8 
      | c'8 fis'16 g'16 f'4 r4 \tuplet 3/2 {r8 f'8 des'8} 
      | \tuplet 3/2 {f8 aes8 bes8~} bes8 r8 r8 r32 g'32 aes'32 g'32 f'16 g'16 f'16 d'16~ 
      | d'16 des'16 es'16 c'16~ c'4. \tuplet 6/4 {f16 g16 aes16} \tuplet 6/4 {b8 des'8 b16 des'16~} 
      \bar "||" \tuplet 6/4 {des'8 b8 c'16 es'16} \tuplet 3/2 {bes8 aes8 es8~} es4. e8 
      | f2 r4 \tuplet 3/2 {r8 e8 f8} 
      | \tuplet 3/2 {fis8 g4~} g8 r8 \tuplet 6/4 {r8. c8 es16~} es16 g8 bes16 
      | aes8 r8 r4 r8 aes8~ aes32 a16 bes16 c'16 es'32~ 
      | \tuplet 3/2 {es'8 des'8 bes8~} bes4 r4 \tuplet 3/2 {r8 a8 bes8} 
      | b8 c'8~ c'8. des'32 d'32 es'4 f16 ges16 a16 c'16~ 
      | c'16 es'16 des'4 r8 r8. c'16~ c'16 bes16 e'16 f'16~ 
      | \tuplet 6/4 {f'16 des'8 c'16 bes16 es'16~} es'4~ \tuplet 7/8 {es'16. fis32 g32 aes32 a32} c'16 es'16 f'16 ges'16 
      | e'8 f'8~ f'4. r8 \tuplet 6/4 {r8. aes16 a16 bes16} 
      | \tuplet 3/2 {des'8 f'8 f8~} \tuplet 6/4 {f4 fis16 g16} es'4 \tuplet 3/2 {c'4 es8} 
      | aes1~ 
      | aes8 r8 r8. aes16~ \tuplet 3/2 {aes8 f8 e8} es8 des8 
      \bar "||" c4 r2.\bar  ".."
    }
    >>
>>    
}
