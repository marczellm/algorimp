\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "You Stepped Out of a Dream (Solo 2)"
  composer = "Don Ellis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key d \major
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
      
      | d1:maj | d1:maj | es1:maj | s1 | f1:7 | s1 | bes1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | b1:min7 | e1:7 | f2:min7 bes2:7 | e2:min7 a2:7 
      | d1:maj | s1 | es1:maj | s1 | f1:7 | s1 | aes1:7 | \time 5/4 g1:7 s4 
      | e1:min5-7 | a1:7 | fis1:min7 | b1:7 | e1:min7 | a1:7 | d1:maj | s2 r2|
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


      \tempo 4 = 169
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | gis'8. e'4. d'8 e'16~ e'8 gis'8 
      | a'8. g'16~ g'4 es'8 f'4 r8 
      | r1 
      | r4 r8 f'8 \tuplet 3/2 {aes'8 c''8 d''8} \tuplet 3/2 {dis''4 e''8} 
      | f''8 f''8~ f''2~ f''8 fis''8~ 
      | fis''8 f''16 dis''16 e''4 \tuplet 3/2 {d''8 cis''8 b'8} cis''4 
      | \tuplet 3/2 {a'8 g'8 f'8} e'4~ \tuplet 6/4 {e'4~ e'16 es'16~} es'8 bes8 
      | \tuplet 6/4 {d'4 a16 cis'16~} cis'8 d'4. d''8. ais'16 
      | \tuplet 3/2 {c''4 a'8} r4 r8 a'8~ \tuplet 6/4 {a'16 d''8. d''16 d''16} 
      | d''8 d''16 d''16 \tuplet 3/2 {d''4\glissando  d'8~} d'4 e'4 
      | r4 r8 e'8 d'8 e'8 \tuplet 3/2 {g'4 a'8} 
      | \tuplet 3/2 {ais'4 d''8~} d''4..\glissando  cis''16 r4 
      | r2 fis'16 d'8. \tuplet 3/2 {e'4 d'8~} 
      | d'8 e'8 e'16\bendAfter #+4  f'8.~ f'4 e'8. d'16 
      | \tuplet 3/2 {f'4 fis'8~} fis'4 r4 r8 dis'16 fis'16~ 
      \bar "||" fis'8 g'16 gis'16~ gis'2.~ 
      | gis'2...\glissando  fis'16 
      | e'16 gis'8 a'16~ a'4\glissando  g'4 r4 
      | r4 r8. f'16 es'8 d'8~ \tuplet 3/2 {d'8 es'8 f'8~} 
      | \tuplet 3/2 {f'8 g'8 a'8} bes'16 c''16 d''16 c''16~ c''2 
      | \tuplet 3/2 {bes'8 a'8 bes'8} \tuplet 3/2 {a'8 g'8 f'8~} f'4 r4 
      | r8 a'8 d''8.\bendAfter #+4  cis''16 d''2~ 
      | \time 5/4 d''2. c''16 d''8 f''16 es''8 d''8~ 
      | d''2~ d''8 c''8 \tuplet 3/2 {bes'4 a'8~^\markup{\left-align \small vib}} 
      | a'4. r8 r4 \tuplet 6/4 {a'8 ais'8. cis''16~} 
      | cis''4. cis''8~ cis''2 
      | r2 e''4. d''8 
      | fis'8 a'2.. 
      | fis''2. e''8. a'16~ 
      | a'8 a'2..~ 
      | a'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
