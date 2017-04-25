\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Crosscurrent"
  composer = "Warne Marsh"
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
      
      | f1:maj | g2:min7 c2:7 | a1:min7 | g2:min7 c2:7 | f1:7 | bes1:maj | g2:min7 c2:7 | f1:maj 
      | s1 | g2:min7 c2:7 | a1:min7 | g2:min7 c2:7 | f1:7 | bes1:maj | g2:min7 c2:7 | f1:maj 
      | bes1:min7 | a1:maj | aes1:min7 | g1:maj | ges1:maj | f2:7 d2:7 | g1:min7 | c1:7 
      | f1:maj | g2:min7 c2:7 | a1:min7 | g2:min7 c2:7 | f1:7 | bes1:maj | g2:min7 c2:7 | f1:maj|
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


      \tempo 4 = 258
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r16 c''8 bes'16~ bes'16 a'8 g'16~ 
      | g'16 d'8 e'16~ e'16 f'8 d'16~ \tuplet 3/2 {d'8 e'8 f'8~} f'8 g'8 
      | \tuplet 3/2 {f'8 e'8 d'8} c'8 b8 bes8 d'8 c'8 bes8 
      | a4 g'4 f'8 es'8 d'8 c'8 
      | bes8 a8 g8 f4. r4 
      | r4 r8. d16~ d8 f8 g4 
      | c'8 b8 bes8 a8 g8 f8 e8 f8 
      | a8 c'8 d'8 e'8 g'8 e'8 \tuplet 3/2 {f'4 a'8} 
      \bar "||" c''8 r8 r4 a'8 g'8 f'4 
      | d''4 c''8 bes'8 a'8 g'8 f'8 e'8 
      | g'8 f'8 e'8 d'8 c'8 b8 bes8 d'8 
      | a8 bes8 c'8 d'8 e'8 f'8 g'4 
      | c'4. c'8 r2 
      | r4 a8 bes8 c'8 b8 bes8 des'8 
      | \tuplet 3/2 {c'4 bes8} a8 c'8 d'8 e'8 f'8 g'8 
      | r1 
      \bar "||" \tuplet 3/2 {aes'4 g'8} f'8 es'8 des'8 c'8 bes4 
      | b4 d'4 fis'8 e'8 d'8 cis'8 
      | b8 bes8 aes4 bes4 b4 
      | fis'8 e'8 d'8 cis'8 b8 a8 gis8 ges8 
      | f8 des8 es8 f8 ges8 gis8 a8 b16 des'16~ 
      | \tuplet 3/2 {des'8 es'8 f'8} ges'4 gis'4. r8 
      | r2. a'8 g'8 
      | fis'8 g'8 \tuplet 3/2 {bes'8 a'8 g'8~} g'16 f'8 e'16~ \tuplet 3/2 {e'8 d'8 c'8~} 
      \bar "||" c'16 bes8 a16~ a8 c'8 d'8 e'8 g'8 f'8 
      | e'8 f'8 c''4 bes'8 a'8 g'8 f'8 
      | e'8 c'8 d'8 e'16 g'16~ g'8 ges'8 f'8 d'8 
      | bes8 g8 a8 bes8 c'8 d'8 es'8 f'8 
      | g'8 r8 r2 r8. d'16~ 
      | \tuplet 3/2 {d'8 f'8 c''8~} c''8 bes'4 f'8 \tuplet 3/2 {des'8 c'8 bes8~} 
      | bes8 a8 g8 f8 e8 f8 a8 c'8 
      | d'8 e'16 g'16~ g'8 e'8 f'8 g'8 a'8 bes'8 
      | c''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
