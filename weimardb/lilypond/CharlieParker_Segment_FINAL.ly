\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Segment"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \minor
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
      
      | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min5-7 f2:9- | bes1:min6 | f1:775+ 
      | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min7 f2:9- | bes1:min6 | s1 
      | f1:min7 | bes1:7 | es1:min | s1 | s1 | aes1:7 | des1 | f1:9- 
      | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min5-7 f2:9- | bes1:min6 | f1:775+ 
      | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min5-7 f2:9- | bes1:min6 | f1:775+ 
      | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min5-7 f2:9- | bes1:min6 | s1 
      | f1:min7 | bes1:7 | es1:min | s1 | s1 | aes1:7 | des1 | f1:9- 
      | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min7 f2:9- | bes1:min6 | c2:min5-7 f2:9- | bes1:min6 | f1:775+ 
      | bes1:min6|
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


      \tempo 4 = 247
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 6/4 {r4 d'16 a16} \tuplet 3/2 {f4 a8} \tuplet 3/2 {c'4 des'8} 
      | c'8 bes8 \tuplet 3/2 {a8 c'8 des'8} ges'8 f'8 des'8 b16 c'16~ 
      | c'4. es'8 g2 
      | r1 
      | r4 r8. g'16~ g'8. bes'32 des''32~ des''8 es''8 
      | \tuplet 3/2 {e''8\glissando  f''8 e''8} es''8 des''8~ \tuplet 3/2 {des''8 c''8 bes'8} a'8 b'8 
      | c''8. a'16 bes'8 f'8 r2 
      | r2 r8 e''4 des''8 
      \bar "||" es''2 \tuplet 3/2 {des''4 bes'8~} bes'4 
      | ges'8 g'8 \tuplet 3/2 {bes'4 a'8} r4 r8 c''8 
      | bes'8 f'8~ \tuplet 5/4 {f'16 des'8 bes16 a16} \tuplet 3/2 {aes'8 bes'8 aes'8} ges'8 f'8 
      | es'8 des'8 c'8 bes16 a16~ a8 ges'8~ \tuplet 3/2 {ges'8 e'8 f'8~} 
      | f'8 des'8 bes4 e'8 f'16 e'16 \tuplet 3/2 {es'4 des'8} 
      | c'8 bes16 a16~ \tuplet 3/2 {a8 es'8 ges'8~} ges'8 f'8 b8 a8 
      | bes8 f'8 aes8. ges16 g2~^\markup{\left-align \small vib} 
      | g8 r8 r2. 
      \bar "||" r8 e'8 \tuplet 3/2 {f'8 aes'8 es''8} ges''2\glissando  
      | \tuplet 3/2 {f''4 es''8} d''8. f'16 aes'8 b'8 bes'8 aes'8 
      | \tuplet 3/2 {ges'8 f'4} es'8 ges'8 f'8 es'8 d'8 bes8 
      | f'8. es'16~ es'8 r8 r4 f''8 es''8 
      | des''16 bes'16 ges'8 es'8 bes8 des'8. b16 \tuplet 3/2 {c'4 f'8} 
      | e'8 e'8 b'8 bes'8 \tuplet 5/4 {a'8 bes'16 a'16 ges'16~} ges'16 e'8 aes'16~ 
      | aes'8 es'16 e'16 \tuplet 3/2 {aes'8 bes'8 es''8~} es''8 d''8 des''8. es''16 
      | \tuplet 3/2 {des''8 c''8 bes'8} a'4 r4 r8 bes'8 
      \bar "||" c''4 bes'8 f'8 aes'8 g'8~ g'16 des'8 es'16 
      | ges'4 ges'2^\markup{\left-align \small vib} r4 
      | r2 e'8 f'8 ges'8 f'8 
      | es'2~^\markup{\left-align \small vib} es'8 des'8~ des'16 c'8 bes16 
      | a8 ges'8~ \tuplet 3/2 {ges'8 c'8 e'8} \tuplet 3/2 {f'4 des'8} bes8 f8 
      | \tuplet 3/2 {e'8 f'8 e'8} es'8 des'8 c'16 bes8 a16~ a8 f'16 ges'16~ 
      | ges'8 f'8 des'2^\markup{\left-align \small vib} r4 
      | r2. \tuplet 3/2 {f4 bes8} 
      \bar "||" \mark \default des'8. bes16 a16 ges16 a8 \tuplet 3/2 {c'4 a8} bes8 c'8 
      | des'8 es'8 e'8 f'8 ges'8 f'8~ \tuplet 3/2 {f'8 es'8 c'8} 
      | des'4^\markup{\left-align \small vib} r2. 
      | r4 r8. b'16\glissando  c''4.^\markup{\left-align \small vib} a'8 
      | bes'8 f'8~ f'16 des'8 bes16 \tuplet 3/2 {ges'8 g'8 ges'8} f'8 es'8~ 
      | es'8 r8 r4 r8 des'8 c'8 bes8 
      | a8 b8 c'8. a16~ a16 bes8 g16~ g4~ 
      | g8 r8 r2. 
      \bar "||" r16 f'8 bes'16 des''8 f''4 g'8 g'4 
      | es''4 es''8 c''8~^\markup{\left-align \small vib} c''4. r8 
      | r4 es''8 c''8 des''16 d''16 des''8 c''8 bes'8 
      | a'4 c'8 ges'8~^\markup{\left-align \small vib} ges'4. f'8 
      | r2 c'8 d'8 es'8.\glissando  d'16\glissando  
      | des'8 c'8 \tuplet 3/2 {bes8 a8 es'8} ges'8 f'8~ \tuplet 3/2 {f'8 b8 a8} 
      | bes8 f'8~ f'16 aes16 ges16 g16~^\markup{\left-align \small vib} g4 r4 
      | r2 r8. f'16~ f'16 aes'16 es''16 g''16~^\markup{\left-align \small vib} 
      \bar "||" g''2.~ \tuplet 6/4 {g''16 f''4 es''16~} 
      | \tuplet 3/2 {es''8 d''8 f'8~} f'16 aes'8 bes'16 \tuplet 3/2 {b'8 bes'8 a'8} aes'8 g'16 ges'16~ 
      | ges'4 d'8 e'16\glissando  f'16~ f'4 es'4 
      | \tuplet 3/2 {es'4 bes8~} bes4 r2 
      | \tuplet 3/2 {b'8 c''8 b'8} bes'8 a'8 aes'8 ges'8 es'8 b16 des'16~ 
      | des'8 b8 c'8 f'8~ \tuplet 6/4 {f'16 e'8. c'16 aes'16~} aes'8 ges'8 
      | \tuplet 5/4 {f'8 aes'16 des''16 es''16~} es''8 c''8 des''8 aes'8 r4 
      | r2. \tuplet 3/2 {c''4 a'8} 
      \bar "||" bes'8 f'4 b16 bes16 f'4 r4 
      | ges'8. f'16~ f'8 b8 r4 r8 a8 
      | \tuplet 3/2 {bes8 f'4} des'8 bes8 es'2~^\markup{\left-align \small vib} 
      | es'8. des'16~ \tuplet 3/2 {des'8 c'8 bes8} a8 ges'8 \tuplet 3/2 {es'8 e'8 f'8~} 
      | f'8 des'8 bes8 f8 es'8 des'8 c'8 bes8 
      | a8 d'16 ges'16~ ges'8 f'8 b'4. a'8 
      | bes'8 f''4 g'8~^\markup{\left-align \small vib} g'4. r8 
      | r8. c''16 bes'8 aes'16 g'16 aes'8 c''8~ c''16 bes'16 aes'8 
      \bar "||" \mark \default g'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
