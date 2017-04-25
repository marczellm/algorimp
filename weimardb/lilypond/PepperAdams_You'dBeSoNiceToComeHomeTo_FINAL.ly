\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "You'd Be So Nice to Come Home to"
  composer = "Pepper Adams"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      
      | a1:min6 | e1:7 | a1:min6 | s1 | g1:min7 | c1:7 | f1:maj | s1 
      | dis1:dim | e1:min7 | gis1:dim | a1:min7 | d1:7 | g1:7 | c1:maj | s1 
      | a1:min6|
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


      \tempo 4 = 89
      \set Score.currentBarNumber = #-15
     
      \bar "||" \mark \default r4 e'8 a8 c'8 e'8 \tuplet 5/4 {d'8 e'16 d'16 c'16} 
      | f'8 b8 \tuplet 3/2 {d'4\glissando  f'8} e'8 b8 \tuplet 5/4 {d'8 e'16 d'16 b16} 
      | c'8 e'8 b16 c'16 b16 a16 gis8 f8 e8 d8 
      | c8 e8 \tuplet 3/2 {b,4 a,8~} a,8 r8 r4 
      | r4 r8. c16~ \tuplet 6/4 {c16 a,8 bes,8\glissando  a16~} a8 g8 
      | \tuplet 3/2 {c8 des8\glissando  c'8~} c'8 bes8\glissando  es'8 des'8 aes16 ges16 c'16 bes16 
      | gis16\glissando  a8. \tuplet 3/2 {c'8 a8 g8} f16\glissando  c'16 aes16 e16 c16 d16 e16 aes16~ 
      | aes16 f16\glissando  a16 c'16 \tuplet 3/2 {a8 e8 d8} r4 \tuplet 6/4 {r8 e16 f8 g16~} 
      | g16 f16\glissando  fis4. b16 c'16 d'16 dis'16 \tuplet 3/2 {c'8 a8 fis8} 
      | g4~ \tuplet 5/4 {g8 dis16 e16 fis16~} \tuplet 5/4 {fis16 g16 a16\glissando  b16 dis'16} fis'16. e'8 d32\glissando  
      | \tuplet 6/4 {dis4~ dis16 gis16\glissando } a4~ a16 es16 d8 r4 
      | r4 r8 d8~ d16 b,8 c16~ c4~ 
      | c8. ais16\glissando  \tuplet 6/4 {c'8. g8 dis16} gis16\glissando  ais8 ges16~ \tuplet 6/4 {ges16 f8. dis16 g16} 
      | a4~ \tuplet 6/4 {a8 c16 cis16 dis16 f16~} f16 g16 fis16 gis16~ gis16 f16 g8 
      | r4 \tuplet 5/4 {r16 dis16 g16 b16 a16} g16 e16 d16 c16 b,16 c16. e16 g32~ 
      | \tuplet 3/2 {g8\glissando  a8 d'8} \tuplet 5/4 {gis8 b,16 d16\glissando  e16} f8.^\markup{\left-align \small vib} gis16 e8. d16 
      \bar "||" \mark \default c4 r2.\bar  ".."
    }
    >>
>>    
}
