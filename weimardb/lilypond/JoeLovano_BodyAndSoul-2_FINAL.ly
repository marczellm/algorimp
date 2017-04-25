\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul (Solo 2)"
  composer = "Joe Lovano"
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
      | s2 e4:min7 a4:7 
      | d2:maj e2:min7 | d2:/fis g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | r1|
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


      \tempo 4 = 60
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. ges16 \tuplet 3/2 {a8 g8 des'8} 
      \bar "||" \mark \default a16 e'16. ges'16 a'32~ \tuplet 5/4 {a'8 b'16\bendAfter #+4  des''16 a'16} c''16\bendAfter #+4  des''16 a'16 a'16 \tuplet 3/2 {a'8 ges'8 f'8~} 
      | \tuplet 6/4 {f'16 ges'8. des'16 e'16} \tuplet 6/4 {d'16 e'16 ges'4~} \tuplet 14/16 {ges'16~ ges'64 ges'64 g'64~ g'16 a'32 bes'64} c''16 a'8 bes'16 
      | a'4~^\markup{\left-align \small vib} \tuplet 12/8 {a'16. c''32\glissando  des''16. g'8 ges'32~} \tuplet 9/8 {ges'16. e'8\bendAfter #+4  a'32 b'32~^\markup{\left-align \small vib}} b'4~ 
      | b'16 a'8 ges'4. e'8 des'16~ \tuplet 6/4 {des'8 a8 aes16\bendAfter #+4  a16~} 
      | a16 g8 f16~ f8 g8 \tuplet 3/2 {g8 e8 d8} b,8 d8 
      | a,8..^\markup{\left-align \small vib} a32~ \tuplet 3/2 {a8 ges8 g8~^\markup{\left-align \small vib}} \tuplet 6/4 {g8. a16 bes16 e'16} \tuplet 6/4 {f'16 a'8 c''16 des''16 bes'16~} 
      | bes'32 f'16 bes'32 a'16. e'32~ \tuplet 6/4 {e'16 g'8 f'8 a16~} a8 e'8 \tuplet 3/2 {d'4 b8} 
      | g4 ges4 f8 bes4.^\markup{\left-align \small vib} 
      \bar "||" r4 \tuplet 7/8 {r16. es16 f32 es32~} \tuplet 6/4 {es16 f16 es16 f16 es16 f16} \tuplet 5/4 {es16 f16 es16 d16 es16} 
      | f16 es16 bes,16\bendAfter #+4  g32 bes32~^\markup{\left-align \small vib} bes4~ \tuplet 9/8 {bes16 d32 e32 ges32 bes32 a32 aes32 c'32} aes32 bes32 c'32 e'32 ges'32 aes'32 c''32 ges'32 
      | \tuplet 3/2 {aes'8 f'4~^\markup{\left-align \small vib}} f'4~ f'16 es'16 des'16 c'16 \tuplet 3/2 {es'8 f'8 aes'8} 
      | \tuplet 3/2 {bes'8\bendAfter #+4  c''4~^\markup{\left-align \small vib}} \tuplet 3/2 {c''8 aes'8 aes'8} aes'16 b'16\bendAfter #+4  des''16 b'16~^\markup{\left-align \small vib} \tuplet 6/4 {b'4~ b'16 des''16} 
      | es''16 bes'8.~^\markup{\left-align \small vib} bes'4. des''16 bes'16 \tuplet 3/2 {ges'8 g'8\bendAfter #+4  aes'8} 
      | f'4~^\markup{\left-align \small vib} \tuplet 14/16 {f'16. c'32 des'64 es'64 g'64 a'64 b'64 g'64} \tuplet 12/8 {aes'32 a'16 c'32 es'32 g'32 e'32 f'32 ges'32 a'32 ges'32 f'32} \tuplet 10/8 {e'32 es'32 a'32 f'32 des'32 c'32 bes32 f32 aes32 a32} 
      | \tuplet 7/8 {es'32 c'32 bes32 g32 es32 g32\bendAfter #+4  a32} ges32 es32 c32 bes,32 a,8~ \tuplet 6/4 {a,8 es'16\bendAfter #+4  f'8 bes16} des'8 des'8~^\markup{\left-align \small vib} 
      | des'16 es'16 f'16 ges'16~ ges'32. aes'16. aes'32. b'32. a'64~ \tuplet 14/16 {a'32. es''32~ es''8 b'64~} b'8. a'16~^\markup{\left-align \small vib} 
      \bar "||" a'1~ 
      | \tuplet 5/4 {a'16 aes'16 f'16 c''16 aes'16} \tuplet 6/4 {f'8 aes'16 ges'8 bes16} \tuplet 3/2 {f'8 es'8 e'8~} e'8 c'8 
      | des'16\bendAfter #+4  es'8.~^\markup{\left-align \small vib} es'8 c'8~^\markup{\left-align \small vib} c'2~ 
      | c'1~ 
      | c'2. r4\bar  ".."
    }
    >>
>>    
}
