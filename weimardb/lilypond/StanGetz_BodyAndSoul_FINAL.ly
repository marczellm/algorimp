\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Stan Getz"
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
      | s2. r4 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes2:min7 es4:min7 aes4:7 | des2:6 f4:min5-7 bes4:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes2:min7 es4:min7 aes4:7 | des2 a2:7 
      | d2:maj e2:min7 | fis2:min7 g2:min7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim7 | d2:min7 g2:7 | c2:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2.:6 a4:7 
      | d2:maj e2:min7 | fis2:min7 g2:min7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim7 | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 a4:dim7 des2:9|
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
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 3/2 {a8 bes8 bes'8} 
      \bar "||" \mark \default aes'16 ges'8.~^\markup{\left-align \small vib} ges'8 es'16 f'16 es'8 f'8~^\markup{\left-align \small vib} f'8. es'16 
      | d'16 es'16 bes'16 bes'16~^\markup{\left-align \small vib} bes'4~ \tuplet 12/8 {bes'8.. a'16 b'16 aes'32~} \tuplet 6/4 {aes'8. ges'16 aes'16 f'16~^\markup{\left-align \small vib}} 
      | f'8 r8 r8. aes'16 \tuplet 3/2 {bes'8 aes'8 bes'8~^\markup{\left-align \small vib}} bes'4~ 
      | \tuplet 6/4 {bes'4 aes'16 bes'16} c''16 es''16 des''16 c''16 \tuplet 6/4 {bes'16 des''16 c''16 b'16 e'8~^\markup{\left-align \small vib}} \tuplet 6/4 {e'4 d'16 es'16} 
      | des''4..^\markup{\left-align \small vib} bes'16 ges'16 bes'8.~^\markup{\left-align \small vib} \tuplet 10/8 {bes'8.. ges'16 des'32} 
      | f'4.^\markup{\left-align \small vib} es'16 aes'16 \tuplet 6/4 {ges'16 f'16 es'16 f'8.~} \tuplet 6/4 {f'8 es'16 aes'16 ges'16 f'16} 
      | es'16 f'8.~^\markup{\left-align \small vib} f'8 des'16 es'16 \tuplet 6/4 {f'16 aes'8 ges'16 aes'16 ges'16} b'16 g'16 b'16 g'16 
      | c''16 g'16 c''16 g'16 aes'4^\markup{\left-align \small vib} des''16 aes'16 des''16 aes'16 b'16 f'16 bes'16 f'16 
      \bar "||" ges'4^\markup{\left-align \small vib} r4 r8 bes16 b16 bes'4~^\markup{\left-align \small vib} 
      | bes'8. aes'16 \tuplet 6/4 {ges'16 f'16 es'8. b16} c'8 b'8~^\markup{\left-align \small vib} \tuplet 12/8 {b'8.. a'16 aes'16 ges'32} 
      | g'8 aes'8~^\markup{\left-align \small vib} aes'4~ \tuplet 10/8 {aes'4 g'32 aes'32~} aes'16 es''16 aes'16 es''32 aes'32 
      | es''8 aes'8~^\markup{\left-align \small vib} aes'8. bes'16 \tuplet 6/4 {c''16 es''8 des''16 aes'16 f'16} \tuplet 3/2 {e'4^\markup{\left-align \small vib} d'8} 
      | es'16 des''8.^\markup{\left-align \small vib} r4 r16 des''32 c''32 des''16 bes'32 a'32 \tuplet 6/4 {bes'16 ges'16 f'16 ges'16 bes16 des'16} 
      | \tuplet 10/8 {e'16 f'32 e'16 f'32 aes'32 e'32 f'32 aes'32~} \tuplet 9/8 {aes'32 f'32 es'32 d'32 es'32 ges'32 d'32 es'32 ges'32~} \tuplet 10/8 {ges'32 es'32 d'16 f'32 es'32 des'16 bes32 a32~} a32 f32 bes32 b32 c'32 es'32 e'32 es'32 
      | \tuplet 14/16 {des'64 d'64 es'64 c'32 des'32 bes32 c'64 des'64 d'64 es'64 g'64} \tuplet 12/8 {c''16 bes'16 a'32 f'32 es'16 des'32 b32 b'32 bes'32} \tuplet 6/4 {aes'16 e'16 c'16 d'16 e'8~^\markup{\left-align \small vib}} e'8. c'16 
      | \tuplet 6/4 {des'16 es'16 des'16 aes8.~^\markup{\left-align \small vib}} aes8. des'16 d'16 b'16 a'16 g'32 ges'32 a'4~^\markup{\left-align \small vib} 
      \bar "||" \tuplet 6/4 {a'4 a16 bes16} \tuplet 6/4 {des'16 d'8 e'16 ges'16 g'16} a'8 a'4.~^\markup{\left-align \small vib} 
      | \tuplet 10/8 {a'8.. a'16 des''32~} \tuplet 6/4 {des''16 d''8 des''16 b'16 d''16~} \tuplet 6/4 {d''16 c''16 bes'16 a'16 g'16 a'16~} \tuplet 10/8 {a'8.. d'32 g'32 aes'32} 
      | \tuplet 17/16 {g'64 e'64 d'32. ges'32 g'64 f'64 d'32. ges'64 g'64 ges'64 g'64 ges'64} \tuplet 14/16 {d'32. g'64 aes'64 a'64 aes'64 g'64 d'64 ges'64 g'64 aes'64 g'64 ges'64} \tuplet 14/16 {d'32. f'64 ges'64 g'64 ges'64 f'64 d'64 c'64 des'64 c'32 a64~} a32 c'64 des'64 c'32 a32. aes64 a64 des'64 d'64 des'64 c'64 a64~ 
      | a16 c'16 d'8~^\markup{\left-align \small vib} d'8. c'16 a16 aes8. a4^\markup{\left-align \small vib} 
      | a'4.^\markup{\left-align \small vib} g'16 f'32 e'32~^\markup{\left-align \small vib} e'8 r8 r4 
      | \tuplet 18/16 {r16. d'32. c'32 bes32 c'64 es'64 ges'64 g'64 aes'64} \tuplet 5/4 {b'16 d''16 c''16 b'16 a'16} d''16 c''16 es'8~^\markup{\left-align \small vib} \tuplet 6/4 {es'4 des'16 d'16} 
      | c''4^\markup{\left-align \small vib} a'8.^\markup{\left-align \small vib} f'16 e'4~^\markup{\left-align \small vib} \tuplet 6/4 {e'8 d'8 a'16 g'16} 
      | e'8.^\markup{\left-align \small vib} c'16 es'8.^\markup{\left-align \small vib} b16 d'8.^\markup{\left-align \small vib} bes16 \tuplet 6/4 {bes'4~^\markup{\left-align \small vib} bes'16 aes'16~} 
      \bar "||" \tuplet 6/4 {aes'16 ges'4^\markup{\left-align \small vib} f'16~} \tuplet 6/4 {f'16 es'4^\markup{\left-align \small vib} d'16} es'4~^\markup{\left-align \small vib} \tuplet 5/4 {es'8 bes16 bes'16 aes'16} 
      | ges'16 f'16 es'16 d'16 es'4.^\markup{\left-align \small vib} \tuplet 12/8 {a'32 bes'32 b'16 g'32 es'32} \tuplet 12/8 {c'16. b16. aes16\bendAfter #-4  g32 e32 es32 b,32} 
      | \tuplet 6/4 {a,16 a,16 aes,4~} aes,8. bes,16 \tuplet 3/2 {aes,8 bes,4~} bes,8 aes'16 bes'16 
      | aes'16 bes'16 aes'16 bes'16 \tuplet 6/4 {aes'16 es''8 aes'16 bes'16 aes'16} g'8 a'16 g'16 \tuplet 6/4 {d''4 ges'16 aes'16} 
      | ges'16 aes'8.~^\markup{\left-align \small vib} aes'4 f'32 e'32 f'32 aes'32 es'32 d'32 es'32 f'32 \tuplet 7/8 {es'32 d'32 f'32 es'32 des'32 c'32 bes32} 
      | a8 bes8 b8 c'8 aes'8 ges'8 des''8 a'8 
      | c''8 bes'8 f'8 des'8 b8 a8 g'8 aes'8 
      | c'4~ \tuplet 6/4 {c'4 aes'16 a'16} des'4..^\markup{\left-align \small vib} aes'16 
      \bar "||" a'16 b'16 a'8~^\markup{\left-align \small vib} a'16 g'16 ges'16 e'16 g'8 ges'8^\markup{\left-align \small vib} r4 
      | r8 aes16 a16 b'16 a'16 ges'16 d'16 d''4~^\markup{\left-align \small vib} \tuplet 6/4 {d''8 c''8 bes'16 d'16} 
      | a'4~^\markup{\left-align \small vib} \tuplet 7/8 {a'16. d'16 a'32 d'32} a'4.^\markup{\left-align \small vib} d'16 a'16 
      | \tuplet 3/2 {d'8 a'4~^\markup{\left-align \small vib}} \tuplet 6/4 {a'4 des'16 aes'16} \tuplet 3/2 {des'8 aes'4~^\markup{\left-align \small vib}} \tuplet 5/4 {aes'8 des'16 aes'16 des'16} 
      | a'4^\markup{\left-align \small vib} r2 \tuplet 6/4 {r8. bes'16 b'16 d''16~} 
      | \tuplet 6/4 {d''16 c''8 g'16 e'16 d'16~} d'16 c'16 b16 c'16 \tuplet 6/4 {d'16 e'16 g'16 a'8 b'16} \tuplet 10/8 {c''16 des''8. bes'32 ges'32} 
      | es'16 d'8.~^\markup{\left-align \small vib} d'16. e'32 f'32 g'32 e'32 f'32 \tuplet 6/4 {d'16 e'16 f'16 g'16 a'8~} \tuplet 10/8 {a'16 c''16. b'16 a'32 g'32 f'32} 
      | e'8 c'8 es'8. c'16 d'8 es'16 e'32 f'32~ f'32 des''8 c''32 b'32 bes'32 
      \bar "||" \mark \default \tuplet 3/2 {aes'8 ges'4~^\markup{\left-align \small vib}} ges'4~ \tuplet 10/8 {ges'8 b'16. bes'32 aes'32 ges'32} f'16 es'16 d'8~ 
      | d'8 a'16 bes'16 \tuplet 6/4 {aes'16 ges'16 f'16 es'16 des'16 c'16\bendAfter #+4 } bes'4~ \tuplet 14/16 {bes'64 b'32. a'32 aes'32 ges'32 e'64 es'64 des'64 c'64} 
      | bes16 a16 aes8~ aes16 aes32 a32 bes32 f32 ges16 aes4.^\markup{\left-align \small vib} \tuplet 6/4 {bes16 c'16\glissando  des'16} 
      | \tuplet 6/4 {d'16 es'8 es'8 es'16} \tuplet 3/2 {es'4 des'8} \tuplet 3/2 {aes'4^\markup{\left-align \small vib} ges'8} \tuplet 3/2 {f'4^\markup{\left-align \small vib} es'8} 
      | des'2~^\markup{\left-align \small vib} \tuplet 5/4 {des'8 des''16 c''16 des''16} \tuplet 5/4 {bes'16 a'16 bes'16 ges'16 bes16} 
      | \tuplet 6/4 {des'16 e'16 f'4~^\markup{\left-align \small vib}} \tuplet 7/8 {f'8~ f'32 es'32 f'32~} \tuplet 12/8 {f'16 aes'16. aes'16. aes'16. aes'32~} aes'16 aes'8^\markup{\left-align \small vib} f'16 
      \bar "||" \tuplet 14/16 {des'8~^\markup{\left-align \small vib} des'32 es'64 f'64 ges'64 aes'64~^\markup{\left-align \small vib}} \tuplet 36/32 {aes'16~ aes'64 e'128 ges'128 b'128 a'128 aes'128 ges'128 e'128 f'128 e'128 es'128 des'128 b128 a128 aes128 ges128 aes128 aes128\bendAfter #-4  g128 ges128 e128 es128 des128 b,128 a,128 aes,64~} aes,8 r8 r4\bar  ".."
    }
    >>
>>    
}
