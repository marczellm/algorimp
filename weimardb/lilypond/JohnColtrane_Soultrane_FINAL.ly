\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Soultrane"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      | es1:maj | g2:min5-7 c2:7 | f1:min7 | des1:7 | aes2:min7 des4:7 d4:dim | es2:maj g4:7 c4:7 | f2:7 bes2:7 | g4:min7 c4:7 f4:min7 bes4:7 
      | es1:maj | g2:min5-7 c2:7 | f1:min7 | des1:7 | aes2:min7 des4:7 d4:dim | es2:maj g4:7 c4:7 | f2:7 bes2:7 | es2:maj a4:min5-7 d4:7 
      | g1:min7 | a2:min5-7 d2:7 | g1:min7 | c2:7 b2:7 | bes2:maj g2:min7 | c2:min5-7 f2:7 | f2:min7/bes bes2:dim | b2:7 bes4:7 e4:7 
      | es1:maj | g2:min5-7 c2:7 | f1:min7 | des1:7 | aes2:min7 des4:7 d4:dim | es2:maj g4:7 c4:7 | f2:7 bes2:7 | es1:maj 
      | s1|
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


      \tempo 4 = 82
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r16 g'16 f'16 es'16 \tuplet 6/4 {c'8 aes16 f16 d'16 c'16~} 
      \bar "||" \mark \default c'16 bes16 a16 bes16 c'16 d'16 es'16 f'32 g'32~ g'16 aes'16 bes'8~^\markup{\left-align \small vib} \tuplet 6/4 {bes'8 g'8 f'16 es'16} 
      | des'4^\markup{\left-align \small vib} r4 \tuplet 5/4 {r8 g'16 aes'16 g'16} f'16 e'16 c'16 d'16 
      | e'16 e'16\glissando  f'16 c'16~ \tuplet 5/4 {c'16 bes16 aes16 b16 c'16~} c'16 aes16 g16 f16 \tuplet 3/2 {bes8 aes4} 
      | b4~ \tuplet 12/8 {b16 bes16 b32 des'16. es'32 ges'32 bes'32 des''32~} des''8 b'32 bes'16 aes'32~ aes'16 ges'16 es'16 des'16 
      | b8. bes16~ \tuplet 6/4 {bes16 b8 es'8 ges'16~} \tuplet 6/4 {ges'16 aes'16\glissando  bes'8. aes'16~} \tuplet 6/4 {aes'8 es'16 f'8 g'16~} 
      | g'8\glissando  bes32 a32 bes32 c'32 \tuplet 6/4 {d'16 es'16 f'16 g'4.} es'8\glissando  f'16 aes'16 g'16 e'16 
      | \tuplet 6/4 {d'8. fis'16 g'16 es'16~} \tuplet 3/2 {es'8 es'8 c'8~} c'16 g'16 f'16 es'16 c'16 d'16 es'16 f'16 
      | g'16 aes'16 a'16 bes'16~^\markup{\left-align \small vib} bes'2 \tuplet 5/4 {des''16 c''16 b'16 ges'16 d'16} 
      \bar "||" des'16 b16 bes8^\markup{\left-align \small vib} es'4 r4 \tuplet 3/2 {d'8 es'8 d'8} 
      | \tuplet 3/2 {c'8 des'4~} \tuplet 10/8 {des'16 c'32 cis'16 d'32 es'32 d'32 e'32 fis'32} g'8 a'16 bes'16 \tuplet 3/2 {c''8 des''8 c''8} 
      | c'4 r4 \tuplet 5/4 {r8 f16 aes16 c'16} es'16 ges'16 bes'16 aes'16~ 
      | aes'16 g'16 aes'16 es'16~^\markup{\left-align \small vib} es'8. des'16~ des'16 bes16 es8 aes16 bes16 aes8~^\markup{\left-align \small vib} 
      | aes4~ aes16 b16 es'16 ges'16~ \tuplet 6/4 {ges'16 a'16 bes'16 c''16\glissando  des''16 b'16} \tuplet 3/2 {bes'8 aes'8 es'8} 
      | b16 bes16 aes'16 g'16 \tuplet 10/8 {d'16. f'16 es'16 d'32 es'32 g'32} bes'16 c''16 es''16\glissando  des''16 r4 
      | r4 \tuplet 12/8 {r16 c''8. b'16 bes'32 a'32~} a'16 bes'16 a'16 aes'16~ \tuplet 11/8 {aes'16 bes'16. a'32 aes'32 g'16 aes'32 g'32} 
      | \tuplet 6/4 {f'8 g'16 f'16 e'16 es'16} es'8 es'8~^\markup{\left-align \small vib} es'4~ \tuplet 7/8 {es'16 aes'32 bes'32 a'32 g'32 fis'32} 
      \bar "||" \tuplet 10/8 {es'32 d'16 c'16 bes16. e32 g32~} g32 a32 fis32 g32 a32 bes32 c'32 d'32 e'32 f'32 fis'32 g'32 a'32 bes'16.~ bes'8. bes'16~ 
      | bes'16 bes'16 c''4 g'8~ \tuplet 6/4 {g'16 d'16 e'16\glissando  f'4.^\markup{\left-align \small vib}} es'8 
      | cis'16 d'8 d'16~^\markup{\left-align \small vib} d'4. bes16 g16 d'16 c'16 bes16 g16 
      | cis'16\glissando  d'8.~^\markup{\left-align \small vib} d'4 \tuplet 6/4 {fis16 aes16 cis'16 aes'16 b'8} a'16 aes'16 ges'16 f'16 
      | es'16 cis'16\glissando  d'8~ d'16 es'16 f'16 g'16~^\markup{\left-align \small vib} g'4 r4 
      | r8 a'16 bes'16~ bes'16 b'16 c''16 g'16 es'16 d'16 c'16 g16 bes16 a32 c'32 es'32 g'32 f'32 es'32~ 
      | \tuplet 10/8 {es'16 cis'16\glissando  d'16. bes16 f32} bes4^\markup{\left-align \small vib} r2 
      | r16. fis32 aes32 b32 cis'32 aes'32 b'16 aes'8 fis'16~ \tuplet 10/8 {fis'32 f16 aes32 bes32 c'32 d'32 es'32 bes'32 g'32~^\markup{\left-align \small vib}} g'8. f'16 
      \bar "||" es'16 cis'16\glissando  d'4^\markup{\left-align \small vib} r8 \tuplet 10/8 {r8 d'16. es'16 fis'32~} fis'16 g'16 a'16 bes'16~ 
      | bes'16\glissando  des''8\glissando  bes'16~ bes'8. g'16 ges'16 d'16 f'16 d'16 e'8\glissando  c''8^\markup{\left-align \small vib} 
      | r4 \tuplet 10/8 {r8 e'16. f'16 g'32~} g'16 aes'16 bes'16 c''16~ \tuplet 6/4 {c''16 d''16 es''16 c''16 bes'16 aes'16~} 
      | aes'16 g'8 es'16 b8 ges'8 \tuplet 6/4 {es'16 b16 bes16 aes8.~^\markup{\left-align \small vib}} aes16 es16 bes16 aes16^\markup{\left-align \small vib} 
      | r4 r16 b16 es'16 ges'16~ \tuplet 10/8 {ges'32 bes'16. aes'16. g'16 aes'32~} \tuplet 3/2 {aes'8\glissando  es''8 b'8} 
      | bes'16 aes'16 g'8~^\markup{\left-align \small vib} g'16 es'16 bes16 g16 es'8 d'16\bendAfter #+4  es'16~^\markup{\left-align \small vib} es'8 des'8\glissando  
      | \tuplet 3/2 {c'8 aes8\glissando  c'8~^\markup{\left-align \small vib}} c'4~ \tuplet 6/4 {c'16 d'16 bes8 fis'16 g'16~} g'8.\glissando  bes16 
      | d'16 es'16 es'8~^\markup{\left-align \small vib} es'4.. es'16 c'16 cis'16 d'8 
      \bar "||" \mark \default bes8 r8 r2.\bar  ".."
    }
    >>
>>    
}
