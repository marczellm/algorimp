\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "K.C. Blues"
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
      | r1 
      | c1:7 | f1:7 | c1:7 | s1 | f1:7 | s1 | c1:7 | e2:min7 a2:7 
      | d1:min7 | g1:7 | c2:7 a2:7 | d2:min7 g2:7 | c1:7 | f1:7 | c1:7 | s1 
      | f1:7 | s1 | c1:7 | e2:min7 a2:7 | d1:min7 | g1:7 | c2:7 a2:7 | d2:min7 a2:7 
      | c1:7|
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


      \tempo 4 = 118
      \set Score.currentBarNumber = #0
     
      | r4 r8 dis'8\glissando  e'4~ \tuplet 3/2 {e'8 c'8 f'8} 
      \bar "||" \mark \default g'4^\markup{\left-align \small vib} r4 r8 c'8~ \tuplet 6/4 {c'16 d'16\glissando  e'8 g'16 a'16} 
      | c''4 a'8. c'16~ \tuplet 3/2 {c'8 ges'8 f'8} es'16. c'16. d'32\glissando  e'32~ 
      | e'8 c'8 g4.^\markup{\left-align \small vib} r8 r4 
      | r8 g'16 a'16 \tuplet 5/4 {bes'8 bes'16 des''16 bes'16} c''8 bes'16 c''32 bes'32 \tuplet 3/2 {a'8 f'8 des'8} 
      | c'32 bes8 c'32 e'32 g'32 f'8 d'8 c'8 es'4.^\markup{\left-align \small vib} 
      | r2 \tuplet 6/4 {d''8.\glissando  es''8 c''16~} \tuplet 6/4 {c''8 gis'16 a'16\glissando  f'16 ges'16\glissando } 
      | r4 r8 dis'16 e'16 \tuplet 6/4 {g'8 ais'8 b'16 c''16~} \tuplet 6/4 {c''16 d''8 c''16 b'16 a'16~} 
      | a'8 b'16 c''16 a'8 r8 r8 b'16 a'16 g'16 f'16 e'16 d'16~^\markup{\left-align \small vib} 
      | d'32 cis'32 d'16\glissando  e'16. cis'32 d'16\glissando  e'16 f'16 g'16 \tuplet 3/2 {a'8 f'8 d'8} \tuplet 6/4 {des'8 a'16 f'16 des'16 a16} 
      | c'8 b16 a'16~ a'4 d'16\glissando  e'16 g'16 ges'16~ \tuplet 6/4 {ges'16 f'16 e'8 d'16 b16} 
      | \tuplet 6/4 {c'8 aes'8 f'16 fis'16} g'8 e'4^\markup{\left-align \small vib} r8 r4 
      | r4 bes'16\glissando  c''8.~ c''4. \tuplet 6/4 {d''16 c''16 b'16~} 
      \bar "||" \mark \default b'16 c''8 g'16~^\markup{\left-align \small vib} g'4 r4 b'16 c''16 c''16 b'16~ 
      | b'8 c''8 g'8 f''16 ges''16 f''8 es''8 c''16 d''16\glissando  e''16 c''16~ 
      | c''16 g'16 f'16 g'16 \tuplet 3/2 {dis'8\glissando  e'8 c'8~^\markup{\left-align \small vib}} c'4 r4 
      | r8 c''16\glissando  d''16~^\markup{\left-align \small vib} d''2~ d''8~ d''32 c''16 bes'32~ 
      | bes'16 a'16 f'16 d'16 c'16 g'16. f'16 c'32~ c'16 a16 d'16\glissando  es'16 f4~^\markup{\left-align \small vib} 
      | f8 b'8 c''4\glissando  a'8 g'8 \tuplet 3/2 {e'4 c'8} 
      | \tuplet 3/2 {d'4 b8} \tuplet 6/4 {c'4 fis'16 g'16~} g'8 r8 \tuplet 6/4 {r4 b'16 a'16} 
      | g'8 e'8~ e'16 b8 g16 ais8 fis'8~ fis'16 dis'16 e'16 f'16~^\markup{\left-align \small vib} 
      | f'4. e''8 c''16 a'8 f'16~ f'32 d'8. a32~ 
      | \tuplet 6/4 {a16 c'4 a16} b8 g'8\bendAfter #+4  aes'4. \tuplet 6/4 {g'8 f'16~} 
      | \tuplet 3/2 {f'8 dis'8 e'8} c'8 c'8 c'4^\markup{\left-align \small vib} r4 
      | r8. c'16~ \tuplet 6/4 {c'8. d'16 c'16 b16~} b8 d'16 c'16~ c'16 b16 c'16 d'16~ 
      \bar "||" \mark \default \tuplet 6/4 {d'16 b8 c'8 g16~^\markup{\left-align \small vib}} g4. r8 r4\bar  ".."
    }
    >>
>>    
}
