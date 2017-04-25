\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cabin Fever"
  composer = "Michael Brecker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \major
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
      | r1 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7|
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
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 ges8 
      \bar "||" \mark \default \tuplet 3/2 {f8 e8 es8~} es16 f8 d16~ d4 f8 d8 
      | es8. g16~ \tuplet 3/2 {g8 e8 f8~} f8. d16~ d8 c8~ 
      | c8 es4 d4 c4 bes,8~ 
      | bes,8 aes,8~ aes,4. r8 r4 
      | r4 r8 aes'8 \tuplet 3/2 {g'8 es'4} bes8 aes8 
      | des'8 es'8 f'8 des'8 e'8 aes'8 \tuplet 6/4 {b'4 e'16 aes'16} 
      | bes'4 des''4. \tuplet 6/4 {c''16 b'16 bes'16~} bes'4~ 
      | bes'16 b'16 c''4 b'16 bes'16 gis'4 r4 
      | r4 r8. a'16~ a'16 des''8 b'16~ \tuplet 3/2 {b'8 a'8 aes'8~} 
      | aes'8 g'8 ges'8 e'8 \tuplet 3/2 {f'8 e'8 es'8~} es'16 g'8 f'16~ 
      | \tuplet 3/2 {f'8 des'8 aes8~} \tuplet 3/2 {aes8 f8 es'8~} es'8 e'4 f'8~ 
      | f'8. ges'16~ ges'8\bendAfter #-4  r8 r2 
      \bar "||" \mark \default r4 r8. f'16~ f'8 d'8 \tuplet 3/2 {bes4 c'8~} 
      | c'8. aes16~ aes8 f8 bes8 aes16 f16~ \tuplet 3/2 {f8 es8 c8~} 
      | c4 d4 f8. bes16~ bes8 r8 
      | r1 
      | \tuplet 3/2 {r8 bes8 b8} \tuplet 3/2 {e'8 aes'8 b'8~} \tuplet 3/2 {b'8 gis'8 a'8~} a'8 b'8 
      | c''8 des''4 bes'4 ges'8 des'8 b8 
      | es'8 ges'8 \tuplet 3/2 {aes'8 des''8 b'8~} b'16 a'8 aes'16~ aes'16 g'8 ges'16~ 
      | \tuplet 3/2 {ges'8 a'8 f'8~} f'8 e'8 es'8 f'8 g'8 a'8 
      | b'8 cis''16 d''16~ d''8 b'8 c''16 b'8 a'16~ a'16 aes'8 g'16~ 
      | g'16 des''8 b'16~ b'8 a'8 aes'8 ges'8 \tuplet 3/2 {f'8 e'4} 
      | es'8 g'16 f'16~ f'4. ges'8 e'4 
      | es'8 d'8 des'16 f'8 es'16~ es'8 des'8 \tuplet 3/2 {a4 c'8\glissando } 
      \bar "||" \mark \default d'8. d'16~ d'8 r8 r2 
      | r1 
      | r1 
      | cis'8. d'16~ d'8 bes8 cis'8 d'4. 
      | c'4 des'8 r8 r2 
      | r1 
      | r8 f8 bes8 d'8 es'8 cis'8 d'8 c'8 
      | b8 d'16 f'16~ f'8 d'16 gis'16~ gis'16 ges'8 f'16 e'8 es'8 
      | d'8 c'8 \tuplet 3/2 {b4 bes8} g8 es4 des16 f16~ 
      | \tuplet 3/2 {f8 e8 es8~} es8 f8 d8 f16 a16~ a8 c'8 
      | bes8 c'8~ c'16 d'16 f'16 bes'16~ bes'8 d'8 r4 
      | r1 
      \bar "||" \mark \default r1 
      | r2 f'8 e'8 es'8 bes16 c'16 
      | d'4 es'8 cis'8 d'8 c'8 \tuplet 3/2 {bes4 g8} 
      | c'8 aes8 g8 f8 \tuplet 3/2 {bes4 g8} aes8 bes8 
      | g8 ges8 f8 e8 es8 ges8 bes8 des'16 f'16~ 
      | f'8 es'8 bes'8 ges'8 \tuplet 3/2 {f'8 e'8 es'8~} es'8 f'8 
      | d'8 c'8 a8 f8 bes8 f16 bes16~ bes8 d'8 
      | es'8 cis'8 d'8 c'8 b8 d'8 f'8. d'16 
      | \tuplet 3/2 {aes'8 g'4} \tuplet 3/2 {f'8 e'4} \tuplet 3/2 {es'8 f'8 aes'8~} aes'8 b'8 
      | \tuplet 3/2 {d''8 des''8 c''8} \tuplet 3/2 {b'8 a'8 g'8} ges'4 \tuplet 3/2 {f'8 e'8 es'8~} 
      | es'16 g'8 f'16~ \tuplet 3/2 {f'8 des'8 bes8} g8 des'8~ \tuplet 3/2 {des'8 bes8 d'8~} 
      | d'8 es'8~ es'8. e'16~ e'8 c'8 f'8\bendAfter #-4  r8 
      \bar "||" \mark \default r2. r8 f8~ 
      | f4 bes8 f8 c'8 r8 r4 
      | r8. f16~ f4 bes8 r8 r4 
      | r4 r8 ges8~ ges8. b16~ \tuplet 3/2 {b8 ges8 des'8} 
      | es'8 e'8 r2 r8 ges'8 
      | es'8 des'8 \tuplet 3/2 {b8 bes4} b8 des'8 es'8 ges'8 
      | f'8 e'8 es'8 g'8 d'8 e'8 f'8 d'8 
      | es'8 cis'8 d'8 c'8 b8 d'8 f'8 d'16 g'16~ 
      | g'8 ges'8 f'8 e'8 \tuplet 3/2 {es'8 f'8 g'8} bes'8 d''8 
      | f''4 \tuplet 3/2 {e''8 es''8 d''8} \tuplet 3/2 {c''4 bes'8} a'8 g'8 
      | \tuplet 3/2 {f'8 e'8 es'8~} es'16 g'8 d'16~ d'8 des'8 c'8 b8 
      | bes8 g8 es8 d8 des8 e16 a16~ a16 g8 ges16~ 
      \bar "||" \mark \default ges8 e16 f16~ f8 es8 d8 c8 bes,8 a,8 
      | aes,4 \tuplet 3/2 {es4 aes,8} bes,4 f8 r8 
      | r2. r8 des''8 
      | \tuplet 3/2 {b'8 ges'8 a'8~} \tuplet 3/2 {a'8 ges'8 aes'8~} \tuplet 3/2 {aes'8 b'8 bes'8} a'16 aes'8 g'16~ 
      | g'16 a'8 f'16~ f'16 e'8 es'16~ es'8 f'8 \tuplet 3/2 {g'8 bes'8 b'8\glissando } 
      | \tuplet 3/2 {des''4 bes'8~} bes'8 ges'8 f'8 e'8 es'8 f'8 
      | e'8 f'8 a'8 c''8 e''8 c''8 a'8. bes'16~ 
      | \tuplet 3/2 {bes'8 es''8 cis''8~} cis''8 b'8 bes'8 aes'8 g'8 f'8 
      | e'8. bes'16~ bes'16 d''8 es'16~ es'4 a'8 des''8 
      | \tuplet 3/2 {b'8 a'8 aes'8~} aes'16 ges'8 f'16~ \tuplet 3/2 {f'8 e'8 es'8~} es'16 g'8 d'16~ 
      | \tuplet 3/2 {d'8 c'8 aes8~} \tuplet 3/2 {aes8 f8 bes8~} bes8 r8 r4 
      | r2. f4~ 
      \bar "||" \mark \default f8. bes16~ bes8. c'16~ c'8. f'16~ f'8. es'16~ 
      | es'4 g'4 \tuplet 3/2 {f'4 g'8\glissando } aes'4~ 
      | aes'8. g'16~ g'16 ges'8 f'16~ f'16 e'8 es'16~ es'16 g'8 e'16~ 
      | e'8 des'8 aes8 f16 bes16~ bes8. ges16~ ges8 a8 
      | e8 ges8 a8 b16 e'16~ e'8 d'8 b8 a8 
      | f16 a8 b16~ b16 d'8 bes16~ \tuplet 3/2 {bes8 g8 aes8~} aes16 bes8 b16~ 
      | b8 des'8 es'8 fis'8 g'8 ges'16 es'16~ es'8 b16 f'16~ 
      | f'8 e'8 cis'8 bes8 es'8 d'8 b8 r8 
      | r4 \tuplet 3/2 {r8 aes'8 bes'8~} bes'16 aes'8 f'16~ f'8 d'8 
      | \tuplet 3/2 {b'8 bes'8 g'8~} g'8 es'8 a'8 r8 r4 
      | r8 aes'8 r2 \tuplet 3/2 {r8 fis'8\glissando  g'8~} 
      | \tuplet 3/2 {g'8 ges'8 es'8~} es'8 b8 f'8 r8 r4 
      \bar "||" \mark \default r8 e'8 r2 r8 d'8 
      | es'8 d'8 b4 des'8 a8 f8 r8 
      | r4 r8 bes'16\glissando  b'16 r4 r8 bes'8 
      | r4 r8 c''16 des''16 r4 r8 a'8 
      | r4 r8 a'4 a'8~ \tuplet 3/2 {a'8 e'8 a'8~} 
      | \tuplet 3/2 {a'8 e'8 a'8} b'8 des''8 b'8 a'8~ \tuplet 3/2 {a'8 f'8 a'8~} 
      | \tuplet 3/2 {a'8 d'8 g'8~} g'16 a'8 b'16~ b'16 a'8 g'16~ g'8 d'16 g'16~ 
      | g'8 c'16 f'16~ \tuplet 3/2 {f'8 g'8 a'8~} a'16 g'8 f'16~ f'8 c'16 g'16~ 
      | \tuplet 3/2 {g'8 ges'8 es'8~} es'16 g'8 es'16 f'8 g'4 bes'8 
      | c''16 des''16 c''16 b'16~ \tuplet 3/2 {b'8 a'8 aes'8~} aes'16 ges'8 f'16~ \tuplet 3/2 {f'8 e'8 es'8} 
      | f'8 d'8~ \tuplet 3/2 {d'8 c'8 b8~} \tuplet 3/2 {b8 g'8 ges'8} ges'8 f'8 
      | e'8 es'8 f'8 d'8 es'8 f'8 d'8 es'8 
      \bar "||" \mark \default d'8 r8 r4 r8. es'16~ es'8 d'8 
      | r2 es'8 d'8 bes8 g16 es'16~ 
      | \tuplet 3/2 {es'8 des'8 aes8~} aes8. es'16~ es'8 d'8 r4 
      | r8 es'8 d'8 r8 r4 r8 es'8~ 
      | es'16 des'8 bes16~ bes8 des'8~ des'16 es'8 f'16~ \tuplet 3/2 {f'8 des'8 es'8} 
      | des'4 \tuplet 3/2 {bes4 e'8~} \tuplet 3/2 {e'8 des'8 b8~} b16 ges16 a8 
      | ges8 e8 ges8 e8 ges8 a8~ \tuplet 3/2 {a8 b8 des'8~} 
      | des'16 fis'8 e'16~ e'16 cis'8 b16~ b16 cis'16 e'8 fis'8 c'8~ 
      | \tuplet 3/2 {c'8 g'8 f'8~} f'8 d'8 c'8 d'8 f'16 g'8 es'16~ 
      | es'8 g'8 f'8 r8 r4 es'8 aes'8 
      | ges'8 es'8 des'8 es'8 ges'8 aes'8 e'8 a'8 
      | g'8 e'8 d'8 e'8 g'8 a'8 f'8 bes'8 
      \bar "||" \mark \default g'8 f'16 es'16~ es'8 aes'8 \tuplet 3/2 {f'4 c'8} bes8 g16 es'16~ 
      | es'8 c'8 aes8 ges16\glissando  bes16 \tuplet 3/2 {b8 aes8 f8} es8 aes,8~ 
      | aes,8 bes,4 r8 r2 
      | \tuplet 3/2 {r8 b,8 e8~} \tuplet 3/2 {e8 d8 des8~} des8 ges8 a8 b8 
      | des'8 c'8 b8 e8 b4 aes8 b8 
      | bes8 aes8 ges8 ges8 f8 e8 es8 f8 
      | d8 f8 a8 c'8 bes8 c'8 d'8 f'8 
      | bes'8 d''8 c''8. b'16~ b'8 gis'8 ges'8 f'8 
      | es'8 f'8 g'8 bes'8 c''16 d''16 des''16 b'16~ b'16 a'8 g'16~ 
      | g'8 ges'16 f'16~ \tuplet 3/2 {f'8 e'8 es'8} r2 
      | cis'16 d'8. f'8 bes8 r2 
      | r2 r8 es'8 f'16 aes'8\glissando  b'16 
      \bar "||" \mark \default c''1~^\markup{\left-align \small vib} 
      | c''4. b'8 bes'8 bes'8 c''8 bes'8 
      | c''8 des''16 b'16~ b'8 b'16 bes'16~ bes'8 bes'8 c''8 bes'8 
      | \tuplet 3/2 {des''8 bes'8 c''8~} c''8 c''8 b'8 b'16 bes'16 b'8 bes'8 
      | \tuplet 3/2 {bes'4 c''8~} c''8 bes'8 des''8 des''8 aes'8 des''8 
      | bes'8 bes'8 \tuplet 3/2 {c''8 bes'8 c''8~} c''8 bes'8 c''8 bes'8 
      | a'8 g'16 a'16~ \tuplet 3/2 {a'8 d''8 des''8} b'8 e'8 \tuplet 3/2 {ges'8 b'8 aes'8~} 
      | aes'16 cis''8 bes'16~ bes'8 es'8 f'8 bes'8 g'8 c''16 a'16~ 
      | \tuplet 3/2 {a'8 d'8 e'8~} \tuplet 3/2 {e'8 a'8 ges'8~} ges'8 b'16 aes'16~ aes'8 des'8 
      | es'16 aes'8 g'16 ges'4 \tuplet 3/2 {f'8 e'8 es'8} g'8 d'8 
      | r2 r8 a'8 g'8 aes'8 
      | c''8 es''8 g''8 bes''8~ bes''2~ 
      \bar "||" \mark \default bes''2 aes'2 
      | bes'4. r8 r2 
      | r2 bes'8 g'16 aes'16~ \tuplet 3/2 {aes'8 c''8 es''8~} 
      | es''16 g''8 bes''16~ bes''4 aes,4 bes,8 r8 
      | r4 bes'8 g'16 aes'16 c''8 es''8~ es''16 g''8 bes''16~ 
      | bes''4.. a,16~ a,4 b,8 r8 
      | r8. bes'16~ \tuplet 3/2 {bes'8 g'8 aes'8} c''8 es''8~ es''16 g''8 aes''16~ 
      | aes''2 gis,8. bes,16~ bes,8 r8 
      | r8. g'16~ \tuplet 3/2 {g'8 aes'8 b'8~} \tuplet 3/2 {b'8 es''8 g''8\glissando } aes''4~ 
      | aes''4 r4 g'8 aes'8 c''8 es''16 g''16~ 
      | g''8 bes''4 r8 r8. g'16~ \tuplet 3/2 {g'8 aes'8 b'8} 
      | es''8 g''8~ g''8. b''16\glissando  c'''8 b''8\glissando  bes''4 
      \bar "||" \mark \default g''4 aes''16 b''16 r8 r4 g''4~ 
      | g''16 aes''16 c'''8 a,4 bes,8. b,16~ b,8. es'16~ 
      | es'8 r8 r8. e'16~ e'8 r8 r8. f'16~ 
      | f'4 ges'8 r8 r4 aes''4 
      | aes''4 aes,8. bes,16~ bes,8 r8 r4 
      | bes,8 r8 r8 b,8 r4 e'8 f'16 ges'16 
      | r4 r8 cis'4 d'8 es'4 
      | g8 gis16 a16~ a8. e16~ e8 f16 fis16~ fis8 cis8 
      | r4 r8 es4 r8 r4 
      | e8 f16 fis16~ fis8 g4 aes8 bes8 b8 
      | c'8 des'16 e'16~ e'8 f'8 fis'8 g'16 gis'16~ \tuplet 3/2 {gis'8 a'8 bes'8~} 
      | \tuplet 3/2 {bes'8 des''8 des''8~} des''16 c''8 bes'16 f'8 des'8~ des'16 g'8 e'16~ 
      \bar "||" \mark \default e'8 des'8 \tuplet 3/2 {aes4 f8} \tuplet 3/2 {bes8 g8 aes8~} aes8 bes8 
      | b8 des'8 \tuplet 3/2 {es'4 fis'8} \tuplet 3/2 {g'8 ges'8 es'8~} \tuplet 3/2 {es'8 b8 a'8~} 
      | \tuplet 3/2 {a'8 aes'8 f'8~} f'16 des'8 b'16~ \tuplet 3/2 {b'8 bes'8 g'8} \tuplet 3/2 {e'4 c''8} 
      | des''4 c''8 b'8~ \tuplet 3/2 {b'8 a'8 c''8} a'8 aes'8 
      | g'8 ges'8 f'8 e'8 \tuplet 3/2 {es'8 d'8 des'8~} \tuplet 3/2 {des'8 f'8 es'8~} 
      | es'16 des'8 bes16 r2. 
      | r8 e'8 \tuplet 3/2 {f'8 a'8 c''8} es''8 g''4.~ 
      | g''2 r2 
      | r2 r8 d''16 es''16~ es''4~ 
      | es''16 d''16 des''16 c''16~ c''4. bes'8 a'4~ 
      | \tuplet 3/2 {a'8 g'8 f'8} e'8 es'16 f'16~ f'8 d'8 c'8 b16 d'16~ 
      | \tuplet 3/2 {d'8 c'8 bes8} a8 g8 ges8 e8 f8 es8 
      \bar "||" \mark \default d8 f16 bes16~ bes16 c'8 es'16~ es'16 c'8 aes16~ \tuplet 3/2 {aes8 f8 c'8~} 
      | c'8 f'8 es'8 c'8 bes8 aes16 c'16~ c'8 f'8 
      | d'16 c'8 aes16~ \tuplet 3/2 {aes8 f8 c'8~} c'16 f'8 es'16 c'4 
      | bes8 e16 des'16~ des'16 ges'8 e'16 des'8 b8~ b16 g8 g'16~ 
      | g'8 r8 r2 c'8 f'8 
      | es'8 c'8 bes8. des'16~ des'16 ges'8 e'16~ e'8 des'8 
      | b8 g8 \tuplet 3/2 {d'8 g'8 f'8~} \tuplet 3/2 {f'8 d'8 c'8~} c'8 aes16 es'16~ 
      | es'8 gis'8 es'8 gis'8 \tuplet 3/2 {fis'8 es'8 cis'8~} cis'16 b8 e'16~ 
      | e'8 a'8 e'8 a'8 e'8 a'8 \tuplet 3/2 {e'8 a'8 e'8~} 
      | e'16 a'8 a'16~ a'16 e'8 a'16~ a'16 e'8 a'16 a'4 
      | e'8 a'8 \tuplet 3/2 {g'8 e'8 d'8~} d'16 a8 f'16~ f'16 bes'8 g'16~ 
      | \tuplet 3/2 {g'8 f'8 es'8~} es'8 c'8 ges'8 aes'8 b'8 des''8~ 
      \bar "||" \mark \default des''2.~ \tuplet 3/2 {des''8 des''8 a'8} 
      | bes'8 r8 r2. 
      | r4 a'8 des''16 b'16~ b'8 a'8 g'8 ges'8 
      | f'8 e'8 es'8 f'16 e'16~ \tuplet 3/2 {e'8 d'8 g'8\glissando } ges'8. bes16~ 
      | bes8 c'8 d'8 f'8 bes'8 d''8 aes'8 r8 
      | r4 aes'8 des''8 bes'8 ges'8 des'8 a8 
      | e'8 r8 r8. g'16~ g'8 r8 r4 
      | \tuplet 6/4 {f'16 e'16 ges'16 r8.} r8. f'16~ f'8 r8 r4 
      | b8 r8 r8 g8 b16 d'8 c'16~ c'16 bes8 a16~ 
      | a8 c'8 es'8 f'8 \tuplet 3/2 {g'8 g'8 ges'8~} ges'8 e'8 
      | f'8 es'8 d'8 c'8 \tuplet 3/2 {b8 g'8\bendAfter #+4  fis'8} g'8 ges'8 
      | f'8 e'16 es'16~ es'8 d'8 \tuplet 3/2 {c'8 bes8 a8~} a8. bes16~ 
      \bar "||" \mark \default bes8 f16 aes16~ aes8. bes16~ bes4 aes4\bar  ".."
    }
    >>
>>    
}
