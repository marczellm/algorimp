\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Impressions (1961)"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key d \minor
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
      | s4 d2.:min7 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s4 r2. | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
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


      \tempo 4 = 293
      \set Score.currentBarNumber = #-3
     
      \bar "||" \mark \default r4 r8. e'16~ e'2 
      | d'4 f'4 \tuplet 3/2 {f'4 g'8~} g'8 a'8~ 
      | a'4. g'8 f'8 d'4 r8 
      | r2 a'4 d'8 f'8~ 
      \bar "||" \mark \default f'2 r2 
      | a'4~ \tuplet 3/2 {a'8 g'8 a'8} g'8 d'8 f'4 
      | e'4 r2 r8 g'8 
      | gis'16 a'2... 
      | a'4 a'4 a'8. g'16~ g'8 a'8~ 
      | a'8 b'8 \tuplet 3/2 {c''8 des''4} a'2 
      | g'8 a'8 b'8 g'8 f'8 g'16 a'16~ \tuplet 3/2 {a'8 b'8 g'8~} 
      | g'8 f'16 g'16~ g'8 f'4 f'8 g'4 
      \bar "||" a'2 g'8 a'8 b'8 des''16 des''16~ 
      | des''8 a'8 \tuplet 3/2 {b'8 b'8 a'8} f'4 f'8 r8 
      | r2 f'8 g'4 b'8 
      | e'8 f'8 g'8 g'8 des'8 c'8 b8 bes16 a16~ 
      | a8 aes16 g16~ g16 b8 e'16~ e'8 f'16 ges'16 aes'8 aes'8 
      | aes'8 g'4 g'8 d'8 f'8 a'8 c''16 b'16 
      | \tuplet 3/2 {a'8 f'8 d'8~} d'8 a8 b4 r4 
      | r1 
      \bar "||" r4 \tuplet 3/2 {es'4 aes'8} c''8 c''4 c''8 
      | bes'8 ges'16 es'16 c'8 r8 r2 
      | r8. c'16~ c'8 es'16 aes'4. es'8 aes'16~ 
      | \tuplet 3/2 {aes'8 f'8 c'8~} \tuplet 3/2 {c'8 b8 bes8~} bes8 r8 r4 
      | r2 a'8 f'16 g'16~ g'8 ges'8 
      | es'8 fis'16 g'16~ g'8 g'8 bes8 r8 r4 
      | r8 bes8 des'8 es'8 f'4. aes'16 f'16 
      | es'8 ges'16 aes'16~ aes'16 bes'8 c''16~ c''8 r8 r4 
      \bar "||" r8 a8 b8 d'8 f'8 r8 r8 b8 
      | \tuplet 3/2 {d'8 f'8 a'8~} a'16 b'8 d''16 r2 
      | r16 a8 b16 d'8 f'8~ f'16 a'8 b'16~ \tuplet 3/2 {b'8 d''8 a'8} 
      | r4 r8. b'16~ \tuplet 3/2 {b'8 a'8 f'8~} f'16 d'8 b16 
      | r2 b8 r8 r8 b8 
      | d'8 f'16 a'16~ \tuplet 3/2 {a'8 b'8 d''8~} d''16 c''8 a'16~ a'8 b'8 
      | a'8 f'8 d'8 b8 \tuplet 3/2 {g'8 f'8 d'8~} d'8 a8 
      | r2 r8. b'16~ b'8 g'8 
      \bar "||" \mark \default a'8 f'8 \tuplet 3/2 {d'8 b4} r2 
      | d'8 f'8 g'8 a'8 b'8 r8 r4 
      | r4 d'8 f'8 c'8 f'16 a'16~ a'16 g'8 a'16 
      | g'8 a'4 g'8 c'8 f'16 a'16~ a'8 d''16 des''16 
      | a'8 f'8 d'8 bes8 \tuplet 3/2 {g'8 f'8 d'8} a4~ 
      | a16 a8 b16 g8 r8 r2 
      | r8 g8 \tuplet 3/2 {b8 a8 g8} f8 r8 r4 
      | f4 b8 c'8 a8 r8 r4 
      \bar "||" \tuplet 3/2 {g4 b8} d'8 a8 r2 
      | a4 \tuplet 3/2 {c'8 e'8 b8} r4 r8. b16~ 
      | b8. d'16~ \tuplet 3/2 {d'8 f'8 g'8} r4 r8. d'16~ 
      | \tuplet 3/2 {d'8 f'8 a'8~} \tuplet 3/2 {a'8 c''8 g'8} r2 
      | g'4 \tuplet 7/8 {b'16. d''16 des''32 c''32~} c''8 r8 r8. f'16~ 
      | f'8 a'4 c''8 b'8 g'8 \tuplet 5/4 {d''8 c''16 b'16 d'16~} 
      | d'8 r8 r8 d'8~ d'8. a'16~ \tuplet 5/4 {a'8 b'16 bes'16 ges'16~} 
      | ges'8 aes'8 e'8 c'8 d'8 c'16 b16~ b8. es'16~ 
      \bar "||" es'4 bes'8 bes'8 des'8 r8 r4 
      | des'8 ges'16 bes'16~ bes'16 b'8 es'16~ \tuplet 3/2 {es'8 ges'8 bes'8~} \tuplet 3/2 {bes'8 c''8 aes'8} 
      | r4 r8. aes'16~ aes'8. c''16~ c''8 es''8 
      | des''8 bes'8 des''8 bes'4. es'8 aes'8 
      | c''8 r8 r8. des'16~ \tuplet 3/2 {des'8 ges'8 bes'8} c'8 r8 
      | r4 c'8 es'8 aes'8 g'8 \tuplet 3/2 {g'8 e'8 f'8} 
      | a'8 r8 r8. bes16~ \tuplet 3/2 {bes8 cis'8 d'8~} d'16 f'8 es'16~ 
      | es'8 ges'8 \tuplet 3/2 {bes'8 c''8 b'8} aes'8 ges'16 es'16~ es'8 r8 
      \bar "||" r4 \tuplet 3/2 {d'8 f'8 a'8} r4 r8 e'8~ 
      | \tuplet 3/2 {e'8 g'8 b'8~} b'8 f'4. f'8 a'8 
      | c''8 g'16 a'16~ \tuplet 3/2 {a'8 c''8 a'8} r2 
      | \tuplet 3/2 {a'8 b'8 c''8~} c''8 d''16 c''16 a'8 f'8 d'4 
      | d'8. ges'16 a'16 a'16 c''16 ges'16 c'4~ c'16 g'16 b'16 d'16~ 
      | d'4 a'8 b'8 e'4 b'8 b'8 
      | c''8 a'8 c''8 a'8 b'8 a'8 r4 
      | r4 \tuplet 3/2 {r8 bes'8 b'8~} b'4.. a'16~ 
      \bar "||" \mark \default a'8 b'8~ b'16 b'16 d''16 a'16 r2 
      | a'8 c''16 d''16~ d''16 des''16 f'16 a'16 r2 
      | f'8 a'8 \tuplet 3/2 {c''8 c''4} a'8 f'16 d'16~ \tuplet 3/2 {d'8 a8 e'8} 
      | r2 e'16 g'16 d'16 g'16~ g'8 b'8 
      | bes'8 aes'16 b'16 bes'4. aes'8 \tuplet 3/2 {g'8 g'8 e'8} 
      | \tuplet 3/2 {c'8 f'8 a'8~} a'8 c''8 a'8 f'8 \tuplet 3/2 {d'4 e'8} 
      | f'4 g'16 ges'16 d'8 r2 
      | r4 g'16 gis'16 a'8~ a'4. d'8~ 
      \bar "||" d'4 f'4 des'8. e'16~ e'8 d'8 
      | r4 r8. d'16~ d'4 a'8 b'8 
      | e'8 es'8 d'8 f'16 c'16~ c'8 es'8 aes'8 b'16 e'16 
      | r2 e'8 aes'16 bes'16~ bes'8 b'8 
      | es'4 es'8 ges'16 bes'4. aes'8 ges'16~ 
      | ges'8 es'8 \tuplet 3/2 {b4 cis'8} d'4 g'8 d'8~ 
      | d'16 des'8 b16~ b8 bes8 \tuplet 3/2 {a8 aes8 g8~} g16 b8 a16~ 
      | a8 d'8 \tuplet 3/2 {f'8 a'8 d''8} r2 
      \bar "||" r2 bes'2~ 
      | bes'2 aes'8 bes'8 r4 
      | r4 r16 bes'16 b'16 c''16~ c''4. bes'8 
      | aes'8 ges'8 es'8. des'16 es'4 r4 
      | r4 \tuplet 5/4 {r8 bes'16 b'16 c''16~} c''4. des''8 
      | \tuplet 3/2 {aes'8 c''8 b'8~} b'2.~ 
      | b'4 bes'8 a'8 aes'4. g'8 
      | ges'8 c''8 a'8 ges'8 \tuplet 3/2 {f'8 e'8 es'8} d'4 
      \bar "||" \tuplet 3/2 {des'8 c'4} b16 bes8 a16~ \tuplet 3/2 {a8 aes8 g8~} g8 b16 a16~ 
      | a8 d'8~ d'8. c''16~ c''16 c''8 a'16~ \tuplet 3/2 {a'8 b'8 a'8~} 
      | \tuplet 3/2 {a'8 f'8 e'8~} e'16 g'8 d'16~ d'8 des'8 a8 fis16 g16 
      | r2 a8 r8 r4 
      | \tuplet 3/2 {e'8 d'8 b8~} b8 g8 \tuplet 3/2 {a8 e8 d8} ges4~ 
      | \tuplet 3/2 {ges8 d'8 aes'8~} aes'16 g'8 a'16 f'8 r8 r8. d''16~ 
      | d''16 b'16 bes'16 a'16 aes'16 g'8 ges'16 f'4 r4 
      | r4 \tuplet 3/2 {r8 cis''8 d''8~} d''2 
      \bar "||" \mark \default a'8 d''8~ \tuplet 3/2 {d''8 des''8 b'8} aes'4 r4 
      | r4 r8 b'8~ b'4. a'8 
      | f'8 d'8 r2. 
      | r4 b'2 a'8 f'8 
      | d'8 r8 r8. d''16~ \tuplet 3/2 {d''8 e'8 a'8~} \tuplet 6/4 {a'8. d''16 des''16 c''16} 
      | a'8 ges'8 d'4 f'4. aes'16 f'16 
      | e'4. g'16 f'16 e'4 r8 g'8 
      | cis'8 d'16 e'16~ e'8 f'8 d'8 c'8 b8 d'16 a16 
      \bar "||" r4 r8 aes'8 r4 r8. e'16 
      | f'4. f'8 a'8 r8 r8. a'16 
      | c''8 r8 r8 c''8 b'8 r8 r8 b'8 
      | \tuplet 3/2 {g'8 a'8 b'8~} b'16 g'8 f'16~ \tuplet 3/2 {f'8 g'8 a'8~} \tuplet 3/2 {a'8 b'8 f'8} 
      | r4 r8 g'16 e'16 r4 r8 g'8 
      | cis'8 d'8 \tuplet 3/2 {e'8 f'8 d'8~} d'8 c'8 \tuplet 3/2 {b8 d'8 a8} 
      | r4 \tuplet 3/2 {r8 aes'8 d'8} r4 r8 a'8 
      | ges'16 f'16 d'4 a'8~ \tuplet 3/2 {a'8 f'8 d'8~} d'4 
      \bar "||" es'4~ \tuplet 3/2 {es'8 aes'8 ges'8} r4 r8 bes'8 
      | c''8 r8 r8 aes'8 c''16 b'16 bes'8 ges'8 bes'8 
      | aes'8 r8 r4 es'4. aes'8 
      | ges'8 r8 r8. aes'16~ \tuplet 3/2 {aes'8 ges'8 es'8~} es'8 c'16 f'16 
      | r4 r8 aes'8 g'8 r8 r8 aes'8 
      | es'8 bes'8 ges'8 es'8 des'8 c'8 bes8 es'8 
      | r2 c'8 r8 r8 aes8 
      | \tuplet 3/2 {d8 es'8 g'8~} g'8 g'8 a'8 g'8 ges'8 f'8 
      \bar "||" d'4~ \tuplet 3/2 {d'8 f'8 a'8} r4 \tuplet 3/2 {r8 b'8 d''8} 
      | r4 \tuplet 3/2 {r8 ges'8 a'8~} a'16 d''16 des''16 a'16~ a'8 f'8 
      | d'8 r8 r8. g'16 r4 r8 a'16 f'16 
      | r4 \tuplet 3/2 {r8 a'8 f'8} des'4. \tuplet 6/4 {a'16 aes'16 e'16~} 
      | e'8 r8 r4 f'4~ \tuplet 3/2 {f'8 a'8 g'8} 
      | d'8 r8 r8 b'8 \tuplet 3/2 {g'8 e'8 a'8~} \tuplet 3/2 {a'8 c''8 b'8} 
      | a'8 f'8 \tuplet 3/2 {d'8 b16 r8.} r2 
      | r4 r8 a'8~ a'4.. a'16~ 
      \bar "||" \mark \default a'8 b'8~ b'2 a'8 b'8~ 
      | b'4.. a'16~ a'8 b'4.~ 
      | b'4.. g'16~ g'8 f'8 r4 
      | r4 r8 b'4 a'8 b'8 d'16 g'16~ 
      | \tuplet 3/2 {g'8 a'8 b'8~} \tuplet 3/2 {b'8 d'8 g'8~} g'8 a'8 b'8 a'8~ 
      | a'4. b'8 a'8 f'8 \tuplet 3/2 {e'8 g'8 f'8~} 
      | f'8 d'8 \tuplet 3/2 {des'8 e'8 d'8~} d'8 r8 r4 
      | r4 r8 a'4. \tuplet 3/2 {g'8 f'8 d'8~} 
      \bar "||" d'4 aes'8 b'8 d'16 f'16 aes'16 bes'16~ bes'8 aes'8 
      | bes'8 aes'8 g'8 c''16 d'16~ d'8 r8 r4 
      | d'4 a'8 b'8 f'8 r8 r4 
      | e'8 g'8 b'8 des'4. des'8 es'16 f'16 
      | g'8 c'4. g'8 d'16 aes'16~ aes'8 e'8~ 
      | e'8. e'16~ \tuplet 3/2 {e'8 aes'8 bes'8~} \tuplet 3/2 {bes'8 ges'8 des'8~} \tuplet 3/2 {des'8 b8 d'8} 
      | r2 \tuplet 3/2 {d'8 f'8 a'8~} \tuplet 3/2 {a'8 b'8 es'8~} 
      | es'8 des'16 bes16~ bes8 aes8 ges8. es'16~ \tuplet 3/2 {es'8 ges'8 bes'8~} 
      \bar "||" bes'8 d'4. f'8 ges'16 bes'16 c''8 r8 
      | r4 des'8 e'16 aes'16 r2 
      | bes8 c'16 d'16 r4 r8. c'16~ \tuplet 3/2 {c'8 f'8 a'8} 
      | r4 r8. es'16~ es'8 ges'8 bes'4 
      | d'8 ges'16 aes'16~ aes'8 r8 r4 des'8 e'16 aes'16~ 
      | aes'8 r8 r4 \tuplet 3/2 {bes8 c'8 e'8~} e'8 r8 
      | r8. c'16~ \tuplet 3/2 {c'8 f'8 a'8} r4 r8. c'16~ 
      | c'8 f'8 \tuplet 3/2 {a'8 b'8 aes'8~} \tuplet 3/2 {aes'8 ges'8 dis'8~} dis'8. e'16~ 
      \bar "||" e'8 g'8 b'8 r8 r8. es'16~ \tuplet 3/2 {es'8 f'8 a'8} 
      | r4 r8 d'8~ \tuplet 3/2 {d'8 f'8 bes'8} r4 
      | r4 es'8 aes'16 b'16 r2 
      | des'8 ges'16 bes'16 r2 e'8 g'8 
      | b'8 r8 r8. es'16~ es'16 f'16 g'16 bes'16~ bes'8 r8 
      | r4 des'8 ges'16 bes'16 r4 r8 d'8~ 
      | \tuplet 3/2 {d'8 ges'8 aes'8} r4 r8. e'16~ \tuplet 3/2 {e'8 aes'8 b'8~} 
      | \tuplet 3/2 {b'8 a'8 f'8~} f'8 d'8 f'8 r8 r4 
      \bar "||" \mark \default e'8 g'16 b'16~ b'32 bes'32 aes'32 ges'32 e'32 des'16.~ des'4 des'8 es'16 g'16 
      | r4 r8. c'16~ c'16 e'8 aes'16~ \tuplet 3/2 {aes'8 b'8 e'8~} 
      | \tuplet 3/2 {e'8 ges'8 aes'8} b'8 e'8 r2 
      | e'8 aes'16 bes'16~ bes'8 des''8 b'8 r8 r4 
      | des'4 \tuplet 6/4 {fis'8. g'16 ges'16 f'16} es'8 des'8 \tuplet 3/2 {b8 bes8 a8~} 
      | a16 aes8 g16~ g8 b8 a16 f8 d16~ \tuplet 3/2 {d8 g8 f8} 
      | d8 f8 a8 c'8 g8 r8 r4 
      | r4 \tuplet 3/2 {r8 f'8 fis'8} g'4.. g'16~ 
      \bar "||" g'8 g'8~ \tuplet 3/2 {g'8 b'8 bes'8} r2 
      | es'8 ges'8 \tuplet 3/2 {bes'8 b'8 aes'8} r4 r8 des'8~ 
      | des'16 f'8 aes'16~ aes'16 b'16 aes'16 d'16 r4 r8. d'16~ 
      | d'16 f'16 aes'8~ \tuplet 3/2 {aes'8 b'8 g'8~} \tuplet 3/2 {g'8 b'8 aes'8~} \tuplet 3/2 {aes'8 b'8 bes'8~} 
      | \tuplet 3/2 {bes'8 a'8 bes'8} b'8 e'8 r2 
      | e'8 f'16 a'16~ \tuplet 3/2 {a'8 b'8 bes'8} g'8 bes'8~ \tuplet 3/2 {bes'8 a'8 d''8} 
      | des''8 a'8~ a'16 b'8 f'16~ f'4~ \tuplet 3/2 {f'8 g'8 e'8~} 
      | e'16 c'8 a16~ a16 f8 e16 r2 
      \bar "||" r8. c'16~ c'8 f'8 c'4 \tuplet 3/2 {c'8 ges'8 es'8~} 
      | \tuplet 3/2 {es'8 ges'8 a'8} g'4 a'8 g'8 \tuplet 3/2 {es'8 bes'8 f'8~} 
      | f'8 des'8 \tuplet 3/2 {bes8 ges8 f8~} f8 r8 r4 
      | r2 aes'2 
      | c'16 c''8.~ c''8 bes'8~ bes'4. aes'8~ 
      | aes'16 bes'8 aes'16~ \tuplet 3/2 {aes'8 f'8 es'8~} \tuplet 3/2 {es'8 des'8 bes8~} bes8 ges8 
      | f4. es8 aes8 es8 r4 
      | r4 r8. es'16~ \tuplet 3/2 {es'8 ges'8 aes'8~} \tuplet 3/2 {aes'8 c''8 b'8} 
      \bar "||" a'8 f'8 e'8 c'8 a4. c'16 b16 
      | a8 f16 e16~ e8 r8 r2 
      | r8 des''8 \tuplet 3/2 {b'8 b'8 g'8} e'4. c'8 
      | \tuplet 3/2 {b8 d'8 des'8} g4 r2 
      | r4 d''8 gis'8 a'4. b'8 
      | g'8 d'8 c'8 b4 r8 r4 
      | r2 d''2 
      | a'8 f'8 e'8 g'8 d'8 c'8 b8 r8 
      \bar "||" \mark \default r2 g'16 cis''16 d''8~ d''8. g'16 
      | a'8 f'8 e'8 g'8 des'8 c'8 b8 r8 
      | r4 r8. b'16~ b'4 c''8 a'8~ 
      | \tuplet 3/2 {a'8 f'8 e'8~} e'16 g'16 ges'16 e'16~ e'8 c'8 b8 a8 
      | r1 
      | a'8 g'16 f'16~ f'8 d'8 c'8 b8 \tuplet 3/2 {d'8 b8 a8~} 
      | a8 r8 r2 r8. g'16~ 
      | g'16 f'8 d'16~ d'16 c'8 b16~ \tuplet 3/2 {b8 g8 f8~} f8 g8 
      \bar "||" r2. r8. ges'16~ 
      | \tuplet 3/2 {ges'8 f'8 e'8~} e'16 g'8 e'16~ e'8 c'8 a8 f8 
      | e8 r8 r2 r8. e16~ 
      | \tuplet 3/2 {e8 g8 a8~} a16 c'8 a16~ a16 c'8 d'16~ d'16 des'16 g'8 
      | f'16 e'8 f'16 a'8 c''8 a'8 f'8 e'8 g'8 
      | e'8 c'8 ges8 f8 \tuplet 3/2 {e8 g8 e8~} e8 d8 
      | b,4 r2. 
      | r4 r8. a,16~ a,8 b,4 g'8 
      \bar "||" es'8 f'16 aes'16~ aes'16 c''16 b'16 bes'16~ \tuplet 3/2 {bes'8 ges'8 f'8~} \tuplet 3/2 {f'8 aes'8 es'8~} 
      | es'16 des'8 bes16~ bes8 ges8 f8 r8 r4 
      | r2 r8. des''16~ des''16 c''8 aes'16~ 
      | aes'4. f'8 es'8 g'16 f'16~ f'16 des'8 c'16~ 
      | c'8 r8 r2. 
      | c'8 f'16 es'16~ es'16 c'8 bes16~ bes16 ges16 f8 es'8 g'8 
      | r2 \tuplet 3/2 {es8 f8 aes8~} aes16 des'8 g16 
      | g'4 \tuplet 3/2 {es'8 ges'8 es'8} ges'8 bes'8 r4 
      \bar "||" r2 \tuplet 3/2 {e'8 f'8 a'8~} a'16 g'8 a'16 
      | aes'16 g'8 a'16~ a'16 g'8 c'16~ c'16 f'8 a'16 b'4 
      | r2. r8 b'8~ 
      | \tuplet 3/2 {b'8 a'8 b'8~} b'16 d''16 des''16 c''16~ c''8 a'8 r4 
      | r1 
      | a'8 r8 r4 d''8 des''8 a'8 d''16 des''16 
      | a'8 f'8 d'8 g'8 f'2 
      | f'16 f'8 g'16~ g'16 f'16 d'4 des'8 a'8. c'16 
      \bar "||" \mark \default a'4.\bendAfter #-4  r8 r2 
      | r4 r8 a'4. r4 
      | a'4 a'4.\bendAfter #-4  r8 r4 
      | r2 r8 a'4 gis'8 
      | a'2.~ \tuplet 3/2 {a'8 gis'8 a'8~} 
      | a'4. g'8 a'8 g'8 a'8 g'8 
      | f'8 d'4 r8 r2 
      | r4 r8 g'8~ g'2 
      \bar "||" g'4.. fis'16~ fis'16 g'8 a'16~ a'8 f'8~ 
      | f'8 f'8~ f'8. d'16~ d'4 d'4 
      | b8 f8 r2. 
      | r4 r8 g'8~ g'2 
      | a'4 bes'8 b'8 bes'4 b'4 
      | bes'8. b'16~ b'8 g'8 d'4 b4 
      | r8 b'8~ b'8. bes'16~ bes'8. b'16~ b'8 c''8~ 
      | c''8 b'8 a'4 r2 
      \bar "||" r2 c''4.. b'16 
      | c''2 \tuplet 3/2 {aes'4 es'8} r4 
      | r2 \tuplet 3/2 {bes'8 b'8 c''8~} c''4 
      | \tuplet 3/2 {b'8 c''4~} c''8 aes'4 r8 r4 
      | r2 r16 b'16 c''4. 
      | b'8 c''4. aes'4 es'4 
      | r4 es''4 d''4 es''4 
      | \tuplet 3/2 {d''4 es''8~} es''8 b'8 c''8 es''8 r4 
      \bar "||" r2 \tuplet 3/2 {r8 bes'8 b'8~} b'4 
      | bes'8 b'4. g'4 d''4~ 
      | d''16 cis''8 d''16~ d''8. cis''16~ cis''8 d''4 cis''8 
      | d''2 \tuplet 3/2 {b'4 d''8} des''4 
      | r4 r8. bes'16 b'4. bes'8 
      | b'4. g'8 r2 
      | r2 cis''8 d''8~ d''8. cis''16~ 
      | cis''8 d''4 b'4. r4 
      \bar "||" \mark \default r2. r8 d''8~ 
      | d''4 b'8 a'8 g'8 ges'8 f'8 r8 
      | r2 e'8 f'8 \tuplet 3/2 {g'8 a'4} 
      | f'8 d'8 des'8 e'8 d'8 f'16 a'16 r4 
      | r2 e'8. aes'16 b'8 es'8 
      | r4 r8 des'8~ des'16 c'8 b16 bes4 
      | a8 aes16 g16~ g8 b8 a8 d'16 f'16~ f'16 a'8 d'16~ 
      | \tuplet 3/2 {d'8 f'8 a'8~} \tuplet 3/2 {a'8 b'8 a'8} g'8 f'16 e'16~ e'8 g'16 d'16~ 
      \bar "||" d'8 r8 r4 g'8 r8 r8 a'8 
      | g'8 r8 r4 a'8 r8 r4 
      | d'8 f'16 a'16 r4 r8. e'16~ e'8 g'16 b'16 
      | r2 f'8 a'8 c''8 g'8 
      | a'8 r8 r4 a'8 b'8 c''8 des''16 c''16 
      | a'8 f'16 d'16~ d'4 f'4. g'8 
      | \tuplet 3/2 {f'8 d'8 a8~} a8 f8 r2 
      | r2 ges16 aes16 es'16 g'16~ g'8 c'8 
      \bar "||" bes8 ges8 es8 ges8 b,8 r8 r4 
      | bes4 c'8 aes16 ges16~ \tuplet 3/2 {ges8 aes8 g'8~} g'16 c'8 bes16 
      | r2 bes16 c'8 d'16~ \tuplet 3/2 {d'8 f'8 es'8~} 
      | es'8 ges'8 \tuplet 3/2 {bes'8 b'8 aes'8} ges'8 es'8 r4 
      | r4 r8 es'8~ es'16 fis'8 g'16 \tuplet 3/2 {bes'4 f'8~} 
      | f'16 c'8 bes16 r2. 
      | r4 r8. bes16~ bes16 c'8 d'16 f'4 
      | es'8 ges'16 aes'16 b'4 aes'16 ges'8 es'16~ es'8 bes8 
      \bar "||" d'8 r8 r4 a'8 b'4. 
      | a'8 b'4. a'8 f'16 d'16~ d'8 r8 
      | r2 g'8 f'8 d'8 e'8 
      | d'8 c'8 a8 f8 d8 r8 r4 
      | r4 d8 f8 a8 ges'16 aes'16~ aes'8 g'8 
      | d'4 r8. d'16~ d'16 f'8 a'16~ \tuplet 6/4 {a'8 d''8 des''16 a'16~} 
      | a'8 r8 r4 b'8 g'16 f'16 d'8 bes8 
      | f'8 r8 r4 f'8 g'8 a'8 b'8 
      \bar "||" \mark \default g'8 r8 r4 b'8 g'4 a'8~ 
      | a'8 r8 r4 a'8 c''16 b'16~ \tuplet 3/2 {b'8 a'8 g'8} 
      | r2 bes'16 b'8.~ b'8 g'8 
      | f'8 g'8 \tuplet 3/2 {a'8 f'8 d'8~} d'8 r8 r8. dis'16~ 
      | dis'8 e'8 \tuplet 3/2 {f'8 g'4} e'8 f'8 g'8 a'16 f'16 
      | e'8 es'8~ \tuplet 3/2 {es'8 g'8 d'8} r2 
      | \tuplet 3/2 {r8 d'8 es'8~} es'8 des'8 es'8 des'16 b16~ \tuplet 3/2 {b8 bes8 a8~} 
      | a8 r8 r8. a16~ a16 des'8 f'16~ f'16 a'16 b'16 aes'16 
      \bar "||" r2 \tuplet 3/2 {r8 e'8 f'8} ges'4~ 
      | ges'4. f'8 e'8 es'8 es'8 ges'8 
      | f'8 es'8 \tuplet 3/2 {des'8 c'4} \tuplet 3/2 {b8 bes8 a8~} a8 aes8 
      | g8 r8 r2. 
      | r8 c''8 des''2~ des''8 bes'8 
      | b'8 g'8 ges'8 bes'8 a'8 ges'8 f'16 e'8 es'16~ 
      | es'8 f'8 es'8 des'8 c'4 \tuplet 3/2 {b8 bes4} 
      | \tuplet 3/2 {a8 aes4} \tuplet 3/2 {g8 b8 a8~} a8 d'8 \tuplet 3/2 {f'8 a'8 es'8~} 
      \bar "||" es'8 aes'8 c''8 c'4 r8 r4 
      | r4 r8 bes'8~ bes'4. f'16 aes'16~ 
      | aes'16 ges'8 es'16~ es'8. f'16~ \tuplet 3/2 {f'8 c'8 aes8~} aes8 f8 
      | \tuplet 3/2 {bes8 c'8 f'8~} f'8 es'8~ \tuplet 3/2 {es'8 d'8 bes8~} bes8 r8 
      | r1 
      | \tuplet 3/2 {des''8 bes'4~} bes'16 b'8 aes'16~ \tuplet 3/2 {aes'8 f'8 g'8~} g'16 a'16 bes'8 
      | es'8 f'8 g'8 a'16 e'16~ e'8 ges'8 \tuplet 3/2 {aes'8 bes'8 ges'8~} 
      | ges'16 e'8 es'16~ es'8 ges'8 \tuplet 3/2 {e'8 d'4} des'8 es'16 d'16~ 
      \bar "||" d'8 e'8 ges'8 aes'8 es'8 ges'8 f'16 g'8 e'16~ 
      | e'4~ \tuplet 3/2 {e'8 g'8 des'8~} des'8 c'8 b8 bes16 a16~ 
      | a8 aes8 g8 b16 a16~ a8 d'8 \tuplet 3/2 {f'8 a'8 c''8~} 
      | c''8 c''8 \tuplet 3/2 {a'8 b'8 a'8~} \tuplet 3/2 {a'8 f'8 e'8~} e'8 d'8 
      | g'8 r8 r8 b'8 \tuplet 3/2 {bes'4 f'8} ges'16 f'8 aes'16~ 
      | \tuplet 3/2 {aes'8 e'8 des'8~} \tuplet 3/2 {des'8 b8 bes8} a8 aes8 g8 b8 
      | a8 r8 r2. 
      | r2 gis'16 a'8.~ a'8 gis'8 
      \bar "||" \mark \default a'8. cis'16~ \tuplet 3/2 {cis'8 d'8 des'8} r2 
      | r4 r8 g'8~ g'4. f'8 
      | d'8 b8 r2. 
      | r4 g'2~ \tuplet 3/2 {g'8 d'8 g'8~} 
      | \tuplet 3/2 {g'8 bes'8 b'8} \tuplet 3/2 {bes'8 g'4} f'8 g'16 a'16~ a'16 g'8 f'16~ 
      | f'8 g'8 a'8 d'8 g'8 d'8 b8 g8 
      | d8 f16 a16~ a8 g'8 a'8 g'8 d'8 g'8 
      | c'8 f'8 \tuplet 6/4 {a'8 d''8 des''16 g'16~} g'8 r8 r4 
      \bar "||" r4 d'8 g'8 b'8 r8 r4 
      | f'8 a'8 c''8 f'8 r2 
      | r8. g'16~ g'8 b'8 \tuplet 3/2 {d''4 cis''8~} cis''8 d''8 
      | b'4 c''8 b'8 \tuplet 3/2 {c''4 bes'8} a'8. g'16~ 
      | g'2 aes'4. g'8 
      | g'8 f'8 \tuplet 3/2 {a'8 c''8 a'8} r2 
      | r4 g'8 b'16 d''16~ \tuplet 3/2 {d''8 d''8 a'8~} \tuplet 3/2 {a'8 d''8 b'8~} 
      | b'8 r8 r4 \tuplet 3/2 {b'8 c''8 b'8} a'8 f'16 es'16~ 
      \bar "||" es'8 aes'8 c''8 des''16 des'16 r2 
      | des'8 ges'8 bes'8 c''16 bes'16 r4 r8. bes'16~ 
      | \tuplet 3/2 {bes'8 ges'8 des'8~} des'16 bes8 es'16~ es'8 r8 r8 es'8~ 
      | es'16 f'16 aes'8 c''16 b'16 bes'16 c'16~ c'8 f'8 aes'8 des''16 bes'16 
      | r4 r8 a'16 ges'16 des'4~ des'16 g'8 es'16~ 
      | es'4~ \tuplet 5/4 {es'8 g'16 es'16 c'16} r4 \tuplet 3/2 {r8 aes'8 ges'8~} 
      | \tuplet 3/2 {ges'8 des'8 bes8~} bes16 ges8 es16~ es8 r8 r4 
      | es8 ges8 bes8 c'16 g'16~ g'8 g'8 es'8 aes'16 d'16~ 
      \bar "||" d'8 r8 \tuplet 3/2 {r8 b'8 ges'8} r4 r8 b'8 
      | c''8 r8 r4 b'8 r8 r4 
      | g'8 d'8 g'16 b'16 bes'16 g'16~ g'8 r8 r4 
      | \tuplet 3/2 {c'8 f'8 a'8~} a'16 b'8 d'16~ d'8 g'8~ \tuplet 3/2 {g'8 b'8 g'8} 
      | r4 r8. d'16 g'8 b'4 d'8~ 
      | d'4 \tuplet 3/2 {c'8 g'8 a'8} ges'4 r4 
      | r4 \tuplet 3/2 {d'8 g'8 b'8} g'4 \tuplet 3/2 {f'8 a'8 aes'8} 
      | d'8 r8 r4 r8 b'4 d'8 
      \bar "||" \mark \default g'4 b'4 g'4 b'16 bes'16 g'8 
      | f'4 a'16 g'8 f'16~ f'8 a'8~ a'16 d'8 g'16~ 
      | g'8 b'8~ b'8. g'16~ g'4 b'8 g'8 
      | a'4 c''4 a'8. c''16~ \tuplet 3/2 {c''8 d'8 g'8~} 
      | g'8. b'16~ \tuplet 3/2 {b'8 a'8 d'8} g'8. b'16~ b'8 g'8 
      | f'4 a'16 g'8 f'16~ f'8 c'8 \tuplet 3/2 {a8 f4} 
      | r1 
      | r8 d'8 b16 g8 f16~ f8 e8 r4 
      \bar "||" r2 r8 d'8 b8 g8 
      | f8 e4 e8~ e16 f8 a16 c'8 g8 
      | r4 r8. g16~ g8 a8~ \tuplet 3/2 {a8 d'8 aes'8~} 
      | aes'16 g'8 aes'16~ \tuplet 3/2 {aes'8 f'8 e'8~} e'8 r8 r8. e'16~ 
      | \tuplet 3/2 {e'8 f'8 g'8~} g'16 a'16 ges'16 d'16~ d'16 e'8 f'16 cis'8 d'8 
      | r2 \tuplet 3/2 {c'8 d'4} e'8 c'8 
      | d'8 e'8 \tuplet 3/2 {f'8 g'8 e'8~} \tuplet 3/2 {e'8 f'8 a'8~} a'8 c''8 
      | e'8 r8 r4 \tuplet 3/2 {e'4 f'8} a'8 b'8 
      \bar "||" f'8 ges'8 aes'8 bes'16 a'16 es'8 f'8 des'8 c'8 
      | r2 \tuplet 3/2 {c'8 des'8 es'8~} \tuplet 3/2 {es'8 f'8 es'8~} 
      | es'16 d'8 des'16~ \tuplet 3/2 {des'8 c'8 bes8} r2 
      | bes8 f8 ges8 aes8 bes8 r8 r8. bes16~ 
      | bes8 a8 bes8 c'8 des'8 es'8 \tuplet 3/2 {f'8 c'8 es'8} 
      | r2 es'8. f'16~ \tuplet 3/2 {f'8 g'8 aes'8} 
      | bes'8 c''16 b'16 aes'16 ges'8 f'16~ f'8 r8 r4 
      | f'8 ges'8 aes'8 bes'8 ges'8 r8 r4 
      \bar "||" ges'8 a'8 bes'8 c''8 bes'16 a'16 g'16 f'16~ f'16 e'8 f'16~ 
      | f'8 r8 r4 f'16 e'8 f'16~ f'16 cis'8 d'16 
      | r2 \tuplet 3/2 {d'8 cis'8 d'8~} d'8 e'8 
      | f'8 d'8 b8 bes16 a16 r2 
      | r8. a16~ a16 b8 cis'16 d'8 e'8~ \tuplet 3/2 {e'8 ges'8 d'8~} 
      | d'16 c'8 b16 g8 a8 r2 
      | r4 \tuplet 3/2 {f8 g8 a8~} a4~ \tuplet 3/2 {a8 b8 c'8} 
      | d'8 e'8~ \tuplet 3/2 {e'8 c'8 d'8~} d'8 r8 r4 
      \bar "||" \mark \default r4 d'8 f'8 a'8 r8 r4 
      | aes'8 c''8 b'8 a'8 g'8 f'16 g'16 a'8 r8 
      | r2 d'8 f'16 a'16~ a'16 c''8 g'16~ 
      | g'16 a'8 b'16~ b'8 g'8 f'4. f'8~ 
      | \tuplet 3/2 {f'8 g'8 a'8} b'8 e'8~ \tuplet 3/2 {e'8 f'8 g'8~} \tuplet 3/2 {g'8 a'8 d'8~} 
      | d'8 r8 r8. d'16~ d'8 e'8 f'8 ges'8~ 
      | ges'16 aes'8 e'16~ e'8 c'8 \tuplet 3/2 {d'8 c'8 b8~} b8 g8 
      | a8 f8 d8 g8 f8 d8 r4 
      \bar "||" r8 c''8 b'8 a'4 g'4 r8 
      | r4 r8 g'8~ \tuplet 3/2 {g'8 a'8 b'8} g'4 
      | f'8 g'16 a'16~ \tuplet 3/2 {a'8 f'8 d'8~} d'8 r8 r4 
      | r4 fis'8 g'8~ g'4~ \tuplet 3/2 {g'8 d'8 g'8} 
      | a'8 c''4 b'8 c'8 f'16 a'16~ \tuplet 3/2 {a'8 c''8 bes'8} 
      | a'16 b'16 r8 r2. 
      | bes'16 b'16 c''16 d''16~ d''4 b'8 d''4 b'8 
      | d''4 b'8 d'8 f'8 r8 r4 
      \bar "||" r4 r8. c''16~ c''8 es''4 es''8~ 
      | es''2 bes'4 a''16 bes''16 r8 
      | r4 r8. c''16~ c''8 es''4 es''8~ 
      | es''4 c''8 des''8 aes'4 r4 
      | r2 r8 es''4 es''8~ 
      | es''4~ es''16 d''16 des''16 c''16~ c''4 es''8 r8 
      | r4 bes''16 b''8. es''4.. es''16~ 
      | es''4 c''8 des''8 aes'4. r8 
      \bar "||" r2 r8 es''4 d''8~ 
      | d''4. c''8 b'4 d''8 r8 
      | r2 d''8. d''16~ d''8 a''16 bes''16~ 
      | bes''4 b'8 d'16 f'16~ f'8 r8 r4 
      | r4 r8 ges'8 r4 aes''8 d''8~ 
      | d''4. des''16 b'16~ b'8. d''16~ d''8 r8 
      | r2 d''8 es''4 d''8~ 
      | d''4 b'8. g'16~ g'4 r4 
      \bar "||" \mark \default r1 
      | r8 gis'8 a'2.~ 
      | a'4.. gis'16 a'4. a'8~ 
      | a'4. bes'8 a'8 f'16 d'16~ d'8 b8 
      | aes'8. g'16~ g'8 b'8 a'8 ges'8 \tuplet 3/2 {f'8 e'4} 
      | \tuplet 3/2 {es'8 f'8 fis'8} \tuplet 3/2 {g'8 bes'4} b'16 e'16 ges'8 aes'8 bes'8 
      | ges'8 es'8 b16 bes8 a16~ \tuplet 3/2 {a8 aes8 g8~} \tuplet 3/2 {g8 b8 a8} 
      | \tuplet 3/2 {d'4 f'8~} \tuplet 3/2 {f'8 a'8 d''8} c''8 r8 r4 
      \bar "||" r1 
      | r4 a'4. g'8 f'8 d'8~ 
      | d'8 b8 r2. 
      | r4 a2~ a16 g16 f8~ 
      | f8 r8 r8. des'16~ \tuplet 3/2 {des'8 c'8 b8} bes8 a8~ 
      | a16 aes8 g16~ g16 bes16 b16 a16~ a8 d'8 \tuplet 3/2 {f'8 a'8 c''8~} 
      | c''16 c''8 a'16~ \tuplet 3/2 {a'8 c''8 g'8~} g'8 r8 r4 
      | r2 g'4. es'8 
      \bar "||" \tuplet 3/2 {aes'8 ges'8 es'8~} \tuplet 3/2 {es'8 bes8 ges'8} f'8 r8 r4 
      | c'8 f'16 aes'16~ aes'16 bes'8 aes'16 d'8 des'16 b16~ \tuplet 3/2 {b8 gis8 a8~} 
      | \tuplet 3/2 {a8 b8 cis'8~} cis'8 d'8 \tuplet 3/2 {e'8 f'8 g'8~} g'16 a'8 bes'16~ 
      | bes'8 bes'8 a'8 g'8 \tuplet 3/2 {f'4 g'8} \tuplet 3/2 {a'8 b'8 bes'8} 
      | \tuplet 3/2 {es'8 ges'8 f'8~} f'16 e'8 es'16~ es'8 d'8 des'16 c'8 bes16~ 
      | bes16 ges8 f16 es4 aes8 ges16 es16~ es16 c8 f16~ 
      | f4. es8 aes8 b,8 r4 
      | r2 bes,8. es16~ es8 aes'8 
      \bar "||" e'8 f'8 a'16 es'8 g16 r4 r8 d8 
      | es16 d16 des8 f8 cis8 d8 es8 f8 g8 
      | gis8 a8 c'16 b8 es16 r4 r8 d'8 
      | e'16 ges'8. \tuplet 3/2 {gis8 a8 es'8~} es'16 des'8 b16~ b16 bes8 a16~ 
      | a8 aes8 g8 bes'8 a'8 d'8 f'8 a'8 
      | g'8 f'8 \tuplet 3/2 {a'8 c''8 d'8} f'8 a'8~ \tuplet 3/2 {a'8 es''8 ges'8} 
      | f'8 r8 r2. 
      | r8. fis'16~ fis'8 g'8~ g'2 
      \bar "||" \mark \default \tuplet 3/2 {g'8 g'4~} g'2 \tuplet 3/2 {g'8 g'4~} 
      | g'4. f'8 r4 g'4 
      | r4 r8. g'16~ g'8 g'4 g'8~ 
      | g'4. d'4 r8 r4 
      | r2 \tuplet 3/2 {g'8 g'4~} g'8 g'8~ 
      | g'4. g'8~ g'8. g'16~ g'4 
      | r2 g'8 g'4 g'8~ 
      | g'4 b'8 g'8 d''4 r4 
      \bar "||" r2. r8 g'8~ 
      | g'4. d'8 bes'4 b'4 
      | r2 a'8 b'4 a'8 
      | g'8 f'8 d'8 bes8 f'4 r4 
      | r4 f'16 f'16 g'16 a'4. b'8 a'16 
      | ges'8 f'8 f'16 e'16 es'8 ges'4 b'8 g'8 
      | ges'4 \tuplet 3/2 {f'8 aes'4} es'8 d'8 des'8 f'8 
      | d'8 ges'8 \tuplet 3/2 {aes'8 b'8 bes'8} e'8 r8 r4 
      \bar "||" r8 c''4. c''8. bes'16 c''4~ 
      | c''4.. bes'16~ bes'8 c''8 r4 
      | r8 c''4. bes'8 c''4.~ 
      | c''4. bes'8 g'8 es'8 r4 
      | r4 b'8 c''4. \tuplet 3/2 {des''4 c''8~} 
      | c''8 des''4 es''4 d'8 r4 
      | r2 d''4 des''8 b'8 
      | \tuplet 3/2 {bes'8 ges'8 es'8~} \tuplet 3/2 {es'8 b8 g'8~} \tuplet 3/2 {g'8 ges'8 es'8~} es'8 a8 
      \bar "||" a'8 r8 r4 d''4. b'8 
      | \tuplet 3/2 {a'4 f'8} d'4 g'8 es'4 bes'16 aes'16~ 
      | \tuplet 3/2 {aes'8 bes'8 aes'8~} aes'16 f'16 b'16 bes'16 gis'8 a'16 aes'16 g'8 b'16 bes'16 
      | a'8 ges'8 f'8 e'8 es'4. b'8 
      | es'16 d'16 r8 r4 aes'4 b'8 e'8 
      | \tuplet 3/2 {bes'8 c'8 d'8} es'8 g'8 g'8 a'8 a'8 b'8 
      | a'8 f'8 d'8 bes8 f'8 r8 r4 
      | r4 fis'8 g'8~ g'4~ g'16 d'8 g'16~ 
      \bar "||" \mark \default \tuplet 3/2 {g'8 d'8 des'8} r2. 
      | r8 f'8~ f'2~ f'8. d'16~ 
      | d'8 a8 r2. 
      | r4 a2~ a8 b8 
      | g8 r8 r4 d'8 c'16 b16~ b16 g8 a16~ 
      | \tuplet 3/2 {a8 b8 c'8~} c'8 d'8 \tuplet 3/2 {e'8 f'8 g'8} a'4 
      | b'8 c''8 b'16 a'8. r2 
      | r4 r8 a'8~ a'4. f'8 
      \bar "||" \tuplet 3/2 {a'8 b'8 c''8~} c''8 d''8~ d''16 a'8 b'16~ \tuplet 3/2 {b'8 b'8 a'8} 
      | \tuplet 3/2 {f'8 g'8 a'8~} \tuplet 3/2 {a'8 b'8 e'8~} e'8 f'16 g'16~ g'16 a'16 a'16 d'16~ 
      | d'8 e'8 f'8 r8 r2 
      | \tuplet 3/2 {c'8 d'8 e'8~} e'8 c'8 d'16 e'8 f'16~ f'16 f'8 a'16 
      | b8 r8 r4 b16 b16 c'16 d'16 e'4 
      | \tuplet 3/2 {f'8 g'8 a'8~} \tuplet 3/2 {a'8 b'8 g'8} r2 
      | r4 r8 g'8 a'8 b'8~ \tuplet 3/2 {b'8 ges'8 a'8~} 
      | a'16 f'8 d'16~ \tuplet 3/2 {d'8 g'8 f'8~} \tuplet 3/2 {f'8 g'8 a'8~} \tuplet 3/2 {a'8 bes'8 c'8~} 
      \bar "||" c'4. des'8 es'4~ \tuplet 3/2 {es'8 f'8 es'8~} 
      | \tuplet 3/2 {es'8 d'8 es'8} f'8 ges'8 f'8 es'8 r4 
      | r4 r8. ges'16 aes'8 bes'8 c''8 es'8 
      | f'4. ges'8 f'4 e'8 es'8 
      | \tuplet 3/2 {d'4 des'8} \tuplet 3/2 {c'8 bes4} r4 r8. bes16~ 
      | bes8 ges8 f8 es8 aes4. f8 
      | b,8 f8 es8 r8 r2 
      | bes,8 g8 d'8 d'8 a8 f8 es8 ges8 
      \bar "||" b,8 es16 a16 r2. 
      | es8 g8 b8 f8 r2 
      | r4 \tuplet 3/2 {a,8 f8 e8} b,8. b,16~ \tuplet 3/2 {b,8 g8 d8} 
      | f8 d8 a,4 r2 
      | r4 a,16 e8 b,16~ b,8 r8 r8 ges8 
      | c4~ \tuplet 3/2 {c8 a8 dis8~} \tuplet 3/2 {dis8 e8 g8} \tuplet 3/2 {b8 d4} 
      | r4 r8. d16~ d4 \tuplet 3/2 {f8 a4} 
      | e8 g8 b16 d'8 a16~ a8 r8 r4 
      \bar "||" \mark \default r4 b,8 es8 c4 \tuplet 3/2 {a8 d4} 
      | r2 c16 des8. \tuplet 3/2 {a4 b8} 
      | e8 g8 \tuplet 3/2 {b8 b4} a8 r8 r4 
      | \tuplet 3/2 {d8 g8 a8} g'8. g'16 es8 c8 a,8 r8 
      | r2 a,4 d8. a16 
      | f8. d16 \tuplet 3/2 {a8 g4} a8 r8 r4 
      | r4 \tuplet 3/2 {f8 f'8 g'8} b'4~ \tuplet 3/2 {b'8 g'8 e'8~} 
      | e'8 b8 ges16 es16 c16 b,16~ b,8 r8 r4 
      \bar "||" r8. b,16~ \tuplet 3/2 {b,8 f8 b,8~} b,4~ \tuplet 3/2 {b,8 g8 b,8} 
      | c4~ \tuplet 3/2 {c8 g8 c8~} \tuplet 3/2 {c8 g8 a8} r4 
      | r4 es8 g8 b8 des8 es8 a16 es16~ 
      | es8 r8 r4 \tuplet 3/2 {d4 es8} f8 g8 
      | d8 f8 a8 c'8 a8 c'8 d'8 g'8 
      | d'8 r8 r4 d'8 f'8 a'8 b'16 ges'16~ 
      | ges'8 a'8 g'8 b'8 \tuplet 3/2 {d'8 f'8 a'8} \tuplet 3/2 {b'4 g''8~} 
      | g''8 r8 r2. 
      \bar "||" r4 aes8 aes'8 \tuplet 3/2 {b8 bes8 b8} bes8 aes'8 
      | bes4. aes'8 es'8 ges'8 bes'8 r8 
      | r4 b,8 ges8 \tuplet 3/2 {aes'8 g'4} \tuplet 3/2 {bes'8 ges'8 es'8~} 
      | es'16 f'16 ges'16 aes'16 g'8 a'8 r2 
      | r4 cis'16 d'16 es'16 aes'16~ aes'8 g'8 a'16 aes'16 es'16 ges'16 
      | e'8 r8 r8. e'16~ \tuplet 3/2 {e'8 g'8 a'8~} \tuplet 3/2 {a'8 d'8 aes'8~} 
      | aes'16 g'8 f'16~ f'8 a'8 c'8 f'8 a'8 b'16 es'16~ 
      | es'8 ges'8 bes'8 b'8 aes'8 es'8 r4 
      \bar "||" r2 bes'4 d'8 f'8 
      | es'8 f'8 \tuplet 3/2 {bes'8 des'8 des'8} bes8 ges16 f16 des8 ges8 
      | des8 ges8 g'8 d'8 \tuplet 3/2 {g'8 aes'8 g'8~} g'8 g'16 aes'16~ 
      | aes'8 g'8~ \tuplet 3/2 {g'8 g'8 e'8~} e'16 fis'16 g'8~ g'16 b'8 es'16~ 
      | \tuplet 3/2 {es'8 aes'8 b'8} \tuplet 3/2 {bes'8 aes'8 bes'8~} \tuplet 3/2 {bes'8 aes'8 g'8~} g'8 g'8 
      | c'8 f'8 a'16 d''16 des''16 b'16 a'8 f'8 d'8 a8 
      | f'4 g'4 a'8\bendAfter #+4  aes'16 f'16 e'8 r8 
      | r1 
      \bar "||" \mark \default r8 d'8 \tuplet 3/2 {f'8 g'8 a'8~} \tuplet 3/2 {a'8 d'8 f'8~} f'16 g'8 a'16~ 
      | a'8 d'8 \tuplet 3/2 {f'8 g'8 a'8} gis'8 r8 r4 
      | r2 \tuplet 3/2 {a'4 d'8~} \tuplet 3/2 {d'8 fis'8 g'8} 
      | a'8. d'16~ d'16 f'16 g'16 a'16~ a'8 d'8 r4 
      | r1 
      | \tuplet 3/2 {aes'8 g'8 a'8~} a'4 \tuplet 3/2 {g'8 a'8 g'8~} g'8 f'8~ 
      | f'4. d'8 f'8. g'16 d'4 
      | r1 
      \bar "||" r8 e'8 \tuplet 3/2 {f'8 g'4} a'8 e'8 f'8 g'16 a'16~ 
      | a'8 e'8 \tuplet 3/2 {f'8 g'8 a'8} aes'8 e'8 \tuplet 3/2 {f'8 g'8 a'8~} 
      | a'8. b''16~ b''4 a'4 d''4 
      | a'4 d''4 a'8 gis'8 r4 
      | r4 r8. a'16 b'16 a'16 gis'16 a'16~ a'8 d''8 
      | aes'8. d''16~ d''8 b'8 g'8 ges'8~ \tuplet 3/2 {ges'8 aes'8 ges'8~} 
      | ges'8 r8 r8. ges'16~ \tuplet 3/2 {ges'8 f'8 ges'8~} ges'16 bes'8 f'16~ 
      | f'8 e'8 f'8 g'16 d'16~ d'8 r8 r4 
      \bar "||" r2 \tuplet 3/2 {ges'8 f'8 ges'8~} ges'8 bes'8 
      | a'8 aes'8 es'8 bes'8 g'8.\bendAfter #+4  aes'16~ aes'4 
      | g'8 aes'16 bes'16~ bes'8 aes'16 e'16~ \tuplet 3/2 {e'8 ges'8 gis'8~} gis'16 a'8 f'16~ 
      | \tuplet 3/2 {f'8 des'8 b8~} b16 bes8 a16~ a8 aes8 g8 b8 
      | a4 r2. 
      | r4 r8 b8 \tuplet 3/2 {bes8 ges8 f8~} f8 es8 
      | aes4. f8 c8 f8 es8 a,8 
      | r1 
      \bar "||" r2 g'4 b'8 a'8 
      | ges'8 f'8 e'8 es'4 r8 r4 
      | r4 r8. es'16~ es'16 d'8 es'16~ es'8 f'8 
      | ges'8 aes'8~ \tuplet 3/2 {aes'8 bes'8 d'8~} d'8 des'16 b16~ b8 r8 
      | r2 des'8 es'8~ \tuplet 3/2 {es'8 f'8 c'8~} 
      | \tuplet 3/2 {c'8 ges'8 a'8~} a'8 b'8 g'8 d'8 bes4 
      | es'8 d'8 \tuplet 3/2 {es'8 g'8 e'8~} \tuplet 3/2 {e'8 ges'8 aes'8~} \tuplet 3/2 {aes'8 bes'8 ges'8~} 
      | ges'8 es'8 \tuplet 3/2 {b8 bes8 a8~} a8 aes8 g8 b8 
      \bar "||" \mark \default a16 d'8 f'16~ f'8 d'4 d'8 a4 
      | r4 r8. a16~ a4~ \tuplet 3/2 {a8 e8 a8~} 
      | a8 f8 d8 r8 r2 
      | r4 r8 a'8~ \tuplet 3/2 {a'8 bes'8 a'8~} a'4 
      | des4 ges'8 aes'8 ges'8. e'16 a'8 bes'8 
      | bes8 r8 r2. 
      | r2 des'16 es'16 f'4 bes'8 
      | es'8 ges'8 \tuplet 3/2 {aes'8 es'8 des'8} b8 bes8 a8 r8 
      \bar "||" r2 a4. b16 cis'16 
      | d'4 e'8 cis'8 \tuplet 3/2 {d'8 e'4} f'8 g'8 
      | des'8 ges'8 aes'8 b'16 bes'16 g'8 ges'8 a'8 b'8 
      | d'8 c'8 b8 g8 es'8 d'8 es'8 f'8 
      | fis'8 g'8~ g'4. bes'8 es'8 d'8 
      | cis'8 d'8 \tuplet 3/2 {es'8 g'8 e'8~} e'16 ges'8 aes'16~ aes'8 bes'8 
      | ges'8 g16 b16~ b16 bes8 a16~ a8 d'8 \tuplet 3/2 {f'8 a'8 d''8} 
      | des''8. a'16 a'4 aes'8\bendAfter #-4  r8 r4 
      \bar "||" r2. r8 b'16 c''16~ 
      | c''2 bes'8 c''8~ \tuplet 3/2 {c''8 b'8 c''8~} 
      | c''2 aes'8 es'4 r8 
      | r8 bes'8 c''2~ \tuplet 3/2 {c''8 es'8 c'8~} 
      | c'8 es'4 c''8 es'4 \tuplet 3/2 {c''4 es'8~} 
      | es'8 c''8 es'4 c''4 \tuplet 3/2 {es'4 c''8~} 
      | c''8 des''4 es''4 d''4 r8 
      | r4 r8. bes'16 b'4. d'8 
      \bar "||" \tuplet 3/2 {b'4 es'8} g'8 b'8 ges'8 des'8 r4 
      | des'8 ges'4 bes'4 d'8 des'8 c'16 b16 
      | r2 es'8 des'8 bes8 ges8 
      | aes8 bes8 \tuplet 3/2 {des'8 es'8 ges'8~} ges'16 aes'16 bes'8~ \tuplet 3/2 {bes'8 des''8 aes'8~} 
      | aes'8 r8 r8. aes'16~ aes'8 g'8 ges'8 a'8 
      | e'8 d'8 r2. 
      | r1 
      | r1 
      \bar "||" \mark \default r2 gis'8 a'4 a'8 
      | gis'8 a'4. g'4 a'4 
      | r2 \tuplet 3/2 {a'4 g'8~} g'8 a'8~ 
      | a'2 f'8 d'8 r4 
      | r2 a'8. f'16~ f'8. a'16~ 
      | a'4.. g'16~ g'8 a'4 a'8~ 
      | a'2 f'8 d'8 r4 
      | r4 r8 a'4. g'8 f'8 
      \bar "||" \tuplet 3/2 {d'4 d'8} a8 f8 g8 r8 r4 
      | g8 a16 b16~ b16 c'8 d'16~ d'8 r8 r4 
      | d'8 cis'8 \tuplet 3/2 {d'8 f'8 g'8} r2 
      | g'8 fis'8 g'8 d''8 a'4 r4 
      | a'8 aes'8 g'8 c''16 g'16~ g'8 r8 r4 
      | g'16 fis'8 g'16~ \tuplet 3/2 {g'8 b'8 f'8} r4 r8. f'16~ 
      | f'16 e'8 f'16~ \tuplet 3/2 {f'8 a'8 e'8} r4 r8 e'8~ 
      | e'8 dis'8 e'8 g'8 d'8 r8 r4 
      \bar "||" \tuplet 3/2 {bes'8 a'8 bes'8~} \tuplet 3/2 {bes'8 es''8 aes'8~} aes'8 r8 r8. aes'16~ 
      | \tuplet 3/2 {aes'8 g'8 aes'8~} \tuplet 3/2 {aes'8 c''8 ges'8~} ges'8 r8 r8. fis'16~ 
      | fis'8 g'8 b'8 f'8 r4 r16 f'8 e'16~ 
      | e'8 a'8 es'4. es'8~ es'16 aes'16 aes'16 des'16~ 
      | des'8 r8 r8 des'8~ des'16 a'16 a'16 ges'16~ ges'8 r8 
      | r4 \tuplet 3/2 {c'8 f'8 a'8} r4 r8 bes8 
      | es'8 r8 r4 r8 aes8~ \tuplet 3/2 {aes8 c'8 ges8} 
      | r4 r8 ges8~ ges16 bes16 es'16 d'16 r4 
      \bar "||" a'8 aes'8~ aes'16 d''16 d''16 g'16~ g'8 r8 r8. g'16~ 
      | g'16 fis'8 g'16~ \tuplet 3/2 {g'8 b'8 f'8} r4 r8 a'16 e'16 
      | r4 \tuplet 3/2 {r8 g'8 d'8} r4 r8 f'8 
      | c'8 e'8 a'4 r8 b8 b8 e'8 
      | aes'4 r8 c'8 g8 f4 b8 
      | \tuplet 3/2 {f8 a8 e8} r2. 
      | r1 
      | r4 \tuplet 3/2 {fis'4 g'8~} g'4. fis'8 
      \bar "||" \mark \default g'8. des'16~ \tuplet 6/4 {des'8. c'16 b16 bes16} a8 r8 r4 
      | r4 r8 f'8~ f'2 
      | d'8 a8 r2. 
      | r1 
      | r4 r8. g'16~ g'8 f'4 g'8~ 
      | g'4 f'8 g'8 a'2 
      | f'2 d'4 d'8 r8 
      | r1 
      \bar "||" r4 d'8 f'8 g'4~ \tuplet 3/2 {g'8 a'8 es'8~} 
      | es'16 d'8 des'16~ \tuplet 3/2 {des'8 f'8 c'8~} c'16 es'8 aes'16~ aes'16 c''16 es''8 
      | r4 r8 e'8~ e'16 ges'8 aes'16~ aes'16 bes'8 ges'16~ 
      | \tuplet 3/2 {ges'8 des'8 b8~} b16 bes8 a16~ a8 aes8 \tuplet 3/2 {g8 b8 a8~} 
      | \tuplet 3/2 {a8 f8 d8} f8 gis,8 r2 
      | r4 r8. a,16~ a,4 \tuplet 3/2 {c8 ges'8 ges'8~} 
      | \tuplet 3/2 {ges'8 c'8 ges'8~} ges'16 f'8 f'16 r2 
      | r4 \tuplet 3/2 {a,4 f8} d8 f8 a8. a,16 
      \bar "||" a,8 r8 r4 r8 g8 aes,4 
      | r4 r8 f16 bes,16~ bes,4~ \tuplet 3/2 {bes,8 g8 c8~} 
      | c4 g8 es8 r4 \tuplet 3/2 {r8 a8 ges8} 
      | r4 r8 aes16 ges16 r4 r8 bes8 
      | es4~ \tuplet 3/2 {es8 a8 d8} r4 \tuplet 3/2 {r8 g8 c8~} 
      | c8 f8 \tuplet 3/2 {aes8 ges4} bes8 r8 r8. bes,16~ 
      | bes,16 aes8 d16~ d8 g8 es8 ges16 aes16 ges'4 
      | bes'8 r8 r4 des'8 ges'8 bes'8. f'16~ 
      \bar "||" f'4~ \tuplet 3/2 {f'8 ges8 c8~} c4 ges8 cis8 
      | \tuplet 3/2 {d8 f8 a8~} a16 bes16 a16 f16 r4 r8. e16~ 
      | e4 ges8 bes8 e8 g8 a8 c'8 
      | a8 c'8 d'8 g'8 c'8 f'8 a'8 b'16 d'16 
      | r1 
      | r4 \tuplet 3/2 {r8 gis'8 a'8~} a'4.. a'16~ 
      | a'8 g'8 \tuplet 3/2 {f'8 d'4~} d'8 r8 r4 
      | r1 
      \bar "||" \mark \default \tuplet 3/2 {gis'8 a'4~} a'8 a'8~ a'2~ 
      | a'2 \tuplet 3/2 {d'4 f'8~} f'8. a'16~ 
      | a'16 gis'16\bendAfter #+4  a'8 g'8 a'4. \tuplet 6/4 {g'16 ges'16 f'16 r8.} 
      | r2 d'4 f'8 gis'16 a'16~ 
      | a'8 a'8~ a'2~ a'8 g'16 a'16~ 
      | a'8 g'4 a'4. \tuplet 3/2 {g'8 a'4} 
      | f'8 d'8 r2. 
      | r8 gis'8 a'2 g'16 f'8 d'16~ 
      \bar "||" d'8 d'8 \tuplet 3/2 {d'4 d'8~} d'4. c'8 
      | d'8. f'16~ f'8 d'4 f'8 d'4 
      | r2 g'8 f'8 fis'8 g'8~ 
      | g'4 f'8 g'16 a'16~ a'8 c''4.~ 
      | c''2.. a'8 
      | \tuplet 3/2 {c''4 a'8~} \tuplet 3/2 {a'8 g'8 f'8~} \tuplet 3/2 {f'8 a'8 f'8~} f'16 e'8 d'16~ 
      | d'16 f'8 d'16~ d'8 c'8 b8 des'8 \tuplet 3/2 {a4 f8} 
      | g4. f8 d4 r4 
      \bar "||" r2. r8 c''8 
      | des''1~ 
      | des''2 c''8 aes'8 des''4 
      | \tuplet 3/2 {c''4 aes'8~} aes'8 des''8 c''2~ 
      | c''8 aes'8 des''8 c''4 aes'4 des''8 
      | c''8. aes'16~ aes'8 c''8~ c''8. c''16~ c''8 b'8~ 
      | b'8 des''4 des''8 bes'8 c''8 c''8 aes'8 
      | des''8 des''8 aes'8 c''4 c''8 a'4 
      \bar "||" c''8 c''8 c''8 g'8~ g'16 b'8 b'16~ b'8 g'8 
      | c''8 c''8 a'8 b'8 b'4 g'8 f'8 
      | d'4 r2. 
      | bes'8 c''8~ c''2~ c''8 f'8 
      | \tuplet 3/2 {c''8 c''4} a'8 b'16 b'16~ b'8 g'8 c''8 c''8 
      | a'8 c''8 b'4 g'8 c''8 c''8 a'8 
      | b'8 b'8 g'8 f'8 d'8 r8 r4 
      | r4 \tuplet 3/2 {bes'8 b'4~} b'2 
      \bar "||" \mark \default \tuplet 3/2 {g'8 a'8 b'8~} \tuplet 3/2 {b'8 d'8 g'8} \tuplet 3/2 {a'4 b'8~} b'8 d'8 
      | a'4 c''8 es''4 f''4 r8 
      | r2. r8 d''16 dis''16 
      | e''16 f''2...~ 
      | f''2... es''16~ 
      | es''16 des''16 es''4 b'8 \tuplet 3/2 {a'8 f'8 ges'8} f'16 e'8 es'16~ 
      | es'8 ges'8~ \tuplet 3/2 {ges'8 b'8 e'8~} e'16 g'16 aes'16 b'16 bes'16 aes'16 g'16 bes'16~ 
      | \tuplet 3/2 {bes'8 aes'8 g'8~} g'8 g'8~ g'16 c'8 f'16~ f'8 d''8 
      \bar "||" \tuplet 3/2 {des''8 a'8 f'8} d'4 f'4 g'16 f'16 d'8~ 
      | d'8 r8 r2 r8 g'8~ 
      | g'8. f'16 d'4 des'16 c'8 b16 es'4 
      | bes8 g8 f8 e16 es16~ es4 r4 
      | r8 d16 e16 g8 a8 g'4 a'8 g'8 
      | r2 es'8 des'8 b8 a8 
      | aes8 a'16 b'16~ b'8 aes'8 \tuplet 3/2 {bes'4 f'8} ges'8 bes'16 a'16~ 
      | a'8 es'8 b4 des'8 f'8 a'8 b'8 
      \bar "||" ges'8 gis'8 a'8 b'8 ges'16 aes'16 g'8 bes'8 g'8 
      | aes'4~ aes'16 ges'16 bes'16 g'16~ g'8 es'8 g'8 bes'8 
      | \tuplet 3/2 {f'8 ges'8 a'8~} \tuplet 3/2 {a'8 b'8 ges'8} des'4 \tuplet 3/2 {b8 bes8 a8} 
      | r1 
      | r4 f'8 ges'16 bes,16~ bes,4. g8 
      | es4 a'8. e'16~ e'8 g'8 a'16 bes'8 f'16 
      | bes'8 aes'8 g'8 ges'8 c'8 f'8 a'8 b'16 es'16~ 
      | es'8 ges'8 \tuplet 3/2 {cis''8 d''8 aes'8~} aes'8 r8 r4 
      \bar "||" r8. a,16~ a,8 ges16 bes,16~ bes,4~ \tuplet 3/2 {bes,8 aes8 es8~} 
      | es16 ges8 a16 e8 r8 r4 dis'16 e'16 g'8 
      | b'8 a'8 ges'16 a'16 aes'8 g'8 r8 r4 
      | des'8 f'16 a'16~ \tuplet 3/2 {a'8 b'8 es'8~} \tuplet 3/2 {es'8 g'8 bes'8~} bes'8 bes'8~ 
      | bes'16 aes'16 g'4 g'8 c'16 d'16 f'16 g'16~ \tuplet 5/4 {g'8 fis''16 g''16 a''16~} 
      | \tuplet 6/4 {a''8 g''8 es''16 gis'16} \tuplet 3/2 {a'8 aes'8 g'8} r2 
      | r1 
      | f''8 g''2.. 
      \bar "||" \mark \default f''16 g''8.~ g''8 aes'8 ges'8 r8 r4 
      | r8. es''16 f''2. 
      | c''8 bes,16 a,16~ a,4 r2 
      | r8. fis''16 g''4. gis''8 a''4~ 
      | \tuplet 6/4 {a''16 aes''16 f''16 es''16 c''16 bes'16} a'8 r8 r2 
      | \tuplet 3/2 {r8 g''8 gis''8} a''2.~ 
      | a''1 
      | \tuplet 3/2 {gis''8 a''4~} a''8. e''16~ e''8 f''4.~ 
      \bar "||" f''2 d''8 des''8 a'8 d''8 
      | \tuplet 3/2 {c''8 a'8 f'8} d'8. bes16 f'4 g'8 r8 
      | r2 g'8 a'8 b'8 g'8~ 
      | g'4.. f'16~ f'4 f'4~ 
      | f'4~ f'16 e'16 f'8 \tuplet 3/2 {d'8 f'8 d'8~} d'4 
      | b8 d'8 b8 a8~ a4.. f16~ 
      | f8 d8 r2. 
      | r4 \tuplet 3/2 {r8 bes'8 c''8~} c''2 
      \bar "||" b'16 c''2... 
      | \tuplet 3/2 {c''8 bes'8 aes'8~} \tuplet 3/2 {aes'8 f'8 es'8~} es'8 aes'8 r4 
      | r4 r8 bes'4. a'8 bes'8~ 
      | bes'4~ \tuplet 3/2 {bes'8 aes'8 bes'8} c''8 bes'4 r8 
      | r4 r8. bes'16~ bes'8 e'8 \tuplet 3/2 {f'8 g'8 ges'8~} 
      | ges'16 es'8 d'16~ \tuplet 3/2 {d'8 f'8 es'8~} es'8 r8 r4 
      | r4 r8. es'16~ es'16 d'8 es'16~ es'8 ges'16 f'16~ 
      | f'8 des'8 bes8 ges8 c'4 r4 
      \bar "||" r2 \tuplet 3/2 {c'8 des'8 es'8~} es'8 f'8 
      | d'8 f'8 a'8 c''16 fis'16 g'8. b'16~ b'8 d'16 g'16~ 
      | g'8 b'4 d'8 g'4 a'8 f'8 
      | r4 r8. fis'16 g'4. d'8 
      | g'8 a'16 b'16~ b'8 d'8 g'8 a'16 b'16~ b'16 d'8 fis'16 
      | g'8 a'8 b'8 g'4 r8 r4 
      | r1 
      | r2. r8. bes'16 
      \bar "||" \mark \default b'4 d''8 r8 r2 
      | r4 r8. bes'16 d''4.. b'16~ 
      | b'8 f'4\bendAfter #-4  r8 r2 
      | r8 a'8 b'2~ b'8 f'16 bes'16 
      | b'8 d''4\bendAfter #-4  r8 r2 
      | r8 b'8~ \tuplet 3/2 {b'8 g'8 d''8~} d''2 
      | b'8 d''4. b'8 f'8 r4 
      | r4 r16 bes'8 b'16~ b'4 f'4 
      \bar "||" b'4 d''8 des''8 \tuplet 3/2 {bes'4 b'8~} b'8 cis''8 
      | d''8 g'8 bes'8 d''8~ d''4. d''8~ 
      | d''8 f''4. g''16 c''8. d''4 
      | f''4 c''4 d''8. bes'16~ bes'16 f'8 g'16~ 
      | g'4~ \tuplet 3/2 {g'8\bendAfter #+4  fis'8 g'8} aes'8 f'8 cis'8 d'8~ 
      | d'4~ \tuplet 3/2 {d'8 bes8 g8} f16 d16 c16 d16 r4 
      | r1 
      | r4 cis''16 d''16 dis''4. e''16 f''16 ges''16 e''16 
      \bar "||" f''8 ges''8~ ges''2~ ges''8 e''8 
      | es''4 c''8 des''8~ des''2~ 
      | des''16 b'16 c''16 des''16 \tuplet 3/2 {es''4 aes'8} g'8 aes'4.~ 
      | aes'8 g'16 ges'16~ \tuplet 3/2 {ges'8 aes'8 bes'8} cis'16 d'16 es'4.~ 
      | es'8 ges'8 \tuplet 3/2 {es'8 des'8 bes8~} bes16 g8 bes16 a8 f8 
      | ges16 f16 d16 b,16 bes,2~ bes,8. g,16~ 
      | g,8 es8 r2. 
      | r4 b'8 cis''8~ cis''2~ 
      \bar "||" cis''8 d''4 f''4 c''8 d''16 des''16 b'16 bes'16 
      | \tuplet 3/2 {g'8 a'8 g'8} aes'8 g'8 d'8 cis'4 d'8 
      | bes16 g16 ges16 cis16 d4 bes,4 r4 
      | r4 \tuplet 3/2 {r8 f''8 g''8~} g''8. c'''16~ c'''8 ges''8 
      | cis''8 d''8~ \tuplet 3/2 {d''8 e''8 f''8~} f''4 des''16 c''16 d''8~ 
      | d''8 c''8 des''4. c''16 b'16 bes'8 fis'8 
      | \tuplet 3/2 {g'4 aes'8~} aes'8. cis'16 \tuplet 3/2 {d'4 f'8~} f'8\bendAfter #-4  r8 
      | r2 r8. g'16~ g'8 d'8 
      \bar "||" \mark \default f'4 g'2~ g'8 g'8~ 
      | g'2 f'8 a'8 aes'16 g'16 r8 
      | r2 a'8. g'16~ g'8 a'8~ 
      | a'4~ a'16 g'8 f'16~ f'8 r8 r4 
      | r2 bes,4 f8 aes16 e16~ 
      | e16 f16 ges16 a16~ a16 b16 dis8 e8 r8 r4 
      | r4 r16 a'8 ges'16 a'4. a'8 
      | d'8 ges'8 a'4 r2 
      \bar "||" r4 \tuplet 3/2 {es'8 gis'8 a'8~} a'8 a'4 aes'16 b16~ 
      | b8 b'4 b'8 \tuplet 3/2 {b4 b'8~} b'8 b'8 
      | a4 c'8 c'8 a'8. a'16~ a'8 a'8~ 
      | a'8 bes8 \tuplet 3/2 {a'4 c''8} b'8 r8 r4 
      | \tuplet 3/2 {a4 a'8~} a'8 a'8 es'8 b'4 b'8 
      | es'8 a'8 a'4 \tuplet 3/2 {f'8 ges'8 b'8~} b'8 b'8 
      | r4 r8. es'16~ es'8 a'8~ a'16 a'8 d'16 
      | es'8 b'4 b'8 \tuplet 3/2 {cis'8 d'8 a'8~} a'8 a'8 
      \bar "||" bes8 b16 bes'16~ bes'8 bes'8 \tuplet 3/2 {f'8 g'8 aes'8} c''4 
      | c''8 r8 r4 bes8 a'16 bes'16~ bes'8 bes'8 
      | bes8 b'8 bes'8 bes'8 d'8 es'16 c''16~ c''8 c''8 
      | bes8 bes'4 bes'8 b8 c'8 c''8 c''8 
      | r2 \tuplet 3/2 {bes8 b8 bes'8~} bes'16 bes'8 b16~ 
      | \tuplet 3/2 {b8 c'8 c''8} c''4 bes8 b'16 bes'16~ bes'8 bes'8 
      | \tuplet 3/2 {b8 c'8 c''8~} c''8 c''8 \tuplet 3/2 {bes8 b8 bes'8} \tuplet 3/2 {bes'4 b8} 
      | c'8 c''8~ c''16 c''8 b16~ b16 c'8 c''16~ c''8 r8 
      \bar "||" r4 r8. b16 c'8 b'4 b'8 
      | gis16 a8 c''16 \tuplet 3/2 {b'8 des''8 c''8} r2 
      | b8 a'4 a'8 \tuplet 3/2 {a8 bes8 b'8~} b'8 b'8 
      | bes4 a'8. a'16 a4 bes8 b'8 
      | r1 
      | r2 a'16 bes'16 b'8~ \tuplet 3/2 {b'8 bes'8 b'8~} 
      | b'2~ b'4~ b'16 bes'8 b'16~ 
      | b'2 a'8 b'8~ b'8. a'16 
      \bar "||" \mark \default b'4 d'8 r8 r2 
      | r4 bes'8 b'8~ b'4. g'8 
      | b'2 g'8 f'8 r4 
      | r4 \tuplet 3/2 {r8 a'8 bes'8} b'4~ \tuplet 3/2 {b'8 f'8 b'8~} 
      | b'4~ \tuplet 3/2 {b'8 f'8 c''8} f'4 c''4 
      | des''4 r2. 
      | r4 r16 cis''8 d''16~ d''8 d''8 cis''16 d''8 b'16~ 
      | b'8 des''8 b'8 g'4 g'8 \tuplet 3/2 {f'4 d'8} 
      \bar "||" f'8 g'8 \tuplet 3/2 {a'8 b'8 ges'8} r2 
      | f'8 g'8 a'16 b'8 e'16~ \tuplet 3/2 {e'8 ges'8 aes'8} bes'8 a'8 
      | r4 r8 es'8~ \tuplet 3/2 {es'8 d'8 es'8~} es'8 f'8 
      | ges'16 aes'8 bes'16 b'8 aes'8~ aes'16 ges'8 f'16 f'8 es'8 
      | d'8 des'8 f'8 des'8 des'8 es'8 \tuplet 3/2 {f'8 g'8 es'8~} 
      | es'8 des'8 \tuplet 3/2 {b8 bes8 a8~} a16 aes8 g16~ \tuplet 3/2 {g8 b8 a8} 
      | r1 
      | r8 a8~ a2~ \tuplet 3/2 {a8 ges8 a8~} 
      \bar "||" a8 fis8~ \tuplet 3/2 {fis8 g8 es8} d4 des8 f8 
      | c8 es8 aes8 bes16 c'16~ c'8 es'8 b8 bes8 
      | \tuplet 3/2 {a8 g8 ges8~} ges8 b8 bes8 ges16 f16~ f8 es8 
      | aes4 \tuplet 3/2 {aes8 bes8 c'8} cis'8 d'8~ d'16 f'8 es'16~ 
      | \tuplet 3/2 {es'8 d'8 ges'8} ges'8 aes'8 e'8 dis'8 e'8 a'8 
      | g'8 a'8 g'8 g'4 c''8 \tuplet 3/2 {a'8 b'4} 
      | \tuplet 3/2 {aes'8 ges'8 es'8~} es'4 f'8 r8 r4 
      | r2 ges'8 ges'8 aes'8 b'8 
      \bar "||" e'8 fis'16 g'16~ g'8 a'8 ges'16 e'8 es'16 d'4 
      | aes'8 g'4 f'8 es'4 b16 bes16 gis'16 a'16~ 
      | a'8 aes'8 g'8 bes'16 g'16~ g'8 aes'4 aes'8 
      | g'8 ges'8 a'8 b'8 \tuplet 3/2 {es'4 d'8} es'8 g'8 
      | e'8 ges'8 aes'8 bes'8 ges'8 des'8 b8 bes8 
      | a4 r2. 
      | r8 a8 b8 d'8~ d'16 f'8 a'16 b'8 d''8 
      | a'8 r8 r2 d'8 f'16 a'16~ 
      \bar "||" \mark \default a'8 f'8 d'8 r8 r2 
      | r2. d''8 des''8 
      | a'8 f'16 d'16~ d'16 a8 f'16~ f'8 r8 r4 
      | r2 f'4 \tuplet 3/2 {d''8 d''8 des''8} 
      | a'8 r8 r2. 
      | r4 bes'8 b'8~ b'4~ \tuplet 3/2 {b'8 a'8 f'8~} 
      | f'16 d'8 a16~ a8 f8 r2 
      | r1 
      \bar "||" r8 b'8~ \tuplet 3/2 {b'8 f'8 a'8~} \tuplet 3/2 {a'8 f'8 d'8~} d'16 b8 a16~ 
      | \tuplet 3/2 {a8 b8 a8} f8 e8 r2 
      | r2 \tuplet 3/2 {dis8 e8 a8~} a16 c'8 dis16 
      | e8 r8 r4 \tuplet 3/2 {d8 f8 a8} c'8 b8 
      | r2. r8. b16~ 
      | \tuplet 3/2 {b8 bes8 b8~} b16 c'8 d'16~ d'8 e'8 f'8 g'8 
      | g'8. a'16~ \tuplet 3/2 {a'8 c''8 a'8~} a'8 r8 r4 
      | r4 g'8 a'8~ a'4~ \tuplet 3/2 {a'8 f'8 bes'8} 
      \bar "||" des''8 bes'8 r2. 
      | a'16 b'16 c''16 aes'16~ aes'8.\bendAfter #-4  f'16 r2 
      | r2 bes'16 des''16 bes'8 \tuplet 3/2 {aes'8 c''8 bes'8~} 
      | bes'16 des''16 b'16 aes'16 \tuplet 3/2 {bes'8 des''8 bes'8} \tuplet 3/2 {des''8 gis'8 a'8} des''8 des''8 
      | bes'8 des''16 c''16~ \tuplet 3/2 {c''8 bes'8 c''8~} \tuplet 3/2 {c''8 des''8 b'8} bes'8 b'16 bes'16 
      | \tuplet 3/2 {b'8 c''8 des''8~} des''16 aes'16 b'16 c''16 \tuplet 3/2 {b'8 c''8 bes'8} \tuplet 3/2 {aes'8 bes'8 b'8} 
      | \tuplet 3/2 {a'8 bes'8 aes'8} bes'16 des''16 c''8 \tuplet 3/2 {des''8 bes'8 aes'8} bes'4 
      | \tuplet 3/2 {d''4 aes'8} bes'8 c''8 b'16 bes'4.. 
      \bar "||" r2 c''16 a'8 f'16~ \tuplet 3/2 {f'8 des''8 c''8} 
      | \tuplet 3/2 {b'8 a'8 b'8} des''8 b'8~ b'16 a'16 b'8 des''16 c''16 a'16 f'16 
      | \tuplet 3/2 {a'8 c''8 a'8} c''16 a'8 aes'16~ aes'16 b'16 a'16 d''16 a'8 b'8 
      | des''16 c''16 b'16 c''16 b'8 c''8 b'16 c''16 b'16 c''16 des''8 c''8 
      | d''16 des''16 b'8 c''16 a'16 b'16 a'16 f'16 a'16 b'16 a'16~ a'16 b'16 a'16 f'16~ 
      | f'16 c''8 b'16~ b'16 c''8 b'16 des''16 b'16 c''8 des''16 c''8. 
      | r1 
      | r4 g'8 gis'16 a'16~ a'4. f'8 
      \bar "||" \mark \default aes'8. f'16~ f'8 a'8~ a'4~ a'16 f'8 b'16~ 
      | b'8 c''8 b'2~ b'8 f'16 a'16~ 
      | a'8 f'16 a'16~ \tuplet 3/2 {a'8 f'8 a'8~} a'4~ \tuplet 3/2 {a'8 f'8 b'8~} 
      | \tuplet 3/2 {b'8 f'8 b'8~} b'8 f'8 \tuplet 3/2 {b'4 ges'8} r4 
      | r2 a'8 f'16 a'16~ a'8 f'8 
      | \tuplet 3/2 {b'4 f'8} b'8 ges'8 b'8 ges'8 b'4 
      | f'16 gis'16 a'16 f'16 a'8 f'8 a'8 f'8 \tuplet 3/2 {a'8 f'8 bes'8} 
      | c''8 f'8 c''8 f'8 \tuplet 3/2 {c''8 f'8 c''8~} c''8 f'16 gis'16 
      \bar "||" a'8 f'8 a'8 f'8 b'8 f'16 c''16~ \tuplet 3/2 {c''8 f'8 c''8~} 
      | c''8 f'16 a'16~ a'8 f'8 a'16 f'8 a'16 f'8 a'8~ 
      | a'16 f'8 a'16~ a'16 f'8 bes'16~ \tuplet 3/2 {bes'8 f'8 bes'8~} bes'16 f'8 a'16 
      | f'4 b'8 f'16 b'16~ b'16 f'16 a'16 f'16~ f'16 b'8 f'16~ 
      | f'4 \tuplet 3/2 {a'8 f'8 a'8~} a'8 f'16 gis'16 a'8 f'8 
      | a'8 f'8 \tuplet 3/2 {a'4 f'8} b'8 f'8 b'8 f'8 
      | a'8 f'8 a'8 f'8 a'16 f'8 a'16~ \tuplet 3/2 {a'8 f'8 a'8} 
      | b'8 f'8 b'8 f'8 b'8 des''8~ des''16 b'16 f'16 bes'16~ 
      \bar "||" bes'8 f'8 \tuplet 3/2 {bes'4 f'8} c''8 des''4 c''8 
      | des''8. c''16 des''4 des''8 c''4 des''8 
      | bes'8 f'8 bes'8 f'8 bes'8 f'8 bes'8 f'16 a'16~ 
      | a'8. f'16~ \tuplet 3/2 {f'8 c''8 des''8} \tuplet 3/2 {c''8 des''8 c''8} r4 
      | r2. aes'8 bes'8~ 
      | bes'4. ges'8 \tuplet 3/2 {c''8 b'8 bes'8~} bes'4~ 
      | bes'4~ bes'16 b'8 bes'16~ \tuplet 3/2 {bes'8 ges'8 f'8~} f'16 e'8 es'16~ 
      | es'16 d'8 des'16~ des'16 c'8 bes16~ bes16 bes16 a16 f16~ f8. a'16~ 
      \bar "||" a'8 d'8 \tuplet 3/2 {a'8 d'8 a'8~} \tuplet 3/2 {a'8 d'8 g'8} b'8 d'8 
      | b'8 d'8 \tuplet 6/4 {b'8 d'8 bes'16 b'16~} b'8 es'8 \tuplet 3/2 {b'8 es'8 bes'8} 
      | ges'8 bes'8 e'8 bes'8 \tuplet 3/2 {e'8 bes'8 e'8} \tuplet 3/2 {bes'8 b'8 f'8} 
      | b'8 ges'8 \tuplet 3/2 {b'8 ges'8 bes'8} b'8 f'8 b'8 f'16 g'16 
      | \tuplet 3/2 {a'4 f'8} bes'8 ges'8 b'8 f'16 a'16 b'8 f'8 
      | a'8 f'8 \tuplet 5/4 {a'8 f'16 a'16 b'16~} b'16 f'8 bes'16~ bes'16 f'8 a'16 
      | d''4 b'8 a'4.\bendAfter #-4  r4 
      | r4 r8 d''8~ d''4. b'8 
      \bar "||" \mark \default a'8 d''4. d''4. d''8~ 
      | d''2 a'8 d'8 r4 
      | r4 r8 bes''8 d''2 
      | a'8 d''16 des''16 \tuplet 3/2 {b'8 a'8 g'8} f'2 
      | d'16 f'8 d'16~ d'4 b8 d'8 b8 a8~ 
      | a4. g8 f4.. d16 
      | a,4 r2. 
      | r1 
      \bar "||" r4 aes,8 c16 bes,16 c16 bes,8.~ bes,16 f8 bes,16~ 
      | bes,4 f8 es8 d8 es8 f8 dis8~ 
      | dis4. e8 ges4 a8. d'16~ 
      | \tuplet 3/2 {d'8 des'8 b8~} \tuplet 3/2 {b8 bes8 a8~} a8 r8 r4 
      | r4 r8. aes16~ aes4~ \tuplet 3/2 {aes8 b8 e'8} 
      | es'8 des'8~ \tuplet 3/2 {des'8 a8 d'8~} \tuplet 3/2 {d'8 e'8 ges'8~} ges'16 a'8 f'16~ 
      | f'8 ges'16 f'16 \tuplet 3/2 {es'4 des'8} c'8 b8 es'8 b8 
      | bes8 a8 aes8 g8 b8 a8 f8 r8 
      \bar "||" r1 
      | \tuplet 3/2 {fis8 g4} \tuplet 3/2 {aes'8 aes'8 g'8~} g'8 a'8 r4 
      | bes4 bes16 bes16 b16 des'16~ des'8 c'8~ \tuplet 3/2 {c'8 g'8 es'8~} 
      | es'16 g'8 b'16~ b'16 aes'8 des'16~ des'8 c'8~ c'16 bes'8 a'16~ 
      | a'16 ges'8 f'16~ f'8 es'8 g'8 ges'8 es'8 bes16 f'16~ 
      | f'8 c'8 \tuplet 3/2 {aes8 aes8 ges8} es8 aes8 \tuplet 3/2 {f8 c8 bes,8~} 
      | bes,8. es16~ \tuplet 3/2 {es8 bes,8 gis,8~} gis,8 r8 r4 
      | r1 
      \bar "||" r8. a,16~ a,8 d8 f4. aes8 
      | d8 f8 \tuplet 3/2 {a8 es'4} r2 
      | r4 r8 es'8~ \tuplet 3/2 {es'8 d'8 es'8~} \tuplet 3/2 {es'8 f'8 des'8~} 
      | des'8 dis'8 e'8 ges'8 es'8 des'8 \tuplet 3/2 {b8 bes8 b8~} 
      | \tuplet 3/2 {b8 des'8 dis'8~} dis'8 e'8 \tuplet 3/2 {ges'8 ges'8 aes'8} bes'8 ges'8 
      | des'8 b8~ b16 bes8 a16~ a16 aes8 g16~ g16 bes16 b16 a16~ 
      | a16 d'8 f'16~ \tuplet 3/2 {f'8 bes'8 d''8~} d''8 des'8 r4 
      | r4 \tuplet 3/2 {r8 a'8 c''8~} c''2 
      \bar "||" \mark \default a'8 b''8 c''4 r2 
      | r4 d''2~ d''8 a'8 
      | aes'8 f'4\bendAfter #-4  r8 r2 
      | r8 gis'8 a'2~ \tuplet 3/2 {a'8 g'8 f'8~} 
      | f'8 g'4 b'8 \tuplet 3/2 {a'8 ges'8 f'8~} f'16 e'8 es'16~ 
      | es'8 ges'8 bes'16 bes'16 b'16 aes'16~ aes'16 ges'8 f'16~ \tuplet 3/2 {f'8 g'8 es'8~} 
      | \tuplet 3/2 {es'8 d'8 des'8} c'8 des'4\bendAfter #-4  r8 r4 
      | r4 r8 e'4 fis'8 g'8. es'16~ 
      \bar "||" es'2. des'8 e'8 
      | \tuplet 3/2 {c'8 es'8 aes'8~} aes'16 c''16 b'16 e'16~ e'8 ges'4 r8 
      | r4 r8 gis'8 a'4. f'8 
      | a'8. d''16~ d''8 b'4 b'8 g'4~ 
      | g'2 f'8 g'8 a'8 f'8 
      | \tuplet 3/2 {d'8 f'8 d'8~} d'4 b4~ \tuplet 3/2 {b8 g8 a8~} 
      | \tuplet 3/2 {a8 f8 d8} f4 r2 
      | r4 ges2~ \tuplet 3/2 {ges8 es8 aes8~} 
      \bar "||" \tuplet 3/2 {aes8 bes8 c'8} es'8 f'8 r2 
      | r2 b,8. aes16~ aes8 f'8 
      | \tuplet 3/2 {d'8 es'8 fis'8} \tuplet 5/4 {g'8 bes'16 a'16 g'16~} g'8 d'8 \tuplet 3/2 {f'8 aes'8 bes'8} 
      | c''8 des''8 aes'16 b'8 aes'16~ aes'16 ges'16 es'16 c'16~ c'8 r8 
      | r4 r8. es'16 ges'4 \tuplet 3/2 {es''8 es''8 aes'8~} 
      | aes'4~ aes'16 c''16 bes'8~ bes'2~ 
      | bes'4. f'8 bes'8 aes'8 f'4 
      | \tuplet 3/2 {des'8 aes'8 f'8} es'4 bes8 r8 r4 
      \bar "||" r4 \tuplet 3/2 {f'8 a'8 c''8} d''2~ 
      | d''4. c''8 \tuplet 3/2 {a'8 des''8 b'8~} b'4~ 
      | b'4 a'8 b'16 a'16~ a'2 
      | e'8 ges'16 a'16~ a'16 b'8 e'16~ e'16 des'8 b16~ b8 r8 
      | r4 r8. ges'16 aes'4~ aes'16 b'16 b'8 
      | bes'16 ges'16 f'16 es'16~ es'16 g'8 f'16~ f'8 d'8 \tuplet 3/2 {aes'8 f'8 cis'8} 
      | d'4 e'8 d'8 f'4\bendAfter #-4  r4 
      | r4 \tuplet 3/2 {r8 fis'8 g'8~} g'4~ g'16 f'8 d'16~ 
      \bar "||" \mark \default d'2 d'2~ 
      | d'2~ d'16 e'8 g'16~ \tuplet 3/2 {g'8 f'8 d'8~} 
      | d'4 r2.\bar  ".."
    }
    >>
>>    
}
