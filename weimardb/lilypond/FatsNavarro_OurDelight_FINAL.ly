\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Our Delight"
  composer = "Fats Navarro"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key aes \major
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
      | s2 b2:11+.9 
      | bes1:13.9 | es1:9+ | aes1:maj | f1:7 | bes1:7 | bes2:min7 b2:dim7 | aes2:/c b2:dim7 | bes2:min7 es4:13.9 b4:11+.9 
      | bes1:13.9 | es1:9+ | aes1:maj | f1:7 | bes1:7 | bes2:min7 b2:dim7 | aes2:/c b2:dim7 | es2:7sus4 aes2:maj 
      | es1:min7 | aes1:9-5+ | des1:maj | s1 | des2:min7 ges2:7 | c2:min7 f2:7 | b2:min7 e2:7 | es2:7 b2:11+.9 
      | bes1:13.9 | es1:9+ | aes1:maj | f1:7 | bes1:7 | bes2:min7 b2:dim7 | aes2:/c b2:dim7 | es2:7sus4 aes2:maj|
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


      \tempo 4 = 201
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. f''16~ f''8. aes''16~ 
      \bar "||" \mark \default aes''4 f''8 aes''8 \tuplet 3/2 {g''4 f''8~} f''8 es''8 
      | e''16 f''16 e''16 d''16~ d''8 a'8 des''16 d''16 des''16 b'16~ \tuplet 3/2 {b'8 a'8 g'8} 
      | aes'8 bes'8 aes'8 bes'8 c''8 es''8 \tuplet 3/2 {f''4 es''8} 
      | ges''4~ ges''16 c''8 f''16~ f''4. es''8 
      | d''8 des''8 c''8 b'8 bes'8 a'8 aes'8 bes'8 
      | a'4 r2 r16 es''16 d''16 des''16 
      | d''8 b'8 bes'8 aes'8 a'8 g'8 fis'8 e'8 
      | f'8 g'8 aes'8 bes'8 b'8 a'4 fis'8 
      \bar "||" \tuplet 3/2 {aes'8 bes'8 aes'8} g'8 f'8 d'8 es'8 f'8 aes'8 
      | \tuplet 3/2 {c''8 des''8 c''8} bes'4 bes'16 b'16 bes'16 a'16~ a'4 
      | ges''8 f''4. es''8. c''16~ c''8 des''8~ 
      | des''16 des''16 c''16 bes'16 a'8 ges'4 f'4 es'8~ 
      | es'16 e'16 g'16 aes'16~ aes'16 c''8 bes'16~ bes'8 r8 r4 
      | r2. r8 es''8~ 
      | es''8. f''16~ f''4 aes''8. c'''16~ c'''8 bes''8~ 
      | bes''8 aes''8 g''8 f''16 e''16 f''16 e''16 d''8 es''8 des''8 
      \bar "||" c''8 bes'16 aes'16 \tuplet 3/2 {a'8 aes'8 f'8} ges'8 aes'8 bes'8 des''8 
      | f''8 e''8 es''8 des''8 c''8 bes'8 a'16 bes'16 a'16 g'16 
      | aes'4. ges'8 \tuplet 3/2 {f'8 des'8 bes8~} bes16 a8 es'16 
      | r4 r8 es'8 e'8 f'8 aes'8 f'8 
      | ges'8 aes'8 bes'8 des''8 es''4 fis''8 e''8 
      | \tuplet 3/2 {f''4 c''8} \tuplet 3/2 {a'4 des''8\glissando } d''4 c''8 d''8 
      | b'8 des''8 b'8 des''8 fis''8 e''4 es''8~ 
      | es''8 c''8 r2. 
      \bar "||" c''8 d''4 f''8 c''8 d''8 bes'4 
      | a'4 b'8 ges'8 e'4^\markup{\left-align \small vib} r4 
      | r2 es''8. aes''16~ aes''8. c'''16~ 
      | c'''8 bes''8 a''4 es''8 ges''8 f''8 es''8 
      | d''8 des''8 \tuplet 3/2 {d''8 c''8 b'8} bes'8 a'8 aes'8 bes'8 
      | a'16 bes'16 a'16 g'16 ges'8 r8 r4 r8 c''8~ 
      | \tuplet 3/2 {c''8 des''8 d''8} es''8. des''16~ des''16 d''16 es''16 e''16~ e''8 d''8~ 
      | \tuplet 6/4 {d''8 es''8 e''16 f''16~} f''8 es''8~ \tuplet 3/2 {es''8 e''8 f''8} ges''8 r8\bar  ".."
    }
    >>
>>    
}
