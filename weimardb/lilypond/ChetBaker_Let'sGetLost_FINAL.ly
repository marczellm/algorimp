\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Let's Get Lost"
  composer = "Chet Baker"
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
      
      | c1:maj | fis1:min5-7 | c1:maj | fis2:min7 b2:7 | e1:min5-7 | a1:7 | e1:min5-7 | a1:7 
      | d1:min7 | g1:7 | c1:maj | fis2:min5-7 b2:7 | e1:min7 | a1:7 | d1:7 | d2:min7 g2:7 
      | c1:maj | fis1:min5-7 | c1:maj | fis2:min5-7 b2:7 | e1:min5-7 | a1:7 | e1:min5-7 | a1:7 
      | d1:min7 | g1:7 | c2:maj f2:7 | e2:7 a2:min7 | d1:min7 | g1:7 | c1:maj | d2:min7 g2:7|
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


      \tempo 4 = 158
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 b'4 b'8 a'8 b'8 c''8 d''8 
      | b'4~ b'16 g'8 a'16~^\markup{\left-align \small vib} a'2~ 
      | a'16 g'8 a'16 b'4~ b'16 b'16\glissando  c''8 b'8 a'8 
      | gis'4 \tuplet 3/2 {b'4 a'8~^\markup{\left-align \small vib}} a'4 e'4 
      | g'2^\markup{\left-align \small vib} f'4 a'8. e'16~^\markup{\left-align \small vib} 
      | e'4. r8 r2 
      | r4 \tuplet 3/2 {g''4 f''8~} f''4. a''8~ 
      | a''4 g''16 e''8.~ e''8 cis''8 \tuplet 3/2 {f''4 d''8~^\markup{\left-align \small vib}} 
      \bar "||" d''2 \tuplet 3/2 {e''4 d''8} \tuplet 3/2 {c''8 a'8 e'8} 
      | d'4 e'4 a4 c'4 
      | e'4.^\markup{\left-align \small vib} g'4 b'8 \tuplet 3/2 {c''4 a'8~^\markup{\left-align \small vib}} 
      | a'4 r2. 
      | \tuplet 6/4 {r4 ais'16 b'16~} b'4 \tuplet 3/2 {a'4 g'8} e'8 g'8 
      | \tuplet 3/2 {a'4 b'8} g'8 a'4.^\markup{\left-align \small vib} b'8 a'8 
      | \tuplet 3/2 {g'4 e'8} g'4 \tuplet 3/2 {gis'8 a'8 g'8} e'8 es'8~ 
      | \tuplet 6/4 {es'16 d'4 g'16~} g'8 e'4.^\markup{\left-align \small vib} g'4 
      \bar "||" b'4. g'8 e'4 b8 a8~^\markup{\left-align \small vib} 
      | a4. r8 r2 
      | r4 r8 b16 c'16 \tuplet 3/2 {e'4 es'8} d'8 des'8 
      | c'8 dis'8 \tuplet 3/2 {g'4 a'8} b'4 a'4 
      | g'4.^\markup{\left-align \small vib} ges'8 f'4 \tuplet 3/2 {a'4 c''8~} 
      | c''4 \tuplet 3/2 {a'4 e'8~^\markup{\left-align \small vib}} e'4 \tuplet 3/2 {g'4 a'8~} 
      | a'4 e'8 g'4.^\markup{\left-align \small vib} e'4 
      | \tuplet 3/2 {fis'8\glissando  g'4} \tuplet 3/2 {ges'4 f'8~^\markup{\left-align \small vib}} f'4 e'8. d'16~ 
      \bar "||" d'8 r8 r4 r8 f'8 a'8 c''8 
      | e''4 g''2 \tuplet 3/2 {e''4 d''8~^\markup{\left-align \small vib}} 
      | d''4. g''4. d''8. b'16~^\markup{\left-align \small vib} 
      | b'4 d''8 f''4. \tuplet 3/2 {e''8 d''8 c''8} 
      | b'4 c''4 g'4 \tuplet 3/2 {e'4 d'8~} 
      | d'4 r4 r8 b'8 c''4 
      | g'4.^\markup{\left-align \small vib} e'8 d'4 c'8 d'8 
      | es'8 f'8 g'8 gis'8 \tuplet 3/2 {a'8 ais'8 gis'8} dis'8 c'8 
      | g'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
