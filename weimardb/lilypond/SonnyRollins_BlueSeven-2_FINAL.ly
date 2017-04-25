\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Seven (Solo 2)"
  composer = "Sonny Rollins"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | s1 | s1 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 f'8 gis'16 a'16 aes'16 f'16~ \tuplet 6/4 {f'16 b'16 c''8. aes'16~} aes'8\bendAfter #-4  r8 
      | r8. bes16~ bes16 e'16 f'8 e'16 d'16 des'16 bes16 e'8 f'8~ 
      | \tuplet 6/4 {f'16 e'16 d'16 des'16 bes8} r2 r8 f'8 
      | aes'16 bes'16 c''16 d''16~ \tuplet 6/4 {d''8 c''16 bes'16 b'16 a'16} aes'16 a16 c'16 es'16 \tuplet 3/2 {g'8 es'8 f'8} 
      | ges'16 d'16 b16 bes16 a16 aes16 r8 r4 \tuplet 6/4 {g'8 bes'8 c''16 des''16~} 
      | des''16 c''16\glissando  des''8 \tuplet 3/2 {bes'8 aes'8 f'8} \tuplet 3/2 {bes8 e'8\glissando  f'8} \tuplet 6/4 {e'16 f'16 es'16 des'16 bes8} 
      | g16 c'8. aes8 g16 f16 \tuplet 3/2 {aes4 f8} c8 aes,8 
      | r2 \tuplet 6/4 {r16 ges'16 aes'16 g'8.} r4 
      | r8 g8 \tuplet 6/4 {b8 es'8 g'16 b'16~} b'16 d''16 b'16 d''16~ d''16 b'16 g'16 es'16 
      | r4 r8. a'16\glissando  bes'8 a'16 f'16~ \tuplet 6/4 {f'16 gis'16 a'16 aes'16 g'16 f'16} 
      | des''16 c''8 aes'16~ aes'16 bes'16 aes'16 f'16 \tuplet 5/4 {aes'4 f'16\bendAfter #-4 } r4 
      | r2 r8 f'8 aes'4 
      \bar "||" \mark \default c''8 r8 r4 r8 f'8 aes'4 
      | bes'8 r8 r4 r8 f'8 aes'4 
      | c''4 c''4 \tuplet 3/2 {c''4 f'8} aes'8. bes'16 
      | r2 r8 c'8 des'4 
      | f'8 r8 r4 r8 bes8 des'8. es'16 
      | r2 r8 f8 aes4 
      | c'4 c'4 \tuplet 3/2 {c'4 f8} aes8. bes16 
      | r2. es'4 
      | g'8 r8 r2. 
      | \tuplet 6/4 {r8 c'16 des'8 b16} r2 aes4 
      | c'8\bendAfter #-4  r8 r2.\bar  ".."
    }
    >>
>>    
}
