\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "April in Paris"
  composer = "Wynton Marsalis"
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
      | s2. r4 | c1 | s2. r4 
      | d2:min5-7 des2:7 | c1:maj | d2:min5-7 aes2:7 | g1:7 | c1:maj | s1 | g1:min7 | c1:7 
      | f1:maj | s1 | b2:min5-7 e2:7 | a2:min7 a2:min/g | fis1:min5-7 | b1:9- | b2:min7 e2:7 | e2:min5-7 a2:9- 
      | fis2:min5-7 f2:dim7 | c2:/e es2:dim | d2:min5-7 g2:7 | c1:6 | b2:min5-7 e2:7 | a2:min7 a2:min/g | fis2:min5-7 b2:9- | e2:maj d4:min7 g4:7 
      | d2:min5-7 g2:7 | c1:maj | e1:min5-7 | a1:13-.9+11+ | d1:9 | d2:min5-7 g2:7 | c1:6 | s1 
      | d2:min5-7 g2:7 | c1:maj | d1:min5-7 | g1:7 | c1:maj | s1 | g1:min7 | c1:7 
      | f1:maj | s1 | b2:min5-7 e2:7 | a2:min7 a2:min/g | fis1:min5-7 | b1:9- | b2:min7 e2:7 | e2:min5-7 a2:9- 
      | fis2:min5-7 f2:dim7 | c2:/e es2:dim | d2:min5-7 g2:7 | c1:6 | b2:min5-7 e2:7 | a2:min7 a2:min/g | fis2:min5-7 b2:9- | e2:maj d4:min7 g4:7 
      | d2:min5-7 g2:7 | c1:maj | e1:min5-7 | a1:13-.9+11+ | d1:9 | d2:min5-7 g2:7 | c1:6 | s1 
      | d1:min5-7|
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


      \tempo 4 = 154
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r2. r8. g''16 
      | \tuplet 3/2 {gis''4 gis''8~} gis''8 gis''8 fis''8 g''8 f''8. f''16~ 
      | f''8 f''16 dis''16~ dis''16 e''16 cis''4 des''8 c''8 ais'16 b'16 
      \bar "||" \mark \default \tuplet 6/4 {aes'4~ aes'16 aes'16~} aes'8 aes'8~ aes'16 fis'16 g'16 f'16~ f'8 f'8~ 
      | f'16 dis'16 e'16 cis'16~ cis'16 d'8 ais16~ \tuplet 3/2 {ais8 ais8 gis8} a16 g8 gis16~ 
      | gis4. ais8~ ais16 b8 d'16~ d'16 g'8 f'16 
      | e'8 r8 r2. 
      | r4 r8. g'16~ g'8 ais'8 g'16 gis'8 ais'16~ 
      | \tuplet 3/2 {ais'8 b'8 c''8~} c''16 cis''8 d''16 e''4 e''8. d''16~ 
      | d''8 e''8 e''4 d''8 e''8~ \tuplet 5/4 {e''16 e''8. d''16~} 
      | d''8 e''8 bes'8 bes'8~ bes'16 bes'8 c''16~ c''16 a'8 g'16~ 
      \bar "||" g'16 cis''16\glissando  d''2..~^\markup{\left-align \small vib} 
      | d''8 b'8 e'4 r2 
      | r4 r8. d''16 c''16 b'8 a'16~ a'16 gis'8 b'16~ 
      | b'8 d''16 f''16 e''4 dis''16 e''4..~^\markup{\left-align \small vib} 
      | e''4 d''4 \tuplet 3/2 {cis''8 d''4} d''8\bendAfter #+4  es''8 
      | d''2.^\markup{\left-align \small vib} c''8 b'8 
      | bes'4 a'16 ais'8 e''16~ e''16 a'8 dis'16 r4 
      | r2 \tuplet 5/4 {a''16 g''16\bendAfter #+4  aes''8 f''16~} \tuplet 6/4 {f''8 e''8. d''16~} 
      \bar "||" d''8 dis''8 es''4 d''4 d''4~ 
      | \tuplet 6/4 {d''16 c''4 ais'16} c''2~^\markup{\left-align \small vib} c''16 b'8 d''16~ 
      | \tuplet 3/2 {d''8 c''8 b'8~} b'16 bes'8 aes'16~ aes'16 g'8 f'16~ f'16 d'8 dis'16~ 
      | dis'8 e'8 r2. 
      | r4 r16 f''16 e''16 f''16 \tuplet 3/2 {e''8 e''8 dis''8} e''16 d''16 c''16 b'16~ 
      | b'16 d''16 c''16 b'16 a'8 gis'16 a'16 b'8 a'16 c''16 \tuplet 3/2 {b'8 a'8 g'8} 
      | \tuplet 3/2 {gis'8 dis'8 fis'8} \tuplet 3/2 {dis'8 e'8 fis'8} \tuplet 3/2 {gis'8 a'8 b'8~} \tuplet 6/4 {b'16 gis'16 a'8 f'16 gis'16~} 
      | gis'16 fis'16 e'16 cis'16~ \tuplet 6/4 {cis'16 a4 dis'16~} \tuplet 3/2 {dis'8 c'8 f'8} \tuplet 3/2 {d'8 e'8 a'8} 
      \bar "||" \tuplet 6/4 {g'8 f'16 e'8 d'16~} \tuplet 5/4 {d'16 f'8 aes'16 g'16~} g'16 f'16 e'16 g'16~ \tuplet 6/4 {g'16 ais'8. g'16 gis'16~} 
      | \tuplet 3/2 {gis'8 ais'8 cis''8} b'16 cis''16 b'16 ais'16~ ais'16 b'16 ais'16 gis'16 ais'8 aes'16 g'16 
      | f'16 e'16 g'16 a'16 \tuplet 3/2 {bes'8 g'8 gis'8} \tuplet 3/2 {a'8 c''8 a'8} \tuplet 3/2 {bes'8 c''8 cis''8} 
      | \tuplet 3/2 {d''8 es''8 dis''8} \tuplet 3/2 {e''8 e''8 f''8} \tuplet 3/2 {dis''8 e''8 f''8} g''8 bes''8 
      | g''16 gis''16 gis''16 aes''16 \tuplet 3/2 {g''8 f''8 g''8} g''16 g''16 f''16 e''16 \tuplet 3/2 {f''8 f''8 f''8} 
      | \tuplet 6/4 {e''16 e''8. d''16 e''16~} e''16 e''16 es''8 \tuplet 6/4 {d''16 es''8. d''16 des''16~} \tuplet 3/2 {des''8 c''8 ais'8} 
      | \tuplet 3/2 {c''8 cis''8 b'8} c''8 ais'8 \tuplet 3/2 {dis''4 e''8~} e''8 d''8~ 
      | \tuplet 6/4 {d''16 aes''16 g''16 ges''8 f''16~} f''8 e''8 \tuplet 6/4 {es''8. d''8 cis''16~} cis''8 b'8~ 
      \bar "||" \mark \default b'8 es'4.\glissando  f'4~ f'16 g'8 e'16 
      | r1 
      | r4 r8. ges'''16 des'''32 c'''32 b''32 aes''32 g''32 ges''32 e''32 f''32 \tuplet 6/4 {es''16 b'16 bes'16 g'16 f'16 e'16} 
      | f'32 d'32 c'16. dis'32 f'32 aes'32 \tuplet 5/4 {g'16 f'16 d'16 dis'16 f'16} g'4 r4 
      | r2 b'4 \tuplet 3/2 {c''8 d''4} 
      | e''4 e''4 \tuplet 6/4 {e''4~ e''16 e''16~} \tuplet 6/4 {e''4~ e''16 d''16} 
      | e''4 f''4 g''4 a''4 
      | fis''2...^\markup{\left-align \small vib} g''16~ 
      \bar "||" g''8. e''16~ e''8 c''8 f'16 a'8.^\markup{\left-align \small vib} r4 
      | r2. r8. f''16~ 
      | f''16 g''16 gis''16 f''16~ f''16 e''8 d''16~ \tuplet 6/4 {d''8 c''8. b'16~} b'8 a'8 
      | gis'16 a'8. \tuplet 3/2 {b'4 b'8~} b'8\bendAfter #+4  c''4. 
      | \tuplet 3/2 {b'8\bendAfter #+4  c''8 b'8\bendAfter #+4 } c''8 b'16\bendAfter #+4  c''16~ c''16 ais'8 b'16~ b'8 ais'16\bendAfter #+4  b'16~ 
      | \tuplet 6/4 {b'16 ais'16\bendAfter #+4  b'8. b'16~} b'8 a'8 ais'4 \tuplet 3/2 {ais'4 ais'8~} 
      | ais'8 ais'8 gis'8 a'4 a'8 a'8 g'8~ 
      | g'16 aes'8 aes'16~ aes'8 aes'8 \tuplet 3/2 {fis'4 g'8~} g'8 a'8 
      \bar "||" b'16\bendAfter #+4  c''8.~ c''2 e''8. c''16 
      | r1 
      | r4 r16 g'8 f'16 g'8 a'8~ a'16 g'8 f'16 
      | e'8 r8 r2. 
      | \tuplet 6/4 {r4 cis''16 d''16~} d''4 d''4 e''4~ 
      | \tuplet 6/4 {e''16 c''4 a'16} r2 \tuplet 3/2 {b'8 c''8 d''8} 
      | c''16 b'16 a'16 gis'16~ \tuplet 6/4 {gis'8 b'16 d''8 f''16~} f''16 d''16 fis''16 e''16~ e''16 c''16 b'16 d''16~ 
      | d''16 c''16 a'16 gis'16 \tuplet 3/2 {a'8 b'8 a'8} \tuplet 3/2 {bes'8 aes'8 g'8} \tuplet 3/2 {f'8 e'8 d'8} 
      \bar "||" \tuplet 3/2 {f'8 aes'8 g'8} \tuplet 3/2 {f'8 e'8 g'8} bes'8 g'16 gis'16 \tuplet 5/4 {ais'16 b'16 c''16 cis''16 d''16~} 
      | d''16 b'16 c''16 cis''16 \tuplet 5/4 {d''8 dis''16 e''16 f''16~} f''16 e''16 f''16 e''16 \tuplet 3/2 {f''8 dis''8 e''8} 
      | \tuplet 3/2 {e''8 es''8 d''8} \tuplet 3/2 {es''8 d''8 des''8} c''16 cis''16\bendAfter #+4  d''16 cis''16 d''16 cis''16\bendAfter #+4  d''16 c''16 
      | \tuplet 6/4 {b'8 c''8 d''16 des''16~} des''16 c''16 b'16 gis'16 a'16 bes'16 a'16 bes'16 a'16 bes'16 g'16 aes'16~ 
      | \tuplet 6/4 {aes'8 g'16 ais'8 aes'16~} aes'16 g'16 f'16 es'16 d'16 fis'16 g'16 f'16 g'16 fis'16 g'8 
      | f'8 dis'16 e'16 f'8 g'8 ais'8 aes'8 g'16 f'16 d'16 dis'16 
      | \tuplet 3/2 {e'8 g'4} \tuplet 3/2 {a'4 b'8~} b'16 d''16 c''16 b'16~ b'8 a'8 
      | \tuplet 3/2 {ais'8 gis'8 dis'8} f'4 g'16 f'16 cis'8 \tuplet 6/4 {dis'4 e'16 d'16} 
      \bar "||" b4 \tuplet 3/2 {aes4 g8~} \tuplet 6/4 {g4~ g16 d'16~} \tuplet 5/4 {d'16\glissando  f'8. e'16~} 
      | e'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
