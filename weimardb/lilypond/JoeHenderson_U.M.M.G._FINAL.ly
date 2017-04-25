\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "U.M.M.G."
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      
      | f1:min5-7 | bes1:7 | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:7 | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:min5-7 | c1:9- | f1:maj | s1 | aes1:min5-7 | des1:9- | ges1:min | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | s1 | des1:6 | s1 
      | des1:dim7 | s1 | des1:6 | s1 | f1:min5-7 | bes1:7 | es1:min7 | aes1:7 
      | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 | f1:min5-7 | bes1:7 | es1:min7 | aes1:7 
      | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 | g1:min5-7 | c1:9- | f1:maj | s1 
      | aes1:min5-7 | des1:9- | ges1:min | aes1:7 | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 
      | des1:dim7|
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


      \tempo 4 = 219
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default f'8 r8 r2. 
      | r8. c'16 \tuplet 3/2 {es'4 c'8} d'8 bes8~ bes8. des'16~ 
      | des'4 bes4 b8. c'16 r4 
      | r2 r8. c''16~ c''16 bes'8 aes'16~ 
      | aes'8 f'8 \tuplet 3/2 {es'4 des'8~} des'4~ des'16 c'8 bes16 
      | a8 aes8 ges8 f8 es16 des8 es16~ es4 
      | bes4. bes8 b8 des'16 e'16~ \tuplet 3/2 {e'8 aes'8 bes'8~} 
      | \tuplet 3/2 {bes'8 aes'8 e'8} des'8 b8 \tuplet 3/2 {bes4 aes8} f8 aes8 
      \bar "||" f4. g8 aes8 r8 r4 
      | bes8 b8 es'8 ges'8 des''8 b'8 ges'4 
      | \tuplet 3/2 {g'8 aes'4~} aes'2~ aes'8 aes'16 ges'16 
      | des'8 c'8 \tuplet 3/2 {a4 g8} es'8 des'8 c'8 bes8 
      | aes8 ges8 \tuplet 6/4 {f4 es16 d16} des'8 r8 r4 
      | r1 
      | r8 bes'8 b'4 bes'8 aes'8 es'8 ges'8 
      | f'8 e'8 \tuplet 3/2 {es'4 d'8} \tuplet 3/2 {des'4 b8} aes8 ges8 
      \bar "||" \tuplet 3/2 {aes8 a8 bes8~} bes8 c'4. des'4 
      | e'8. g'16~ g'8 c''8 r4 e''8. b''16~ 
      | b''8 bes'4. g''8 r8 r4 
      | bes'16 b'16 c''8~ \tuplet 5/4 {c''8 b'16 a'16 ges'16} \tuplet 3/2 {e'4 f'8} r4 
      | ges'4. des''8 \tuplet 3/2 {b'8 c''8 a'8~} \tuplet 3/2 {a'8 aes'8 ges'8} 
      | e'8 es'8 d'16 es'16 d'16 des'16 b4. a8 
      | aes4 a8. e16~ e4 r4 
      | r2 r8 aes'8 g'16 aes'16 g'16 f'16 
      \bar "||" bes'4. g'8 aes'8 c'8 r4 
      | r16 g'8 f'16 c'8 es'8 d'8 bes8 ges4 
      | aes8. bes16~ bes8. b16~ b8. aes16 r4 
      | r8 g16 aes16 bes16 c'16 d'16 e'16 \tuplet 6/4 {f'16 g'16 b'8. g'16} \tuplet 3/2 {e'4 c'8~} 
      | c'8 es'4 es'8~ es'4. es'8~ 
      | es'4. des'8 es'8 des'8 \tuplet 3/2 {c'4 bes8~} 
      | \tuplet 3/2 {bes8 aes8 ges8} f8 es8 \tuplet 3/2 {des4 es8} f8 aes8 
      | des'8 es'8~ es'8. aes'16 c''2~ 
      | c''8 des''4. bes'4 es'8 r8 
      | r1 
      | r8 aes'8 ges'8 f'8 aes'4.. ges'16~ 
      | \tuplet 6/4 {ges'16 aes'4 ges'16} aes'8 ges'8 e'4 c'16 des'16 d'16 es'16~ 
      \bar "||" \mark \default es'4~ \tuplet 3/2 {es'8 des'8 es'8~} es'8 des'8 r4 
      | r4 \tuplet 3/2 {d'4 es'8~} es'16 ges'8 f'16 e'8 es'8 
      | des'8 b8 bes8. ges16 aes8 r8 r4 
      | r16 ges8 aes16 bes4 b8 des'4 f'8 
      | c''8 aes'8 bes'8 aes'8 e'8 r8 r8. c'16 
      | g'4. ges'8 f'8 e'8 es'8 d'8 
      | \tuplet 3/2 {des'4 bes8~} bes16 ges8 d16~ \tuplet 6/4 {d16 f4 des16} \tuplet 3/2 {f4 es8} 
      | aes4~ aes16 g16 aes16 ges16~ ges16 d16 e8 \tuplet 3/2 {c4 aes,8~} 
      \bar "||" aes,4 r4 aes4.. ges16 
      | f8. ges16 aes8 bes8 es'8. des'16~ des'8 r8 
      | r2 r8 bes'8 b'4 
      | bes'8 aes'8 es'8 ges'8 f'8 e'8 es'8 d'8 
      | des'8. b'16 c''2. 
      | b'8 c''4. b'16 c''8.~ c''8 g'8~ 
      | g'2 ges'16 g'8.~ g'8 f'8 
      | e'8 d'8 \tuplet 3/2 {c'4 a8} g8 f8 e4 
      \bar "||" ges4. r8 r2 
      | r8 bes'8 r4 es'8 f'8 \tuplet 3/2 {bes'4 aes'8~} 
      | aes'4 es'4 b16 ges'8 e'16~ e'16 es'8 d'16 
      | des'8 aes8 ges4 e4 \tuplet 3/2 {es4 bes8} 
      | b4.. es'16~ es'16 bes16 b8~ b8. aes16 
      | b4 es8 d4. d8 aes8 
      | a2 aes8 a8 des8 c8 
      | r2 aes'8 r8 r8 aes'8~ 
      \bar "||" aes'8 des'8 r4 c''8. b'16 c''4 
      | g'8. f'16 g'4 \tuplet 3/2 {e'4 c'8} e'8. c'16~ 
      | c'4 c'4 g8 e8 g4 
      | es8 e4 c8 \tuplet 3/2 {d4 c8~} c4 
      | b4. r8 r2\bar  ".."
    }
    >>
>>    
}
