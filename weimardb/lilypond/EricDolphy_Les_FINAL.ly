\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Les"
  composer = "Eric Dolphy"
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
      
      | f1:13-.9+11+ | bes1:13-.9+11+ | f1:13-.9+11+ | s1 | bes1:7 | b1:dim7 | f1:7 | des2:min7 ges2:7 
      | g2:min7 c2:7 | aes2:min7 des2:775+ | a2:min7 d2:7 | g1:13-.9+11+ | c2 des2:/c | d2:/c es2:/c | f1:13-.9+11+ | bes1:13-.9+11+ 
      | f1:13-.9+11+ | s1 | bes1:7 | b1:dim7 | f1:7 | des2:min7 ges2:7 | g2:7 c2:7 | aes2:min7 des2:775+ 
      | a2:min7 d2:7 | g1:13-.9+11+ | c2 des2:/c | d2:/c es2:/c | f1:13-.9+11+ | bes1:13-.9+11+ | f1:13-.9+11+ | s1 
      | bes1:7 | b1:dim7 | f1:7 | des2:min7 ges2:7 | g2:min7 c2:7 | aes2:min7 des2:775+ | a2:min7 d2:7 | g1:13-.9+11+ 
      | c2 des2:/c | d2:/c es2:/c | f1:13-.9+11+ | bes1:13-.9+11+ | f1:13-.9+11+ | s1 | bes1:7 | b1:dim7 
      | f1:7 | des2:min7 ges2:7 | g2:min7 c2:7 | aes2:min7 des2:775+ | a2:min7 d2:7 | g1:13-.9+11+ | c2 des2:/c | d2:/c es2:/c 
      | f1:13-.9+11+|
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


      \tempo 4 = 235
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default c''8 des''8 bes'8 ges'8 \tuplet 3/2 {des'4 a8} des'8 b8 
      | c'8. c'16~ c'16 aes8 e'16 \tuplet 3/2 {aes'4 bes'8} ges'8 es'8 
      | bes4 des'4 a16 bes8 des'16 r4 
      | r8 des'16 es'16 fis'16 g'16 aes'16 b'16 es''16 f''16 fis''16 g''16 \tuplet 3/2 {f''8 es''8 c''8} 
      | e''16 es''16 d''16 c''16 aes'16 g'16 es'16 des'16 es'16 g'16 es'16 f'16 \tuplet 3/2 {fis'8 g'8 aes'8} 
      | \tuplet 5/4 {b'16 aes'16 g'16 f'16 dis'16} cis'16 b8 dis'16 gis'8 r8 r8 dis'8 
      | ges'8 c''8 bes'8 ges'8 des'8 a8 des'8 bes16 fis16 
      | \tuplet 3/2 {g8 fis8 gis8} c'16 dis'16 fis'16 g'16 gis'8 c''16 dis''16 cis''16 bes'16 c''16 cis''16 
      | \tuplet 3/2 {es''8 c''8 g'8~} \tuplet 3/2 {g'8 gis'8 a'8~} a'8 ges'8 d'8. aes16~ 
      | aes8 bes8 b8 c'8~ \tuplet 6/4 {c'16\glissando  es'8. c'16 bes16} des'8 f8 
      | aes16 bes16 des'8 c'16 des'16 c'16 bes16~ bes16 a16 c'16 e'16 g'8 e'8 
      | \tuplet 6/4 {fis'4 e''16 ges''16~} ges''8 d''4 bes'8 ges'8 r8 
      | r4 dis''8\glissando  e''8\glissando  g''8. ges''16 f''8 d''16 c''16 
      | a'16 g'16 gis'16 a'16 \tuplet 6/4 {bes'8 g'8 fis'16 dis'16} \tuplet 3/2 {c'8 bes8 ges8} des'16 b8 c'16~ 
      \bar "||" \mark \default c'8 g'4 c'16 f'16~ f'8 r8 r4 
      | r4 r8. es'16 \tuplet 3/2 {f'8 aes'8 bes'8} \tuplet 3/2 {c''8 f''8 c''8\bendAfter #+4 } 
      | \tuplet 3/2 {b'8 c''4} f''16 bes'8\glissando  c''16~ \tuplet 3/2 {c''8 f''8 bes'8\glissando } \tuplet 3/2 {c''4 f''8} 
      | bes'8\glissando  c''8 f''16 bes'8\glissando  c''16~ \tuplet 3/2 {c''8 f''8 bes'8\glissando } b'8 r8 
      | r2 d''16 bes'8 aes'16 f'8 es'8 
      | bes4 d'8 c'8 b8. d'16 aes'8 g'8~ 
      | g'16 f'8 dis'16\glissando  e'4 \tuplet 3/2 {bes4 d'8~} d'16 c'16 e'16 c'16 
      | \tuplet 3/2 {bes8 gis4} cis'8 e'8 fis'8. dis'16 r4 
      | r4 r8 cis''4 d''4 e''16 c''16 
      | \tuplet 3/2 {bes'4 des''8} des''8 ges'8 bes'8 des''8 c''16 des''16 c''16 bes'16 
      | a'8 c''4. gis'16 a'8 fis'16 dis'8 c'8 
      | d'8 c'8 bes8 a8 \tuplet 3/2 {aes8 b8 d'8} ges'8 bes'16 d''16\glissando  
      | c''8 fis'8 \tuplet 3/2 {cis''8 d''8\glissando  c''8} b'16 c''16 es''16 c''16 \tuplet 3/2 {bes'8 g'8 gis'8} 
      | a'8 f'8 d'4~ d'16 aes'16 g'16 f'16 e'8 d'8 
      \bar "||" \mark \default c'8. a16 \tuplet 3/2 {b8 d'8 e'8} g'8 e'8 f'8. g'16 
      | bes'16 c''16 d''16 e''16\glissando  g''4 \tuplet 3/2 {f''8 e''8 c''8} a'16 c''16 e''16\glissando  g''16~ 
      | g''8 e''16 c''16 aes'8 c''16 e''16\glissando  g''4 e''16 c''16 aes'8 
      | \tuplet 3/2 {f''8\glissando  g''4} \tuplet 6/4 {es''16 des''16 c''16 g'8 es'16~} es'16 d'16 es'16 c'16~ \tuplet 3/2 {c'8 c'8 d'8} 
      | f'8 r8 r2 \tuplet 5/4 {aes'8 bes'16 aes'16 g'16} 
      | ges'8 f'8 \tuplet 3/2 {dis'8 c'8 cis'8} \tuplet 3/2 {dis'8 fis'8 dis'8} \tuplet 3/2 {gis4 b8} 
      | des'8. f'16~ f'16 b'8 d''16~ d''16\glissando  c''8 b'16 \tuplet 6/4 {c''4 es''16 c''16} 
      | bes'8 aes'16 g'16~ g'8 gis'8 b'8 cis''8 ges''4~ 
      | \tuplet 3/2 {ges''8 f''8 e''8} des''16 bes'16 g'16 aes'16 \tuplet 3/2 {bes'8 des''8 e''8\glissando } \tuplet 3/2 {fis''8 g''4~} 
      | \tuplet 3/2 {g''8 ges''8 e''8} \tuplet 5/4 {des''16 b'16 a'16 aes'16 bes'16} des''16 f''16\glissando  g''4 gis''8\glissando  
      | a''4~ a''16 f''16 e''16 cis''16 \tuplet 6/4 {bes'16 aes'16 g'16 f'16 dis'16 c'16} b16 bes16 a16 c'16 
      | dis'16 fis'16 g'8 r4 r16 des''8 a'16~ a'16 ges'8 d'16~ 
      | d'16 bes8 fis16 \tuplet 3/2 {d'4 b8~} b16 c'8 bes16 \tuplet 3/2 {a8 c'8 e'8} 
      | \tuplet 3/2 {g'4 d''8} \tuplet 3/2 {e''8 d''8 e''8} e''4 g''8 r8 
      \bar "||" \mark \default r2. g''8 f''8~ 
      | f''16\glissando  e''16 a'8 \tuplet 3/2 {dis''4\glissando  e''8~} e''4 d''16 c''16 bes'16 a'16 
      | \tuplet 3/2 {b'8 dis''8\glissando  e''8~} e''16 d''16 c''16 g'16 \tuplet 3/2 {a'8 c''8\glissando  f''8~} f''4 
      | es''8 d''16 c''16 aes'16 ges'16 e'16 d'16 des'16 c'16 bes16 g16~ g16 c'16 es'16 g'16 
      | f'8 r8 r2 aes'8 b'16 aes'16~ 
      | aes'16 b'16 gis'16 b'16 gis'16 b'16 gis'16 a'16~ a'16 b'16 a'16 b'16 a'16 b'16 a'16 bes'16~ 
      | bes'16 a'16 aes'16 c''16 bes'8 c''8 b'8 c''8 b'16 c''16 b'16 c''16 
      | c''8\glissando  cis''8 bes'8 fis'8 cis'8 bes8 d'8 b16 c'16~ 
      | \tuplet 3/2 {c'8 e'8 c'8} a16 es'8 a'16~ \tuplet 3/2 {a'8\glissando  bes'8 fis'8} g'8 a'8 
      | bes'8 c''8 \tuplet 3/2 {d''4 b'8} des''8 bes'8 \tuplet 3/2 {ges'4 es'8} 
      | a'16 bes'16 a'16 fis'16 \tuplet 3/2 {g'4 a'8~} a'16 bes'8 c''16 d''8 b'8 
      | \tuplet 3/2 {c''8 d''8 bes'8} ges'8 d'8~ d'16 bes8 g16 d'8 b8 
      | \tuplet 3/2 {c'8 d'8 c'8} \tuplet 3/2 {a8 c'8 e'8} \tuplet 3/2 {g'4 e'8} f'8 g'8 
      | r4 \tuplet 5/4 {c''8 dis''16 c''16 bes'16} a'8 f'8~ \tuplet 3/2 {f'8 des'8 bes8} 
      \bar "||" \mark \default g'4 e'4~ e'16 g'8 e'16~ e'4\bar  ".."
    }
    >>
>>    
}
