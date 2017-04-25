\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cognac Blues"
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:min7 | c1:7 | f2:7 d2:min7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:min7 | c1:7 | f2:7 d2:min7 | g2:min7 c2:7|
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


      \tempo 4 = 116
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8 f8 aes8. bes16~ 
      | bes16 g16\glissando  bes8~ bes16 a8 f16~ f8 f8 aes8 bes8 
      | a16 bes8. a8. c'16\bendAfter #-4  \tuplet 6/4 {b4 f16 gis16~} gis8. a16 
      | f'4 es'8 g8 d'8 c'16. a32~ a8 es8 
      | d8 c'8~ c'4. b16\glissando  c'16\glissando  b16\glissando  bes16 aes8 
      | aes8 r8 r4 r8. a,16 bes,16 d16 f16 gis16 
      | a8 c'8~ c'8. a16~ \tuplet 3/2 {a8 bes8 f'8~^\markup{\left-align \small vib}} f'8 a8~ 
      | \tuplet 3/2 {a8\glissando  b8 d'8} f'8 gis'8 a'8. e'16 es'8 cis'8 
      | d'8^\markup{\left-align \small vib} r8 r4 r8. f'16~^\markup{\left-align \small vib} f'4~ 
      | f'2~ \tuplet 6/4 {f'4 ges'16 f'16} \tuplet 3/2 {d'8 aes8 e8~} 
      | e8 f8~ f4~ \tuplet 3/2 {f8\glissando  a8 c'8} r4 
      | r4 f'2.^\markup{\left-align \small vib} 
      \bar "||" \mark \default \tuplet 6/4 {d''16 des''16 c''16 b'8 g'16} \tuplet 6/4 {gis'16 a'16 c''16 b'16 g'16 es'16} \tuplet 6/4 {bes8\bendAfter #+4  b16 d'16 c'16 bes16~} bes16 aes32 g32 ges32 e32 es32 d32~ 
      | d16 a16 c'16 a16 bes16 d'16 g'16 e'16 \tuplet 3/2 {f'8 g4~} g8~ g32\bendAfter #+4  aes32 bes32 des'32~ 
      | des'32 e'32 g'32 f'32 e'32 f'32 fis'32 g'32 \tuplet 6/4 {aes'16 bes'16 b'16 c''8.} r4 r8 c''8 
      | \tuplet 3/2 {d''8 f''4~} f''2~ \tuplet 3/2 {f''8 es''8 f''8~} 
      | f''32 e''32 des''32 c''32 b'32 c''32 b'32 g'32 f'2~^\markup{\left-align \small vib} f'8. b'16~ 
      | b'8 f'8~^\markup{\left-align \small vib} f'4. bes'8~ \tuplet 6/4 {bes'16 f'4 gis'16~} 
      | gis'16 a'8 a16 c'4^\markup{\left-align \small vib} r4 r8 aes'8\bendAfter #-4  
      | \tuplet 6/4 {ges'8 e'8 gis16 a16} \tuplet 6/4 {c'8 e'16 aes'16 c''16 a'16} aes'8 aes4.~ 
      | aes16\bendAfter #+4  g16 bes16 d'16~ \tuplet 6/4 {d'8\bendAfter #+4  dis'16\bendAfter #+4  e'16 f'16 ges'16} f'16 d'8.^\markup{\left-align \small vib} r4 
      | \tuplet 6/4 {r4 e'16 f'16~} \tuplet 3/2 {f'8 bes'8 a'8} f'8 c'8~ c'16 e'32~ e'8 f'32~ 
      | \tuplet 6/4 {f'4 c'16\glissando  cis'16~} \tuplet 12/8 {cis'16\glissando  d'16. e'32 d'32 e'32 d'32 f'32 es'32 f'32~} \tuplet 11/8 {f'32 dis'32 e'32 d'16 e'32 d'32 e'32 d'32 e'32 d'32~} \tuplet 10/8 {d'16 des'32 es'32 des'32 c'16 es'32 d'32 des'32} 
      | c'16 g8 e16 \tuplet 3/2 {bes8\glissando  b8 a8} bes8 c'8 aes4^\markup{\left-align \small vib}\bar  ".."
    }
    >>
>>    
}
