\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Let's Cool One"
  composer = "Steve Lacy"
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
      
      | es1:maj | f2:min7 bes2:7 | es2:maj f4:min7 g4:min7 | c1:7 | f1:min7 | bes1:7 | es2 c2:7 | f2:min7 bes2:7 
      | es1:maj | f2:min7 bes2:7 | es2:maj f4:min7 g4:min7 | c1:7 | f1:min7 | bes1:7 | es1 | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | c1:min7 | f1:7 | f1:min7 | bes1:7 
      | es1:maj | f2:min7 bes2:7 | es2:maj f4:min7 g4:min7 | c1:7 | f1:min7 | bes1:7 | es1 | s1 
      | es1:maj | f4:min7 bes2.:7 | es2:maj f4:min7 g4:min7 | c1:7 | f1:min7 | bes1:7 | es2 c2:7 | f2:min7 bes2:7 
      | es1:maj | f2:min7 bes2:7 | es2:maj f4:min7 g4:min7 | c1:7 | f1:min7 | bes1:7 | es1 | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | c1:min7 | f1:7 | f1:min7 | bes1:7 
      | es1:maj | f2:min7 bes2:7 | es2:maj f4:min7 g4:min7 | c1:7 | f1:min7 | bes1:7 | es1 | s1 
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


      \tempo 4 = 132
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8. bes'16~ \tuplet 6/4 {bes'8 g'8. d'16~} 
      | d'8 aes'8 c''4~ \tuplet 6/4 {c''4~ c''16 f''16~} f''8 d''8 
      | \tuplet 3/2 {bes'4 c''8~} c''8 g''8~ g''2~ 
      | g''2~ g''8. ges''16~ ges''16 e''8 c''16~ 
      | c''8 aes'8 d'8 r8 r4 r16 d'16 es'16 f'16 
      | g'8 e'8 c'8 r8 r4 \tuplet 6/4 {r16 c'16 d'8 e'16 f'16} 
      | \tuplet 3/2 {d'4 bes8~} bes4 c'16 d'16 es'16 c'16~ c'4 
      | aes4 r2 r16 d'8 g'16~ 
      \bar "||" \tuplet 6/4 {g'8 bes'8 d''16 d''16~} \tuplet 3/2 {d''8 d''8 d''8~} d''8 g''8 d''8 c''8~ 
      | c''8 r8 r4 \tuplet 3/2 {g'8 aes'4~} aes'8 c''8~ 
      | c''16 cis''16 d''8 d''8 d''4 f''8 d''8 bes'8~ 
      | bes'8 r8 r8. g'16 bes'8 des''4 e''8 
      | \tuplet 6/4 {e''8 e''8. c''16~} c''8 es''8 es''4 \tuplet 3/2 {c''4 es''8~} 
      | \tuplet 6/4 {es''8 es''8 b'16 aes'16~} \tuplet 6/4 {aes'16 e'8. aes'16 b'16~} b'16 d''16 es''8 b'4~ 
      | b'16 es''8 es''16~ es''16 bes'16 g'16 f'16~ f'16 es'16 f'16 es'16~ es'4~ 
      | \tuplet 3/2 {es'8 f'8 es'8~} es'4 f'16 es'16 r8 r4 
      \bar "||" bes''16. b''32 c'''32 cis'''32 d'''32 es'''32~ es'''4~ \tuplet 5/4 {es'''16 des'''8. bes''16~} bes''4~ 
      | bes''8 aes''8 f''8 es''8 des''8 r8 r8. bes'16~ 
      | bes'16 des''16 es''16 f''16 e''16 f''16 r8 r8. bes'16~ \tuplet 6/4 {bes'8. f''16 es''16 f''16~} 
      | f''8. f''16 es''16 f''8.~ \tuplet 5/4 {f''8 f''16 es''16 f''16} r4 
      | r16 f''16 es''16 f''16~ f''8 f''16 es''16 f''8. f''16 es''16 f''8.~ 
      | f''16 f''16 es''16 f''16~ f''8 f''16 es''16 f''4 f''16 es''16 f''8~ 
      | f''16 f''16 es''16 f''16 bes'4 r4 r16 f'16 es'16 f'16~ 
      | f'8 bes4 r8 r8. bes16 d'16 ges'16 bes'16 d''16 
      \bar "||" \tuplet 3/2 {ges''8 bes''8 e'''8} es'''8. des'''16~ des'''8 e'''16 f'''16~ f'''4~ 
      | f'''4~ \tuplet 3/2 {f'''8 es'''8 c'''8} aes''8 f''8 g''8 r8 
      | r8. aes''16~ aes''16 bes''8 c'''16~ c'''4 g''4~ 
      | g''4 \tuplet 3/2 {c''8 des''4~} des''4 c''4~ 
      | c''8. es''32 f''32 es''4 f''4.. es''16~ 
      | \tuplet 6/4 {es''8 f''8 es''16 f''16} es''8 f''8 bes'4~ bes'16 c''8 d''16 
      | es''4 r4 g''8 bes''8 g''16 ges''8 e''16~ 
      | e''8 f''8~ f''2~ f''8. ges''16 
      \bar "||" \mark \default \tuplet 3/2 {d''8 g''8 f''8~} f''16 es''16 bes'16 g'16~ \tuplet 5/4 {g'16 f'8. es'16~} es'8. f'16~ 
      | f'16 aes'8 aes'16~ aes'8 r8 r4 g'16 aes'8 bes'16~ 
      | bes'8 b'8 c''4. b'8~ b'16 c''8 des''16~ 
      | des''8 r8 r4 r8 es'16 e'16~ e'8 es''8 
      | des''8 e''8 \tuplet 3/2 {c''4 aes'8~} \tuplet 6/4 {aes'16 es'16 e'8. c'16~} c'8. d'32 es'32~ 
      | \tuplet 6/4 {es'16 d'4 f'16} ges'4 des''4~ \tuplet 3/2 {des''8 bes'8 des''8} 
      | g'8 r8 r8 g'8 \tuplet 3/2 {bes'8 e'4~} \tuplet 6/4 {e'4~ e'16 g'16} 
      | es'4~ es'16 es'16 bes'16 d'16~ d'4 r4 
      \bar "||" r8. bes''16~ \tuplet 6/4 {bes''16 b''16 d'''16 es'''8 d'''16~} d'''8 d'''8 bes''4 
      | c'''4 aes''4 aes''4 \tuplet 3/2 {g''4 f''8} 
      | bes''4 g''4 g''4 f''8 es''8 
      | \tuplet 3/2 {g''8 aes''8 e''8} e''4 bes'4 d''16 e''8 aes''16~ 
      | aes''16 g''8 es''16~ es''8 es''8 \tuplet 3/2 {g'8 aes'4} es''8 g''8 
      | ges''8 d''8 d''4 g'4~ g'16 aes'8 d''16~ 
      | d''16 f''8 es''16~ es''8 es''8 es'4 r4 
      | r8 es'8 f'16 es'8. f'2 
      \bar "||" es'8 des''8~ des''4~ \tuplet 3/2 {des''8 bes'8 aes'8} r4 
      | r4 bes'8. des''16~ \tuplet 7/8 {des''16. bes'16. aes'32~} aes'8 r8 
      | r4 \tuplet 3/2 {a'8 bes'8 des''8} e''16 f''16 e''16 des''16~ des''16 a'8 g'16~ 
      | g'8 f'8~ f'8. c'16~ \tuplet 5/4 {c'8 es'16 f'16 c'16~} c'4 
      | bes2 f'4 r4 
      | r4 r16 f'8 bes'16 f''4 bes''8. f'''16~ 
      | f'''8 b'''4 bes'''8~ \tuplet 3/2 {bes'''8 f'''8 e'''8} bes''4~ 
      | bes''8 aes''8~ aes''16 f''8 es''16\glissando  e''8 es''8 r8. a'32 bes'32~ 
      \bar "||" \tuplet 6/4 {bes'8 d''8. bes''16~} bes''4~ bes''16 g''16 bes''16 g''16 d''8 r8 
      | r8. b'16 c''8. aes''16 f''4. c''8~ 
      | c''16 bes'8 g''16~ g''8 es''8 bes'4.. aes'32 a'32~ 
      | a'8 aes'8 e''2~ e''8 aes'8~ 
      | aes'8 g'4 r8 r8 es''8~ es''8. g'16 
      | ges'4. d''8~ d''4~ \tuplet 6/4 {d''4~ d''16 c''16~} 
      | c''8 es'4. \tuplet 3/2 {a'8 bes'4~} bes'8. g'16 
      | aes'4 e'2 f'16 fis'16 g'8 
      \bar "||" d'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
