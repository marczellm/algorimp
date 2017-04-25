\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Impressions (1963)"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key d \minor
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
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 es2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 d2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 es2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 d2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 es2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 d2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 es2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 d2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 es2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 d2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 es2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 d2:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2 s2 | s1 | s1 | s2 r2 | s2 s2 | s2 s2|
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


      \tempo 4 = 279
      \set Score.currentBarNumber = #0
     
      | r8 a'2..~ 
      \bar "||" \mark \default a'8 a'4. a'4. a'8~ 
      | a'4.. a'16~ a'4 g'4 
      | a'2 a'4 g'8 a'8~ 
      | a'8 g'8 a'8 g'8 f'4 d'4 
      | r4 r8 a'4. g'4 
      | \tuplet 3/2 {f'8 d'8 f'8~} \tuplet 3/2 {f'8 d'8 c'8} b8 d'8 b4 
      | a4 \tuplet 3/2 {b8 a4} g4 \tuplet 3/2 {a4 f8~^\markup{\left-align \small vib}} 
      | f2 g4 a8 r8 
      \bar "||" r2 a8 b8 d'8 f'8 
      | a'8 b'8 d''8 b'4. r4 
      | r4 aes'8 bes'8 a'8 g'8 a'8 d''8 
      | b'4.^\markup{\left-align \small vib} a'8 f'8 d'8 r4 
      | r4 a8 b8 d'8 f'8 a8 b8 
      | d'8 f'8 \tuplet 3/2 {a'8 b'8 d''8~} d''8 a'8 r4 
      | r4 a'8 b'8 a'8 f'8 d'8 b8 
      | e'8 d'8 b8 a16 f16~ f8. a16~ a8 r8 
      \bar "||" r2 bes,8 f8 bes8 es'8 
      | aes,4 es'8 bes,4. r4 
      | r8 bes,8~ \tuplet 3/2 {bes,8 f8 bes8} \tuplet 3/2 {c'4 f8} bes8 es'8 
      | bes4 r4 \tuplet 3/2 {bes4 c'8} es'8 f'8 
      | es'8 f'8 \tuplet 3/2 {bes'4 b'8} aes'8 ges'8 \tuplet 3/2 {es'4 aes'8} 
      | f'8 c'8 bes8 f8 es8 bes8 aes8 f8 
      | es4 f8 bes,4 r8 r4 
      | r4 \tuplet 3/2 {bes'4 ges'8} aes'8 es'8 \tuplet 3/2 {c'4 bes8} 
      \bar "||" d'8 f'8 r4 e'8 g'4 f'8~^\markup{\left-align \small vib} 
      | f'4.. d'16 g'8 f'8 d'8 c'8 
      | e'8 des'8 b8 bes8 a8 aes8 g8 b8 
      | a8 f8 e4 f4 a8 r8 
      | r4 \tuplet 3/2 {r8 a8 b8} des'8 f'8 a'8 b'8 
      | des''8 r8 r4 r8. des''16~ des''16 b'8 a'16 
      | f'8 des'8 a'8 f'8 d'8 f'8 d'4 
      | bes'8 e'8 b8 a4 a8 f4 
      \bar "||" \mark \default a8 a,8~ a,4. a,8 ges8 a8 
      | b,4 ges8 r8 r8 a,8~ a,16 ges8 a16 
      | \tuplet 3/2 {b,4 f8} r4 r8 b,8 f8 a8 
      | d8 g8 r4 r8 e8 g8 b8 
      | f8 a8 r4 r8 a8~ a16 c'8 f'16 
      | bes'8 d'8 r4 r8 d'8 g'8 b'8 
      | c'4 f'8 a'8 d'4 a'8 b'8 
      | e'8 g'8 b'8 f'8 r2 
      \bar "||" r2 b'2~^\markup{\left-align \small vib} 
      | b'1~ 
      | b'4. a'8 b'4 a'8 b'8~^\markup{\left-align \small vib} 
      | b'4. a'8 f'8 d'8 r4 
      | r2 b'8. a'16~ a'8 b'8~ 
      | b'2\bendAfter #+4  a'4 b'4 
      | b'4.. a'16~ a'16 b'8 a'16~ a'16 b'8 a'16~ 
      | a'16 f'8 f'16~ f'16 d'8 bes16 f'2~^\markup{\left-align \small vib} 
      \bar "||" f'16 aes'8 c''16~ c''8 c''8~^\markup{\left-align \small vib} c''2~ 
      | c''2 aes'8 es'8 r4 
      | r2 \tuplet 3/2 {c''4 bes'8~} bes'8 c''8~ 
      | c''2 aes'8 es'8 r4 
      | r2 c''8 bes'4 c''8~ 
      | c''2 bes'8. c''16~ c''4 
      | r2 c''8 bes'4 c''8~ 
      | c''2 aes'8 es'8 r4 
      \bar "||" r4 r8. b'16~ b'8 a'8 b'4~ 
      | b'2.. a'8~ 
      | a'8 b'4 r8 r4 r8 b'8 
      | a'8 b'8~^\markup{\left-align \small vib} b'2~ b'16 g'8 f'16 
      | r2. b'8 a'8~ 
      | a'8 b'8~ b'4. a'4 b'8~ 
      | b'8 b'4^\markup{\left-align \small vib} a'8 b'4 \tuplet 3/2 {a'4 b'8~} 
      | b'8. f'16 d'8 bes8 f'4.^\markup{\left-align \small vib} d'8 
      \bar "||" \mark \default a'4 b'8. a'16~ a'8 a'8~ a'16 b'8 a'16~ 
      | a'4 b'8 a'4. r4 
      | r4 b'8. a'16~ a'4 b'4 
      | a'2 \tuplet 3/2 {b'4 f'8} d'8 b8 
      | f'8 g'8 \tuplet 3/2 {a'4 b'8} g'8 b'8 a'8 g'8 
      | \tuplet 3/2 {f'4 f'8} d'8 bes8 f'2^\markup{\left-align \small vib} 
      | g'8 f'8 \tuplet 3/2 {g'4 f'8} d'8 f'8 d'4~ 
      | \tuplet 3/2 {d'8 b8 d'8} b8 a4 a8 f8 r8 
      \bar "||" r2 d8 f8 d4 
      | e4 g8 b8 f8 g8 \tuplet 3/2 {a4 b8} 
      | cis'8 d'8 e'8 f'8 d'8 e'8 f'8 g'8 
      | g'8 f'8 a'8 c''4 c''8 b'8 r8 
      | r2 d''2~^\markup{\left-align \small vib} 
      | d''2 g'16 b'8 c''16 b'8 bes'8 
      | a'8 aes'8 g'8 b'8 a'8 f'8 e'8. a'16 
      | f'2^\markup{\left-align \small vib} \tuplet 3/2 {g'4 aes'8} r4 
      \bar "||" r4 es8 aes8 c'8 gis,4.~ 
      | gis,8 a,8~ \tuplet 3/2 {a,8 ges8 bes8~} bes8 f8 r4 
      | r4 r16 c'8 f16 \tuplet 3/2 {bes4 es'8} bes8 f8 
      | aes8 r8 r4 aes8 g'8 \tuplet 3/2 {es'4 aes'8} 
      | c''8 des''8 bes'8 ges'8 r2 
      | bes'4 \tuplet 3/2 {ges'8 es'4} \tuplet 3/2 {aes'4 f'8} des'4 
      | f'8 es'8~ \tuplet 3/2 {es'8 bes'8 f8} es8 bes8 \tuplet 3/2 {aes8 f8 es8~} 
      | es8 aes8 f8 bes,4 r8 r4 
      \bar "||" r8. a,16~ \tuplet 3/2 {a,8 ges8 a8} bes,8 r8 r4 
      | r4 bes,4 a8 aes8 f8 aes8~ 
      | \tuplet 3/2 {aes8 es8 f8} g8 bes8 e8 r8 r4 
      | r4 e8 f8~ \tuplet 3/2 {f8 a8 g8} es4 
      | f8 d8 bes8. d'16 g'8 aes'8 \tuplet 3/2 {g'4 aes'8} 
      | es'8 des'8~ \tuplet 3/2 {des'8 bes8 aes8} ges8 r8 r8 des'8 
      | \tuplet 3/2 {ges'8 des'8 b8~} b16 bes8 a16 r2 
      | r2 \tuplet 3/2 {aes'4 f'8} d'4 
      \bar "||" \mark \default b'1~ 
      | b'4..\bendAfter #+4  a'16 b'4~ b'16 a'8 b'16~^\markup{\left-align \small vib} 
      | b'4.. a'16~ a'8 f'8 d'8 r8 
      | r4 r8 b'4.^\markup{\left-align \small vib} a'8 f'8 
      | d'8 f'8 a'8 b'8 \tuplet 3/2 {a'4 f'8} a'8 b'8 
      | a'8 f'8 a'8 b'8 a'8 f'8 \tuplet 3/2 {d'4 b8} 
      | f'2~^\markup{\left-align \small vib} f'16 f'16 g'8 a'8 b'8 
      | g'8 a'8 g'8 f'4 f'8 d'4 
      \bar "||" f'8 d'8 r2. 
      | g'1~ 
      | g'4. f'8 \tuplet 3/2 {g'4 f'8~} f'8 g'8~^\markup{\left-align \small vib} 
      | g'4. f'8 d'4 a4 
      | r4 a8 b8 d'8 f'8 a'8 b'8 
      | c''2 b'8 c''8 b'8 a'8 
      | f'8 b'8 a'4 f'8 aes'8 f'8 d'8~ 
      | d'8 f'8 d'8 b4 b8 a8 r8 
      \bar "||" r4 es8 aes8 c'8 aes,4. 
      | \tuplet 3/2 {aes,8 ges8 bes8} c8 r8 r2 
      | r16 c'8 f'16 bes'8 d'8 aes'8 r8 r4 
      | r8 des''2..^\markup{\left-align \small vib} 
      | \tuplet 3/2 {bes'8 cis''8 d''8} des''8 c''8 b'16 bes'8 a'16 \tuplet 3/2 {ges'8 f'4} 
      | \tuplet 3/2 {es'8 aes'8 ges'8} \tuplet 3/2 {es'4 bes'8~} bes'16 f'8 c'16~ c'16 bes8 f16 
      | es8 bes8 aes8 f8 es8 f8 es8 c8 
      | bes,4 c8 bes,8 r2 
      \bar "||" r2 e'8 f'8 a'8 c''8 
      | b'4. a'8 f'8 d'8 r4 
      | r2 a'8 f'8 \tuplet 3/2 {d'4 bes8} 
      | f'4.^\markup{\left-align \small vib} des'8 g'8 f'8 g'8 f'8 
      | d'8 f'8 \tuplet 3/2 {d'4 c'8} b8 d'8 b8 a8~ 
      | a16 g8 a16 b8 g8 a8 f8 \tuplet 3/2 {d4 f8} 
      | d8 f8 a8 b,8 r2 
      | r2 a'2~^\markup{\left-align \small vib} 
      \bar "||" \mark \default a'8 a'8 b'8 gis'8 a'4 b'8 aes'8 
      | es'8 r8 r4 r16 es'8 f'16~ f'16 g'8 a'16~ 
      | \tuplet 6/4 {a'16 aes'4 f'16~} f'16 a'16 des''4 b'8 a'8 f'8 
      | es'8 des'8 b4 des'2^\markup{\left-align \small vib} 
      | es'4~ es'16 g'8 f'16 es'8 f'8 es'8 des'8~ 
      | des'16 a8 es'16 b8 a8 f8 a8 \tuplet 3/2 {f4 d8} 
      | r1 
      | r4 g'2.~ 
      \bar "||" g'8 g'8 f'8 g'4. g'4~^\markup{\left-align \small vib} 
      | g'4.. f'16~ f'16 d'8 a16~ a8 r8 
      | r2 a8 b8 d'8 f'8 
      | a'16 b'8 d''16~ d''16 g''8 a'16~ a'2~ 
      | a'1 
      | a'4 \tuplet 3/2 {d''4 c''8} \tuplet 3/2 {a'4 a''8~} a''8 a''8~ 
      | a''8 a'8~ a'16 a'8 d''16~ d''8 d''8 b'8 d''8~ 
      | d''8 d''4 g''8~ g''4. a'8 
      \bar "||" r2. r8 aes''8~ 
      | aes''8 aes'4. bes'2~^\markup{\left-align \small vib} 
      | bes'4. f'8 bes'8 b''8 es''4 
      | es''8 c''8 aes'4~ \tuplet 3/2 {aes'8 aes'8 ges'8~} ges'8. bes'16 
      | \tuplet 3/2 {des''4 des''8~} des''8 bes'8~ \tuplet 3/2 {bes'8 f'8 es'8~} es'8 f'8 
      | c'8 aes8~ aes16 es'8 bes16~ \tuplet 3/2 {bes8 f8 es8} aes8 f8~ 
      | f4. aes8 bes8 r8 r4 
      | r4 r8 bes'8~ bes'16 c''8 es'16~ es'8 f'8~ 
      \bar "||" f'8 a'8~ a'16 d''16 b'8 r2 
      | r8. b'16~^\markup{\left-align \small vib} b'2 a'8 b'8 
      | a'16 f'8 a'16 f'4..^\markup{\left-align \small vib} d'16 g'8 f'8 
      | g'8 f'8 d'8 d'8 b8. g16 d'4~ 
      | d'8 b'8 des'4. g'8 es'8 r8 
      | r4 r16 a'8 es'16 b8 a8 f4 
      | a8 b8 e4 g8 b8~ \tuplet 3/2 {b8 d8 f8} 
      | a16 f16 b,8 r2 r8. b16~ 
      \bar "||" \mark \default \tuplet 3/2 {b8 d8 a8} b,4. b8 ges8 a8 
      | c4. c8 f8 a8 d8 r8 
      | r4 d8 f16 a16~ a8 b8 e8 r8 
      | r4 \tuplet 3/2 {e8 f8 g8~} g16 a8 f16~ \tuplet 3/2 {f8 g8 a8~} 
      | a8 b8 cis'8 d'16 e'16~ \tuplet 3/2 {e'8 f'8 d'8~} \tuplet 3/2 {d'8 e'8 f'8~} 
      | f'8 g'8 a'8 f'8 d'8 bes8 f'4~ 
      | f'16 g'8 f'16 d'8 f'8 d'8 c'8 b8 d'8 
      | b8 a4 a16 f16~ f8 f8 a8 b8 
      \bar "||" r2. b8 d'8 
      | f'8. c''16~ c''4 a'8 c''8 a'4 
      | c''4 a'4 c''4 a'4 
      | c''4 a'4 a''4 r4 
      | r4 c''8. a'16~ a'8 c''8 a'4 
      | c''8 c''8 a'4 c''8 c''8 a'4 
      | c''8 f'8 a'4 c''8 c''8 r4 
      | r4 c''8 c''8 a'8 c''8 \tuplet 3/2 {es'4 aes'8} 
      \bar "||" c''8. c'16~ c'4 r4 r8 des'8 
      | ges'8 bes'8 des''8 r8 r2 
      | des''8 c''16 b'16 bes'4 r2 
      | des''8 b'8 a'8 aes'8 g'8 b'8 e'8 g'8 
      | b'8 a'8 ges'8 b'8 bes'4.. ges'16~ 
      | ges'16 f'8 es'16~ es'16 aes'8 ges'16 \tuplet 3/2 {es'4 bes'8} f'8 c'8 
      | bes8 f8 es8 bes8 aes8 f8 es8 f8 
      | es8 bes,4 bes,4 gis,4 r8 
      \bar "||" r4 a,4 bes,2 
      | \tuplet 3/2 {b,4 ges8} d8 r8 r2 
      | d8 ges8~ ges16 a8 f16 es8 g8 f8 r8 
      | r4 f8 e8 es8 g8 d8 f8 
      | bes8 f8 d'8 r8 r4 r16 aes'8 es'16 
      | des'4 \tuplet 3/2 {bes8 f'8 des'8} b8 bes8 a8 aes8 
      | g8 b8 f8 r8 r4 \tuplet 3/2 {g'4 es'8~} 
      | es'4 des'4 des'8 es8 \tuplet 3/2 {d'8 d'8 f'8~} 
      \bar "||" \mark \default f'8 r8 r2 r8 g'8~^\markup{\left-align \small vib} 
      | g'1~ 
      | g'8 es'8 \tuplet 3/2 {g'8 a'8 b'8~} b'16 aes'8 g'16~ g'16 a'8 b'16~ 
      | b'8 a'8 g'8 a'8 b'4.^\markup{\left-align \small vib} d'8 
      | g'8 a'16 b'16~ b'8 aes'8 g'8 a'8 b'8 aes'8 
      | g'8 a'8 b'8 aes'8 g'8 a'8 b'8 aes'8 
      | g'2^\markup{\left-align \small vib} f'8 es'8 r4 
      | r1 
      \bar "||" r4 b'2.~ 
      | b'2\bendAfter #+4  d''8 d''8 b'4 
      | \tuplet 3/2 {d''8 d''8 a'8~} a'4 r2 
      | r4 b'8 d''8~^\markup{\left-align \small vib} d''2~ 
      | d''16 bes'16 b'8 d''4 b'8 d''8 des''4 
      | b'8 des''8~ des''16 b'8 aes'16 \tuplet 3/2 {ges'4 b'8} aes'4~ 
      | aes'16 f'8 aes'16~ aes'16 f'8 es'16 des'8 r8 \tuplet 3/2 {r8 f'8 des'8~} 
      | des'16 b8 g16~ \tuplet 3/2 {g8 f8 b8} a8 f4 f8 
      \bar "||" d8 r8 r2 r8 aes''8~ 
      | aes''8 aes''8 c''4. aes'4 c''8 
      | bes'8 f'16 d'16~ \tuplet 3/2 {d'8 bes8 e'8} r2 
      | g'8 e'8 c'8. aes16 bes8 c'8 bes8 e8 
      | d8 g16 e16~ e8 bes,4 r8 r4 
      | r16 bes,8 f16~ f16 bes8 bes16 c'8 r8 r4 
      | c8 f4 bes8 e8 f8 \tuplet 3/2 {a4 c'8~} 
      | c'8 bes8 r4 r16 bes'8 ges'16 es'4 
      \bar "||" f'8 es'8 bes8 f'8 d'8 f'8 r4 
      | r4 r16 d8 f16~ f16 a8 d'16~ d'8 b8~ 
      | b8 a4 r8 \tuplet 3/2 {r8 aes'8 bes'8~} bes'8 aes'8 
      | f'8 aes'8 f'8 d'8 f'4..^\markup{\left-align \small vib} d'16~ 
      | d'8 g'8 \tuplet 3/2 {f'8 g'8 g'8} \tuplet 3/2 {f'8 d'8 f'8} e'8 g'8 
      | f'8 g'8 a'8 b'8 cis''8 d''8 des''8 b'8 
      | a'8 aes'8 \tuplet 3/2 {g'4 b'8~} \tuplet 3/2 {b'8 a'8 f'8} d'4 
      | f'4~ f'16 g'8 f'16~ f'16 d'8 f'16 d'8 b8~ 
      \bar "||" \mark \default b8 b8 a8 f8 a8 d'8 r4 
      | r2 r8 a'4.~ 
      | a'4. f'8 \tuplet 3/2 {a'4 f'8} d'4 
      | f'4 d'8 a'4 r8 r4 
      | a'4. d'8 a'4 \tuplet 3/2 {b'4 d'8} 
      | a'4 b'4 \tuplet 3/2 {d'8 a'4} b'8 d'8 
      | d'8 r8 r2 a'8 b'8 
      | d''8 r8 r4 a'8 b'8 es''8 r8 
      \bar "||" r2 r8 a'8 \tuplet 3/2 {b'4 d''8~} 
      | d''8 d''8 g''4 f''4. d''8 
      | \tuplet 3/2 {a'4 f'8~} f'8 r8 r4 r16 f'8 a'16 
      | d''4..^\markup{\left-align \small vib} b'16~ b'16 a'8 f'16 d'8 b8 
      | f'8 d'8 b8 a8 f4 a8 a,8~ 
      | a,8 r8 r2 a,8. d16~ 
      | d8 a,8 r2 r8 b,8 
      | ges8 des4. a8 c16 f16~ f16 a8 d'16 
      \bar "||" b8 r8 r2 es4 
      | bes8 r8 r4 r16 f8 ges16 r4 
      | r8 des'4 e8 r4 \tuplet 3/2 {r8 es8 bes8~} 
      | bes8 c'8 r2. 
      | \tuplet 3/2 {r8 bes8 g8} e8 g4 e8 g8 r8 
      | r4 es8 f8 a8 es'8 bes8. ges'16 
      | \tuplet 3/2 {bes'4 ges'8} \tuplet 3/2 {es'4 bes8} aes,4 bes,8 aes,8~ 
      | aes,8 r8 r2. 
      \bar "||" \tuplet 3/2 {bes'4 ges'8} es'8 bes8 a,4 bes,8 r8 
      | r2 r8 b,8 ges4 
      | e8 fis8 g8 a8 f8 r8 r4 
      | r2 f8 g8 aes8 b16 es'16~ 
      | es'8 des'8 aes4 des'8 e'8 b8 aes8 
      | f8. g16 b8 e'8 \tuplet 3/2 {b4 g8} b8 d'8 
      | g'8 g'8 a'8 g'8 g'8 a'8 e'4 
      | \tuplet 3/2 {g'4 f'8} d'8 c'8 b8 d'8~ d'16 f'8 aes'16 
      \bar "||" \mark \default c''8 f'8 a'8 c''8 b'4 r4 
      | r2 b'2~^\markup{\left-align \small vib} 
      | b'2.. a'8~ 
      | a'8 b'4 a'8 b'4 a'8 b'8 
      | a'4. f'8 a'8 b'8~ b'8. a'16~ 
      | a'16 b'8 ges'16 \tuplet 3/2 {a'4 b'8~} \tuplet 3/2 {b'8 a'8 b'8} d''8 b'8 
      | a'8 f'8 \tuplet 3/2 {d'4 bes8} f'2 
      | a'8 d'8 r2 r8 b'8~ 
      \bar "||" b'4. g'8 b'8 d''4 g''8~ 
      | g''1 
      | g'4 f'4 r2 
      | r2 a''2~ 
      | a''2.. r8 
      | r8 g''8~ g''2~ g''8 e''8 
      | des''2. b'8 des''8 
      | b'8 a'8 f'8 a'8~ a'4. f'8 
      \bar "||" d'4 b8 a8 aes,4 es'8 r8 
      | r2. r8 f'8~ 
      | f'8. bes'16~ bes'8 es''8 d''4 es''8 c''8 
      | bes'8 ges'8 f'8 es'8 aes'8 ges'8 es'4 
      | \tuplet 3/2 {f'4 c'8~} \tuplet 3/2 {c'8 aes'8 es'8~} es'16 bes'8 ges'16 bes,4 
      | f'16 d'8 des'16 f'8 e'8 a'8 aes'8 e'8 b8 
      | bes8 c'8 \tuplet 3/2 {d'4 g'8} g'8 f'8 a'8 b'8~ 
      | b'16 bes'8 ges'16~ ges'16 f'16 es'8 aes'8 f'8 es'8 bes8 
      \bar "||" \tuplet 3/2 {f'4 c'8} \tuplet 3/2 {bes4 es8~} \tuplet 3/2 {es8 ges8 a8} r4 
      | r2 r8 des8 f8 bes8 
      | aes,4.. bes16 c8 ges8 bes8 b8 
      | bes16 d8 ges16 b8 d'8 b8 ges8 aes'8 d'8 
      | b8 g8~ g16 a8 b16 des8 d'8 e'8 g'8~ 
      | g'8 f'8 a'8 b'8 d'8 g'8 b'8 es''8 
      | g''4 des4 r2 
      | r1 
      \bar "||" \mark \default g''1~^\markup{\left-align \small vib} 
      | g''2~ g''8. b''16~ b''8 f''8~ 
      | f''2~ f''8 r8 r4 
      | r4 r8 a''8~ a''8. f''16~^\markup{\left-align \small vib} f''4~ 
      | f''4 r2. 
      | r8 a''2..~^\markup{\left-align \small vib} 
      | a''2 f''4. g''8 
      | f''4. a''8~ a''4~ a''16 d''8 b'16~ 
      \bar "||" b'8 a'8 f'8 r8 r2 
      | r8. a''16~ a''2.~ 
      | a''8 f''4 d''4. r4 
      | r8 a''2..~ 
      | a''8 f''8~ \tuplet 3/2 {f''8 g''8 a''8} r4 r8 d''8~ 
      | d''8 b'4. a'8 d''8 \tuplet 3/2 {des''4 b'8} 
      | a'8. g'16~ g'8 b'8 a'8 f'8 d'8 bes8 
      | f'8 d'8 r2. 
      \bar "||" aes''1~ 
      | aes''8 ges''4. f''4 e''8 es''8 
      | c''8 d''8 aes'8 des''8 bes'8. ges'16~ ges'8 es'8 
      | r2. r8 bes'8~^\markup{\left-align \small vib} 
      | bes'4. es'8 aes'8 ges'8 es'8 bes8 
      | c''8. c'16 bes8 f8 es8 a8 \tuplet 3/2 {f4 bes,8~} 
      | bes,8 f8 bes,8 aes,8~ aes,2 
      | bes,4 es8 r8 r2 
      \bar "||" \tuplet 3/2 {bes,4 f'8~} \tuplet 3/2 {f'8 bes8 es'8} a,4. r8 
      | r2 r8 d8 f8 a8 
      | des8 es8~ es16 f8 bes16 des4 b8 es'8 
      | bes8 ges8~ \tuplet 3/2 {ges8 es'8 a'8~} a'8 des'8 a'8 ges'8 
      | \tuplet 3/2 {d'4 des'8} aes8 ges8 gis8. a16 b8 des'8 
      | dis'8 e'8 fis'8 g'8 a'8 cis''8 d''8 b'8 
      | a'8 ges'8 d'8 a8 f'8 d'8 b8 f8 
      | r2. r8 b'8~ 
      \bar "||" \mark \default b'4. f'8 b'8 b'8 c''8 des''8 
      | b'8 b'8 c''8 des''8~ des''16 b'8 b'16~ \tuplet 3/2 {b'8 c''8 des''8} 
      | b'8 b'8~ b'16 c''8 f16 b4 c'8 f8 
      | b4 \tuplet 3/2 {c'4 f8} b4 c'8 c''8 
      | a8 d8 r2. 
      | c''8 des''8 b'8 c''8 b'4 c''8 des''8 
      | c''4.\glissando  ges8 f4 b8 b,8 
      | ges8 f8 bes8 c8 ges4 a8 bes,8 
      \bar "||" f8 r8 r2 c''8 des''8 
      | b'4 \tuplet 3/2 {c''4 ges8} f4 a8 b,8 
      | f4 c'8 des'8 b4 c''8 des''8 
      | b'4 c''8 b,8 f4 a8. bes,16 
      | f8 r8 r2 c''8 des''8 
      | b'8 b'8 c''8 b,8 f4. a8 
      | b,16 f8.~ f16 c'8 e16 b4 c''8 des''8 
      | b'4 c''8 ges8 f4 a8 bes,8 
      \bar "||" f8 r8 r2 r16 cis''8 d''16~ 
      | d''8 bes'8 c''4 bes,8 es8 ges8. a,16 
      | es4 des''8 des''8 bes'8 bes'8 des''4 
      | bes'8. des''16~ des''8 bes,8 es8. ges16~ ges8 bes,16 es16 
      | r2 r8. des''16~ des''8 bes'8 
      | bes'8 des''4 b,8 es8. ges16~ ges8 bes,16 es16~ 
      | es4 des''4 bes'8 bes'8 des''8 des''8 
      | bes'4 \tuplet 3/2 {des''8 bes,8 es8~} es4 ges8 bes,8 
      \bar "||" es8 r8 r2 c''8 des''8~ 
      | des''16 b'8 b'16~ b'8 b,8 d4 ges8 bes,8 
      | d4~ d16 des'8 c''16~ c''16 b8 b'16~ \tuplet 3/2 {b'8 c''8 es8~} 
      | es8 b8~ b8. d16~ d4 \tuplet 3/2 {f4 b,8} 
      | d4 r2 b'16 c''16 des''8 
      | b'4 c''8 b,8 d4 f8 b,8 
      | d4 b'8 d8 b8. b'16 b'8 c''8 
      | b'4~ \tuplet 3/2 {b'8 b,8 d8~} d4 ges8 b,16 d16~ 
      \bar "||" \mark \default d8 r8 r2. 
      | c''8 a'4 g''8~^\markup{\left-align \small vib} g''2 
      | f''8 g''2..~ 
      | g''8 g''4. g''2^\markup{\left-align \small vib} 
      | g''8 a'4 g'8 r2 
      | r4 r8. d''16~ d''4~ \tuplet 3/2 {d''8 b'8 bes'8} 
      | a'8 aes'8 g'8 b'8 g'4 es'8 g'8 
      | f'8 es'8 des'8 aes8 es'8 des'8 b8. aes16 
      \bar "||" des'2~ des'16 f'8 d'16~ d'8 a'8~ 
      | a'4. r8 r4 r8 a'8~^\markup{\left-align \small vib} 
      | a'4. g'8 f'8 f'16 d'16~ \tuplet 3/2 {d'8 b8 f'8~} 
      | f'8 d'8 r2 r8 b'8~^\markup{\left-align \small vib} 
      | b'4. f'8 b'4 c''8 des''8 
      | b'4 c''8 des''8 a'8 f'8 d'8 bes8 
      | f8 d'8 b8 a8 f8 b8 a8 f8 
      | d8 f8 d8 a,8 r2 
      \bar "||" \tuplet 3/2 {f,4 f'8} aes'8 bes'8 aes,8 r8 r4 
      | aes,4 \tuplet 3/2 {ges8 bes8 b8} bes,8 r8 r8. bes,16~ 
      | bes,8 f8~ \tuplet 3/2 {f8 bes8 b8} c8 r8 r8. c16~ 
      | c8 f8 bes8 b8 es8 r8 r4 
      | \tuplet 3/2 {es8 ges8 bes8~} bes8 bes8 es8 ges16 a16~ a8 e8 
      | r2 e8. a16 aes8 e8 
      | a'4 d'8 g'4 f'8 aes'8 bes'8 
      | es'16 ges'8 bes16~ \tuplet 3/2 {bes8 bes8 ges8} d8 e8 d8 bes,8~ 
      \bar "||" bes,8 bes,8 aes,4. bes,8 gis8 a8 
      | d4 r4 r8. d'16~ \tuplet 3/2 {d'8 f'8 aes'8} 
      | es'8 f'8 g'8 aes'8 f'8 e'8 es'8 g'8~ 
      | g'8 g'8 es'8 des'8 aes'8 es'8 bes8 f8 
      | es8 f8 b8 es'8 b8 g8 b8 es'8~ 
      | es'16 g'8 aes'16~ aes'16 g'8 g'16~ g'16 aes'8 f'16~ f'16 a'8 b'16 
      | a'8 f'8~ f'16 d'8 bes16 f'4 g'4 
      | a'8 r8 r2 \tuplet 3/2 {f'4 d'8} 
      \bar "||" \mark \default g'4. f'4 d'4.~ 
      | d'8 f'8 d'8 a'8~ a'2~ 
      | a'4. r8 r2 
      | a'8 d'4 a'8~ a'4. g'8 
      | f'4 d'4 a'4 c''8. e'16~^\markup{\left-align \small vib} 
      | e'2 d'16 f'8 d'16~ d'8 c'8 
      | b8 d'16 b16~ b8 a8 f4 a8 d8~ 
      | d8 r8 r4 r8. a'16~ a'4~ 
      \bar "||" a'4. d'8 a'4 \tuplet 3/2 {b'4 d'8} 
      | a'2. b'8 d'8 
      | a'4 b'8 a'8 a'4 \tuplet 3/2 {b'8 a''4} 
      | b''4 b'8 d'8 a'4 \tuplet 3/2 {b'4 d'8} 
      | a'4. r8 r4 b'8 d'8 
      | a'4 b'8 d'8 a'4 b'8 d'8 
      | a'4 b'8 d'16 a'16~ a'4 b'8 d'8 
      | b''4 b'8 d'16 a'16~ a'4 b'8 d'16 a'16~ 
      \bar "||" a'4 r2 c''8 des''8 
      | bes'4 c''8 des''8 bes'4 c''8 des''8 
      | bes'4~ \tuplet 3/2 {bes'8 c''8 des''8} bes'4~ bes'16 c''8 f'16~ 
      | f'8 es''8~ es''16 c''16 des''8 bes'4 c''8 des''8 
      | bes'4. r8 r4 r8 c8 
      | ges8 des8~ des8. ges16~ \tuplet 3/2 {ges8 des8 ges8} bes8 b8 
      | e8 g8 b8 d'8 a8 r8 r4 
      | r16 a16 bes16 a16 a'16 b'16 aes'8 bes'8. ges'16~ ges'16 es'8 bes16~ 
      \bar "||" \tuplet 3/2 {bes8 aes'8 ges'8} es'8 r8 r2 
      | d'2 d'4. bes8 
      | e'4 f'4 d'2 
      | f'8 d'8 r2 r8 e'8 
      | f'4 g'4 a'4 c''8. e'16~ 
      | e'2 d'4 f'4 
      | b4 c'8 a8~ a2 
      | f4 d8 r8 r2 
      \bar "||" \mark \default r16 g8 a16~ a4. f4.~^\markup{\left-align \small vib} 
      | f4 r2. 
      | \tuplet 3/2 {e4 f8~} f4 d2~ 
      | d8 r8 r2. 
      | c8 f8 e8 c8 b,2~^\markup{\left-align \small vib} 
      | b,8 r8 r4 \tuplet 3/2 {r8 b,8 d8~} d8 bes,8 
      | e'8 d'8 \tuplet 3/2 {b4 a8~^\markup{\left-align \small vib}} a2~ 
      | a1~ 
      \bar "||" a1~ 
      | a1~ 
      | a1~ 
      | a1~ 
      | a1~ 
      | a4 r2.\bar  ".."
    }
    >>
>>    
}
