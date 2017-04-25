\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "K.C. Blues"
  composer = "Miles Davis"
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
      
      | c1:7 | f1:7 | c1:7 | s1 | f1:7 | s1 | c1:7 | e2:min7 a2:7 
      | d1:min7 | g1:7 | c1:7 | d2:min7 g2:7 | c1:7 | f1:7 | c1:7 | s1 
      | f1:7 | s1 | c1:7 | e2:min7 a2:7 | d1:min7 | g1:7 | c1:7 | d2:min c2:7 
      | s1|
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


      \tempo 4 = 120
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 g'8 c''8 d''8 c''8 
      | d''8 c''8 r4 r16 d''8 c''16~ c''4 
      | g'4.^\markup{\left-align \small vib} a'8~ a'16 c''8 d''16~ d''8 c''8 
      | r2. r8 des''16 b'16 
      | c''16 bes'16 g'16 gis'16 \tuplet 3/2 {a'8 es'4} r2 
      | cis''8 d''8~ d''16 c''8 g'16~ g'8 f'8 g'8 e'8~^\markup{\left-align \small vib} 
      | e'4 r4 r16 a'8 g'16~ g'16 e'8 d'16~ 
      | d'16 c'8 d'16~ d'16 e'8 d'16 dis'8 gis'4.~ 
      | gis'16 aes'16\glissando  g'16\glissando  a'16~ a'16 f'8 d'16~ d'16 c'8 b16~^\markup{\left-align \small vib} b8 r8 
      | r1 
      | e''8 g''4 g''8 \tuplet 3/2 {f''4 g''8} g''4 
      | e''8 g''8 g''4 f''8 g''8 g''4 
      \bar "||" \mark \default e''4~ e''16 c''8 g'16~^\markup{\left-align \small vib} g'4 r4 
      | r2 \tuplet 6/4 {r16 a'8. bes'16 gis'16} a'8 gis'8 
      | a'4 \tuplet 3/2 {f''4 e''8~} e''4 \tuplet 3/2 {c''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'8 r8 r4 a''8 g''8 e''8 c''8 
      | r4 r16 f'8 g'16~ g'16 f'8 g'16 f'8 r8 
      | r8 c''8~ c''16 g'8 f'16~ f'8 es'8 r4 
      | r8 dis'16\glissando  e'16~ e'16 f'8 fis'16 g'8 c''8 r4 
      | r1 
      | \tuplet 3/2 {r8 cis''8 d''8~} \tuplet 3/2 {d''8 a'8 f'8} e'8 des'8~ des'16 e'8 cis'16 
      | d'8 e'8 f'8 g'8 gis'8 b'8 c''8 d''8~^\markup{\left-align \small vib} 
      | d''4 a'4 a'4.^\markup{\left-align \small vib} a'8 
      | r4 \tuplet 3/2 {r8 g'8 a'8} c''8 e''8 c''4 
      \bar "||" \mark \default c''8 e''8 r4 c''8 r8 r4\bar  ".."
    }
    >>
>>    
}
