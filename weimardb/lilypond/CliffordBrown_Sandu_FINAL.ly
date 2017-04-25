\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Sandu"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | r1 | s1 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | g2:min7 c2:7 
      | f1:min7 | bes1:7 | es2.:7 c4:min7 | f2:min7 bes2:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | g2:min7 c2:7 | f1:min7 | bes1:7 | es2.:7 c4:min7 | f2:min7 bes2:7 
      | es1:7|
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


      \tempo 4 = 140
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {bes8 des'8 es'8} \tuplet 3/2 {aes'8 a'8 a'8} \tuplet 3/2 {aes'8 aes'8 aes'8} 
      | \tuplet 3/2 {ges'8 ges'8 bes8} \tuplet 3/2 {es'8 f'8 es'8} \tuplet 6/4 {des'8 bes8 des'16 es'16~} \tuplet 3/2 {es'8 f'8 fis'8} 
      \bar "||" \mark \default g'4.. bes'16 r4 r16 c'16 es'16 f'16 
      | ges'4.. es'16~ es'16 f'8 es'16 c'16 a8 es'16~ 
      | es'4~ es'16 f'8 des'16~ des'4 r4 
      | r2 r16 b'16 c''8~ c''8. bes'16~ 
      | bes'16 aes'8 f'16~ f'16 es'16 f'16 ges'16 \tuplet 3/2 {aes'8 bes'8 bes'8} aes'8 aes'8 
      | ges'8 ges'8 \tuplet 6/4 {f'8 f'8 ges'16 aes'16} bes'8 bes'8 aes'8 aes'8 
      | \tuplet 6/4 {g'8 aes'8 bes'16 c''16~} \tuplet 6/4 {c''16 d''8. f''16 des''16~} \tuplet 5/4 {des''16 es''16 cis''16 d''16 des''16} c''16 b'16 bes'16 a'16 
      | aes'16 fis'16 g'16 f'16 e'16 c'16 r8 \tuplet 6/4 {r8. cis''16 d''16 des''16} c''16 bes'16 a'16 g'16 
      | aes'16 es'16 e'16 g'16 f'16 e'16 es'16 cis'16 d'16 bes16 r8 r4 
      | r4 r16 bes'16 c''16 es''16~ \tuplet 5/4 {es''16 ges''8. es''16~} \tuplet 3/2 {es''8 des''8 bes'8} 
      | a'16 aes'16 ges'16 es'16 bes8 des'16 es'16~ es'4 \tuplet 3/2 {des'8 bes8 es'8~} 
      | es'4. r8 r8. d'16 f'16 g'16 bes'16 c''16~ 
      \bar "||" \mark \default c''16 des''8 bes'16 c''2~ c''8. bes'16~ 
      | bes'16 b'32 des''8 ges'32~ ges'8 r8 r8. es'16 fis'16 g'16 bes'16 c''16 
      | \tuplet 3/2 {des''8 bes'8 c''8~} c''2 \tuplet 3/2 {bes'8 c''8 bes'8~} 
      | bes'16 e''16\bendAfter #+4  f''16 a'16~ \tuplet 6/4 {a'4~ a'16 bes16~} \tuplet 3/2 {bes8 aes'8 g'8~} g'16 des'16 bes16 c'16~ 
      | c'4.. aes'16 bes'8. ges'16 r4 
      | r2 f''8 e''16 es''16 \tuplet 3/2 {d''4 f''8~} 
      | f''16 es''8 bes'16~ bes'16 g'8 aes'16~ \tuplet 3/2 {aes'8 bes'8 c''8~} c''16 d''8 f''16 
      | g''4 d''4 cis''16 d''16 des''16 a'16 \tuplet 3/2 {ges'4 e'8} 
      | \tuplet 3/2 {f'4 b'8} c''4~ \tuplet 6/4 {c''8 bes'8. aes'16~} aes'16 g'8 f'16 
      | es'8 c'8~ c'16 es'8 c'16 d'8. bes'16~ bes'16 g'8 es'16 
      | f'8 es'8~ es'16 d'8 es'16 fis'16 g'8 bes'16 \tuplet 6/4 {c''4 b'16 des''16~} 
      | \tuplet 6/4 {des''4 b'16 c''16~} c''8 a'16 bes'16~ bes'8 aes'8 g'8 es'8~ 
      \bar "||" \mark \default es'4 r2.\bar  ".."
    }
    >>
>>    
}
