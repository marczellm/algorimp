\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Undecided"
  composer = "Roy Eldridge"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | bes1:6 | bes1:6 | es1:9 | s1 | c1:7 | c2:min7 f2:7 | bes2:6 g2:7 | c2:min7 f2:7 
      | bes1:6 | s1 | es1:9 | s1 | c1:7 | c2:min7 f2:7 | bes1:6 | s1 
      | f2:min7 bes2:7 | s1 | es1:6 | s1 | g2:min7 c2:7 | s1 | f1:7 | s1 
      | bes1:6 | s1 | es1:9 | s1 | c1:7 | c2:min7 f2:7 | bes1:6 | s1 
      | s1 | s1 | es1:9 | s1 | c1:7 | c2:min7 f2:7 | bes2:6 g2:7 | c2:min7 f2:7 
      | bes1:6 | s1 | es1:9 | s1 | c1:7 | c2:min7 f2:7 | bes1:6 | s1 
      | f2:min7 bes2:7 | s1 | es1:6 | s1 | g2:min7 c2:7 | s1 | f1:7 | s1 
      | bes1:6 | s1 | es1:9 | s1 | c1:7 | c2:min7 f2:7 | bes1:6 | s1 
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


      \tempo 4 = 244
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default bes'4 r4 bes'4. bes'8~ 
      | bes'4 r2. 
      | r2 \tuplet 3/2 {bes'4 c''8~} c''8 des''8~ 
      | des''8 bes'4 bes'8 \tuplet 3/2 {a'8 a'8 aes'8} g'8 f'8 
      | e'8 r8 r2. 
      | cis''8 d''8 \tuplet 3/2 {es''4 e''8} f''8 es''8 c''8 bes'8 
      | c''8. bes'16 g'8 gis'8 a'16 bes'8 b'16 c''8 cis''8 
      | d''8 des''8 \tuplet 3/2 {c''4 bes'8} \tuplet 3/2 {aes'4 f'8} g'4 
      \bar "||" \tuplet 3/2 {f'4 bes'8~} bes'8 aes'4 f'4 bes'8~ 
      | bes'8 aes'8~^\markup{\left-align \small vib} aes'4. r8 r8 aes'8 
      | \tuplet 3/2 {g'4 f''8~} f''8. es''16~ es''8 g'4 f''8~ 
      | f''8 es''8 ges'2~^\markup{\left-align \small vib} ges'8 f'8~ 
      | f'8 bes'8 aes'4 r2 
      | r8 bes'8 g'8 a'8 bes'8 c''8 cis''8 d''8 
      | es''8 e''4 e''8~ e''4.\glissando  es''8 
      | \tuplet 3/2 {des''4 bes'8} g'4 bes'4^\markup{\left-align \small vib} g'8 bes'8 
      \bar "||" \tuplet 3/2 {aes'4 bes'8} c''8 d''8~ \tuplet 3/2 {d''8 g''8 ges''8} f''8 e''8 
      | es''8 bes'8 d''8 des''4 bes'8 c''8 bes'8 
      | aes'16 bes'16 aes'16 g'16 f'8 e'8 es'4 \tuplet 3/2 {c'8 des'8 es'8~^\markup{\left-align \small vib}} 
      | es'4 \tuplet 3/2 {b8 c'8 es'8} f'8 g'8 aes'8 bes'8 
      | \tuplet 3/2 {g'8 gis'8 a'8} bes'8 b'8~ \tuplet 3/2 {b'8 c''8 cis''8} d''8 des''8 
      | c''8 bes'8 g'4 bes'4 g'8 bes'8 
      | bes'8 a'8 g'8 es'8 c'4 f'4 
      | es'8 f'8 r2 r8 ges'8 
      \bar "||" \tuplet 3/2 {d'8 es'8 e'8} f'8 aes'8 g'8 aes'8 e'8 g'8 
      | bes'8 c''8 des''8 bes'8 c''8 a'8 aes'8 f'8 
      | g'4 f''2 \tuplet 3/2 {es''4 aes'8} 
      | r2. f''4 
      | aes''8 aes''8 g''4 f''8 es''4 des''8~ 
      | des''8\glissando  bes'8~ bes'16 e''8 es''16~ es''16 des''8 bes'16 \tuplet 3/2 {bes'8 g'4} 
      | bes'4 bes'4 d''8 r8 r4 
      | r4 aes''2.~ 
      \bar "||" \mark \default aes''1~ 
      | aes''4 e''4 f''8 r8 r4 
      | r4 \tuplet 3/2 {bes'8 bes'8 bes'8} bes'8 r8 r4 
      | r4 bes'2.~ 
      | bes'2 bes'8 r8 r4 
      | r8. bes'16~ bes'2.~ 
      | bes'2 cis''8 r8 r4 
      | r4 bes'2. 
      \bar "||" \tuplet 3/2 {c''4 bes'8~} bes'4 \tuplet 3/2 {c''4 bes'8~} bes'4 
      | c''8 aes'8 bes'8. des''16~ des''8 des''8~ des''8. c''16~ 
      | c''8 bes'8 \tuplet 3/2 {c''4 a'8} g'4 bes'8 g'8 
      | bes'8 bes'8 \tuplet 3/2 {g'4 c''8~} c''8 bes'8 c''8 bes'8 
      | g'8 f'8 \tuplet 3/2 {es'4 e'8} g'8 a'8 bes'8 c''8 
      | \tuplet 3/2 {des''4 b'8} \tuplet 3/2 {bes'4 aes'8~} aes'16 g'8 f'16 e'8 es'8 
      | c'8 des'8 e'16 d'8 f'16 bes'8 des''8 bes'8 r8 
      | r4 r8 bes''8 aes''8. aes''16~ aes''8 g''8 
      \bar "||" \tuplet 3/2 {aes''4 g''8} aes''8 g''8 \tuplet 3/2 {f''8 ges''8 es''8} f''8 es''8 
      | des''8 bes'8 \tuplet 3/2 {des''4 es''8} f''8 d''8 des''8 bes'8 
      | \tuplet 3/2 {c''4 bes'8} g'8. f'16 bes'4 aes'8 f'8 
      | g'8 bes'8 \tuplet 3/2 {g'8 gis'8 a'8} bes'8 b'8 c''8 cis''8 
      | d''4 d''4 g''4.\glissando  des''8~ 
      | des''8 des''8 g'2^\markup{\left-align \small vib} r4 
      | bes'4 bes'4 des''4.. c''16~ 
      | c''8 c''8 g'8 f'8~^\markup{\left-align \small vib} f'2 
      \bar "||" bes'8 r8 r2 es''8 des''8~ 
      | des''4 des''4 des''4 des''8 des''8~ 
      | des''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 
      | c''4. es''8 r2 
      | r8 bes'8 des''8 e''8~ \tuplet 3/2 {e''8 es''8 c''8} \tuplet 3/2 {bes'4 g'8} 
      | bes'8 f'8 \tuplet 3/2 {g'8 gis'8 a'8} \tuplet 3/2 {bes'4 c''8~} c''16 des''8 bes'16 
      | c''8 bes'8 g'8 f'8 e'8 es'8 c'4 
      | d'4 \tuplet 3/2 {f'4 d'8} es'8 g'4 e'8 
      \bar "||" \tuplet 3/2 {g'4 bes'8} r2.\bar  ".."
    }
    >>
>>    
}
