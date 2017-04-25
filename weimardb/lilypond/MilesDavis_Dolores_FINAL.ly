\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dolores"
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
      
      | d1:min | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 
      | g1:min7 | d1:7 | g1:min7 | f1:min7 | e1:min7 | es1 | g1:min7 | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | f1:min7 | a2:min5-7 d2:7 | des1:7sus4 | s1 | d1:min | f2:min7 bes2:7 
      | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | g1:min9 | d1:7 
      | g1:min9 | f1:min9 | e1:min9 | es1 | g1:min7 | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 
      | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | d1:min | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 
      | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | g1:min9 | d1:7 | g1:min7 | f1:min9 
      | e1:min9 | es1 | g1:min7 | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 
      | des1:7sus4 | s1 | d1:min | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 | a2:min5-7 d2:7 | des1:7sus4 
      | s1 | g1:min9 | d1:7 | g1:min9 | f1:min9 | e1:min9 | es1 | g1:min7 
      | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7 | des1:7sus4 | s1 | d1:min 
      | f2:min7 bes2:7 | es1:maj | a2:min7 d2:7 | f1:min11.9 | a2:min5-7 d2:7|
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


      \tempo 4 = 275
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default d''8. e''16~ e''4 f''8. gis''16 a''8 a''8 
      | r2 a''8 r8 r4 
      | r4 b'8 c''8 b'8 aes'8 g'8 ges'8 
      | f'8 e'16 dis'16~ dis'8 f'8 d'16 f'8 e'16~ e'8 d'8 
      | dis'8 f'8 g'8 e'16 a'16~ a'8 es'8 b'8 g'8 
      | c''8 aes'8 cis''8 d''4 dis''8 f''8 g''8 
      | gis''4. e''8 g''8 e''8 f''8 e''16 es''16~ 
      | es''16 c''8 des''16~ des''8 aes'8 c''8. f''16~ f''4 
      \bar "||" es''4 des''8 c''8 b'4 \tuplet 3/2 {a'8 bes'8 bes'8} 
      | r2 a'8 r8 r4 
      | r4 g'8 a'8 \tuplet 3/2 {bes'8 a'8 c''8~} c''8 b'8 
      | c''8 b'8 bes'8 a'8 aes'8 bes8 d'8 f'8 
      | e'8 d'8 dis'8 fis'8 g'8 gis'8 ais'8. e'16 
      | a'8. g'16 b'8 a'8 \tuplet 3/2 {des''4 a'8} d''4 
      \bar "||" es''4. c''4 c''8~ \tuplet 3/2 {c''8 b'8 bes'8} 
      | c''4 f'4. r8 r4 
      | r4 \tuplet 3/2 {g'4 e'8} f'8 dis'16 e'16~ e'8 d'8 
      | dis'8 f'8 d'8 f'8 e'8 d'8 dis'8 fis'8 
      | \tuplet 3/2 {g'8 bes'8 a'8~} a'8 g'8 \tuplet 3/2 {aes'8 bes'8 c''8~} c''16 d''8 es''16~ 
      | es''16 f''8 g''16~ g''16 aes''8 g''16~ \tuplet 3/2 {g''8 fis''8 e''8} \tuplet 3/2 {f''8 e''4} 
      | es''16 d''8 c''16~ c''16 b'8 bes'16~ bes'16 a'8 aes'16~ aes'8 ges'8~ 
      | ges'8 ges'8 e'8 d'8 es'8 fis'16 g'16~ g'16 bes'8 aes'16~ 
      \bar "||" \mark \default aes'8. b'16~ b'8 a'8 \tuplet 3/2 {des''4 a'8} es''8 f''8 
      | r2 g''4. g''8~ 
      | g''8 r8 r2. 
      | f''4. g''8~ g''4. g''8~ 
      | g''8 r8 r4 d''4 g''4 
      | a''4. g''8~ g''4. g''8 
      | r2 aes''2 
      | g''4~ g''16 ges''8 f''16~ f''8 e''8 \tuplet 3/2 {es''8 c''8 des''8~} 
      \bar "||" des''8 b'8 c''8 b'8 bes'8 a'8 aes'8 es'8~ 
      | es'16 b16 bes16 a16 gis4~ \tuplet 3/2 {gis8 ais8 g8} gis8 f'8 
      | a'4. aes'8 g'8 aes'8 \tuplet 3/2 {g'4 a'8~} 
      | a'8 bes'8 c''8 d''8 c''4 bes'4 
      | a'8 r8 r2 \tuplet 3/2 {r8 g'8 a'8} 
      | bes'8 c''8 d''8 es''8~ es''8. f''16~ f''4 
      \bar "||" g''4. aes''8 f''16 es''8.~ es''8 c''8~ 
      | c''8 aes'4 bes'8 c''8. gis'16~ \tuplet 3/2 {gis'8 a'8 des''8~} 
      | des''8 r8 r2 bes'8 gis'16 a'16~ 
      | a'8 g'8 \tuplet 3/2 {aes'8 g'8 f'8~} f'16 e'16 f'8 dis'8 f'8 
      | g'4 bes'8 gis'8 a'8 bes'16 aes'16~ \tuplet 3/2 {aes'8 bes'8 c''8~} 
      | c''16 d''8 f''16~ \tuplet 3/2 {f''8 fis''8 g''8~} g''8 ges''8 f''8 e''8 
      | dis''8 des''8 b'8 r8 r2 
      | bes'8 gis'8 a'8 f'8 des'8 r8 r4 
      \bar "||" \mark \default r4 ges'8 d'4 f'8 d'8 e'8 
      | aes8. ges16 gis8 a8 d'8 e'16 f'16~ \tuplet 3/2 {f'8 e'8 es'8~} 
      | es'8 f'8~ \tuplet 3/2 {f'8 c'8 d'8} es'8 f'8 g'8 aes'8 
      | bes'8 a'16 gis'16~ gis'8 a'8 b'16 des''8 c''16~ c''4 
      | d''8.\bendAfter #-4  des''16 r2. 
      | r4 r8 ges''8~ ges''2 
      | es''4 d''8 r8 r2 
      | r4 r8 d''8 dis''4. e''8~ 
      \bar "||" e''2 es''4. d''8~ 
      | d''2 cis''8 b'8 c''8 ais'8 
      | g'8 a'8 bes'8 a'8 aes'8 es'8 b8 aes8 
      | fis16 g8 aes16~ aes8 r8 r4 bes8 gis8 
      | a8 ais8 c'8 a'4.\bendAfter #+4  aes'8 g'8 
      | a'4 bes'4 c''8 d''8~ d''8. c''16~ 
      \bar "||" c''4. r8 r4 r8 bes'8 
      | a'8 g'4. f'4 es'8 f'8 
      | r2 \tuplet 3/2 {f'4 d'8~} d'16 es'16 fis'8 
      | g'8 a'8 bes'8 a'8 gis'8 ais'8 b'8 c''8~ 
      | c''4 r2. 
      | r2 d''4 cis''8 b'8 
      | c''8 bes'8 gis'8 a'8 bes'8 a'8 aes'8 dis'8 
      | \tuplet 3/2 {e'4 bes8} aes8 bes8 d'8 es'8 f'8 dis'8 
      \bar "||" \mark \default e'8 f'8 dis'4 e'8 f'4 fis'8~ 
      | fis'8 g'8 a'4 \tuplet 3/2 {b'8\bendAfter #+4  bes'8 a'8} g'4 
      | gis'4 a'8. ais'16~ ais'8 b'8 c''8 d''8 
      | es''4 f''4 g''4 f''8 r8 
      | r1 
      | r1 
      | r4 f''4 f''4. g''8~ 
      \bar "||" g''2 f''4 es''8 r8 
      | r2 f''8 g''4 f''8~ 
      | f''4 d''4 b'4 g'8 r8 
      | r2 bes'8 g'8 aes'8 bes'8 
      | c''8 d''8 f''8 fis''8 g''8 ges''8 f''8 e''8 
      | es''8 des''8 b'8 aes'8 bes'8 a'8 aes'8 es'8 
      \bar "||" r1 
      | r4 bes'8 c''8 d''16 f''8 e''16~ e''8 f''8 
      | g''8 g''8\bendAfter #-4  b'8 r8 r2 
      | ais'8 g'8 gis'8 ais'8 f'8 ais'8 g'8 a'8 
      | ges'4 f'8 dis'8 e'8 d'8 es'8 f'8~ 
      | f'8 f'8 r4 d'8 r8 r4 
      | f'4. g'8 r2 
      | a'8 r8 r4 ais'4.\bendAfter #+4  b'8 
      \bar "||" \mark \default bes'4. a'8 bes'8 gis'8 a'8 g'8 
      | aes'4 e'8 d'8 es'8 f'8 \tuplet 3/2 {g'4 a'8} 
      | bes'8 a'8 ais'16 b'16 ais'8 b'8 des''16 es''16~ es''8 f''8 
      | g''4 f''8 e''8 dis''4~ dis''16 cis''8 b'16~ 
      | b'4 bes'8 a'8 aes'8 g'8 d'8 bes8 
      | aes4 r2.\bar  ".."
    }
    >>
>>    
}
