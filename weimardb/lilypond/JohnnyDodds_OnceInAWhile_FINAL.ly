\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Once in a While"
  composer = "Johnny Dodds"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | c1 | c1 | e1:7 | s1 | a1:min | s1 | c1:7 | s1 
      | f1 | s1 | c1 | a1:7 | d1:7 | s1 | g1:7 | s1 
      | c1 | s1 | e1:7 | s1 | a1:min | s1 | c1:7 | s1 
      | f1 | s1 | c1 | a1:7 | d1:7 | g1:7 | c1|
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


      \tempo 4 = 209
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default dis''8 c''8\glissando  e''4 c'''2^\markup{\left-align \small vib} 
      | g''8 a''4^\markup{\left-align \small vib} dis''8 e''8 g''8 e''4 
      | e''2.^\markup{\left-align \small vib} r4 
      | \tuplet 3/2 {e''8 g''8 e''8} \tuplet 3/2 {dis''4 e''8} f''8 fis''8 g''8\bendAfter #+4  aes''8 
      | g''8 gis''4\glissando  a''8~^\markup{\left-align \small vib} a''2~ 
      | a''2~ \tuplet 3/2 {a''8 g''8 a''8~} a''8 gis''8 
      | \tuplet 3/2 {a''4 aes''8} g''8 g''8~^\markup{\left-align \small vib} g''2~ 
      | g''4 r4 r8 g''8 aes''8 c'''8 
      | c'''2~^\markup{\left-align \small vib} c'''8 c'''8 r4 
      | gis''16 a''16 c'''8 d'''8 es'''8 d'''8 c'''8 d'''4 
      | c'''4 c'''4 \tuplet 3/2 {g''4 a''8~^\markup{\left-align \small vib}} a''8 gis''8 
      | \tuplet 3/2 {a''8 g''4} e''8 dis''8 e''8 g''8 e''8 es''8 
      | d''2^\markup{\left-align \small vib} d''8 d''8 cis''8 d''8 
      | \tuplet 3/2 {c''4 c''8~} c''8 c''8~^\markup{\left-align \small vib} c''4~ \tuplet 3/2 {c''8 a'8 ais'8} 
      | cis''2.. g''8~ 
      | \tuplet 3/2 {g''8 f''8 d''8~} \tuplet 3/2 {d''8 c''8 b'8~} b'16 g'8 g''16~ \tuplet 3/2 {g''8 f''8 e''8~} 
      \bar "||" e''8. e''16~ e''8. c''16~ c''8 r8 r8. c''16~ 
      | c''8 d''16 e''16~ e''8 c''8 g''8. g''16~ g''4 
      | e''8 r8 r4 fis''16 gis''8 gis''16~ gis''8 gis''8 
      | e''8. dis''16\glissando  \tuplet 3/2 {e''4 e''8~} e''8 dis''8 e''4^\markup{\left-align \small vib} 
      | g''4. a''8~^\markup{\left-align \small vib} a''4.. c''16~ 
      | c''4.\glissando  aes''4 g''4\glissando  aes''8~ 
      | aes''8 g''8\glissando  aes''8 g''8~^\markup{\left-align \small vib} g''2~ 
      | g''4. r8 r8 g''8\glissando  aes''4 
      | c'''2^\markup{\left-align \small vib} g''16 aes''8 g''16~ g''8 g''8 
      | f''8 c''8 \tuplet 3/2 {d''4 es''8~} es''8 es''4 c''8 
      | \tuplet 3/2 {e''4 g'8} c''8 e''8 g''8 e''8 g''8 e''8 
      | aes''8\bendAfter #+4  g''8 a''8. a''16~ a''8 e''4. 
      | a''4 a''4 d''2^\markup{\left-align \small vib} 
      | \tuplet 6/4 {g''4 f''16 g''16~} g''8 e''8 f''8 d''8 \tuplet 6/4 {f''8. d''8 e''16~} 
      | e''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
