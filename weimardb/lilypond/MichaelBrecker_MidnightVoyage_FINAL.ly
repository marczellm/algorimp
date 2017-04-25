\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Midnight Voyage"
  composer = "Michael Brecker"
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
      | s4 r2. 
      | c1:min6 | d2:min5-7 g2:7 | c1:min6 | a2:7sus4 a2:7 | aes2:7sus4 aes2:7 | g1:9+ | c1:min | g1:9+ 
      | c1:min6 | d2:min5-7 g2:7 | c1:min6 | a2:7sus4 a2:7 | es2:min7 aes2:7 | g1:7 | c1:min | c1:9+ 
      | f1:min7 | g1:min7 | f1:min7 | a1:9+ | aes2:7sus4 aes2:7 | g1:7 | c1:min | c1:9+ 
      | f1:min7 | g1:min7 | f1:min7 | a1:9+ | es2:min7 aes2:7 | g1:7 | c1:min | g1:9+ 
      | c1:min | d2:min5-7 g2:7 | c1:min7 | a2:7sus4 a2:7 | aes2:7sus4 aes2:7 | g1:7 | c1:min | g1:7 
      | c1:min | d2:min5-7 g2:7 | c1:min | a2:7sus4 a2:7 | aes2:7sus4 aes2:7 | g1:7 | c1:min | d2:min5-7 g2:7 
      | c1:min | a2:7sus4 a2:7 | aes2:7sus4 a2:7 | g1:7 | c1:min | c1:9+ | f1:min7 | g1:min7 
      | f1:min7 | a1:9+ | es2:min7 aes2:7 | g1:7 | c1:min | c1:9+ | f1:min7 | g1:min7 
      | f1:min7 | a1:9+ | es2:min7 aes2:7 | g1:7 | c1:min7 | g1:7 | c1:min | d2:min5-7 g2:7 
      | c1:min | a1:7sus4 | a1:7 | aes2:7sus4 aes2:7 | g1:7 | c1:min | g1:7 | c1:min 
      | r1|
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


      \tempo 4 = 126
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 \tuplet 3/2 {r8 g8 c'8} \tuplet 3/2 {es'8 f'8 g'8} 
      \bar "||" \mark \default \tuplet 3/2 {es'8 f'4~} f'4 f'4 es'16 f'8. 
      | r2 r8 g16 c'16 \tuplet 3/2 {es'8 f'8 ges'8} 
      | f'4.. es'16 f'4 es'8 ges'8~ 
      | ges'8\bendAfter #-4  r8 r2 \tuplet 3/2 {r8 fis'8 es'8} 
      | f'8 e'8~ e'16 es'8 des'16~ des'16 es'16 d'16 c'16~ c'16 b16 d'16 f'16 
      | bes'4. aes'16 bes'16 f'4 \tuplet 3/2 {g'4 es'8} 
      | f'8 es'16 c'16 f16 es16 f16 es16 \tuplet 3/2 {g8 c8 es8} r4 
      | r2 cis''8 d''8~ d''16 c''8 bes'16~ 
      \bar "||" bes'8 a'8~ a'16 g'8 f'16~ f'8 es'8~ es'16 d'8 c'16~ 
      | c'16 b8 d'16~ \tuplet 6/4 {d'16 bes8. bes16 a16} aes4 fis8. g16~ 
      | g16 es'16 f'8 \tuplet 3/2 {es'4 c'8~} c'8 r8 r8 a'16 aes'16~ 
      | aes'16 g'8 a'16~ a'8 b'16 g'16~ g'16 fis'16 g'16 ges'16 f'16. e'8 d'32~ 
      | d'16 es'8 f'16~ f'16 ges'8 aes'16~ \tuplet 6/4 {aes'8 bes'8. des''16~} des''16 c''8 bes'16~ 
      | bes'16 b'8 d'16 f'8 g'8 aes'8 g'8 f'8 d'8 
      | es'4~ es'16 g16 a16 d'16 c'4 r4 
      | r2 c'8 f'8 aes'8 c''8 
      \bar "||" bes'2 bes'4. bes'8~ 
      | bes'4~ \tuplet 6/4 {bes'16 g'4 d'16} bes'4 bes'4~ 
      | bes'4 \tuplet 3/2 {aes'8 f'8 c'8} bes4 aes8 r8 
      | r2 c''4 \tuplet 3/2 {bes'4 aes'8~} 
      | aes'8. g'16~ \tuplet 6/4 {g'16 ges'8 a'16 ges'16 f'16~} f'8 es'8 cis'8 d'8 
      | \tuplet 6/4 {c'8 b8. d'16~} d'16 f'8 g'16 aes'4 \tuplet 3/2 {g'4 f'8} 
      | es'4 d'8. c'16~ c'4. es'16 bes16 
      | e'16 g'16 ges'8~ \tuplet 5/4 {ges'8 e'16 es'16 d'16} des'16 es'16 c'16 d'16 e'16 f'16 ges'16 aes'16 
      | bes'16 des''16 c''16 bes'16~ bes'16 aes'16 bes'16 c''16 bes'4~ \tuplet 6/4 {bes'4 g'16 g'16} 
      | \tuplet 3/2 {d'8 bes16 r8.} r4 \tuplet 6/4 {r4 f16 g16} \tuplet 10/8 {aes32 bes32 c'16. d'32 es'32 f'32 g'32 aes'32} 
      | \tuplet 6/4 {bes'16 b'16 c''8 bes'16 b'16} bes'16 aes'8. r4 r16 c''16 bes'16 des''16 
      | \tuplet 6/4 {c''16 b'16 bes'16 a'8.~} \tuplet 5/4 {a'8. a'16 f'16} e'16 es'8 cis'16~ \tuplet 3/2 {cis'8 aes8 f8} 
      | es'8 ges'8 bes'8 des''8 es''8 f''4 es''8 
      | d''8\bendAfter #+4  c''8~ c''16 b'16 d'16 f'16~ f'16 g'16\glissando  aes'16 g'16~ g'16 f'8 d'16 
      | es'8 g8 \tuplet 3/2 {a8 d'8 c'8~} c'8\bendAfter #-4  r8 r4 
      | r4 \tuplet 3/2 {fis'8 es'8 f'8} \tuplet 3/2 {es'8 f'8 es'8} \tuplet 3/2 {f'8 c'8 es'8} 
      \bar "||" f'8 r8 r8 es'4 f'8~ f'8. es'16~ 
      | \tuplet 3/2 {es'8 f'8 f'8~} f'16 f'8 es'16~ es'16 f'8 f'16 \tuplet 3/2 {fis'4 c'8} 
      | es'4 \tuplet 3/2 {f'4 c'8~} c'4 des'16 f'16 aes'16 b'16 
      | \tuplet 3/2 {f'8 fis'8 a'8} \tuplet 6/4 {fis'16 g'16 ges'16 f'8 e'16} es'16 d'16 cis'16 f'16 es'16 des'16 c'16 b16 
      | \tuplet 5/4 {bes16 ges16 ges16 f16 e16} es16 ges16 bes16 des'16 f'16 es'16 e'16 d'16 es'16 cis'16 d'16 c'16 
      | b4 r8 d'8~ d'16 b'16 b'16 bes'16\glissando  g'16 es'8 g'16 
      | \tuplet 3/2 {g'4 es'8} b4 d'4 es'8 r8 
      | r4 r8. g'16~ g'8. c''16~ c''8 es''8 
      \bar "||" \mark \default r8. f'16 r4 es'4 f'4 
      | g'8 r8 r8. es''16~ es''8 ges'8 \tuplet 3/2 {f'4 es'8} 
      | f'4 es'8 c'8~ \tuplet 6/4 {c'8 a'16 bes'16 a'16 aes'16~} \tuplet 6/4 {aes'8 g'8. f'16~} 
      | f'16. fis'8 a'32~ a'8 e'8 \tuplet 3/2 {g'4 fis'8} d'8 b8~ 
      | b16 es'8 ges'16~ \tuplet 5/4 {ges'16 bes'8. des''16~} \tuplet 3/2 {des''8 es''8 f''8~} f''4~ 
      | f''16 d''16 es''16 b'16~ b'8 bes'8 a'8 aes'8 f'8 es'8 
      \bar "||" g'8 g8 a8 d'8 c'4 \tuplet 3/2 {d'4 es'8} 
      | r1 
      | r4 r8 c'4 a'8 \tuplet 3/2 {c''4 d''8~} 
      | d''16 d''16 es''16\bendAfter #+4  d''16 es''8 d''8 c''4~ c''16 a'8 g'16~ 
      | g'4 es'8 d'4. r4 
      | r8 a,8~ \tuplet 6/4 {a,8. e16 g16 b16~} \tuplet 6/4 {b16 cis8 e16 g16 b16} fis4~ 
      | fis8 bes,8~ bes,16 es16 ges16 bes16 \tuplet 6/4 {es8. ges16 bes16 des'16} f4~ 
      | f16 aes,16 es16 aes16 \tuplet 3/2 {des8 f8 aes8} \tuplet 6/4 {b16 es'16 des'16 b8 aes16} g16 es'16 b8 
      \bar "||" d'16 g16 b16 d'16 c'16. d'16 es'32 f'32 g'32~ g'16 c''16 g'16 f'16 es'16 g'16 es'16 g'16 
      | e'16 aes'16 ges'16 e'16 es'16 des'16 c'16 bes16 a16 g16 aes16 bes16 c'16 d'16 es'16 f'16 
      | g'4\glissando  bes'8 r8 r4 r8. g'16~ 
      | g'8 aes'8 \tuplet 3/2 {c''4 bes'8~} bes'2 
      | bes'4. g'16 es'16~ es'8 c'8 bes8 r8 
      | r2 r16 es''16\bendAfter #+4  f''8~ f''16 es''8 des''16~ 
      | des''16 c''8 bes'16~ bes'16 aes'16 bes'16 aes'16\glissando  g'8 ges'8 des''8 bes'8 
      | \tuplet 7/8 {ges'8 f'16 es'32~} \tuplet 6/4 {es'8 d'8. c'16~} c'16 b8 aes'16~ aes'16 g'8 f'16~ 
      | f'16 es'8 f'16~ f'16 g'32~ g'8 a'32 \tuplet 3/2 {b'4 c''8} d''4~ 
      | d''8 es''8~ es''8.. es''32~ es''4. des''16\bendAfter #+4  es''16~ 
      | es''8 r8 r8 bes'16 aes'16 g'4 \tuplet 3/2 {f'4 es'8} 
      | d'4 c'8 bes8 r2 
      | r8 f16 bes16 \tuplet 3/2 {c'8 es'8 f'8} \tuplet 3/2 {g'8 aes'8 bes'8} \tuplet 3/2 {c''8 d''8\bendAfter #+4  es''8} 
      | es''16 f''8.~ f''8 es''16 des''16 c''4 \tuplet 3/2 {bes'4 aes'8~} 
      | \tuplet 3/2 {aes'8 f'8 ges'8~} ges'16 bes'8 des''16~ des''16 es''16 f''8 \tuplet 3/2 {es''4 e''8~} 
      | e''8 r8 r8. b'16~ \tuplet 6/4 {b'8 bes'16\bendAfter #+4  b'16 bes'16 aes'16~} \tuplet 5/4 {aes'16 es'8. f'16} 
      \bar "||" \tuplet 3/2 {g'4 es'8} c'4 \tuplet 3/2 {es'8 f'4} es'8 r8 
      | r8 g'8 \tuplet 3/2 {bes'4 c''8~} c''8 es''8~ es''16 f''8 es''16 
      | r4 r16 f'8 es'16 f'4 g'8 es''8 
      | r4 fis'8 es'8 \tuplet 3/2 {f'4 es'8} \tuplet 3/2 {c'4 es''8~} 
      | es''8 c''16 bes'16 \tuplet 3/2 {g'8 ges'8 f'8} es'16 es'16 c'16 bes16 g8 f16 fis16~ 
      | fis32 g16. fis32 g32 a32 b32 \tuplet 12/8 {cis'16. d'16 e'16 fis'32 g'32 aes'32 a'32 b'32} des''16 c''8. \tuplet 3/2 {aes'4 bes'8~} 
      | bes'8. bes'16~ bes'16 fis'16 es'16 bes16 f'4 es'8 r8 
      | r4 r16 g'8 fis'16 \tuplet 3/2 {g'4 es'8} c'8 g8 
      | d'4~ d'16 es'8 f'16~ \tuplet 3/2 {f'8 es'8 f'8~} \tuplet 6/4 {f'8 es'8 d'16 c'16~} 
      | c'16 b8 d'16~ d'16 f'8 g'16~ g'16 g'16 aes'16 g'16 \tuplet 3/2 {f'4 d'8} 
      \bar "||" es'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
