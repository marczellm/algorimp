\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Gasser (Solo 2)"
  composer = "Roy Eldridge"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | r1 
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | s1 | aes1:6 | bes2:min7 es2:7 | aes1:6 | g2:min5-7 c2:7 
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | f1:min7 | g2:min5-7 c2:7 | f1:min7 | bes2:min7 es2:7 | aes2:6 g2:7 | ges2:7 f2:7 | bes2:7 es2:7 | aes1:6 
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | s1 | aes1:6 | bes2:min7 es2:7 | aes1:6 | g2:min5-7 c2:7 
      | f1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s2 c2:7 
      | f1:min7 | g2:min5-7 c2:7 | f1:min7 | g2:min5-7 c2:7 | aes2:7 g2:7 | ges2:7 f2:7 | bes2:7 es2:7 | aes1:6 
      | s1|
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


      \tempo 4 = 238
      \set Score.currentBarNumber = #0
     
      | r2. r8. f''16~ 
      \bar "||" \mark \default f''4 f''4 f''4 f''4 
      | g''4 r2. 
      | r1 
      | r2 f''8. g''16~ g''8 f''8~ 
      | f''8 f''8~ f''2\glissando  d''4~ 
      | \tuplet 3/2 {d''8 c''8 bes'8} aes'8 bes'8~ bes'16 aes'8 g'16~ g'8 f'8 
      | e'8 es'8 d'16 es'16 e'16 f'16~ f'8 d'8 \tuplet 3/2 {es'4 c'8} 
      | d'4.^\markup{\left-align \small vib} bes'8 r2 
      | r2 aes''4\bendAfter #+4  bes''4~ 
      | bes''4. aes''8\glissando  a''8 f''8 des''8 bes'8 
      | aes'8 f'8 e'8 es'16 d'16 e'8 f'8~ f'8. es'16~ 
      | es'8 d'4^\markup{\left-align \small vib} f'8 r2 
      | r2 r8 es''8 f''8 aes''8 
      | des'''8 c'''8 bes''8 aes''4 aes''8 ges''4 
      | \tuplet 3/2 {f''4 es''8~} es''8 aes'8 bes'4 aes'4 
      | bes'4.^\markup{\left-align \small vib} g'8 aes'8 a'8 c''8 d''8~ 
      \bar "||" d''4. b'8 g'4. r8 
      | r4 r8 d''4.^\markup{\left-align \small vib} c''8 d''16 es''16~ 
      | es''8 d''8 es''8. d''16 c''8 aes'8 f'8 d'8 
      | es'4.^\markup{\left-align \small vib} f'8 r2 
      | r4 \tuplet 3/2 {c'''8\bendAfter #+4  f'''4~} f'''8 es'''8 d'''4 
      | bes''8 f''8 d''8 es''8 f''8 e''8 \tuplet 3/2 {es''4 d''8~} 
      | d''8 des''8 c''8 bes'8 aes'8 g'8 bes'4 
      | aes'4..^\markup{\left-align \small vib} g'16~ g'8 r8 r4 
      | r4 r8 g''4\glissando  aes''4.~^\markup{\left-align \small vib} 
      | aes''1~ 
      | aes''4 f''4 aes''4 f''4 
      | g''8. f''16~ f''8 g''4 f''4 g''8~ 
      | g''8 f''8 g''8 f''8 \tuplet 3/2 {g''4 f''8~} f''8 es''8~ 
      | es''8\glissando  f''8~ f''8. ges''16 \tuplet 3/2 {f''4 es''8} c''4 
      | b'8 c''8~ c''8. des''16~ des''4. b'8 
      | c''8 aes'8 \tuplet 3/2 {f'4 aes'8~} aes'4 r4 
      \bar "||" \mark \default f''4 r2. 
      | r8. f''16~ f''16 g''8 a''16 bes''8 c'''8~ \tuplet 3/2 {c'''8 d'''8 es'''8} 
      | f'''8 r8 r2. 
      | r4 r8. d'''16~ d'''8 es'''4 e'''8~ 
      | e'''8 f'''8~ \tuplet 3/2 {f'''8 c'''8 c'''8~} c'''8 c'''8 des'''8 d'''8~ 
      | d'''8. bes''16~ bes''16 aes''16 bes''8 \tuplet 3/2 {a''8 bes''8 bes''8~} bes''8 e''8 
      | r4 \tuplet 3/2 {b'8 c''8 b'8} c''8 bes'8~ bes'16 aes'8 f'16 
      | g'4 f'8^\markup{\left-align \small vib} bes'8 r2 
      | r4 r8 bes'8~ \tuplet 3/2 {bes'8 des''8 f''8} aes''8 bes''8 
      | \tuplet 3/2 {c'''8 d'''8 c'''8} bes''4~ bes''16 aes''8 f''16~ f''8 g''8\glissando  
      | aes''4 \tuplet 3/2 {g''4 es''8} bes'8 aes'8 f'8 e'8 
      | es'4.^\markup{\left-align \small vib} f'8 r2 
      | r4 r8. a''16 bes''16 c'''8 d'''16 \tuplet 3/2 {es'''4 a''8} 
      | bes''16 b''16 c'''8 f''8 g''8 aes''4 \tuplet 3/2 {f''8 ges''8 f''8} 
      | es''8 d''8 c''16 des''16 d''8 \tuplet 3/2 {b'4 bes'8} aes'8. bes'16~ 
      | bes'4 aes'8. a'16~ a'4 \tuplet 3/2 {bes'4 aes'8} 
      \bar "||" a'8 bes'8 aes'8 a'8 \tuplet 3/2 {bes'4 aes'8} a'4 
      | \tuplet 3/2 {des''4\glissando  d''8~} d''4.. g'16~ g'8 f'8~^\markup{\left-align \small vib} 
      | f'4 es'8 c'8 es'4^\markup{\left-align \small vib} r4 
      | r4 r8. c''16~ c''16 des''16 d''16 d''16~ d''16 es''16 e''16 f''16~ 
      | f''2~ f''8 e''8 es''8 d''8 
      | des''8 c''8 bes'8 aes'8 \tuplet 3/2 {g'4 f'8} e'8 es'8 
      | d'8. e'16 f'8 f'8 es'4 d'4 
      | f'4.^\markup{\left-align \small vib} aes'8 r2 
      | r4 r8 c''8~ \tuplet 3/2 {c''8 f''8 g''8} aes''8 g''8 
      | aes''8 g''8 \tuplet 3/2 {aes''4 g''8} f''8 e''8 d''8 des''8 
      | c''8 bes'16 aes'16~ aes'8. bes'16~ \tuplet 3/2 {bes'8 aes'8 bes'8~} bes'8 aes'8 
      | \tuplet 3/2 {g'8 es'16 r8.} r2 r8 b''8~ 
      | b''8 b''4. aes''8 bes''8 aes''8 aes''8 
      | f''8 aes''8 f''8 f''8 es''8 d''8 des''8 c''8 
      | b'8 bes'8 aes'8 g'8 bes'4 aes'8. bes'16~ 
      | \tuplet 6/4 {bes'16 aes'16 bes'16 aes'8.} f'8 e'16 es'16~ es'4 aes4~^\markup{\left-align \small vib} 
      \bar "||" aes2 aes2 
      | aes4. r8 r2\bar  ".."
    }
    >>
>>    
}
