\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Trane's Blues"
  composer = "Miles Davis"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
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


      \tempo 4 = 164
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 d''4 bes'2~ 
      | bes'2 gis'4 a'8. bes'16~ 
      | bes'8. bes'16~ bes'4 r2 
      | r1 
      | \tuplet 3/2 {des''8 es''4~} es''2. 
      | des''8. bes'16~ bes'8 aes'8~ aes'8. e'16 a'4 
      | bes'4..^\markup{\left-align \small vib} bes'16 r2 
      | r4 r8 c''8 d''4 c''4 
      | bes'8. f'16~ f'4 r2 
      | r8. g'16 \tuplet 3/2 {bes'4 c''8~} c''16 d''8 c''16 d''4 
      | bes'4 aes'4 f'8. f'16 r4 
      | r2. des''4 
      \bar "||" des''8. des''16 r2 des''4 
      | bes'8. aes'16 r2 des''4 
      | \tuplet 6/4 {des''4~ des''16 des''16} r2 des''4~ 
      | \tuplet 6/4 {des''16 bes'4 aes'16} r2 aes'8 es'8 
      | \tuplet 3/2 {aes'4 bes'8} r2 es''4~^\markup{\left-align \small vib} 
      | es''4 des''8 bes'8 r4 des''4 
      | des''8. des''16 r2 des''4 
      | bes'8. aes'16 r2 \tuplet 3/2 {bes'4 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 r2 r16 c''16\glissando  d''8~ 
      | d''2 \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {es'4 f'8} 
      | d'4 a'8. f'16 bes'8. d''16 r4 
      | r1 
      \bar "||" \mark \default \tuplet 3/2 {g''8 a''4~} a''4 f''2^\markup{\left-align \small vib} 
      | d''4~ d''16 d''8 bes'16~^\markup{\left-align \small vib} bes'4 r4 
      | r4 f''4 d''2 
      | f'16 bes'8 gis'16 r2. 
      | r8. a'16~ a'16 bes'8 c''16 des''8 es''8~ es''16 e''8 g''16~ 
      | g''4 g''8\glissando  a''8~ a''4. g''8~ 
      | g''8 f''8 c'''4~ c'''16 gis''16 a''8~ a''16 g''8 f''16 
      | r2 \tuplet 3/2 {r8 cis''8\glissando  es''8~} es''16 d''8 bes'16~ 
      | bes'16 f'8 es'16~^\markup{\left-align \small vib} es'4 r2 
      | r4 g'16 bes'8 cis''16 d''8. cis''16 d''4 
      | bes'8. g'16 aes'4 \tuplet 3/2 {f'4 bes'8} r4 
      | r1 
      \bar "||" \mark \default r8. f'16 \tuplet 3/2 {bes'4 d''8} f''4 f''4 
      | es''4 es''4 e''4 g''8. f''16~ 
      | f''8 bes''8 r2. 
      | r16 bes''16 c'''8~ c'''8. bes''16 \tuplet 6/4 {aes''16 g''4 f''16~} f''16 es''8 des''16 
      | r1 
      | r2 \tuplet 3/2 {es''4 des''8} \tuplet 3/2 {bes'4 aes'8~} 
      | aes'8 f'8 f'4 r2 
      | r2. \tuplet 3/2 {r8 d''8 d''8} 
      | d''8 d''16 d''16 \tuplet 3/2 {d''8 d''4} d''4 d''4 
      | d''4 d''4 d''4 \tuplet 6/4 {d''4~ d''16 d''16~} 
      | d''4. bes'8 d''8. d''16 r4 
      | r2 r16 d''8\glissando  es''16 d''4 
      \bar "||" \mark \default bes'4^\markup{\left-align \small vib} r2. 
      | r8. ges''16 e''16 es''8 des''16~ des''4 bes'4 
      | des''8 r8 r2. 
      | r8. f'16~ f'16 aes'8 bes'16~ bes'16 b'8 cis''16~ cis''16 d''8 e''16~ 
      | e''16 f''8 g''16 aes''8 r8 r2 
      | r4 \tuplet 3/2 {e''4 es''8~} es''16 des''8 bes'16~ bes'4 
      | des''4 des''4 r2 
      | r8 cis''8 d''8. cis''16 d''4 c''8 bes'8~ 
      | bes'8 f'8 es'4 r2 
      | r16 es'8 f'16~ f'16 g'8 a'16 bes'8 c''8 cis''8 d''8 
      | bes'2~^\markup{\left-align \small vib} \tuplet 6/4 {bes'16 bes'4 bes'16} r4 
      | r4 r8 cis''8 \tuplet 3/2 {d''4 f''8} g''4 
      \bar "||" \mark \default aes''8 r8 r2. 
      | r16 g''8 f''16~ f''16 e''8 d''16 es''4 des''4 
      | aes''8 r8 r2. 
      | r16 aes''8 f''16~ \tuplet 6/4 {f''16 e''4 d''16} es''4 des''4 
      | des''4 r2. 
      | \tuplet 6/4 {r16 g''4 f''16~} f''8 e''8 es''4 \tuplet 3/2 {des''4 bes'8} 
      | des''4 bes'8. aes'16~^\markup{\left-align \small vib} aes'4 r4 
      | r1 
      | \tuplet 3/2 {r8 c'8 es'8~} es'16 g'8 bes'16 a'8 bes'8 c''8 d''8 
      | es''8 f''8 g''8 bes''4 c'''16 d'''16 e'''16 es'''16 d'''16 c'''16~ 
      | \tuplet 3/2 {c'''8 b''8 aes''8} g''8 ges''8 f''8 e''8~ \tuplet 5/4 {e''16 es''8 c''16 d''16} 
      | bes'4 bes'8 c''8 d''16 bes'8. bes'4 
      \bar "||" \mark \default bes'4..^\markup{\left-align \small vib} bes'16~ bes'8 r8 r4\bar  ".."
    }
    >>
>>    
}
