\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Housed from Edward (Solo 2)"
  composer = "Branford Marsalis"
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
      | bes1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 
      | f1:7|
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


      \tempo 4 = 122
      \set Score.currentBarNumber = #0
     
      | r8 g'8\glissando  aes'2.~^\markup{\left-align \small vib} 
      \bar "||" \mark \default aes'2.. f'16 c'16 
      | \tuplet 3/2 {d'8 f'8 aes'8\bendAfter #-4 } r2 r8. g'16\glissando  
      | aes'4.^\markup{\left-align \small vib} f'8 c'16 g'16 f'16 c'16 \tuplet 5/4 {bes16 es'16 cis'16 d'16 bes16~} 
      | \tuplet 6/4 {bes16 f8 es16 f16 aes16~} \tuplet 6/4 {aes16 es8 f16 bes16 d'16~} \tuplet 6/4 {d'16 c'16 d'8 es'16 f'16} d'4 
      | aes'4 r4 aes'8 r8 r8. aes'16~ 
      | aes'8. aes'16~ aes'8. g'16~ \tuplet 6/4 {g'16 f'8. aes'16 f'16} d'4 
      | \tuplet 3/2 {aes'4 aes'8} \tuplet 3/2 {g'8\glissando  aes'8 aes'8~} aes'8 aes'8 aes'4 
      | \tuplet 3/2 {g'8\glissando  gis'4} aes'4 g'16\glissando  gis'8 gis'16~ gis'8. d'16~ 
      | d'8. f'16~ f'4 f'4 f'4 
      | \tuplet 3/2 {g'8\glissando  aes'8 f'8} \tuplet 3/2 {es'4 c'8} bes8. f16 g16\glissando  a8. 
      | f8. f16 r2. 
      | r4 \tuplet 3/2 {gis8\glissando  a8 c'8} \tuplet 3/2 {d'4 c'8} d'8. c'16\glissando  
      \bar "||" \mark \default es'8 r8 r4 c'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {d'4 f'8} g'4 g'16\glissando  aes'8 f'16 \tuplet 5/4 {aes'16 f'16 aes'16 f'16 aes'16} 
      | \tuplet 6/4 {f'16 aes'16 f'16 aes'16 f'16 aes'16} \tuplet 6/4 {f'16 aes'16 f'16 aes'16 f'16 aes'16} f'16 d'16 c'8 r4 
      | r2. \tuplet 6/4 {r4 b'16\glissando  c''16~} 
      | c''8 b'4 bes'8~ bes'8. aes'16~ aes'16 b'16 aes'16 f'16 
      | g'8 f'8 d'16\glissando  es'8 c'16 bes4 f4 
      | a4 bes8 b8~ b16 c'8 d'16 c'4 
      | e8 f8~ f16 g8 gis16~ gis16 a8 bes16~ \tuplet 3/2 {bes8 a8 fis8} 
      | \tuplet 6/4 {a8. g16 a16 g16} fis8 g4.^\markup{\left-align \small vib} \tuplet 3/2 {bes8 c'8 bes8} 
      | \tuplet 3/2 {bes8 a8 b8~^\markup{\left-align \small vib}} b8 r8 \tuplet 6/4 {r4 g'16\glissando  a'16~} \tuplet 3/2 {a'8 g'8 g'8} 
      | f'8 g'8~^\markup{\left-align \small vib} \tuplet 6/4 {g'4~ g'16 e'16} f'8 d'8 \tuplet 3/2 {e'8 c'4} 
      | d'8 bes8 \tuplet 3/2 {c'8 a4} \tuplet 3/2 {bes8 g4} f4~ 
      \bar "||" \mark \default f4 r2.\bar  ".."
    }
    >>
>>    
}
