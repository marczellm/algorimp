\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Crazy Rhythm"
  composer = "Phil Woods"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f2:6 d2:7 | g2:min7 c2:7 
      | f1:maj | s1 | s1 | f2:maj/a aes2:dim7 | g1:min7 | c1:7 | f1:6 | s1 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:9 | d1:7 | g2:min7 c2:7 
      | f1:maj | s1 | g1:7 | s1 | g1:min7 | c1:7 | f2:6 d2:7 | g2:min7 c2:7 
      | f1:maj|
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


      \tempo 4 = 236
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | d'8 d'4 d'8 d'8 d'8 d'8 d'8 
      | d'8 d'8 d'8 d'8 d'8 d'8 d'4 
      | f'4. a'8 r4 d''4~ 
      | d''8 a'8 f'8 d'8~ d'8. d'16 f'4 
      | a'4 f'4 \tuplet 3/2 {aes'4 e'8~} e'8 g'8~ 
      | g'8 e'8 r4 dis'8. f'16 r4 
      | r2 r8. c'16 \tuplet 3/2 {b8 bes8 e'8} 
      \bar "||" f'4 \tuplet 3/2 {c''4 a'8} bes'8 c''8 \tuplet 3/2 {d''4 c''8~} 
      | c''8 c'4 fis'16 g'16 \tuplet 3/2 {aes'8 g'8 f'8} e'8 d'8 
      | c'4 bes8 c'16 bes16 a8 c'4 e'8 
      | g'8 r8 r2 g'8 aes'8 
      | ges'8 des'8 bes4 fis'8 g'8 d'8 c'8 
      | bes4 g'8 aes'8 e'8 des'8 bes8 r8 
      | r4 bes8 b8 c'8 g'8 e'8 c'8 
      | f'4 f'2~ f'8 es8 
      \bar "||" d'8 des'8 c'4 f8 c'8 es'8 g'8 
      | a8 c'8 f'8 e'8 es'8 c'8 es'4 
      | c'4. es'8 des'8 c'8 g'8 e'8 
      | f'8 c''8 a'8 bes'8 es''8 c''8 des''4~ 
      | des''8 c''8 des''4 c''4. bes'16 b'16 
      | c''8 des''16 c''16 bes'4. bes'16 b'16 \tuplet 3/2 {c''8 b'8 bes'8} 
      | b'4 a'4 bes'8 fis'8 dis'8 c'8 
      | g'8 aes'8 e'8 des'8 bes4~ \tuplet 3/2 {bes8 e'8\glissando  f'8~} 
      \bar "||" f'4. r8 r8 es'8 f'8. ges,16 
      | r4 r8. f'16~ f'4 e'4 
      | f'4 e'4 f'4 e'8 f'8~ 
      | f'8 e'16 f'16~ f'4 e'8 f'4 e'8 
      | f'4 e'8\glissando  f'8~ f'4. e'8 
      | f'4 d'8 e'8 c'8 d'8 bes8 c'8 
      | a4. g'8\glissando  aes'8 dis'16 c'16 \tuplet 3/2 {gis4 fis8} 
      | g4 g8 f'8\glissando  ges'8 des'16 bes16 ges8 r8 
      \bar "||" \mark \default r2 \tuplet 3/2 {c'4 c'8} c'4 
      | c'4 c'8 c'4 c'16 c'16~ c'8 r8\bar  ".."
    }
    >>
>>    
}
