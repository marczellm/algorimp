\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Lady Bird"
  composer = "Kenny Dorham"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | c1:maj | c1:maj | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | s1 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj|
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


      \tempo 4 = 212
      \set Score.currentBarNumber = #0
     
      | r4 r8. bes'16~ bes'8 aes'4. 
      \bar "||" \mark \default g'4. a'8 g'8 gis'16 f'16 e'8 f'8 
      | g'4 e''4~ \tuplet 6/4 {e''4~ e''16 d''16~} \tuplet 3/2 {d''8 e''8 d''8} 
      | c''4 \tuplet 6/4 {bes'8. des''16 bes'16 aes'16~} aes'4 g'8 aes'16 g'16 
      | f'8 r8 r4 bes'8 a'8 \tuplet 3/2 {aes'8 bes'8 aes'8} 
      | g'8 f'8 r4 r8 g'8 a'8 b'8 
      | \tuplet 3/2 {d''4 b'8} cis''8 b'8 c''8 g'8 r4 
      | r8 d'8\glissando  e'8 a'8 aes'8\glissando  b'16 bes'16 \tuplet 3/2 {ges''8 aes''8 g''8~} 
      | g''16 ges''16 f''8 \tuplet 3/2 {es''8 d''8 des''8~} des''8 es''8 c''8 bes'8 
      | aes'8 e'4. es'8 f'8 g'8 aes'8 
      | bes'8 aes'8 \tuplet 3/2 {g'8 bes'4} c''4 es''8 f''8 
      | d''8 b'8 c''8 d''16 c''16 b'8 a'8~ a'16 gis'16 b'8~ 
      | b'4 g'8 e'8 fis'8 e'8 \tuplet 3/2 {f'8 es'4} 
      | d'8 e'8 f'8 g'8 \tuplet 6/4 {a'4 d''16 e''16~} e''8 d''8~ 
      | d''8 d''8 c''8 d''16 c''16 b'8 aes'8 g'8 f'8 
      | e'8 r8 r2. 
      | r1 
      \bar "||" \mark \default \tuplet 3/2 {g'8 a'8 c''8} d''8. c''16~ c''4 a'8 g'8 
      | dis''8 e''8 g''4 r2 
      | r8. f''16~ f''8 e''8 d''8 des''8 c''8 b'8 
      | bes'8 a'16 aes'16~ \tuplet 3/2 {aes'8 bes'8 aes'8} g'8 f'8 d'8 dis'8 
      | e'8 g'8 a'8 b'8 d''8 b'8 cis''8 b'8 
      | \tuplet 3/2 {c''4 g'8~} g'8 r8 r2 
      | \tuplet 3/2 {e''8 ges''8 e''8~} e''16 d''16 e''16 d''16 \tuplet 3/2 {cis''8 d''8 des''8} \tuplet 3/2 {b'8 des''8 b'8} 
      | \tuplet 3/2 {bes'8 c''8 bes'8} \tuplet 3/2 {aes'8 bes'8 aes'8} \tuplet 3/2 {g'8 aes'8 g'8} \tuplet 3/2 {f'8 g'8 f'8} 
      | es'8 f'8 g'8 aes'8 bes'8 g'8 aes'8 bes'8 
      | c''4 f''8 e''8 es''8 des''8 c''8 bes'8 
      | a'8 b'8 c''8 f''8 e''8 g''8 e''8 es''8 
      | d''8 des''8 c''8 b'8 a'8 g'8 fis'8 e'8 
      | f'8 a'8 c''8 e''8 g''8 ges''8 f''8 e''8 
      | d''8 cis''4 b'8 bes'16 a'8 gis'16 r4 
      | r8 c''8 f''8 g''8 f''8 des''8 bes'8 g'16 es''16~ 
      | es''8 c''8 g'4 bes'8 aes'8 f'4 
      \bar "||" \mark \default g'8 f'8 \tuplet 6/4 {e'16 dis'4 e'16~} e'16 fis'16 g'8 a'8 b'8 
      | d''8 b'8 \tuplet 3/2 {d''8 cis''8 b'8} c''8 g'4 a'8 
      | ais'8. aes'16~ aes'8. es'16~^\markup{\left-align \small vib} es'8 r8 r4 
      | r2. \tuplet 3/2 {r8 bes'8 aes'8} 
      | g'8 f'16 e'16~ e'8 dis'8 \tuplet 3/2 {e'8 a'8 g'8} a'8 b'8 
      | d''8 b'16 cis''16~ cis''8 b'8 c''8 g'8 r4 
      | r8 b'8 \tuplet 5/4 {d''8 e''16 ges''16 a''16} aes''4~ \tuplet 3/2 {aes''8 a'8 bes'8~} 
      | bes'4. aes''8 g''8 f''8 ges''8 e''8 
      | es''8 des''8 ais'8 b'8 \tuplet 3/2 {c''4 es'8} \tuplet 3/2 {f'4 g'8} 
      | bes'8 g'8 aes'8 ais'8 b'8 des''8 es''8 cis''8 
      | d''8 b'8 c''8 ais'8 b'8 gis'8 a'8 r8 
      | r2 e''8 d''16 b'16 a'8 f'8 
      | d'8 e'8 f'8 g'8 a'8. e''16~ e''8 d''8~ 
      | d''4~ d''16 c''16 d''16 c''16~ c''16 b'8 aes'16 g'8 f'8 
      | e'4 e'4^\markup{\left-align \small vib} r2 
      | r2. r8 d'8 
      \bar "||" \mark \default e'8. g'16~ g'8 b'4 d''8~ d''16 des''8 c''16~ 
      | c''8. e'16~ e'8 r8 r8. a'16 ais'4 
      | f'2~^\markup{\left-align \small vib} f'8 g'8 \tuplet 3/2 {ais'4 gis'8} 
      | r4 r8 a'8 aes'8 c''8 g'8 f'8 
      | e'8 g'8~ g'16 a'16 b'16 d''16~ d''8 b'8 c''8 d''8 
      | \tuplet 3/2 {e''4 g'8} r2 r8. fis''16~ 
      | fis''8. e''16~ e''8 des''8 r2 
      | r4 \tuplet 3/2 {r8 e''8 f''8~} f''8 e''8~ \tuplet 3/2 {e''8 d''8 es''8~} 
      | es''8 g'8 aes'8 des''8 c''8 aes'16 e'16~ e'4 
      | es'8 f'8 g'8 aes'8 bes'8 g'16 aes'16~ aes'8 bes'8 
      | a'8 b'8 c''8 d''8 e''8 c''16 a'16~ a'4 
      | gis'8 e'8 g'8 g'8 fis'8 e'8 dis'8 cis'8 
      | d'8 e'8 f'8 g'16 a'16~ a'8 c''16 e''16~ e''8 d''8~ 
      | d''8 d''16 c''16 b'8 cis''8 ais'8 gis'8 f'8 fis'8 
      | g'8 r8 r2. 
      | r2. bes'8 c''8 
      \bar "||" \mark \default \tuplet 3/2 {d''4 c''8} r4 r16 bes'16 a'8 \tuplet 3/2 {d''4 c''8~} 
      | c''8. g'16 \tuplet 3/2 {a'8 b'8 c''8} d''8 c''4 bes'8~ 
      | bes'8 a'4 aes'4 e'8 \tuplet 3/2 {g'4 f'8~} 
      | f'4 es'16 f'16 es'16 d'16~ d'8 c'8 bes8 aes8 
      | g8 a8 r4 r16 es'16 d'16 des'16 c'8 d'8 
      | e'8 g'4 r8 r2 
      | r1 
      | r1 
      | \tuplet 6/4 {r16 es''4 f''16~} f''8 es''8 c''8. c''16~ c''8. c''16 
      | \tuplet 3/2 {d''8 c''8 b'8} c''8 des''8 c''8 b'8 bes'8 gis'8 
      | \tuplet 3/2 {a'4 b'8} c''8 d''8 e''8 g''8 gis''8 e''8 
      | d''8 des''8 c''8 b'8 a'8 g'8 \tuplet 6/4 {fis'4~ fis'16 g'16~} 
      | g'8 a'8 c''8 e''8~ e''8. e''16 f''8 e''8~ 
      | e''8 d''8~ d''16 c''16 des''16 c''16 b'8 a'8 g'8 r8 
      | r2 r8. c''16~ c''8 bes'8~ 
      | bes'8 es'4 a'8\glissando  bes'4. aes'8 
      \bar "||" \mark \default \tuplet 3/2 {g'4 e'8~^\markup{\left-align \small vib}} e'4 r2\bar  ".."
    }
    >>
>>    
}
