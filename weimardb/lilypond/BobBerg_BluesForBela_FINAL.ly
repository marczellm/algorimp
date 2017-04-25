\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues for Bela"
  composer = "Bob Berg"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \minor
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
      | s2 r2 
      | c1:min7 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | g1:7 | c1:min7 | s1 | s1 | c1:7 
      | f1:min7 | s1 | c1:min7 | s1 | s1 | g1:7 | c1:min7 | g1:7 
      | c1:min7 | s1 | s1 | c1:7 | f1:min | g1:7 | c1:min7 | s1 
      | aes1:7 | g1:7 | c1:min7 | g1:7 | c1:min7 | s1 | s1 | s1 
      | f1:min7 | s1 | c1:min7 | s1 | g1:7 | s1 | c1:min7 | g1:7 
      | c1:min7 | s1 | s1 | s1 | f1:min7 | s1 | c1:min7 | s2 d2:min7 
      | g1:7 | c1:min7 | s1 | s1 | s1 | s1 | s1 | f1:min7 
      | g2:7 c2:min7 | s1 | d1:dim7 | g1:7 | c1:min7 | g1:7 | c1:min7 | s1 
      | s1 | s1 | f1:min7 | s1 | c1:min7 | s1 | g1:7 | s1 
      | c1:min7 | g1:7 | c1:min7 | s1 | s1 | s1 | f1:min7 | s1 
      | c1:min7 | s1 | g1:7 | c1:min7 | s1 | g1:7|
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
     
      \bar "||" \mark \default r2 es''2~ 
      \bar "||" \mark \default es''1~ 
      | es''4. c''16 b'16 bes'2~ 
      | bes'2. bes'4 
      | bes'4 es''2.~ 
      | es''4. c''8 bes'4. bes'8~ 
      | bes'4. c''16 f'16 bes'4 f'4\bendAfter #-4  
      | r2. r8 bes'8~ 
      | \tuplet 3/2 {bes'8 d''8\bendAfter #+4  es''8~} es''2 des''8 b'8 
      | bes'8 a'8 aes'8 g'8 fis'8 g'8 aes'8 fis'8 
      | g'8 ges'8 f'8 e'8 es'8 cis'8 aes8 es8 
      | f16\bendAfter #+4  bes16 f8 des8 f8 es4 \tuplet 3/2 {bes,4 aes,8~} 
      | aes,4 r2. 
      \bar "||" \mark \default r16 g'8 f'16~ f'8 g'8~ g'4. g'8~ 
      | g'8. ges'16~ ges'8 aes'8 \tuplet 3/2 {g'8 es'8 b8} aes8 es'8~ 
      | \tuplet 3/2 {es'8 d'8 b8~} b8 g8 c'8 d'16 es'16~ es'8 f'8 
      | g'8 aes'8 g'8 f'8 e'8 f'8 g'8 aes'8 
      | f'8 g'8 aes'8 bes'8 c''8 es''8 c''8 aes'8 
      | g'8 bes'8 aes'8 e'8 \tuplet 3/2 {fis'8\bendAfter #+4  g'8 ges'8} f'8 e'8 
      | es'8 f'8 g'8 es'8 es'16 des'16 es'16 c'16~ c'8 r8 
      | r2 r8 c''8 bes'4 
      | c''8. bes'16~ bes'8 c''4. c''8. b'16~ 
      | b'4. b'8 bes'8 a'8 aes'8 bes'8 
      | aes'8 g'8 ges'8 aes'8 g'8 ges'8 f'8 e'8 
      | es'8 f'16 g'16~ g'16\glissando  fis'16 es'8 f'8 es'8 bes8 g8 
      \bar "||" \mark \default es'8 ges8 aes8 r8 r2 
      | r8 a,8 es8 bes8 c8 d8 f8 e8 
      | es8 aes8 b8 cis'8 d'8 des'8 b8 aes8 
      | des'4. b'8 ges'4 aes'8 b'16 c''16 
      | des''8 r8 r8 c''8 \tuplet 6/4 {b'16 bes'16 ges'4~} \tuplet 5/4 {ges'8 c''16 b'16 bes'16~} 
      | bes'16 g'16 fis'16 es'16~ es'8 g16 f'16~ \tuplet 3/2 {f'8 es'8 b8} \tuplet 3/2 {aes4 es'8~} 
      | es'8 d'8 b16 g8 c'16~ c'8 d'8 es'8 f'8 
      | fis'8 g'8 aes'8 fis'8 g'16 ges'8 f'16~ \tuplet 3/2 {f'8 e'8 es'8~} 
      | es'8 c'8 aes8 es8 bes2 
      | r2 r8 bes'8 aes'4 
      | \tuplet 3/2 {bes'4 aes'8~} aes'8 a'16\bendAfter #+4  bes'16 aes'4 bes'8 ges'8 
      | bes'8. es''16~ es''2.~ 
      \bar "||" \mark \default es''4 r4 \tuplet 3/2 {g'4 a'8~} a'8 r8 
      | r4 r8 g'8~ g'8. es''16~ \tuplet 6/4 {es''4 f''16 g''16} 
      | a''2~ a''8. g''16 bes'8 d''8 
      | bes'8 g'16 a'16~ \tuplet 3/2 {a'8 f'8 d'8~} d'8 bes8 es'8 c'8 
      | aes8 f16 a16~ a8 f8 a,8 f8 d8 es8 
      | bes,8 aes,4. r2 
      | r2. bes'4 
      | c''8 bes'8 b'16 bes'8 a'16~ a'8 bes'8 aes'8 g'8 
      | \tuplet 3/2 {ges'8 aes'4} g'8 ges'16 f'16~ f'16 e'8 es'16~ es'8 f'8 
      | g'8 es'8 \tuplet 3/2 {f'8 e'8 es'8~} es'8 g'8 f'8 d'16 b16~ 
      | b8 g8 es'8 d'8 b8 g8 d'8 es'8~ 
      | es'2. d'16\bendAfter #+4  e'16 cis'16 b16 
      \bar "||" \mark \default bes16 aes16 es'16 des'16 \tuplet 6/4 {b8 bes16 aes16 es'8} \tuplet 3/2 {des'8 b8 bes8} r4 
      | r4 \tuplet 3/2 {r8 es'8 des'8} \tuplet 3/2 {b8 bes8 es'8} \tuplet 3/2 {des'8 b8 bes8} 
      | \tuplet 3/2 {es'8 des'8 b8} \tuplet 3/2 {bes8 es'8 des'8} b8 bes8 r4 
      | r4 r8 ges'16\bendAfter #+4  aes'16~ aes'2~ 
      | aes'4 g'8. aes'16~ aes'8 e'8 \tuplet 3/2 {ges'8 aes'4} 
      | f'16 des'8 b16~ \tuplet 3/2 {b8 g8 d'8~} d'16 des'8 aes16~ aes8 d8 
      | b8 f8 des16 f8 es16~ es8. f16~ f8 g8~ 
      | g8 r8 r4 r8 es8 f16 aes16 b16 f16~ 
      | \tuplet 3/2 {f8 aes8 g8} b8 es'8 b8 es'8 f'8 aes'8 
      | es'8 f'8 aes'8 b'8 es''8 b'16 bes'16~ bes'8 r8 
      | r4 r8. g'16~ \tuplet 3/2 {g'8 bes'8 c''8~} c''8 es''8 
      \bar "||" \mark \default \tuplet 3/2 {ges''8 aes''8\bendAfter #+4  a''8~} a''2.~ 
      | a''1~ 
      | a''2~ a''8 g'8 a'8 c''8~ 
      | c''16 es''8 g''16\bendAfter #+4  a''4.\bendAfter #-4  r8 r4 
      | r4 r8 g'8 \tuplet 3/2 {a'8 c''4} es''8 g''8 
      | bes''2... g'16~ 
      | \tuplet 3/2 {g'8 bes'8 c''8~} c''16 es''8 g''16~ g''8 a''4.~ 
      | a''2 r2 
      | r4 \tuplet 3/2 {es'4 f'8} aes'8 b'8 es''8 f''8 
      | es''8 b'8 bes'8 a'8 aes'8 bes'16 aes'16~ aes'8 g'8 
      | fis'8 g'8 g'8 ges'8 f'8 e'8 es'8 f'8 
      \bar "||" \mark \default g'8 es'16 f'16~ f'8 d'8 b16 g8 es'16~ es'8 d'8 
      | \tuplet 3/2 {b8 g4} a8 f16 bes,16 f4 g,4 
      | \tuplet 3/2 {d'4 b8~} b8 r8 r4 r8 bes,16 bes16~ 
      | bes16 a'16 bes'16 bes16 c8 f8 a8 des'8 bes'8 aes'8 
      | ges'8 bes'16 aes'16 es'8 f'8 a'8 b'16 g'16~ g'8 f'16 aes'16~ 
      | aes'8 b'16 bes'16~ bes'16 b'16 a'8 \tuplet 3/2 {aes'8 g'8 fis'8} g'4 
      | aes'8. ges'16 aes'8 ges'8 des'8 r8 r4 
      | r4 ges8 aes8 bes16 b16 des'8 \tuplet 3/2 {b8 des'4} 
      | ges'8 aes'8~ aes'16 fis'16 aes'8~ \tuplet 3/2 {aes'8 b'8 cis''8~} cis''8 r8 
      | r4 \tuplet 3/2 {d''8 cis''8 b'8} bes'2 
      | \tuplet 3/2 {d''4 bes'8~} bes'8 r8 r8 d''8 bes'8 aes'8 
      | ges'8 aes'16 bes'16~ bes'16 cis''8 d''16~ d''4. d''8 
      \bar "||" \mark \default bes'4 es''4 \tuplet 6/4 {des''16 c''16 b'16 bes'8.~} bes'4~ 
      | bes'8 bes'8~ \tuplet 6/4 {bes'4 aes'16 bes'16} aes'8 bes'16 aes'16~ aes'8 g'16 ges'16~ 
      | ges'16 aes'8 g'16~ g'16 ges'8 f'16~ f'16 e'8 es'16~ \tuplet 3/2 {es'8 f'8 g'8~} 
      | g'16 es'8 f'16~ f'4.. es''16~ es''16 des''16 c''8 
      | r2 \tuplet 3/2 {r8 c''8 d''8} f''4~ 
      | f''2~ f''8\bendAfter #+4  aes''8~ aes''8. es''16~ 
      | \tuplet 3/2 {es''8 f''8 es''8} b'8. aes'16~ aes'16 a'16 f'16 d'16~ d'8 bes8 
      | es'8 d'8 \tuplet 3/2 {b8 g4} c'8 d'8 es'8 f'16 fis'16~ 
      | \tuplet 3/2 {fis'8 g'8 aes'8~} aes'16 fis'8\bendAfter #+4  g'16~ g'16 ges'8 f'16~ f'16 e'8 es'16~ 
      | \tuplet 3/2 {es'8 f'8 g'8~} \tuplet 3/2 {g'8 es'8 f'8} es'8 b8 r4 
      | r4 \tuplet 6/4 {r16 d''8.\glissando  des''16 c''16} \tuplet 3/2 {b'8\bendAfter #+4  c''8 a'8} aes'8 g'8 
      | fis'8 aes'8 g'8. ges'16 f'16 e'8 es'16~ es'4\bar  ".."
    }
    >>
>>    
}
