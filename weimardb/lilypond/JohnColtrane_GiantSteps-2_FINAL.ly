\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Giant Steps (Solo 2)"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      
      | b2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj fis2:7 | b1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | cis2:min7 fis2:7 | b1:maj | f2:min7 bes2:7 | es1:maj | cis2:min7 fis2:7 
      | b2:maj d2:7 | g2:maj bes2:7 | es1:maj | a2:min7 d2:7 | g2:maj bes2:7 | es2:maj fis2:7 | b1:maj | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | g1:maj | cis2:min7 fis2:7 | b1:maj | f2:min7 bes2:7 | es1:maj | cis2:min7 fis2:7|
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


      \tempo 4 = 299
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default bes8 b8 \tuplet 3/2 {cis'8 es'8 d'8~} d'8 e'8 fis'8 a'8 
      | fis'8 d'8 b4 \tuplet 3/2 {c'4 aes8} g8 f8~ 
      | \tuplet 3/2 {f8 e8 f8} g8 aes8~ \tuplet 3/2 {aes8 bes8 c'8~} c'16 d'8 f'16 
      | e'4~ e'16 b8 g'16~ g'16 b'8 a'16~ a'16 fis'8 e'16~ 
      | \tuplet 3/2 {e'8 d'8 e'8} \tuplet 3/2 {g'8 b'8 c''8} b'8 d'8 f'16 aes'8 c''16~ 
      | c''16 es'8 f'16~ f'16 g'8 bes'16~ bes'8 e'8 g'8 bes'8 
      | cis''4~ cis''16 bes'8 aes'16 \tuplet 3/2 {fis'4 es'8} b4~ 
      | \tuplet 6/4 {b8 bes'16 b'16 c''16 cis''16} d''8 des''8 b'16 bes'8 aes'16~ aes'16 g'8 f'16~ 
      | f'16 es'8 f'16~ \tuplet 3/2 {f'8 g'8 bes'8} es''8 r8 r4 
      | r8. b'16 \tuplet 3/2 {c''8 es''4~} es''2~ 
      | es''4 \tuplet 3/2 {b'4 fis'8~} fis'8 fis'8 e'4 
      | f'16 ges'8.~ ges'4 f'16 fis'8. e'8 es'8~ 
      | es'4. fis'8~ fis'16 a'8 cis''16~ cis''8. b'16 
      | bes'2.. aes'8 
      | \tuplet 3/2 {g'4 es'8} \tuplet 3/2 {d'4 f'8} es'4 \tuplet 3/2 {f'8 g'8 bes'8} 
      | b'4 r2. 
      \bar "||" \mark \default r8 es'8 fis'8 b'8 d'8. e'16 fis'8 a'8 
      | g'8 d'8 b8 g8 \tuplet 3/2 {c'4 aes8~} aes16 g8 f16~ 
      | f16 es8 f16 g8 aes8 a8 c'8 d'8 f'8~ 
      | f'16 e'8 g'16~ g'8 g'8 b'8 es'8 g'8 b'8 
      | g'8 a'8 \tuplet 3/2 {b'4 d''8} \tuplet 3/2 {aes'4 c''8} \tuplet 3/2 {b'8 bes'8 aes'8} 
      | g'8 d'16 f'16~ f'8 g'8 e'8. fis'16 aes'8 bes'8 
      | cis''8 bes'8 aes'8 fis'8 es'8 cis'8 b8 g16 c'16~ 
      | c'16 d'8 es'16~ es'8 f'8 g'8 f'8 d'8 c'8 
      | bes8 aes'8 g'8 d'8 f'8 es'8 \tuplet 3/2 {d'4 c'8} 
      | e'8 r8 r4 bes'16 b'8. a'4 
      | a'4.. fis'16 d'8 b8 a8 r8 
      | r8 aes'8 a'8. aes'16~ aes'4 b'4 
      | bes'4. fis'8 es'4 \tuplet 3/2 {b4 bes'8} 
      | b'8 d''8~ \tuplet 3/2 {d''8 c''8 b'8} bes'4. aes'16 g'16~ 
      | g'8 f'4 es'8~ es'4. des'8 
      | es'8 fis'8 r2.\bar  ".."
    }
    >>
>>    
}
