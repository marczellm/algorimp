\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Aisha"
  composer = "Eric Dolphy"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key a \minor
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
      
      | a2:maj d2:11+.9 | a2:maj d2:11+.9 | des2:maj ges2:11+.9 | des2:maj ges2:11+.9 | b2:maj e2:11+.9 | b2:maj e2:11+.9 | es2:maj ges2:maj | a2:maj b4:min7 e4:7 
      | a1:min9 | g1:min9 | a1:min9 | f1:min9 | f2:min7 bes2:7 | g2:min7 c2:9- | a2:min7 d2:9- | g4:min7 c4:7 f4:min7 e4:7 
      | a1:min9|
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


      \tempo 4 = 63
      \set Score.currentBarNumber = #-7
     
      \bar "||" \tuplet 11/8 {r8 r32 a'32 g'32 gis'32 a'32 ais'32 b'32} dis''16 e''8.~^\markup{\left-align \small vib} \tuplet 9/8 {e''32 d''32 e''32 d''32 c''32 b'32 a'32 g'32 fis'32} \tuplet 6/4 {e'8 d'16 b16 cis'16 b16} 
      | \tuplet 6/4 {g16\glissando  gis8 dis'16\glissando  g'16 gis'16~} \tuplet 11/8 {gis'32 b'16. a'16. cis'32 d'16 fis'32~^\markup{\left-align \small vib}} fis'2~ 
      | \tuplet 9/8 {fis'32 c''32 es''32 d''32 c''32 bes'32 aes'32 f'32 c'32~} c'16\glissando  es'16 c'32 des'16 c'32 dis'32 e'32~ e'8 c'32 cis'32 \tuplet 10/8 {dis'32 c'32 cis'32 dis'32 fis'16.\glissando  dis''16 c''32~} 
      | \tuplet 9/8 {c''32 des''32 es''32 des''32 c''32 bes'32 aes'32 f'32 c'32} \tuplet 6/4 {des'16 es'16 c'16 des'16 e16 dis16~} dis8 e8^\markup{\left-align \small vib} r4 
      | \tuplet 11/8 {r16. ais16 b32 cis'16 b32 c'32 dis'32} \tuplet 6/4 {fis'16 dis'16 e'16 fis'16\glissando  ais'16 b'16~} b'32 a'32 g'32 gis'32 b'32 d''32 e''32 f''32~ \tuplet 9/8 {f''32 e''32 es''32 d''32 c''32 b'32 a'32 g'32 gis'32} 
      | r4 r32 ais'32 fis'32 dis'32 ais32 cis'32 dis'32 bes32 a16 gis16 r8 r8. c'16 
      | \tuplet 12/8 {cis'32 d'32 es'32 f'32 g'32 aes'32 bes'32 des''32 e''32 g''32 ges''32 dis''32} \tuplet 12/8 {e''16 d''32 des''4 cis''32} \tuplet 6/4 {d''16 es''16 g''16 aes''16 ges''16 es''16} c''32 cis''32 d''32 bes'32 ges'32 es'32 bes32 ges32 
      | \tuplet 7/8 {cis'32 ais32 c'32 dis'32 g'32 a'32\glissando  bes'32~^\markup{\left-align \small vib}} \tuplet 9/8 {bes'8 a'32 bes'32 a'32 g'32 gis'32} \tuplet 14/16 {ais'64 b'64 cis''32 d''64\glissando  dis''64 ges''64~ ges''16 f''64 e''64 es''64} \tuplet 6/4 {d''16 c''16 gis'16 r8.} 
      \bar "||" \mark \default r4 \tuplet 10/8 {r32 c''32 e''16 d''32 c''32 b'32 a'32 g'32 f'32~} f'32 fis'32 gis'32 c''32 dis''32 c''32 cis''32 d''32~ \tuplet 15/16 {d''16 e''64 dis''64 cis''64 bes'32 a'32 g'32 fis'64 dis'64~} 
      | \tuplet 9/8 {dis'32 c'32 d'32 a32 bes32 d'32 ais32 b32 c'32~} \tuplet 13/16 {c'64 bes32 a64 g64 f32 e64 f64 g64 bes64 des'64 ais64~} \tuplet 12/8 {ais32 b32 c'32~ c'8 a16 f32 ges32 a32} \tuplet 11/8 {c'32 es'32 g'32 aes'32 d''32 e''32 fis''32 g''32 f''32 d''32 dis''32~} 
      | \tuplet 14/16 {dis''32 e''64\glissando  dis''64 e''16.. es''64 d''64 c''64} ais'32 g'32 e'32 d'32 c'32 ais16. dis'16\glissando  e'8. r4 
      | r32 c''16 dis''16 e''32 es''32 d''32 \tuplet 10/8 {c''32 bes'32 aes'32 g'32 f'32 es'32 c'32 d'16 c'32} bes32 a32 aes32 c'32 e'32 f'32 bes'32 aes'32 \tuplet 9/8 {g'32 f'32 es'32 c'32 cis'32 d'32 c'32 bes32 a32} 
      | \tuplet 9/8 {aes16 c'32 g32 f32 es32 d32 f32 aes32} \tuplet 11/8 {b32 bes32 a32 g32 aes32 c'32 e'32 g'32 e'32 f'32 ges'32} \tuplet 11/8 {aes'32 bes'32\glissando  d''32 e''16. d''32 c''32 bes'32 aes'32 g'32} \tuplet 6/4 {f'16 es'16 d'16 c'16 bes16 aes16} 
      | r4 r32 bes32 des'32 c'32 bes32 aes32 g32 f32 g32 a32 des'32 bes32 c'32 d'32\glissando  es'16~ \tuplet 14/16 {es'16.. des'64 c'64 bes64 es'64 des'64 c'64 bes64} 
      | dis'8 des'64 c'64 bes32 a64 c'64 d'64 g'64 \tuplet 10/8 {e'32 f'32 g'32 a'32 b'32 cis''32 es''16 d''32 c''32} \tuplet 12/8 {bes'16 a'32 g'32 ges'32 a'16 c''32 es''16 c''32 cis''32} d''4^\markup{\left-align \small vib} 
      | \tuplet 7/8 {d''32 e''32 g''32 ges''32 f''32 es''32 c''32} \tuplet 9/8 {e''32 es''32 d''32 c''32 bes'32 aes'32 g'32 f'32 dis'32} e'32 g'32 bes'32 des''32 ais'32 b'32 c''32 bes'32 \tuplet 10/8 {gis'16 c''32 g'32 ges'32 f'16 dis'32 c'32 cis'32} 
      \bar "||" d'16 e'8.~^\markup{\left-align \small vib} e'4. r8 r4\bar  ".."
    }
    >>
>>    
}
