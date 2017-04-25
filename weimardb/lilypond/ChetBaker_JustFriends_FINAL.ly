\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Just Friends"
  composer = "Chet Baker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \major
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
      
      | c1:maj | c1:maj | c1:min7 | f1:7 | s1 | s1 | bes1:min7 | es1:7 
      | a1:min7 | d1:7 | b1:min7 | e1:min7 | a1:7 | s1 | a1:min7 | d2:7 des2:7 
      | c1:maj | s1 | c1:min7 | f1:7 | g1:maj | s1 | bes1:min7 | es1:7 
      | a1:min7 | d1:7 | b1:min7 | e1:min7 | a1:7 | a2:min7 d2:7 | g1:6 | d2:min7 g2:7 
      | c1:maj | s1 | c1:min7 | f1:7 | g1:maj | s1 | bes1:min7 | es1:7|
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


      \tempo 4 = 190
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r16 e'8 g'16 \tuplet 3/2 {a'4 b'8~} b'4 
      | \tuplet 3/2 {e'4 g'8} \tuplet 3/2 {a'4 ais'8~} ais'4 \tuplet 3/2 {e'4 g'8} 
      | a'8. a'16 bes'4 a'8 g'8 \tuplet 3/2 {f'4 g'8} 
      | f'4 \tuplet 3/2 {es'4 bes8~^\markup{\left-align \small vib}} bes4. c'16 d'16~ 
      | d'8 e'4.^\markup{\left-align \small vib} fis'8 r8 r4 
      | r2 \tuplet 3/2 {a'4 fis'8} g'8 a'8 
      | bes'8 c''8 des''8 es''8 c''8 bes'8 r4 
      | r1 
      \bar "||" a'4 b'4 \tuplet 3/2 {c''4 d''8~} d''8 e''8~ 
      | \tuplet 6/4 {e''4~ e''16 g''16~} g''8 fis''4.^\markup{\left-align \small vib} \tuplet 3/2 {e''4 d''8~} 
      | d''2 d''8 es''16 d''16 cis''8 r8 
      | r4 \tuplet 3/2 {cis''8 d''4~} d''8. b'16~ \tuplet 6/4 {b'8 g'8. fis'16~} 
      | fis'8 e'4.^\markup{\left-align \small vib} fis'8 dis'8 e'8 fis'8~ 
      | \tuplet 3/2 {fis'8 g'8 a'8} fis'8 g'8 \tuplet 3/2 {a'4 ais'8} b'8 d''8 
      | \tuplet 3/2 {c''4 e'8} g'8 b'8 a'8 g'8 e'8 c'8 
      | b8 r8 r8 b8 d'4 g'4 
      \bar "||" e'4.^\markup{\left-align \small vib} a'8 r2 
      | a'2^\markup{\left-align \small vib} g'8 a'8 b'8 d''8 
      | f''4 es''4 d''4 c''4 
      | bes'4 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} f'4 \tuplet 3/2 {es'4 d'8~^\markup{\left-align \small vib}} 
      | d'2 e'8 r8 r8. fis'16~ 
      | fis'8 d'8 dis'8 e'8 r4 r8 e'8 
      | f'4 \tuplet 3/2 {es'8 bes4} \tuplet 3/2 {d'4 des'8} c'8 es'8 
      | b4 \tuplet 3/2 {g4 a8} r4 r8 a8~ 
      \bar "||" a4 g4 \tuplet 3/2 {g'4 e'8} r4 
      | r8 fis'4. dis'8 e'8 fis'8 dis'8 
      | e'8 fis'8 g'8 gis'16 a'16 b'8 a'8 g'8 e'8 
      | a'8 fis'8 gis'16 a'16 ais'16 b'16~ b'8 d''8 e''4 
      | fis''8\glissando  g''8~ g''2 \tuplet 3/2 {e''4 d''8~} 
      | d''4 r4 e''8 d''8 b'8 a'8 
      | g'8 a'8 fis'4 g'4 r4 
      | \tuplet 3/2 {g'4 a'8} \tuplet 3/2 {fis'4 g'8} r2 
      \bar "||" \mark \default \tuplet 3/2 {a'4 b'8} g'8 a'4. r4 
      | r8 d''4 b'8 d''8 b'8 a'8 g'8 
      | b8 es'8 a8 b8~ b2~ 
      | b2. c'8 dis'8 
      | e'8 fis'8 d'8 e'4 r8 r4 
      | r8 a'8 a'8 a'4 fis'8 \tuplet 3/2 {e'4 d'8} 
      | \tuplet 3/2 {bes4 des'8} b8 c'8 c'8 d'8 dis'8 e'8~ 
      | e'8 fis'8 dis'8 e'4 fis'8 g'8 a'8\bar  ".."
    }
    >>
>>    
}
