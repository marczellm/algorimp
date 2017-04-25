\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Hot House"
  composer = "Dizzy Gillespie"
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
      | s2. r4 
      | g1:min5-7 | c1:775+ | f1:min5-7 | bes1:775+ | d1:min5-7 | g1:775+ | c1:maj | s1 
      | g1:min5-7 | c1:775+ | f1:min5-7 | bes1:775+ | d1:min5-7 | g1:775+ | c1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | aes1:7 | s1 | g1:7 | s1 
      | g1:min5-7 | c1:775+ | f1:min5-7 | bes1:775+ | d1:min5-7 | g1:775+ | c1:maj|
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


      \tempo 4 = 171
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8. es''16~ 
      \bar "||" \mark \default es''4 d''2 \tuplet 3/2 {es''4 c''8} 
      | \tuplet 3/2 {d''4 c''8} \tuplet 3/2 {bes'4 a'8} \tuplet 3/2 {g'4 f'8} e'4 
      | f'4 f'8. aes'16~^\markup{\left-align \small vib} aes'4 c''4 
      | \tuplet 3/2 {bes'4 aes'8~^\markup{\left-align \small vib}} aes'4 r2 
      | r4 b'16 d''16 f''16 aes''16~ aes''16 f''16 es''16 d''16 f''16 es''16 d''16 c''16 
      | \tuplet 6/4 {b'16 g'8 fis'16 aes'16 g'16~} g'16 f'16 dis'16 f'16~ f'16 dis'16 e'16 gis'16 b'16 d''8 c''16 
      | a'4 r2. 
      | r2 \tuplet 3/2 {g''4 a''8} c'''8. e'''16~ 
      \bar "||" e'''4..\glissando  d'''16~ \tuplet 6/4 {d'''16 c'''4\glissando  b''16~} b''8 bes''8 
      | a''8 aes''8 g''16 f''8 es''16~ es''16 f''8 des'''16~ des'''8 c'''8 
      | f''16 bes''8 a''16 aes''8 f''8 e''4 \tuplet 3/2 {g''4 e''8} 
      | f''8 d''8 e''16 f''16 es''16 cis''16 \tuplet 3/2 {d''4 c''8} \tuplet 3/2 {b'4 a'8} 
      | aes'4~ aes'16 f'8 aes'16 bes'8 f'8 es'4 
      | f'4\glissando  f'8. cis'16~ cis'4 aes'4 
      | g'8. e'16~^\markup{\left-align \small vib} e'4 r2 
      | r1 
      \bar "||" e'''8 d'''8~ \tuplet 6/4 {d'''16 b''16 d'''8. bes''16~} \tuplet 6/4 {bes''16 a''16 g''16 g''16 f''16 e''16~} \tuplet 6/4 {e''16 es''8 b'16 d''16 d''16~} 
      | \tuplet 5/4 {d''16 c''16 bes'16 a'16 ges'16} f'16 dis'16 e'16 f'16 g'16 a'16 bes'16 c''16 cis''16 d''16 dis''16 e''16 
      | \tuplet 6/4 {f''16 d''16 es''16 f''16 es''16 cis''16} d''16 bes'8 bes'16~ \tuplet 6/4 {bes'16 a'8 f'8 es'16} f'4 
      | \tuplet 6/4 {bes'8 c''16 cis''16 d''16 dis''16~} \tuplet 5/4 {dis''16 e''16 f''16 d''16 es''16} f''16 es''16 d''16 bes'16 \tuplet 3/2 {c''8 bes'8 g'8} 
      | bes'4. ges'8 aes'16 bes'16 aes'16 f'16 ges'8 bes'8 
      | f''8 aes''8 ges''4 fis''8 g''8 e''4 
      | e''16 f''16 e''16 d''16 cis''8 e''8 d''4 c''8 d''8 
      | b'8 g'8 r2. 
      \bar "||" c'''4~ \tuplet 6/4 {c'''16 c'''4 c'''16} bes''8 r8 r4 
      | r8. c'''16 c'''16 bes''8 c'''16~ \tuplet 6/4 {c'''16 bes''4 c'''16~} \tuplet 3/2 {c'''8 aes''8 ges''8~} 
      | ges''8. c'''16 \tuplet 3/2 {bes''4 f''8} aes''4 \tuplet 3/2 {ges''4\glissando  aes''8} 
      | g''8 f''8 \tuplet 3/2 {es''4 cis''8} \tuplet 3/2 {d''4 c''8} \tuplet 3/2 {b'4 a'8} 
      | \tuplet 3/2 {aes'4 f'8~} f'8 a'8 bes'4 a'4~ 
      | a'16 a'16 g'16 f'16 e'8 dis'8 cis'8 gis'8 \tuplet 6/4 {ais'4 gis'16 b'16~} 
      | b'8 g'8 e'4 a'4 r4\bar  ".."
    }
    >>
>>    
}
