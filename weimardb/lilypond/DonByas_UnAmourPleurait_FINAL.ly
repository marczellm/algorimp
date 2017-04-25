\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Un Amour Pleurait"
  composer = "Don Byas"
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
      | r1 
      | f2:/c des2:dim | d2:min g2:min7 | c2:7 g4:min7 c4:7 | f1:maj | s2 a2:7 | d2:min7 des2:dim | c2:7 g4:min7 c4:7 | f1:maj 
      | f2:/c des2:dim | d2:min7 g2:min7 | c2:7 g4:min7 c4:7 | f1:maj | a1:7 | d2:min7 des2:dim | c1:7 | f2 f2:7 
      | bes1 | es2 c2:min7 | f2:7 c4:min7 f4:7 | bes1 | s2 d2:dim | es2:maj aes2:7 | bes2 f2 | bes4 f4 g4:7 c4:7 
      | c2:/f des2:dim | d2:min7 g2:min7 | c1:7 | f1:maj | a1:7 | d1:min7 | c2:7 g4:min7 c4:7 | f1:maj 
      | s2. r4|
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


      \tempo 4 = 106
      \set Score.currentBarNumber = #0
     
      | r2 r8 a8 \tuplet 6/4 {bes16 c'16 e'8 aes'16 c''16} 
      \bar "||" \mark \default a'4~^\markup{\left-align \small vib} a'16 e'16 f'16 g'16 f'16 fis'8.~^\markup{\left-align \small vib} fis'16 es'16 d'16 c'16 
      | \tuplet 3/2 {b8 bes4^\markup{\left-align \small vib}} a16 g8^\markup{\left-align \small vib} d16 \tuplet 3/2 {ges8 bes8 f8} d16 e16 r8 
      | r4 \tuplet 6/4 {r16 des''16 c''16 b'16 bes'8} \tuplet 5/4 {ges'16 a'16 g'16 f'16 d'16} e'8 des'16 c'16~ 
      | \tuplet 5/4 {c'16 bes16 g16 gis16 a16~} a8 g'16 e'16 \tuplet 5/4 {f'4^\markup{\left-align \small vib} d'16~} d'16 bes16 g16 e16~ 
      | \tuplet 6/4 {e16 g16 e8 f16 a16} c'16 d'16 es'16 f'16 g'4^\markup{\left-align \small vib} r4 
      | r8 f'8~ f'16 a'16 c''16 bes'16~ bes'32 f'16. dis'16. cis'32~ cis'16 bes16 f16 des16 
      | c16. g16 e16 f32~ \tuplet 3/2 {f8 c'8 a8} \tuplet 3/2 {bes8 e8 aes8} c'4^\markup{\left-align \small vib} 
      | r4 \tuplet 3/2 {g8\glissando  a8 f'8~^\markup{\left-align \small vib}} f'8.. ges'32 f'16 d'16 e'16 c'16 
      \bar "||" g16 e16 g16 e16 f16 a16 c'8~^\markup{\left-align \small vib} c'4. b16\glissando  c'16 
      | cis'16. d'16 f'16 d'32~ \tuplet 3/2 {d'8 e'8 g'8} c''4.^\markup{\left-align \small vib} r8 
      | r4 \tuplet 6/4 {r16 d''16 des''16 c''16 b'16 bes'16~^\markup{\left-align \small vib}} bes'4 g'16 ges'16 es'16 des'16 
      | \tuplet 6/4 {a16 ges8 es16 des16 c16~} c16 g16 e16 f16 d'8. a16 c'4^\markup{\left-align \small vib} 
      | r4 \tuplet 6/4 {g'8 dis'8 bes16 b16} \tuplet 3/2 {d'8 c'8 cis'8~} cis'16 a16 g16 es16 
      | d8 f8 bes8 c'4 bes8 f4~^\markup{\left-align \small vib} 
      | f4 \tuplet 6/4 {gis16\glissando  a16 bes8 a16 f16~} \tuplet 3/2 {f8 d8 e8} g16 c'8 a16~ 
      | a8 f4^\markup{\left-align \small vib} r8 \tuplet 6/4 {r8. fis16\glissando  g16 a16~} \tuplet 6/4 {a16 bes8 bes16\glissando  b16 c'16~} 
      \bar "||" \tuplet 6/4 {c'16 a16 des'16 a16 cis'16\glissando  d'16~} \tuplet 3/2 {d'8 dis'8 e'8} f'8 f8 aes4~^\markup{\left-align \small vib} 
      | aes4 fis16 g16 bes16 d'16 f'8 es'8 ges4^\markup{\left-align \small vib} 
      | r4 r16 es16\glissando  f16 e16 es8 g8 \tuplet 3/2 {f'8 des'8 a8~} 
      | a16 es16 d16 f16~ \tuplet 3/2 {f8 a8\glissando  c'8} bes8 f4.~^\markup{\left-align \small vib} 
      | f8 bes'8~ \tuplet 6/4 {bes'16 dis'16 e'16 f'8 g'16~} g'16 aes'16. c''16 g'32~^\markup{\left-align \small vib} g'4 
      | \tuplet 3/2 {f'8 d'8 c'8} \tuplet 6/4 {g16\bendAfter #+4  aes16 g8 bes16 es'16\glissando } \tuplet 3/2 {f'4 es'8~} es'8 ges8~^\markup{\left-align \small vib} 
      | ges4~ ges32 f16. bes32 d'16 es'32~ \tuplet 7/8 {es'32 d'16 c'16 bes32 g32~} g16 f8 e16~ 
      | e16 es16 cis16 d16 bes4^\markup{\left-align \small vib} g16 gis16 c'16 dis'16 g'16 ges'16 r8 
      \bar "||" r4 dis'8\glissando  f'4.^\markup{\left-align \small vib} fis'16 a'16 c'8~^\markup{\left-align \small vib} 
      | c'4. es'16 f'16~ \tuplet 6/4 {f'16 d'16 dis'16 e'16 es'16 cis'16} d'16\glissando  es'8 des'16 
      | es'16 c'8.~^\markup{\left-align \small vib} c'4. \tuplet 6/4 {bes8 c'16} gis8\glissando  a8~^\markup{\left-align \small vib} 
      | a4~ a16 g16 a16 c16~^\markup{\left-align \small vib} c4. g8 
      | e16 f16 a16 c'16 dis'16 g'16 dis'16. bes32 b16 cis'16 dis'16 gis'16 fis'16 dis'16 cis'16 b16 
      | ges16 e16 es16 des16 e16 g16 e16 f16 \tuplet 6/4 {a16 d'8 f'16 bes16 b16} \tuplet 3/2 {d'8 f'8 gis'8} 
      | r8.. a'32~ \tuplet 3/2 {a'8 bes'8 b'8} \tuplet 5/4 {c''8 cis'16\glissando  d'16 dis'16~} dis'16 e'16 f'8 
      | \tuplet 3/2 {fis'8 g'8 d'8} c'2^\markup{\left-align \small vib} aes8.\bendAfter #+4  c'16~^\markup{\left-align \small vib} 
      | c'2. r4\bar  ".."
    }
    >>
>>    
}
