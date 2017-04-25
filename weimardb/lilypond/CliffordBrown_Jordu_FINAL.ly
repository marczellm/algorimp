\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Jordu"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | d2:7 g2:7 | c1:min6 | f2:7 bes2:7 | es1:maj | d2:7 g2:7 | c1:min6 | aes1:7 | s1 
      | d2:7 g2:7 | c1:min6 | f2:7 bes2:7 | es1:maj | d2:7 g2:7 | c1:min6 | aes1:7 | s1 
      | g2:7 c2:7 | f2:7 bes2:7 | es2:7 aes2:7 | des1:maj | f2:7 bes2:7 | es2:7 aes2:7 | des2:7 ges2:7 | b1:maj 
      | d2:7 g2:7 | c1:min6 | f2:7 bes2:7 | es1:maj | d2:7 g2:7 | c1:min6 | aes1:7 | s1 
      | d2:7 g2:7 | c1:min6 | f2:7 bes2:7 | es1:maj | d2:7 g2:7 | c1:min6 | aes1:7 | s1 
      | d2:7 g2:7 | c1:min6 | f2:7 bes2:7 | es1:maj | d2:7 g2:7 | c1:min6 | aes1:7 | s1 
      | g2:7 c2:7 | f2:7 bes2:7 | es2:7 aes2:7 | des1:maj | f2:7 bes2:7 | es2:7 aes2:7 | des2:7 ges2:7 | b1:maj 
      | d2:7 g2:7 | c1:min6 | f2:7 bes2:7 | es1:maj | d2:7 g2:7 | c1:min6 | aes1:7|
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


      \tempo 4 = 139
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 6/4 {r4 cis''16 d''16~} d''8 cis''16 d''16~ \tuplet 6/4 {d''8 cis''16 d''8 cis''16} d''8 c''16 d''16~ 
      | d''8 d''16 f''16~ f''16 es''8 c''16~ c''8. g'16~ g'16 es'8 c'16 
      | f'8 r8 r8 g'8 aes'8 a'8 c''16 d''16 c''16 a'16 
      | \tuplet 3/2 {bes'4 bes8} es'8 aes'8 g'8 es'8 c'8 aes8 
      | d'4 \tuplet 3/2 {c'8 d'8 b8~} b16 es'16 f'16 aes'16 g'4~ 
      | g'4. cis''16 d''16~ \tuplet 3/2 {d''8 c''8 g'8} es'8 d'16 ges'16~ 
      | ges'8 bes'8 f'8 es'8 aes'8. ges'16~ ges'4~ 
      | ges'8 r8 r2. 
      \bar "||" g''8 g''16 aes''16 g''8 g'16 a'16 b'8 b'16 c''16 b'16 a'16 g'8 
      | r4 r8 g''8 d''8 f''8 es''8 g'8 
      | bes'8 aes'8 es'8 c'8 b8 g'8~ g'16 d'8 bes16~ 
      | bes16 f'8 d'16 \tuplet 3/2 {es'8 g'8 bes'8~} bes'16 d''8 f''16 es''8 cis''8 
      | d''4 c''16 d''8 b'16~ b'8 d'8 f'8 bes'8 
      | g'4 \tuplet 3/2 {f'8 g'8 es'8~} es'8 b8 d'8 c'8 
      | ges'8 es'8 \tuplet 3/2 {aes8 bes8 c'8} es'8 f'8 bes'8 ges'8 
      | aes'4 r2 r8 aes''8 
      \bar "||" g''8 aes''8 g''8 f''8 e''8 d''8 c''8 bes'8~ 
      | bes'16 g'16 a'16 c'16 es'8 g'8~ g'16 f'8 bes16 \tuplet 3/2 {d'8 f'8 aes'8~} 
      | aes'16 b'8 bes'16 es'8 r8 r8. bes'16 aes'8 ges'8 
      | \tuplet 3/2 {f'4 aes8} \tuplet 3/2 {es'8 c'8 des'8~} des'4 r4 
      | \tuplet 5/4 {f'16 g'16 a'16 bes'16 c''16~} c''16 a'16 g'16 f'16 \tuplet 6/4 {aes'16 bes'16 aes'16 g'16 e'8} \tuplet 3/2 {f'8 bes'4} 
      | es'16 f'16 g'16 aes'16 \tuplet 6/4 {bes'16 g'8 f'16 es'16 aes'16} bes'16 aes'16 f'16 ges'16 f'8 c'8~ 
      | c'8 es'16 b16 d'16 f'32 e'16 f'32 g'32 bes'32 cis''16 d''16 cis''16 b'16~ b'8. aes'16 
      | bes'8 aes'16 f'16 fis'16 b16 r8 r4 r8 d''8~ 
      \bar "||" \tuplet 3/2 {d''8 g''8 aes''8~} aes''2~ aes''8 g''8~ 
      | \tuplet 6/4 {g''16 b''16 c'''8. f''16~} f''8\bendAfter #-4  r8 r4 r8 es''8 
      | c''8 g'8 ges'8 f'8 \tuplet 3/2 {es'8 f'8 es'8} \tuplet 3/2 {c'4 es'8} 
      | r2. g''8 c'''8 
      | ges''4 f''8 es''8 f''8 es''8 c''8 g'8 
      | ges'8 f'8 es'8 c'8 es'8 f'8 \tuplet 3/2 {g'4 es'8} 
      | \tuplet 3/2 {e'4 aes'8~} aes'4 ges'8 bes'8 f'8 c'8 
      | aes'8 r8 r2. 
      \bar "||" \mark \default r8 g'16 a'16 \tuplet 6/4 {b'16 c''8 d''16 b'16 c''16~} c''16 d''16 es''16 f''16 g''16 es''16 d''16 c''16 
      | f''16 d''16 es''16 b'16~ b'16 d''16 des''16 b'16 c''16 g'16 f'16 e'16 es'16 g'16 d'16 c'16 
      | \tuplet 6/4 {d'8 es'8 f'16 g'16~} g'16 e'16 f'16 g'16 aes'16 bes'16 c''16 b'16 bes'16 aes'16 g'16 f'16 
      | es'16 bes16 c'16 d'16 es'16 f'16 g'16 aes'16 \tuplet 6/4 {bes'16 bes16 c'8 d'16 es'16~} \tuplet 6/4 {es'16 f'16 g'8 aes'16 bes'16~} 
      | \tuplet 6/4 {bes'16 g'8 aes'16 f'16 g'16~} \tuplet 6/4 {g'16 es'8 f'16 d'16 es'16~} es'16 c'16 d'16 b16 b4~ 
      | b16 aes'16 f'16 fis'16 \tuplet 6/4 {g'16 a'16 b'16 c''16 cis''16 d''16~} d''16 b'16 c''16 d''16 \tuplet 6/4 {es''8 c''8 aes'16 g'16} 
      | ges'8 f'8 bes'16 f'16 e'16 es'16~ es'16 c'16 bes16 aes'16 r4 
      | r4 r8. g''16 aes''4 r4 
      \bar "||" r8 g''8 \tuplet 3/2 {cis'''8\glissando  es'''4~} es'''4 es'''8 d'''8~ 
      | \tuplet 6/4 {d'''16 c'''4 g''16~} g''4\bendAfter #-4  r4 g''8 ges''8 
      | f''8 es''8 c''8 cis''8 d''8 cis''8 d''16 c''16 b'8 
      | \tuplet 3/2 {bes'4 bes8} \tuplet 3/2 {es'4 aes'8} bes'16 aes'16 fis'8 \tuplet 3/2 {g'4 a8} 
      | d'8 f'8~ \tuplet 6/4 {f'16 bes'16 aes'16 f'16 es'8} d'8 g8 \tuplet 3/2 {b4 d'8} 
      | \tuplet 6/4 {es'16 f'16 es'16 d'8 b16} c'8 d'8 es'8 f'8 g'8 aes'8 
      | \tuplet 3/2 {a'8 bes'4} ges'16 f'16 es'8 \tuplet 3/2 {aes'4 fis'8~} fis'4 
      | r1 
      \bar "||" r8 g'16 a'16 b'16 c''16 d''16 des''16 c''16 a'16 bes'8~ bes'8. aes'16 
      | a'16 g'16 ges'16 e'16 f'32 g'16. aes'16 bes'32 c''32~ \tuplet 7/8 {c''32 b'16 bes'16 aes'32 g'32~} \tuplet 7/8 {g'32 f'16 e'16 d'32 es'32~} 
      | \tuplet 6/4 {es'16 f'16 ges'16 aes'8 bes'16} c''16 des''16 es''16 e''16~ e''16 ges''16 es''16 des''16 c''16 bes'16 aes'16 ges'16 
      | f'16 c'16 es'16 bes16 \tuplet 6/4 {des'16 es'16 f'8 aes'16 c''16} des''8. aes'16 f'4 
      | a'8 a'8 c''8. a'16 bes'16 a'16 aes'16 bes'16 g'16 f'16 e'16 d'16 
      | es'16 f'16 ges'16 aes'16 \tuplet 6/4 {bes'16 c''16 des''8 b'16 c''16~} \tuplet 5/4 {c''16 bes'16 a'16 g'16 aes'16~} \tuplet 6/4 {aes'16 ges'8 es'16 e'16 f'16} 
      | des'8 r8 r4 r16 des''16 c''16 b'16~ \tuplet 6/4 {b'16 aes'16 cis''16 a'16 bes'8} 
      | fis'16 g'16 aes'16 f'16 fis'8. e'16~ e'16 d'16 es'8 r4 
      \bar "||" r4 cis''16\glissando  d''8. cis''16\glissando  d''8. cis''16\glissando  d''8. 
      | cis''16\glissando  d''8. \tuplet 6/4 {cis''16\glissando  d''4 d''16~} d''16 es''16 c''16 c''16~ c''8 r8 
      | r4 cis''16\glissando  d''8. cis''16 d''8. cis''16\glissando  d''8. 
      | d''16 f''16 es''8 c''16 es''16 d''16 bes'16~ bes'4 cis''16\glissando  d''16 c''16 bes'16 
      | \tuplet 3/2 {b'4 es'8} \tuplet 6/4 {f'16 aes'8 f'16 fis'16 g'16~} g'16 e'16 f'16 d'16 \tuplet 5/4 {es'16 f'16 g'16 a'16 b'16} 
      | \tuplet 6/4 {c''16 cis''16 d''8 b'16 c''16} g'4 r2 
      | bes''4~ bes''16 ges''8 f''16~ f''16 es''8 bes'16~ bes'16 aes'8 es'16~ 
      | \tuplet 3/2 {es'8 ges'8 bes'8} \tuplet 3/2 {f'4 es'8} aes'8 ges'8 \tuplet 3/2 {es'8 c'8 d'8}\bar  ".."
    }
    >>
>>    
}
