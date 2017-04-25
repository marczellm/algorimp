\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Memories of You"
  composer = "Lionel Hampton"
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
      | s2 f4:min bes4:7 
      | es2 e2:dim7 | f2:min7 d2:7/fis | es2:6 c2:min7 | f1:7 | es2:6 c2:min7 | g2:min7 c2:9 | f2:7 bes2:9 | es2:6 f4:min7 bes4:9 
      | es2:6 e2:dim7 | f2:min7 d2:7/fis | es2:6/g c2:min7 | f1:7 | es2:6 c2:min7 | g2:min7 c2:9 | f2:7 bes2:9 | es2:6 g2:7 
      | c1:min7 | f1:min7 | c1:min7 | f1:9 | c1:min7 | f1:9 | g2:min7 ges2:min7 | f2:min7 bes2:7 
      | es2:6 e2:dim7 | f2:min7 d2:7/fis | es2:6/g c2:min7 | f1:7 | es2:6 c2:min7 | g2:min7 c2:9 | f2:7 bes2:9 | es2:6 f4:min7 bes4:7|
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
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 6/4 {r4 r16 bes'16~} 
      \bar "||" \mark \default \tuplet 6/4 {bes'8 bes''16 g''8 f''16~} \tuplet 7/8 {f''16 es''16 d''16 c''32~} c''4 r8.. aes'32~ 
      | \tuplet 3/2 {aes'8 aes''8 g''8} f''16. es''16 d''16 c''32~ c''4~ \tuplet 6/4 {c''4~ c''16 g'16} 
      | g''4~ g''16 f''16 es''16 d''16 \tuplet 12/8 {c''16. bes'16. c''16. d''16 es''32~} es''16 g''16 bes''16 d'''16~ 
      | \tuplet 9/8 {d'''16 c'''16 g''16. es''32 c''32~} c''8 c''16. b'32~ b'16 b'16 b'16 b'16 g''16 g''16 g''16 es''16 
      | f''16 es''16 f''16 es''16 c''16 bes'16 f'16 es'16 r4 \tuplet 6/4 {r8. des'16 es'16 f'16} 
      | \tuplet 10/8 {bes'8~ bes'32 des'32 es'16 f'32 bes'32~} bes'8 g'16 ges'16 c'16 b16 bes16 bes16 g'8 g'16 aes'16 
      | e'16 f'16 aes'16 c''16 \tuplet 3/2 {es''8 g''8 bes''8} g''16 bes'16 a'16 aes'16 g''8 g''8 
      | \tuplet 6/4 {es''8. g''16 aes''16 a''16} \tuplet 10/8 {bes''16 a''32 aes''16 g''16 aes''32 a''32 bes''32~} bes''8 ges''8 ges''4 
      \bar "||" \tuplet 3/2 {bes''8 es'''8 bes''8} es'''16 bes''16 g''16 es''16 bes''4. \tuplet 6/4 {g''16 aes''16 a''16} 
      | bes''16 c'''16 aes''16 g''16 c''16 bes'16 a'16 aes'16 g''4. f''16 es''16 
      | f''16 es''16 f''16 es''16 \tuplet 6/4 {c''8. g'16 b'16 d''16} \tuplet 6/4 {g''8. ges'16 bes'16 des''16} ges''8 f''16 g''16 
      | es''16 c''16 a'16 g'16 es'16 es'16 es'16 es'16 f'16 f'16 f'16 f'16 \tuplet 6/4 {f'8 f'16 f'8 f'16} 
      | f'16 es'16 f'16 es'16 \tuplet 3/2 {c'8 c'16 r8.} r4 \tuplet 6/4 {r8. f'16 fis'16 g'16} 
      | \tuplet 6/4 {aes'8. des'16 es'16 e'16} \tuplet 6/4 {f'8. e'16 f'16 fis'16} g'16 c''16 g'16 c'16 b16 bes16 g'8 
      | \tuplet 3/2 {f'8 es'8 c'8} es'16 c'8. bes'4~ bes'16 aes'16 ges'16 es'16 
      | c'16 bes16 es'8 es'8 r8 r8 aes'16 aes'16 g'16 aes'16 b'16 d''16 
      \bar "||" c''16 g'16 c''16 es''16 \tuplet 3/2 {g''8 g''16 r8.} r4 \tuplet 6/4 {r8. c''16 es''16 g''16} 
      | bes''8 aes''8 g''16 es''16 ges''8 f''16 d''16 b'16 g'16 f'8 c''16 g'16 
      | c''16 g'16 es'16 c'16 \tuplet 6/4 {c'8. b16 es'16 g'16} \tuplet 6/4 {b'8. c'16 es'16 g'16} bes'8 bes'8 
      | a'8 r8 r2 fis''8 g''8 
      | \tuplet 6/4 {c'''8 g''16 c'''8 g''16} \tuplet 3/2 {es''8 c''4} \tuplet 10/8 {b'16. es''16 g''8 b''32~} b''8 r8 
      | r8 f'''16 es'''16 c'''16. g''32 f''16 es''32 g''32~ g''16 es''16 c''16 a'16 g'16 es'16 c''16 d''16 
      | \tuplet 11/8 {es''8 c''32 aes'8 f'32 bes'32~} bes'16 b'16 c''16 f'16 g'16 aes'16 c'16 cis'16 d'16 bes'16 g'16 c'16 
      | cis'32 d'16 aes'16. c'32 cis'32~ \tuplet 6/4 {cis'16 d'16 g'8 c'16 cis'16} \tuplet 3/2 {d'8 ges'8 d'8} bes16 ges16 bes8 
      \bar "||" \tuplet 6/4 {c'16 bes16 f'16 es'16 c''16 bes'16} f''8 r8 r2 
      | r4 es'''8 es'''8 es'''8 c'''16 fis''16~ fis''16. es''32 c''16. es''32~ 
      | es''16 es''16 es''16 c''16 \tuplet 6/4 {es''16 g''4 es''16~} \tuplet 7/8 {es''16. es''16 c''32 es''32~} es''16 g''8 es''32 g''32~ 
      | g''16 es''16 c''16 a'16 g'16 es'16 es''8 \tuplet 10/8 {es''32 c''32 aes'32 f'32 aes'32 f'32 es'32 c'32 es'32 b32} aes32 f32 aes32 f32 aes32 f16. 
      | bes16 es'16 g'8 bes'8 c''16 g'16~ g'8 r8 r4 
      | r8 d'16 es'16 \tuplet 10/8 {g'16 bes'16. d''16 es''16 g''32~} \tuplet 10/8 {g''16 bes''16. d'''8 c'''32~} c'''8 c'''16 d'''16 
      | \tuplet 10/8 {es'''16 c'''32 es'''32 c'''32 aes''32 f''32 aes''32 f''32 c''32} \tuplet 6/4 {aes'16 c''16 aes'16 c''8 cis''16} d''8 bes''8 \tuplet 6/4 {g''8. g''16 g''16 g''16} 
      | \tuplet 6/4 {c'''8. c''16 c''16 c''16} \tuplet 6/4 {g''8. g'16 g'16 g'16} c''8 c'16 es'16~ es'8 r8\bar  ".."
    }
    >>
>>    
}
