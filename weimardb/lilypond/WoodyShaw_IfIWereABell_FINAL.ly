\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "If I Were a Bell"
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
      | r1 | s1 
      | g1:7 | g2:min7 c2:7 | f1:maj | s1 | a1:min5-7 | d1:7 | g1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | a1:775+ | d1:min7 | b2:min7 e2:7 | a2:maj e2:7 | a2:maj d2:7 
      | g1:7 | g2:min7 c2:7 | f1:maj | s1 | a1:min5-7 | d1:7 | g1:7 | g2:min7 c2:7 
      | f1:7 | bes2:7 b2:dim | f2 e2:775+ | es2:7 d2:7 | g1:min7 | c1:7 | f1 | d1:775+ 
      | g1:7 | g2:min7 c2:7 | f1:maj | s1 | a1:min5-7 | d1:7 | g1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | a1:775+ | d1:min7 | b2:min7 e2:7 | a2:maj e2:7 | a2:maj d2:7 
      | g1:7 | g2:min7 c2:7 | f1:maj | s1 | a1:min5-7 | d1:7 | g1:7 | g2:min7 c2:7 
      | f1:7 | bes2:7 b2:dim | f2 e2:775+ | es2:7 d2:7 | g1:min7 | c1:7 | f1|
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


      \tempo 4 = 252
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default f'8 e'8 es'8 f'8 ges'8 gis'16 a'16~ a'8 b'8 
      | des''8 e''8 es''8 des''8 b'8 a'8 d''4 
      \bar "||" \mark \default b'4 \tuplet 3/2 {d''4 a'8~} a'8. a'16 r4 
      | r2 es''8 des''8 c''8 bes'8 
      | a'4 bes'8 c''8 g'8 r8 r4 
      | r1 
      | r8 c''8 d''8 e''8 g''8 f''8 \tuplet 3/2 {e''4 bes'8} 
      | f''8 dis''8 bes'8. gis'16 dis''8 cis''16 gis'16~ gis'8 cis''8 
      | bes'4 b'8 b'8 cis''16 e''8 dis''16~ dis''16 cis''8 b'16~ 
      | b'8 bes'16 des''16~ des''16 b'8 c''16~ \tuplet 3/2 {c''8 e'8 f'8~} \tuplet 3/2 {f'8 bes'8 g'8~} 
      \bar "||" \tuplet 3/2 {g'8 gis'8 a'8~} a'8 f'8 es'8. f'16~ f'4~ 
      | f'2 \tuplet 3/2 {g'4 e'8} f'8 g'8 
      | a'8 f'8 r2. 
      | r2 e''8 d''16 cis''16~ cis''8. d''16~ 
      | d''8 a'8 r2. 
      | e''8 fis''8 fis''16 e''16 d''8 cis''8 b'8 bes'8 cis''8 
      | b'8. a'16~ \tuplet 3/2 {a'8 b'8 gis'8~} gis'8 fis'8 e'8. d'16~ 
      | d'8. e'16~ e'4 f'8 g'8 gis'8 a'8 
      \bar "||" bes'8 a'8 gis'16 bes'8 b'16~ b'16 cis''8 dis''16~ dis''8 b'8 
      | bes'8. des''16~ des''16 bes'8 ges'16~ ges'8 b'8 gis'8. a'16~ 
      | a'16 aes'8 g'16 e'4 fis'4 g'4~ 
      | g'4. f'8 e'8 d'8 c'8 bes16 a16~ 
      | a8 cis'8 \tuplet 6/4 {d'16 es'16 f'8 g'16 aes'16} bes'16 c''16 d''16 es''16 f''4 
      | r1 
      | r1 
      | r2 r8 d''4 f''8 
      \bar "||" f''8 r8 r2. 
      | r2. d''8 f''8 
      | f''8 r8 r2. 
      | r2. f''8 a''8 
      | bes''8 a''8 gis''8 a''8 bes''8 b''8 bes''8 a''16 bes''16~ 
      | bes''8. a''16 r2. 
      | r2 g''8 a''8 g''16 f''8 e''16~ 
      | e''16 d''8 c''16~ c''16 b'8 bes'16 a'8 g'8~ \tuplet 3/2 {g'8 a'8 bes'8~} 
      \bar "||" \mark \default \tuplet 3/2 {bes'8 c''8 d''8} f''8 e''8 \tuplet 3/2 {es''8 d''8 cis''8~} cis''16 e''8 d''16~ 
      | \tuplet 3/2 {d''8 bes'8 d''8~} d''8 c''8~ c''8. bes'16~ bes'8 g'8 
      | \tuplet 3/2 {a'4 c'8} \tuplet 3/2 {f'8 a'8 g'8~} g'4 bes'8 g'8 
      | a'4. c''4. \tuplet 3/2 {bes'4 a'8~} 
      | a'8. c''16~ c''4 bes'4. g'8 
      | a'8. g'16~ g'8 fis'4 dis'4 f'8 
      | d'4 e'4 \tuplet 3/2 {f'4 g'8} a'8 r8 
      | r1 
      \bar "||" \tuplet 3/2 {r8 f'8 es'8~} es'16 f'8 g'16~ g'8 f'8 d'8 es'8 
      | gis'8 a'16 bes'16~ \tuplet 3/2 {bes'8 b'8 c''8} r4 \tuplet 3/2 {r8 bes'8 g'8~} 
      | g'16 gis'8 a'16~ \tuplet 3/2 {a'8 e'8 g'8~} \tuplet 3/2 {g'8 a'8 g'8~} g'16 f'8 e'16~ 
      | e'4 r2. 
      | r1 
      | r4 e''8 fis''8 \tuplet 3/2 {e''8 d''8 cis''8~} \tuplet 3/2 {cis''8 b'8 bes'8~} 
      | \tuplet 3/2 {bes'8 cis''8 b'8~} b'16 a'8 gis'16~ gis'16 fis'8 e'16~ e'8. d'16~ 
      | d'8 e'8~ e'8. f'16~ f'8 e'8 \tuplet 3/2 {dis'8 ges'8 f'8~} 
      \bar "||" f'8. g'16 ges'8 f'4 gis'8 gis'4 
      | a'8 aes'8 g'8 bes'8 a'4 b'8 bes'16 a'16~ 
      | a'8 c''8 b'8. des''16~ \tuplet 3/2 {des''8 c''8 b'8~} b'8. d''16~ 
      | d''8 dis''8~ dis''8. e''16~ e''8 r8 r4 
      | r1 
      | \tuplet 3/2 {r8 f''8 e''8~} e''8 d''8 \tuplet 3/2 {c''8 b'8 bes'8~} bes'16 a'8 g'16~ 
      | g'16 a'8 bes'16~ bes'16 c''8 d''16~ d''16 des''8 c''16~ c''16 b'8 bes'16~ 
      | bes'16 a'8 g'16 aes'8 bes'16 a'16~ \tuplet 3/2 {a'8 f'8 d'8~} d'8. f'16~ 
      \bar "||" f'4. r8 r2 
      | r4 r8. g'16~ \tuplet 3/2 {g'8 f'8 d'8~} d'8 f'8~ 
      | f'4. r8 r2 
      | r2. \tuplet 3/2 {r8 f'8 g'8} 
      | a'8 f'8 g'8. a'16~ a'8 f'16 g'16~ g'8 f''8 
      | e''4 c''4 a'4 c'4 
      | f'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
