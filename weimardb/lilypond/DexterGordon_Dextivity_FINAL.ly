\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dextivity"
  composer = "Dexter Gordon"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      
      | c1:6 | d1:11+.9 | d2:min7 g2:9- | c4:6 es4:7 d4:7 des4:7 | c1:6 | d1:11+.9 | d2:min7 g2:9- | c1:6 
      | g2:min7 c2:9- | f2:maj b2:7 | e2:min7 a2:min7 | d2:min7 g4:7 des4:7 | c1:6 | d1:11+.9 | d2:min7 g2:9- | c1:6 
      | s1 | d1:11+.9 | d2:min7 g2:9- | c4:6 es4:7 d4:7 des4:7 | c1:6 | d1:11+.9 | d2:min7 g2:9- | c1:6 
      | g2:min7 c2:9- | f2:maj b2:7 | e2:min7 a2:min7 | d2:min7 g4:7 des4:7 | c1:6 | d1:11+.9 | d2:min7 g2:9- | c1:6 
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


      \tempo 4 = 93
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default c'8 e16 g16 b16 d'16 c'16 b16 a16 e16 f16 g16~^\markup{\left-align \small vib} g8 e16 g16 
      | fis16 d16 e16 fis16 g16 a16 b16 c'16 d'8 a4.^\markup{\left-align \small vib} 
      | a16 d16 e16 f16~ f16 g16 a16 es16~ es16 c16 des16 es16 \tuplet 6/4 {f8 aes8.^\markup{\left-align \small vib} e16~} 
      | e16 g16 b16 d'16 des'16 bes16 f8 c'16 a16 f16 d16 b,16 d16 f16 aes16 
      \bar "||" g16 e16 g16 b16 d'8 c'8~^\markup{\left-align \small vib} \tuplet 6/4 {c'4~ c'16 dis'16~} dis'16 c'16 g16 dis16 
      | fis8^\markup{\left-align \small vib} d16 fis16~ fis16 a16 ais16 g16 dis16 cis16 d16 e16 \tuplet 6/4 {fis8 g8 a16 fis16} 
      | g8 f16 g16 b16 d'16 c'16 des'16 es'16 f'16 ges'16 aes'16~^\markup{\left-align \small vib} aes'4~ 
      | \tuplet 6/4 {aes'16 g'16 fis'16 e'8 d'16} c'16 b16 a16 g16~ \tuplet 6/4 {g16 f16 e16 g8 d16} \tuplet 5/4 {dis8 fis16 a16 d'16} 
      \bar "||" c'16 g16 a16 bes16 c'16 d'16 bes16 g16~ \tuplet 6/4 {g16 f8.^\markup{\left-align \small vib} d16 f16} \tuplet 6/4 {e8 des'16 c'8 bes16} 
      | a8^\markup{\left-align \small vib} r8 r8 a16 bes16 \tuplet 6/4 {c'8 d'16 e'8 f'16~} \tuplet 5/4 {f'16 g'16 e'16 f'16 g'16~} 
      | g'16 g'16\glissando  a'8 \tuplet 6/4 {g'16 fis'16 e'4~^\markup{\left-align \small vib}} e'8 a16 c'16 \tuplet 3/2 {e'8 g'8 b'8} 
      | a'8^\markup{\left-align \small vib} d'16 e'16 f'16 g'16 a'16 e'16~ \tuplet 6/4 {e'16 aes'16 g'16 f'16 dis'16 des'16} \tuplet 6/4 {c'16 des'16 bes16 aes8 fis16} 
      \bar "||" g8 r8 r8. fis'16\glissando  g'8 g'16 g'16~ g'16 c'16 c''8~^\markup{\left-align \small vib} 
      | c''4. g'8 b'4.^\markup{\left-align \small vib} g'8 
      | \tuplet 6/4 {b'16 a'16 f'16 d'8 c'16} \tuplet 3/2 {g'8 f'4^\markup{\left-align \small vib}} r4 es'8 g'16 c''16~ 
      | \tuplet 3/2 {c''8 c''8 c''8} a'16\glissando  ais'16 g'8 r4 r8. g'16~ 
      \bar "||" \mark \default \tuplet 6/4 {g'16 ais'16 bes'8 a'16 ais'16~} \tuplet 3/2 {ais'8 c''8 g'8} a'16 ais'16 g'8 r4 
      | \tuplet 5/4 {a'16 bes'16 a'16 fis'16 g'16} a'16 fis'16 d'16 e'16 \tuplet 3/2 {fis'8 d'4} r8.. d'32~ 
      | \tuplet 6/4 {d'16 e'16 f'16 a'16 e'16 d'16} \tuplet 6/4 {aes'16 e'16 d'16 c'16 g'16 e'16} \tuplet 6/4 {f'16 g'16 e'4} d'16 c'16 b16 a16 
      | g16 g'16 f'16 dis'16 e'16 f'16 des'16 bes16 dis'16 c'16 cis'16 es'16 \tuplet 3/2 {d'8 a8 f8} 
      \bar "||" \tuplet 6/4 {d'8 b16 c'8 d'16} g8 e8^\markup{\left-align \small vib} r2 
      | r8. a16 \tuplet 3/2 {c'8 e'8 g'8} \tuplet 3/2 {b'8 aes'4~} aes'8. g'32 ges'32 
      | \tuplet 5/4 {f'8 e'16 d'16 c'16~} \tuplet 6/4 {c'16 b16 a8 g16 f16~} \tuplet 6/4 {f16 e16 d8 b,16 des16~} \tuplet 6/4 {des16 f8 aes16 es'16 des'16~} 
      | \tuplet 10/8 {des'32 c'16. g16 a16. ais32~} ais8 r8 r2 
      \bar "||" g'8 a'8 bes'8 c''16 des''16~ \tuplet 5/4 {des''16 bes'16 g'16 des'16 c''16~} c''8. bes'16~ 
      | bes'16 g'16\glissando  a'4 c''16 g'16~^\markup{\left-align \small vib} g'8 r8 \tuplet 6/4 {r4 g'16 fis'16} 
      | \tuplet 3/2 {e'8 d'4~} d'8 b16 e'16 g'16 b'16 a'16 b16 c'16 e'16 g'16 b'16~ 
      | b'32 a'16 ges32 b32 d'32 f'32 a'32 c''16 a'16 r8 r8. gis'16 des''16 c''16 bes'16 aes'16~ 
      \bar "||" aes'32 g'16 f'16 e'32 f'32 fis'32 \tuplet 3/2 {g'8 d'4~} d'8 c'16 d'16 e'16 f'16 g'16 e'16 
      | e'16\glissando  fis'8.~ fis'16 a'16 fis'16 a'16 e'4.^\markup{\left-align \small vib} d'16 e'16 
      | f'16 g'16 f'16 g'16 e'4 \tuplet 6/4 {d'16 e'16 d'16 e'8 c'16~} c'8. b16~ 
      | b8 c'8 g8 r8 r8. f16 dis16 e16 g8 
      \bar "||" \mark \default c'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
