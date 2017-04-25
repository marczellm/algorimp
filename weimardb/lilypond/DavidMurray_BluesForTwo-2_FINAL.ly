\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues for Two (Solo 2)"
  composer = "David Murray"
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
      | s2 r2 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:7 | f1:7 | bes1:7|
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


      \tempo 4 = 61
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. es''16 e''4~ 
      \bar "||" \mark \default \tuplet 6/4 {e''8 bes'16 g'16 a'16 b'16} \tuplet 12/8 {g'8 es'16. f'16 f'32 ges'32 f'32} \tuplet 3/2 {es'8 f'4} \tuplet 6/4 {es'16 cis'16 d'8 es'16 f'16~} 
      | \tuplet 6/4 {f'16 fis'16 g'16 es'16 f'16 des'16} \tuplet 6/4 {bes8 des'16 bes16 c'16 bes16} f8 r8 \tuplet 9/8 {r8 r32 bes32 g32 e32 es32} 
      | \tuplet 6/4 {d16 f16 bes16 a16 bes8~} bes2~ \tuplet 6/4 {bes8. fis16 g16 f16~} 
      | f4. r8 r4 \tuplet 3/2 {r8 d''8 es''8~} 
      | es''4~ \tuplet 12/8 {es''8.. a'32 b'16. es'32~} \tuplet 6/4 {es'16 f'16 ges'16 f'16 es'16 f'16~} \tuplet 6/4 {f'8 es'16 c'16 d'16 bes16} 
      | bes16 aes16 bes8 aes16 es16 e8 r4 \tuplet 12/8 {r8. c16. es16 e32~} 
      | \tuplet 12/8 {e16. f32~ f8 bes16. aes32~} aes16 bes16 d'16 es'16~ es'16 e16 f16 e16 \tuplet 3/2 {f8 f'4~} 
      | f'16 es16 e16 es16 \tuplet 6/4 {d16 f16 g'8 es'16 f'16} aes'4 g'16. bes'32 c''32 des''32 c''32 bes'32~ 
      | bes'4~ \tuplet 7/8 {bes'8 fis'32 g'32 f'32~} f'4. \tuplet 6/4 {es'16 des'16 bes16} 
      | r4 \tuplet 6/4 {es'16 des'16 es'16 des'16 es'16 des'16} es'16 des'32 es'16 des'32 es'32 e'32 des'32 es'16 des'32 bes32 aes32 c'32 des'32 
      | bes4 \tuplet 6/4 {fis16 g16 aes4~} \tuplet 18/16 {aes64 g4 e64} ges4 
      | f8 r8 r2.\bar  ".."
    }
    >>
>>    
}
