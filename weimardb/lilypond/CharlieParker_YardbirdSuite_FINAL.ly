\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Yardbird Suite"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      | d2:min7 g2:7 
      | c1:6 | f2:min7 bes2:7 | c2:7 bes2:7 | a1:7 | d1:7 | g1:7 | e2:min7 a2:7 | d2:min7 g2:7 
      | c1:6 | f2:min7 bes2:7 | c2:7 bes2:7 | a1:7 | d1:7 | g1:7 | c1:6 | fis2:min5-7 b2:9- 
      | e1:min7 | fis2:min5-7 b2:9- | e1:min7 | a1:7 | d1:min7 | e2:min5-7 a2:7 | d1:7 | d2:min7 g2:7 
      | c1:6 | f2:min7 bes2:7 | c2:7 bes2:7 | a1:7 | d1:7 | g1:7 | c1:6 | d2:min7 g2:7|
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


      \tempo 4 = 210
      \set Score.currentBarNumber = #0
     
      \bar "||" r4 \tuplet 6/4 {r4 r16 d'16} e'16 f'8 ais'16~ \tuplet 6/4 {ais'16 gis'8 ais'16 gis'16 f'16} 
      \bar "||" \mark \default \tuplet 3/2 {g'4 e'8} r4 r8 d''8 des''8 c''16 g'16~ 
      | g'16 bes'16 c''16 bes'16 \tuplet 3/2 {a'4 aes'8~} aes'8 f'8 es'8 c'8 
      | g'16 a'16 g'16 f'16 e'8 a8~ a16 bes8 d'16 f'8 g'8~ 
      | g'16 e'8 d'16~ \tuplet 3/2 {d'8 e'8 g'8~} g'16 ais'8 c''16 bes'16 a'8 g'16 
      | \tuplet 3/2 {fis'4 d'8} \tuplet 5/4 {c'8 d'16 c'16 a16} e'4. r8 
      | r1 
      | g'4 \tuplet 3/2 {e'4 f'8} g'8 c''8 b'8 a'8 
      | g'8 f'8 d'8 a8 d'16\glissando  e'8. g'8. d'16~^\markup{\left-align \small vib} 
      \bar "||" d'4 r2 r8 a'8 
      | bes'8 a'8 aes'8 f'8 es'8 c'8 g'8 f'8 
      | e'8 a4 d'8 \tuplet 3/2 {f'4 g'8} e'8. d'16 
      | cis'8 e'8 ais8 gis8 a8 f'4 e'8 
      | d'8. a16~ a8 b16 c'16 d'4 c'8 d'8 
      | b8 a4. r4 r8 f8 
      | c'4 g2^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" r8. b16~ b8 cis'8 dis'16 e'8 fis'16~ fis'16 g'8 a'16~ 
      | \tuplet 3/2 {a'8 a'8\glissando  b'8~} b'2 c''8 d''16 c''16 
      | b'8 g'8 e'8 c'8 \tuplet 3/2 {fis'8 g'8 gis'8} \tuplet 3/2 {a'4 fis'8} 
      | \tuplet 3/2 {g'4 e'8~} e'4 r2 
      | \tuplet 3/2 {r8 g8 a8} \tuplet 3/2 {cis'8 d'8 e'8} \tuplet 3/2 {f'4 g'8} a'8 aes'8\glissando  
      | bes'8 a'8 \tuplet 3/2 {g'4 f'8} e'8 d'4 ais'16\glissando  c''16~ 
      | c''8 b'16 a'16 \tuplet 3/2 {g'4 fis'8} e'8 a4 e'8 
      | d'8 a8 c'4^\markup{\left-align \small vib} b8 g'8~ \tuplet 3/2 {g'8 f'8 fis'8} 
      \bar "||" g'4 r4 r8 d''8 c''8 g'8~ 
      | g'16 bes'8 a'16~ a'8 aes'4 f'8 \tuplet 3/2 {es'4 a8} 
      | g'8\bendAfter #-4  ges'4 bes16 d'16 f'8 g'8 e'8 d'8 
      | cis'8 e'8 g'8. a'16\glissando  b'4 a'4 
      | b'8 e'4.^\markup{\left-align \small vib} r2 
      | r4 r8. c''16~ c''4 \tuplet 3/2 {c''4 c''8~^\markup{\left-align \small vib}} 
      | c''2~ \tuplet 3/2 {c''8 ais'8 c''8} ais'16 g'8 a'16 
      | g'8 f'8 es'8 c'8 d'8. c'16~ c'8 r8\bar  ".."
    }
    >>
>>    
}
