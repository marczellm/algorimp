\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Honeysuckle Rose"
  composer = "Phil Woods"
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
      
      | g2:min7 c2:7 | g2:min7 c2:7 | g2:min7 c2:7 | g2:min7 c2:7 | f2:6 d2:min7 | g2:min7 c2:7 | f1:6 | a2:min7 d2:7 
      | g2:min7 c2:7 | g2:min7 c2:7 | g2:min7 c2:7 | g2:min7 c2:7 | f2:6 d2:min7 | g2:min7 c2:7 | f1:6 | s1 
      | f1:7 | c2:min7 f2:7 | bes1:6 | s1 | g1:7 | s1 | c1:7 | s1 
      | g2:min7 c2:7 | g2:min7 c2:7 | g2:min7 c2:7 | g2:min7 c2:7 | f2:6 d2:min7 | g2:min7 c2:7 | f1:6 | a2:min7 d2:7 
      | g2:min7 c2:7|
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


      \tempo 4 = 233
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 ges8 \tuplet 3/2 {a8 d'8 f'8} ges'8 des'8 bes8 fis8 
      | \tuplet 3/2 {g4 bes8} d'8 fis'8 g'8 d'8 \tuplet 3/2 {bes4 fis8} 
      | g8 a8 bes8 d'8 e'16 a'8 f'16~ f'16 d'8 a16 
      | bes8 c'4 a'8 bes'8 ges'8 des'8. a16 
      | \tuplet 3/2 {c'8 des'8 c'8} a8 bes8 c'8 f'8~ f'16 es'8 cis'16 
      | d'8 f'8 g'8 aes'8 \tuplet 3/2 {f'4 c'8} bes8 gis8 
      | a4 bes8 b8 c'8 g'8 e'8 c'8 
      | \tuplet 3/2 {a'8 bes'8 a'8} g'8 f'16 fis'16~ fis'8 es''8 d''8 c''8 
      \bar "||" bes'8 d'8 g'8 bes'8~ bes'16 a'8 g'16 bes'8\bendAfter #-4  a'8 
      | g'8 bes'8\bendAfter #-4  a'8 g'8\glissando  des''8 d'8 g'8 bes'8\bendAfter #-4  
      | a'8 g'8 bes'8 a'16 d'16 g'8 bes'8 a'8 g'8 
      | bes'8\bendAfter #-4  a'16 d'16 g'8 bes'8 a'8 g'8 a'8 g'8 
      | f'8 r8 r2 d''8 des''8 
      | c''8 b'8 bes'8 f'8 des'8 bes8 gis4 
      | a4 bes8 b16 c'16~ c'8 g'8 e'8 c'8 
      | f'8 es'8\glissando  f'4.^\markup{\left-align \small vib} r8 r8 es8 
      \bar "||" bes8 des'8 \tuplet 3/2 {a4 f8} g8 b8 \tuplet 3/2 {es'4 g'8} 
      | des'8 a8 b8 es'8 f'8 a'8 es'8 c'8 
      | g'16 a'16 g'16 ges'16 f'8 des'8 a4 c'8 a8 
      | bes8 c'4 f'8 \tuplet 3/2 {a'4 g'8} r4 
      | r8 e'8 f'16 g'16 a'8 \tuplet 3/2 {e''8\glissando  f''8 fis''8} g''8 e''8 
      | f'8 d'16 c'16 b'8 a'8 g'8 ges'8 f'8 d'8 
      | bes4 c'16 d'16 c'16 a16 bes8 c'8 \tuplet 3/2 {d'8 f'8 gis'8\glissando } 
      | a'8 c''4 r8 r2 
      \bar "||" c''8 c''8 c''8 b'8\glissando  c''4 c''8 c''16 c''16~ 
      | c''8 b'16\glissando  c''16~ c''8. c''16~ c''16 c''8 c''16~ c''8 b'8\glissando  
      | c''4 b'8\glissando  c''8 \tuplet 3/2 {c''8 aes'8 f'8} c'4 
      | \tuplet 3/2 {g'4 f'8} d'8 bes4. c'8 bes8 
      | \tuplet 3/2 {a4 c'8} \tuplet 3/2 {d'4 c'8} f'8 es'8 d'8 c'8 
      | \tuplet 3/2 {bes4 d'8} \tuplet 3/2 {g'4 aes'8} f'8 des'8 bes8 gis8 
      | a4 \tuplet 3/2 {bes4 c'8~} c'8 g'8\glissando  a'4~ 
      | a'4~ a'16 bes'16 a'16 g'16 fis'16 es'16 d'16 c'16 \tuplet 3/2 {bes8 a8 aes8} 
      \bar "||" \mark \default g8 r8 r2.\bar  ".."
    }
    >>
>>    
}
