\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "All the Things You Are"
  composer = "Pat Metheny"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \major
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
      | r1 | s1 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | g1:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | d1:7 | g1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | c1:775+ 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim7 
      | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | g1:7 | c1:maj | s1 | c1:min7 | f1:min7 | bes1:7 | es1:maj 
      | aes1:maj | d1:7 | g1:maj | s1 | a1:min7 | d1:7 | g1:maj | s1 
      | fis1:min7 | b1:7 | e1:maj | c1:775+ | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | des1:min7 | c1:min7 | b1:dim7 | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | g1:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | d1:7 | g1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | c1:775+ 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim7 
      | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | g1:7 | c1:maj | s1 | c1:min7 | f1:min7 | bes1:7 | es1:maj 
      | aes1:maj | d1:7 | g1:maj | s1 | a1:min7 | d1:7 | g1:maj | s1 
      | fis1:min7 | b1:7 | e1:maj | c1:775+ | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | des1:min7 | c1:min7 | b1:dim7 | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | g1:7 | c1:maj | s1 
      | c1:min7 | f1:min7 | bes1:7 | es1:maj | aes1:maj | d1:7 | g1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | c1:775+ 
      | f1:min7 | bes1:min7 | es1:7 | aes1:maj | des1:maj | des1:min7 | c1:min7 | b1:dim7 
      | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | g1:7 | c1:maj | s1 | c1:min7 | f1:min7 | bes1:7 | es1:maj 
      | aes1:maj | d1:7 | g1:maj | s1 | a1:min7 | d1:7 | g1:maj | s1 
      | fis1:min7 | b1:7 | e1:maj | c1:775+ | f1:min7 | bes1:min7 | es1:7 | aes1:maj 
      | des1:maj | des1:min7 | c1:min7 | b1:dim7 | bes1:min7 | es1:7 | aes1:maj | g2:7 c2:7 
      | f1:min7 | s2 r2|
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


      \tempo 4 = 307
      \set Score.currentBarNumber = #-1
     
      | bes'8 a'8~ a'16 aes'8 f'16 g'8 e'8 es'8 d'8 
      | b8 c'8 des'8 e'8 des'8 c'8\glissando  b4 
      \bar "||" \mark \default bes4 a4 aes4. bes8~ 
      | bes8 c'4. des'4.. bes16~ 
      | bes8 a8 aes8 e8 g4 aes4 
      | bes4 es8 c'4 des'4 es'8\glissando  
      | d'8 r8 r8 aes8 g4 aes8. f'16~ 
      | f'8. g'16~ g'4 aes'4. g'8~ 
      | g'8 ges'8\glissando  \tuplet 3/2 {f'4 d'8} e'4 f'4 
      | r4 g'8 r8 r2 
      | r8 f'8 e'4 es'4. c'8~ 
      | c'8 f'4. aes'4 es'4 
      | d'4. es'4 f'4 bes8 
      | g'4 aes'4 bes'4 es'4 
      | r2. r8 es'8~ 
      | es'8 c'8 a8 g8 fis8 dis'8 c'8 cis'8 
      | d'8 des'8 c'8 g8 b8 e'8 es'4 
      | d'8 b8 g8 ges8 f4 e4~ 
      \bar "||" e8 fis4. g4. a8 
      | b4 c'4 d'8. e'16~ e'8. f'16~ 
      | f'8\glissando  fis'4 d'4. b8\bendAfter #+4  bes8 
      | b8 r8 r8. d'16~ d'4 fis'4 
      | g'8\glissando  gis'4 e'4. des'8.\bendAfter #+4  c'16 
      | cis'8 r8 r8 e'4 g'4. 
      | bes'8\glissando  b'4 es'4\glissando  d'8 r4 
      | r2 \tuplet 3/2 {ges'4 dis'8} e'8 fis'8 
      \bar "||" g'8 g'8 ges'8 es'8 f'8. g'16~ g'8 ges'16 aes'16~ 
      | aes'8. bes'16~ bes'4 f'8\bendAfter #-4  e'4 des'8~ 
      | des'8 bes8 aes8 es8 g4 aes8. bes16~ 
      | bes4 b4 c'8. cis'16~ cis'4 
      | d'8. es'16~ es'4 c'4 aes4 
      | ges8.\bendAfter #-4  f16~ f8 b4 e'8 b4~ 
      | b8 bes4 es'8 g'4 bes'8. b'16~ 
      | b'4 gis'4 f'4 d'8\bendAfter #-4  cis'8 
      | r4 r8 des'4 f'4 aes'8 
      | b'8. d''16~ d''4 e''8\glissando  f''4. 
      | c''4. bes'4 aes'4 r8 
      | r2 cis''8 bes'8 aes'8 f'8 
      \bar "||" \mark \default g'8 e'8 es'8 des'8 c'8 b8 bes8 f8 
      | aes8 bes8 c'4 des'4. bes8 
      | aes8 e8 g4. aes8 bes4 
      | c'4. es4 f8 \tuplet 3/2 {bes8 g8 aes8~} 
      | aes8 c'8 bes8 d'8 des'8 a8 \tuplet 3/2 {c'4 aes8} 
      | b8 g8 gis8 bes8 b8 d'8 f'8 d'8 
      | e'8 g'8 e'4 c'8 r8 r4 
      | r4 g8 a16 b16~ b8 c'8 b8 bes8 
      | a8 aes8 g8 es8 ges8 d8 f8 g8 
      | \tuplet 3/2 {aes8 bes8 c'8~} \tuplet 3/2 {c'8 es'8 g'8~} g'16 aes'8 g'16~ g'8 ges'8 
      | es'8 c'8 d'8 b8 bes8 aes8 g8 r8 
      | r1 
      | r4 \tuplet 3/2 {r8 d8 f8~} f16 d8 es16~ es16 g8 f16~ 
      | f8 a8\glissando  gis8 e8 g8 dis8 \tuplet 3/2 {fis8 gis8 a8~} 
      | \tuplet 3/2 {a8 b8 c'8~} \tuplet 3/2 {c'8 dis'8 g'8~} \tuplet 3/2 {g'8 e'8 fis'8} a'4 
      | d'8 des'8 c'4 c'8 e'8 dis'8 c'8 
      \bar "||" d'8 b8 c'8 d'8 \tuplet 3/2 {e'8 g'8 b'8~} b'8 gis'8 
      | c''8 gis'8 b'8 gis'8 c''8 gis'8 \tuplet 3/2 {b'4 gis'8} 
      | c''8\glissando  b'4 g'4 d'4 b8~ 
      | b8 g8 r2 b4 
      | c'4 d'4 e'4\glissando  dis'8 e'8~ 
      | e'8 f'4 fis'4 dis'8 c'8 c'8 
      | \tuplet 3/2 {b4 a8~} a8 g8\glissando  \tuplet 3/2 {gis4 b8~} b8 r8 
      | r2 dis'16 e'8 g'16~ g'16 bes'8 c''16~ 
      \bar "||" c''16 des''8 c''16~ c''16 b'8 bes'16~ bes'8 a'8 aes'8 f'8 
      | \tuplet 3/2 {g'8 bes'4} aes'8 f'8 es'8 c'8 d'4~ 
      | d'8 es'8 f'8 g'8 f'8 es'4 a8 
      | c'8 f'8 e'4 es'8 c'8 aes4~ 
      | aes8 es'8 f'4 aes'4. b'8~ 
      | b'8 gis'8 ges'4 f'4 fis'4 
      | e'4 ges'4 es'4 f'4 
      | d'4 dis'8. b16~ b8. d'16~ d'4 
      | gis4 des'4 f'4 aes'4 
      | c''4 des''4 f'4. g'8~ 
      | g'8 bes'4 b8 aes'4 bes'8. c''16~ 
      | c''4 cis''4 dis''4 e''4 
      \bar "||" \mark \default c''8. fis''16~ fis''8 g''8~ g''8. f''16~ f''4 
      | b'8.\glissando  c''16~ c''8 bes'4. r4 
      | r16 fis'8\glissando  g'16~ g'8. es'16~ es'4.. b'16~ 
      | b'8\glissando  c''4 aes'8~ aes'2 
      | aes'8 f'8 es'8 des'8 c'8. es'16~ es'8 f'8~ 
      | f'4. b8 bes4 g'4~ 
      | g'8 r8 r8. g'16~ g'8 e'8 d'4 
      | c''8 d''4 c''8~ c''2 
      | g'8 a'8 c''8. d''16~ d''4 aes'4 
      | r4 r8. aes'16~ aes'8 aes'8 g'8 e'8 
      | f'4 g'8. aes'16~ aes'4 \tuplet 3/2 {bes'4 g'8} 
      | r2 \tuplet 3/2 {g'4 ges'8} f'8 d'8 
      | e'4 es'4~ \tuplet 3/2 {es'8 c'8 gis8~} gis8. a16~ 
      | a4~ a16 c'8 dis'16~ dis'8 g'8 e'8 f'8~ 
      | f'8 a'8 d'8 des'8 c'8 gis8 b8 e'8 
      | es'4 d'8 b8 g8 ges8 f8. e16~ 
      \bar "||" e2 \tuplet 3/2 {bes8 b8 c'8~} c'8 c'8 
      | d'8\glissando  e'4 e'8 g'8 g'8 \tuplet 3/2 {g'8 g'4} 
      | b4 b4 \tuplet 3/2 {d'4 d'8~} d'8 g'8~ 
      | g'8 g'4. c''8\glissando  d''8 d''8 d''8 
      | d'8 r8 r4 e'4 r4 
      | dis'2 fis'4 fis'4 
      | g'8 gis'8 b'4 cis''8\glissando  dis''8 r4 
      | r8 des''8 c''8 aes'8 g'8 e'8 es'8 des'8 
      \bar "||" c'8 b8 bes8 ges8 a8 c'8 f'4 
      | b,8 es8 ges8 d8 f8 a8 c'4 
      | bes,8 d8 f8 d8 e8 aes8 \tuplet 3/2 {b4 es8~} 
      | es8 g8 bes8 g16 aes16~ aes8 c'8 es'8 c'8 
      | des'4. aes'8 e'4 es'8 des'8 
      | r2 gis'8 b'8 gis'8 e'8 
      | g'8 bes'8 g'8 es'4. \tuplet 3/2 {b'8 c''8 des''8~} 
      | des''8 c''8 b'8 bes'8 a'8 aes'8 g'8 e'8 
      | fis'8 es'8 f'8 g'8 aes'8 bes'8 g'8 ges'8 
      | f'8 e'8 es'8 d'8 des'8 b8 c'8 f'8 
      | e'8 des'8 es'8 d'8 b8 a8 ges8 es8 
      | g8 bes8 c'8 a8 cis'8 e'8 f'4 
      \bar "||" \mark \default ges'8 a'8 fis'4 g'8 bes'8 g'4 
      | gis'8 a'8 bes'8 a'8 aes'4 g'4 
      | ges'8 a'8 ges'8 f'8 d'4 f'8 aes'8 
      | f'8 e'8 \tuplet 3/2 {des'4 e'8~} e'8 g'8 e'8 des'8 
      | dis'8 e'8 f'8 aes'8 f'8 e'8 es'8 cis'8 
      | d'8 b8 \tuplet 3/2 {bes8 gis4} f8 fis8 g8 bes8 
      | g8 ges8 f8 dis8 e8 b8 r4 
      | r2 b'8 d''8 b'8 a'8 
      | g'4 f'4. g'8 r4 
      | aes'8\bendAfter #+4  g'8 aes'8 r8 r2 
      | f'8 e'8 es'8 c'8 d'8 f'4 bes'8~ 
      | bes'8 bes4 c'8 d'4 es'4 
      | r2 r8 gis8 \tuplet 3/2 {a8 b8 c'8~} 
      | c'16 dis'8 g'16~ \tuplet 3/2 {g'8 e'8 fis'8} a'4 d'16 des'8 c'16~ 
      | \tuplet 3/2 {c'8 a8 b8} e'4 \tuplet 3/2 {d'8 es'8 d'8~} d'8 cis'8 
      | bes8 gis8 f8 d8 e8. fis16~ fis8. g16~ 
      \bar "||" g8 a8~ a8. b16~ b8 c'8~ c'8. d'16~ 
      | d'4 e'4 fis'4 g'4 
      | a'8. b'16~ b'8. c''16~ c''8. cis''16~ cis''4 
      | d''4 b'4 a'8. g'16~ g'8. fis'16~ 
      | fis'2 d''8\glissando  e''4 dis''8~ 
      | dis''4.. dis''16~ dis''8 e''8 fis''4 
      | g''8\glissando  gis''8~ gis''8. b'16~ b'8\glissando  cis''8 b'4~ 
      | b'8 r8 r8. b'16~ b'8 bes'8 a'4 
      \bar "||" aes'4 g'8 e'8 es'8 des'4 b8~ 
      | \tuplet 3/2 {b8 bes8 ges8} a8 c'8 f'4. e8~ 
      | e8 aes8 b8 aes8 bes8 d'8 \tuplet 3/2 {b4 es'8~} 
      | es'16 d'8 bes16 \tuplet 3/2 {des'4 a8} c'8 d'8~ d'16 e'8 fis'16~ 
      | \tuplet 3/2 {fis'8 g'8 a'8} ges'4 aes'4. e'8~ 
      | \tuplet 3/2 {e'8 dis'8 cis'8} b4 gis'4. b'8~ 
      | b'8 e'8 g'4. bes'8 g'4 
      | b'4 d''4. gis'8 bes'4 
      | r4 r8. c''16~ c''8 es''8 c''8 bes'8 
      | des''8 e''8 des''4 des''8 e''8 des''8. c''16~ 
      | c''16 cis''8 d''16~ d''8 des''8 c''8 b'8 bes'8 a'8 
      | aes'8 fis'16 g'16~ g'8 e'8 dis'8 des'16 c'16~ c'16 b8 bes16 
      \bar "||" \mark \default ges8 a8 r2. 
      | c'8 r8 r2 f'4 
      | bes4. b8 bes8 a8 aes8 es16 g16~ 
      | g8 des'8 c'8 aes8 b8 g8 r4 
      | r4 r8 g8 \tuplet 3/2 {aes8 bes8 c'8~} c'8 es'8 
      | \tuplet 3/2 {g'8 gis'8 a'8~} a'16 aes'8 g'16~ g'8 fis'8 dis'8 f'8~ 
      | \tuplet 3/2 {f'8 g'8 a'8~} a'8 es'8\glissando  d'8. des'16~ des'4 
      | c'4. c'8 d'8\glissando  e'8 e'8 e'8 
      | f'8\glissando  g'8 g'8 g'8 bes'8\glissando  c''8 c''8 c''8 
      | aes'4 aes'4 c''8\glissando  es''8 es''8 es''8 
      | d''8 d''4 d''8 f'8\glissando  g'4 g'8 
      | f'8 f'8 f'4 bes'8 bes'8 bes'4 
      | f'8\glissando  g'8 g'8 g'8 es'4 dis'4 
      | e'8 f'16 fis'16~ fis'8 fis'8 a'8. a'16~ a'8 a'8 
      | c'8\glissando  d'8 d'16 d'8 a'16~ a'8 b'8 b'8 b'8 
      | bes'8 c''16 c''16~ c''16 c''8 c''16\glissando  d''4 d'4\glissando  
      \bar "||" cis'4 r2 r8. c''16\glissando  
      | d''4 d''4 dis''4 es'4\glissando  
      | d'4 r2 r8 dis''8~ 
      | \tuplet 3/2 {dis''8 cis''8 dis''8~} dis''8. e''16~ e''4 \tuplet 3/2 {e'4\glissando  dis'8} 
      | r4 r8. e''16~ e''8 e''4. 
      | e''8\glissando  fis''4 fis'4 g''8\glissando  gis''4~ 
      | gis''8 r8 r4 fis''8 e''8~ e''16 dis''8 b'16 
      | d''4 des''4 c''8 aes'8 g'8 e'8 
      \bar "||" es'8 des'8 c'8 b8 bes8 ges8 a4~ 
      | a8 c'8~ c'8. des'16~ des'4. es'8~ 
      | es'8 f'8~ f'4. g8~ g8. aes16~ 
      | aes8 bes4 c'4. des'8. es'16~ 
      | es'4 r2 r8 aes'8 
      | f'8 dis'8~ dis'16 cis'8 gis'16~ gis'8 e'8 dis'8 cis'8 
      | g'8 es'8 d'8 c'8 \tuplet 3/2 {g'4 g'8~} g'16 es'8 d'16 
      | c'8 r8 r8 gis'4 f'8 es'8 d'8 
      | gis'8 f'8 \tuplet 3/2 {es'8 d'8 aes'8~} aes'8 f'8 es'8 d'8 
      | \tuplet 3/2 {aes'4 e'8} aes'4. e'8 es'8 des'8 
      | aes'8 f'8 es'8 c'8 aes'8 r8 r8. aes'16~ 
      | aes'8 e'8 \tuplet 3/2 {dis'8 cis'8 gis'8~} gis'8 e'8 \tuplet 3/2 {es'8 des'8 aes'8~} 
      \bar "||" \mark \default \tuplet 3/2 {aes'8 f'8 es'8} c'4. aes'8 f'8 es'8 
      | des'8 r8 r8. aes'16~ aes'8 f'8 es'8 des'8 
      | aes'8 e'8 \tuplet 3/2 {es'4 c'8~} c'8 r8 r4 
      | r2 \tuplet 3/2 {aes'4 e'8} es'8 des'8 
      | aes'8 f'8 \tuplet 3/2 {es'8 es'8 es'8} bes'8 g'8 f'8 f'8 
      | b'8 g'8 fis'8 fis'8 c''8 a'8 \tuplet 3/2 {g'8 g'8 d''8~} 
      | d''8 b'8 \tuplet 3/2 {a'8 g'4~} g'8 r8 r8 d''8~ 
      | d''8 b'8 a'8 gis'8 d''8 bes'8 a'16 g'8 c''16~ 
      | c''4. d''4 es''4 c''8 
      | aes'8. f'16~ f'8. e'16~ e'4 es'4 
      | d'4 d''4 bes'4 g'4 
      | r4 r8. f'16~ f'8 d'8 es'8 f'8 
      | g'8 g'8 f'4 es'4. c'8 
      | a8 fis4 dis'8 c'8 cis'8 d'8 des'8 
      | c'8 bes8 \tuplet 3/2 {b4\bendAfter #-4  bes8} r2 
      | d'4 g'4 b'4 d''4~ 
      \bar "||" d''4. d''16 c''16~ c''8. f''16~ f''4~ 
      | f''4. dis''4 fis''4.~ 
      | fis''4. e''8 \tuplet 3/2 {e''4 d''8~} d''8 cis''8~ 
      | cis''8 d''4 e''4 dis''4.~ 
      | dis''4.. cis''16~ cis''8. b'16~ b'4 
      | b'4. a'4. gis'4~ 
      | gis'8 r8 r8 gis'8 b'4 gis'4~ 
      | gis'8 a'8 c''4 \tuplet 3/2 {a'8 f'4} r4 
      \bar "||" r2 c''8 c''8\glissando  bes'8 ges'8 
      | a'8. aes'16~ aes'4. f'4 des'8 
      | r4 r8. des''16~ des''4 g'4 
      | r4 r8. c''16~ c''4. f'8~ 
      | f'8 f'8 e'8. f'16~ f'8 e''4.~ 
      | e''8 r8 r8. cis''16~ cis''4.. dis'16~ 
      | dis'4 es'4 \tuplet 3/2 {d'4 es'8~} es'8 f'8\glissando  
      | f'16 g'8. f'4\bendAfter #-4  e'8 r8 r8. cis'16~ 
      | cis'4 f'4. aes'4 f''8~ 
      | f''4 r4 r8 g'4. 
      | aes'4. g'8\glissando  fis'4. g'8~ 
      | g'8 f'4 e'8~ e'8. des'16~ des'4 
      \bar "||" \mark \default c'1~ 
      | c'2~ c'8 r8 r4\bar  ".."
    }
    >>
>>    
}
