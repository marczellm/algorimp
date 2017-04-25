\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Stompin' at the Savoy"
  composer = "Coleman Hawkins"
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
      | r1 | s1 
      | g2 d4:7 g4 | c1:9 | g1 | s2 gis2:dim | d1:7 | s1 | g1 | a2:min d2:7 
      | g2 d4:7 g4 | c1:9 | g1 | s2 gis2:dim | d1:7 | s1 | g1 | s1 
      | c1 | d1:7 | c2 g2 | s1 | e1:min | a1:9 | a2:min7 d2:7 | s1 
      | g2 d4:7 g4 | c1:9 | g1 | s2 gis2:dim | d1:7 | s1 | g2 c4 d4 | a2:min7 d2:7 
      | g2 d4:7 g4 | c1:9 | g1 | s2 gis2:dim | d1:7 | s1 | g1 | a2:min d2:7 
      | g2 d4:7 g4 | c1:9 | g1 | s2 gis2:dim | d1:7 | s1 | g1 | s1 
      | c1 | d1:7 | c2 g2 | s1 | e1:min | a1:9 | a2:min7 d2:7 | s1 
      | g2 d4:7 g4 | c1:9 | g1 | s2 gis2:dim | d1:7 | s1 | g2 c4 d4 | s2 d2:7|
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


      \tempo 4 = 250
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2. aes8 bes8 
      | c'8 des'16 es'16~ es'8 f'16 ges'16~ \tuplet 3/2 {ges'8 es'8 f'8~} \tuplet 3/2 {f'8 des'8 aes8~} 
      \bar "||" \mark \default aes8 bes8 des'8 c'8 des'2~ 
      | des'8 a8 ges8 e8 f8 aes16 bes16~ bes8 aes8 
      | des'8 bes8 r2. 
      | r4 bes8 aes16 g16~ g8. b16~ \tuplet 3/2 {b8 es'8 d'8~} 
      | d'8 des'8~ des'4. bes8 g8. aes16~ 
      | \tuplet 5/4 {aes16 a16 bes16 b16 c'16~} c'2 aes8 f8 
      | aes4. r8 r2 
      | r4 aes8 b8 d'8 f'8 e'16 d'8 es'16~ 
      \bar "||" es'8 f'16 ges'16~ ges'8 e'8 f'8 des'8 aes8. des'16~ 
      | des'8. des'16~ des'8 es'8 f'8 aes'8 f'8. es'16~ 
      | es'8 e'4 f'4 des'8 c'8 bes16 c'16 
      | r2 b8 aes8 f8 r8 
      | r2. bes8 ges8 
      | \tuplet 3/2 {f4 es8} \tuplet 3/2 {d4 e8} ges8 a8 c'8 f'8 
      | e'8 d'16 es'16~ \tuplet 3/2 {es'8 c'8 des'8~} des'8 aes8 ges16 f8 es16 
      | d4. b8~ b8. aes16~ \tuplet 3/2 {aes8 a8 bes8~} 
      \bar "||" bes8 des'8 es'8 des'16 e'16~ e'8 des'8 r4 
      | r4 aes'8 ges'8 e'8 des'16 d'16~ d'8 es'8~ 
      | es'8 des'8 a8 ges4 b8~ b16 aes8 a16~ 
      | \tuplet 3/2 {a8 b8 des'8~} \tuplet 3/2 {des'8 ges'8 es'8~} es'8. es'16~ es'4~ 
      | es'8 d'4 es'8 e'8 des'8 a8 aes8 
      | des'8 b8 r2 r8 a'8~ 
      | a'8 g'4 b8 \tuplet 3/2 {ges'4 e'8~} e'8 f'8 
      | g'16 aes'8 ges'16~ ges'8 a8 \tuplet 3/2 {f'4 es'8~} es'4 
      \bar "||" r4 r8 es'8 f'8 aes'16 e'16~ \tuplet 3/2 {e'8 des'8 es'8~} 
      | es'8 des'8 c'8 des'16 a'16~ \tuplet 6/4 {a'16 bes'16 b'16 c''8.~} c''4~ 
      | c''8 aes'8 f'8 aes'4 f'8 c'8 f'8~ 
      | f'8 c'8 aes8 ges8 g4 e'8 es'16 e'16 
      | es'8 r8 r2 \tuplet 3/2 {es'4 des'8} 
      | c'8. a16~ a4. f'8 e'8 d'8 
      | es'8 des'8 aes8 ges8 f4 \tuplet 3/2 {ges4 e8} 
      | f8 r8 r8 b8 e'8 f'8 ges'8 g'8 
      \bar "||" \mark \default \tuplet 3/2 {aes'4 des'8} r2. 
      | aes'8 bes'8 aes'8 f'8 es'8 des'8 bes8 g8~ 
      | g16 b16 c'16 des'16~ des'4 c'8 des'4. 
      | \tuplet 3/2 {des'4 des'8~} des'8. d'16~ d'4 r4 
      | r2 r8 bes8 d'8 f'8 
      | es'8 des'8 c'8. bes16 aes4 bes8 g8 
      | aes8 f8 r2 aes8 b8 
      | d'8 f'8 e'4 es'8 c'16 des'16~ des'8 bes16 b16~ 
      \bar "||" b4 bes8 r8 r4 \tuplet 3/2 {ges4 e8} 
      | f4 bes8 g8 aes8 r8 r4 
      | r2 aes'8 bes'8 aes'8 f'8 
      | es'8 des'16 c'16~ c'8 aes8 bes16 es'16 aes'16 bes'16 c''4 
      | r1 
      | r4 c''8 des''8 des''4~ \tuplet 3/2 {des''8 g'8 aes'8} 
      | es'16 f'16 c'16 des'16~ des'16 ges16 g8 f8 des8 des4 
      | \tuplet 3/2 {a8 bes4~} bes2~ bes8. aes16 
      \bar "||" g4 \tuplet 3/2 {e8 f8 bes8} des'8 es'8 e'8 des'8 
      | bes4 es'8 e'8 des'8 r8 r4 
      | r2 e'8 des'8 es'8 des'8 
      | c'8 des'16 a'16~ a'16 aes'8 g'16~ \tuplet 3/2 {g'8 ges'8 f'8~} f'4 
      | e'8 r8 r2. 
      | ges'8 f'8 e'8 d'8 a8 ges8 e8. a16~ 
      | a8 ges4 a16 bes16 \tuplet 3/2 {des'4 f'8} \tuplet 3/2 {g'4 f'8} 
      | e'8 f'8 ges'8 des'4 es'16\bendAfter #+4  f'16~ f'8 e'8 
      \bar "||" \tuplet 3/2 {f'4 e'8} f'8 des'8 \tuplet 3/2 {aes4 ges8} f4 
      | bes8. g16 aes8 bes8~ \tuplet 5/4 {bes16 c'16 des'16 d'16 es'16~} es'8 c'8 
      | r2 r8 es'4. 
      | \tuplet 3/2 {c'4 es'8} \tuplet 3/2 {d'4 c'8} g4 ges4~ 
      | ges8 bes8 des'8 bes8 r2 
      | des'8 a16 bes16~ bes8 b4 c'4 aes8~ 
      | aes8 f8 aes4. f8 \tuplet 3/2 {aes4 c'8} 
      | des'8 d'8 es'8 r8 r2\bar  ".."
    }
    >>
>>    
}
