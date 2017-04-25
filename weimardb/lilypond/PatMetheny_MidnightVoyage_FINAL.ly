\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Midnight Voyage"
  composer = "Pat Metheny"
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
      
      | c1:min7 | g1:9- | c1:min7 | a1:7sus4 | aes1:7 | g1:9- | c1:min7 | s1 
      | s1 | g1:9- | c1:min7 | a1:7sus4 | aes1:7 | g1:7 | c1:min7 | s1 
      | f1:min7 | g1:min7 | f1:min7 | a1:13-.9+11+ | aes1:7 | g1:9- | c1:min7 | s1 
      | f1:min7 | g1:min7 | f1:min7 | a1:13-.9+11+ | aes1:7 | g1:9- | c1:min7 | s1 
      | s1 | g1:9- | c1:min7 | a1:7sus4 | aes1:7 | g1:9- | c1:min7 | s1 
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


      \tempo 4 = 128
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 g'4~ g'16 c''8 f'16 \tuplet 3/2 {ges'8 f'4} 
      | f'4~ \tuplet 6/4 {f'16 es'8. fis'16 g'16~} g'8 c'8 \tuplet 3/2 {c'4 c'8~} 
      | \tuplet 6/4 {c'16 f'16 ges'16 f'8 es'16~} es'16 c'8 g16~ \tuplet 3/2 {g8 bes8 c'8~} c'16 c'8 bes16~ 
      | \tuplet 3/2 {bes8 cis'8 e'8~} e'16 g'16 aes'16\glissando  b'16~ b'16 a'8 cis'16 e'8. es'16 
      | r2 \tuplet 6/4 {r16 aes'8. ges'16 ges'16~} ges'16 f'16 f'16 es'16 
      | cis'16 d'16 d'16 des'16~ \tuplet 5/4 {des'16 c'16 bes16 b16 aes16~} aes8 g8 g16 ges8 f16~ 
      | f16 es16 c16 c16 bes,8 c8 r4 \tuplet 6/4 {r16 c16 des16 f16 aes8} 
      | bes16 c'32 des'16 es'16 f'32~ f'16 e'16 es'16 c'16 d'16 b16 bes16 aes16 \tuplet 6/4 {g8 ges8 f16 d16} 
      \bar "||" es8 f8 g8 bes8 c'8 es'8 f'16 g'8 bes'16 
      | bes'8 aes'8 g'16 e'16 es'16 b16 bes16 a16 aes16 g16 ges16 d16 f16 g16 
      | es16 f8 g16 \tuplet 3/2 {a8 bes8 c'8} \tuplet 3/2 {bes8 es'8 g'8~} \tuplet 3/2 {g'8 bes'8 g'8} 
      | c''16 d''16 r8 r4 r16 c''16 b'16 g'16~ \tuplet 6/4 {g'16 fis'16 e'8 d'16 bes16} 
      | \tuplet 3/2 {des'8 ges'8 f'8} e'8 es'16 f'16 ges'16 aes'16 f'16 e'16 es'16 cis'16 d'16 c'16 
      | b16 d'16 aes16 b16 f16 aes16 d16 f16 \tuplet 3/2 {b,8 d8 aes,8} \tuplet 3/2 {g,4 aes,8~} 
      | aes,16 g,8 g,16~ g,16 c8 c16 es8 es8~ es16 fis16 g16 c'16~ 
      | c'16 es'8 es'16~ es'16 f'16 g'16 g'16 aes'16 bes'8\glissando  c''16~ c''16 es''8\glissando  f''16~ 
      \bar "||" f''16 fis''16 g''16 aes''16 g''8 f''8 \tuplet 3/2 {es''4 c''8~} \tuplet 6/4 {c''16 es''8. f''16 g''16} 
      | f''4 c''16 d''8 bes'16 a'8 g'16 bes'16 es''8 d''16 es''16 
      | d''8 c''8 r4 r8 bes'16 g'16 aes'16 c''16 bes'16 a'16~ 
      | a'16 aes'16 g'16 e'16 f'16 g'16 aes'16 bes'16 \tuplet 6/4 {g'8 ges'8 f'16 d'16} \tuplet 6/4 {e'8 des'8 c'16 bes16} 
      | \tuplet 3/2 {a8 aes8 g8} \tuplet 3/2 {ges8 ges'8 es'8} es'8. c'16 b16 a16 aes16 ges16 
      | f8. g16 aes16 bes16 b16 es'16 g'16 a'16 bes'16 a'16 aes'16 e'16 g'16 es'16~ 
      | \tuplet 6/4 {es'16 d'16 b8 bes16 aes16} \tuplet 3/2 {g8 ges8 f8} des16 es8 es16~ es16 f16 g16 g16 
      | bes8 c'16 c'16~ c'16 d'16 e'16 e'16 e'16 f'16 g'16 g'16 bes'16 b'16 c''16 des''16~ 
      | \tuplet 6/4 {des''16 bes'8 c''16 c''16 b'16} \tuplet 6/4 {bes'8 aes'8. f'16~} f'16 aes'16 a'16 f''16 g''16 f''8 es''16~ 
      | es''8 d''8 \tuplet 5/4 {d''8 e''16 f''16 g''16~} g''8 bes'8~ \tuplet 3/2 {bes'8 bes'8 d''8~} 
      | d''16 es''16 d''16 es''16~ es''16 d''16 es''16 d''16 \tuplet 6/4 {es''8. aes''16 b''16 bes''16~} bes''16 f''16 g''8 
      | es''16 f''8.\glissando  a''4 r16 f''16 es''16 d''16 \tuplet 3/2 {des''8 es''8 e''8} 
      | \tuplet 3/2 {es''8 d''8 des''8~} des''16 c''16 aes'16 g'16~ \tuplet 7/8 {g'32 ges'16 es'16. bes32~} bes16 a16 a'8 
      | g'16 aes'16 g'16 ges'16~ \tuplet 6/4 {ges'16 e'16 f'16 f'8 f'16~} f'16 f'16 f'16 f'16~ f'16 f'16 g'16 bes'16~ 
      | \tuplet 6/4 {bes'16 f'16 fis'16 g'16 bes'8} \tuplet 3/2 {f'8 g'8 bes'8} \tuplet 3/2 {g'8 f'8 es'8} \tuplet 3/2 {c'4 es'8~} 
      | es'16 es'16 f'8~ \tuplet 6/4 {f'16 es'8. fis'16 g'16~} g'4 \tuplet 3/2 {c''4 es''8} 
      \bar "||" fis''16 g''8. fis''16 g''8.~ g''4\bendAfter #-4  \tuplet 3/2 {c''4 es''8~} 
      | \tuplet 3/2 {es''8 e''8 f''8} es''8 fis''16 g''16~ g''8 g'8 c''8 es''8 
      | \tuplet 3/2 {fis''8 g''8 fis''8} g''2\bendAfter #-4  \tuplet 3/2 {c''8 cis''8 d''8~} 
      | d''16 b'8 g'16 \tuplet 6/4 {fis'8 e'8 d'16 c'16} \tuplet 3/2 {cis'8 ges'8 f'8} \tuplet 6/4 {es'16 e'16 fis'8 g'16 aes'16~} 
      | \tuplet 6/4 {aes'16 a'16 bes'16 b'8 c''16~} c''16 des''8 c''16~ \tuplet 3/2 {c''8 b'8 bes'8} g'16 aes'16 f'16 es'16 
      | d'16 c'16 bes16 b16 \tuplet 3/2 {d'8 aes8 fis8} g8 ges4 es8 
      | c4 \tuplet 3/2 {es4 c8} \tuplet 3/2 {f8 g4} \tuplet 6/4 {bes4~ bes16 c'16~} 
      | c'4 es'8 e'16 f'16 aes'16 bes'4. g'16~ 
      \bar "||" g'2 r2\bar  ".."
    }
    >>
>>    
}
