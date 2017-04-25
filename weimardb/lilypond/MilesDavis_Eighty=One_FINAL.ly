\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Eighty-One"
  composer = "Miles Davis"
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
      | s2 r2 
      | f1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 | bes1:7sus4 | s1 | f1:7sus4 | s1 
      | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 | s1 | bes1:7sus4 | f1:7sus4 | s1 
      | bes1:7sus4 | s1 | f1:7sus4 | s1 | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 
      | s1 | bes1:7sus4 | f1:7sus4 | s1 | bes1:7sus4 | s1 | f1:7sus4 | s1 
      | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 | s1 | bes1:7sus4 | f1:7sus4 | s1 
      | bes1:7sus4 | s1 | f1:7sus4 | s1 | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 
      | s1 | bes1:7sus4 | f1:7sus4 | s1 | bes1:7sus4 | s1 | f1:7sus4 | s1 
      | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 | s1 | bes1:7sus4 | f1:7sus4 | s1 
      | bes1:7sus4 | s1 | f1:7sus4 | s1 | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 
      | f1:sus4|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 6/4 {bes'16 b'16 f''8. f''16~} 
      \bar "||" \mark \default f''8 es''8 r2. 
      | r8 g''4 f''8 f''8 es''8 c''8 g'8 
      | f'8 f'8 r2. 
      | r2 r8 g''16\bendAfter #+4  fis''16 g''8 f''8 
      | f''8 es''8 \tuplet 3/2 {c''4 g'8~} g'8 f'8 r4 
      | r2 aes'16 bes'8 aes'16 \tuplet 3/2 {bes'8 aes'8 bes'8} 
      | \tuplet 6/4 {aes'8 bes'8. aes'16~} aes'8 f'4 es'8 r4 
      | r2. aes'8 bes'8 
      | des''8 es''8 f''8 g''8 aes''8 des'''16\glissando  es'''16~ es'''4 
      | des'''8 des'''8 r4 r8 aes''4 aes''8 
      | aes''8 g''8 f''8 es''8 c''8 c''8 r4 
      | r2 a''16 bes''16 a''16 g''16~ g''4 
      \bar "||" \mark \default f''8 r8 r2. 
      | r16 a''8 g''16 f''16 es''8 es''16~ es''8 c''8~ \tuplet 3/2 {c''8 g'8\bendAfter #+4  fis'8} 
      | g'4 r2. 
      | d''8 f''16 g''16~ g''8 f''8 \tuplet 5/4 {f''8 es''8 es''16~} es''8 c''8 
      | c''8 bes'8 r2 r8 g''8~ 
      | g''2 aes''8 des''4 des''8~ 
      | des''4~ \tuplet 5/4 {des''8 b'8 bes'16~} bes'8 aes'8 r4 
      | r2 r8 d'8 f'16 d'16 es'16 f'16 
      | \tuplet 6/4 {ges'16 aes'16 bes'8 a'16 aes'16~} aes'4. des''8 f''8 f''8 
      | \tuplet 6/4 {g''16 aes''8 bes''16 b''16 c'''16} \tuplet 6/4 {cis'''16 d'''16 dis'''8 e'''8} r2 
      | \tuplet 6/4 {c'''8 es'''16 f'''16 ges'''16 ges'''16~} \tuplet 6/4 {ges'''16 f'''16 e'''8 ges'''16 e'''16} es'''8 des'''4 c'''8~ 
      | c'''8\bendAfter #-4  bes''4 aes''4 g''8 d''8 es''8 
      \bar "||" \mark \default r1 
      | r8 g''4 g''4 f''8 \tuplet 6/4 {es''4 f''16 es''16~} 
      | es''8 es''8 r2. 
      | r8. g''16~ \tuplet 6/4 {g''8. f''8 es''16~} es''8 c''8 \tuplet 3/2 {aes'4 f'8} 
      | aes'16\bendAfter #+4  g'16 aes'8 r2. 
      | r8. g''16 f''8. c''16 es''4 es''8 es''8~ 
      | es''4 c''8 r8 r2 
      | r4 r8 f'16 g'16 aes'8 bes'8 b'16 c''16 cis''16 d''16 
      | es''8 f''8 \tuplet 5/4 {g''16 aes''16 b''16 c'''16 d'''16} dis'''16\bendAfter #+4  e'''16 r8 r4 
      | r4 \tuplet 6/4 {r4 r16 aes''16~} aes''8. aes''16~ aes''8 g''8 
      | f''8 es''8 c''8 r8 r2 
      | r2 r8 g''8 r4 
      \bar "||" \mark \default f''4 es''4 c''4 f'4 
      | f'4 f'4 \tuplet 6/4 {f'8. aes'8 bes'16~} bes'8 aes'8 
      | f'8 f'8 r2. 
      | r2 b'16 d''16 g''4 g''8 
      | g''8 f''8 es''8 r8 r2 
      | r8 c''16 d''16 \tuplet 5/4 {d''16 d''16 d''16 d''16 d''16} \tuplet 5/4 {d''16 d''16 d''16 d''16 d''16} \tuplet 6/4 {es''16 es''16 es''16 es''16 d''16 c''16} 
      | \tuplet 6/4 {c''16 c''16 c''16 c''16 c''16 c''16} \tuplet 6/4 {d''16 c''16 c''16 c''16 d''8} \tuplet 6/4 {c''16 d''16 c''16 bes'8.} r4 
      | r2. r8 a'8 
      | bes'8 des''4 es''4 f''8 g''8 aes''8 
      | bes''16 aes''16 g''8 bes''16 aes''16 g''8 \tuplet 3/2 {f''8 es''8 c''8} b'8 bes'8 
      | aes'8 aes'8 r2. 
      | r2 \tuplet 6/4 {r4 r16 f''16~} f''8. g''16~ 
      \bar "||" \mark \default g''8. f''16~ f''8 es''8~ \tuplet 6/4 {es''4~ es''16 c''16~} c''4 
      | bes'8\bendAfter #+4  a'16 bes'16 aes'4\bendAfter #-4  f'4 g'8 r8 
      | r4 f''4 \tuplet 3/2 {g''4 f''8} \tuplet 3/2 {es''4 c''8~} 
      | c''8. f'16~ f'8 aes'8~ aes'16 bes'16\bendAfter #-4  a'8 \tuplet 3/2 {bes'4 bes'8~} 
      | \tuplet 6/4 {bes'16 bes'4 aes'16} \tuplet 3/2 {b'8\bendAfter #+4  bes'8 b'8} r2 
      | r4 g''4 g''16 f''8 es''16 c''8. c''16~ 
      | c''8. f'16 aes'8\bendAfter #+4  g'8 r2 
      | r2 \tuplet 6/4 {r4 f'16 g'16~} g'16 gis'16 a'16 bes'16~ 
      | bes'8 b'8~ b'8. bes'16~ bes'8. g'16~ \tuplet 5/4 {g'16 b'16 bes'16 b'16 c''16} 
      | des''4.. b'16~ b'16\bendAfter #+4  bes'8 ges'16~ ges'16 gis'16 a'16 bes'16 
      | b'8 bes'8 \tuplet 3/2 {aes'4 ges'8} bes'8. bes'16 r4 
      | r2 g''4~ g''32 g''8. aes''32~^\markup{\left-align \small vib} 
      \bar "||" \mark \default aes''2. g''8 r8 
      | r8 f''8 r4 \tuplet 3/2 {g''8\bendAfter #+4  fis''8 g''8~} g''8 f''8 
      | r4 es''4 r8 f''8~ f''8~ f''32 ges''32\glissando  gis''32 a''32 
      | \tuplet 3/2 {es'''8 f'''16 r8.} r8 des'''8 r4 \tuplet 3/2 {c'''4 b''8} 
      | r4 bes''4 g''8 aes''16 g''16~ g''8 f''8 
      | r4 es''4 \tuplet 3/2 {b'8 aes'8 b'8} bes'4 
      | r4 \tuplet 3/2 {f'8 aes'8 bes'8~} \tuplet 6/4 {bes'8 bes'8. a'16} \tuplet 3/2 {bes'4 b'8} 
      | bes'8.\bendAfter #+4  b'16~ b'16 bes'8 aes'16~ \tuplet 3/2 {aes'8 f'8 aes'8} bes'8 gis'8~ 
      | gis'16\glissando  a'8 bes'16~ bes'16 b'16 c''16 cis''16 d''16 es''8 bes'16\glissando  a'8 g'16 gis'16~ 
      | \tuplet 6/4 {gis'4 a'16 bes'16~} \tuplet 6/4 {bes'16 b'16 c''16 cis''16 d''16 es''16~} es''8 cis''8 r4 
      | r8 d''8 es''2 c''8 r8 
      | r4 r16 bes8 d'16~ d'4 f'8 aes'8 
      \bar "||" \mark \default g'4 r2.\bar  ".."
    }
    >>
>>    
}
