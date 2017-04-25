\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Destination K.C."
  composer = "Dickie Wells"
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
      | r1 
      | c1 | c1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | s1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | aes1:7 | g1:7 
      | c1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1|
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


      \tempo 4 = 249
      \set Score.currentBarNumber = #0
     
      | r4 b8 c'8 c'8 c'8 c'8 c'8 
      \bar "||" \mark \default c'8 c'8 c'8 cis'8 e'4 r4 
      | c'8 c'8 c'8 cis'8 dis'4 b8 c'8~ 
      | c'4 cis'4 e'4 g'4 
      | g'4 e'4 c'8. ais16~ ais8 c'8~ 
      | c'4. r8 r4 r8 cis'8 
      | dis'8 e'8~ e'8. a'16~ a'8 g'4 e'8 
      | c'4 ais4 cis'8 dis'4\bendAfter #+4  e'8~ 
      | e'8 dis'8 c'4 c'2 
      \bar "||" r2. a16 cis'16 fis'16 a'16 
      | ais'2 c''8 b'8~ b'16 a'16 fis'16 dis'16 
      | a16 bes8.~ bes8 a16 g16~ g8 a4 a8 
      | c'4 ais4 g8 gis4 c'8~ 
      | c'8 c'2.. 
      | c'4 a8 e'8 f'8 g'4 e'8 
      | dis'8 c'4 c'8~ c'8. a16 g8 c'8 
      | r1 
      \bar "||" c'4 fis'8 g'4 f'4 c'8~ 
      | c'8 aes8 f4 f2 
      | a8. a16~ a8 des'4 es'4 ges'8 
      | \tuplet 3/2 {f'8 es'4} c'4 c'2 
      | r2 a16 bes8.~ bes8 c'8~ 
      | c'8. bes16~ bes8. bes16~ bes2 
      | r2 r16 aes8 aes16~ aes8 es8 
      | a4. gis4. \tuplet 3/2 {dis'8 e'8 f'8~} 
      \bar "||" f'2~ f'8 e'4 c'8~ 
      | c'8 g8~ g4. r8 r4 
      | c'4 c'4 g'2 
      | e'16 f'8 f'16~ f'8 f'8 e'4 d'8 c'8~ 
      | c'4 r2 r8 c'8 
      | dis'8. c'16~ c'8 dis'4 c'4 g'8 
      | gis'8 f'4 e'8 \tuplet 3/2 {dis'4 c'8~} c'8. c'16~ 
      | c'2 r2\bar  ".."
    }
    >>
>>    
}
