\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "You'd Be So Nice to Come Home to"
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
      
      | g1:min7 | a2:7 d2:7 | g1:min7 | s1 | f1:min7 | bes1:7 | es1:maj | s1 
      | a1:min5-7 | d1:7 | ges1:dim7 | g1:min7 | e1:min5-7 | a1:7 | a1:min5-7 | d1:7 
      | g1:min7 | a2:7 d2:7 | g1:min7 | s1 | f1:min7 | bes1:7 | es1:maj | s1 
      | e2:min5-7 a2:7 | bes1:maj | a2:min5-7 d2:7 | g2:min7 e2:min5-7 | bes2:maj g2:min7 | c2:min7 f2:7 | bes1:maj | a2:min5-7 d2:7 
      | g1:min7 | a2:7 d2:7 | g1:min7 | s1 | f1:min7 | bes1:7 | es1:maj | s1 
      | a1:min5-7 | d1:7 | ges1:dim7 | g1:min7 | e1:min5-7 | a1:7 | a1:min5-7 | d1:7 
      | g1:min7 | a2:7 d2:7 | g1:min7 | s1 | f1:min7 | bes1:7 | es1:maj | s1 
      | e2:min5-7 a2:7 | bes1:maj | a2:min5-7 d2:7 | g2:min7 e2:min5-7 | bes2:maj g2:min7 | c2:min7 g2:7 | bes1:maj | a2:min5-7 d2:7 
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


      \tempo 4 = 225
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 c''8 r4 c''4 c''4 
      | c''4 c''8. a'16 \tuplet 3/2 {c''4 d''8} r4 
      | r8 g'4. g'4.^\markup{\left-align \small vib} r8 
      | r1 
      | aes'8 r8 r4 r8 c'8 es'8 g'8 
      | f'8 es'8 d'8 f'8 aes'8 c''8 \tuplet 3/2 {bes'4 aes'8} 
      | g'4 r2 bes4 
      | c'4.^\markup{\left-align \small vib} r8 r2 
      | r4 r8. a16~ a8 bes8 c'8. es'16 
      | d'8 r8 r4 r8. fis'16~ fis'8 a'8 
      | g'4 bes'8 d''4 c''8 r4 
      | r2 r8 f''4 f''8 
      | e''4 d''8. des''16~ des''8 bes'8 a'8 g'8~ 
      | \tuplet 3/2 {g'8 f'8 es'8} e'2 g'8 bes'8~ 
      | bes'16 bes'8 c''16~ c''8 a'8~^\markup{\left-align \small vib} a'4. bes'8 
      | c''8 d''8 es''8 c''8 a'8 g'8 fis'8 a'8 
      \bar "||" \mark \default es''8 es''8 d''8 c''8 bes'8 c''8 d''8 bes'8 
      | a'8 g'8 fis'8 es'8 \tuplet 3/2 {d'8 e'8 c'8} bes8 a8 
      | \tuplet 3/2 {g8 a16 r8.} r4 r8 fis8 g8 a8 
      | bes8 c'8 d'8 f'8 es'8 f'8 g'8 bes'8 
      | d''8 es''4. c''4. aes'8 
      | f'4 aes'8 es''8 d''8. bes'16~ bes'8 c''8~ 
      | c''4 g'8. bes'16~^\markup{\left-align \small vib} bes'4 r4 
      | r1 
      | r2 d''2~ 
      | d''2\glissando  a''8 r8 r4 
      | r1 
      | d''2.\glissando  g'8 g'8 
      | bes'8 bes'8 c''4 d''8. g'16~ g'4 
      | bes'4.^\markup{\left-align \small vib} c''8 r4 r8 bes'8 
      | a'8 g'8 f'8 ges'16 es'16 d'8 f'8 a'8 c''8 
      | bes'8 d''8 c''8 bes'8 a'8 g'8 fis'8 a'8 
      \bar "||" \mark \default g'8 g'8 a'8 a'8 bes'8 bes'8 c''8. d''16~ 
      | d''1 
      | des''8 c''4. c''8 bes'4. 
      | bes'8. c''16~ c''4 c''4 g'4 
      | g'4..^\markup{\left-align \small vib} es'16~ es'8. c'16~ c'8 aes8~ 
      | aes4 \tuplet 3/2 {c'8 es'8 g'8} f'8 es'8 d'8 c'8 
      | bes8 aes8 f8 fis8 g8 aes8 bes8 c'8 
      | d'8 f'8 es'8 d'8 es'8 g'8 r4 
      | r2. fis'8 g'8 
      | a'8 bes'8 c''8 d''8 es''8 c''8 a'8 bes'16 g'16 
      | fis'8 a'8 c''8 es''8 d''8 bes'8 a'8 c''8 
      | bes'8 a'16 g'16 ges'8 a'8 g'8 a'8 bes'8 c''8 
      | d''8 f''8 e''8 e''16 d''16 cis''8 r8 r4 
      | r8 d''8 e''8 fis''8 r2 
      | r2 g''4 \tuplet 3/2 {g''4 ges''8~} 
      | ges''8 fis''8 c''2~ c''8 es''8 
      \bar "||" \mark \default d''4 f''8 a''4 des''8 des''4 
      | c''4.^\markup{\left-align \small vib} bes'16 c''16~ c''8 d''4 bes'8~ 
      | bes'8 r8 r8 g'4. r4 
      | r1 
      | r8 es''4 c''8 gis'8 r8 r8 a'16 f'16 
      | e'8 d'8 es'8 r8 r2 
      | d'8 f'8 aes'8 c''8 bes'8 bes'16 g'16 f'8 es'8 
      | d'8 f'8 es'8 d'8 es'8 g'8 e'8 es'8 
      | e'8 g'8 \tuplet 3/2 {f'4 e'8} f'8 a'8 g'8 fis'8 
      | g'8 bes'8 a'8 gis'8 a'8 c''8 bes'8 a'8 
      | bes'8 c''8 d''8 es''8 d''8 c''8 \tuplet 3/2 {bes'4 a'8} 
      | \tuplet 3/2 {c''4 a'8} bes'8 c''8 d''8 bes'8~ \tuplet 6/4 {bes'16 g'8. es'16 e'16} 
      | f'8 d'16 e'16~ \tuplet 3/2 {e'8 g'8 bes'8~} bes'8 d''8 c''8 bes'8 
      | a'16 bes'16 a'16 g'16~ g'8 f'8 r4 r8 es'8 
      | d'8 f'8 a'4 c''4. bes'8 
      | c''8. d''16~ d''8 bes'4. g'4~ 
      \bar "||" g'4 f'4 g'4. r8\bar  ".."
    }
    >>
>>    
}
