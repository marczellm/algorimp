\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Night and Day (Solo 2)"
  composer = "Zoot Sims"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | s2 c2:7 
      | f1:maj | f1:maj | d1:maj | s1 | f1:maj | s1 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:maj | e2:7 a2:7 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:maj | s1 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:maj | d1:7 
      | f1:maj | bes1:maj | fis2:min7 f2:dim | e2:min7 a2:7 | d1:6|
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


      \tempo 4 = 218
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 b8 d'4 
      \bar "||" \mark \default es'8 f'4. r2 
      | r8 b16 bes16 gis8 a8 b4 e'8 d'8 
      | f'8\glissando  fis'4 e'8 d'8 a8~ a16 f8 fis16~ 
      | fis16 a8 d'16~^\markup{\left-align \small vib} d'2 r4 
      | r4 r16 f'8 g'16 a'8 b'8 c''8 a'8 
      | b'8 g'8 a'8 fis'8 g'8 bes'16 g'16 e'4 
      | fis'4.^\markup{\left-align \small vib} d'8 e'4\glissando  fis'4~^\markup{\left-align \small vib} 
      | fis'4. d'8 e'4 d'8. e'16~^\markup{\left-align \small vib} 
      \bar "||" e'4.. d'16~ d'8 b8 fis4~^\markup{\left-align \small vib} 
      | fis8 r8 r2 r8. e'16~ 
      | e'8. e'16~ e'8 d'8 cis'8 a8~ \tuplet 3/2 {a8 fis8 d8} 
      | f2^\markup{\left-align \small vib} e8 d8~ d16 e8 d16 
      | e2^\markup{\left-align \small vib} r4 \tuplet 3/2 {g4 b8~^\markup{\left-align \small vib}} 
      | b4. g8 \tuplet 3/2 {a8 ais4} \tuplet 3/2 {dis'8\glissando  f'4} 
      | e'4.^\markup{\left-align \small vib} d'8~ d'16 a8 fis16 e8 d'8~^\markup{\left-align \small vib} 
      | d'4. r8 r2 
      \bar "||" \mark \default a'4 \tuplet 3/2 {c''4 a'8} \tuplet 3/2 {c''4 g'8} a'4~^\markup{\left-align \small vib} 
      | a'4 g'4 \tuplet 3/2 {a'4 c''8~} c''16 a'8 g'16 
      | \tuplet 3/2 {a'4 g'8} a'4.^\markup{\left-align \small vib} fis'8 a'8 e'8 
      | \tuplet 3/2 {g'8 b'8 g'8} d'4 e'4.^\markup{\left-align \small vib} d'8 
      | es'8\glissando  f'8~ f'4. d'4 b8 
      | e'4.^\markup{\left-align \small vib} cis'8~ cis'16 a8 g16~^\markup{\left-align \small vib} g4~ 
      | g16 fis8 g16~ g16 a8 b16~ b8 cis'8 b4~^\markup{\left-align \small vib} 
      | b4 r2. 
      | d'4 r4 d'2~^\markup{\left-align \small vib} 
      | d'8 d'8~ d'8. b16 d'8 d'8 bes4 
      | cis'4 a4 cis'2~ 
      | cis'8 c'4 a8 \tuplet 3/2 {c'8 d'8 c'8} \tuplet 3/2 {a4 ais8} 
      | b2~^\markup{\left-align \small vib} b16 d'8 b16~ b16 g8 e16~ 
      | e16 fis8 a16~^\markup{\left-align \small vib} a4. dis'8\glissando  f'4 
      | d'2^\markup{\left-align \small vib} d'8 fis'8 d'4~^\markup{\left-align \small vib} 
      | d'4 r2. 
      \bar "||" r2 a'4 a'8 f'8 
      | c'8 ais8 gis8 a8 c'8 a4.~^\markup{\left-align \small vib} 
      | a4. a8 b8 cis'8 e'8 cis'8 
      | d'8 fis'8 a'8 d''8~^\markup{\left-align \small vib} d''2~ 
      | d''2 a'4 c''4~^\markup{\left-align \small vib} 
      | c''4. a'8 \tuplet 3/2 {g'8 a'8 g'8} fis'8 a'8~ 
      | a'4 fis'8 e'8 d'8 cis'8 b4~^\markup{\left-align \small vib} 
      | b4. r8 r2 
      | \tuplet 3/2 {dis'4\glissando  fis'8~} fis'2~ fis'8 f'8~^\markup{\left-align \small vib} 
      | f'2 r2 
      | \tuplet 3/2 {r8 e'8 d'8} cis'8 a8 fis8 d8~ d8.\glissando  f16~^\markup{\left-align \small vib} 
      | f2 r2 
      | e'2^\markup{\left-align \small vib} d'8 b8 g8 e8 
      | fis8 a8~^\markup{\left-align \small vib} a4. r8 r8. a'16~ 
      | a'4 a'8 fis'8 \tuplet 3/2 {g'8 a'8 g'8} e'4 
      | fis'4.^\markup{\left-align \small vib} d'8 e'4..^\markup{\left-align \small vib} c'16 
      | a8. a16~^\markup{\left-align \small vib} a2 r4 
      | r1 
      | a'4 a'8 fis'8 \tuplet 3/2 {g'8 a'8 g'8} e'4 
      | fis'4.^\markup{\left-align \small vib} d'8 e'4 fis'16 a'8. 
      | e'2~^\markup{\left-align \small vib} e'16 d'8 cis'16~ cis'8 a8 
      | \tuplet 3/2 {g8 a4\glissando } b4. e4.~^\markup{\left-align \small vib} 
      | e2.. r8\bar  ".."
    }
    >>
>>    
}
