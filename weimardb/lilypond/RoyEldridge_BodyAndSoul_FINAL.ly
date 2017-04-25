\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Roy Eldridge"
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
      | r4 s2. | s1 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2 a2:7 
      | d2:maj e2:min7 | d2:/fis g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des1:6 
      | s4 r2.|
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


      \tempo 4 = 107
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default c''8 d''8 e''8 d''16 d''16 c''16 a'16 f'16 d'16 es'8 g16 aes16 
      | b16 d'16 es'16 f'32 g'32~ g'16 aes'16 bes'16 bes'16 \tuplet 3/2 {a'8 bes'4^\markup{\left-align \small vib}} aes'16 bes'16 f'8 
      \bar "||" \mark \default es'4 f'8 es'8 f'8^\markup{\left-align \small vib} r8 r4 
      | \tuplet 6/4 {r4 r16 bes16} es'16 ges'16 aes'16 bes'16 a'16\glissando  a16 des'16 e'16 a'16 des''16 b'16 a'16 
      | aes'4^\markup{\left-align \small vib} bes'16 bes'16 aes'16 bes'16 aes'8 bes'8^\markup{\left-align \small vib} r4 
      | r4 \tuplet 6/4 {es''8. es''8 es''16~} \tuplet 3/2 {es''8 d''8 des''8} c''8 b'8 
      | c''8\glissando  des''8 bes'8^\markup{\left-align \small vib} r8 r8. bes'16 \tuplet 3/2 {des''8 b'8 des''8} 
      | bes'16\glissando  f'16 e'16 es'16~^\markup{\left-align \small vib} es'8 r8 r8. f''16~^\markup{\left-align \small vib} f''8 es''16 des''16 
      | bes'16\glissando  f'16 e'16 es'16 \tuplet 3/2 {des'8 aes4} a16 des'16 e'16 ges'16 \tuplet 3/2 {a'8 a'8 aes'8~^\markup{\left-align \small vib}} 
      | aes'8 b'16 bes'16 aes'16 d'16 es'16 f'16 aes'16 bes'16 b'16 bes'16 \tuplet 3/2 {aes'8 f'4} 
      \bar "||" es'4^\markup{\left-align \small vib} f'4 r8. aes''16~ aes''16 aes''8 aes''16~ 
      | aes''16 f'16 f''16 aes''16 g''16 e'16 e''16 g''16 \tuplet 5/4 {ges''8 a'16 es''16 ges''16} \tuplet 5/4 {f''8 b'16 f''16 es''16} 
      | des''16 bes'16 f'16 e'32 es'32~ es'16 des'16 bes8 a16 bes16 des'16 es'16 f'16 aes'16 bes'16 a'16 
      | \tuplet 6/4 {c''8. c''8 c''16~} c''16. bes'8 des''32~ des''16 bes'16 c''8 \tuplet 3/2 {des''8 bes'8 c''8} 
      | \tuplet 3/2 {des''4 bes'8^\markup{\left-align \small vib}} r2 r16 b'16 des''16 ges''16 
      | aes''4 f''8.^\markup{\left-align \small vib} es''16 des''16 bes'16 f'16 e'16 es'16 des'8 a16~ 
      | a4. des'16 e'16 a'16 des''16 b'16 a'16~ a'8. aes'16~^\markup{\left-align \small vib} 
      | aes'4~ aes'16 f'16 a'16 bes'16 b'16 d''16 b'16 c''16 \tuplet 3/2 {des''8 e''16 r8.} 
      \bar "||" r8. b16 d'16 e'16 ges'16 a'16~ a'8 a'8^\markup{\left-align \small vib} r4 
      | r8. a'16 d''16 e''16 f''16 e''16 \tuplet 3/2 {d''8 a'8\glissando  bes'8\glissando } a'4~^\markup{\left-align \small vib} 
      | a'8. a16 \tuplet 7/8 {d'16 e'32 ges'16 aes'32 c''32~} c''8 d''8~ \tuplet 6/4 {d''8. bes'8 a'16~} 
      | a'16 a16 d'16 e'16 f'16 g'16 a'8 e'8\glissando  a16 d'16~^\markup{\left-align \small vib} d'8 r8 
      | r4 e''8 e''8 e''8 e''8 \tuplet 3/2 {e''8 e''8 e''8} 
      | es''16 e''16 g''8 e''16 d''16 c''16 a'16 c''8.^\markup{\left-align \small vib} aes'16\glissando  a'8.^\markup{\left-align \small vib} c''16~ 
      | c''16 a'16 f'16 f'16 d'16 f'16 g'16 b'16~ b'8. des''32\glissando  d''32~ \tuplet 3/2 {d''8 des''8 d''8} 
      | c''16 des''16 d''16 g'16 aes'16 bes'16 b'16 c''16 des''16 d''16 des''16 c''16 bes'16 aes'16 f'8 
      \bar "||" es'4 f'8 bes16 es'16~^\markup{\left-align \small vib} es'8 r8 r8. bes16 
      | es'16 f'16 aes'16 bes'16 aes'8 aes16 aes16~ \tuplet 6/4 {aes16 a8 bes16 des'16 e'16} \tuplet 3/2 {ges'8 a'4~} 
      | a'32 aes'16. aes16. des'32~^\markup{\left-align \small vib} des'4. aes'8 bes'16 bes'16 aes'8 
      | es''8 es''8 es''8 es''8 \tuplet 3/2 {es''8 d''8 des''8} c''8 bes'8 
      | r4 des''4 bes'4.^\markup{\left-align \small vib} des''16 bes'16 
      | f'8 f'4.^\markup{\left-align \small vib} r4 \tuplet 6/4 {f''8. e''8 es''16~} 
      | \tuplet 9/8 {es''16 des''16. bes'16. f'32~} \tuplet 6/4 {f'16 e'8 es'8 des'16~} \tuplet 6/4 {des'8 bes8 des'16 e'16~} e'16 a'16 des''8 
      | aes'4~^\markup{\left-align \small vib} aes'16 des''16 b'16 a'16 \tuplet 3/2 {g'8 e'8 d'8} \tuplet 3/2 {des'8 e'8 a'8} 
      | d'4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
