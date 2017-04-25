\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Singin the Blues"
  composer = "Bix Beiderbecke"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key es \major
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
      | s2 r4 s4 
      | f1:min7 | f2:min7 bes2:7 | es1 | s4 aes4 es4 es4:dim | bes1:7 | s1 | es1 | s2 es4:dim es4 
      | g2.:7 d4:min7 | g2:7 c4:dim f4:dim | c1:7 | s1 | c2:min c2:min7 | f1:7 | bes1:7 | s2. es4:dim 
      | f1:min7 | s2 bes2:7 | es1 | s2 f4:dim es4:dim | e1:dim | s2 c2:7 | f2.:min c4:7 | f2:min c4:7 f4:min 
      | f1:min7 | es1:dim | es1 | e2:dim c2:7 | f1:7 | s2 bes2:7 | es1|
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


      \tempo 4 = 134
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 bes'4 g'8 
      \bar "||" \mark \default c''8 es''8 \tuplet 6/4 {aes'8. g'8 f'16~^\markup{\left-align \small vib}} f'4.. g'16~ 
      | g'8 c''8 aes'8 g'8 ges'4.^\markup{\left-align \small vib} bes'8 
      | g'8 es''8 \tuplet 6/4 {bes'8. b'8 c''16~} c''4 aes'8 fis'8 
      | g'4.^\markup{\left-align \small vib} r8 r8. b'16 c''8 aes'8 
      | \tuplet 6/4 {c''4~ c''16 f'16~^\markup{\left-align \small vib}} f'4. e'8 es'8 bes8 
      | d'4 c''8 aes'8 f'8 bes'8 fis'4 
      | g'4.^\markup{\left-align \small vib} \tuplet 6/4 {ges'8 bes'16~} bes'8 es''8 \tuplet 6/4 {c''8. g'8 bes'16~^\markup{\left-align \small vib}} 
      | bes'4 r4 r8 ges'4 ges'8 
      \bar "||" d''4..^\markup{\left-align \small vib} bes'16~ bes'4\bendAfter #+4  \tuplet 3/2 {b'4 a'8~^\markup{\left-align \small vib}} 
      | a'4. f'8~^\markup{\left-align \small vib} f'4. d'8~^\markup{\left-align \small vib} 
      | d'8 r8 r4 r16 cis''8 d''16~ \tuplet 6/4 {d''8. a'8 bes'16~} 
      | \tuplet 6/4 {bes'8. b'8 c''16~} c''8 a'8 bes'4^\markup{\left-align \small vib} g'8 es'8 
      | d'4.^\markup{\left-align \small vib} f'4.^\markup{\left-align \small vib} r4 
      | \tuplet 6/4 {g'4~ g'16 bes'16~} bes'8 g'8 es'4^\markup{\left-align \small vib} r4 
      | \tuplet 7/8 {r16. d''16 c''32 bes'32~} \tuplet 6/4 {bes'16 aes'16 f'8 d'16 c'16~} c'8 bes'8 bes8 d'8 
      | f'4 f'4 f'4^\markup{\left-align \small vib} r4 
      \bar "||" \tuplet 6/4 {r4 d''16\bendAfter #+4  a''16~} a''8 es''8 \tuplet 3/2 {c''4 aes'8} \tuplet 3/2 {g'4 f'8} 
      | bes'4 bes'4^\markup{\left-align \small vib} bes'4^\markup{\left-align \small vib} ges'8 c''8 
      | r4 bes'8 g'8 \tuplet 3/2 {aes'4 c'8} d'8 f'8 
      | es'4^\markup{\left-align \small vib} r4 r8 bes'16. c''32~ \tuplet 3/2 {c''8 des''8 c''8} 
      | bes'4^\markup{\left-align \small vib} fis'16 g'16 aes'16 a'16 c''4.^\markup{\left-align \small vib} \tuplet 6/4 {bes'8 d'16~} 
      | d'4. es'8 e'4...^\markup{\left-align \small vib} f'32~ 
      | f'8 aes'8 c''8 aes'8 g'8 bes'16. d'32~ d'8 e'8 
      | f'4..^\markup{\left-align \small vib} c'16 \tuplet 3/2 {e'4 c'8} f'4 
      | es''2^\markup{\left-align \small vib} e'8 f'4.^\markup{\left-align \small vib} 
      | es''8 c''8 a'8 ges'8 es'8 c'8 d''8 c''8 
      | bes'2^\markup{\left-align \small vib} \tuplet 3/2 {fis'8 g'8 aes'8} a'16 bes'16 b'16 c''16~^\markup{\left-align \small vib} 
      | c''4 r4 \tuplet 6/4 {r8. fis'8 g'16~} g'16 ges'16 ges'16\bendAfter #+4  f'16~ 
      | f'8 es'4.^\markup{\left-align \small vib} fis'8 g'8 \tuplet 3/2 {aes'8 a'8 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 fis'8 g'8~^\markup{\left-align \small vib} g'4~ g'16 c'16 f'8~ 
      | f'4 es'2.~^\markup{\left-align \small vib} 
      | es'4. r8 r2\bar  ".."
    }
    >>
>>    
}
