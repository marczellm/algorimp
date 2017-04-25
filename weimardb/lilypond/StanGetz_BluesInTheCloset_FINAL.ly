\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues in the Closet"
  composer = "Stan Getz"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7|
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


      \tempo 4 = 243
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | f'4 a'8 g'8 f'8 d'8 c'8 bes8 
      | c'8 bes4.^\markup{\left-align \small vib} r2 
      | f'4 aes'8 g'8 f'8 d'8 \tuplet 3/2 {bes4 g8} 
      | e'8\glissando  f'4. \tuplet 3/2 {es'4 f'8} es'8 des'8 
      | bes8 bes4.^\markup{\left-align \small vib} r4 r8 bes'8~ 
      | bes'4 a'8 g'8 f'8 es'8 d'8 c'8 
      | \tuplet 3/2 {b4 g8} c'8 cis'8 \tuplet 3/2 {d'4 f'8~} f'8 f'8~^\markup{\left-align \small vib} 
      | f'4 r2. 
      | g'8 f'8 d'8 c'8 bes8 f4 d8 
      | f8 bes4.^\markup{\left-align \small vib} r2 
      | r1 
      \bar "||" \mark \default a'8 g'8 f'8 d'8 c'8 bes4 c'8~^\markup{\left-align \small vib} 
      | c'4 bes4 c'8 cis'8 d'8 c'8~^\markup{\left-align \small vib} 
      | c'8 r8 r2 bes8 c'8 
      | es'8 g'8 ges'8 e'8 f'8 d'8 bes8 aes8 
      | \tuplet 3/2 {g4 aes8} bes8 c'8 des'8 es'4 g'8 
      | c''8. d''16\glissando  es''8. c''16 des''8. bes'16 r4 
      | r2 d''4 a'8 c''8 
      | \tuplet 3/2 {bes'4 f'8} e'8 es'8 d'8 c'8 \tuplet 3/2 {b4 aes8} 
      | g8 bes8 c'8 es'8 g'8 bes'4 bes'8~^\markup{\left-align \small vib} 
      | bes'8 r8 r2. 
      | a'8 g'8 f'8 d'8 \tuplet 3/2 {c'4 bes8~} bes8 g8~ 
      | g8 r8 r4 fis'8\glissando  g'4.~ 
      \bar "||" \mark \default g'4. f'8 g'4.^\markup{\left-align \small vib} f'8 
      | \tuplet 3/2 {aes'4 f'8} g'4.^\markup{\left-align \small vib} r8 r4 
      | r8 e'8 g'8 e'8 f'8 g'8 aes'8 bes'8 
      | \tuplet 3/2 {c''4 aes'8} b'4^\markup{\left-align \small vib} r2 
      | r8 g'8 bes'8 aes'8 g'8 f'8 es'8 d'8 
      | des'8 es'8 e'8 fis'8 g'8 a'8 bes'8 c''8 
      | des''8 a'8 \tuplet 3/2 {bes'4 e'8} g'8 es'8 e'8 c'8 
      | des'8 a8 \tuplet 3/2 {bes4 fis8} \tuplet 3/2 {g4 es8} e8 fis8 
      | g8 a8 bes8 c'8 des'8 es'8 e'8 fis'8 
      | g'8 r8 r2 r8 g''16 b''16~ 
      | b''8 des''4. bes'4.^\markup{\left-align \small vib} r8 
      | r1 
      \bar "||" \mark \default g''4 des''4 bes'4 g'4 
      | bes'4.^\markup{\left-align \small vib} c''8 r2 
      | r8 g''8 r4 des''2^\markup{\left-align \small vib} 
      | bes'4 aes'8 g'8 ges'8 d'16 a16~ a8 aes8 
      | g8 aes8 bes8 c'8 des'8 es'8~ es'8. c''16~^\markup{\left-align \small vib} 
      | c''2 bes'8 f'8 cis'8 d'8 
      | f'8 bes'4 a'4.^\markup{\left-align \small vib} r4 
      | r1 
      | r2 f'4 bes'8 c''8 
      | \tuplet 3/2 {bes'8 g'8 f'8~} f'16 cis'8 d'16~ d'8 es'8 cis'8 d'16 bes16~ 
      | bes8 f8 d8 es8 \tuplet 3/2 {f4 cis8} d8 f8 
      | bes4^\markup{\left-align \small vib} r2 r8. bes16 
      \bar "||" \mark \default \tuplet 3/2 {e'8 g'8 f'8} e'2 es'8 des'8~ 
      | des'8 bes8 g8 f4.^\markup{\left-align \small vib} r4 
      | r8 f8~ f16 bes8 d'16 a8 c'8 es'8 g'8 
      | f'8 d'8 bes8 a8 aes4. c'8\glissando  
      | es'16 f'16 g'16 f'16 e'2^\markup{\left-align \small vib} es'8 des'8~ 
      | des'8 bes8 g8. d16 f8 g4^\markup{\left-align \small vib} r8 
      | r4 r8 f8 bes8 d'8 a8 c'8 
      | es'8 g'8 f'8 g'16 bes'16~ bes'8 d''8 c''4 
      | des''8 des''8 bes'8 des''8 aes'8 g'8 \tuplet 3/2 {f'4 bes8~} 
      | \tuplet 3/2 {bes8 des'8 c'8} bes8 f8 aes8 g8 f4 
      | r1 
      | r2 bes'4. bes8~ 
      \bar "||" \mark \default bes16 c'8\glissando  d'16~ d'4 f'2^\markup{\left-align \small vib} 
      | es'8. f'16 g'8 bes'8 \tuplet 3/2 {a'4 d''8~} d''8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r2. 
      | bes'4 \tuplet 3/2 {aes'8 bes'8 aes'8} \tuplet 3/2 {g'8 ges'8 d'8} a8 aes8 
      | g8 gis16 a16 bes8 c'8 des'8 es'8 f'8 g'8 
      | c''8 cis''16 d''16 \tuplet 3/2 {es''4 c''8} \tuplet 3/2 {des''4 bes'8~} bes'8 d''8~^\markup{\left-align \small vib} 
      | d''4 a'8 c''8 \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {e'4 es'8} 
      | d'8 c'8 a8 bes8 b8 g8 aes8 fis8 
      | g8 d'8 bes4 d'4.^\markup{\left-align \small vib} r8 
      | r2 \tuplet 3/2 {c'4\glissando  d'8~} d'8 bes8 
      | g8 bes4 r8 r2 
      | r2. r8 f8~ 
      \bar "||" \mark \default f8 d8 \tuplet 3/2 {f4 d8} es8 g8 \tuplet 3/2 {bes4 g8} 
      | aes8 c'16 es'16~ \tuplet 3/2 {es'8 c'8 des'8~} des'8 f'8 aes'8 f'8 
      | ges'8 bes'8 des''8 bes'8 d''8 es''8 d''8 c''8 
      | bes'8 a'8 aes'8 g'8 \tuplet 3/2 {ges'4 d'8} a8 aes8 
      | g8 gis16 a16 bes8 c'8 des'8 es'8 f'8 g'8 
      | c''4.^\markup{\left-align \small vib} bes'8 r4 r8 a'8~ 
      | a'8 g'4.^\markup{\left-align \small vib} f'8 es'8 d'8 c'8 
      | b4.^\markup{\left-align \small vib} g'8 r2 
      | bes'8 f'16 g'16~ g'8 bes'16 g'16~ g'8 f'8 \tuplet 3/2 {d'4 c'8} 
      | bes8 f4 d16 f16~ f8 r8 r8. bes16~ 
      | bes8 bes4^\markup{\left-align \small vib} r8 r2 
      | r2 r8 bes'8 bes'8 bes'8 
      \bar "||" \mark \default bes'2^\markup{\left-align \small vib} g'8 bes'8 r4 
      | r2 r8 bes'8 bes'8 bes'8 
      | bes'2^\markup{\left-align \small vib} d''8. bes'16 r4 
      | r2. r8 es''8~ 
      | es''8 bes'4 e''4 bes'4 f''8~ 
      | f''8 e''4 es''4 des''8 bes'8 bes'8~ 
      | bes'8 f'4 aes'4 g'4 f'8~ 
      | f'8 bes8 \tuplet 3/2 {e'8 ges'8 f'8} \tuplet 3/2 {e'4 des'8} bes4 
      | \tuplet 3/2 {es'4 f'8} es'8 des'8 bes8 f8 cis8 d8 
      | f8 cis8 d8 f8 bes8 c'8\glissando  d'4 
      | bes4.^\markup{\left-align \small vib} r8 r2 
      | r2. r8. b'16~ 
      \bar "||" \mark \default b'4\glissando  c''2~ c''8 c'8~ 
      | c'8 c''8~ c''16\bendAfter #+4  b'8 c''16~^\markup{\left-align \small vib} c''2 
      | bes'4\glissando  c''4~ c''16 bes'8 f'16 cis'8 d'8 
      | f'8 bes'4.^\markup{\left-align \small vib} r2 
      | c''4 es''4 \tuplet 3/2 {c''4 bes'8~} bes'8 g'8~ 
      | g'8 c'8 f'8 f'8 e'8 des'8 bes8 g8 
      | cis'8 d'8 es'8 e'8 f'8 e'8 f'8 g'8 
      | aes'8 d'8 es'8 e'8 \tuplet 3/2 {g'4 d'8} es'8 f'8 
      | e'8 f'8 cis'8 d'8 bes8 f8 r4 
      | r2. r8 a8~ 
      | a4 bes4 es'8 e'8 es'4 
      | des'4 bes8 aes8~^\markup{\left-align \small vib} aes2~ 
      \bar "||" \mark \default aes4 bes4 aes4 bes8 r8 
      | r8 f'8 \tuplet 3/2 {es'4 bes8} des'4^\markup{\left-align \small vib} es'8 r8 
      | r8 bes8 aes8 f8 aes4 bes8 r8 
      | r2 g'8 aes'8 g'8 ges'16 f'16~ 
      | \tuplet 3/2 {f'8 e'8 d'8\glissando } es'8 d'8 des'8 es'8 c'8 des'8 
      | bes8 ges8 f8 es8 des8 f8 \tuplet 3/2 {g4 bes8~^\markup{\left-align \small vib}} 
      | bes4 des'4 e'4 f'8 r8 
      | r2 r8 e'8 f'8 g'16 aes'16~ 
      | aes'8 es'8 e'8 g'8 f'8 cis'8 d'8 es'8 
      | cis'8 d'8 \tuplet 3/2 {bes4 f8} cis8. d16 es8 e8 
      | f8 cis8 d8 f8 \tuplet 3/2 {bes,4 bes,8} r4 
      | r1 
      \bar "||" \mark \default r1 
      | bes1 
      | d'4\glissando  es'4 \tuplet 3/2 {d'4 bes8~} bes8 aes8~^\markup{\left-align \small vib} 
      | aes4 r2. 
      | g4 gis4 a8. bes16~ bes8 f'8~ 
      | f'8 f'4 es'8 f'8 es'4 e8~ 
      | e8 f4 g4 f4 d'8\glissando  
      | es'4. d'8 \tuplet 3/2 {es'4 d'8~^\markup{\left-align \small vib}} d'4 
      | r2. r8 bes8 
      | d'8 es'8 d'8 bes8 f8 es4 cis8 
      | d8 f8 g8 bes4.^\markup{\left-align \small vib} r4 
      | r2. bes16 bes16 des'16 bes16~ 
      \bar "||" \mark \default bes4 bes8 bes8 bes4 bes8 bes8 
      | bes4 bes8 bes8 bes4 b4 
      | bes2~^\markup{\left-align \small vib} bes8 bes8 bes8 bes8 
      | bes4. b4.^\markup{\left-align \small vib} r4 
      | r4 bes8 bes8~ bes4. c'8 
      | des'8 es'8~ es'16 f'8 g'16 c''2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {bes'4 a'8} g'8 ges'8 f'8 es'8 d'8 c'8 
      | b8 d'8 aes8 fis8 g8 es'8 b4 
      | d'4.^\markup{\left-align \small vib} r8 r2 
      | d'8 es'8 cis'8 d'16 bes16~ bes8 f4 es8 
      | f8 bes4.^\markup{\left-align \small vib} r2 
      | r1 
      \bar "||" \mark \default r8 g'8~ g'16 f'16 g'16 f'16 \tuplet 3/2 {g'4\glissando  aes'8} \tuplet 3/2 {f'8 g'8 f'8} 
      | g'4 g'4\glissando  aes'8 r8 r4 
      | r8 g'8 f'8 aes'16 f'16 \tuplet 3/2 {aes'4 f'8} g'8 f'16 e'16 
      | f'8 g'8 \tuplet 3/2 {g'4\glissando  aes'8} r2 
      | r4 r8 f'8 aes'8 f'8 g'8 e'8 
      | f'8 g'8 aes'8 bes'8 c''8 bes'8 c''8 bes'8 
      | aes'8 g'8 aes'8 g'8 f'8 es'8 d'8 c'8 
      | b8 d'8 aes8 fis8 g8 es'8 b4 
      | d'8 b8 c'8 es'8 g'8 bes'4 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r4 r8 c'8 \tuplet 3/2 {d'8 es'8 g'8} 
      | \tuplet 3/2 {bes'4 bes'8~^\markup{\left-align \small vib}} bes'4 r2 
      | r2 bes'8 bes'8 bes'8 bes'8 
      \bar "||" \mark \default bes'8 bes'4. bes'2^\markup{\left-align \small vib} 
      | bes'2^\markup{\left-align \small vib} bes'4.^\markup{\left-align \small vib} bes'8 
      | bes'4^\markup{\left-align \small vib} r2. 
      | \tuplet 3/2 {bes'4 bes'8} bes'8 bes'16 d''16~ d''8 c''8 bes'4~^\markup{\left-align \small vib} 
      | bes'8 bes'4 bes'8 bes'8 bes'8 \tuplet 3/2 {bes'4 bes'8} 
      | bes'4 bes'8 bes'16 es''16~ es''8 des''8 bes'4~^\markup{\left-align \small vib} 
      | bes'8 bes'4 bes'8 bes'8 bes'8~ bes'8. bes'16~ 
      | bes'4 bes'8 bes'16 aes'16~ \tuplet 3/2 {aes'8 g'8 f'8} r4 
      | r8 bes'4.^\markup{\left-align \small vib} g'8 f'8 d'8 c'8 
      | bes8 f8~ f16 c16 d16 f16~ f8 d4 f8 
      | bes8 des'16 e'16\glissando  f'8 r8 r2 
      | r2 r8 c'8 e'16 g'16 f'8 
      \bar "||" \mark \default \tuplet 3/2 {e'8 des'8 bes8~} bes16 g8 es'16~ es'16 des'8 bes16~ bes16 g8 e'16~ 
      | e'8 des'8 f'8 des'8 e'8 des'8 bes8 g8 
      | es'8 c'8 \tuplet 3/2 {e'4 c'8} f'8 c'8 f'8 f'8 
      | \tuplet 3/2 {g'8 aes'4} r2. 
      | r8 des'8 \tuplet 3/2 {f'8 ges'8 f'8} e'8 f'8 es'8 des'8 
      | bes8 f8 cis8 d8 \tuplet 3/2 {f4 cis8} d8 f8 
      | bes8 g8 bes8 cis'16 d'16~ d'8 f'16 g'16~ g'8 f'8 
      | aes'8 f'8 g'8 e'8 f'8 d'8 \tuplet 3/2 {b4 aes8} 
      | g8 c'8 es'8 g'8 bes'8 d''4.^\markup{\left-align \small vib} 
      | r1 
      | r8 a'4\glissando  bes'8~^\markup{\left-align \small vib} bes'2~ 
      | bes'2. g'4 
      \bar "||" \mark \default a'8\glissando  bes'8 g'4 bes'4^\markup{\left-align \small vib} g'8 des'8\glissando  
      | c'4 r4 r8 bes'4^\markup{\left-align \small vib} g'8 
      | bes'4^\markup{\left-align \small vib} g'8. bes'16~^\markup{\left-align \small vib} bes'4 g'4 
      | \tuplet 3/2 {d'4\glissando  c'8} r2 r8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 g'4 bes'4 g'8. c'16~ 
      | c'8\glissando  b8 r2 r8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 a'8 g'8 f'8 es'8 d'8 c'8 
      | b8 des'8 aes8 fis8 g8 es'8 \tuplet 3/2 {b4 g8} 
      | d'8 b8 c'8 es'8 g'8 bes'4 d''8~^\markup{\left-align \small vib} 
      | d''4 a'8 ges'8 \tuplet 3/2 {es'4 ges'8} a'4~ 
      | a'8 c''4.^\markup{\left-align \small vib} bes'8 r8 r4\bar  ".."
    }
    >>
>>    
}
