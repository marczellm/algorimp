\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Anthropology (No1)"
  composer = "Fats Navarro"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | bes2:maj g2:7 | c2:min7 f2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 es2:min7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 es2:min7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 es2:min7 | c2:min7 f2:7 | bes1:6 
      | bes2:maj g2:7 | c2:min7 f2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 es2:min7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 es2:min7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | d2:min7 g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 es2:min7 | c2:min7 f2:7 | bes1:6|
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


      \tempo 4 = 301
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 d''4 f''4. d''8 
      | \tuplet 3/2 {es''4 f''8} r2. 
      | r4 d''4 es''4. d''8 
      | \tuplet 3/2 {es''4 cis''8} d''8 f''4 cis''8 d''8 f''8 
      | \tuplet 3/2 {cis''8\glissando  d''8 des''8} c''8 bes'8~ bes'16 aes'16 bes'16 aes'16~ aes'8\glissando  g'16 e'16~ 
      | e'8 f'8 \tuplet 3/2 {d'8 es'8 f'8~} f'16 g'8 a'16 \tuplet 3/2 {bes'4 c''8~} 
      | \tuplet 3/2 {c''8 cis''8 d''8} es''8 cis''8 d''8 bes'8 r4 
      | r1 
      \bar "||" r4 \tuplet 3/2 {r8 c'''8 a''8~} a''16 g''16 f''8 es''8 cis''8 
      | d''8 bes'8 \tuplet 3/2 {g'4 bes'8} \tuplet 3/2 {c''8 des''8 c''8} b'8 a'8 
      | bes'8 a'8~ a'16 f'8 d'16 aes'8 g'8 f'4 
      | \tuplet 3/2 {d'8 es'8 f'8~} f'8 g'8 a'16 bes'8 c''16~ \tuplet 3/2 {c''8 cis''8 d''8~} 
      | d''8 es''8 d''4 d'''4 \tuplet 3/2 {des'''8 c'''8 bes''8} 
      | \tuplet 3/2 {a''8\glissando  g''8 f''8} es''8 cis''8 d''8 f''8~ f''16 c''16 d''16 des''16 
      | \tuplet 3/2 {c''4 bes'8~} bes'8 r8 r2 
      | r1 
      \bar "||" a'8 b'8 c''8 d''8 e''8 g''8~ g''16 fis''8 e''16 
      | \tuplet 3/2 {d''4 b'8} c''8 d''8 \tuplet 3/2 {e''8 f''8 e''8} d''8 c''8 
      | b'8 a'8 g'8. ges'16 f'8 e'8 d'8 c'8 
      | b4 f'8 gis'8 \tuplet 3/2 {f'4 fis'8\glissando } g'8. f'16 
      | e'4 g'16 bes'8 d''16~ d''16 a'16\glissando  bes'16 b'16~ \tuplet 3/2 {b'8 c''8 b'8} 
      | a'16 bes'8 c''16 d''8 e''8 a''8 g''8~ \tuplet 3/2 {g''8 g''8 ges''8} 
      | e''16 es''8 g'16~ \tuplet 3/2 {g'8 c''8 es''8} d''8 c''8 b'8 bes'16 a'16~ 
      | a'8 c''8 es''8 ges''8 es''8. e''16 f''4 
      \bar "||" aes'8 bes'8 es''8 c''8 \tuplet 3/2 {cis''8 d''4} bes'8 g'8 
      | f'16 c''8 bes'16~ \tuplet 3/2 {bes'8 g'8 e'8} ges'16 a'8 aes'16 g'8 ges'8~ 
      | \tuplet 3/2 {ges'8 f'8 e'8} es'8 g'8~ g'8. e'16 f'4 
      | d'16 es'8 f'16~ f'8 g'8 a'16 bes'8 c''16~ c''8 cis''8 
      | d''8 es''8 \tuplet 3/2 {cis''8 d''4} aes'8 r8 r4 
      | r1 
      | r2. r8. f''16~ 
      | f''4 g''4 bes''8. c'''16~ c'''8 cis'''8~ 
      \bar "||" \mark \default cis'''8. d'''16~ d'''4.\glissando  bes'8 r4 
      | r1 
      | r8. e'''16~ e'''16\glissando  c'''8 bes''16 a''8 c'''8 gis''8 d''8 
      | \tuplet 3/2 {a''8 bes''8 a''8} g''8 f''8 es''8 cis''8 d''8 e''8\glissando  
      | f''2 d''8 r8 r8. e''16~ 
      | e''16 es''8 d''16~ d''16 c''8 cis''16~ cis''16 d''8 bes'16~ bes'8 g'8 
      | \tuplet 3/2 {f'8 c''8 d''8} \tuplet 3/2 {c''8 bes'8 f'8~} f'16 a'16 bes'16 a'16 g'8 r8 
      | r1 
      \bar "||" r8 f''8~ f''4. d''4 f''8 
      | es''4 bes'8 g'8 ges'4 r4 
      | d''4. c''8 \tuplet 3/2 {bes'8 a'8 aes'8~} aes'16 g'8 ges'16 
      | f'4 \tuplet 3/2 {d'8 es'8 f'8~} f'8 g'8 a'16 bes'8 c''16~ 
      | c''16 cis''8 d''16 es''4 cis''8 d''4. 
      | \tuplet 3/2 {g''8 f''4~} f''16 es''8 d''16~ d''16 c''8 cis''16~ cis''16 d''8 bes'16~ 
      | bes'16 g'8 f'16 c''4 \tuplet 3/2 {a'8 bes'4} f'8 r8 
      | r1 
      \bar "||" \tuplet 3/2 {r8 a''8 bes''8} a''8 g''8 fis''4 \tuplet 3/2 {e''8 d''8 des''8} 
      | \tuplet 3/2 {c''4 e''8~} e''16 d''16 b'16 a'16 d''8 c''8 b'8 a'8 
      | \tuplet 3/2 {g'4 ges'8} f'8 a'8\glissando  \tuplet 3/2 {e'4 d'8} r4 
      | r1 
      | r8. d'16 g'8 bes'8~ \tuplet 3/2 {bes'8 ges'8 bes'8~} \tuplet 3/2 {bes'8 d''8 ges''8~} 
      | ges''16 f''8 d''16 bes'4 g'8 e''8 es''8 d''8 
      | aes'16 es''8 c''16~ c''8 es''8~ \tuplet 3/2 {es''8 d''8 c''8~} c''16 b'8 bes'16 
      | a'4 \tuplet 3/2 {c''8 es''4} ges''4. f''8 
      \bar "||" \tuplet 3/2 {es''8 cis''8 d''8~} d''4 f''4. d''8 
      | es''4 bes'8 g'8 ges'8 d''4.~ 
      | d''4. c''8 bes'8 a'8 aes'8 g'8 
      | ges'8 f'8 d'16 es'8 f'16~ f'16 g'8 a'16 bes'8 c''8 
      | cis''8 d''8 \tuplet 3/2 {bes'4 g'8~} g'16 c''16 d''16 c''16 bes'8 f'8~ 
      | \tuplet 3/2 {f'8 aes'8 bes'8} aes'16 g'8 f'16~ f'16 e'8 g'16 bes'8 d''8~ 
      | d''4 c''8 bes'8 a'8 c''8 b'8 a'8 
      | \tuplet 3/2 {bes'4 g'8~} \tuplet 3/2 {g'8 ges'8 e'8~} e'8 f'8 bes8 r8\bar  ".."
    }
    >>
>>    
}
