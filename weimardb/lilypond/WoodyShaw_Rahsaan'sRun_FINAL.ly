\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Rahsaan's Run"
  composer = "Woody Shaw"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \minor
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
      
      | g1:min11.9 | s1 | s1 | s1 | c1:min11.9 | s1 | g1:min11.9 | s1 
      | a1:7 | d1:7 | g1:min11.9 | s1 | s1 | s1 | s1 | s1 
      | c1:min11.9 | s1 | g1:min11.9 | s1 | a1:7 | d1:7 | g1:min11.9 | s1 
      | s1 | s1 | s1 | s1 | c1:min11.9 | s1 | g1:min11.9 | s1 
      | a1:7 | d1:7 | g1:min11.9 | s1 | s1 | s1 | s1 | s1 
      | c1:min11.9 | s1 | g1:min11.9 | s1 | a1:7 | d1:7 | g1:min11.9 | s1 
      | s1 | s1 | s1 | s1 | c1:min11.9 | s1 | g1:min11.9 | s1 
      | a1:7 | d1:7 | g1:min11.9 | s1 | s1 | s1 | s1 | s1 
      | c1:min11.9 | s1 | g1:min11.9 | s1 | a1:7 | d1:7 | g1:min11.9 | s1 
      | s1|
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


      \tempo 4 = 298
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 d''8 
      | c''2.. g'8 
      | a'2 g'8 a'8 g'8 f'8 
      | e'2~ e'8. f'16~ f'8. d'16 
      | es'4 c'2.~^\markup{\left-align \small vib} 
      | c'2.. d'16 es'16~ 
      | es'16 f'8 d'16~ \tuplet 3/2 {d'8 bes8 a8~} a4. bes8 
      | g2 \tuplet 3/2 {a4 a8} aes8 bes8 
      | des'8 es'8 f'8 e'8 es'8 bes8 es'8 f'8 
      | g'8 a'8 bes'8 c''8 d''8 f''8 e''8 r8 
      | r1 
      | r8. f''16~ \tuplet 3/2 {f''8 a''8 g''8~} g''16 f''8 e''16 d''4 
      \bar "||" \mark \default c''2. g''4 
      | g''8\glissando  aes''4. f''8 es''8 des''8 bes'8 
      | \tuplet 3/2 {aes'4 f'8} bes'8 a'8 aes'8 bes'8 b'4~ 
      | b'8 cis''8 d''8 r8 r2 
      | r2. f''8 bes''8 
      | a''8 g''8 f''8 e''8 es''8 g''8 f''8 d''8 
      | c''8 f''8 f''4 es''2 
      | a'8 e''8 r2. 
      | r2 g''8 bes''4 bes''8\glissando  
      | cis'''2 bes''8 gis''8 fis''8 es''8 
      | cis''8 bes'8 aes'8 f'8 bes'8 a'8 aes'8 bes'8 
      | g'8 des''8 des''8 c''8 d''8 f''8 b''8 c'''16\glissando  des'''16~ 
      \bar "||" \mark \default des'''8 c'''2.. 
      | a''8 c'''4. b''8 c'''4 bes''8 
      | a''2\glissando  des'''4 r4 
      | r2 g''8 bes''16 a''16~ a''8 g''8 
      | f''8 e''16 es''16~ es''8 g''8 f''8 d''8 c''8 f''8 
      | es''8 aes'8 bes'8 des''8 b'8 e'8 a'8 b'8 
      | des''8 ges''8 cis''16 d''8 e''16 d''8 b'8 d''8 b'8 
      | a'8 c''8 \tuplet 3/2 {bes'8 g'4~} \tuplet 3/2 {g'8 bes'8 a'8} r4 
      | r2 d''8 cis''8 es''8 fis''8 
      | e''8 cis''8 b'8 e''8 f''8 g''8 fis''8 d''8 
      | r1 
      | r8 d''8 d''8 d''8~ d''2 
      \bar "||" \mark \default c''4 e''4 d''2~^\markup{\left-align \small vib} 
      | d''2 r2 
      | r2. r8. f''16~ 
      | \tuplet 3/2 {f''8 bes''8 aes''8} \tuplet 3/2 {g''8 g''4} \tuplet 3/2 {f''8 e''8 es''8~} es''16 ges''8 e''16~ 
      | e''16 des''8 b'16~ b'8 e''8 f''8 e''16 es''16~ es''8 g''8 
      | f''8 f''8 c''8 f''8 es''8 cis''8 d''8 bes'8 
      | \tuplet 3/2 {g'8 aes'8 c''8} \tuplet 3/2 {a'4 f'8} bes'4 r4 
      | r2. f''4 
      | bes''8 a''8 \tuplet 3/2 {aes''8 g''8 fis''8~} fis''4 r4 
      | r2. fis''4 
      | \tuplet 3/2 {a''4 gis''8~} gis''8 a''4 ges''4. 
      | r2. d''4 
      \bar "||" \mark \default a''8\glissando  des'''4. \tuplet 3/2 {bes''4 aes''8} ges''8 r8 
      | r2 f''8 g''8 a''8 g''8 
      | f''8 e''16 es''16~ es''16 g''8 f''16~ f''16 d''8 c''16~ \tuplet 3/2 {c''8 f''8 es''8} 
      | \tuplet 3/2 {d''8 cis''4} d''8. bes'16~ bes'4. a'8 
      | aes'4. g'8 \tuplet 3/2 {f'8 es'8 d'8~} d'8 f'8 
      | es'8 b8 es'8 f'8 g'8 a'8 bes'8 c''8 
      | d''8 g''8 r2. 
      | r2 a''8 a''8 a''8 c'''8 
      | g''8 bes''8 g''8 a''8 gis''8 f''8 es''8 bes'8 
      | f''8 es''8 e''8 cis''8 b'8 e''8 \tuplet 3/2 {f''8 e''8 es''8~} 
      | es''8 ges''8 e''8 des''8 b'8 a'8 \tuplet 3/2 {e''8 des''8 b'8} 
      | \tuplet 3/2 {des''8 a'8 ges'8~} ges'8 e'8 bes'8 c''8 d''8 g''8 
      \bar "||" \mark \default r2 f''8 e''8 \tuplet 3/2 {es''4 g''8} 
      | d''8 d''8 c''8 f''8 \tuplet 3/2 {es''4 aes'8} bes'8 des''8 
      | b'8 e'8 a'8 b'16 des''16~ des''8 r8 r4 
      | r2. \tuplet 3/2 {f''8 c''8 cis''8} 
      | d''8 aes'8 bes'8 des''8 b'8 gis'8 a'8 b'8 
      | des''16 a'8 ges'16~ ges'8 f'16 bes'16~ \tuplet 3/2 {bes'8 a'8 aes'8~} \tuplet 3/2 {aes'8 bes'8 g'8} 
      | gis'8 a'4 e'8~ e'16 f'8 es'16~ es'16 b8 es'16~ 
      | es'8 d'8 e'8 es'8 f'4 r4 
      | r2 \tuplet 3/2 {cis''4 fis'8} c''4~ 
      | c''4 cis''4 \tuplet 3/2 {bes'8 c''4~} c''4 
      | bes'8. fis'16 g'2 bes'4 
      | g'2~ g'16 bes'8 ges'16 e'4 
      \bar "||" \mark \default d'2.. r8\bar  ".."
    }
    >>
>>    
}
