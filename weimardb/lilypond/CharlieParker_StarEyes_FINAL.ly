\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Star Eyes"
  composer = "Charlie Parker"
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
      
      | es1:maj | f2:min7 bes2:7 | es1:maj | es2:min7 aes2:7 | des1:maj | g2:min5-7 c2:775+ | f1:maj | f2:min5-7 bes2:7 
      | es1:maj | f2:min7 bes2:7 | es1:maj | es2:min7 aes2:7 | des1:maj | g2:min5-7 c2:775+ | f1:maj | f2:min5-7 bes4:7 es4:7 
      | aes1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | s1 | f1:min5-7 | bes2:7 bes2:13.9 
      | es1:maj | f2:min7 bes2:7 | es1:maj | es2:min7 aes2:7 | des1:maj | g2:min5-7 c2:775+ | f1:maj | f2:min5-7 bes2:7 
      | es2:7 d2:7 | des2:7 c2:7 | f2:min7 bes2:7 | es1:6 | es1:maj|
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


      \tempo 4 = 134
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. bes'16~ bes'8 c''8 \tuplet 7/8 {d''16. c''16. d''32~} \tuplet 6/4 {d''16 c''16 bes'8. g'16~} 
      | g'8 f'8~ \tuplet 6/4 {f'8 es'8. c'16~} c'16 f'16\glissando  g'8~ g'16 es'8 c'16~ 
      | c'16 es'8 bes16~^\markup{\left-align \small vib} bes4 r2 
      | r2 \tuplet 5/4 {r16 c''16 des''16 c''16 bes'16} ges'16 es'16 c'16 aes'16 
      | ges'8 es'16\glissando  f'16~ f'8 des'8 bes16 des'4..~^\markup{\left-align \small vib} 
      | des'8 g'8 f'16 e'16 g16 bes16 \tuplet 6/4 {des'16 c'8 a16 bes16 des'16} \tuplet 3/2 {f'8 a'8 g'8~} 
      | g'16. g'16. e'32 f'32 a'16 c''16 e''16 f''16 \tuplet 6/4 {fis''16 g''8 e''16\glissando  e''16 f''16~} f''16 e''16 c''8 
      | r4 \tuplet 5/4 {r16 b'16 des''16 b'16 bes'16} \tuplet 6/4 {a'8 aes'16 g'8 f'16} es'8 f'16 aes'16 
      \bar "||" b'16 aes'16 a'16 bes'16 r4 r8 fis'8 \tuplet 6/4 {g'16 bes'16 des''16 es''16 f''8} 
      | \tuplet 3/2 {d''8\glissando  es''8 bes'8~} bes'8. c''16\glissando  d''4~ \tuplet 5/4 {d''16 c''16 d''16 c''16 b'16} 
      | bes'8 aes'8~ aes'16 g'8 f'16~ f'8 es'8 g'16 bes'8 ges'16~ 
      | ges'8 es'8 \tuplet 3/2 {des'4 b8} c'8. f'16~ f'8. c'16 
      | aes'8 f'8 c'8 aes8 bes4^\markup{\left-align \small vib} r4 
      | r4 \tuplet 6/4 {r16 fis'8 g'16 a'16 c''16} es''16 f''8 d''16 \tuplet 6/4 {es''16 e''16 c''16 cis''16 d''16 bes'16} 
      | b'16 c''16 a'8~ \tuplet 6/4 {a'4 c''16 bes'16} a'16 f'16 des'16 bes16 c'4^\markup{\left-align \small vib} 
      | r4 \tuplet 7/8 {r32 b'32 c''16 b'16 a'32} aes'8 r8 r4 
      \bar "||" r16 g'8 aes'16~ aes'16 c''8 es''16~ es''16 fis''8\glissando  g''16~ g''8. f''16~ 
      | f''8 es''8 c''8 r8 \tuplet 6/4 {r4 r16 f''16~} \tuplet 6/4 {f''8\glissando  es''8 b'16 aes'16~} 
      | \tuplet 6/4 {aes'8 es'8. ges'16~} ges'8 es'16 ges'16~ \tuplet 6/4 {ges'8. es'8 ges'16~} ges'4 
      | \tuplet 3/2 {es'8 f'4} aes'16 b'8 cis''16\glissando  d''4~ d''16 des''8 b'16 
      | a'8\glissando  bes'8~ bes'16 des''16 bes'16 aes'16 ges'8 es'4^\markup{\left-align \small vib} r8 
      | r4 \tuplet 3/2 {a8 des'8 f'8} aes'4 ges'4~ 
      | ges'8. a'16\glissando  bes'4~^\markup{\left-align \small vib} \tuplet 6/4 {bes'16 aes'8 g'16 f'16 es'16} d'16 c'16 bes8~ 
      | bes8. a'16\glissando  bes'4~ \tuplet 5/4 {bes'8 aes'16 ges'16 cis'16} d'16 c'16 bes8 
      \bar "||" r4 \tuplet 6/4 {r16 bes16 c'16 es'8 f'16~} \tuplet 6/4 {f'16 fis'16 g'16 aes'8 ges'16} f'16\glissando  g'16 es'16 des'16 
      | \tuplet 6/4 {f'8 g'16 aes'8 bes'16~} bes'32 b'16 c''32 b'16 bes'32 a'32 aes'8 bes'8 d''16 g''16 ges''16 f''16 
      | \tuplet 6/4 {f''16 e''16 es''4~} es''8 a'8 \tuplet 6/4 {bes'16 d''8 f''16 d''16 c''16} \tuplet 3/2 {d''8\glissando  es''8 bes'8} 
      | r2 r8 aes'8~ aes'8. bes'16~ 
      | \tuplet 6/4 {bes'4~ bes'16 c''16~} c''8 des''4 bes'8 \tuplet 3/2 {c''4 aes'8} 
      | \tuplet 3/2 {bes'8 ges'8 aes'8} f'8 r8 \tuplet 6/4 {r4 g'16 f'16~} \tuplet 6/4 {f'16 e'8 g16 bes16 des'16~} 
      | \tuplet 5/4 {des'16 c'16 bes16 a16 des'16} \tuplet 6/4 {e'16 g'8 e'16 f'16 g'16~} \tuplet 5/4 {g'16 a'16 bes'16 c''16 bes'16} \tuplet 3/2 {a'8 f'8 d'8} 
      | b'16 des''16 b'16 bes'16 a'16 aes'8. r4 \tuplet 3/2 {r8 bes'8 aes'8~} 
      | aes'16 fis'16\glissando  g'4 a'16 aes'16 f'16 es'8 bes16~ bes8. b16~ 
      | b8 es'16 fis'16~ fis'32 g'16\glissando  aes'8 bes'32 aes'16 g'8 f'16~ f'16 e'8 des'16~ 
      | \tuplet 5/4 {des'16 c'8. bes16~} \tuplet 5/4 {bes8 c'16 es'16 g'16~} g'16 f'8 des'16~ des'16 c'16 des'16 b16 
      | \tuplet 3/2 {a8 bes8 aes8~} \tuplet 6/4 {aes16 g16 bes16 d'8 f'16~} f'8 ges'8 des'16 bes16 aes8 
      \bar "||" \mark \default \tuplet 3/2 {es'8 fis'8\glissando  g'8~} g'8 bes'8 r2\bar  ".."
    }
    >>
>>    
}
