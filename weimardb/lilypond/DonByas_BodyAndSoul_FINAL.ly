\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Don Byas"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2 a2:7 
      | d2:maj e2:min7 | d2 g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2 a2:7 
      | d2:maj e2:min7 | d2 g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7|
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


      \tempo 4 = 99
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 es8~ es16 aes16 b16 bes16 
      \bar "||" \mark \default es2~^\markup{\left-align \small vib} \tuplet 3/2 {es8 e8 f8} \tuplet 10/8 {ges16. aes16. f16. es32~} 
      | \tuplet 3/2 {es8 bes8 bes8~^\markup{\left-align \small vib}} bes4~ \tuplet 6/4 {bes4 e16 aes16~} \tuplet 6/4 {aes16 e'8 c'16 bes16 ges16} 
      | f4~^\markup{\left-align \small vib} \tuplet 6/4 {f8 aes8 bes16 aes16~} \tuplet 6/4 {aes16 bes8. es16 ges16} bes16 es'16 des'16 bes16 
      | ges16 f8. aes8\glissando  es'16 des'16 c'4 bes8 e16 f16 
      | es4.^\markup{\left-align \small vib} ges8 bes8\glissando  des'16 bes16~ bes32 aes16 ges16 des16 es32 
      | f4.^\markup{\left-align \small vib} f8~ f16\glissando  ges16 f16 a16 \tuplet 3/2 {des'8 f8 a8~} 
      | a16 c'8\glissando  b16 bes8 f8~ \tuplet 5/4 {f16 b8. bes16~} bes16 a16 e16 ges16 
      | aes4.^\markup{\left-align \small vib} f16 e16 es16 aes16 b16 es16 d4~^\markup{\left-align \small vib} 
      \bar "||" \tuplet 6/4 {d4 es16 f16} ges16 aes16 bes16 des'16 f'16 es'16 d'16 f'16 \tuplet 3/2 {aes'8 b'8\glissando  a'8} 
      | \tuplet 6/4 {bes'8 ges'16 f'16 e'16 es'16} \tuplet 6/4 {d'8 bes'8 ges'16 d'16~} d'32 des'16 bes16 ges32 es32 des32~ des32 c16. aes32 ges16 f32~^\markup{\left-align \small vib} 
      | f4~ f16 aes16 bes16 c'16 \tuplet 6/4 {es'8 c'8 des'16 es'16~} es'16 f'16 aes'16 ges'16 
      | f'16 ges'16 aes'16 bes'16 \tuplet 3/2 {c''8 f'4~} \tuplet 6/4 {f'16 e'16 ges'8 g'16 a'16} b'8 e'8~^\markup{\left-align \small vib} 
      | e'16 es'16 f'16 ges'16 aes'16 bes'8.~^\markup{\left-align \small vib} bes'8 aes'16 ges'16 \tuplet 6/4 {d'16 f'16 es'16 des'16 bes16 ges16} 
      | \tuplet 6/4 {f8 a8 c'16 d'16~} \tuplet 6/4 {d'16 es'16 f'8 g'16 es'16~} es'16 b16 d'16 c'16 \tuplet 6/4 {bes16 a16 ges8 f16 es16} 
      | r4 \tuplet 10/8 {r8 aes8~ aes32\glissando  g32~} g16 e'16 des'16 g16 \tuplet 6/4 {ges8 es'8 c'16 ges16} 
      | f4.^\markup{\left-align \small vib} a4\glissando  ges'8^\markup{\left-align \small vib} e'16 d'16 des'16 g16 
      \bar "||" \tuplet 6/4 {ges8. a8 b16} e'16 d'16 a16 g16 g8 d'4.^\markup{\left-align \small vib} 
      | a8\glissando  bes16 des'16 e'16 des'16 d'16 ges'16~ ges'16 a'16 g'16 d'16 c'8 bes16 a16~^\markup{\left-align \small vib} 
      | a4~ \tuplet 6/4 {a16 g'16 f'8 ges'16 e'16~} \tuplet 5/4 {e'16 f'16 d'16 b16 aes16} g16 e'16 des'16 g16 
      | ges8 a16 b16 e'16 b16 d'32 es'32 d'32 b32 a4.^\markup{\left-align \small vib} b'8 
      | \tuplet 6/4 {d''16 des''16 c''16 b'8 a'16} g'16 ges'16 f'16 e'16 d'16 des'16 bes16 a16 aes16 f16 es8~ 
      | es16 g16 e16 f32 g32 a16 b16 d'16 b16 \tuplet 6/4 {c'8 a16 g8 e16} \tuplet 3/2 {ges8 es'4~^\markup{\left-align \small vib}} 
      | \tuplet 6/4 {es'8 aes'16 ges'16 f'16 d'16~} \tuplet 6/4 {d'16 des'16 f'8 a'16 des''16} c''16 f'16 a'16 c''16 b8\glissando  d'16 f'16 
      | g'16 f'16 e'16 g16 ges16 es'16 b16 es16 d8. aes16~ aes16 bes16 b16 des'16 
      \bar "||" d'16 f'16 es'16 des'16 bes4~^\markup{\left-align \small vib} bes16 es'16 d'16 ges'16 bes'16 d'8.~^\markup{\left-align \small vib} 
      | d'8 des'16 bes16 \tuplet 6/4 {aes16 bes16 aes16 ges16 es16 des16~} des32 c32 ges32 aes16. ges32 bes32 \tuplet 7/8 {g16 aes32 c'32 a32 ges32 bes32} 
      | ges16 f8.~ f8 aes16 f16~ \tuplet 6/4 {f16 ges16 bes16 es'16 des'16 bes16} \tuplet 10/8 {ges4^\markup{\left-align \small vib} e32 f32~} 
      | \tuplet 6/4 {f16 aes16 des'16 c'8 aes16} f8.^\markup{\left-align \small vib} es16 \tuplet 5/4 {e16 g16 des'16 b16 g16} e4~^\markup{\left-align \small vib} 
      | e8 es32 ges32 bes32 des'32~ \tuplet 10/8 {des'32 f'16. es'16 des'16. bes32~^\markup{\left-align \small vib}} bes4 aes32 bes32 aes32 ges32 es16 des16 
      | c8 ges8 f4~^\markup{\left-align \small vib} \tuplet 3/2 {f8 a8 c'8} des'8 f16 a16~ 
      | a32 c'8\glissando  bes16 f'32~^\markup{\left-align \small vib} f'4~ \tuplet 3/2 {f'8 b8 a8} \tuplet 5/4 {e'4 bes16~} 
      | bes16 aes16 es'8~^\markup{\left-align \small vib} es'4~ \tuplet 3/2 {es'8 d'8 f'8} \tuplet 3/2 {aes'8 b'8 a'8~} 
      \bar "||" \mark \default a'16 bes'16 es''16 aes'16~^\markup{\left-align \small vib} aes'4~ aes'16. ges'16 f'16 c''32 es'4~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {es'4 des'16 d'16~} \tuplet 6/4 {d'16 f'16 es'8 d'16 b16} bes16 aes16 ges16 f16 es16 d16 b16 a16 
      | aes4.^\markup{\left-align \small vib} des'16 f'16~ f'16\glissando  aes'16 ges'16 es'16 des'8^\markup{\left-align \small vib} ges16 e16 
      | f8 aes16 bes16 c'16 f'16 aes'16 c''16 b8 des'16 e'16 g'16 b'16 ges'16 e'16 
      | es'4.^\markup{\left-align \small vib} \tuplet 6/4 {ges'8 aes'16~} aes'32 bes'8\glissando  ges'32 aes'32 ges'32 es'16 des'16 bes16 ges16 
      | f4.^\markup{\left-align \small vib} a'8\glissando  \tuplet 10/8 {d''16 des''32 c''32 b'16 bes'32 a'16 c''32} b'32 g'32 ges'32 e'32 es'16 c'32 des'32 
      | \tuplet 6/4 {es'16 c'16 des'16 es'16 f'8~^\markup{\left-align \small vib}} f'4 ges'32 f'32 e'32 d'32 des'32 b32 a32 g32 \tuplet 6/4 {ges16 des'16 es'16 f'16 es'16 c'16} 
      | bes32 aes32 ges32 f32 aes32 des'32 f'16 \tuplet 7/8 {aes'32 g'32 e'32 d'32 c'32 b32 a32} \tuplet 6/4 {g16 ges16 es'16 f'16 es'16 b16} f8.^\markup{\left-align \small vib} f32 aes32 
      \bar "||" b16 bes8.~^\markup{\left-align \small vib} \tuplet 5/4 {bes8. es'16 f'16~} \tuplet 5/4 {f'16 g'16 ges'16 f'16 es'16} d'16 f'16 aes'16 b'16~ 
      | b'16 bes'16 ges'16 d'16 f'16. es'16. bes32 ges32 \tuplet 3/2 {es8 d8 b8} a4~^\markup{\left-align \small vib} 
      | a8 aes16 bes16 c'16 es'16 des'16 aes16 \tuplet 6/4 {ges8 bes16 es'8 bes16} des'4~^\markup{\left-align \small vib} 
      | \tuplet 5/4 {des'8 e16 f16 ges16} aes16 bes16 c'16 des'16 es'16 d'16 b16 d16 f16 aes16 b16 a16 
      | bes4.^\markup{\left-align \small vib} f'16 d'16 es'16 f'16 ges'16 aes'16 bes'16 ges'16 f'16 es'16 
      | des'16 c'16 ges'16 f'16~^\markup{\left-align \small vib} f'8~ f'32 es'16 des'32~ des'16 c'32 bes16 a16 des'32 ges4~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {ges4 f16 a16~} a16 c'16 bes16 es16~ es16 d16 b16 ges16 \tuplet 3/2 {e'8 b8 a8} 
      | aes4.^\markup{\left-align \small vib} des'8~^\markup{\left-align \small vib} des'4~ \tuplet 6/4 {des'8 e'16 g8 ges16~} 
      \bar "||" ges8 a16 b16 \tuplet 6/4 {e'16 f'16 e'16 d'16 g8~^\markup{\left-align \small vib}} g4. a16 b16 
      | e'16 des'16 d'16 e'16~ \tuplet 6/4 {e'16 a'16 b'16 a'16 g'16 c'16~} c'8 bes4.~^\markup{\left-align \small vib} 
      | \tuplet 10/8 {bes32 g'16 f'16. ges'32 g'32 ges'32 e'32} d'16 b16 a16 g16 \tuplet 5/4 {aes16 b16 d'16 f'16 es'16} \tuplet 5/4 {e'16 des'16 b16 g16 f16} 
      | ges16 a16 b16 e'16 d'4.^\markup{\left-align \small vib} d''16 bes'16 \tuplet 3/2 {ges'8 c'8 b8\glissando } 
      | e'16 b16 d'16 e'16 f'16 g'16 aes'16 a'16~ a'8 g''16 es''16 b'16 g'16 ges'16 f'16 
      | e'16 g16 a16 b16 d'16 b16 c'16 d'16 e'16 g'16 a'16 des''16 ges'4~^\markup{\left-align \small vib} 
      | ges'16 f'8\glissando  a'16 \tuplet 6/4 {es'16 f'16 e'16 d'16 des'16 a16} c'16 a16 f16 c16~ c16 a16 f8 
      | e4 es16 ges16 des'16 b16 es16 f16 c'16 bes16 d'16 f'16 aes'16 f'16 
      \bar "||" ges'4.^\markup{\left-align \small vib} es8 \tuplet 3/2 {f8 es8 f8~^\markup{\left-align \small vib}} \tuplet 6/4 {f4~ f16 es16} 
      | bes2~^\markup{\left-align \small vib} \tuplet 3/2 {bes8 c'8 des'8} bes16 c'16 aes16 e16 
      | f4.^\markup{\left-align \small vib} aes16 bes16 c'16 es'16 des'16 bes16 ges4~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {ges8 e16 f16 aes16 c'16} es'8 des'8 c'8 bes8~^\markup{\left-align \small vib} \tuplet 6/4 {bes4~ bes16 ges16} 
      | es4. ges8 bes8\glissando  des'16 bes16~ \tuplet 6/4 {bes16 aes16 ges8 des16 es16} 
      | f4.^\markup{\left-align \small vib} f8~ \tuplet 3/2 {f8\glissando  ges8 a8} c'8 des'16 f16 
      | a8 c'8~^\markup{\left-align \small vib} c'4. bes16 f16 \tuplet 6/4 {es8 c8 des16 es16~} 
      | es16 f16 bes16 b16~^\markup{\left-align \small vib} b4. r8 r4\bar  ".."
    }
    >>
>>    
}
