\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Two's Blues"
  composer = "Chet Baker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \minor
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
      | g1:min7 
      | g1:min7 | s1 | s1 | s1 | c1:min7 | s1 | g1:min7 | s1 
      | es1:13-.9+11+ | d1:7 | g1:min7 | d2:7 c2:min7 | g1:min7 | s1 | s1 | s1 
      | c1:min7 | s1 | g1:min7 | s1 | es1:13-.9+11+ | d1:7 | g1:min7 | d1:7 
      | g1:min7 | s1 | s1 | s1 | c1:min7 | s1 | g1:min7 | s1 
      | es1:13-.9+11+ | d1:7 | g1:min7 | d1:7 | g1:min7 | s1 | s1 | s1 
      | c1:min7 | s1 | g1:min7 | s1 | es1:13-.9+11+ | d1:7 | g1:min7 | d1:7 
      | g1:min7|
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


      \tempo 4 = 202
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 d''8 g''8 d''16 c''16~ 
      \bar "||" \mark \default c''8 c''8~ c''16 bes'8 d''16~ d''2~ 
      | d''4. bes'4 bes'8 \tuplet 3/2 {a'4 bes'8~} 
      | bes'4 g'4 g'8. f'16~ f'8 g'8~^\markup{\left-align \small vib} 
      | g'4 r2 r8 es''8 
      | es''4 f''4 g''2~ 
      | g''4 f''8 es''8 d''4 c''8. d''16~^\markup{\left-align \small vib} 
      | d''4. c''8 c''4 bes'8. c''16~ 
      | c''4. bes'8 bes'4 bes'4 
      | b'1~ 
      | b'4\glissando  bes'4 bes'4 g'8. f'16 
      | g'4.^\markup{\left-align \small vib} g'4 r8 r4 
      | r1 
      \bar "||" \mark \default r8 g'8 bes'8 c''8 \tuplet 3/2 {c''4 d''8~} d''8 d''8~ 
      | d''2. c''8 c''8 
      | c''4 a'8. a'16~ a'4 f'4 
      | f'4 f'8. d'16 r2 
      | r8 es'8 f'4 g'4. es'8 
      | d'8 r8 r2 r8 c'8 
      | bes8 c'8 d'8 bes8 g4 \tuplet 3/2 {a4 g8~} 
      | g4. a8 bes8 c'8 d'8 f'8 
      | es'8 f'8 r2 fis'8 r8 
      | r8 a'8 c''8 r8 r8 f''4. 
      | d''2 \tuplet 6/4 {g''4~ g''16 des''16~} des''8 c''8~ 
      | c''2.. bes'8 
      \bar "||" \mark \default \tuplet 3/2 {c''4 d''8~} d''4~ \tuplet 6/4 {d''16 bes'4 c''16~} c''4~ 
      | c''16 g'8 bes'16~ bes'4 c''4 d''4 
      | f''4 d''4 d''8. c''16~ c''8 d''8~ 
      | d''1 
      | es''4 f''4 \tuplet 3/2 {d''4 es''8~} es''8 c''8~^\markup{\left-align \small vib} 
      | c''4. d''8 bes'8 r8 r8 c''8 
      | a'4 g'4 g'8. f'16~ f'8 g'8~^\markup{\left-align \small vib} 
      | g'4 r2. 
      | r2 gis'8 bes'8 c''8 es''8~ 
      | es''8 f''4 g''8~ g''4. f''8~ 
      | f''16 f''8 d''16~ d''8 d''4.^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" \mark \default r8 a''8 r4 f''2 
      | d''2 bes'4 d''8 f''8 
      | a''4 f''4 d''4. es''8~^\markup{\left-align \small vib} 
      | es''4. d''8 cis''4 d''8 f''8~ 
      | f''4. es''8 c''4.^\markup{\left-align \small vib} d''8 
      | es''8 g''8 \tuplet 3/2 {f''8 e''8 es''8} d''8 c''8 bes'8 a'8 
      | bes'8 c''8 d''8 bes'8 r4 r8 f'8 
      | a'16 bes'16 aes'16 fis'16 g'8 a'8 bes'8 c''8 d''8 f''8 
      | es''8 f''8 g''8 r8 r2 
      | r4 r8. fis''16~ fis''4 es''4 
      | d''1 
      | \tuplet 3/2 {des''8 c''8 bes'8} c''2~ c''8 bes'8 
      \bar "||" \tuplet 3/2 {c''4 bes'8~} bes'8 g'8~ g'2~ 
      | g'2.. r8\bar  ".."
    }
    >>
>>    
}
