\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Mean You"
  composer = "Michael Brecker"
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
      
      | f1:6 | f1:6 | des1:7 | d1:7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:6 | s1 | des1:7 | d1:7 | g1:min7 | c1:7 | f1:6 | s1 
      | es1:7 | s1 | f1:6 | s1 | des1:7 | s1 | ges1:7 | g2:min7 c2:7 
      | f1:6 | s1 | des1:7 | d1:7 | g1:min7 | c1:7 | f1:6 | s1 
      | s1 | s1 | des1:7 | d1:7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:6 | s1 | des1:7 | d1:7 | f1:6 | g2:min7 c2:7 | f1:6 | s1 
      | es1:7 | s1 | f1:6 | s1 | des1:7 | s1 | ges1:7 | g2:min7 c2:7 
      | f1:6 | s1 | des1:7 | d1:7 | g1:min7 | c1:7 | f1:6 | g2:min7 c2:7 
      | f1:6|
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


      \tempo 4 = 180
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 f''8 r8 r4 
      | d''4 \tuplet 3/2 {c''4 a'8} bes'8 a'8~ \tuplet 6/4 {a'16 f'4 c'16} 
      | g'8 f'8~ f'16 es'8 b16~ \tuplet 6/4 {b8 g8. des16} f8 b8 
      | dis16\glissando  e8.^\markup{\left-align \small vib} b8. fis16~ fis8 fis8 d8 r8 
      | r2 f'8 r8 r4 
      | f'4. f'4 c'8 e'8. des'16 
      | f'8. c'16 e'8. f'16~^\markup{\left-align \small vib} f'4~ \tuplet 3/2 {f'8 c'8 a'8} 
      | g16 a8 es16 r2. 
      \bar "||" r8. c'16~ c'8 e'16 g'16 es'8 f'8 a'8 c''8 
      | d''8 c''8 \tuplet 3/2 {a'4 f'8} g'8 es'8 d'4 
      | f'8 e'8 es'8 b8 aes8 es8 f4 
      | b'8 a'8 g'4 e'16 fis'8. r4 
      | r2 r8 a8 \tuplet 3/2 {bes8 d'8 f'8~} 
      | f'16 a'8 g'16 f'4 e'4 e'8 g'8 
      | f'8 g'8 a'8 c''8~ c''16 f''8 e''16 es''8 des''8 
      | \tuplet 3/2 {c''4 bes'8} \tuplet 3/2 {a'4 g'8} f'8 e'8 es'8 d'8 
      \bar "||" des'8 bes8 \tuplet 3/2 {f4 des8} \tuplet 3/2 {aes4 des8} f4 
      | r4 r8 aes,8 \tuplet 3/2 {es4 aes,8} bes,4 
      | r4 r8 bes,8 es8 g8 \tuplet 3/2 {c4 f8} 
      | bes8 es'8~ es'16 a8 f16 g8 es8 \tuplet 3/2 {c4 b,8~} 
      | b,4. es16 f16 b16 aes16 f16 e16~ e16 es16 aes16 b16 
      | \tuplet 3/2 {es'8 d'8 des'8} b16 es'16 bes16 g16 aes16 bes16 b16 des'16 es'16 f'16\glissando  ges'16 e'16 
      | f'16 d'16 bes16 g16 e'16 d'16 c'16 b16 bes16 c'16 d'16 f'16 a'16 fis'16 g'16 a'16 
      | \tuplet 3/2 {bes'8 d'8 e'8} \tuplet 6/4 {a'16 g'8 f'16 dis'16 e'16~} e'16 aes'16 ges'16 e'16 \tuplet 5/4 {es'16 des'8 bes16 a16~} 
      \bar "||" a16 c'16 e'16 g'16 e'16 f'16 a'16 c''16 \tuplet 3/2 {e''8 f''4} r4 
      | r8 bes'8~ bes'16 g'16 a'16 aes'16 g'8 f'8~ f'16 e'8\glissando  des'16 
      | es'4.^\markup{\left-align \small vib} r8 r8. des''16 c''16 b'16 bes'16 aes'16 
      | ges'16 f'16 dis'16 f'16 r4 \tuplet 6/4 {r4 b'16 a'16} g'16 e'16 c'16 a16 
      | e16 g8.~ g8 bes4. d'4 
      | f'4 \tuplet 3/2 {f'4 c'8} \tuplet 3/2 {e'4 d'8} \tuplet 3/2 {e'4 g'8~} 
      | g'16 f'8 g'16 a'8 c''8~ \tuplet 3/2 {c''8 des''8 bes'8} ges'8 des'8 
      | \tuplet 3/2 {b4 e'8} aes'8 b'8 bes'8 ges'8~ ges'16 des'8 b16 
      \bar "||" \mark \default c'4 g'16 a'8. bes'2^\markup{\left-align \small vib} 
      | a'8 f'16 c'16 g'16 f'16 c'16 d'16 a8 d'16 c'16 \tuplet 6/4 {a8 f16 bes8 g16} 
      | \tuplet 3/2 {aes8 bes8 b8} des'16 es'8 bes'16 \tuplet 3/2 {des''8 b'8 c''8} bes'16 b'16 es'16 aes'16 
      | b'8 a'8 r4 d''16 b'16\glissando  c''16 c''16 c''4 
      | r4 r8 a'8 \tuplet 3/2 {bes'8 ges'8 a'8} \tuplet 3/2 {g'4 g'8} 
      | e'8 g'8 bes'8 c''8~ \tuplet 3/2 {c''8 des''8 c''8} \tuplet 3/2 {c''4 bes'8~} 
      | bes'16 bes'8 g'16 bes'4\bendAfter #-4  a'8 g'8~ g'16 ges'8 a'16 
      | g'4 f'8. dis'16 e'8 d''16\glissando  f''16~ f''8 c''8~ 
      \bar "||" c''8 a'4.^\markup{\left-align \small vib} bes'16 a'16 f'16 c'16 g'16 f'16 b16 a16 
      | \tuplet 6/4 {d'16 c'16 gis16 a16 f16 bes16~} \tuplet 6/4 {bes16 a16 f8 e16 g16~} g16 f16 c16 bes,16 a,8 r8 
      | r4 r16 aes,16 d16 f16 \tuplet 6/4 {ges16 bes16 g8 aes16 bes16} b16 des'16 es'16 f'16 
      | e'16 c'16 gis16 e16 \tuplet 6/4 {b8 gis8 a16 bes16} \tuplet 3/2 {c'8 d'8 e'8} \tuplet 6/4 {gis'16 b'16 a'8 g'16 e'16} 
      | f'4 r4 d'4 r4 
      | f'4\bendAfter #-4  f'8. des'16 \tuplet 3/2 {e'4 c'8} \tuplet 3/2 {e'4 g'8~} 
      | g'16 f'8 g'16~ \tuplet 3/2 {g'8 a'8 bes'8} bes'8\glissando  c''8~^\markup{\left-align \small vib} \tuplet 6/4 {c''8. a'16 g'16 f'16} 
      | \tuplet 5/4 {e'16 d'16 des'16 b16 a16} \tuplet 6/4 {g16 ges16 e16 es16 d16 des16} b,16 bes,16 a,8 r4 
      \bar "||" r2 \tuplet 6/4 {des16 es16 f8 des16 es16} f16 g16 a16 bes16 
      | \tuplet 6/4 {c'16 des'16 es'16 f'16 a'8} bes'16 c''8 c''16 a'8 c''4 c''8 
      | bes'16 c''16 c''16 a'16 \tuplet 6/4 {c''8 c''8 g'16 c''16} f'4 r4 
      | \tuplet 3/2 {e'4 des'8} \tuplet 3/2 {e'4 g'8} f'4 a'16 bes'8 b'16~ 
      | \tuplet 3/2 {b'8 des''8 es''8~} es''16 b'8 es'16 \tuplet 3/2 {aes'4 b'8} bes'8 aes'8~ 
      | aes'16\glissando  g'8 es'16 \tuplet 5/4 {ges'4 es'16} f'8 r8 r4 
      | r8. d''16 \tuplet 3/2 {c''8 a'8 bes'8} g'8 r8 r4 
      | \tuplet 3/2 {ges'4 d'8} f'8 d'8 e'8. c'16 d'8 e'8~ 
      \bar "||" e'16 f'8 g'16 a'8 bes'8 b'16 c''16 b'16 bes'16 a'8 bes'8~ 
      | bes'16 a'16 aes'16 g'16~ g'16 a'8 g'16 \tuplet 3/2 {ges'8 f'8 g'8~} g'16\glissando  ges'16 f'16 e'16 
      | es'4~ es'16 b16 g16 es16 bes16 g16 aes16 bes16 b16 des'16 es'16 f'16 
      | \tuplet 6/4 {ges'16 dis'16 f'8 dis'16 e'16~} \tuplet 6/4 {e'16 c'16 a8 e16 b16~} b16 gis16 a16 b16 c'16 d'16 e'16 d'16 
      | es'16 d'16 des'16 f'16 \tuplet 6/4 {d'16 c'16 b8 a16 bes16} \tuplet 3/2 {c'8 d'8 f'8} \tuplet 5/4 {a'16 g'16 f'16 dis'16 e'16} 
      | g'16 c''16 es''8 r4 \tuplet 6/4 {r16 d''16 c''16 bes'16 g'16 e'16} c'16 a'16 e'16 d'16 
      | a'16 ges'16 des'16 bes16 ges'16 es'16 bes16 g16 es'16 d'16 des'16 es'16 c'16 b16 bes16 c'16 
      | e'16 f'16 a'16 g'16 f'16 d'16 bes16 g16 e'16 d'16 c'16 bes16 a16 g16 ges16 e16 
      \bar "||" \mark \default f8 r8 r2.\bar  ".."
    }
    >>
>>    
}
