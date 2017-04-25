\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "All the Things You Are"
  composer = "Lee Konitz"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key aes \major
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
      | c1:7 | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | des1:min7 | c1:min7 | b1:dim7 | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | g1:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | d1:7 | g1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | c1:775+ 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim7 
      | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | g1:7 | c1:maj | s1 | c1:min7 | f1:min7 | bes1:7 | es1:maj 
      | aes1:maj | d1:7 | g1:maj | s1 | a1:min7 | d1:7 | g1:maj | s1 
      | fis1:min7 | b1:7 | e1:maj | c1:775+ | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | des1:min7 | c1:min7 | b1:dim7 | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | g1:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | d1:7 | g1:maj | aes1:maj 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | c1:775+ 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim7 
      | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7|
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


      \tempo 4 = 193
      \set Score.currentBarNumber = #-12
     
      \bar "||" \mark \default r4 \tuplet 3/2 {g'4 f'8} e'8 d'4 e'8~ 
      | e'16 g'8 f'16~ f'16 aes'8 bes'16~ bes'16 c''8 bes'16 aes'4~ 
      | aes'16 bes'8 a'16~ a'16 bes'8 c''16~ c''8 des''8 \tuplet 3/2 {f'8 aes'4~} 
      | aes'8 c''8 bes'16 aes'8 f'16~ f'16 g'8 f'16~ f'16 es'8 es'16~ 
      | es'16 d'8 es'16 f'8 e'8 es'8 c'8 \tuplet 3/2 {bes4 aes8} 
      | bes8 aes8 \tuplet 3/2 {bes4 aes8~^\markup{\left-align \small vib}} aes4 r4 
      | r4 c'8 b8 bes8 c'8 des'8 es'8 
      | \tuplet 3/2 {e'4 d'8} es'8 des'8 c'8 es'8 \tuplet 3/2 {f'4 es'8} 
      | g'4 \tuplet 3/2 {aes'4 g'8} \tuplet 3/2 {f'4 fis'8} g'8. c'16 
      | es'2^\markup{\left-align \small vib} aes4 c'8 bes8~^\markup{\left-align \small vib} 
      | bes4 r2. 
      | r8 es'4 c''8 des''8 c''8 bes'8 b'8 
      | c''8 bes'8 aes'8 fis'8 g'8 f'8 \tuplet 3/2 {e'4 e'8} 
      \bar "||" \mark \default g'8 r8 r8. f'16 g'4..^\markup{\left-align \small vib} f'16 
      | \tuplet 3/2 {aes'4 f'8} g'8. f'16 \tuplet 3/2 {aes'4 g'8} \tuplet 3/2 {f'4 e'8} 
      | bes'2^\markup{\left-align \small vib} c''8 bes'8 g'8 f'8 
      | es'4 f'8 es'8 ges'8 f'8 es'4 
      | e'4 f'2^\markup{\left-align \small vib} r4 
      | r1 
      | r4 \tuplet 3/2 {r8 c'8 f'8} d'8 es'8 e'8 d'8 
      | c'8 r8 r8. b16 d'8 c'8 r4 
      \bar "||" \tuplet 3/2 {c'8 es'4~} es'16 f'8 es'16 d'8 es'8 \tuplet 3/2 {d'4 des'8} 
      | c'8 d'8~ d'16 es'8 e'16 f'8 g'8 aes'4 
      | bes'4.^\markup{\left-align \small vib} r8 r8 es''8 c''8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 g'8 f'8 es'8 f'8~ \tuplet 6/4 {f'16 g'16 aes'16 g'8.} 
      | \tuplet 3/2 {aes'4 a'8~} \tuplet 3/2 {a'8 bes'8 g'8} es'8 c'8 \tuplet 3/2 {es'4 des'8} 
      | d'8 des'8 c'8 e'8 \tuplet 3/2 {g'4 b'8} d''4 
      | \tuplet 3/2 {e''4 d''8} b'8. g'16 \tuplet 3/2 {a'4 b'8~^\markup{\left-align \small vib}} b'4~ 
      | b'8 r8 r2. 
      \bar "||" r1 
      | r2 r8 e'8 g'8 e'8 
      | d'8 g'8 fis'8 g'8 a'8 g'8 e'4 
      | d'4 d'4 e'8 g'8 a'4 
      | b'4 b'4 c''8 b'8 bes'8 aes'8 
      | a'4 a'4~ a'16 g'8 es'16 \tuplet 3/2 {c'4 g8} 
      | b4.^\markup{\left-align \small vib} r8 r2 
      | r4 r8. c'16 des'8 es'8 e'8 g'8 
      \bar "||" bes'8 aes'8 \tuplet 3/2 {f'4 c'8} g'8 aes'8 g'16 f'8 aes'16 
      | f'8 des'8 aes8 f8 c'4^\markup{\left-align \small vib} bes8. es'16~ 
      | es'8 r8 r8 es'8 e'4 e'4 
      | f'4~ f'16 f'8 f'16 ges'4 aes'4~^\markup{\left-align \small vib} 
      | aes'4 \tuplet 3/2 {f'4 es'8~} \tuplet 3/2 {es'8 c'8 des'8} f'8 aes'8 
      | bes'2^\markup{\left-align \small vib} aes'8 e'8 des'8 g'8 
      | f'8 fis'8 g'8 f'8 es'8 c'8 bes8. aes16~ 
      | aes16 bes8 aes16 bes8 aes4 aes8 c'4 
      | es'2^\markup{\left-align \small vib} r2 
      | r2. r8 c''8 
      | es''8 e''16 es''16 c''8 bes'8~ bes'16 aes'8 bes'16 c''8 des''8~ 
      | des''16 bes'8 b'16 c''8 bes'8 aes'8 e'8 c'4 
      \bar "||" \mark \default f'8 c'8 \tuplet 3/2 {f'4 aes'8~} \tuplet 3/2 {aes'8 f'8 fis'8} g'8 ges'8 
      | f'8 g'8 aes'4 bes'8 c''8 des''4 
      | es''4 \tuplet 3/2 {g''8 aes''4} es''8 des''4\bendAfter #-4  c''16 bes'16 
      | aes'8 f''8~^\markup{\left-align \small vib} f''4~ f''16 es''8 des''16 c''8 bes'8 
      | \tuplet 3/2 {a'4 g'8} aes'8 ges'8~ \tuplet 3/2 {ges'8 es'8 e'8} \tuplet 3/2 {f'4 es'8} 
      | \tuplet 3/2 {c'4 des'8} d'8 c'8~ c'8. d'16 \tuplet 3/2 {g'4 f'8~} 
      | f'8. g'16 a'4 c''4.^\markup{\left-align \small vib} r8 
      | r4 g'4~ g'16 e'8 c'16~ c'16 aes'8 f'16~ 
      \bar "||" f'16 des'8 b16 d'8 c'8 r4 \tuplet 3/2 {es'4 g'8} 
      | bes'8 c''16 bes'16 a'8. g'16 aes'8 c''8 es''4 
      | f''8 fis''8 \tuplet 3/2 {g''4 f''8} d''4 c''8 es''8 
      | c''8. c''16~^\markup{\left-align \small vib} c''4. r8 r4 
      | r2. \tuplet 6/4 {r4 d''16 c''16} 
      | \tuplet 3/2 {fis'4 a'8} c''8 es''8 c''8 des''8 d''4 
      | c''8. a'16 bes'8 b'8 c''8 b'8 \tuplet 3/2 {g'4 d'8} 
      | fis'8. d'16 f'8 d'8 \tuplet 3/2 {fis'4 d'8} f'8. c'16 
      \bar "||" fis'8. d'16 g'2^\markup{\left-align \small vib} r4 
      | r8 g'8 aes'8 r8 r4 r8 e'8 
      | \tuplet 3/2 {a'4 e'8} bes'8 b'8 c''8 b'8 a'8 aes'8 
      | g'8 aes'16 g'16 fis'8 e'8 d'8 b8 \tuplet 3/2 {a4 g8~} 
      | g16 b8 bes16 a4 g'8 ges'8~ \tuplet 3/2 {ges'8 f'8 e'8} 
      | es'8 f'8 fis'8 a'8 c''8 a'8 \tuplet 3/2 {b'4 a'8} 
      | aes'4 a'8 bes'8 b'8. e'16 aes'8 a'8 
      | bes'4^\markup{\left-align \small vib} b'8 c''8 des''8 bes'8 g'8 e'8 
      \bar "||" f'4^\markup{\left-align \small vib} aes'8. f'16 g'8 f'8~ f'16 c'8 aes16 
      | bes4 f8 aes4.^\markup{\left-align \small vib} c'8 es'8~^\markup{\left-align \small vib} 
      | es'4 c'8 es'8 c'8 bes8 aes8 f8 
      | aes4.^\markup{\left-align \small vib} r8 r2 
      | r4 r8 des''8 es''4 \tuplet 3/2 {f''4 es''8} 
      | des''4 es''8 des''8 \tuplet 3/2 {b'4 bes'8} aes'8 bes'8~^\markup{\left-align \small vib} 
      | bes'8. bes'16 c''8 bes'8 aes'4 bes'8 aes'8 
      | g'8 aes'16 g'16~ g'16 fis'16 g'16 ges'16 f'8 g'16 f'16~ f'8 e'8 
      | es'4\bendAfter #-4  r4 c'8 b8 bes8 aes8~ 
      | aes8 f8 g8 f8 es8 c'8 g4 
      | bes8 aes8 f8 aes4.^\markup{\left-align \small vib} r4 
      | r2 r8 c''8 aes'8 bes'8 
      \bar "||" \mark \default c''8 aes'8 f'8 aes'8~ aes'16 c''16 aes'16 f'16 des''8 a'8 
      | c''8 b'8 bes'8. f'16 aes'8 g'8 f'8 g'8 
      | es''8 e''8 f''8 e''8~ e''16 es''8 aes'16~ aes'16 f'8 es'16 
      | aes'4..^\markup{\left-align \small vib} f'16~ f'8 es'8 aes'4~^\markup{\left-align \small vib} 
      | aes'8 f'8 des'4 \tuplet 3/2 {aes'4 f'8~} f'16 des'8 bes16 
      | \tuplet 3/2 {a'4 f'8} d'4 g'8 f'8 d'8 es'8 
      | \tuplet 3/2 {e'4 f'8} e'16 c'8 e'16 f'8 g'8 \tuplet 6/4 {f'16 d'4 f'16~} 
      | f'16 fis'16 g'16 c''16 \tuplet 3/2 {g'8 f'8 e'8} \tuplet 3/2 {f'8 e'4~} e'4 
      \bar "||" es'4.^\markup{\left-align \small vib} r8 r2 
      | r1 
      | r4 r8 c''8 es''8 f''8 es''8 c''8 
      | d''8 es''8 \tuplet 3/2 {d''4 bes'8} \tuplet 3/2 {des''4 es''8} \tuplet 3/2 {des''4 c''8~^\markup{\left-align \small vib}} 
      | c''4 bes'8 a'8 aes'8 es'8 aes'8 bes'8~ 
      | bes'16 a'8 b'16 a'8 e'8 g'8 a'8 \tuplet 3/2 {g'4 e'8} 
      | fis'8 g'8 \tuplet 3/2 {e'4 es'8} d'8 e'8 \tuplet 3/2 {g'4 e'8} 
      | b'8. g'16 c''8 des''8 d''8 b'8 g'8 e'16 g'16~^\markup{\left-align \small vib} 
      \bar "||" g'4 r4 r8 g'8 a'16 bes'16 b'16 d''16 
      | c''4 r4 r8 c''8~ c''16 es''16 e''16\glissando  a''16~ 
      | a''8 c'''8~ c'''8. d''16 e''16 f''16 fis''16 g''16 fis''8 r8 
      | r4 e''8 es''8 d''8 b'8 g'8. e'16 
      | g'2^\markup{\left-align \small vib} a'8 g'8 e'8 f'8 
      | fis'8 e'8 c'8 a8 g8. f16~ f8 a8 
      | \tuplet 3/2 {b4 aes8~} aes4 r2 
      | r1 
      \bar "||" r8. c'16~ c'8 c'8 f'8 c'4 c'8 
      | \tuplet 3/2 {des'4 bes8~} bes4 c'4 bes4~ 
      | bes8 f'8 aes'8 g'4^\markup{\left-align \small vib} g'8 c''8 bes'8~ 
      | bes'16 g'8 es'16 \tuplet 3/2 {aes'4 es'8} \tuplet 3/2 {ges'4 es'8} \tuplet 3/2 {f'4 es'8} 
      | aes'4 \tuplet 3/2 {f'4 es'8} \tuplet 3/2 {aes'8 es'8 des'8} r4 
      | r4 \tuplet 3/2 {aes'4 e'8~} e'8 es'8 des'8 aes'8~^\markup{\left-align \small vib} 
      | aes'4 es'8 des'4 b8 \tuplet 3/2 {c'4 bes8} 
      | a8 g4 bes8 b8 d'8 g'8 f'8 
      | aes'8 f'8 c'4 bes4.^\markup{\left-align \small vib} r8 
      | r2. r8 es'16 f'16~ 
      | \tuplet 6/4 {f'16 aes'8. bes'16 aes'16} \tuplet 3/2 {g'4 aes'8} \tuplet 3/2 {bes'4 aes'8} \tuplet 3/2 {f'4 es'8} 
      | g'8 f'8 d'8 es'8 e'4 \tuplet 3/2 {c''4 c''8} 
      | aes'8 f'8 r2.\bar  ".."
    }
    >>
>>    
}
