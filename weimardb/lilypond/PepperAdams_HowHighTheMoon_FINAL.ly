\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "How High the Moon"
  composer = "Pepper Adams"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key g \major
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
      
      | g1:maj | g1:maj | g1:min7 | c1:7 | f1:maj | s1 | f1:min7 | bes1:7 
      | es1:maj | a2:min5-7 d2:7 | g1:min7 | s1 | g1:9 | c1:maj | b2:min7 bes2:7 | a2:min7 d2:7 
      | g1:maj|
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


      \tempo 4 = 116
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r16 d8 des16 c16 b,8.~ \tuplet 6/4 {b,8 c16 d16 dis16 g16} 
      | \tuplet 6/4 {b16 d'16 e'16 g'8.~} \tuplet 5/4 {g'16 e'8.\glissando  g16} a4~ a16 g'8 e'16~ 
      | e'16 a16\glissando  bes8~ \tuplet 6/4 {bes16 cis8 d16 es16 a16~} a8 fis8 g8 r8 
      | r4 a,16 bes,16 d16 f16\glissando  bes16 c'16 bes16 f16 d4 
      | \tuplet 3/2 {d8 a4~} a8 r8 r4 \tuplet 6/4 {fis16 g16 e8 f16 g16} 
      | a16 c'16 e'16 d'16 \tuplet 6/4 {c'8 a8 g16 f16~} \tuplet 6/4 {f16 e8\glissando  bes16 c'16 bes16} aes16 e16 c16 d16\glissando  
      | \tuplet 3/2 {bes8 c'8 aes8} \tuplet 6/4 {f8 es8 g16 f16} es16 d16 c16 bes,16 \tuplet 3/2 {a,8 aes,8 bes,8~} 
      | bes,16 g16 es16 f16 \tuplet 6/4 {g16 aes16 ais8 b16 d'16~} d'16 g'16 d'16 f'16 b8 b8 
      | bes4. d'16 c'16 bes16 g16 f16 es16 d16 bes,16 d16 des16 
      | c16 d16 e16 g16 b16 c'16 a16 g16 fis16 es16 d16 des16 c16 e16 dis16 bes,16 
      | a,8 r8 r8 r32 d16 des32 c16 b,16 d16 fis16 \tuplet 6/4 {a8 fis8 g16 a16~} 
      | \tuplet 6/4 {a16 b16 d'8 fis'16 e'16~} \tuplet 6/4 {e'16 d'16 b8 a16 g16} \tuplet 6/4 {fis8. e16 fis16 a16~} a16 fis8 e16~ 
      | e8. b,16 \tuplet 6/4 {e16 fis8. g16 a16} fis16 g16 a16 b16 \tuplet 5/4 {c'16 d'16 b16 c'16 d'16} 
      | \tuplet 5/4 {e'16 f'16 e'16 d'16 c'16} b16 d'16 b16 a16 gis16 b16 f16 dis16 e16 cis16 d16 ais,16 
      | \tuplet 5/4 {b,16 c16 d16 e16 g16} b4~ b16 b16 g16 e16 \tuplet 6/4 {c16 b,16 a,8 e16 d16~} 
      | \tuplet 6/4 {d16 b,16 c16 d16 e16 fis16\glissando } g16 d'8.~ \tuplet 3/2 {d'8 c'8 g8} \tuplet 6/4 {e16 dis16 b16 bes8 a16} 
      \bar "||" b8 r8 r2.\bar  ".."
    }
    >>
>>    
}
