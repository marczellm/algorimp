\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I'm Coming Virginia"
  composer = "Sidney Bechet"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | f2 c2:7 
      | f4 f4:7 bes4 bes4:min | f1 | d2:min a2:7 | d2:min f2:7 | bes2 a4:7 aes4:7 | g2:7 c2:7 | f1 | s2 c2:7 
      | f4 f4:7 bes4 bes4:min | f2 d2:min7 | a2:min e2:7 | a1:min | f2:dim e2:7 | c2:min6/es d2:7 | bes2:min/des c2:7 | f2 f2:7 
      | bes1 | s1 | bes1:min | c1:7 | g1:7 | c2:7 s2 | f1|
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


      \tempo 4 = 193
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 c''8 d''8 f''16 a''16~^\markup{\left-align \small vib} 
      \bar "||" \mark \default a''1~ 
      | a''8 f''8 g''8 a''8 g''8 f''8 \tuplet 6/4 {d''4 gis'16 a'16~^\markup{\left-align \small vib}} 
      | a'1 
      | c''8 a'8 f'8 e'8 es'8 d''8 a'8\bendAfter #+4  c''8~^\markup{\left-align \small vib} 
      | c''4. bes'8 a'8. g'16~ g'8 a'8~ 
      | a'8 g'4.^\markup{\left-align \small vib} f'8 d'8 c'8. d'16 
      | f'4.^\markup{\left-align \small vib} a'8 r4 f'8 a'8~ 
      | a'8 f'8 a'4 \tuplet 3/2 {e'4 f'8} a'8 c''8 
      \bar "||" \tuplet 3/2 {f''4 d''8~} d''8 f''8~^\markup{\left-align \small vib} f''4. r8 
      | r4 r8 c''8 d''8 e''8 f''8 g''8 
      | e''2^\markup{\left-align \small vib} c''8 a'8 e'4 
      | e'8 a'8 c''8 d''8 e''8\bendAfter #+4  dis''16 e''16~ e''8 a'8 
      | \tuplet 3/2 {d''4 d''8} d''8^\markup{\left-align \small vib} d''4 dis''8 \tuplet 3/2 {e''4 c''8~} 
      | c''8 c''8 \tuplet 3/2 {c''4 c''8~} c''8 cis''8 d''8 bes'8~^\markup{\left-align \small vib} 
      | bes'8 r8 r4 f''8 d''8 \tuplet 3/2 {bes'4 a'8~} 
      | a'4. f'8 a'4 a'4 
      \bar "||" g'4. g'8~^\markup{\left-align \small vib} g'4. r8 
      | r4 r8 f'8 a'8 f'8 a'8 g'8~^\markup{\left-align \small vib} 
      | g'4. g'8~^\markup{\left-align \small vib} g'2~ 
      | g'4. cis''8 d''8 f''8 d''8. e''16 
      | f''2 \tuplet 3/2 {d''4 a'8~^\markup{\left-align \small vib}} a'4 
      | c''8 e''8 c''8 b'8 bes'8. a'16~ a'8 f'8~^\markup{\left-align \small vib} 
      | f'4. f'8~ f'4. f'8~^\markup{\left-align \small vib} 
      | f'4. a'8 r2\bar  ".."
    }
    >>
>>    
}
