\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Orbits"
  composer = "Miles Davis"
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
      
      | r1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s2. s4|
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


      \tempo 4 = 264
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 \tuplet 3/2 {r8 f'8 g'8} aes'8 bes'8 
      | d''8 es''8 es''8 f''4 g''4 aes''8~ 
      | aes''4 g''4 f''4. r8 
      | r4 des''8 b'8 c''8 b'16 bes'16~ bes'16 a'8 aes'16~ 
      | aes'8 bes'4 f'4 f'4. 
      | es'4 f'4 ges'8 aes'8 bes'8 c''8 
      | des''8 b'8 c''8 b'8 bes'8 a'8 c''8 d''8 
      | \tuplet 3/2 {es''4 f''8} g''8 aes''8 g''8 g''8 ges''16 f''16 ges''16 e''16 
      | es''8 des''8 r2 b'4~ 
      | b'8\bendAfter #-4  aes'4 bes'4\bendAfter #-4  g'8 aes'8 ais'8 
      | b'4. des''8 r2 
      | g'4 a'4 bes'8 c''8 des''8 es''8~ 
      | es''8 f''8 g''8 aes''8 r2 
      | r2 g''8 e''16 g''16~ g''16 f''16 e''8 
      | es''8 d''8 c''8 b'16 bes'16~ bes'8 a'8 aes'8 bes'8 
      | aes'8\bendAfter #-4  f'8~ f'16 a'8 f'16 bes'8 f'8 \tuplet 3/2 {c''4\bendAfter #-4  aes'8} 
      | des''4 c''16 es''8 f''16~ f''8 a''8 aes''8 bes''8~ 
      | bes''8 c'''4. bes''4. aes''8~ 
      | aes''4 g''4~ \tuplet 3/2 {g''8 f''8 e''8~} e''8 r8 
      | r2 ges'4 aes'4~ 
      | aes'4. bes'8 c''8 des''8 r4 
      | r2 f'16 g'16 aes'16 bes'16~ bes'8 c''8 
      | des''8 es''8 f''8 g''4. aes''8 r8 
      | r2. bes'8 c''16 c''16~ 
      | c''4 c''4 c''8 c''8 r4 
      | r4 r8 bes'4\bendAfter #-4  g'8 aes'4 
      | g'8 ges'16 f'16 \tuplet 3/2 {e'4 d'8} es'8 f'8 ges'8 gis'16 a'16 
      | r2 \tuplet 3/2 {r8 g'8 gis'8} a'8 ais'8 
      | b'8 c''8 des''8 des''4 es''8 r4 
      | f''4 ges''4 aes''8 bes''8 r4 
      | r1 
      | g''2.. e''8 
      | es''4 des''4 b'4 bes'8 r8 
      | r4 r8 g'4 a'8 bes'8 c''8 
      | des''8. es''16~ es''4 f''4 g''8 r8 
      | r4 r8 g''8~ g''2 
      | aes''4 g''4 f''8. es''16 r4 
      | r4 r8 f''8 e''8 es''4 c''8~ 
      | c''8 aes'4 c''8 des''4. des''8 
      | des''4\bendAfter #-4  b'8. c''16~ c''8 b'8 bes'8 a'8 
      | \tuplet 3/2 {aes'4 e'8} f'16 d'16 bes16 a16 aes8 bes8 d'16 dis'16 e'16 f'16 
      | f'8 dis'16 e'16~ e'8 r8 r4 r8 e'8~ 
      | e'8 d'8 es'8 f'8 \tuplet 3/2 {g'8 a'4} bes'8 a'8 
      | aes'4 ais'8.\glissando  b'16~ b'4\glissando  bes'8 bes'8~ 
      | bes'8\glissando  a'8 r2. 
      | des'4 ges'2~ ges'16 des'8 c'16~ 
      | c'8 des'4. es'4 f'8 r8 
      | r2 es'4 f'4 
      | ges'8 f'4 des'4 c'8 r4 
      | r4 f'4 f'4.. g'16~ 
      | g'16 aes'8 bes'16~ bes'16 g'8 a'16 ais'8 b'16 c''16~ c''4 
      | \tuplet 3/2 {c''4\glissando  b'8~} b'8 b'8\glissando  bes'8 bes'4 a'8 
      | gis'8 a'4 f'8 e'8 d'8 es'8 f'8 
      | g'8 a'8 bes'8 g'8 c''4 d''4 
      | f''4. es''4 des''4. 
      | r1 
      | r1 
      | g''2~ g''8 ges''16 e''16~ e''16 es''8 des''16~ 
      | des''8\glissando  c''4 des''16 b'16~ b'8 r8 r4 
      | r2 bes'8 c''8 d''8 f''8 
      | e''8 f''8 f''8 g''8 g''8 r8 r4 
      | r4 r8 g''8 \tuplet 3/2 {aes''8 fis''8 g''8~} g''8 f''8~ 
      | f''16 e''8 es''16~ es''16 c''8 des''16~ \tuplet 3/2 {des''8 b'8 c''8~} c''4 
      | f''4~ \tuplet 3/2 {f''8 d''8 es''8~} es''8 c''8 des''8 b'8 
      | c''8 b'8 bes'8 a'8 aes'8 f'4 f'8 
      | es'8 fis'8 \tuplet 3/2 {g'4 f'8} bes'8 f'8 \tuplet 3/2 {des''4 aes'8} 
      | \tuplet 3/2 {es''4 b'8} f''8 d''8 g''8 aes''8 e''8 r8 
      | r4 r8 ges'4 r8 r8. des'16~ 
      | des'8 c'8~ c'4. r8 r4 
      | r4 f'8 g'8 aes'8 bes'8 c''8 des''8 
      | c''4\glissando  b'4. bes'8 aes'4 
      | des'4. ges'4. des'8 c'8~ 
      | c'4. r8 r4 r8 c'8 
      | des'8 e'8 f'8 ges'8 aes'8 bes'8 c''8 des''8 
      | c''4.\bendAfter #-4  bes'4.\bendAfter #-4  aes'4 
      | des'4. ges'4 des'4 c'8~ 
      | c'4. r8 r2\bar  ".."
    }
    >>
>>    
}
