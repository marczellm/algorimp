\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "All the Things You Are"
  composer = "Milt Jackson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | g1:7 | f1:min7 | s1 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | g1:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | a2:min7 d2:7 | g1:maj | s1 
      | a1:min7 | d1:9+ | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | c1:775+ 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim 
      | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 | f1:min7|
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


      \tempo 4 = 167
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r2. r8 b''8 
      | c'''4 e'''8 c'''8 b''8 bes''8 aes''8 f''8 
      | bes''8 g''16 aes''16 g''16 f''16 e''8 es''8 des''8 c''8 bes'8 
      \bar "||" \mark \default f'8 aes'8 f'8 g'8 f'8 c'8~ \tuplet 3/2 {c'8 f'8 aes'8~} 
      | aes'16 c''8 bes'16~ bes'16 c''8 bes'16~ bes'8. c''16 des''8 es''8 
      | \tuplet 3/2 {ges''4 e''8} \tuplet 3/2 {ges''4 e''8~} e''8 d''8 es''8 des''8~ 
      | des''8 c''4 b'16 a'16 aes'8 ges'8 d'8 c'8 
      | des'8. f'16~ f'16 ges'8 b'16 \tuplet 3/2 {des''8 b'8 bes'8} aes'8 g'8 
      | f'4 \tuplet 3/2 {d'8 f'8 g'8} aes'8 bes'8 b'8. g'16 
      | c''8 g'8 \tuplet 3/2 {d''4 es''8} e''8 c''8 f''8 fis''8 
      | g''8 f''4 es''8 \tuplet 3/2 {e''8 aes''8 b''8} aes''8 a''8 
      \bar "||" bes''8 aes''8 g''8 f''8 es''8 b'8 g'8. es'16 
      | c''8 aes'8~ \tuplet 3/2 {aes'8 c''8 es''8} g''8 f''8 es''4 
      | d''4. des'''16 b''16 bes''8 ges''8 e''4 
      | f''8 d''8 es''8 f''8 ges''8 e''8 es''8 des''8 
      | \tuplet 3/2 {d''8 es''8 g''8} bes''4 aes''8 aes''16 a''16 bes''16 g''16 ges''8 
      | f''8 es''8 d''8 b'8 c''8 d''8 b'8 g'8 
      | a'8 g'8 a'8 b'8~ \tuplet 6/4 {b'16 g'4 d'16~} d'4~ 
      | d'2 r4 r8 es''8 
      \bar "||" \tuplet 3/2 {e''8 g''8 b''8} d'''8. c'''16~ c'''8 g''4 e''8 
      | bes''8 b''8 a''8 g''8 \tuplet 3/2 {fis''8 fis''8 a''8} es''8 des''8 
      | d''8 c''8 a'8 bes'8 b'8 d''8 e''4 
      | \tuplet 6/4 {g''4 d''16 a''16~} a''8 bes''8 b''8 c'''8 b''8 g''8 
      | a''4~ \tuplet 6/4 {a''4 es'''16 e'''16~} e'''4 d'''8 c'''8~ 
      | \tuplet 3/2 {c'''8 a''8 b''8} a''8 e''8 g''8 aes''8 e''8 b'8 
      | e''4. r8 r4 es'''8 e'''8 
      | c'''8 aes''8 e''8 c''8 aes'8 c'8 r4 
      \bar "||" r8 e'8 \tuplet 3/2 {f'8 aes'8 c''8} f''4 c''4~ 
      | c''8 des''8 \tuplet 3/2 {f''8 aes''8 c'''8} bes''4 aes''8 f''8 
      | \tuplet 3/2 {g''8 bes''8 des'''8} e'''8. es'''16~ es'''4. des'''8 
      | \tuplet 3/2 {b''8 c'''8 b''8} bes''8 aes''8 b''8 a''8 aes''8 ges''8 
      | f''8 aes''8 es''8 c''8 des''8 es''8 e''8 g''8 
      | aes''8 fis''8~ \tuplet 6/4 {fis''16 e''8. e'16 aes'16} b'8 es''8 \tuplet 3/2 {des''4 b'8} 
      | c''8 es''8 \tuplet 3/2 {f''4 es''8} g''8 aes''8 es''8 des''8 
      | b'8 des''8 d''16 des''16 b'16 a'16 des''8 b'8 aes'8 fis'8 
      | aes'2 \tuplet 3/2 {des'8 f'8 aes'8} bes'4 
      | bes'8 b'8~ \tuplet 6/4 {b'16 f'4 des'16~} des'4. es'8 
      | g'8 aes'8 g'8 f'8 es'4. f'16 es'16 
      | d'8 b8 \tuplet 3/2 {c'4 d'8} es'8 g'8 \tuplet 3/2 {c''8 d''8 d''8} 
      \bar "||" \mark \default d''4 r2.\bar  ".."
    }
    >>
>>    
}
