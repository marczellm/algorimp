\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Destination K.C."
  composer = "Buck Clayton"
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
      | s2 r4 s4 
      | c1 | c1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | s1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | aes1:7 | g1:7 
      | c1 | g1:7 | s1 | c1 | s1 | s1 | g1:7 | c1 
      | s1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | s1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | aes1:7 | g1:7 
      | c1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1|
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


      \tempo 4 = 248
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. g'4 
      \bar "||" \mark \default \tuplet 3/2 {aes'4 g'8~} g'8 r8 r4 g'8. gis'16~ 
      | gis'8 ais'8 r2 \tuplet 3/2 {ais'8 g'8 aes'8~} 
      | aes'8 g'8 gis'4 \tuplet 3/2 {cis''4 d''8~} \tuplet 3/2 {d''8 c''8 a'8~} 
      | a'4 e'8 g'4. r4 
      | r4 dis''8 dis''4 e''4 d''8 
      | c''4 \tuplet 6/4 {a'8. ais'16 gis'16 a'16~} a'16 gis'8 f'16 dis'8 e'8 
      | g'4 \tuplet 3/2 {e'4 gis'8} \tuplet 3/2 {c''4 c''8~} c''8 c''8~ 
      | c''4 r2 dis''4 
      \bar "||" e''8. c''16~ c''8 dis''4 e''8 e''8 e''8~ 
      | e''8 c''4. r4 dis''4 
      | e''8. c''16~ c''8 dis''8 e''8 e''8 e''4 
      | e''8. c''16~ c''8 c''4. r4 
      | r4 dis''4 e''4. d''8 
      | c''4 a'8 gis'16 a'16 \tuplet 3/2 {gis'8 a'8 f'8} dis'8 f'8 
      | g'4 g'4 aes'8. g'16~ g'8 c''8~ 
      | c''4 r2 aes'8. g'16 
      \bar "||" aes'4 g'8 g'8 aes'4. aes'8 
      | g'4 d''8. c''16~ c''8 aes'4. 
      | g'2 \tuplet 3/2 {a'4 c''8} es''8. g''16~ 
      | g''8. d''16 es''4 des''4 f'4 
      | aes'2 bes'4. aes'16 g'16~ 
      | g'8. f'16~ f'8 bes'4. ges'4 
      | f'8. es'16~ es'8 es'8 g'8 bes'8 es''4 
      | d''8 r8 r4 \tuplet 3/2 {g'8 aes'4~} aes'4 
      \bar "||" g'4. r8 r2 
      | r4 e''4 \tuplet 3/2 {g''4 g''8~} g''8 g''8 
      | g''4 g''4 g''4 gis''8 f''8 
      | e''8 d''8 c''8 b'8 \tuplet 3/2 {bes'4 a'8} aes'4 
      | g'2 \tuplet 3/2 {dis''4 e''8~} e''8 d''8 
      | es''16 d''16 c''16 ais'16 aes'4~ aes'16 g'16 gis'16 f'16 \tuplet 3/2 {dis'4 f'8} 
      | g'4 aes'4 g'4. c''8~ 
      | c''4 r4 r8 a''8 r4 
      \bar "||" \mark \default c'''8 r8 r2 g''4 
      | c'''4 r2 g''4 
      | c'''4 r4 r8. g''16~ g''4 
      | c'''4 r2 g''4 
      | c'''4 d'''8. es'''16~ es'''4 d'''8. c'''16~ 
      | c'''8. ais''16~ ais''4~ \tuplet 6/4 {ais''16 aes''8. g''16 f''16} dis''4 
      | dis''4 c''8 d''8 \tuplet 3/2 {c''4 ais'8~} ais'4 
      | g'4 r2 dis''4 
      \bar "||" e''4 g''4 f''16\bendAfter #+4  e''8 f''16~ f''8 dis''8 
      | e''4 \tuplet 3/2 {g''4 f''8~} f''8 dis''8 e''4 
      | g''4. f''8 e''8 d''16 dis''16 cis''8 b'8 
      | \tuplet 3/2 {bes'4 a'8} aes'4 \tuplet 3/2 {g'4 f'8} e'8 f'8 
      | g'8. g'16~ g'8. gis'16~ gis'8 a'4. 
      | gis'4 \tuplet 6/4 {d''8. dis''16 cis''16 d''16} c''8 b'8 bes'8 a'8 
      | gis'4 aes'4 g'8. cis''16~ cis''8 d''8 
      | c''2 r4 c''4~ 
      \bar "||" c''8 g''4. aes''2 
      | g''4 f''8. e''16~ e''8 d''8 c''8 b'8 
      | bes'8. gis'16 a'4 g'8 f'8 e'8 es'8~ 
      | es'4 cis''8 d''4. c''8. ais'16~ 
      | ais'4 r2 \tuplet 3/2 {b'8 cis''8 d''8} 
      | bes''4.. g''16~ g''2 
      | f''8 e''8 es''8 f''4 es''4. 
      | d''4 a'4 c''4. r8 
      \bar "||" r4 dis''4 e''8. a'16~ a'4 
      | dis''4 e''8. a'16~ a'8 r8 r4 
      | r8. dis''16~ dis''8. e''16~ e''8. g''16~ g''8 e''8 
      | d''4 c''8. g'16~ g'8 r8 r4 
      | r8. e''16~ e''4 \tuplet 3/2 {g''4 a''8~} a''8 c'''8~ 
      | c'''4 a''4~ \tuplet 6/4 {a''16 g''4 f''16~} f''8 c''8 
      | dis''4 dis''8 es''8 d''8. c''16~ c''8 c''8~ 
      | c''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
