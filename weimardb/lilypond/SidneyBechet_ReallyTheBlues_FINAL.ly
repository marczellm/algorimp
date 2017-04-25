\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Really the Blues"
  composer = "Sidney Bechet"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key bes \major
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
      | s4 bes4:7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | s1 | bes2:7 es2:7 | bes2:7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | f1:7 | s1 | bes2:7 es2:7 | bes1:7|
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


      \tempo 4 = 71
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 f''8 f''8 cis''8 d''8 
      \bar "||" \mark \default es''16\glissando  f''8.~^\markup{\left-align \small vib} f''8~ f''32 d''32 c''32 bes'32 f'4...^\markup{\left-align \small vib} f''32\bendAfter #+4  
      | g''2~^\markup{\left-align \small vib} g''8 d''16\glissando  es''16~ es''16\glissando  d''16\glissando  es''16 d''16\glissando  
      | es''16\glissando  d''16\glissando  es''16\glissando  d''16\glissando  \tuplet 5/4 {es''16\glissando  d''16\glissando  es''16\glissando  d''16\glissando  es''16~} es''4\glissando  \tuplet 3/2 {d''8\glissando  es''8\glissando  d''8} 
      | bes'16 aes'8.~^\markup{\left-align \small vib} aes'4 fis''16\glissando  g''16 fis''16\glissando  g''16 fis''32\glissando  g''16 g''16 f''32 g''32 f''32~^\markup{\left-align \small vib} 
      | f''8~ f''32 e''32 es''32 d''32 bes'32 g'32 ges'32 e'32 es'32 d'32 des'32 g'32~^\markup{\left-align \small vib} g'4~ g'16 g'16 bes'16 c''16\glissando  
      | \tuplet 6/4 {des''16 bes'16 c''16 bes'16 c''16\glissando  des''16} bes'32 c''32 bes'32 c''32\glissando  des''32 bes'32 c''32 bes'32 \tuplet 12/8 {c''16.\glissando  des''8\glissando  c''32 bes'16. f'32} es'16 cis'16 d'16 bes'16 
      | bes'4~^\markup{\left-align \small vib} bes'16. g'32 f'32 cis'32 d'32 f'32~^\markup{\left-align \small vib} f'4. g'16 bes'16~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {bes'4~ bes'16 c''16} cis''16 d''16 es''16 d''16 \tuplet 5/4 {cis''16 d''16 es''16 d''16 cis''16} d''16 d''16\glissando  es''8 
      | des''32 es''32 d''32 c''32 bes'32 a'32 g'32 ges'32~ \tuplet 6/4 {ges'16 a'8 g'16 ges'16 f'16} \tuplet 5/4 {e'16 es'16 c'16 es'16 f'16} a'16 b'16\bendAfter #+4  d''8~^\markup{\left-align \small vib} 
      | d''4 \tuplet 6/4 {a'8 f'16 e'8 es'16~^\markup{\left-align \small vib}} es'4 \tuplet 3/2 {c''8\bendAfter #+4  d''8 d''8} 
      | bes'4^\markup{\left-align \small vib} \tuplet 6/4 {d'16 f'16 g'16 bes'16 des''16\glissando  c''16\glissando } des''4~^\markup{\left-align \small vib} \tuplet 12/8 {des''32 bes'16 g'16 f'16 cis'32 d'16. bes'32~} 
      | bes'8. d'16 \tuplet 3/2 {f'4 f''8~^\markup{\left-align \small vib}} f''8 r8 r8. bes'16 
      \bar "||" \mark \default bes''1~^\markup{\left-align \small vib} 
      | bes''4~ \tuplet 5/4 {bes''16 g''16 f''16 g''16\glissando  aes''16~^\markup{\left-align \small vib}} aes''4 f''32 d''32 bes'32 e''32 c''32\glissando  cis''32\glissando  d''16~^\markup{\left-align \small vib} 
      | d''4 bes'16 f'16 aes'8~^\markup{\left-align \small vib} aes'4. r8 
      | r8 f''16 g''16~^\markup{\left-align \small vib} g''2 \tuplet 5/4 {cis''16 d''16 d''16 f'16 f''16} 
      | \tuplet 3/2 {d''8\glissando  es''8\glissando  d''8~} d''16\glissando  es''16\glissando  d''16 bes'16 g'16 f'16 es'4.^\markup{\left-align \small vib} 
      | c''16\glissando  des''8 c''16 \tuplet 6/4 {bes'16 g'16 f'16 e'16 es'8~^\markup{\left-align \small vib}} es'8. f'16 \tuplet 6/4 {cis'16 d'16 g'16 d'16 f'8~^\markup{\left-align \small vib}} 
      | f'4. \tuplet 6/4 {f'16 g'16 bes'16} \tuplet 7/8 {c''32 d''32 g''32 d''32 f''32 d''32 c''32} \tuplet 6/4 {bes'16 g'16 f'16 cis'16 d'16 g'16} 
      | f'8.^\markup{\left-align \small vib} c''16~ c''16 d''16 es''16 d''16 \tuplet 5/4 {cis''16 d''16 es''16 d''16 cis''16} d''16 cis''16\glissando  d''16\glissando  es''16~^\markup{\left-align \small vib} 
      | es''16. d''32 es''32 d''32 c''32 a'32 f'16 e'16 es'8^\markup{\left-align \small vib} e'4 \tuplet 6/4 {r8 f'16 fis'16 g'16 bes'16} 
      | \tuplet 6/4 {c''16\glissando  cis''16\glissando  d''4~} \tuplet 5/4 {d''16 bes'16 g'16 d'16 f'16~^\markup{\left-align \small vib}} f'4. g'8 
      | bes'16 cis''16\glissando  d''8~^\markup{\left-align \small vib} \tuplet 6/4 {d''8 bes'16 f'16 d'16 es'16~^\markup{\left-align \small vib}} es'8 c''8~^\markup{\left-align \small vib} \tuplet 6/4 {c''8 es'16 c'16 cis'16 d'16} 
      | bes'4.^\markup{\left-align \small vib} des''8 r2\bar  ".."
    }
    >>
>>    
}
