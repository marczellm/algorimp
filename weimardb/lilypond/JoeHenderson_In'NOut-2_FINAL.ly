\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "In 'n Out (Solo 2)"
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      
      | s2. ges4:13sus4.9 | f1:13sus4.9 | s2 es2:13sus4.9 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | s2 es2:13sus4.9 | d1:9 | es1:maj11+.9|
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


      \tempo 4 = 300
      \set Score.currentBarNumber = #-7
     
      \bar "||" \mark \default r2. r8 f'8~ 
      | f'8 d'8 bes16 g8 aes16~ aes4. f'8~ 
      \bar "||" f'8 r8 r4 r16 f'8 es'16~ \tuplet 3/2 {es'8 c'8 a8} 
      \bar "||" \tuplet 3/2 {aes4 a8~} a8 f'8~ f'16 es'16 c'16 a16~ a8 g8 
      \bar "||" \tuplet 3/2 {aes8 a4~} a8 a4 des'4 f'8 
      | a'8 g'8 f'8 es'8 f'16 e'16 d'16 es'16 des'8 r8 
      | r1 
      | r2. r8. es'16 
      \bar "||" \mark \default \tuplet 3/2 {f'8 ges'8 aes'8~} \tuplet 3/2 {aes'8 e'8 des'8} c'8 b8 g4 
      | a8 c8 d8 e8 g8 e8 f8 g8 
      | a8 bes8 c'8 d'8 es'8 f'8 g'8 es'8 
      | c'8 d'16 es'16~ es'8 c'8 a8 bes8 c'8 a8 
      | \tuplet 3/2 {f4 aes8} a8 f8 bes8 c'8 d'16 es'16 f'8 
      | des'8. es'16~ es'16 f'8 g'16 \tuplet 3/2 {des''4 c''8~} c''4~ 
      | c''4. bes'8 a'4. d'8 
      | \tuplet 3/2 {e'8 g'8 e'8} f'8 g'8~ \tuplet 3/2 {g'8 a'8 bes'8} a'8 g'8 
      | ges'8 es'8 d'8 c'8 bes8 d'8~ d'16 f'8 a'16~ 
      | a'16 g'8 f'16~ f'16 d'8 es'16 d'8 c'8 bes4 
      | d'8 c'4 b8 bes8 g16 a16~ \tuplet 3/2 {a8 aes8 f8} 
      | r2. r8 c''8~ 
      \bar "||" \mark \default c''8 c''4 c''4 f'4 aes'8~ 
      | aes'8 f'4 bes'4 f'4 b'8~ 
      | b'8 f'4 c''4 f'4 f'8 
      | \tuplet 3/2 {aes'4 f'8} \tuplet 3/2 {aes'4 a'8} aes'16 f'8 es'16 cis'8 b8 
      | \tuplet 3/2 {bes4 aes8~} aes4 aes8 r8 r4 
      | r1 
      | r4 r8 f'8 c''8 f'8 g'8 bes'8 
      | aes'8. c'16 \tuplet 3/2 {es'8 f'8 aes'8} f'8 c'8 bes8 g8 
      | es'4 d'16 des'8 c'16~ c'8 bes4 ges8~ 
      | ges8 a4 fis8 g4. bes8 
      | c'4 d'4. f'4 d'8~ 
      | d'8 e'4 g'8~ \tuplet 3/2 {g'8 es'8 f'8} e'4 
      \bar "||" \mark \default es'8 des'8 \tuplet 3/2 {c'8 bes8 g8~} g4 aes8. a16~ 
      | a8 c8~ c8. es16~ es8 g4 d'8~ 
      | d'4 es'8 r8 r2 
      | d'4 r4 g'8 fis'8 es'8 cis'8 
      | b8 d8 es8 ges8 f8 es8 c4 
      | bes,8 r8 r2. 
      | r2 bes,4. aes8~ 
      | aes8 a8 r2. 
      | g'16\bendAfter #+4  aes'16 a'16 f'16~ f'8 g'8 r2 
      | g'16\bendAfter #+4  aes'16 a'16 f'16~ f'8 c'8 aes'8 a'8 \tuplet 3/2 {f'4 c'8} 
      | \tuplet 3/2 {aes'4 a'8~} a'8 f'8~ f'16 c'8 c'16~ c'8 aes'8 
      | a'8 f'8~ f'16 c'8 aes'16~ \tuplet 3/2 {aes'8 a'8 f'8~} f'8 g'8~ 
      \bar "||" \mark \default g'8 aes'8 r2 r8 f'8 
      | aes'8 a'16 aes'16~ aes'8 a'16 aes'16~ aes'16 f'8 f'16 r4 
      | r4 \tuplet 3/2 {aes'8 a'8 f'8~} f'16 es'8 f'16 aes'8 a'8 
      | f'8 es'16 f'16 \tuplet 3/2 {aes'8 a'8 f'8~} \tuplet 3/2 {f'8 es'8 aes'8~} \tuplet 3/2 {aes'8 a'8 f'8~} 
      | \tuplet 3/2 {f'8 es'8 g'8~} g'8 aes'4 f'4 des'8~ 
      | des'8 g'4 aes'4 f'8~ \tuplet 3/2 {f'8 des'8 fis'8} 
      | \tuplet 3/2 {g'8 aes'8 f'8~} f'8 es'4 aes'4 a'8~ 
      | a'8 f'4 f'8 \tuplet 3/2 {b'8 c''8 aes'8~} aes'4 
      | bes'8 aes'8 ges'8 e'8 \tuplet 3/2 {aes'8 g'8 es'8} f'16 g'16 f'8 
      | e'8 des'8 bes8. es'16~ es'16 d'8 des'16~ des'8 b8 
      | \tuplet 3/2 {c'8 b8 ges8~} ges4 b4 \tuplet 3/2 {f8 ges8 aes8} 
      | r1 
      \bar "||" \mark \default r4 r8. c''16~ c''4 es''4~ 
      | es''4. c''8~ \tuplet 3/2 {c''8 b'8 es''8~} es''8. c''16~ 
      | c''8 bes''8 es''2~ es''8. c''16~ 
      | \tuplet 3/2 {c''8 f''8 es''8~} es''4 c''8 b''8 es''4~ 
      | es''4. c''8~ c''2 
      | c''8 f''8 es''4 c''8 b''8 bes''8 es''8~ 
      | es''2 c''4 b'4\bendAfter #-4  
      | r2 c''8 f''16 es''16~ es''4~ 
      | es''4 c''4. f'4 f'8 
      | aes'8. bes'16~ bes'4 aes'4 a'4~ 
      | a'4. g'8 f'8 c'8 bes8 g8 
      | es'4 e'4 r2 
      \bar "||" \mark \default r2. r8 a'8 
      | g'8 es'8 r2 r8 c'8~ 
      | c'4 g16 a8 c'16~ c'8 f'8 \tuplet 3/2 {bes'4 aes'8} 
      | f'8 c'8 aes'8. fis'16 es'8 b8 e'8 aes'8 
      | ges'8 e'4. e'8 es'8 d'8 des'8~ 
      | des'16 b16 bes4 a8 fis8 g8 aes4~ 
      | aes8 r8 r2 r8 bes8 
      | r4 r8 a8 f8 d8 \tuplet 3/2 {es8 f8 g8} 
      | \tuplet 3/2 {e4 f8~} f16 g8 aes16~ aes16 bes8 c'16~ c'16 d'8 es'16~ 
      | es'16 cis'8 d'16 r2 r8. a'16~ 
      | a'8 bes'8 \tuplet 3/2 {ges'8 a'8 g'8~} g'16 d'8 f'16~ \tuplet 3/2 {f'8 d'8 e'8~} 
      | e'8 d'8 c'8 b8 \tuplet 3/2 {bes8 c'8 d'8} f'8 a'8 
      \bar "||" \mark \default aes'8 e'8~ \tuplet 3/2 {e'8 bes8 g'8~} g'8 cis'8 d'8 es'8~ 
      | es'4.. g'16~ g'8. d'16~ d'8 es'8~ 
      | es'8 g'8~ g'8. d'16~ d'8 es'8~ es'8. g'16~ 
      | g'8. d'16~ d'8 es'4 aes'4. 
      | r2 \tuplet 3/2 {c''4 f'8} g'4 
      | aes'4 c''4 g'4 aes'4 
      | c''4 g'4 g'4~ g'16 d'8 es'16~ 
      | es'4 g'4 d'8 es'4 r8 
      | r8 aes'4 r8 r2 
      | r4 r16 a'8 b'16 bes'8 ges'4 aes'8~ 
      | aes'8 c'8 r2. 
      | r1 
      \bar "||" \mark \default r2 c''16 des''16 es''4.~ 
      | es''2 \tuplet 5/4 {c''8 cis''16 d''16 bes'16~} \tuplet 3/2 {bes'8 c''8 aes'8~} 
      | aes'16 bes'8 f'16~ f'16 aes'16 f'16 es'16~ \tuplet 3/2 {es'8 f'8 c'8~} c'8 es'8 
      | aes'8 ges'4 f'8 \tuplet 3/2 {g'8 aes'8 a'8} f'8 d'8 
      | g'8 e'8 \tuplet 3/2 {f'8 e'4} es'8 des'8 bes4 
      | d'8 des'8 \tuplet 3/2 {c'4 b8} bes8 a8 \tuplet 3/2 {aes4 g8} 
      | ges8. d16~ d8 f8 r2 
      | \tuplet 3/2 {g4 e8} f8 g8 a16 b16 bes8 c'8 d'8 
      | es'8. f'16~ f'8 d'4 bes8~ bes8. f16~ 
      | \tuplet 3/2 {f8 d8 es8~} es8. a16~ a8. c'16~ c'16 a8 bes16~ 
      | bes8 c'8 d'8 a'8~ a'16 aes'8 g'16~ g'16 ges'8 f'16~ 
      | \tuplet 3/2 {f'8 e'8 es'8~} \tuplet 3/2 {es'8 des'8 c'8} bes8 r8 r4\bar  ".."
    }
    >>
>>    
}
