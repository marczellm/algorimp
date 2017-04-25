\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Steve's Blues"
  composer = "Woody Shaw"
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | c1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | c1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7|
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


      \tempo 4 = 206
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 r8 a'8 bes'8 a'8 f'8 c'8~ 
      | c'8. bes16 a4 f'4 c'4 
      | f'4~ f'16 es'8 aes'16~ aes'4 ges'8 e'8 
      | f'8 d'8 r2. 
      | r2. b'8 e''8 
      | \tuplet 3/2 {d''8 c''8 a'8} r2. 
      | r2 c''4 f''8 dis''8 
      | bes'8 aes'8 es''8 des''8 \tuplet 3/2 {aes'4 es'8} des''8 b'8 
      | c''4 bes'8 gis'8 a'4 aes'16 f'8 es'16 
      | f'4. es'8~ es'4~ \tuplet 5/4 {es'16 f'16 g'16 a'16 bes'16~} 
      | bes'4. g'8 a'8 f'8 c'8 bes8 
      \bar "||" \mark \default \tuplet 3/2 {a4 c'8~} c'16 f'8 e'16~ e'16 es'8 f'16~ f'16 c'8 es'16~ 
      | es'16 f'8 d'16~ d'16 e'8 g'16~ g'16 a'8 ges'16 aes'8 b'8 
      | des''8 bes'8 c''8 es''8 f''2~ 
      | f''4 r2. 
      | r4 e''8 g''8 \tuplet 3/2 {a''4 ges''8~} ges''8 aes''8~ 
      | aes''8 b''8~ b''2~ b''8 r8 
      | r1 
      | gis''8 b''4 c'''16 b''16~ b''8 bes''8~ bes''32 a''32 aes''32 g''32 ges''8 
      | r2. r8. f''16~ 
      | f''16 bes''8 a''16 bes''8 a''8 bes''4 \tuplet 3/2 {a''4 c'''8~} 
      | c'''8. b''32 a''32~ a''8 f''8~ f''2 
      | r1 
      \bar "||" \mark \default gis''4 a''16 b''8. bes''4 \tuplet 3/2 {e''4 aes''8~} 
      | aes''4. r8 r4 r8 f''8 
      | a''8 g''8 f''8 e''8 es''8 g''8 e''16 d''8. 
      | ges''8 aes''8 \tuplet 3/2 {ges''4 e''8} es''8 des''8 b'8 f''8 
      | \tuplet 3/2 {e''8 es''8 d''8~} d''8 c''8 bes'8 a'8 \tuplet 3/2 {aes'4 es'8} 
      | \tuplet 3/2 {c'4 f'8} es'4. f'8 \tuplet 3/2 {d'8 e'4~} 
      | e'2 f'8. g'16~ g'16 a'8 c''16~ 
      | c''16 e''8 c''16 a'8 g'8 fis'8 a'8~ \tuplet 3/2 {a'8 c''8 es''8} 
      | d''8 bes'8 r2. 
      | r4 r8 d''16 f''16 e''8 f''8 e''4 
      | f''8. c''16 a'8 ges'8 d''4 r4 
      | r1 
      \bar "||" \mark \default r4 r8 g''4 b''4 g''8 
      | r1 
      | g''4 b''4 g''4 r4 
      | r2. r8 f''8 
      | aes''8 bes''8 aes''8 f''8 \tuplet 3/2 {es''4 bes'8} f''8 es''8 
      | des''4 bes'8 ges'8 aes'8 b'8 des''8 e''8 
      | es''8 b'8 des''8. c''16~ c''4 b'4~ 
      | b'4 dis''16 dis''16 bes'16 a'16~ a'16 gis'8 bes'16 b'8 gis'8 
      | a'8 c'8 f'8 a'8 bes'8 a'8 bes'8 a'8 
      | bes'8 a'8 \tuplet 3/2 {bes'4 a'8} bes'4 g'16 a'8 g'16 
      | \tuplet 6/4 {f'16 e'16 d'16 es'16 cis'8} d'16 e'16 aes'16 bes'16 c''16 d''16 es''16 f''16 g''16 a''16 bes''8 
      | r1 
      \bar "||" \mark \default \tuplet 3/2 {r8 es''8 f''8~} f''8 e''16 es''16 d''8 f''16 e''16 es''16 d''16 f''16 e''16 
      | \tuplet 3/2 {es''8 d''8 f''8} es''16 d''16 c''4. \tuplet 3/2 {d''8 b'4} 
      | r2. r8 e''16 f''16 
      | \tuplet 3/2 {ges''4 aes''8~} aes''16 ges''16 e''16 ges''16 e''16 es''8 des''16 b'8 f''8~ 
      | f''8 d''4 bes'8 c''8 es''8 d''8 bes'8 
      | des''8 bes'8 \tuplet 3/2 {ges'4 b'8~} b'16 des''8 e''16~ e''8 ges''8 
      | r2. r8. e''16~ 
      | e''8 fis''8 r2 e''8 fis''8 
      | r2 b'16 e''8 g''16~ g''8 f''8~ 
      | f''8 r8 r8 des''8 bes'16 a'16 g'16 bes'16~ bes'16 d''8 f''16~ 
      | f''8 e''8~ \tuplet 3/2 {e''8 c''8 e''8~} e''8 d''8 \tuplet 3/2 {bes'4 g'8} 
      | c''4 a'4 bes'8 a'4 f'8 
      \bar "||" es'1\bar  ".."
    }
    >>
>>    
}
