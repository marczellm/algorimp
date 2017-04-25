\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Daahoud"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | s4 r2. 
      | es2:min7 aes2:7 | des2:min7 ges2:7 | b1:maj | f2:min7 bes2:7 | es1:min7 | b2:7 bes2:7 | es1:maj | s1 
      | es2:min7 aes2:7 | des2:min7 ges2:7 | b1:maj | f2:min7 bes2:7 | es1:min7 | b2:7 bes2:7 | es1:maj | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | f2:min7 bes2:7 
      | es2:min7 aes2:7 | des2:min7 ges2:7 | b1:maj | f2:min7 bes2:7 | es1:min7 | b2:7 bes2:7 | es1:maj | s1 
      | es2:min7 aes2:7 | des2:min7 ges2:7 | b1:maj | f2:min7 bes2:7 | es1:min7 | b2:7 bes2:7 | es1:maj | s1 
      | es2:min7 aes2:7 | des2:min7 ges2:7 | b1:maj | f2:min7 bes2:7 | es1:min7 | b2:7 bes2:7 | es1:maj | s1 
      | bes1:min7 | es1:7 | aes1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | f2:min7 bes2:7 
      | es2:min7 aes2:7 | des2:min7 ges2:7 | b1:maj | f2:min7 bes2:7 | es1:min7 | b2:7 bes2:7 | es1:maj|
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


      \tempo 4 = 241
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8 cis'8 \tuplet 3/2 {d'8 ges'8 a'8} b'8 a'16 bes'16~ 
      \bar "||" \mark \default bes'8 f''4 d''8 \tuplet 3/2 {es''4 bes'8~} bes'8 aes'8~ 
      | aes'8 es''4 c''8 \tuplet 3/2 {cis''4 e'8} r4 
      | r4 fis'8 e'8 es'8 fis'16 aes'16~ aes'8 bes'8 
      | des''8 c''8 b'8 cis''8 d''8 e''8 ges''8 d''8 
      | f''4 es''8 bes'8 ges'8 es'16 c'16 bes4 
      | aes'8 a'4. aes'8 ges'8 d'8 bes8 
      | d'8 es'8 \tuplet 3/2 {g'4 es'8} \tuplet 3/2 {f'4 bes'8} r4 
      | r2 r8 a'8 bes'8 aes'8 
      \bar "||" f'8 ges'8 es'8 f'8 es'8 f'8 ges'8 aes'8 
      | a'8 g'8 aes'8 e'8 es'8 cis'8 fis'8 e'8 
      | cis'8 d'8 es'8 fis'8 aes'8 bes'8 des''8 c''8 
      | b'8 cis''8 d''8 e''8 ges''8 d''8 des''8 b'8 
      | aes'8 a'8 c''8 a'8 bes'8 aes'8 f'8 fis'8 
      | g'8 r8 r8 es'8 f'8 d'4 f'8 
      | g'8 aes'8 \tuplet 3/2 {bes'8 c''8 d''8~} \tuplet 3/2 {d''8 es''8 e''8} ges''8 bes'8 
      | r2. r8 b''8 
      \bar "||" \tuplet 3/2 {b''4 c'''8~} c'''8 aes''8 g''8 f''8 es''8 d''8 
      | des''8 f''8 c''8 b'8 \tuplet 3/2 {bes'4 b'8} g'8 f'8 
      | \tuplet 3/2 {es'8 f'8 es'8~} es'8. es'16 \tuplet 3/2 {aes'4 es'8~} es'8 r8 
      | r1 
      | r16 bes''16 a''16 aes''16~ aes''8 es''8 b'8 aes'8 g'8 es'8 
      | ges'8 es'16 f'16~ f'8 aes'8 b'8 d''8 b'16\glissando  c''8 des''16~ 
      | des''8 b'8 aes'8 a'8 bes'8 r8 r4 
      | r4 ges'8 e'8 f'8 es'8 d'8 f'8 
      \bar "||" es'8 des'8 es'8 f'8 ges'8 aes'8 a'8 g'8 
      | aes'8 e'8 es'8 cis'8 fis'8 e'8 \tuplet 3/2 {cis'4 es'8} 
      | e'8 fis'16 aes'16~ aes'8 bes'8 des''8 c''8 b'8 cis''8 
      | d''8 e''8 ges''8 d''8 des''8 b'8 aes'8 a'8 
      | c''8 a'8 bes'8 c''8 cis''8 d''8 f''8 d''8 
      | es''8 c''8~ c''16 g'16 f'16 bes'16~ bes'8 r8 r4 
      | r2 r16 a''8 bes''16~ bes''4 
      | a''8 bes''8~ bes''4~ bes''16 a''8 bes''16~ bes''4 
      \bar "||" \mark \default a''8 bes''8~ bes''16 aes''16 g''16 ges''16 d''4 es''4 
      | g''8\glissando  aes''8~ \tuplet 3/2 {aes''8 fis''8 es''8} \tuplet 3/2 {des''8 c''4} cis''4 
      | fis''4. cis''16 b'16 bes'4 b'4 
      | ges''4 es''16 des''16 b'8 bes'8. b'16 r4 
      | r1 
      | r8 bes'8 c''8 d''8 es''8 f''8 ges''8 aes''8 
      | b''8 c'''8 bes''8 bes''8 g''4 r4 
      | r2 r8 b''8 c'''8 des'''8 
      \bar "||" bes''4 aes''8 ges''8 f''8 es''8 d''4 
      | aes''4. fis''8 r4 e''8 r8 
      | r4 es''8 des''8 c''4. bes'8 
      | b'8 cis''8 d''8 e''8 e''8 d''8 des''8 b'8 
      | bes'8 bes8 es'8 f'8 ges'8 aes'8 a'8 g'8 
      | aes'8 f'8 fis'8 d'8 es'8 f'8 g'8 aes'8 
      | bes'8 c''8 d''8 bes'8 c''4 r4 
      | r2. r8 e''8 
      \bar "||" f''4 des''8 c''8 bes'8 r8 r4 
      | e'8 fis'16 g'16~ g'8 a'16 b'16~ b'8 g'4 e'8 
      | es'4 f'8 g'8 aes'8 bes'8 c''8 des''8 
      | es''4 c''8 r8 r2 
      | r8 d''8 es''4 b'8 aes'8 g'8 es'8 
      | ges'4 des'8 es'8 e'16 f'16 f'16 g'16 g'8 r8 
      | r8 f'8 ges'8 aes'8 bes'8 b'8 des''8 bes'16 b'16~ 
      | b'8 a'8 bes'8 aes'8 ges'8 f'8 e'8 d'8 
      \bar "||" es'8 f'8 ges'8 aes'8 a'8 g'8 aes'8 f'8 
      | ges'8 e'8 \tuplet 3/2 {f'4 es'8} d'8 es'8 b'8 a'8 
      | bes'8 a'8 aes'8 g'8 fis'8 e'8 cis'8 es'8~ 
      | es'8 bes'8 des''8 b'8 bes'8 aes'8 ges'8 f'16 es'16 
      | e'8 es'8 bes4 \tuplet 3/2 {ges'8 f'8 ges'8} \tuplet 3/2 {es'4 ges'8} 
      | \tuplet 3/2 {a'8 bes'8 a'8} fis'8 a'8 aes'8 r8 r4 
      | r8 g'8~ \tuplet 3/2 {g'8\bendAfter #-4  d''8 f''8~} f''8 d''16 e''16~ \tuplet 3/2 {e''8 d''8 es''8~} 
      | \tuplet 3/2 {es''8 c''8 aes'8~} aes'8 fis'8 g'8 bes'8 f'8 es'8\bar  ".."
    }
    >>
>>    
}
