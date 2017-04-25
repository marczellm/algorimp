\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tiny's Blues"
  composer = "Kai Winding"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:7 | g1:7 | c1:7 | f1:7 | c1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:7 
      | g1:7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:7 | g1:7 | c1:7 | f1:7 | c1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:7 
      | g1:7 | c1:7 | f1:7 | c1:7 | f1:7|
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


      \tempo 4 = 223
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 g'8 f'4 e'8 d'8 c'8 
      | a4 a8 bes8 r4 r8 a8~ 
      | a8 c'8 g4 r4 r8 f8 
      | c4 a8 bes8 c'4 bes8 aes8~ 
      | aes8 f8 g4. f4 des'8 
      | e'8 e'8 d'8 des'8 c'8 r8 r4 
      | r1 
      | r4 bes8 a8~ a8. ges16~ ges4 
      | f4 e8 c'4. bes8 gis8 
      | a4 bes8 c'4 bes8 c'4 
      | bes8 r8 r2. 
      \bar "||" \mark \default f'4 \tuplet 3/2 {e'4 f'8~} f'8 r8 r8. f'16~ 
      | f'8 f'4 e'8 f'8 e'8 d'8 cis'8 
      | \tuplet 3/2 {d'4 d'8} cis'4 d'4 r4 
      | r1 
      | g'8 f'8 e'8 d'8 c'4 bes8 aes8~ 
      | aes8 f8 g8 r8 r8. f16~ f8. g16 
      | gis8 a8 c'8 c'8 c'4. r8 
      | r1 
      | r2. bes,4 
      | r8. aes16~ aes16 g8 f16~ f4 bes8 c'8~ 
      | c'8 a4 r8 r2 
      | r2 r8 c'8~ c'8. f'16~ 
      \bar "||" \mark \default f'4. f'8~ f'4. f'8~ 
      | f'4 aes2\glissando  f8 g8 
      | r4 r8 e'8 g'8 ges'8 \tuplet 3/2 {f'4 e'8} 
      | es'4. d'4 f'8 \tuplet 3/2 {des'4 a8} 
      | c'4 r2. 
      | r4 r8 aes'8~ aes'4. f'8~ 
      | f'4. d'4. r4 
      | r2. r8 cis'8 
      | \tuplet 3/2 {d'4 bes8} \tuplet 3/2 {a4 gis8} r2 
      | f4 \tuplet 3/2 {e4 c'8~} c'4 bes8 gis8 
      | a4 r4 a4 r4 
      | r1 
      \bar "||" \mark \default c''4 bes'8. a'16~ a'4. c''8~ 
      | c''8 bes'8 aes'4 r2 
      | r4 r8 es'8 c''8 b'8 bes'8 a'8~ 
      | a'4 \tuplet 3/2 {g'4 f'8~} f'8 es'8 d'8 c'8 
      | bes4 f8 aes4. g8 f8~ 
      | f8. e'8~ e'8.~ e'4~ e'16 g'8 e'16 
      | \tuplet 3/2 {f'8 a'8 f'8} c'4 bes4. r8 
      | r1 
      | r4 r8 c''8 b'8 bes'8~ bes'16 c'8 f'16~ 
      | f'8 a'4 f'8 e'8 d'8 des'8 bes8 
      | a4 bes8 c'4 bes8 c'4 
      | bes8 r8 r2. 
      \bar "||" \mark \default f'4. f'8 aes'8 g'8 f'8. d'16 
      | f'8 bes8 r4 \tuplet 3/2 {a4 c'8} aes4 
      | g4~ g16 f16 g16 f16~ f4 bes8 d'8~ 
      | d'8 f'8 des'4 r2 
      | r4 r8 aes'16 bes'16~ bes'4 g'8 aes'8~ 
      | aes'4 d'4 r2 
      | r4 r8. c''16~ c''4 \tuplet 3/2 {bes'4 a'8~} 
      | a'8 g'8 fis'4 \tuplet 3/2 {dis'4 f'8~} f'8 d'8 
      | c'8 bes8~ bes8. a16\glissando  bes4 c'8 g8~ 
      | g4 g4 r4 c'4 
      | e'8. f'16~ f'8 e'8 f'4~ \tuplet 3/2 {f'8 b8 c'8~} 
      | c'8 gis8 a8 r8 r4 gis8 a8 
      \bar "||" \mark \default f8 r8 r2.\bar  ".."
    }
    >>
>>    
}
