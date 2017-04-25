\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Peep"
  composer = "Michael Brecker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      | des1:maj11+.9/c | des1:maj11+.9/c | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | aes1:9/c | s1 
      | b1:/c | aes1:maj75+/c | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | c1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | f1:/a | s1 | bes1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | g1:sus4/a | s1 | bes1:min11.9 | s1 
      | es1:9sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | des1:maj11+.9/c | s1 | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | aes1:9/c | s1 
      | b1:/c | aes1:maj75+/c | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | c1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | f1:/a | s1 | bes1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | g1:sus4/a | s1 | bes1:min11.9 | s1 
      | es1:9sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | des1:maj11+.9/c | s1 | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | aes1:9/c | s1 
      | b1:/c | aes1:maj75+ | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | c1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | f1:/a | s1 | bes1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | g1:sus4/a | s1 | bes1:min11.9 | s1 
      | es1:9sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | des1:maj11+.9/c | s1 | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | aes1:9/c | s1 
      | b1:/c | aes1:maj75+/c | c1:min7+13.9 | s1 | c1:min7+11+.9 | s1 | c1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | f1:/a | s1 | bes1:min11.9 | s1 
      | b1:9+5+ | s1 | bes1:min13.9 | s1 | g1:sus4/a | s1 | bes1:min11.9 | s1 
      | es1:9sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | des1:maj11+.9/c|
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


      \tempo 4 = 320
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r8 f8 bes8 c'8 des'8 es'8 \tuplet 3/2 {f'8 g'8 aes'8} 
      \bar "||" \mark \default g'8 r8 r2 \tuplet 3/2 {ges'8 f'8 g'8} 
      | f'8 r8 r4 r8 e'16 f'16 es'4 
      | r2 d'16\bendAfter #+4  es'16 d'8 r4 
      | r4 c'4 g4 f4 
      | ges4 d'2~ d'8 es'8 
      | d'8 c'8 b8 aes8 g8 ges8 f8 e8 
      | es8 c8 bes,4 a,4. r8 
      | r1 
      | r2 r8 g8 c'8 dis'16 e'16 
      | g'8 r8 r4 \tuplet 3/2 {r8 g'8 e'8} c'8 aes8 
      | g8 r8 r4 r8 g8 \tuplet 3/2 {aes8 b8 d'8} 
      | es'16 g'8.~ g'8 f'8 es'16 d'16 c'16 b16 \tuplet 3/2 {aes8 g8 f8} 
      | es16 c16 r8 r2. 
      | r4 r8 aes'8 g'8 ges'8 f'8 e'8 
      | es'8 f'8 d'8 c'8 b8 g8 a16 d'8 b16~ 
      | b8 c'8 es'8 g'8 c''8 c'8 r4 
      | r4 f'8 r8 r2 
      | b'8 r8 r2 g'8 r8 
      | r2 c''8 r8 r4 
      | bes'8 aes'8~ aes'8. g'16~ g'8 f'8 r4 
      | r4 r8. a,16~ a,2 
      | r2 f'4. r8 
      | r2 bes,2 
      | es'4~ \tuplet 3/2 {es'8 des'8 bes8~} bes16 aes8 f16~ f8 r8 
      | r4 a2 c'8 d'8 
      | dis'8 f'8 \tuplet 3/2 {g'8 a'8 b'8~} b'8 g'8 r4 
      | r1 
      | des''4 \tuplet 3/2 {c''8 bes'8 a'8~} a'8 r8 r4 
      | r2 r8 g'4.~ 
      | g'4.. f'16~ f'16 dis'8 des'16 c'4~^\markup{\left-align \small vib} 
      | c'1~ 
      | c'1~ 
      | c'1~ 
      | c'2. des'4~ 
      | des'8 r8 r2. 
      | r1 
      | r8 f8 bes8 c'8 des'8 dis'8 e'8 fis'8 
      | g'8 a'16 b'16~ b'8 cis''8 d''8 b'8 g'8 e'8 
      | a'8 aes'8 g'16 b'8 a'16~ a'16 g'8 ges'16~ ges'16 e'8 d'16~ 
      | d'8. ges'16~ ges'8. a16~ a4 d'4 
      | ges8. a16~ a8. d16~ d8. ges16~ ges4 
      | e4. c4 a,4.~ 
      | a,4. r8 r2 
      | r8 a,8 e8 d8 r2 
      | d8 g8 e8 r8 r2 
      | r4 f8 aes16 c'16~ c'16 e'8 d'16~ d'8 e'8 
      | f'8 d'8 es'8 d'8 des'16 f'8 es'16~ es'16 c'8 g16~ 
      | g16 f8 bes16~ bes8 es'8 f'8 g'8 aes'8 bes'8 
      \bar "||" \mark \default aes'1~ 
      | aes'2. f'8 es'8 
      | \tuplet 3/2 {des'8 bes8 aes8} f8 es8 des8 bes,4 r8 
      | r1 
      | r8 g8 aes8 b8 d'8 es'8 f'8 g'8 
      | aes'8 ais'8 \tuplet 3/2 {b'8 des''8 es''8~} es''4 b'8 r8 
      | r2. g'8 aes'8 
      | g'8 ges'8 f'8 e'8 es'8 g'8 a'8 b'8 
      | e''8 g''8~ g''2~ g''8 e''8 
      | c''4 aes'4\bendAfter #+4  g'4 f'4 
      | d'8 es'8~ es'4.\bendAfter #-4  r8 r4 
      | r2 g8 a16 b16~ \tuplet 3/2 {b8 d'8 es'8~} 
      | es'16 b8 aes16 des'8 bes4 des'8 \tuplet 3/2 {ges'4 bes'8} 
      | des''8 des''8 \tuplet 3/2 {bes'8 des''8 b'8~} b'16 a'8 aes'16 ges'4 
      | f'8 e'8 es'8 f'8 d'8 c'8 b16 bes8 c'16~ 
      | \tuplet 3/2 {c'8 d'8 es'8~} es'16 f'8 g'16~ g'8 c''4 r8 
      | r1 
      | r4 b'8 g'8 a'16 b'8 bes'16~ bes'16 a'8 aes'16~ 
      | \tuplet 3/2 {aes'8 g'8 f'8~} \tuplet 3/2 {f'8 g'8 aes'8~} aes'8 bes'8 g'8 ges'8 
      | f'8 e'8 es'8 f'8 g'8 bes'8 f'8 e'8 
      | es'8 f'8 d'8 des'16 c'16~ \tuplet 3/2 {c'8 b8 bes8~} bes8 g8 
      | es8 c8 f16 e8 es16~ es16 f16 g16 bes16~ \tuplet 3/2 {bes8 d'8 f'8~} 
      | \tuplet 3/2 {f'8 des'8 a8~} \tuplet 3/2 {a8 f8 b8~} b8 bes8 a16 b8 aes16~ 
      | \tuplet 3/2 {aes8 f8 aes8~} aes16 b8 bes16 aes4 \tuplet 3/2 {g8 ges8 f8~} 
      | f8 e8 \tuplet 3/2 {dis8 f8 g8~} \tuplet 3/2 {g8 a8 b8~} b8 c'8 
      | d'8 dis'8 f'8 g'8 a'8 b'8 c''8 des''8 
      | c''4 r2 bes'8 c''8 
      | bes'4 r4 a'8 bes'8 a'4 
      | f'4 c'4 a8. f16~ f8 bes,8~ 
      | bes,4 a,4 r2 
      | r2. r8 f8 
      | bes8 des'8 c'8 bes8 a8 f8 g8 a8 
      | \tuplet 3/2 {bes4 c'8} des'8 dis'8 \tuplet 3/2 {e'4 f'8} ges'8 e'8 
      | f'8 des'8 bes8 f8 bes8 f'8 des'8 bes8 
      | d'8 b8~ b16 ais8 b16 a8 aes8 g8 b8 
      | a8 g8 ges8 a8 f8 e8 es8 f8 
      | d8 f8 bes8 d'8 es'16 b8 aes16~ \tuplet 3/2 {aes8 des'8 bes8} 
      | \tuplet 3/2 {des'4 ges'8~} ges'16 bes'8 des''16~ des''8 des''8 bes'16 des''8 b'16~ 
      | b'8 e'8 ges'8 b'8 a'8 d'8 e'8 a'8 
      | \tuplet 3/2 {g'4 c'8} d'8 g'8 f'16 e'16 bes16 c'16~ \tuplet 3/2 {c'8 f'8 es'8~} 
      | es'8 aes8 bes8 es'8 des'16 c'8 f16 aes8 des'8 
      | b8 e8 \tuplet 3/2 {g8 b8 a8~} \tuplet 3/2 {a8 es8 e'8~} e'16 a'8 g'16~ 
      | g'8 r8 r2 r8 a,8 
      | es8 g8 es8 c8 f8 bes8 c'8 es'8~ 
      | \tuplet 3/2 {es'8 c'8 ges'8} des'8 bes8 g4 aes8 ais8 
      | \tuplet 3/2 {b8 des'8 es'8~} es'8 ges'8 f'8 e'8 es'8 ges'8 
      | e'8 des'16 b16~ b8 ges8 a16 d'8 b16~ b4 
      | \tuplet 3/2 {c'8 des'8 es'8} d'8 cis'8 d'8 g'8 \tuplet 3/2 {a'8 bes'8 c''8} 
      \bar "||" \mark \default d''16 des''16 r8 r2 bes'8 r8 
      | r4 r8 f'8 bes'8 r8 r4 
      | r8 g'4 d'8 r4 r8 g'8 
      | e'8 d'8 \tuplet 3/2 {b8 aes8 f8~} f8 aes8 b8 d'8 
      | \tuplet 3/2 {a8 g4} aes8 ais16 b16~ \tuplet 3/2 {b8 des'8 es'8~} \tuplet 3/2 {es'8 fis'8 g'8~} 
      | g'8 ges'8 \tuplet 3/2 {es'8 b8 a'8~} \tuplet 3/2 {a'8 aes'8 g'8} \tuplet 3/2 {f'8 d'8 b'8~} 
      | \tuplet 3/2 {b'8 a'8 bes'8~} bes'8 g'8 a'8 g'8 aes'8 ais'8 
      | \tuplet 3/2 {b'8 a'8 bes'8~} bes'2\bendAfter #-4  aes'8 g'8~ 
      | g'4 \tuplet 3/2 {ges'4 f'8~} f'8 e'8 dis'8 g'8 
      | f'8 d'8 bes8 g8 d'8 c'8 bes8 g8 
      | a8 g8 f8 es8 a,4 es8 a,8~ 
      | a,8 r8 r2. 
      | r16 a,8 es16~ es16 a8 b,16~ b,8 es8 g16 b8 ges16~ 
      | ges8 d8 f8 e8 es8 g16 b16~ b16 d'8 ges'16~ 
      | \tuplet 3/2 {ges'8 d'8 b8~} b16 g8 f'16~ f'16 d'8 b16~ \tuplet 3/2 {b8 a8 bes8~} 
      | bes8 ges8 d8 bes,8 r2 
      | \tuplet 3/2 {r8 ais,8 d8} f16 ais8 f16 e8 dis8 f4 
      | d8 g16 ais16~ ais16 d'8 a16 g4 gis16 ais8 b16~ 
      | \tuplet 3/2 {b8 a8 bes8~} \tuplet 3/2 {bes8 a8 aes8~} aes16 g8 ges16~ ges8 d8 
      | f4 d8. e16~ e8 bes,4 r8 
      | r4 r8. a,16~ \tuplet 3/2 {a,8 es8 g8} r4 
      | r8 b,8 es8 g8 r4 r8 aes,8 
      | \tuplet 3/2 {bes,8 c8 e8} r4 r8 bes,8 d8 ges8 
      | r4 r8. bes,16~ bes,16 d8 ges16~ ges16 bes8 f16~ 
      | f8 dis8 \tuplet 3/2 {e8 es8 d8} r2 
      | \tuplet 3/2 {b,8 dis8 g8} b8 fis8 \tuplet 3/2 {dis4 f8} e8 dis8 
      | r2 bes,16 d8 ges16~ ges8 r8 
      | r8. d16~ \tuplet 3/2 {d8 ges8 bes8~} bes8 d'8 es'8 d'8 
      | des'8 c'8 b8 a8 ais8 g8 gis8 ais8 
      | \tuplet 3/2 {b8 cis'8 dis'8~} \tuplet 3/2 {dis'8 ges'8 f'8} e'8 dis'8 \tuplet 3/2 {f'4 d'8~} 
      | d'16 c'8 b16~ \tuplet 3/2 {b8 g8 c'8} es'8 d'8 c'8 b8 
      | g8 a8 d'4 b8 c'8 \tuplet 3/2 {es'4 bes'8} 
      | g'4 aes'16 b'8 es''16~ es''16 g''16 aes''4.~ 
      | aes''2. r4 
      | r1 
      | a,8 es8 g8 d8~ \tuplet 3/2 {d8 es8 g8~} g16 b8 es'16~ 
      | es'16 d'8 b16~ b8\bendAfter #-4  g16 c'16~ \tuplet 3/2 {c'8 d'8 es'8~} \tuplet 3/2 {es'8 f'8 g'8} 
      | bes'8 g'8~ \tuplet 3/2 {g'8 aes'8 b'8} \tuplet 3/2 {des''8 es''8 g''8} aes''8 g''8~ 
      | g''4. dis''16 e''16 c''4 aes'8 r8 
      | r2 a,8 es8 g8 es8 
      | \tuplet 3/2 {c8 d8 f8~} \tuplet 3/2 {f8 e8 es8} f8 bes8~ bes16 d'8 f'16~ 
      | f'16 d'8 bes16~ \tuplet 3/2 {bes8 g8 c'8} es'8 d'8~ \tuplet 3/2 {d'8 c'8 b8} 
      | \tuplet 3/2 {bes8 g8 a8} b8 c'8 d'8 es'8 f'8 fis'8~ 
      | \tuplet 3/2 {fis'8 g'8 aes'8~} aes'8 fis'8 g'8 ges'8 f'8 e'8 
      | es'8 f'8 g'8 bes'8 cis''8 d''8 \tuplet 3/2 {bes'4 g'8} 
      | \tuplet 3/2 {b'8 c''4\bendAfter #+4 } \tuplet 3/2 {b'8 a'8 g'8~} g'8 g'8 a'8 c''8 
      | \tuplet 3/2 {b'8 a'8 bes'8~} bes'8 g'8 \tuplet 3/2 {aes'8 c''8 es''8~} es''8 g''8 
      | a''1~ 
      \bar "||" \mark \default a''4 r2 ges''8 aes''16 g''16~ 
      | g''4 es''4 c''8. g'16~ g'16 aes'8 g'16~ 
      | g'4. es'8~ es'4. r8 
      | r2. g'8 a'8 
      | b'8 c''8 b'8 a'8 \tuplet 3/2 {g'8 a'8 b'8~} \tuplet 3/2 {b'8 g'8 bes'8~} 
      | bes'16 ges'8 f'16~ f'8 e'8 es'8 f'8 d'8 c'8 
      | b4 \tuplet 3/2 {a8 d'8 bes8~} bes8 c'8 es'8 g'8 
      | bes'8 g'8 \tuplet 3/2 {aes'8 c''8 es''8} g''8 aes''8 g''8. gis''16 
      | a''2. ais''4~ 
      | ais''4\bendAfter #-4  r2. 
      | r4 g'8 a'8 bes'8 c''8 a'8 g'8 
      | f'8 e'8 es'8 f'8 cis'8 d'8 f'8 e'8 
      | \tuplet 3/2 {es'8 f'4} d'8 c'16 b16~ b8 d'8 f'8 g'8 
      | aes'8 g'8 fis'8 g'8 bes'8 aes'16 es'16~ es'8 c'16 g'16~ 
      | g'8 f'8 des'8 aes8 e'8 d'8 \tuplet 3/2 {bes8 e8 des'8~} 
      | des'8 c'16 b16~ b16 a8 bes16~ bes16 aes8 g16~ g8 f8 
      | es4 dis'4~ dis'16 a'8\glissando  b'16~ b'4~ 
      | b'4\bendAfter #-4  r2. 
      | bes'8\glissando  c''8~ c''2\bendAfter #-4  r4 
      | r2 bes'4 g'4~ 
      | g'8 bes'8 des''4.. c''16~ \tuplet 3/2 {c''8 bes'8 a'8~} 
      | a'2. g'4 
      | f'4 g'8. aes'16 g'4 f'4~ 
      | f'2 r2 
      | r2 r16 g'8 a'16 b'8 dis''8 
      | \tuplet 3/2 {fis''8 g''4~} g''8 dis''8 b'4 ais'8 dis''8 
      | des''8 b'16 bes'16~ bes'8 aes'8 g'8 ges'8 f'8 e'8 
      | es'8 f'8 g'8 es'8 f'8 des'8 bes8 f8 
      | bes8 f'8 d'8 c'8 d'8 c'8 a8 f8 
      | g8 dis8 c8 f4\bendAfter #-4  gis8 ais8 d'8 
      | f'8 des'8 a16 g8 bes16 c'4 des'8 es'8 
      | f'8 g'8 \tuplet 3/2 {aes'8 bes'8 c''8~} c''4 bes'8 aes'16 bes'16~ 
      | bes'8 r8 r4 r8 aes'8 g'4 
      | aes'4\bendAfter #-4  r2 g'8 f'8~ 
      | f'8 g'4. r2 
      | f'8 es'4 f'4. r4 
      | r4 es'4\bendAfter #-4  des'2\bendAfter #+4  
      | es'4.\bendAfter #-4  des'4\bendAfter #+4  es'4.\bendAfter #-4  
      | des'8 r8 r2. 
      | r8 f8 \tuplet 3/2 {g8 aes8 bes8} des'8 es'8 f'16 g'16 aes'16 ais'16 
      | \tuplet 3/2 {b'8 c''4~} c''8 bes'4. c''4 
      | aes'2.. c''8~ 
      | c''4 bes'4 c''8. g'16 aes'4 
      | \tuplet 3/2 {c''8 g'4~} g'4\bendAfter #-4  r2 
      | r4 c''8 des''8 c''8 bes'8 \tuplet 3/2 {a'8 c''4} 
      | bes'8 aes'8 g'8 b'8 a'8 aes'8 g'8 b'8 
      | a'8 g'8 ges'8 a'8 f'8 e'8 es'8 f'8 
      | g'8 bes'8 f'8 e'16 es'16 d'4 des'8 f'8 
      \bar "||" \mark \default \tuplet 3/2 {es'8 des'8 c'8} b8 bes8 \tuplet 3/2 {a8 aes8 g8} ges8 f8 
      | e8 es4 f8 d4. r8\bar  ".."
    }
    >>
>>    
}
