\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Embraceable You"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \major
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
      | f1:6 | aes1:dim | g1:min7 | c1:7 | g2:min7 g2:min/f | g2:min5-7 c2:7 | f1:6 | e2:7 a2:7 
      | d2:min7 s2 | b2:min5-7 e2:7 | a1:min7 | f2:min5-7 f2:min7 | e2:min7 a2:7 | d2:min7 g2:7 | c1:7 | g2:min7 c2:7 
      | f1:6 | aes1:dim | g1:min7 | c2:7 s2 | g2:min7 g2:min7/f | g2:min5-7 c2:7 | f2:6 d2:min7 | c2:min7 f2:7 
      | bes1:maj | e2:min5-7 a2:9- | d2:min7 s2 | b2:min5-7 bes2:min7 | a2:min7 d2:7 | g2:min9- c2:9- | a2:min7 d2:7 | g2:min7 c2:7 
      | f1:6|
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


      \tempo 4 = 72
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. gis'16 a'16 bes'16 b'16 
      \bar "||" \mark \default \tuplet 3/2 {c''8 c'8 cis'8} d'4..^\markup{\left-align \small vib} a'16 \tuplet 6/4 {g'16 a'16 g'16 f'16 e'16 d'16\glissando } 
      | f'16 g'16 g'8~^\markup{\left-align \small vib} g'4~ g'16 f'16 g16 aes16~ aes32 e'8 d'16 cis'32 
      | \tuplet 5/4 {d'8 f'16 d'16 g16} c'16 bes16 a16 bes16 \tuplet 3/2 {d'8 c''8 c''8} \tuplet 3/2 {c''8 bes'8 a'8} 
      | bes'16 f''16 g'16 a'16 bes'4^\markup{\left-align \small vib} r2 
      | \tuplet 10/8 {r8 r32 fis'16 g'32 bes'32 d''32~} d''32 f''32 d''32 dis''32 e''32 c''32 cis''32 d''32 c''32 bes'32 a'32 g'32 f'32 e'32 g'32 bes'32 \tuplet 10/8 {d''16 c''32 a'32 bes'32 c''32 bes'32 a'32 f'32 d'32} 
      | c'32 g'32 f'16 g32 bes32 des'32 bes32 g16 c'16 bes8~ \tuplet 7/8 {bes16. g'32 ges'32 f'32 e'32} \tuplet 9/8 {es'32 des'32 aes32 bes16 des'32 f'32 c'32 bes32} 
      | a16 c'16 f8~ \tuplet 6/4 {f8 g8. a16~} \tuplet 3/2 {a8 bes8 c'8} a16 bes16 aes'16 e'16 
      | \tuplet 6/4 {c'16 g'16 a'16 f'16 d'8} f'4^\markup{\left-align \small vib} r4 r16. g'32 a'32 bes'32 a'32 g'32 
      | \tuplet 14/16 {f'32 e'32 d'64 cis'32 d'64 e'32. cis'64 d'64 e'64} f'4 \tuplet 10/8 {r8 a'16. aes'32 g'32 ges'32} \tuplet 3/2 {f'8 g'8 f'8} 
      | g'16\glissando  a'16 a16 bes16 b4..^\markup{\left-align \small vib} b'16 \tuplet 6/4 {a'16 gis'16 b8 d'16 f'16~} 
      | \tuplet 10/8 {f'32 e'8 c'16 d'32 e'32 d'32} b16 c'16 c''8 \tuplet 3/2 {b'8 gis'8 a'8} b'8 c''16 d''16 
      | e''8 e'16 f'16 ges'8 bes'16 aes'16 bes16 es'16 aes16 des'16 \tuplet 3/2 {es'8 aes8 g8} 
      | d'16 bes16 b16 d'16 b32 c'16 g'16 e'16 c'32 g'4^\markup{\left-align \small vib} r4 
      | r4 r8 g'8~ g'32\glissando  g''16. g''16 f''32 f''32~ \tuplet 5/4 {f''16 e''16 e''16 d''16 d''16~} 
      | d''16. g'16 a'32 b'32 d''32 \tuplet 5/4 {d''16 c''16 c''16 bes'16 bes'16} d'16 a'8.^\markup{\left-align \small vib} r4 
      | \tuplet 10/8 {r8.. ges16 des'32~} des'16 aes'16 ges'16 es'16 aes16 des'16 es'16 aes16 fis16 g8 des'16 
      \bar "||" b16 c'8.~^\markup{\left-align \small vib} c'8 c''8 a'16 g'16 f'16 g'16\glissando  a'8 c'8 
      | d'4~^\markup{\left-align \small vib} \tuplet 7/8 {d'16. e''32 d''32 c''32 b'32} d'16 f'16 g'16\glissando  aes'16 \tuplet 3/2 {b'8 e''8 d''8\glissando } 
      | \tuplet 3/2 {f''8 d''8 g'8} a'16 bes'16 c''32 a'32 bes'32 a'32 g'16 c''8.~ \tuplet 5/4 {c''8 es'16 cis'16 d'16~} 
      | \tuplet 6/4 {d'16 bes'16 d'8 a'16 g'16~^\markup{\left-align \small vib}} g'4~ \tuplet 9/8 {g'8. c''32 bes'32 a'32~} \tuplet 10/8 {a'32 g'32 ges'32 a16 c'32 es'32 c'32 cis'32 d'32~} 
      | \tuplet 10/8 {d'32 des'32 c'32 b16 bes32 a16 g32 a32~} \tuplet 7/8 {a32 g32 a32 bes32 c'32 d'32 g'32} r2 
      | r8 es8 bes16 g'16 f'8 \tuplet 12/8 {g16. bes16. des'16 bes32 des'32 bes32 g32~} \tuplet 10/8 {g16 c'16 bes16. a16 g32} 
      | f8 g8 a8 c'8 d'8 f'8 \tuplet 6/4 {g'8 a'8 bes'16 c''16} 
      | gis'16\glissando  a'16 f'8 \tuplet 12/8 {es'8~ es'32 g'16. d'16. c'32} f'8 r8 r4 
      | r16. b16 ges'32 a'32 des''32~ des''32 aes''16 ges''16 f''32 e''32 es''32 d''16 es''32 d''32 des''32 c''16 d''32 \tuplet 7/8 {des''32 b'32 bes'32 c''32 b'32 bes'32 a'32} 
      | bes'16 g'16 a'8^\markup{\left-align \small vib} r4 r16. e'32 fis'32 g'32 e'32 d'32 \tuplet 7/8 {des'32 e'32 bes32 g32 a32 f'32 e'32} 
      | cis'32 d'32 dis'32 e'32 cis'32 d'32 a32 g32 f16 a8.~^\markup{\left-align \small vib} \tuplet 6/4 {a4 d'16 f'16~} \tuplet 6/4 {f'16 f'8 f'16 f'16 f'16~} 
      | f'16 f'16 f'16 f'16 e''4~^\markup{\left-align \small vib} \tuplet 6/4 {e''8 es''16 des''16 aes'16 aes'16} f'16 es'16 des'16 c'16 
      | bes16 a8.^\markup{\left-align \small vib} r4 r8 e'32 f'32 a'32 c''32 \tuplet 7/8 {e''32 d''32 cis''32 d''32 f''32 e''32 cis''32} 
      | d''32 c''32 b'32 bes'32 a'32 g'32 f'32 d'32 g'32. f'32 es'32 g32 bes32 des'32 bes64 c'64 bes64 \tuplet 7/8 {g32 c'32 a32 bes32 des'32 a'32 g'32} e'32 c'32 g'32 aes'32 e'32 c'32 cis'32 d'32~ 
      | d'32 g32 a16 c'32 e'32 g'32 e'32~ e'16 c'16 g'8^\markup{\left-align \small vib} r4 \tuplet 6/4 {r8 f'8 e'16 d'16~} 
      | \tuplet 10/8 {d'32 f'16. d'16 c'32 d'32 c'32 bes32~} \tuplet 10/8 {bes32 d'16. bes16 a32 bes32 a32 g32} e'16\glissando  f'16 des'16 bes16 g16 es'16. cis'16 d'32 
      \bar "||" e'4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
