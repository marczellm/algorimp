\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Ornithology"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | s2. r4 
      | g1:maj | g1:maj | g2:min7 c2:7 | g2:min7 c2:7 | f1:maj | s1 | f1:min7 | bes1:7 
      | es1:7 | d1:7 | g1:min | c2:min5-7 d2:7 | b1:min7 | e1:7 | a1:min7 | d1:7 
      | g1:maj | s1 | g2:min7 c2:7 | g2:min7 c2:7 | f1:maj | s1 | f1:min7 | bes1:7 
      | es1:7 | d1:7 | g1 | a2:min7 d2:7 | g2:/b bes2:7 | a2:min7 aes2:7 | g1:maj | a2:min7 d2:7|
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


      \tempo 4 = 221
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 a'8 
      \bar "||" \mark \default d'8. a'16 d''8 c''8 b'8 g'8 e'8 es'8 
      | d'4.^\markup{\left-align \small vib} fis'8 a'4. a'8 
      | ais'8 c''16 bes'16 a'8 g'8 \tuplet 3/2 {c''4 g'8~^\markup{\left-align \small vib}} g'4~ 
      | g'8 r8 r2. 
      | f'4~ f'16 c'8 f'16~ f'16 a'8 bes'16~ \tuplet 3/2 {bes'8 a'8 g'8} 
      | \tuplet 3/2 {f'4 d'8~} d'16 c'8 bes16 \tuplet 3/2 {a4 c'8} d'8 g'16 aes'16~ 
      | aes'4 es'8 f'8 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} f'4~ 
      | f'8 r8 r2. 
      \bar "||" r8 d'16 f'16~ f'16 aes'8 des''16 f''4 \tuplet 3/2 {es''4 d''8~^\markup{\left-align \small vib}} 
      | d''4~ d''16 c''16 d''16 c''16 bes'16 a'8 g'16 fis'8 a'8 
      | e'8. a16 c'8 es'8~ es'16 d'8 bes16 g8 a8 
      | c'8 r8 r8 a'8 ais'8 fis'8 es'8 d'8 
      | a'8 fis'8~^\markup{\left-align \small vib} fis'4. r8 r4 
      | r4 \tuplet 3/2 {a'4 fis'8} \tuplet 3/2 {gis'4 c''8\glissando } des''4 
      | c''8 g'8 e'4 \tuplet 3/2 {b'4 bes'8} a'8 aes'8~ 
      | \tuplet 6/4 {aes'16 g'8. e'16 c'16} a8 fis'8\glissando  g'8 e'16 c'16 gis8 f'16\glissando  fis'16~ 
      \bar "||" \tuplet 5/4 {fis'8 e'16 d'16 a16~} a8 e'8 fis'4~ fis'16 d'16 c'16 a16~ 
      | a8 e'8 r2 r8. e'16 
      | f'8 d'8 bes16 a16 g16 e'16~ e'8 f'8~ f'16 d'16 bes16 a16 
      | g8 e'4.^\markup{\left-align \small vib} r2 
      | r8. e'16~ e'16 f'8 des''16~ des''16 e''8 es''16 \tuplet 3/2 {d''4 des''8} 
      | c''4 a'16 bes'8 c''16 bes'16 a'8 f'16~ f'16 d'8 c'16 
      | c''4 \tuplet 3/2 {g'4 aes'8~^\markup{\left-align \small vib}} aes'4 r4 
      | r4 r8 es'8 \tuplet 3/2 {fis'8 g'8 d''8} es''8 c''8\glissando  
      \bar "||" des''4 bes'8 c''8 bes'8 aes'8 g'8 r8 
      | r8 bes'8 \tuplet 5/4 {a'8 bes'16 a'16 g'16} fis'8 a'8 \tuplet 3/2 {e'4 d'8} 
      | c'8 es'8 d'8 c'8 b4 r4 
      | r2. r8 e''8 
      | f''8. a'16~ a'16 g'8 gis'16~ gis'16 e''8 es''16 d''4 
      | \tuplet 3/2 {c''4 g'8} e'8 c'16 dis'16~^\markup{\left-align \small vib} dis'4. d''8 
      | \tuplet 3/2 {c''8 b'8 a'8~} \tuplet 6/4 {a'16 gis'4 b16~} b16 d'8 f'16~ f'16 e'8 es'16 
      | \tuplet 3/2 {d'4 b8} \tuplet 3/2 {c'8 e'8 g'8} a'16\bendAfter #+4  gis'16 b'8 d''8. e'16~ 
      \bar "||" e'4 r2.\bar  ".."
    }
    >>
>>    
}
