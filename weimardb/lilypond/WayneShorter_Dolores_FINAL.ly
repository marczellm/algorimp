\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dolores"
  composer = "Wayne Shorter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      | r1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 
      | g1:min7 | d1:7 | g1:min7 | f1:min9 | s1 | es1 | g1:min7 | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | d1:min | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | g1:min7 | d1:7 
      | g1:min9 | f1:min9 | e1:min9 | es1 | g1:min7 | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 
      | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | d1:min | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 
      | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | g1:min9 | d1:7 | g1:min9 | f1:min9 
      | e1:min9 | es1 | g1:min7 | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 
      | des1:7sus4|
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


      \tempo 4 = 277
      \set Score.currentBarNumber = #-19
     
      | r8 f'8 d'8 f'8 g'4. f'8 
      | g'8 f'8 d'8 bes8 d'8 c'8 aes4 
      | g8 bes8 g8 a8 g4 r4 
      | r2 r8 aes4.~ 
      | aes2 aes8 bes8 b8 d'8 
      | es'8 f'16 ges'16~ ges'4.\bendAfter #+4  f'8 r4 
      | r1 
      | r16 a'8 c''16~ c''2~ c''8 bes'8 
      | c''8 bes'8 g'8 r8 r2 
      | r8 g'8 e'8 g'8 ges'8 es'8 \tuplet 3/2 {bes4 es'8~} 
      | es'8 c'8 aes8 r8 r2 
      | aes4~ \tuplet 3/2 {aes8 g8 bes8} ges8 g8~ g8. es'16 
      | f'8 d'16 es'16~ es'8 e'8 r2 
      | r1 
      | g'8 a'8 f'8 d'8 r4 r8 d'8 
      | des'8 e'8 d'8 b4 g8~ g16 c'8 aes16 
      | r1 
      | r2 a'8 aes'8 ges'8 a'8 
      | g'8 f'8 \tuplet 3/2 {e'4 es'8} \tuplet 3/2 {d'4 des'8} c'8 b8 
      | bes8 r8 r4 a8 g16 ges16~ \tuplet 3/2 {ges8 a8 g8~} 
      \bar "||" \mark \default g8 a8 bes8 c'16 d'16~ \tuplet 3/2 {d'8 bes8 a8~} a8 g8 
      | c'8 r8 r4 \tuplet 3/2 {ges8 bes8 g8} aes8 bes8 
      | g8 bes8 g8 f8 es8 g8 \tuplet 3/2 {f8 g8 aes8~} 
      | aes8 bes8 c'8 r8 r2 
      | r8 b4. g8 d'4. 
      | aes8 es'8~ es'4. des'8 e'4 
      | r2 r8 g8 a8 bes8 
      | c'4 d'4 c'4 \tuplet 3/2 {bes4 c'8~} 
      \bar "||" c'4 r2. 
      | c'4 f'4 d'4 bes8 g'8~^\markup{\left-align \small vib} 
      | g'2. ges'8 f'8~ 
      | \tuplet 3/2 {f'8 e'8 es'8~} es'16 d'8 c'16~ c'8 bes8 \tuplet 3/2 {a8 g8 a8} 
      | r2 bes8 c'8 d'4~ 
      | d'8 c'8 d'8 es'4. d'8 es'8 
      \bar "||" f'8 r8 r4 e'8 f'8 g'8 r8 
      | r4 f'8 g'16 a'16~ a'4 g'8 aes'16 bes'16 
      | r4 r8. a'16~ \tuplet 3/2 {a'8 bes'8 c''8} r4 
      | r1 
      | g4~ g16 d'8 bes'16 \tuplet 3/2 {c''8 des''8 c''8} b'8 bes'8 
      | aes'8 ges'8 f'8 es'8 des'8 b8 bes8 aes8 
      | f8. a16 bes8 c'8 d'8 e'8 f'16 g'8 a'16~ 
      | a'4~ a'16 f'16 a'16 aes'16~ aes'4 es'16 aes'8 g'16~ 
      \bar "||" \mark \default g'8 c'8 f'8 g'8 ges'8 d'8 bes8 g8 
      | f'8 d'8 bes8 a8 e'8 des'8 es'16 ges'8 f'16 
      | es'8 b8 r4 r16 bes8 g16 aes8 bes8 
      | ges8 aes8 f8 es8 r2 
      | r4 r8. es'16 d'4 des'16 c'8 b16~ 
      | b8 des'8 es'8 f'8 bes'4 d'8 bes'8 
      | a'2 g'8. a'16~ a'8 bes'8 
      | \tuplet 3/2 {c''4 d''8~} d''16 c''8 bes'16~ bes'8 a'4 g'8 
      \bar "||" a'8 bes'8 c''8. d''16 c''4 bes'8 a'8 
      | g'4 aes'4 bes'8 c''8~ c''16 g'8 f'16~ 
      | f'8 es'4. r2 
      | r1 
      | f'2~ f'8 a'8~ a'16 g'8 f'16 
      | a'4 e'4 g'4 f'8 des''16 d''16~ 
      \bar "||" d''4.. c''16~ c''8 bes'8 \tuplet 3/2 {a'8 g'4} 
      | \tuplet 3/2 {ges'8 e'8 es'8~} es'16 des'8 c'16 bes4 \tuplet 3/2 {a8 g8 f8~} 
      | f16 g8 aes16~ aes16 bes8 b16~ b8 bes8 es'8 e'8 
      | ges'8 g'16 a'16~ \tuplet 3/2 {a'8 bes'8 c''8~} c''8 g'8 \tuplet 3/2 {f'8 es'16 r8.} 
      | r4 r8. aes'16~ aes'8 ges'8 es'8 b8~ 
      | b8 b8 \tuplet 3/2 {es'8 f'4} \tuplet 3/2 {bes'8 ges'8 aes'8} \tuplet 3/2 {aes'4 ges'8~} 
      | ges'16 ges'16 d'16 bes16~ bes8 ges8 e'8 d'8 g8 f8 
      | g8 des'8 r4 r16 aes8 aes16~ aes8 b8 
      \bar "||" \mark \default aes8 ges8 r2. 
      | r8 aes8 ges8 f8 g4 g4 
      | g8 r8 r8 g8 ges8 g8 bes8 d'8 
      | f'4~ f'16 e'8 es'16~ es'16 d'8 des'16 c'4 
      | b8 des'8~ des'8. f'16 bes'4 bes'8 aes'8~ 
      | aes'8 aes'8 ges'8 ges'8~ ges'16 f'8 f'16 es'8 r8 
      | r2 d'8 e'8 f'8 g'8 
      | r4 r8 a'8 g'4 e'8 r8 
      \bar "||" r2 e'8 g'8 f'8 es'8 
      | c'8 aes8 g8 f8 bes8 a8 aes8 bes8~ 
      | bes8 e16 ges16~ \tuplet 3/2 {ges8 g8 a8~} a16 b8 des'16~ des'8 f'8 
      | es'8 bes8~ bes8. es'16~ \tuplet 3/2 {es'8 des'8 aes8~} aes4 
      | f8 r8 r4 r8 a8 g8 f8 
      | a8 e8 g4. f8~ f16 e8 f16~ 
      \bar "||" f8 d'4 d'4 d'4 d'8~ 
      | d'8 d'4 d'8 d'8 f'8 d'8 c'8 
      | d'8 r8 r4 es'8 d'8 des'8 c'8 
      | b8 c'8 es'8 f'8 bes'4 des''8 c''16 b'16 
      | bes'8. ges'16 r2 r8 ges'8 
      | f'8 es'8 des'8 c'8 b8 bes8 \tuplet 3/2 {aes4 ges8} 
      | f2 r2\bar  ".."
    }
    >>
>>    
}
