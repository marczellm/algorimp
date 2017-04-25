\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Don't Get Around Much Anymore"
  composer = "Milt Jackson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key c \major
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
      
      | c4:maj d4:min7 dis4:dim e4:min7 | s1 | a1:7 | s1 | d1:min7 | g1:7 | c1 | g1:7 
      | c4:maj d4:min7 dis4:dim e4:min7 | s1 | a1:7 | s1 | d1:min7 | g1:7 | c1 | c1:7 
      | f1 | f1:min | e2:min7 c2 | c1:7 | f1:6 | fis2:min5-7 b2:9- | e2:min7 d2:7 | d1:min7 
      | c4:maj d4:min7 dis4:dim e4:min7 | s1 | a1:7 | s1 | d1:min | g1:7 | c1 | s2 g2:7 
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


      \tempo 4 = 183
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8. e''16~ e''8 fis''16 g''16~ g''8 e''16 f''16~ 
      | f''8 dis''8 e''8 g''8 d'''8 c'''8 b''4 
      | \tuplet 3/2 {ais''8 b''8 bes''8} a''8 gis''4 e''8 \tuplet 3/2 {g''4 f''8} 
      | \tuplet 3/2 {e''8 f''8 e''8} d''8 c''8 \tuplet 3/2 {cis''8 b'8 bes'8} a'8 g'8 
      | cis''8 es''8 c''8 cis''8 d''4. a'8 
      | c''8 a'8 \tuplet 3/2 {b'8 d''8 f''8} \tuplet 3/2 {gis''8 ais''8 aes''8} g''8 f''8 
      | e''8 d''8 b'8. cis''16~ cis''8 ais'8 g'8 gis'8 
      | a'8 c''8 \tuplet 3/2 {gis'8 a'8 aes'8} \tuplet 3/2 {g'4 f'8} d'8 dis'8~ 
      \bar "||" \tuplet 6/4 {dis'16 e'8 g'8 a'16~} a'8 g'8 c''4 r4 
      | r8 g'8 c''8 d''8 dis''8 e''8 f''8 fis''8 
      | g''8 a''8 ais''8 c'''16 gis''16~ \tuplet 3/2 {gis''8 a''8 aes''8} g''8 f''8 
      | \tuplet 3/2 {e''8 f''8 e''8} d''8 cis''8 d''8 bes'8 a'8 g'8 
      | fis'8 a'8 \tuplet 5/4 {c''8 d''8 dis''16~} dis''16 e''16 es''16 d''16~ d''8 c''8 
      | b'8 gis''8 f''8 fis''8 g''8 g''8 \tuplet 6/4 {d''8 dis''8. e''16~} 
      | \tuplet 6/4 {e''8 g''8. a''16~} \tuplet 5/4 {a''8 g''8 c'''16~} c'''4. ais''8 
      | c'''8 bes''8 \tuplet 3/2 {a''4 aes''8} g''8 e''8 g''8 e''8 
      \bar "||" f''8 c'''4 c'''4 r8 r4 
      | r16 c'''16 b''16 bes''16~ \tuplet 3/2 {bes''8 a''8 aes''8~} aes''8. g''16~ g''8 f''8 
      | dis''8 e''8 c''8 b'8 \tuplet 3/2 {ais'8 c''8 bes'8} a'8 f'8 
      | d'8 f'8 a'8 bes'8 es''8 des''8 c''8. bes'16~ 
      | bes'16 c''16 d''16 e''16 g''8 e''8 f''4~ \tuplet 6/4 {f''16 fis''16 g''8 ges''16 e''16~} 
      | e''16 dis''16 fis''8 a''8 d'''4 c'''8 b''8 a''8 
      | g''8 f''8 e''8 d''8 cis''8 bes''8 a''8 g''8 
      | f''8 e''16 d''16~ d''8 c''8 b'8 aes''8 f''8 fis''8 
      \bar "||" g''8 f''8 d''8 dis''8 e''8 g''8 a''8 g''8 
      | c'''8 g''16 d'''16~ d'''8 dis'''8 e'''8 d'''8~ d'''16 c'''8 cis'''16~ 
      | cis'''8 cis'''8 ais''4 r4 \tuplet 3/2 {gis''8 a''8 aes''8} 
      | g''8 f''8 e''8 d''8 cis''8 bes'8 a'8 g'8 
      | ges'8 e'8 c''8 d''8 \tuplet 6/4 {es''8 d''8 c''16 d''16~} d''8 c''8~ 
      | \tuplet 6/4 {c''4 b'16 aes'16} g'8 f'8 dis'8 c'8 a8. c'16~ 
      | c'8 a8 d'8 dis'16 e'16~ e'8 c'8 f'8 fis'8 
      | g'8 e'8 f'8 g'8 gis'8 c''8 g'8 f'8 
      \bar "||" e'2 r2\bar  ".."
    }
    >>
>>    
}
