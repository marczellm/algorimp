\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Sweet and Lovely"
  composer = "Don Ellis"
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
      | c1:6 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f1:7 | bes2:maj es2:7 | c2:maj g2:7 | c1:6 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f1:7 | bes2:maj es2:7 | c2:maj g2:7 | c1:6 
      | f2:min7 bes2:7 | c1:maj | f2:min7 bes2:7 | c1:maj | aes2:min7 des2:7 | es1:maj | es2:min7 aes2:7 | d2:min7 g2:7 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f1:7 | bes2:maj es2:7 | c2:maj g2:7 | c1:6 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f1:7 | bes2:maj es2:7 | c2:maj g2:7 | c1:6 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f1:7 | bes2:maj es2:7 | c2:maj g2:7 | c1:6 
      | f2:min7 bes2:7 | c1:maj | f2:min7 bes2:7 | c1:maj | aes2:maj des2:7 | es1:maj | es2:min7 aes2:7 | d2:min7 g2:7 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f1:7 | bes2:maj es2:7 | c2:maj g2:7 | c1:6|
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


      \tempo 4 = 134
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 b8. c'16 d'16 e'8 g'16~ g'16 gis'8 a'16 
      \bar "||" \mark \default d''4 g'2^\markup{\left-align \small vib} r4 
      | r1 
      | r16 b8 c'16 d'16 e'8 g'16 bes'8 c''8 des''8 dis''8 
      | e''4 aes'4.^\markup{\left-align \small vib} r8 r4 
      | r2 f'8 gis'8~ gis'16 a'8 c''16~ 
      | c''8 d''4 es'8 d'4 bes'4 
      | r1 
      | r8. c'16 \tuplet 3/2 {e'8 g'8 b'8} \tuplet 3/2 {d''8 fis''8 d''8} \tuplet 3/2 {fis''8 d''8 b'8} 
      \bar "||" des''4. r8 r4 r8 bes'16 g'16 
      | a'4 r2. 
      | r4 r8. g'16~ g'16 a'8 des''16~ des''16 a'8 g'16~ 
      | g'8 e'8~ e'16 e'8 d'16~ d'16 ges'8 bes'16~ bes'16 des''8 ges''16~ 
      | ges''8 f''8~ \tuplet 6/4 {f''16 c''8. cis''16 d''16~} d''16 c''8 a'16~ \tuplet 5/4 {a'16 f'8 e'16 es'16} 
      | d'8^\markup{\left-align \small vib} r8 r4 r8 bes'8~ bes'16 des'8 bes'16~ 
      | \tuplet 3/2 {bes'8 ais8 c'8~^\markup{\left-align \small vib}} c'4 r2 
      | r2. r8 f''8~ 
      \bar "||" f''16 c''8 f''16~ f''16 aes'8 f'16~ f'16 c'8 bes'16~ bes'16 f'16 bes16 aes16 
      | \tuplet 3/2 {g8 d'4} e'8. g'16~^\markup{\left-align \small vib} g'4 r4 
      | r2. r8 c'8 
      | \tuplet 3/2 {d'8 e'4} f'16 g'8 a'16~ a'16 ais'8 c''16~ c''16 cis''8 dis''16 
      | \tuplet 3/2 {f''8 ges''4~} ges''8. f''16 es''8 des''8~ des''8. b'16 
      | bes'8 aes'8 bes'8 g'8~^\markup{\left-align \small vib} g'8. bes'16~ bes'8 g'16 bes'16 
      | ges'8. bes'16 \tuplet 3/2 {aes'4 bes'8} ges'8 bes'8~ \tuplet 3/2 {bes'8 aes'8 bes'8~} 
      | bes'16 g'8 bes'16~ bes'16 g'8 bes'16 a'8 ais'16 gis'16~ \tuplet 6/4 {gis'16 ais'8 g'8 ais'16~} 
      \bar "||" ais'16 g'8 bes'16 a'8 bes'16 aes'16~ aes'16 bes'16 g'16 bes'16 \tuplet 3/2 {a'8 bes'8 gis'8} 
      | a'16 g'8 bes'16~ bes'16 gis'8 a'16 \tuplet 3/2 {gis'8 a'8 g'8} bes'8 e'8 
      | a'8 aes'16 bes'16 g'4^\markup{\left-align \small vib} r2 
      | r8.. e'32~ e'16 g'8 bes'16~ bes'16 es''8 aes''16~ aes''16 ges''32~ ges''8 e''32~ 
      | e''8. es''16~ es''8 des''8~ \tuplet 6/4 {des''16 c''4 bes'16~} bes'8 a'8 
      | aes'2~ aes'8 r8 r4 
      | r8. d'16~ d'16 f'16 gis'16 ais'16 gis'2~ 
      | gis'8 e'8 e'4 r4 c'16 e'8 g'16~ 
      \bar "||" \mark \default \tuplet 6/4 {g'8 bes'8. es''16~} es''2~ es''16 des''8 aes''16~ 
      | aes''8 r8 r2. 
      | r8. bes'16~ bes'16 es''8 aes''16~ aes''2~ 
      | aes''2~ aes''8. a'16~ a'4~ 
      | a'8. d''16 g''2.~ 
      | g''8 r8 r8. aes'16 \tuplet 3/2 {des''4 ges''8} r4 
      | r4 r8 f''8~ \tuplet 5/4 {f''16 e''8. b'16~} b'16 d''8 des''16~ 
      | des''16 c''8 g'16 e'8 d'8 b4 r4 
      \bar "||" r8. bes''16~ bes''2\glissando  g''8 f''8 
      | e''8. e''16~ e''8 r8 r2 
      | r2. \tuplet 3/2 {g''4 a''8~} 
      | \tuplet 6/4 {a''16 bes''4 c'''16~} c'''8 d'''8 c'''4 bes''8. a''16~ 
      | a''4. f''8 e''8 d''4\glissando  c''8 
      | bes'4. aes'4 f'4^\markup{\left-align \small vib} r8 
      | r4 c'16 f'16 a'16 bes'16~ bes'16 a'16 bes'16 a'16 \tuplet 3/2 {bes'8 a'8 bes'8} 
      | \tuplet 3/2 {a'8 bes'8 a'8} \tuplet 3/2 {bes'8 a'8 bes'8~} bes'16 a'16 bes'8 a'16 bes'16 a'16 ais'16~ 
      \bar "||" ais'4 r4 \tuplet 5/4 {r8. bes'16 aes'16~} \tuplet 6/4 {aes'16 bes'8. aes'16 bes'16~} 
      | \tuplet 3/2 {bes'8 gis'8 bes'8} a'16 bes'16. a'16 bes'32~ \tuplet 3/2 {bes'8 a'8 bes'8} \tuplet 3/2 {a'8 bes'8 a'8} 
      | ais'4 r2. 
      | r8 d''8 \tuplet 3/2 {fis''4 d''8~} d''16 b'8 g'16~ \tuplet 6/4 {g'16 e'8 f'16 e'16 d'16~} 
      | d'16 aes'8 es'16 b4 \tuplet 6/4 {aes16 bes4 aes''16~} aes''8 ges''8~ 
      | ges''8 f''8 es''8 bes'8 g'8 es'8^\markup{\left-align \small vib} r4 
      | r8. f''16~ f''8. f''16 e''16 d''8 a'16 ges'8 e'8~ 
      | \tuplet 5/4 {e'16 a'16 bes'16 a'16 g'16} \tuplet 6/4 {f'4~ f'16 e'16~} e'8 r8 r8. d''16~ 
      \bar "||" \tuplet 6/4 {d''16 f''4 f''16} d''4 f''8 r8 r4 
      | \tuplet 6/4 {r4 r16 a'16} aes'16 g'8 a'16~ a'16 bes'8 c''16~ \tuplet 6/4 {c''16 d''4 e''16~} 
      | e''16 a''8 a''16~ \tuplet 5/4 {a''16 f''8. aes''16~} aes''4\glissando  r4 
      | r8. g''16 f''16 c''8. d''8 f''8 \tuplet 6/4 {a''4~ a''16 a''16~} 
      | a''16 bes''8 a''16~ a''8 f''8~ \tuplet 6/4 {f''16 es''4\glissando  f''16~} f''8 d''8 
      | es''8 d''8 bes'4 r4 r8 bes'8~ 
      | bes'16 a'8 d''16~ d''4\glissando  g'4 b'4 
      | c''4 d'4 ais8 cis'8 ais'8 r8\bar  ".."
    }
    >>
>>    
}
