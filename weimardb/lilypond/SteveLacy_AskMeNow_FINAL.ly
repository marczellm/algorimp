\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Ask Me Now"
  composer = "Steve Lacy"
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
      
      | g4:min7 c4:7 fis4:min7 b4:7 | f4:min7 bes4:7 e4:min7 a4:7 | es2:min7 aes2:7 | b2:7 bes2:7 | es2:7 d2:7 | des2:maj es2:7 | es2:min7 aes2:7 | f4:min7 e4:7 es4:min7 d4:7 
      | g4:min7 c4:7 fis4:min7 b4:7 | f4:min7 bes4:7 e4:min7 a4:7 | es2:min7 aes2:7 | b2:7 bes2:7 | es2:7 d2:7 | des2:maj es2:7 | es2:min7 aes2:7 | des1 
      | es2:min7 aes2 | des2.:maj e4:min7 | es2:min7 aes2:7 | des1:maj | bes2:min7 es2:7 | s2 bes2:min7 | es2:min7 aes2:7 | des2:min7 ges2:7 
      | g4:min7 c4:7 fis4:min7 b4:7 | f4:min7 bes4:7 e4:min7 a4:7 | es2:min7 aes2:7 | b2:7 bes2:7 | es2:7 d2:7 | des2:maj es2:7 | es2:min7 aes2:7 | des1|
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


      \tempo 4 = 85
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default bes4. r8 r4 r8 a8 
      | c'8 es'4 r8 r4 r8 ges'8 
      | aes'4.^\markup{\left-align \small vib} r8 r4 r8 f'8 
      | b'4. r8 r4 r8 d'8 
      | c'8. des'16~ \tuplet 6/4 {des'4~ des'16 c''16~^\markup{\left-align \small vib}} c''4.. aes'16~ 
      | aes'8 f'8 e'8 f'8 es''2~^\markup{\left-align \small vib} 
      | es''4 r4 r8 aes'4. 
      | es''2.. \tuplet 6/4 {aes'8 aes'16~} 
      \bar "||" aes'8 e''8~ e''4. g'8 \tuplet 3/2 {bes'8 d''8 e''8} 
      | f''4 r2 r8 g'16 a'16~ 
      | a'8 ges''4.^\markup{\left-align \small vib} r4 r8 f''16 es''16~ 
      | es''16 e''16\glissando  f''4 b'8 f'16 b'16 bes'4^\markup{\left-align \small vib} r8 
      | r8 e'16 f'16 \tuplet 3/2 {g'8 bes'8 es''8~} \tuplet 3/2 {es''8 g''8 aes''8~} \tuplet 6/4 {aes''16 ges''4 d''16~} 
      | \tuplet 3/2 {d''8 f''8 es''8} c''4~ \tuplet 3/2 {c''8 es'8 f'8} c'8. bes16 
      | des'4~^\markup{\left-align \small vib} des'16 es'16 f'16 ges'16 \tuplet 3/2 {aes'8 bes'8 c''8} \tuplet 3/2 {es''8 f''8 aes''8} 
      | c'''4 r2 a'16 bes'16 c''16 des''16 
      \bar "||" \tuplet 6/4 {es''8 f''8 b''16 des'''16~} des'''16 bes''8 f''16 c''4~^\markup{\left-align \small vib} c''16 aes''16 e''16 b'16 
      | bes'2~ bes'8 r8 r8 f'8 
      | es''8 f''8 bes'4 \tuplet 3/2 {e''8 d''8 b'8~} \tuplet 3/2 {b'8 a'8 e'8} 
      | d'8 bes8 r4 \tuplet 7/8 {r8 r32 des'32 es'32} \tuplet 10/8 {f'16 g'16 aes'32 bes'16 c''32 des''32 es''32} 
      | \tuplet 6/4 {f''16 g''16 aes''16 bes''8.~} bes''4~ \tuplet 3/2 {bes''8 f''8 f''8~} f''16 e''16 f''16 es''16 
      | \tuplet 3/2 {des''8 bes'8 es'8^\markup{\left-align \small vib}} r2 r8 es'16\glissando  e'16 
      | bes'4 aes'8 ges'16 bes16~ \tuplet 3/2 {bes8 f'8 es'8~^\markup{\left-align \small vib}} es'8 r8 
      | \tuplet 6/4 {r4 r16 g'16~} \tuplet 10/8 {g'16 bes'16 c''16. des''16 e''32~} e''16 g''16 bes''16 c'''16 c'''16\glissando  des'''8. 
      \bar "||" c'''8 g''8~ \tuplet 3/2 {g''8 e''8 c''8} b'8. b''16~^\markup{\left-align \small vib} b''8 r8 
      | r4 a''16 bes''16 f''16 d''16 bes'16 a'8 a''16~ a''4~ 
      | \tuplet 5/4 {a''16 aes''8 a''16\glissando  bes''16~} \tuplet 3/2 {bes''8 aes''8 bes''8} aes''8 e''4. 
      | f''4.. \tuplet 12/8 {f'32 g'32 a'32} \tuplet 3/2 {b'8 des''8 d''8} \tuplet 3/2 {es''8 e''8 ges''8} 
      | f''4 des''8 bes'8 \tuplet 3/2 {g'8 ges'8 e''8~^\markup{\left-align \small vib}} e''8 r8 
      | r4 \tuplet 6/4 {r16 es''8. des''16 c''16~} c''16 des''16 f''16 aes''16 c'''8 bes''8^\markup{\left-align \small vib} 
      | r4 \tuplet 10/8 {r8. bes''32 b''32 c'''32 des'''32} \tuplet 6/4 {es'''8. des'''8 bes''16~} \tuplet 6/4 {bes''16 ges''8 f''8 des''16~} 
      | \tuplet 6/4 {des''16 bes'8 ges'8 des'16~} \tuplet 10/8 {des'8 bes8~ bes32 c'32~^\markup{\left-align \small vib}} c'8 r8 r4\bar  ".."
    }
    >>
>>    
}
