\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "U.M.M.G."
  composer = "Wynton Marsalis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key des \major
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
      
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim7 des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:13-.9+11+ | c1:9- | f1:maj | s1 | aes1:13-.9+11+ | des1:9- | ges1:min7 | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim7 | des1:6 | des1:dim | des1:6 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des2:dim des2:6 | des1:maj | des1:min7 | ges1:7 
      | f1:min5-7 | bes1:9- | des1:maj | aes1:7 | des2:dim des2:6 | des1:maj | aes2:min7 des2:7 | aes2:min7 des2:7 
      | g1:13-.9+11+ | c1:9- | f1:maj | s1 | aes1:13-.9+11+ | des1:9- | ges1:min7 | aes1:7 
      | f1:min5-7 | bes1:9- | es1:min7 | aes1:7 | des1:dim | des1:6 | des1:min7 | des1:6|
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


      \tempo 4 = 221
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 g''8 aes''4.~ 
      | aes''4 \tuplet 3/2 {g''4 ges''8~} ges''2~ 
      | ges''4. f''8 ges''4 f''8. ges''16~ 
      | ges''4. f''8 e''2~ 
      | e''4 f''8. f'16 a'4 bes'4 
      | c''8. des''16~ des''8. es''16~ es''4.. d''16 
      | e''2. es''8. c''16~^\markup{\left-align \small vib} 
      | c''2~ c''8 r8 r4 
      \bar "||" r8. f'16 aes'4 bes'8. b'16~ b'8. bes'16 
      | b'4.. bes'16 des''4 bes'16 b'8. 
      | ges'4.\glissando  aes'4 a'8 aes'4 
      | f''2. \tuplet 3/2 {ges''4 aes''8~^\markup{\left-align \small vib}} 
      | aes''1~ 
      | aes''1~ 
      | aes''8 f''8 ges''4 f''4 \tuplet 3/2 {es''4 b'8~^\markup{\left-align \small vib}} 
      | b'2 r2 
      \bar "||" r4 \tuplet 3/2 {f'8 g'8 a'8~} a'8 bes'8 \tuplet 3/2 {c''4 des''8~} 
      | des''8 es''8~ es''8. a'16~ a'8 e''8~ e''16 es''8 des''16~ 
      | des''16 c''8 bes'16 g'4 aes'16 a'8 e'16 \tuplet 3/2 {g'4 e'8} 
      | f'4~ f'16 a'8 c''16~ \tuplet 3/2 {c''8 a'8 e''8} g''8 e''8 
      | f''4 \tuplet 3/2 {e''4 des''8} d''4 \tuplet 3/2 {des''4 bes'8} 
      | b'4 bes'8 g'8 \tuplet 3/2 {aes'4 f'8} \tuplet 3/2 {ges'4 aes'8~} 
      | aes'8 a'4 aes'8 ges'4 aes'8. f'16~^\markup{\left-align \small vib} 
      | f'2~ f'8 r8 r4 
      \bar "||" r8 f'8 aes'8 bes'8 b'4 bes'4 
      | ges''4. f''8~ f''2~ 
      | f''8. f'16 ges'8 aes'8 a'4 aes'4 
      | e''4.\glissando  es''8~^\markup{\left-align \small vib} es''2 
      | r2 c''8 g'16 e'16~ e'8 f'8 
      | aes'2~ aes'8 f'8 es'8 des'8 
      | a'8 e'8 f'8 a'8 des''4 f''4 
      | a''2\glissando  aes''2~ 
      \bar "||" \mark \default aes''4~ \tuplet 3/2 {aes''8 f''8 aes''8~} aes''8 f''16 aes''16~ aes''4 
      | aes''2 aes''2^\markup{\left-align \small vib} 
      | r4 r8. ges''16~ ges''8\glissando  f''8 \tuplet 3/2 {ges''4 ges''8~} 
      | ges''4. f''8 ges''4. g''8 
      | g''8 aes''8 \tuplet 3/2 {aes''4 g''8} aes''8 bes''16 aes''16 g''8. bes''16~ 
      | bes''8 aes''4 f''4 des''8 c''8 b'8 
      | bes'8 a'8 aes'8 e'8~ e'16 des'8 e'16 aes'8 b'8 
      | es''4 ges''4 e''2 
      \bar "||" f''8 f'8 aes'4 bes'4~ bes'16 aes'8 b'16~^\markup{\left-align \small vib} 
      | b'2 r2 
      | r8 f''4 ges'8 aes'4 ges'4 
      | a'4. d''8~^\markup{\left-align \small vib} d''2~ 
      | d''16 des''8 aes'16~ aes'8 f'8 aes'4 g'16 bes'8 g'16 
      | aes'4.^\markup{\left-align \small vib} f'8~ f'16 es'8 des'16~ des'8 r8 
      | r2. aes'8 bes'8 
      | b'8 des''8 d''8 e''8 des''8 b'8 bes'8 aes'8 
      \bar "||" g'8 r8 r4 r16 c''8 des''16~ des''8 es''8~^\markup{\left-align \small vib} 
      | es''2.. c''8~ 
      | c''16 a'8 e'16 \tuplet 3/2 {g'4 e'8} f'4 a'8 d''8 
      | \tuplet 3/2 {e''4 f''8~} f''2.~ 
      | f''4 \tuplet 3/2 {ges''4 aes''8} f''2 
      | ges''8 aes''8 f''2. 
      | ges''8 aes''8 e''2. 
      | ges''8 aes''8 f''2.~^\markup{\left-align \small vib} 
      \bar "||" f''4 e''4 f''4 e''8. ges''16~^\markup{\left-align \small vib} 
      | ges''2~ ges''8 r8 r4 
      | r8 bes'8 c'''8 b''8 bes''8 a''8 aes''8 g''8 
      | ges''8 f''8 es''8 e''4 des''8 c''8 b'8 
      | \tuplet 3/2 {bes'4 a'8} aes'8 e'8 g'8 e'8 d'8 c'8 
      | \tuplet 3/2 {aes'4 des'8} f'8 aes'8 bes'8 f'8 \tuplet 3/2 {aes'4 g'8~} 
      | g'8 des''8 e''4 f''2 
      | f''2\glissando  c'''4~ \tuplet 5/4 {c'''16\glissando  g''16 f''16 es''16 c''16} 
      | \tuplet 3/2 {b'8 bes'4~} \tuplet 3/2 {bes'8 aes'8 b'8~^\markup{\left-align \small vib}} b'2\bar  ".."
    }
    >>
>>    
}
