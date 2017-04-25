\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Stompin' at the Savoy"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | des1:maj | des2:maj aes2:7 | des1:maj | s2 d2:dim | es1:min7 | aes1:7 | des2:6 bes2:min7 | es2:min7 aes2:7 
      | des1:maj | s2 aes2:7 | des1:maj | s2 d2:dim | es1:min7 | aes1:7 | des1:6 | des1:7 
      | ges2:7 g2:7 | ges1:7 | b2:7 c2:7 | b1:7 | e2:7 f2:7 | e1:7 | a1:7 | aes1:7 
      | des1:maj | s2 aes2:7 | des1:maj | s2 d2:dim | es1:min7 | aes1:7 | des1:6 | es2:min7 aes2:7 
      | des1:maj | s2 aes2:7 | des1:maj | s2 d2:dim | es1:min7 | aes1:7 | des2:6 bes2:min7 | es2:min7 aes2:7 
      | des1:maj | s2 aes2:7 | des1:maj | s2 d2:dim | es1:min7 | aes1:7 | des1:6 | des1:7 
      | ges2:7 g2:7 | ges1:7 | b2:7 c2:7 | b1:7 | e2:7 f2:7 | e1:7 | a1:7 | aes1:7 
      | des1:maj | s2 aes2:7 | des1:maj | s2 d2:dim | es1:min7 | aes1:7 | des1:6 | es2:min7 aes2:7|
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


      \tempo 4 = 164
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 bes'8. bes'16 r4 
      | r4 r8. e''16~ e''8. des''16~ des''8 bes'8 
      | \tuplet 3/2 {a'8 bes'8 a'8} \tuplet 3/2 {g'4 aes'8~} aes'4 r4 
      | r8 f'8 \tuplet 3/2 {es'4 des'8} \tuplet 3/2 {d'4 b'8~} b'8. a'16~ 
      | \tuplet 3/2 {a'8 bes'8 bes8~} bes16 es'8 f'16~ f'16 ges'8 aes'16~ \tuplet 6/4 {aes'16 a'16 bes'16 a'16 g'8} 
      | aes'8 ges'8~ \tuplet 3/2 {ges'8 es'8 e'8} f'8 c'8 es'8 c'8 
      | des'8 es'8 f'8 aes'8 des'8 f'8 aes'8 b'8 
      | bes'8 bes8 es'8 ges'8~ ges'16 d'8 a16~ a8. a16 
      \bar "||" aes4.. d'16\glissando  es'2~ 
      | es'4. des'8 es'8 e'8 es'16 e'16 es'16 des'16~ 
      | \tuplet 6/4 {des'16 aes4 aes16~} aes8. d'16\glissando  es'2 
      | r4 r8 des'8~ \tuplet 3/2 {des'8 es'8 f'8} es'16 f'16 es'16 des'16~ 
      | des'16 a8 bes16~ \tuplet 3/2 {bes8 des'8 f'8} aes'8 ges'8 des'8 bes8 
      | \tuplet 6/4 {a4\glissando  e'16 f'16~} f'8 c'8 \tuplet 3/2 {es'4 des'8} c'8 des'8 
      | \tuplet 6/4 {f'4 aes'16 bes'16~} bes'8 des''8 r2 
      | r2. r8. g''16\glissando  
      \bar "||" aes''4. e''16 des''16 c''4 des''8 r8 
      | r8. aes'16 b'8 aes'8 bes'8 aes'8 ges'8 e'8 
      | d'8 es'8 ges'8 a'8 des''8 bes'8 b'8 bes'8 
      | a'8 des''8 aes'8 ges'8 b'8 a'8 ges'8 g'8 
      | aes'8 b8 d'8 ges'8 a'8 g'8 aes'8 b'8 
      | d''4 f''8. f''16~ \tuplet 5/4 {f''16 e''16 f''16 e''16 d''16~} d''16 d''16 des''16 b'16~ 
      | b'16 aes'16 a'16 bes'16 \tuplet 3/2 {b'4 aes'8} a'8 e'8 des'8 a8~ 
      | \tuplet 6/4 {a16 aes'16 bes'16 aes'16 ges'8} f'8 es'8~ es'16 d'8 aes16 d'8 aes8 
      \bar "||" es'2. r4 
      | r4 \tuplet 6/4 {r8. es'8 e'16~} e'4 es'4~ 
      | es'4.. e'16~ e'8 aes8 es'4~ 
      | es'4 r2. 
      | r4 r8. bes'16~ bes'16 bes'8 bes'16~ \tuplet 3/2 {bes'8 bes'8 bes'8} 
      | bes'4 bes'4 e''8 f''4. 
      | \tuplet 3/2 {des''4 bes'8~} bes'4 bes'8 r8 r4 
      | r1 
      \bar "||" \mark \default r8 aes''8 bes''8 c'''4 des'''8 r4 
      | r8 aes''8~ aes''16 bes''8 c'''16~ c'''16 des'''8 c'''16 bes''8 a''8 
      | \tuplet 3/2 {bes''8 aes''8 g''8} ges''8 bes''8~ bes''16 f''8 es''16~ es''8. aes''16~ 
      | \tuplet 3/2 {aes''8 c'''8 f''8} es''8 des''8 d''8 f'8 aes'8 b'8 
      | bes'8 b8 es'8 ges'8~ ges'16 des'16 es'16 e'16 \tuplet 3/2 {f'4 d'8} 
      | es'8 ges'8 bes'8 des''8 c''16 d''16 c''16 bes'16 \tuplet 6/4 {aes'16 bes'16 aes'8 ges'8} 
      | \tuplet 3/2 {f'8 aes'8 c''8} \tuplet 3/2 {es''4 c''8} d''8 b'8 \tuplet 5/4 {g'16 aes'16 g'16 e'8} 
      | es'4~ \tuplet 6/4 {es'8 ges'16 aes'16 bes'16 des''16} c''8 bes'8 \tuplet 6/4 {aes'16 bes'16 aes'8 ges'8} 
      \bar "||" f'8. c'16 \tuplet 5/4 {es'16 f'16 es'16 c'16 des'16~} \tuplet 3/2 {des'8 aes'8 c''8} \tuplet 3/2 {bes'4 f'8} 
      | \tuplet 3/2 {aes'4 ges'8} r2 r8 bes'16 a'16 
      | \tuplet 6/4 {aes'8 f'16 ges'16 e'16 f'16} e'16 es'16 d'16 des'16 aes4 aes4 
      | r2 \tuplet 3/2 {b'8 c''8 b'8} bes'8 a'8 
      | aes'16 bes'16 aes'16 g'16 \tuplet 3/2 {ges'8 bes'8 des''8~} \tuplet 3/2 {des''8 e''8 f''8~} f''16 es''8 des''16 
      | c''8 bes'8 aes'8 g'8~ g'32 ges'32~ ges'8 e''32\glissando  f''32~ f''8 c''8 
      | es''8 des''8 c''8 des''8 aes'8 f'8 es'8 des'8 
      | c'8 des'8 f'8 aes'8 c''8 es''8 des''8 b'8 
      \bar "||" aes'8 a'8 bes'4 f'8 aes'8 \tuplet 3/2 {es'4 c'8} 
      | des'8 es'8 e'8 ges'8 aes'8 b'8 bes'8 es'8 
      | a'8 ges'8 aes'8 es'8 \tuplet 3/2 {e'4 des'8} es'4~ 
      | es'8 des''8 b'8 a'8 aes'8 ges'8 e'8 d'8 
      | es'8 e'8 ges'8 a'16 des''16 d''16 des''16 b'8 a'8 g'8 
      | aes'8 r8 r4 g''8 f''8 e''16 ges''16 e''16 d''16 
      | des''8 e'8 ges'8 aes'8 b'8 a'8 e'8 des'8 
      | a8 g8 aes8 c'8 d'8 e'8 a'8 g'8 
      \bar "||" g'8 aes'4 bes'8~ \tuplet 6/4 {bes'8. es'8\glissando  f'16~} f'4~ 
      | f'4~ \tuplet 3/2 {f'8 aes'8 bes'8~} bes'8 b'8 aes'8 aes'8 
      | \tuplet 3/2 {ges'8 g'8 aes'8~} aes'8 f'8 r2 
      | r2. des''4 
      | \tuplet 3/2 {g''4 ges''8~} ges''2~ ges''8. es''16\glissando  
      | e''8. des''16~ des''8 b'8 aes'8 g'8 ges'8 e'8 
      | r4 des'8 e'8 f'8 aes'8 bes'8 aes'8 
      | b'4 aes'8 ges'8 e'4 \tuplet 3/2 {es'4 des'8}\bar  ".."
    }
    >>
>>    
}
