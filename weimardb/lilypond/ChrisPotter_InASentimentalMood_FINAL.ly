\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "In a Sentimental Mood"
  composer = "Chris Potter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key d \minor
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
      | d2:min d2:min7+maj | d2:min7 d2:min6 | g2:min g2:min7+maj | g2:min7 g4:min6 a4:7 | d1:min | d1:7 | g2:min7 c2:7 | f2:maj e4:min5-7 a4:7 
      | d2:min d2:min7+maj | d2:min7 d2:min6 | g2:min g2:min7+maj | g2:min7 g4:min6 a4:7 | d2:min r2 | d2.:7 r4 | g2:min7 c2:7 | f2:maj es4:min7 aes4:7 
      | des2:maj bes2:min7 | es2:min7 aes2:7 | des2:7 bes2:7 | es2:7 aes2:7 | des2:maj bes2:min7 | es2:min7 aes2:7 | g1:min7 | c2:7/g r2|
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


      \tempo 4 = 49
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 \tuplet 6/4 {r16 f16 g16\glissando  gis16 a16 c'16} \tuplet 6/4 {d'8 f'16 gis'16\glissando  a'16 c''16} 
      \bar "||" \mark \default b'8. g'16 b'16 g'8 g'16 \tuplet 9/8 {a'32 b'16 g'32 a'32\glissando  b'32 g'32\glissando  a'32 b'32~} b'8. g'16\glissando  
      | \tuplet 6/4 {a'16 b'16 g'16 c''8 d''16} \tuplet 6/4 {a'16\glissando  b'16 g'4} \tuplet 6/4 {bes'16 c''16 aes'16 des''16 es''16 c''16~} \tuplet 6/4 {c''8 aes'8 f'16 f'16~^\markup{\left-align \small vib}} 
      | \tuplet 12/8 {f'8.. d'16 c'32 g'32\glissando  a'32~} a'16 c'8 c'16~^\markup{\left-align \small vib} c'16 d'8^\markup{\left-align \small vib} f'16 gis'16 a'8 bes'16 
      | a'16 f'16 c'16 f16 bes8 a16 g16 r4 \tuplet 6/4 {r8 a16 cis'16 e'16 gis'16} 
      | \tuplet 6/4 {a'16 gis'16 a'16 g'16 fis'16 g'16} \tuplet 6/4 {f'16 e'16 f'16 g'16 fis'16 g'16} \tuplet 3/2 {f'8 e'8^\markup{\left-align \small vib} dis'8~^\markup{\left-align \small vib}} \tuplet 6/4 {dis'16 e'8^\markup{\left-align \small vib} f'16 e'16\glissando  f'16~} 
      | \tuplet 6/4 {f'16 e'16 c'16 a8.^\markup{\left-align \small vib}} a4 a'32\glissando  b'32 d''32 b'32 f'32 fis'32 b'16 \tuplet 7/8 {gis'32 a'32 c''32 dis''32 g''32 ges''32 f''32} 
      | \tuplet 10/8 {e''32 es''32 b'32 bes'32 ges'32 es'32 cis'32 d'32 f'32 a'32} \tuplet 6/4 {bes'16 c''16 e''16 g''8.~^\markup{\left-align \small vib}} g''16 c'''16 a''4.~^\markup{\left-align \small vib} 
      | \tuplet 10/8 {a''16 d'''32 c'''32 b''32 bes''32 a''32 g''32 f''32 e''32~} \tuplet 12/8 {e''32 d''32 e''16 f''32 g''16 d''32 dis''32\glissando  e''32 c''32 a'32} \tuplet 9/8 {bes'16 c''32 des''32 dis''32 e''32 fis''32 g''32 a''32~} \tuplet 15/16 {a''64 fis''64 g''32. c'''32 cis'16 g''32 f''64 g''64~} 
      \bar "||" \tuplet 10/8 {g''32 a''16 f''32 e''16 g''16 e''32 d''32} e''16\glissando  f''16 d''16 e''16~ e''16 des''32 bes'32 d''32\glissando  es''32 b'32 aes'32 des''32 a'32 ges'32\glissando  a'32 b'32 aes'32 e'32 bes'32 
      | \tuplet 18/16 {ges'32. des'64 aes'16 e'64 ges'32 b'32. gis'32 a'64 c''64~} c''32 e''32 aes''16 ges''32 es''32 b'32 ges'32 \tuplet 6/4 {aes'16 des''16 es'16 ges'16 b16 es'16~} es'32 c'32 aes32 es32 bes16 c'16~ 
      | c'16 d'8 f'16 c'8 bes16 a16~ \tuplet 5/4 {a16 d'16 d'16 d'16 d'16} f'16 c'16 bes16 a16~ 
      | a16 f'32\glissando  g'16.^\markup{\left-align \small vib} e'32 f'32 \tuplet 6/4 {d'16 f'16 c'16 bes16 a16 g16~} g16.. a32. bes32. c'32 des'64~ \tuplet 6/4 {des'16 e'16 g'16 a'16 bes'16\glissando  c''16} 
      | cis''16\glissando  d''16 a'16 a'16 a'4^\markup{\left-align \small vib} r4 \tuplet 12/8 {r32 a'32 bes'32 b'32~^\markup{\left-align \small vib} b'8 a'32 g'32 e'32 c'32} 
      | \tuplet 11/8 {b16 d'32 a16 e32 b32 c'32 b32 gis32 a32} \tuplet 9/8 {d'32 b32 c'32 e'32 g'32 b'32 d''32 c''32 g'32} gis'32 b'32 a'32 dis'32 e'32 g'32 f'32 fis'32 \tuplet 10/8 {bes'32 gis'32 a'32 c''32 es''32 aes''32 g''32 ges''32 f''32 e''32} 
      | es''32 b'32 f'32\glissando  ges'32 bes'32 gis'32 a'32 c''32 g'8. gis'16 \tuplet 3/2 {a'8 c'16 r8.} \tuplet 6/4 {r4 c'16 e'16~} 
      | \tuplet 14/16 {e'64 g'32 c'32 e'32 g'32 c'32 e'32 g'64~} g'32 c'32 e'32 g'16 e'32 aes'32 des'32~ des'32 f'32 aes'16 des'32 f'32 aes'32 es'32~ \tuplet 6/4 {es'16 ges'16 d'16 ges'16 a'16 f'16} 
      \bar "||" \tuplet 6/4 {aes'16 c''8 f'16 aes'16 c''16~} c''8 bes'16 c''16 \tuplet 14/16 {es''16.. c''64\glissando  es''16~ es''64 c''64~} \tuplet 3/2 {c''8 bes'8 f'8~} 
      | f'8 es'8 r4 \tuplet 5/4 {e16 f16 aes16 g16 f16} \tuplet 12/8 {ges16 aes16 bes32 des'16 e'32 f'32 e'16 f'32~} 
      | \tuplet 10/8 {f'32 aes'32 e'16. c'32 es'32 c'32 bes32 a32} \tuplet 9/8 {aes16 ges32 f32 es32 des32 c32 bes,32 a,32} aes,4 r16 bes,16 des16 es16~ 
      | es8 f8~ f8. c16\glissando  \tuplet 15/16 {a64 b32. e32. d'64~ d'16 a32 ges'64~} \tuplet 6/4 {ges'8 c'16 bes'16\bendAfter #+4  b'16 c''16} 
      | bes'4~ bes'16 c''16 e''16\glissando  f''16 es''16 des''8 c''16~^\markup{\left-align \small vib} c''16 des''8 f'16 
      | aes'4. \tuplet 6/4 {aes'16 c''16 es''16} \tuplet 14/16 {aes''32 f''32 es''32. f''32 c''32 bes'32 c''64~} \tuplet 6/4 {c''16 aes'16 f'16 aes'16 f'16 dis'16} 
      | e'16\glissando  f'8.~^\markup{\left-align \small vib} f'16 g'32\glissando  a'16 g'32 e'32 d'32 \tuplet 6/4 {c'4 a16 bes16} \tuplet 6/4 {c'4 bes16 a16} 
      \bar "||" c'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
