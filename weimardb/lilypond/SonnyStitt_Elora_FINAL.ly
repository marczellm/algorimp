\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Elora"
  composer = "Sonny Stitt"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \major
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
      
      | c1:min7 | f1:7 | bes2:maj es2:maj | d2:min7 des2:min7 | c1:min7 | f1:7 | bes1:maj | c1:min7 
      | s1 | f1:7 | bes2:maj es2:maj | d2:min7 des2:min7 | c1:min7 | f1:7 | bes1 | f2:min7 bes2:7 
      | es1:maj | es1:min7 | d1:min7 | a2:dim7 d2:775+ | g1:min7 | c1:7 | c1:min7 | f1:7 
      | c1:min7 | f1:7 | bes2:maj es2:maj | d2:min7 des2:min7 | c1:min7 | f1:7 | bes1:maj|
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


      \tempo 4 = 193
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 f'8 e'16 es'8 d'16 c'8 g8 es4 
      | bes8. g16 \tuplet 3/2 {a8 c'8 es'8} g'8 ges'8 f'8 es'8 
      | \tuplet 3/2 {d'4 f'8~} f'16 g'8 a'16 c''8 b'8 bes'4 
      | a'16 bes'16 a'16 g'16~ g'16 f'8 es'16~ \tuplet 5/4 {es'16 d'16 es'16 d'16 c'16~} c'8 b8~ 
      | b16 c'8 g'16~ g'16 es'16 e'16 es'16 c'16 b8 g16 es4 
      | bes4 a8\glissando  es'8 f'4..^\markup{\left-align \small vib} d'16~ 
      | d'16 c'8 c'16 bes8 c'8~ c'16 d'8 f'16~ f'8 r8 
      | r1 
      \bar "||" cis''8 d''4. g'2^\markup{\left-align \small vib} 
      | bes'4 c''8. a'16 b'16 c''16 d''8 a'4~ 
      | \tuplet 3/2 {a'8 b'8 c''8~} c''8 a'8 \tuplet 3/2 {f'8 d'8 es'8} f'8 g'8 
      | aes'8 g'16 ges'16 f'8 es'16 d'16~ d'8 c'8 b8 g16 c'16~ 
      | c'8 es'8 r4 r8 g8 c'8 es'8 
      | d'16 es'16 d'16 c'16 bes8 g8 \tuplet 6/4 {a8. aes'8 fis'16} \tuplet 3/2 {g'8 ges'8 e'8} 
      | f'8 d'8 bes8 g8 es'8 c'8 a8 f8 
      | bes4 r2 r8. bes16 
      \bar "||" es'8 f'8 g'8 aes'8 \tuplet 3/2 {bes'4 c''8~} c''16 g'8 f'16~ 
      | f'16 fis'16 g'16 ges'16 f'8 es'8 a'16\glissando  bes'4.^\markup{\left-align \small vib} ges'16 
      | f'4 bes4 c'4 r4 
      | r8 a'16 g'16 \tuplet 3/2 {ges'8 f'8 a8} c'8 es'8 d'8 c'8 
      | bes8 c'8 d'8 e'8 fis'8 g'8 a'8 bes'8 
      | g'8 d'8 f'8 g'16 f'16 \tuplet 3/2 {e'4 b8} c'8 d'8 
      | es'4 d'8 c'8 b8 g8 es4 
      | \tuplet 3/2 {bes4 g8} a8 es'8 f'8. g'16 f'16 d'16 r8 
      \bar "||" r4 r8. g16~ g16 c'8 es'16 d'16 es'16 d'16 c'16 
      | f'8 d'8 \tuplet 6/4 {es'16 f'16 g'16 aes'16 b'16 cis''16} d''8 r8 r4 
      | r8 c'8 \tuplet 5/4 {d'8 f'16 g'16 a'16} c''8 bes'8 a'8 g'8 
      | f'8 g'8 aes'8 g'16 f'16 g'4~^\markup{\left-align \small vib} g'16 f'8 d'16 
      | es'4~ \tuplet 3/2 {es'8 g8 bes8} d'8 c'8 \tuplet 3/2 {bes4 g8} 
      | a16 c'8 es'16~ es'8 ges'8 f'8 d'8 \tuplet 3/2 {es'8 f'8 es'8} 
      | d'8 bes8 g8 f8 a8 bes8 c'8 d'8 
      | bes8. f16 r2.\bar  ".."
    }
    >>
>>    
}
