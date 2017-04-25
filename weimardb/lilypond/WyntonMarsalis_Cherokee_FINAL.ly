\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cherokee"
  composer = "Wynton Marsalis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | s2 r2 | s1 | s1 | s1 | s1 
      | bes1:maj | bes1:maj | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:maj | g1:min7 | c1:7 | s1 | c1:min7 | b1:dim | c1:min7 | f1:775+ 
      | bes1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:maj | g1:min7 | c1:7 | s1 | c1:min7 | f1:7 | bes1:6 | s1 
      | cis1:min7 | fis1:7 | b1:maj | s1 | b1:min7 | e1:7 | a1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | g1:min7 | c1:7 | c1:min7 | f1:775+ 
      | bes1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:maj | g1:min7 | c1:7 | s1 | c1:min7 | f1:7 | bes1:6 | s1 
      | bes1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:maj | g1:min7 | c1:7 | s1 | c1:min7 | b1:dim | c1:min7 | f1:775+ 
      | bes1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:maj | g1:min7 | c1:7 | s1 | c1:min7 | f1:7 | bes1:maj | s1 
      | cis1:min7 | fis1:7 | b1:maj | s1 | b1:min7 | e1:7 | a1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | g1:min7 | c1:7 | c1:min7 | f1:775+ 
      | bes1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:maj | g1:min7 | c1:7 | s1 | c1:min7 | f1:7 | bes1:6|
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


      \tempo 4 = 338
      \set Score.currentBarNumber = #-4
     
      \bar "||" \mark \default r2. r8 cis''8 
      | d''2.. cis''8 
      | d''4. c''8 d''8 c''8 bes'4 
      | a'2 a'4. f'8~ 
      | f'16 g'16 a'16 g'16 f'4 \tuplet 3/2 {g'8 a'8 g'8} f'4 
      \bar "||" \mark \default \tuplet 3/2 {d'8 f'8 d'8} bes4 f'8 d'8 bes4 
      | \tuplet 3/2 {d'8 f'8 d'8} bes4 d'16 f'8 d'16 bes4 
      | \tuplet 3/2 {e'8 f'4~^\markup{\left-align \small vib}} f'2 r4 
      | r2 r8. bes'16~ bes'8 a'8 
      | aes'8 g'8 f'8 es'8 d'8 c'8 b8 bes8 
      | a4 bes4 c'4 d'8 f'8~ 
      | f'8 es'8 e'8 f'8 ges'8 aes'8 \tuplet 3/2 {bes'4 ges'8} 
      | aes'8 f'8 ges'8 e'8 f'8 es'8 c'8 cis'8 
      | d'4 f'4 bes'4 c''4 
      | d''2 d''4. f''8~ 
      | f''8 e''8~^\markup{\left-align \small vib} e''2 r4 
      | r1 
      | b''4 c'''2 bes''4 
      | a''2 g''4~ g''16 gis''16 a''16 bes''16~ 
      | bes''4. es''8~ es''2~ 
      | es''8 r8 r2. 
      \bar "||" \tuplet 3/2 {bes''4 a''8} bes''8 a''8 \tuplet 3/2 {aes''8 g''8 ges''8} f''8 e''8 
      | es''8 d''8 des''8 b'8 c''8 bes'8 a'8 aes'8 
      | bes'4 c''4 bes'4 c''8 r8 
      | r4 bes'4 c''4 bes'4 
      | c''8 r8 r8. bes'16~ bes'4 c''4 
      | bes'4 c''8 r8 r8. d''16~ d''8 es''8~ 
      | es''4 d''4 es''8 r8 r4 
      | f''4 fis''4 g''4 ges''8 r8 
      | r4 d''4 es''4 d''4 
      | es''8 r8 r4 es''4 e''4 
      | es''4 e''8 r8 r4 e''4 
      | f''4 e''4 f''2 
      | \tuplet 3/2 {g''4 b''8\glissando } c'''4 bes''4 a''4~ 
      | a''4 g''4 f''4 d''8 es''8 
      | d''2. c''4 
      | bes'4 a'2 g'4 
      \bar "||" fis'1 
      | d''8 es''8~ es''4. cis''4 b'8 
      | fis'2 r2 
      | r1 
      | r8. cis''16~ cis''8 b'8 cis''8 b'16 a'16~ a'8 gis'8 
      | b'4 a'4 gis'4 fis'4 
      | e'2 r2 
      | r2 c'8 e'8 g'8 e'8 
      | fis'8 a'8 gis'8 fis'8 g'8 a'8 b'8 c''8 
      | d''8 b'8 c''8 a'8 gis'8 a'8 \tuplet 3/2 {b'8 gis'4} 
      | a'8 g'16 fis'16~ fis'8 e'8 es'8 e'8 g'8 e'8 
      | c'8 g16 c'16~ c'8 g8 c'16 d'8 b16~ b8 b8 
      | bes8 b8 c'8 d'8 e'8 ges'8 e'8 f'8 
      | \tuplet 3/2 {g'4 a'8} bes'8 c''8 d''8 bes'8 g'8 f'8 
      | d''8 c''8 b'16 a'8 bes'16~ bes'8 r8 \tuplet 3/2 {r8 f'8 a'8} 
      | g'8 f'8 e'8 d'8 \tuplet 3/2 {es'8 f'4} g'8 a'8 
      \bar "||" bes'8. d'16~ d'4 es'4 e'4 
      | f'4 g'4 f'4 d'4 
      | c'4 bes2 r4 
      | r1 
      | r2. d''4 
      | f''2 f''4 f''4~ 
      | f''4 es''4 es''2 
      | d''4 d''2 c''4 
      | c''2 bes'4 bes'4~ 
      | bes'4 a'8 bes'8 a'2 
      | g'8 a'8 g'4.. fis'16~ fis'16 g'8 ges'16~ 
      | ges'4. f'8 ges'8 f'4. 
      | e'8 f'8 e'4. es'8 e'8 es'8~ 
      | es'4. d'8 \tuplet 3/2 {es'8 d'4~} d'4 
      | cis'8 d'8 des'2. 
      | r1 
      \bar "||" \mark \default r4 r8. bes16~ bes8 c'8 d'8 ges'16 a'16~ 
      | a'8 g'8 f'16 es'8 e'16~ e'8 f'8 g'8 a'8 
      | bes'8 a'8 bes'8 c''8 cis''8 d''8 c''8 bes'8 
      | d''8. bes''16~ bes''16 ges''8 f''16~ f''16 bes'8 aes'16~ aes'8 g'8 
      | bes'8 g'8 aes'8 bes'8 c''8 cis''8 d''8 es''8 
      | e''8 f''8 ges''8 aes''8 ges''8 ges''8 ges''8 aes''8 
      | f''16 ges''8 f''16 ges''4 ges''8 f''8 ges''8 e''8 
      | f''8 e''8 es''8 d''8 des''8 b'8 c''8 bes'8 
      | a'8 g'8 \tuplet 3/2 {fis'4 g'8} bes'8 g'8 es'8 c'8 
      | a'8 f'8 g'8 e'8 f'8 es'8 \tuplet 3/2 {des'8 des'8 es'8~} 
      | \tuplet 3/2 {es'8 f'8 des'8} a8 b8~ b16 c'8 d'16 ges'4 
      | \tuplet 3/2 {bes'8 a'8 bes'8~} \tuplet 3/2 {bes'8 b'8 bes'8} aes'8. es''16~ es''16 b'16 c''8 
      | bes'8 c''8 cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8} es''4 
      | d''16 c''8 e''16~ \tuplet 3/2 {e''8 c''8 e''8~} e''8 f''8 e''8 f''8 
      | fis''8 g''8 \tuplet 3/2 {aes''4 g''8} ges''8. f''16~ f''8 ges''8 
      | ges''8 f''8 e''8 es''8 f''4 e''8 es''8 
      \bar "||" d''8 cis''8 d''8 c''8 des''8 bes'8 g'8 ges'8 
      | \tuplet 3/2 {c''8 d''8 c''8} b'8 a'8~ a'8. f'16 fis'4 
      | \tuplet 3/2 {g'8 f'8 e'8~} \tuplet 3/2 {e'8 es'8 e'8~} e'8 f'8 g'8 a'8 
      | bes'8 bes'8 c''4 d''8 es''8 e''8 g''8~ 
      | \tuplet 3/2 {g''8 g''8 e''8} f''8 ges''8 es''8 a'8 g'16 f'8 es''16 
      | d''16 c''16 a'16 a'16 \tuplet 3/2 {g'8 d'8 ges'8} \tuplet 3/2 {d''8 des''8 c''8~} c''8 b'8 
      | bes'8 a'8 bes'8 gis'8 a'8 f'8 \tuplet 3/2 {es'8 e'8 es'8} 
      | aes'8 ges'8 f'8 e'8 es'8 f'8 ges'8 aes'8 
      | bes'8 ges'8 \tuplet 3/2 {es'8 bes4} \tuplet 3/2 {e'8 ges'8 aes'8} d'8 es'16 f'16~ 
      | f'8 es'8 c'8 d'8 es'8 f'8 r4 
      | r1 
      | r2 r16 bes8 d'16~ d'8 des'8 
      | bes8 g8 b8 bes8 a8 bes8 es'8 ges'8 
      | a'8 f'8 es'8 b8 g'8 es'8 des'8 b8 
      | bes''8 g''16 ges''16~ \tuplet 3/2 {ges''8 f''8 e''8~} \tuplet 3/2 {e''8 cis''8 d''8} \tuplet 3/2 {e''8 e''8 d''8} 
      | des''8 b'8 a'8 bes'8 aes'8 ges'4 f'8 
      \bar "||" des'8 e'8 e'8 gis'8 \tuplet 3/2 {gis'8 es''8 cis''8~} cis''16 b'16 a'8 
      | \tuplet 3/2 {bes'4 gis'8} fis'8 e'8 es'8 cis'8 \tuplet 3/2 {bes8 b4} 
      | c'16 cis'8 bes16 c'8 cis'8 e'8 g'8 \tuplet 3/2 {bes'8 b'8 fis'8~} 
      | fis'8 es'8 \tuplet 3/2 {g'8 gis'8 e'8~} e'8 cis'8 es'8 d'16 c'16~ 
      | c'16 d'16 es'8 fis'8 a'8 fis'8 g'8 aes'8 g'8 
      | ges'8 f'8 e'8 cis'8 \tuplet 3/2 {b8 gis8 bes8} b8 gis8 
      | a8 b8 cis'8 d'8 e'8 des'8 c'8 a8 
      | \tuplet 3/2 {bes8 ges8 f8~} f8 gis8 b8 a8 gis8 bes8 
      | e'8 c'8 g4 es'16 d'16 des'8 c'4~ 
      | c'8 cis'4 f'8 \tuplet 3/2 {g'4 e'8~} e'16 f'8 fis'16~ 
      | fis'8 a'8 a'8 b'8 e''8 d''8 e''8 d''8 
      | \tuplet 3/2 {cis''8 e''8 d''8} c''8 b'8 d''8 c''8 b'8 a'8 
      | bes'8 es'8 f'8 e'8 g'4 r4 
      | r1 
      | r2 a''8 g''8 f''8 e''8 
      | es''8 des''8 b'8. a'16~ a'16 bes'16 aes'8 f'8 fis'8 
      \bar "||" \tuplet 3/2 {g'8 f'8 e'8~} e'8 es'8 e'8 f'8 \tuplet 3/2 {g'4 a'8} 
      | bes'4 c''8. d''16~ d''4 es''4 
      | e''4 f''8 r8 r4 e''4 
      | f''4 e''4 f''8 r8 r8. e''16~ 
      | e''8. f''16~ f''4 e''4 f''8 r8 
      | r4 f''4 ges''4 f''4 
      | ges''8 r8 r4 f''4 ges''8. f''16~ 
      | f''4 ges''4. fis''8~ fis''8. g''16~ 
      | g''8 fis''8~ fis''8. g''16~ g''8 r8 r4 
      | a''8. g''16~ g''4 g''8. aes''16 r4 
      | r4 bes''4 a''4 gis''4 
      | a''8 r8 r4 gis''4 a''4 
      | gis''4 a''8 r8 r4 r8 d''8~ 
      | d''16 b''8 c'''16~ c'''2. 
      | bes''4 r2.\bar  ".."
    }
    >>
>>    
}
