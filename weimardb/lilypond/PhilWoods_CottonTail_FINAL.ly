\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cotton Tail"
  composer = "Phil Woods"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | bes2:maj g2:min7 | c2:min7 f2:7 
      | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | bes1:maj | c2:min7 f2:7 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | bes2:maj c4:min7 f4:7 | bes1:maj|
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


      \tempo 4 = 242
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 c'8.\glissando  d'16~ d'8. c'16~ 
      | c'8\glissando  es'4 c'4\glissando  e'8 c'4 
      | \tuplet 3/2 {e'4\glissando  f'8~} f'8 c''4\glissando  d''4 c''8 
      | bes'8 ges'8 es'8 c'8 bes8 a8 bes8 r8 
      | r8. bes16~ bes8 a8 aes8 bes4 es'8 
      | g'8 ges'8 f'8 e'8 es'8 f'4 bes'8 
      | des''8. b'16~ b'8\glissando  des''8 \tuplet 3/2 {bes'4 g'8} es'8 bes8~ 
      | \tuplet 3/2 {bes8 es'8 f'8} r2 c'8 r8 
      \bar "||" r2 r8 es'8 des'8 es'8 
      | \tuplet 3/2 {g'4 e'8} f'8 g'8 aes'8 bes'8 c''8 b'8 
      | bes'8 a'8 g'8 ges'8 f'8 e'8 d'4 
      | bes8 d'8 c'8 bes4 ges'8 f'8 es'8 
      | \tuplet 3/2 {d'4 f'8} g'4 g'16\glissando  aes'8 g'16 f'8 e'8 
      | es'8 a16 bes16~ bes4 des'4 c'8 bes8~ 
      | bes4 d'4~ \tuplet 3/2 {d'8 a'8 c''8} bes'8 g'8~ 
      | g'8 c''8 bes'8 ges'4 c''8 bes'8 g'8\glissando  
      \bar "||" a'4 \tuplet 3/2 {es'8 c'8 a8} \tuplet 3/2 {gis4 g'8\glissando } gis'4 
      | es'16 c'16 gis8 r4 r8 g'8 gis'8 ges'8 
      | f'8 e'8 d'8 c'8 b8 d'8 a4 
      | g8 bes8 b8 es'8 g'8 r8 r4 
      | r8 ges8 bes8 d'8 aes8 des'8 e'8 bes8 
      | d'8 ges'8 des'8 ges'8 \tuplet 3/2 {aes'4 es8~} es8 des'8 
      | aes8 g8 a8 b8 es'8 g'8 es'8 bes8 
      | b8 es'8 f'8 a'8 g'8 f'8 des'8 a8 
      \bar "||" c'8 b16 bes16~ bes8. es'16~ \tuplet 3/2 {es'8 cis'8 d'8} g'8 e'8 
      | f'8 g'8 a'8 bes'8 c''8 bes'8 \tuplet 3/2 {b'4 c''8\glissando } 
      | d''8. c''16\glissando  d''4~ d''16 bes'8 f'16 e'8 d'8 
      | es'8 f'8 g'8 bes'16 c''16 \tuplet 3/2 {des''8 bes'8 g'8} es'4 
      | d'8.\glissando  bes'16~ bes'2. 
      | aes'8 aes'8 f'8 aes'8 f'8 f'8 es'8 f'8 
      | es'8 es'8 des'8 es'8 des'8 des'8 bes8 des'8 
      | bes8 bes8 aes8 bes8 r2\bar  ".."
    }
    >>
>>    
}
