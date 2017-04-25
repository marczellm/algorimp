\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Orbits"
  composer = "Wayne Shorter"
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


      \tempo 4 = 267
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default ges'4. des'4. \tuplet 3/2 {ges'4 f'8~} 
      | f'4. r8 r4 r8 des'8~ 
      | des'2.. c'8~^\markup{\left-align \small vib} 
      | c'2. g'4~^\markup{\left-align \small vib} 
      | g'2.. f'16 g'16~ 
      | g'8 f'16 es'16~ es'8 bes8 r2 
      | r4 r8. aes16~ \tuplet 3/2 {aes8 ais8 b8~} \tuplet 3/2 {b8 d'8 es'8~} 
      | es'8 r8 r8 ges'8 f'8 d'8 bes8 g8 
      | d'8 c'8 aes8 f8 bes8 f16 aes16~ aes8 bes8 
      | g8 bes8 d'8 f'4 c'4 g'8 
      | des'8 r8 r8 g'8 es'8 r8 r8 g'8 
      | r2 g'8 aes'8 bes'8. c''16~ 
      | c''8 r8 r4 c''4~ \tuplet 3/2 {c''8 bes'8 aes'8} 
      | g'8 r8 r4 r8 aes'8 bes'8 c''8~ 
      | c''8\bendAfter #+4  bes'16 aes'16 g'8 c'''8~ c'''16 f'16 e'16 es'16~ es'8 r8 
      | r4 r8 c''8~ c''4~ c''16 bes'16 aes'16 g'16~ 
      | g'8 ges'16 f'16~ \tuplet 3/2 {f'8 e'8 es'8~} es'8 d'8 des'8 c'8 
      | b8 r8 r8 f8 \tuplet 3/2 {a4 f8~} f8 aes16 g16~ 
      | g8 f8 es8 g8 f8 g8 aes8 bes8 
      | c'8 r8 r4 bes8 r8 r4 
      | aes8 r8 r8 des'8 r2 
      | b8 r8 r4 es'8 r8 r4 
      | f'4.\glissando  bes'8 r2 
      | f'4 r4 aes'8 r8 r8 ges'8 
      | r4 r8 b'8 r4 e'8 r8 
      | r8 c''8 r4 d'8 r8 r8 des''8~ 
      | des''8 des'8 r4 r8 d''4. 
      | r2. r8. des''16~ 
      | des''8. aes'16~ aes'4 ges'4 \tuplet 3/2 {des'4 c'8~^\markup{\left-align \small vib}} 
      | c'2.. c'8 
      | \tuplet 3/2 {des'4 aes8} fis8 r8 r2 
      | r4 g8 bes8 d'16 f'8 c'16 des'4 
      | \tuplet 3/2 {e'4 ges'8~} ges'8 bes'8 c''4 bes'8 aes'8 
      | g'8 f'8 \tuplet 3/2 {es'4 des'8} \tuplet 3/2 {c'4 bes8} aes8 g8 
      | bes4 aes8 ais8 b8 des'8 es'8 ges'8 
      | f'8 c'8 bes4 c'8 r8 r4 
      | bes4 es4 g8 des'8 \tuplet 3/2 {c'8 c'8 aes8} 
      | r2 r8 aes8 bes8 c'8 
      | es'8 r8 r4 g'8 g'8 f'8 r8 
      | r2 r8 g'4 d'8~ 
      | d'8 a4 aes8 r4 es'8. ges'16~ 
      | ges'8 f'8 r4 r8 c'4 g8 
      | b8 r8 r2. 
      | r4 r8 des''8 c''4 g'4 
      | d'8. des'16~ des'4 ges'4 b'4 
      | bes'2 f'8 r8 r4 
      | r8 c'8 b2 e'8 a'16 aes'16~^\markup{\left-align \small vib} 
      | aes'2 es'8 bes16 g16~ g8 r8 
      | r2 g8 d'16 g'16~ g'8 ges'8 
      | r2 \tuplet 3/2 {d'4 g8} ges4~^\markup{\left-align \small vib} 
      | ges4. des8 ges8 b8 e'8 r8 
      | r2. r8 des'8 
      | des'8. ges'16~ ges'4 ges'4 des'8 c'8 
      | r2. r8. c'16 
      | des'4 es'4 aes'4 des''8 c''8~ 
      | c''1~ 
      | c''1~ 
      | c''4 c''16 bes'8 c''16~ c''16 bes'8 aes'16~ aes'8 g'8 
      | \tuplet 3/2 {bes'8 aes'8 g'8} aes'8 f'8~ f'16 des'8 bes16~ bes8 g16 es'16~ 
      | \tuplet 3/2 {es'8 c'8 aes8~} aes8 f8 \tuplet 3/2 {bes4 f8} aes8 bes8 
      | f16 es8 des16~ \tuplet 3/2 {des8 f8 es8~} es8 des8 \tuplet 3/2 {bes,8 aes,16 r8.} 
      | r1 
      | e8 a8 ges8 d'8 b4. e'8 
      | c'8 r8 r8 ges'8 d'8 g'8 r4 
      | \tuplet 3/2 {r8 es'8 aes'8~} aes'8 ges'8 r4 r8 des'8 
      | r4 r8 ges'4. des'4 
      | c'2 r2 
      | des'4. ges'4. des'8 c'8~ 
      | c'4 r2. 
      | ges'4. des'4. ges8. a16~ 
      | a2.. r8\bar  ".."
    }
    >>
>>    
}
