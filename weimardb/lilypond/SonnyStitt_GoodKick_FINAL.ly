\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Good Kick"
  composer = "Sonny Stitt"
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
      | f1:7 | s1 | s2 d2:min7 | g2:min7 c2:7 | f1:7 | s1 | c1:7 | s1 
      | f1:7 | s1 | s2 d2:min7 | g2:min7 c2:7 | f1:7 | s1 | c1:7 | s1 
      | g1:min7 | s1 | bes2:7 es2:7 | f1:7 | g1:min | s1 | c1:7 | s1 
      | f1:7 | s1 | s2 d2:min7 | g2:min7 c2:7 | f1:7 | s1 | c1:7|
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


      \tempo 4 = 173
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 c''8~ 
      \bar "||" \mark \default c''16 e''16\bendAfter #+4  f''8~ \tuplet 6/4 {f''16 e''16 f''8. des''16} bes'16 g'16 aes'8 f'8 r8 
      | r8 e''8\glissando  \tuplet 5/4 {f''8 des''16 b'16 aes'16} f'8 g'4.^\markup{\left-align \small vib} 
      | r4 \tuplet 3/2 {e'8 f'8 a'8} c''16 e''8 es''16~ es''16 d''8 des''16 
      | c''16 des''16 c''16 b'16 bes'8 a'8 g'8 f'8 dis'16\glissando  e'8 d'16 
      | \tuplet 3/2 {es'8 g'8 bes'8} \tuplet 3/2 {cis''8\glissando  d''8 bes'8} \tuplet 6/4 {c''8\glissando  des''16 b'16 a'16 g'16} \tuplet 3/2 {f'8 es'4} 
      | \tuplet 3/2 {bes8 cis'8\glissando  d'8} f'8 r8 r2 
      | r16 c'8 des'16 c'16 a8 c'16~ c'16 d'16\glissando  e'8 d'4~^\markup{\left-align \small vib} 
      | d'4 r2 r16 c'8 bes16 
      \bar "||" \mark \default a8. c'16 f'8 a'8 g'8 f'8 e'8 d''16 bes'16 
      | d''8 des''8 c''4 bes'8 c''16 bes'16 a'8 bes'8 
      | c''8 es''16 f''16 \tuplet 3/2 {g''4\glissando  f''8~} \tuplet 3/2 {f''8 ges''8 f''8} es''8. f''16~ 
      | f''8\bendAfter #+4  ges''16 f''16 \tuplet 3/2 {d''8 bes'8 g'8} \tuplet 3/2 {dis''8 e''8 es''8} d''8 des''16 c''16 
      | des''16 c''16 bes'8 a'8 g'8 f'8 r8 r8 es'8 
      | d'8. f'16 \tuplet 3/2 {g'4 aes'8~^\markup{\left-align \small vib}} aes'4 f'8 d'8~ 
      | d'16 g'16 gis'16\glissando  a'16 c''16 g'8.~^\markup{\left-align \small vib} g'8 r8 r4 
      | r1 
      \bar "||" \tuplet 3/2 {f'4 e'8} \tuplet 3/2 {es'8 g'8 bes'8} d''8 ges''16 f''16 \tuplet 3/2 {cis''8\glissando  d''8 a'8} 
      | \tuplet 6/4 {c''8. d''16 c''16 bes'16} a'8 r8 r4 r8 g'8 
      | \tuplet 3/2 {f'4 es'8~} es'16 d'8 f16 g8 a8 c'8. bes16~^\markup{\left-align \small vib} 
      | bes4 r2. 
      | r8. bes16 \tuplet 3/2 {b8 d'8 b'8} a'4 \tuplet 3/2 {e'8 f'8 a'8} 
      | \tuplet 3/2 {c''8 e''8 es''8} \tuplet 3/2 {d''8 des''8 a'8~} a'16 f'8 des'16~^\markup{\left-align \small vib} des'4 
      | r4 r32 g'16 bes'32 d''16 ges''32 f''32 e''16 c''16 cis''16 d''16 bes'16 a'16 c''16 a'16 
      | \tuplet 3/2 {bes'8 a'8 g'8~} g'16 ges'16 a'16 g'16 f'16 e'16 c'16\glissando  d'16~ d'16 bes16 c'16 bes16 
      \bar "||" \mark \default \tuplet 3/2 {a8 c'8 d'8} e'16 g'8.~^\markup{\left-align \small vib} \tuplet 6/4 {g'4~ g'16 e'16~} \tuplet 5/4 {e'16 f'8 a'16 c''16~} 
      | \tuplet 6/4 {c''16 dis''16 e''8. d''16~^\markup{\left-align \small vib}} d''4 r4 r8. c''16~ 
      | c''16\glissando  des''16 c''16 bes'16 a'8 g'8 ges'8 es'8~ es'16 c'8 cis'16 
      | \tuplet 3/2 {d'4 g'8} bes'8 d''8 \tuplet 3/2 {a'4 g'8~^\markup{\left-align \small vib}} g'4~ 
      | g'8 d'8 \tuplet 3/2 {es'8 g'8 a'8} d''8 des''8~ des''16 c''8 b'16 
      | bes'8. d'16 f'8 a'8 \tuplet 3/2 {g'8\glissando  aes'8 e'8} d'16 c'8 bes16 
      | \tuplet 3/2 {a4 c'8} d'8 f'4.^\markup{\left-align \small vib} r4\bar  ".."
    }
    >>
>>    
}
