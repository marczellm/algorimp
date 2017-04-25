\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Joy Spring"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \major
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
      
      | f1:maj | g2:min7 c2:7 | f1:maj | bes2:min7 es2:7 | s2 d2:7 | g2:min7 c2:7 | f1 | aes2:min7 des2:7 
      | ges1:maj | aes2:min7 des2:7 | ges1:maj | b2:min7 e2:7 | bes2:min7 a2:7 | aes2:min7 des2:7 | ges1 | a2:min7 d2:7 
      | g1:maj | g2:min7 c2:7 | f1:maj | f2:min7 bes2:7 | es1:maj | aes2:min7 des2:7 | ges1:maj | g2:min7 c2:7 
      | f1:maj | g2:min7 c2:7 | f1:maj | bes2:min7 es2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1 | g2:min7 c2:7 
      | f1:maj | g2:min7 c2:7 | f1:maj | bes2:min7 es2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1 | aes2:min7 des2:7 
      | ges1:maj | aes2:min7 des2:7 | ges1:maj | b2:min7 e2:7 | bes2:min7 a2:7 | aes2:min7 des2:7 | ges1 | a2:min7 d2:7 
      | g1:maj | g2:min7 c2:7 | f1:maj | f2:min7 bes2:7 | es1:maj | aes2:min7 des2:7 | ges1:maj | g2:min7 c2:7 
      | f1:maj | g2:min7 c2:7 | f1:maj | bes2:min7 es2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1 | g2:min7 c2:7|
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


      \tempo 4 = 161
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8 gis'8 \tuplet 3/2 {a'4 d''8} 
      | f''4 \tuplet 3/2 {g''8 gis''4} r2 
      | r8 a''8 e''8 g''8 f''8 c''8~ c''16 a'8 f'16 
      | bes'4 f'16 g'8 a'16~ a'16 bes'8 c''16 \tuplet 3/2 {des''8 es''8 c''8~} 
      | c''8 a'8 e'8 cis'16 d'16~ d'4 r4 
      | r4 r8 a'8~ a'16 g'8 a'16~ a'16 bes'8 c''16 
      | r4 r8. f'16~ f'16 e'8 f'16~ f'16 aes'8 bes'16~ 
      | bes'16 b'8 es'16~ es'16 ges'8 es'16~ es'16 f'8 aes'16~ aes'16 b'16 d''16 des''16 
      | r2 r8. a''16 \tuplet 3/2 {c'''4 f''8~} 
      | f''16 aes''8 ges''16~ \tuplet 3/2 {ges''8 f''8 ges''8~} \tuplet 3/2 {ges''8 d''8 des''8} b'8 a'8 
      | bes'8 f'8 a'16 aes'16 f'8 ges'8 des'8 bes8 ges8 
      | cis'4 d'4~ \tuplet 5/4 {d'16 cis''16 d''16 cis''16 b'16~} b'16 gis'8 a'16~ 
      | a'16 bes'8 f'16~ \tuplet 6/4 {f'16 a'16 bes'16 aes'16 fis'8~} fis'16 g'8 e'16~ e'16 dis'8 cis'16~ 
      | cis'8 b8~ b16 es'16 ges'16 bes'16~ \tuplet 6/4 {bes'16 a'16 bes'16 a'8 f'16~} \tuplet 5/4 {f'16 aes'16 bes'16 aes'16 f'16} 
      | ges'8 des'8~ des'16 bes8 ges16 des'4 r4 
      | r8. cis''16~ cis''16 d''8 c''16~ c''16 b'8 a'16~ \tuplet 6/4 {a'8 gis'16 a'16 gis'16 fis'16~} 
      \bar "||" fis'8 g'8~ g'8. g''16 fis''16 g''8 d''16 \tuplet 3/2 {cis''8 d''8 bes'8} 
      | a'16 bes'8 g'16 \tuplet 5/4 {f'16 g'16 a'16 bes'16 c''16} des''16 b'16 c''16 bes'16 a'16 g'16 ges'16 e'16 
      | f'4. f''8 \tuplet 6/4 {e''16 f''8. c''16 b'16} c''8 a'16 gis'16 
      | a'8 f'16 g'16 aes'16 bes'16 c''16 b'16 bes'16 aes'16 g'16 f'16 e'16 d'16 es'16 f'16 
      | g'16 aes'16 bes'16 c''16 \tuplet 3/2 {d''8 es''8 d''8} \tuplet 5/4 {des''16 es''16 cis''16 d''16 des''16} c''16 b'16 bes'16 a'16 
      | \tuplet 3/2 {aes'8 es'8 ges'8} es'16 f'8. des''16 b'16 gis'16 a'16 bes'16 f'16 aes'16 f'16 
      | \tuplet 3/2 {ges'8 gis8 a8} des'4 r2 
      | r8. a''16~ a''16 g''16 b''16 g''16 f''16 e''8 d''16~ d''16 c''8 bes'16~ 
      \bar "||" bes'16 a'8 f''16~ f''8 a''4 c'''8 r4 
      | r8. a''16~ a''16 bes''8 d'''16~ d'''16 c'''8 des'''16 bes''4 
      | a''8. e''16~ \tuplet 6/4 {e''8 g''8. f''16~} f''16 e''8 c''16~ c''16 a'8 f'16~ 
      | f'16 bes'8 f'16~ f'16 bes'8 c''16~ \tuplet 3/2 {c''8 des''8 es''8} c''8 bes'8 
      | a'8 e'8~ e'16 a'8 bes'16~ bes'16 c''8 bes'16 a'8 f'8 
      | g'8 f'8~ f'16 g'8 a'16~ a'16 bes'8 c''16~ c''16 a'8 e'16~ 
      | e'16 g'8 e'16 f'8 d'8~ d'2 
      | r2 r16 aes'8 aes'16~ aes'8 aes'8 
      \bar "||" \mark \default aes'4~ aes'16 g'8 g'16~ g'8 g'8 g'8. g'16~ 
      | g'8 g'8 aes'8 aes'8 \tuplet 3/2 {aes'4 aes'8~} aes'8 aes'8~ 
      | aes'16 aes'8 c''16 a'16 g'8 f'16~ f'16 e'8 f'16~ f'16 a'8 c''16~ 
      | \tuplet 6/4 {c''8 cis''8. d''16~} d''4~ d''16 des''8 es''16~ es''16 des''8 es''16~ 
      | es''16 c''8 a'16 e'8 c'8~ c'16 d'8 g'16 a'4 
      | \tuplet 3/2 {f'8 g'4~} g'8. gis'16~ gis'16 a'8 f'16~ f'16 g'8 e'16~ 
      | e'16 f'8 c'16~ c'16 a8 f16 g4 r4 
      | r4 r8. des''16~ \tuplet 3/2 {des''8 b'8 des''8} b'16 bes'8 aes'16~ 
      | aes'16 f'8 ges'16~ ges'16 bes'8 des''16~ des''16 f''8 es''16~ \tuplet 6/4 {es''8 d''8. es''16~} 
      | \tuplet 3/2 {es''8 ges''8 es''8~} es''16 b'8 gis'16~ gis'8 a'8 e''16 f''8 es''16~ 
      | es''16 des''8 bes'16 b'8 des''8 bes'8 f'8 aes'8 f'8 
      | fis'8 gis'8 a'8 b'8 cis''8 b'8 a'8 gis'8~ 
      | gis'16 a'16 bes'4 des''8 r4 r8 fis''8~ 
      | \tuplet 6/4 {fis''4 b'16 c''16~} c''8 b'8 a'8 ges'8 des'8 r8 
      | r4 r8 b8 bes8 aes'8 f'8 des'8 
      | fis'4. a'8 c''8 dis''8 c''8 cis''8 
      \bar "||" \tuplet 3/2 {d''4 g''8~} g''8. d''16~ d''8 c''4 aes'8\bendAfter #+4  
      | \tuplet 3/2 {g'4 a'8} bes'8 e'8~ e'16 f'16 d'16 e'16~ e'4~ 
      | \tuplet 3/2 {e'8 b'8 c''8} \tuplet 3/2 {f''4 c''8~} c''16 bes'8 gis'16 \tuplet 3/2 {a'4 f'8~} 
      | f'8 g'8 \tuplet 6/4 {aes'8 d'16 es'8 c'16} d'4 r4 
      | r8. g''16~ g''16 d''8 f''16~ f''8 es''8 \tuplet 6/4 {bes'8. g'8 es'16~} 
      | es'8 ges'8~ ges'16 ges'8 ges'16~ ges'8. aes'16~ aes'8 f'8~ 
      | f'8 es''8 des''8 bes'8~ bes'16 aes'8 ges'16~ ges'16 es'8 bes16~ 
      | bes16 gis'16 a'8~ \tuplet 6/4 {a'16 a'4 a'16~} a'8 g'8 e'8 d'8 
      | c'4. c'8~ c'4. r8 
      | \tuplet 6/4 {r4 g'16 a'16~} a'8 a'8~ a'16 a'8 g'16~ g'16 e'8 d'16~ 
      | d'16 c'8 b'16 c''8 r8 \tuplet 3/2 {r8 a'8 g'8~} g'16 f'8 d'16~ 
      | \tuplet 6/4 {d'16 des'4 b'16} des''4 c''8 bes'8 aes'8 es'8~ 
      | es'16 c'8 a'16~ a'8 r8 r4 r8 aes'8 
      | g'8 a'8~ a'16 bes'8 c''16~ c''16 d''8 e''16~ e''16 a''8 e''16~ 
      | e''8 f''8~ f''16 c''8 a'16~ \tuplet 3/2 {a'8 cis''8 d''8} bes'8 g'8~ 
      | \tuplet 3/2 {g'8 b'8 c''8} a'8 f'8 bes'8 g'8 \tuplet 3/2 {e'8 c'8 f'8~} 
      | f'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
