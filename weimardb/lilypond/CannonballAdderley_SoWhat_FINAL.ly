\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "So What"
  composer = "Cannonball Adderley"
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
      
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7|
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


      \tempo 4 = 142
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. e'8 g'8 
      | d'4~ d'16 b16 c'16 d'16~ \tuplet 6/4 {d'16 b16 c'16 d'16 e'16 f'16~} \tuplet 6/4 {f'16 g'16 a'8 b'16 c''16} 
      | d''4. c''4 b'8 a'8. g'16~ 
      | g'8. f'16 e'8 f'8 \tuplet 3/2 {a'4 g'8} \tuplet 3/2 {f'8 e'8 d'8~} 
      | d'4~ d'16 c'16 b16 c'16 d'16 a8.~^\markup{\left-align \small vib} a8 r8 
      | r4 r16 g8 c'16~ c'16 e'32~ e'8 g'32~ g'8. e'16~ 
      | \tuplet 5/4 {e'16 f'16 a'16 c''16 e''16} d''4.^\markup{\left-align \small vib} r8 r4 
      | r8. e''16~ e''4\glissando  d''4 b'4\glissando  
      \bar "||" a'4 g'4 e'4\glissando  \tuplet 3/2 {c'4 d'8} 
      | a4 g8. d'16 \tuplet 6/4 {b8 c'16 d'8 e'16} f'8 r8 
      | r4 \tuplet 6/4 {r16 b4 a16~} a16 g16 a16 b16 \tuplet 5/4 {c'16 d'16 e'16 f'16 g'16~} 
      | \tuplet 6/4 {g'16 a'16 cis'8 d'16 e'16} f'16 g'16 gis'16 a'16 c''16 c'16 b16 c'16 \tuplet 6/4 {d'16 es'16 f'16 g'16 a'16 c''16} 
      | \tuplet 3/2 {d''8 e''4\glissando } g''4 e''16 c''16 a'8~ a'16 c''8 e''16~ 
      | e''8. c''32 a'32 f'16 d'8. b'8 d''8~ d''16 b'8 g'16~ 
      | \tuplet 6/4 {g'16 e'4 c'16} \tuplet 3/2 {d'4 bes8~} bes4 c'8 r8 
      | r8 des''8~ des''4. b'16 des''16 bes'8 aes'8 
      \bar "||" bes'8 ges'4 f'16 ges'16 es'4. r8 
      | r8 des'8 es'8 c'8~ \tuplet 6/4 {c'8 des'8. bes16~} \tuplet 3/2 {bes8 c'8 aes8~} 
      | aes8. bes16 c'16 des'16 es'16 f'16 ges'16 aes'16 bes'16 c''16 des''16 f''8 aes''16~ 
      | aes''4.. f''16~ \tuplet 6/4 {f''16 ges''8 f''16 es''16 d''16} r4 
      | r8 des''8~ des''16\glissando  bes'8\glissando  ges'16~ ges'16 es'8 c''16 \tuplet 3/2 {aes'8 f'8 des'8} 
      | bes16 bes'8 ges'16 \tuplet 3/2 {es'8 bes8 des'8} \tuplet 3/2 {b8 c'8 aes'8~} aes'16 f'16 ges'16 bes'16 
      | r4 r8 c''8 des''8 des''8 f''8 f''8 
      | bes'8 bes'8 des''8 cis''8 d''8 d''8 b'8 b'8 
      \bar "||" \tuplet 3/2 {g'4 g'8} e'4 f'4 e'8. d'16 
      | f'4 e'8. g16~ g4 r4 
      | r8 g8 b8. d'16~ d'8 f'8 e'4~ 
      | \tuplet 6/4 {e'16 f'8 a'16 c''16 e''16~} e''8 g''4. e''16 f''16 des''8 
      | r4 e''8 d''8 a'4 \tuplet 5/4 {c''16 d''16 c''16 a'16 f'16} 
      | d'16 f'16 a'16 c''16 e''8 d''8 r4 c''8 a'8 
      | g'8 f'8 \tuplet 3/2 {c'8 a4} e'8 d'8 r4 
      | r4 e'4 f'4 e'4 
      \bar "||" \mark \default g8. g16 r2. 
      | r4 d'4 f'4 \tuplet 3/2 {a'4 e'8} 
      | c''8. a'16 r2 \tuplet 6/4 {b8 c'8 d'16 e'16~} 
      | e'32 f'16 g'16 a'16 b'32 c''4 d''8. c''16 \tuplet 3/2 {b'8 a'8 g'8~} 
      | g'4~ \tuplet 3/2 {g'8 fis'8 g'8} a'8 g'8 \tuplet 3/2 {f'8 e'8 d'8~} 
      | \tuplet 6/4 {d'16 e'16 d'16 cis'16 d'8} e'16 cis'16 d'16 e'16 f'8. b16 e'16 d'16 b16 a16 
      | g16 ges16 f16 e16 e'4 r2 
      | r4 r8 c''4. e''4 
      \bar "||" \tuplet 3/2 {e''4 c''8} c''4 c''4 c''4 
      | \tuplet 3/2 {c''4 a'8} a'4 a'4 a'4 
      | \tuplet 3/2 {a'4 e'8} e'4 e'4 e'8. e'16 
      | r4 r8. a'16~ a'8 c''8~ c''16 e''8\glissando  g''16~ 
      | \tuplet 6/4 {g''16 ges''16 f''16 e''16 f''16 e''16} es''16 d''8 e''16 es''16 d''16 c''8 d''8.\glissando  c''16 
      | b'16 a'16 g'8 r4 \tuplet 3/2 {r8 a'8 f'8} e'16 d'16 des'16 a16 
      | e'16 cis'16 d'16 e'16 f'16 g'16 gis'16 a'16 c''16 a'16 b'16 a'16 g'16 f'16 e'16 d'16 
      | des'16 a16 c'16 a16 d'16 e'8 c'16 g'4 aes'8. g'16~ 
      \bar "||" \tuplet 6/4 {g'16 ges'16 aes'8 bes'16 c''16} f''2~ f''8.\glissando  des''16~ 
      | des''8 r8 r8 bes'8~ bes'2\glissando  
      | \tuplet 3/2 {des''4 bes'8} e'4 des'4 aes8 r8 
      | r4 \tuplet 6/4 {r16 aes16 bes8 c'16 des'16} es'16 f'16 ges'16 aes'16 bes'16 c''16 des''16 es''16 
      | f''8. des''16~ des''8 es''8~ es''16\glissando  c''16 des''16 bes'16~ bes'8 ges'8 
      | \tuplet 3/2 {f'4 es'8} aes'4~^\markup{\left-align \small vib} \tuplet 6/4 {aes'16 ges'16 aes'8 bes'16 ges'16} es'16 bes16 des'16 bes'16 
      | \tuplet 6/4 {ges'16 es'16 bes16 des'8 bes16} c'16 f'16 e'16 c'16 gis'4^\markup{\left-align \small vib} r4 
      | r4 a'16 gis'16 a'16 e''16~ e''8.\glissando  d''16 des''16 a'16 e'8 
      \bar "||" cis'16 d'16 e'16 es'16 d'8 r8 r8 gis16 a16 c'16 a16 b16 a16 
      | g16 a16 b16 c'16 d'16 es'16 f'16 g'16 a'8 a'8 c''8 c''8 
      | f'8 f'8 \tuplet 3/2 {a'4 a'8} g4 \tuplet 3/2 {e'4 g8} 
      | d'4 e'4 g'4 a'4 
      | \tuplet 3/2 {e'4 g8~} g4 r2 
      | r8 e'8~ \tuplet 3/2 {e'8 dis'8 e'8} f'4 e'4 
      | dis'8. e'16~ e'8\glissando  g8~^\markup{\left-align \small vib} g4. f8\bar  ".."
    }
    >>
>>    
}
