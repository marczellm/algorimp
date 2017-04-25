\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Double Talk"
  composer = "Fats Navarro"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | f1 | f1 | f1:min7 | bes1:7 | g1:min7 | c1:13.9 | a2:min7 aes2:dim | g2:min7 ges2:7 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:7 | f2:min7 bes2:min7 | es2:min7 aes2:7/d 
      | des1 | d1:min7 | es1:min7 | f2:min7 b2:13.9 | f2:min7 bes2:13.9+ | es2:min7 aes2:9+ | des1 | c1:13-.9+11+ 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:13.9 | a2:min7 aes2:dim | g2:min7 ges2:7 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:13.9 | a2:min7 aes2:dim | g2:min7 ges2:7 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:7 | f2:min7 bes2:min7 | es2:min7 aes2:7/d 
      | des1 | d1:min7 | es1:min7 | f1:min7 | s2 bes2:9+ | es2:min7 aes2:9+ | des1 | c1:13-.9+11+ 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:13.9 | a2:min7 aes2:dim | g2:min7 ges2:7 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:13.9 | a2:min7 aes2:dim | g2:min7 ges2:7 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:7 | f2:min7 bes2:min7 | es2:min7 aes2:7/d 
      | des1 | d1:min7 | es1:min7 | f2:min7 b2:13.9 | f2:min7 bes2:9+ | es2:min7 aes2:9+ | des1 | c1:13-.9+11+ 
      | f1 | s1 | f1:min7 | bes1:7 | g1:min7 | c1:13.9 | a2:min7 aes2:dim | g2:min7 ges2:7 
      | f1|
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


      \tempo 4 = 226
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r8 d'8 f'8 dis'16 e'16~ \tuplet 3/2 {e'8 f'8 fis'8} g'8 a'8 
      | bes'8 c''8 d''8 f''8 e''8 es''8 d''8 des''8 
      \bar "||" \mark \default \tuplet 3/2 {c''4 e'8} f'8 bes'8 \tuplet 3/2 {a'4 f'8} d'4 
      | g'8 e'8 d'8 g'8 a'8 c''8 \tuplet 3/2 {d''4 f''8~} 
      | f''4~ \tuplet 6/4 {f''4 aes''16 f''16} c''16 aes'8 f'16~ f'8 r8 
      | r1 
      | r4 \tuplet 3/2 {g'4 a'8} bes'8 c''8 d''8 f''8 
      | a''16 bes''8 a''16 g''8 f''8 e''8 es''8 d''8 des''8 
      | c''8 a'4 g'8 \tuplet 3/2 {aes'4 es''8} c''8 cis''8 
      | d''8 bes'16 g'16~ g'8 f'8 e'8 cis''8 bes'8 b'8 
      \bar "||" c''4 \tuplet 3/2 {e'8 g'8 bes'8} a'8 r8 r4 
      | r8 c'16 d'16~ d'8 f'8 g'8 e'8 f'8 g'8 
      | \tuplet 3/2 {aes'8 bes'8 aes'8} \tuplet 3/2 {g'4 f'8} bes'8. f'16~ f'8 r8 
      | r1 
      | r2 r8 c'''8 b''32 bes''32 a''32 g''16. f''16 
      | e''8 es''8 d''8 des''8 c''8 b'8 bes'8 a'8 
      | aes'8 g'8 ges'8 f'8 e'8 d'8~ \tuplet 3/2 {d'8 f'8 d'8} 
      | es'8 f'8 ges'8 aes'8 bes'8 des''8 \tuplet 6/4 {c''8. bes'8 aes'16~} 
      \bar "||" aes'8 ges'4 c''8 es''8 c''8 \tuplet 3/2 {bes'8 aes'8 e'8} 
      | \tuplet 3/2 {b'8\glissando  c''8 b'8} a'8 e'8~^\markup{\left-align \small vib} e'4. d'8 
      | es'8 f'8 ges'8 aes'8 bes'8 des''8 c''8 bes'8 
      | a'16 bes'16 a'8 ges'4 r4 r8 c'8 
      | f'8 g'8 aes'8 bes'8 a'8 g'8 ges'8 r8 
      | r2. r8 e''16 f''16~ 
      | f''8. c''16~ c''8 es''8 des''8 f'8 aes'8 c''16 des''16~ 
      | des''16 aes'8 g'16~ \tuplet 3/2 {g'8 f'8 e'8~} e'8 des''8 \tuplet 3/2 {bes'8 b'8 c''8~} 
      \bar "||" c''8 e'8 f'8 a'8 bes'8 a'8 dis'8 e'8 
      | g'8 e'8 f'8 g'8 a'16 des''16 c''8 d''8 f''8 
      | g''8 aes''4. d''4 r4 
      | r1 
      | r4 r8 g''16 f''16 e''8 d''8 c''8 a'16 bes'16~ 
      | bes'4 g'8 bes'8 \tuplet 3/2 {a'8 g'8 ges'8~} ges'8 e'16 f'16~ 
      | f'8 g'8 a'8 c''8 d''4 f''8 dis''8 
      | \tuplet 3/2 {e''8 es''8 c''8} a'8. aes'16 cis''8 d''4. 
      \bar "||" \mark \default a'8 bes'8 b'8 c''16 cis''16~ cis''8 d''8 bes'8 g'8 
      | c''8 bes'4 f'8 a'8 aes'8 g'8 ges'8 
      | f'8 g'8 \tuplet 3/2 {aes'4 bes'8} c''16 d''16 c''8 bes'8 g'8 
      | aes'8 f'4 es'8 \tuplet 3/2 {g'4 f'8~} f'8 d'8 
      | e'8 g'8 a'8 bes'8 r2 
      | \tuplet 6/4 {r4 a'16 aes'16} g'8 f'8 \tuplet 3/2 {e'4 g'8} d''8 f''8 
      | e''16 f''16 e''16 d''16 cis''8 b'8 c''8 aes'8 e'8 c'8 
      | aes'16 bes'16 a'16 aes'16 ges'8 f'8 e'8 gis'16 bes'16 dis''8 des''8 
      \bar "||" \tuplet 3/2 {c''8 d''8 c''8} a'4 c''4 r4 
      | r4 r8. c''16 cis''16 d''16 es''16 f''16 \tuplet 6/4 {e''16 f''16 e''8 es''8} 
      | \tuplet 6/4 {des''8 c''16 es''16 d''16 c''16} gis'8 a'8 c''8 aes'8 g'8 f'8~ 
      | \tuplet 6/4 {f'16 bes'8. aes'16 bes'16} aes'8 f'8~^\markup{\left-align \small vib} f'4. f'8 
      | gis'16 a'16 aes'16 g'16~ g'8 f'8 e'8 g'8 bes'8 c''8~ 
      | c''16 des''16 es''16 d''16 \tuplet 3/2 {c''4 bes'8} a'4 g''4 
      | f''4 c''8 d''8 es''4 des''8 c''16 des''16 
      | c''8 bes'8 aes'8 g'8 f'4 es'8 f'8 
      \bar "||" c'8 des'8 e'8 aes'8 c''8 bes'8 aes'16 bes'16 g'16 f'16 
      | d'8 f'8 a'8 c''8 e''8 es''8 \tuplet 3/2 {d''8 des''8 c''8~} 
      | c''8 f''4 dis''16 e''16 es''8 des''8 b'8 a'8 
      | gis'16 a'16 aes'8 ges'4 aes'8. ges'16 r4 
      | r2 gis''16 a''16 aes''16 g''16~ g''8 f''16 e''16 
      | f''16 e''16 d''8 des''8 b'8 a'4. g'8 
      | aes'16 bes'16 aes'16 f'16~ f'8 c'8 es'2 
      | \tuplet 3/2 {c'8 e'8 aes'8} bes'8 c''8 cis''8 d''16 c''16~ c''8 bes'8 
      \bar "||" a'8 c''16 g''16~ g''4 f''4. e''8~ 
      | e''4 c''4 d''4 c''4 
      | \tuplet 3/2 {aes''8 g''8 aes''8} \tuplet 3/2 {g''4 f''8~} f''16 aes''8 c''16~ c''8 r8 
      | r2. r8. d'''16 
      | \tuplet 3/2 {c'''8 c'''8 b''8} bes''8 a''8~ \tuplet 3/2 {a''8 f''8 f''8~} f''8 e''8~ 
      | e''8 g'8 bes'8 c''8 \tuplet 3/2 {des''8 es''8 d''8} c''8 bes'8 
      | a'16 bes'16 a'16 b'16 c''4 cis''8 d''8 bes'8 aes'8 
      | c''8 bes'4 f'8 \tuplet 6/4 {aes'8. dis''16 bes'16 aes'16~} aes'8 g'8 
      \bar "||" \mark \default r2 \tuplet 3/2 {b'8 c''8 d''8} f''8. gis''16~ 
      | gis''8. a''16~ a''8. b''16~ b''8. c'''16~ c'''4~ 
      | c'''16 e'''8 f'''16~^\markup{\left-align \small vib} f'''2~ f'''8 e'''8~ 
      | e'''8 es'''8 d'''8 des'''8 bes''8 r8 r4 
      | r2 r8 bes''8 \tuplet 3/2 {a''8 aes''8 f''8} 
      | e''8 es''8 d''8 des''16 c''16~ c''8 bes'8 g'8 gis'8 
      | \tuplet 6/4 {a'16 bes'16 a'16 gis'16 c''8} \tuplet 3/2 {g'4 e'8} f'8 g'8 a'8 c''8 
      | aes'8 bes'8 f''8 aes''8~ \tuplet 6/4 {aes''16 b''16 c'''8 b''16 a''16} g''8 f''8 
      \bar "||" e''8 es''8 d''8 des''8 \tuplet 3/2 {c''4 e'8} f'8 b'16 a'16~ 
      | a'8 g'8~ \tuplet 6/4 {g'16 f'4 g'16~} g'8 e'8 f'8 g'8 
      | \tuplet 3/2 {gis'8 a'8 aes'8} \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {gis'8 a'8 aes'8} \tuplet 3/2 {g'4 f'8} 
      | gis'16 a'16 aes'8 g'4 \tuplet 3/2 {c''8 d''8 c''8} b'8 a'8 
      | \tuplet 3/2 {bes'4 des'8} f'8 a'8 g'4^\markup{\left-align \small vib} r4 
      | r1 
      | r8 des'''8 \tuplet 3/2 {c'''8 bes''8 a''8} aes''8 g''8 ges''8 f''16 es''16~ 
      | es''8 des''8 c''8 bes'8 b'8 a'16 aes'16~ aes'8 ges'8 
      \bar "||" \tuplet 3/2 {f'8 c''8 d''8} es''4 des''8 aes'8 e'8 f'8 
      | d'8 f'8 a'8 c''8 d''8 des''16 c''16 b'8 g'8 
      | bes'8 bes8 es'8 f'8 \tuplet 3/2 {ges'4 aes'8} bes'8 a'8~ 
      | a'8 aes''8~ aes''4.. fis''16 \tuplet 3/2 {g''8 ges''4} 
      | f''4 c''8 f''8 e''8 d''8 des''8 b'16 bes'16 
      | r4 r8 bes'8 des''4 b'16 c''16 b'16 a'16 
      | aes'8. f'16~ f'4 r2 
      | \tuplet 5/4 {r16 gis''16 a''16 aes''16 g''16~} \tuplet 3/2 {g''8 f''8 e''8~} e''8 c''8 r4 
      \bar "||" f''8. c''16~ c''4 f''4 \tuplet 3/2 {c''4 f''8~} 
      | f''8 c''8 f''16 f''8 e''16~ e''8 f''4 es''8 
      | \tuplet 5/4 {f''8 e''16 f''16 g''16} \tuplet 5/4 {gis''16 a''16 gis''16 a''16 aes''16} g''8 f''8 es''8 d''8 
      | c''16 d''16 c''16 b'16 aes'8 g'4 d'8~ d'8. f'16~ 
      | f'8 g'8 a'8 bes'8 c''8 cis''16 d''16~ d''8 bes'8 
      | g'4. f'8 e'8 des'8 g'8 e'8 
      | f'16 e'16 f'16 e'16 \tuplet 3/2 {d'4 f'8} \tuplet 3/2 {a'4 c''8~} c''4 
      | aes'8 f'16 e'16 des'4 g'4 e'4 
      \bar "||" \mark \default f'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
