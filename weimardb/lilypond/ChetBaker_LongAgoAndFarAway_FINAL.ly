\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Long Ago and Far Away"
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
      | g1:6 | s1 
      | g2:6 e2:min7 | a2:min7 d2:7 | g2:maj e2:min7 | a2:min7 d2:7 | g2:6 e2:min7 | a2:min7 d2:7 | g2:6 e2:7 | a2:min7 d2:7 
      | bes2:6 g2:min7 | c2:min7 f2:7 | bes1:maj | a1:7 | d1:maj | b1:min7 | a1:min7 | d1:7 
      | g2:6 e2:min7 | a2:min7 d2:7 | g2:maj e2:min7 | a2:min7 d2:7 | g2:6 e2:min7 | a2:min7 d2:7 | g2:6 e2:7 | a2:min7 c2:7 
      | d1:min7 | g1:7 | c1:maj | c2:min7 f2:7 | g2:6 bes2:dim | a2:min7 d2:7 | g1:6 | a2:min7 d2:7|
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


      \tempo 4 = 178
      \set Score.currentBarNumber = #-1
     
      | r8 b'8 \tuplet 6/4 {d''4~ d''16 fis'16~} fis'8 a'8 b'4 
      | d''4 c''8 bes'8 g'8 f'8 es'4 
      \bar "||" \mark \default d'4.^\markup{\left-align \small vib} r8 r2 
      | r1 
      | r2 e'8 d'8 r4 
      | fis'8 e'8 dis'8 e'8 fis'8 g'8 a'8 ais'8 
      | b'8 d''8 e''8. fis''16~ fis''8\glissando  g''4.~ 
      | g''8. fis''16 g''8 fis''8 e''8 es''8 d''8 g'8 
      | a'8 c''8 b'8 gis'8 b'4\bendAfter #-4  r4 
      | r2 r8 ais'4 cis''16\glissando  d''16~ 
      \bar "||" d''4 bes'8 g'8 es'8 g'8 ais'4 
      | b'16\glissando  c''8. a'8 f'8 d'8 f'8 a'8 a'16\glissando  bes'16~ 
      | bes'8. g'16~ g'8 es'8 c'8 d'8 e'8 f'8 
      | fis'4 a'4 fis'4 e'8. a16~^\markup{\left-align \small vib} 
      | a4 r2. 
      | r4 r8 c'8 d'8 des'8 c'8 e'8 
      | b8 a8 c'8 b8 c'8 d'8 \tuplet 3/2 {f'4 d'8} 
      | dis'8 g'8 ais'8 d''8 f''8 dis''8 fis'8 a'8 
      \bar "||" cis''8\glissando  d''4 d''4.^\markup{\left-align \small vib} d''4~^\markup{\left-align \small vib} 
      | d''8 c''4 b'8 c''8 b'8 a'4 
      | b'4. b'8~^\markup{\left-align \small vib} b'4. b'8~^\markup{\left-align \small vib} 
      | b'4 a'8 g'8 a'8 g'8 fis'8 e'8~ 
      | e'8 fis'8 d'8 e'4 r8 r8 fis'16\glissando  g'16~ 
      | g'4 e'8. fis'16~ fis'8. a'16~ a'8. fis'16~ 
      | fis'4 g'8. b'16~ \tuplet 6/4 {b'4~ b'16 e''16~} e''8 d''8~^\markup{\left-align \small vib} 
      | d''8 r8 r2 r8 g''8~ 
      \bar "||" g''8 f''8~ \tuplet 6/4 {f''8. c''8 e''16~} e''8 d''4 aes''8~ 
      | aes''4 g''8 f''8 e''8 es''8 r4 
      | r4 d''8. b'16 c''8 d''8 dis''8 f''8 
      | \tuplet 6/4 {g''8. aes''16 g''16 fis''16} f''8 es''8 d''8 c''8 b'8 a'8 
      | gis'8 b'8 d''8 f''8 f''16 e''8. b'8 c''8 
      | cis''8\glissando  d''4 fis''8 c''8\bendAfter #+4  d''4.~ 
      | d''8 g''8 c''8 d''4. \tuplet 3/2 {g''4 cis''8} 
      | d''4. c''16 cis''16 d''16 c''16 ais'8 g'8 g'8\bendAfter #-4 \bar  ".."
    }
    >>
>>    
}
