\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul (Solo 2)"
  composer = "Chu Berry"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \minor
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
      
      | d2:maj e2:min7 | d2:/fis g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:min | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:min5-7 | es1:min7 | aes2 f2:7|
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


      \tempo 4 = 93
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default d4~ d16 e16 ges8 a8 e'4. 
      | \tuplet 3/2 {d'4 ges'8} \tuplet 3/2 {a'4 g'8} \tuplet 3/2 {f'8 ges'8 d'8~} d'4 
      | a4~ \tuplet 6/4 {a8 d'8 e'16 ges'16} ges'8 e'4 des'16 e'16 
      | d'16 c'16 b16 a16~ a4.. c''16 \tuplet 3/2 {d''8 d''8 a'8} 
      | \tuplet 6/4 {a'16 c''8 c''16 b'16 g'16} a'32 b'32 a'32 g'32 f'32 e'32 es'32 b32 \tuplet 6/4 {g8 a16 b16 es'8~} \tuplet 6/4 {es'16 a'16 g'16 e'8 c'16} 
      | \tuplet 3/2 {b8 a4~} a16 g16 e32 g16 e32 \tuplet 3/2 {es4 ges8} \tuplet 6/4 {a16 b8 a16 aes16 f16~} 
      | f4~ \tuplet 6/4 {f16 a'8 c''8 b'16~} \tuplet 6/4 {b'8 c''16 b'16 a'16 g'16} e'4~ 
      | e'8 bes16 e'16 es'8. d'16~ d'8 bes'4.~ 
      \bar "||" bes'8 es'16 e'16 f'16 aes'16 f'16 es'16~ es'16 e'16 f'16 aes'16 f'8 es'16 e'16 
      | f'16 aes'16 f'16 es'16 bes2 f'16 aes'16 f'16 es'16~ 
      | es'4~ es'16 des'16 f'16 c'16~ c'16 bes16 b16 b16 \tuplet 3/2 {b8 b8 bes8~} 
      | bes4 \tuplet 3/2 {aes8 des'8 f'8} c'4 \tuplet 3/2 {b8 bes8 ges8~} 
      | ges4. b16 des'16~ des'8. des'16~ des'16 bes16 ges16 es16~ 
      | es16 e16 f4 e8 es4 r4\bar  ".."
    }
    >>
>>    
}
