\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Teapot"
  composer = "J.J. Johnson"
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
      | c1:7 
      | f1:7 | c1:7 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | bes1:min7 | es1:7 | bes1:min7 | es1:7 | aes1:6 | s1 | bes2:min7 es2:7 | aes2:6 c2:7 
      | f1:7 | c1:7 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | f1:min7 | c1:7 | f1:min7 | s1 | c1:min7 | f1:7 | bes2:min7 es2:7 | aes2:6 c2:7 
      | f1:7 | c1:7 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | bes1:min7 | es1:7 | bes1:min7 | es1:7 | aes1:6 | s1 | bes2:min7 es2:7 | aes2:6 c2:7 
      | f1:7 | c1:7 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | f1:min7 | c1:7 | f1:min7 | s1 | c1:min7 | f1:7 | bes2:min7 es2:7 | aes2:6 c2:7|
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


      \tempo 4 = 315
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 f8~ 
      \bar "||" \mark \default f8. g16~ g8. a16~ a2~ 
      | a4 \tuplet 3/2 {bes4 c'8~} c'8. d'16~ d'16 dis'8 e'16~ 
      | e'16 g'8 ges'16~ ges'8 f'8 e'8 es'8~ es'16 bes8 d'16~ 
      | d'8. c'16~ c'8 bes8 a8 g8~ g8. f16~ 
      | f2 f'4. r8 
      | r2. r8 f'8~ 
      | f'8. es'16~ es'8 cis'8 d'8 bes8 r4 
      | r2. r8 bes8~ 
      | bes8 des'4 e'8 f'4 e'4 
      | es'4 d'8 des'4 aes8 c'4 
      | bes4~ bes16 aes16 g16 f16~ f8 e8 d8 es8 
      | r4 r8 es'4. \tuplet 3/2 {des'4 c'8~} 
      | c'4 es'4 des'4 ges8 aes8~ 
      | aes8 c'8 \tuplet 3/2 {bes4 g8} \tuplet 3/2 {ges8 f4} e4 
      | es2 es'4 c'4 
      | \tuplet 3/2 {e'4 c'8~} c'8 r8 r2 
      \bar "||" \tuplet 3/2 {f'8 f'8 es'8~} es'8. f'16~ f'8 r8 r8 f'8~ 
      | f'8. f'16~ f'16 f'8 es'16~ es'16 f'8 es'16~ es'8. f'16~ 
      | f'8 e'16 es'16~ es'8. f'16~ f'4. f'8~ 
      | f'8. ges'16~ ges'16 ges'8 d'16~ d'16 f'16 es'8 r4 
      | f'8. f'16~ f'16 f'8 d'16~ d'4 r4 
      | r1 
      | r1 
      | r1 
      | c4 d4 f4 aes8 g8~ 
      | g8 e8 c4 bes16 des'16 c'8 bes8 aes8~ 
      | aes8 f8 aes8 g8 f8 e4 aes8 
      | es'8 des'8 c'4. des'4. 
      | es'2 c'4. bes8 
      | a4 \tuplet 3/2 {c'8 aes'8 g'8} \tuplet 3/2 {ges'4 f'8~} f'8 es'8 
      | d'8 bes4. \tuplet 3/2 {des'8 c'4} \tuplet 3/2 {bes8 a8 c'8} 
      | aes8 r8 r2. 
      \bar "||" \mark \default g'8. c''16~ c''8. b'16~ b'8 g'8 bes'4~ 
      | bes'8 ges'16 e'16 c'8. bes'16~ bes'16 a'8 g'16 fis'4 
      | g'4 e'8 es'4 bes8 d'4 
      | c'4. a'8~ \tuplet 3/2 {a'8 aes'8 ges'8~} ges'4 
      | f'4. e'8 f'16 es'16 c'4 es'8~ 
      | es'8 des'16 c'16 bes16 f8. d'8 c'8 bes8. e16 
      | aes4 e8 g4 f8 e8 des8 
      | f4 c'4 es'4 des'4 
      | a8 c'4 r8 r2 
      | r1 
      | \tuplet 3/2 {a8 bes8 c'8} des'8. f'16~ f'4 bes'8 a'8~ 
      | a'8 f'4 aes'4 f'16 es'16 \tuplet 3/2 {d'8 c'4} 
      | \tuplet 3/2 {g'8 g'8 f'8} es'4 r4 r16 c'16 des'8~ 
      | des'8 bes8 c'4~ \tuplet 3/2 {c'8 b8 bes8} a16 g8. 
      | bes4. bes8 c'2 
      | r1 
      \bar "||" c'2 r2 
      | r4 c'2. 
      | c'4. c'8 c'4. c'8 
      | c'4. c'8 c'4.. c'16~ 
      | c'8. bes16 g4 g2 
      | r1 
      | r1 
      | r1 
      | c'4 d'4 f'4 aes'8 g'8~ 
      | g'8 f'8 e'4 bes8 b8 \tuplet 3/2 {c'8 bes4} 
      | aes4 es16 f16 g16 aes16~ aes16 f8 e16 r4 
      | r1 
      | es'4 aes'8 g'4 f'8 es'8 des'8 
      | c'4 bes8. a16~ a8 ges'8 f'8 es'8 
      | des'4 bes8 des'4 bes8 a4 
      | aes4.. c'16~ c'4 bes8 r8\bar  ".."
    }
    >>
>>    
}
