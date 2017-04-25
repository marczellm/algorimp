\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Summertime"
  composer = "Sidney Bechet"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \minor
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
      | g1:min 
      | g2:min d2:7 | g2:min d2:7 | g2:min d2:7 | g2:min g2:7 | c1:min | s1 | a1:min5-7 | d1:7 
      | g1:min | s1 | s1 | c2:min7 f2:7 | bes2:maj es2:7 | a2:min5-7 d2:7 | g1:min | a2:min5-7 d2:7 
      | g1:min | s1 | s1 | s2 g2:7 | c1:min | s1 | a1:min5-7 | d1:7 
      | g1:min | s1 | s1 | g2.:min7 f4:7 | bes2:maj es2:7 | a2:min5-7 d2:7 | g1:min | a2:min5-7 d2:7 
      | g1:min | s1 | s1 | s2 g2:7 | c1:min | s1 | a1:min5-7 | d1:7 
      | g1:min | s1 | s1 | c2:min7 f2:7 | bes2:maj es2:7 | a2:min5-7 d2:7 | g1:min | a2:min5-7 d2:7 
      | g1:min | s1 | s1 | s1 | c1:min | s1 | a1:min5-7 | d1:7 
      | g1:min | s1 | s1 | c2:min7 f2:7 | bes2:maj es2:7 | a2:min5-7 d2:7 | s1 | s1 
      | s2 g2:min7|
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


      \tempo 4 = 84
      \set Score.currentBarNumber = #0
     
      | r4 fis'16\glissando  g'16 fis'16\glissando  g'16 \tuplet 3/2 {fis'8\glissando  g'4~^\markup{\left-align \small vib}} \tuplet 6/4 {g'8. a'16 bes'16 d'16~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default d'4.. es'16 d'4^\markup{\left-align \small vib} r4 
      | r4 r8 fis'16 g'16 \tuplet 3/2 {fis'8 g'4~^\markup{\left-align \small vib}} g'8 a'16 bes'16 
      | d'4.^\markup{\left-align \small vib} es'8 d'4^\markup{\left-align \small vib} r4 
      | r4 \tuplet 6/4 {r4 fis'16\glissando  g'16} fis'8\glissando  g'8~^\markup{\left-align \small vib} \tuplet 3/2 {g'8 a'8 bes'8} 
      | c''1~^\markup{\left-align \small vib} 
      | c''4. g'8 c'8. d'16 es'8 g'8 
      | ges'2~^\markup{\left-align \small vib} ges'8 es'8 d'4\glissando  
      | fis'4^\markup{\left-align \small vib} r4 cis''16\glissando  d''8.~ d''8 bes'8 
      \bar "||" cis''16\glissando  d''8 bes'16~ bes'16 cis''16\glissando  d''8 bes'8 cis''8\glissando  d''4~^\markup{\left-align \small vib} 
      | d''2 \tuplet 3/2 {c''8 bes'8 c''8} \tuplet 3/2 {d''8 g'8\glissando  bes'8\glissando } 
      | c''8 g'8\glissando  bes'4 g'4.^\markup{\left-align \small vib} aes'16\glissando  bes'16~^\markup{\left-align \small vib} 
      | bes'2. g'8 d'8 
      | f'4.^\markup{\left-align \small vib} \tuplet 6/4 {d'8 f'16~} \tuplet 3/2 {f'8 g'8 bes'8} c''8\glissando  d''8~ 
      | d''4~ d''16\glissando  c''8 bes'16~^\markup{\left-align \small vib} bes'4 c''8 g'8 
      | fis'8\bendAfter #+4  g'2..~^\markup{\left-align \small vib} 
      | g'4 r2 r8 d'8 
      \bar "||" \mark \default \tuplet 3/2 {g'4 g''8~} g''8 g''8~^\markup{\left-align \small vib} g''2~ 
      | g''8 d''8 e''8\glissando  f''4.\glissando  e''8 d''16 es''16~^\markup{\left-align \small vib} 
      | es''2~ \tuplet 6/4 {es''4~ es''16 d''16} \tuplet 10/8 {es''16 d''16 g'8~ g'32 a'32~} 
      | a'8\glissando  bes'4.^\markup{\left-align \small vib} r4 cis''8\glissando  d''8~^\markup{\left-align \small vib} 
      | d''1~ 
      | d''2~ \tuplet 9/8 {d''8.. c''32 d''32} c''8 g'8 
      | a'2~^\markup{\left-align \small vib} a'8 d'8\glissando  es'4~ 
      | es'8 d'8\glissando  es'8.. d'32~ \tuplet 6/4 {d'8. es'8 e'16} d'16 e'16\glissando  f'8~ 
      \bar "||" f'8. e'16~^\markup{\left-align \small vib} e'2 bes'8\glissando  d''8~^\markup{\left-align \small vib} 
      | d''4... bes'32~ bes'16 c''16 d''16 g'16 \tuplet 3/2 {bes'8 c''8 d''8} 
      | \tuplet 3/2 {g'8\glissando  bes'8\glissando  c''8~} c''4 g'4.^\markup{\left-align \small vib} g'16 a'16~ 
      | a'32 bes'16.^\markup{\left-align \small vib} e'16 f'32 fis'32~ fis'32 g'16. cis'16 d'32 es'32~ \tuplet 6/4 {es'16 e'8 g'16 bes'16 cis''16~} cis''16 d''16 es''16 e''16 
      | f''16 fis''16 g''16 e''16~ \tuplet 12/8 {e''32 f''16 cis''16. d''16. bes'16 g'32~} g'16 cis'16 d'16 f'16 g'16 bes'16 c''16 c''16\glissando  
      | d''8 c''8 bes'8 b'16\glissando  c''16~^\markup{\left-align \small vib} c''4 \tuplet 3/2 {cis''8\glissando  d''4} 
      | g'4.^\markup{\left-align \small vib} g'8~^\markup{\left-align \small vib} g'4. g'8~^\markup{\left-align \small vib} 
      | g'4. g'8^\markup{\left-align \small vib} bes'4 d''8 r8 
      \bar "||" \mark \default r8 g''8 r2 r8.. d''32\glissando  
      | a''2~^\markup{\left-align \small vib} \tuplet 14/16 {a''8~ a''32. g''64 ges''64 f''64} \tuplet 3/2 {e''4 d''8} 
      | bes'4.^\markup{\left-align \small vib} d'8 \tuplet 3/2 {e'4 g'8} c''16\glissando  d''8. 
      | bes'8 g'8 d'8. cis''16 \tuplet 6/4 {d''8. cis''16\glissando  d''16 cis''16\glissando } d''8 cis''16\glissando  d''16 
      | cis''16\glissando  d''8.~^\markup{\left-align \small vib} \tuplet 10/8 {d''4 c''32 d''32} \tuplet 3/2 {c''8 g'8 es'8} c'8 c'8 
      | r4 \tuplet 6/4 {c'16 d'16 e'16 f'16 fis'16 g'16~^\markup{\left-align \small vib}} g'8 c''8 d''8\glissando  es''8 
      | ges'4.^\markup{\left-align \small vib} d'8\glissando  ges'8\glissando  a'8 d''16\glissando  es''8. 
      | fis'4.^\markup{\left-align \small vib} d''8\glissando  es''2 
      \bar "||" d''8 bes'4.^\markup{\left-align \small vib} d''2~ 
      | d''8 cis''16 d''16~ \tuplet 3/2 {d''8 c''8 bes'8} c''8\bendAfter #+4  b'16 c''16~ c''8 d''8 
      | bes'4.^\markup{\left-align \small vib} g'8~^\markup{\left-align \small vib} g'4. g'8~^\markup{\left-align \small vib} 
      | g'4. a'16\glissando  bes'16~^\markup{\left-align \small vib} bes'4. a'16\glissando  bes'16~^\markup{\left-align \small vib} 
      | bes'4. a'16\glissando  bes'16~^\markup{\left-align \small vib} bes'4~ \tuplet 6/4 {bes'4 a'16\glissando  bes'16~^\markup{\left-align \small vib}} 
      | bes'4. cis''16\glissando  d''16 c''4~^\markup{\left-align \small vib} \tuplet 10/8 {c''8. d''16. g'32~^\markup{\left-align \small vib}} 
      | g'4. bes'8 d''8~ d''32 bes'16 d''32~ d''8 d''16. d''32~ 
      | d''8 d''16\glissando  es''16 d''8 d''16\glissando  es''16 d''8 d''16 es''16\glissando  e''8 f''8 
      \bar "||" \mark \default e''2 bes'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {e''4 g''8} e''8 bes'8 c''4^\markup{\left-align \small vib} c''16 d''8\glissando  g'16 
      | bes'4^\markup{\left-align \small vib} c''8 g'4.^\markup{\left-align \small vib} gis''8\glissando  a''8~^\markup{\left-align \small vib} 
      | a''8. g''32 a''32 g''16 e''16 d''16 bes'16 a'4.^\markup{\left-align \small vib} g'8~ 
      | g'16 c''8 c''16 c''8 c''16 c''16~^\markup{\left-align \small vib} c''4~ \tuplet 10/8 {c''32 g'8 es'16 d'16 c'32~^\markup{\left-align \small vib}} 
      | c'4 r4 \tuplet 3/2 {r8 g'8 a'8} \tuplet 3/2 {bes'8 c''8 a'8~^\markup{\left-align \small vib}} 
      | a'8.. d'32~ d'8\glissando  es'8 c'4\glissando  d'8 es'8 
      | a4~^\markup{\left-align \small vib} \tuplet 6/4 {a16 c'8 es'16 fis'16 a'16~^\markup{\left-align \small vib}} a'4~ \tuplet 10/8 {a'32 d''8 es''8\bendAfter #+4  d''32~} 
      \bar "||" d''4..\glissando  bes'16~^\markup{\left-align \small vib} bes'4 cis''16\glissando  d''8.~^\markup{\left-align \small vib} 
      | d''4 \tuplet 6/4 {cis''16\glissando  d''16 c''16 d''16 c''16 bes'16} b'16\glissando  d''16 c''32 d''32 c''32 bes'32 \tuplet 9/8 {c''16\glissando  d''16. c''32 d''32 c''32 bes'32~} 
      | bes'16 c''16\glissando  d''16 g'16 bes'8\glissando  c''8 g'4~^\markup{\left-align \small vib} \tuplet 3/2 {g'8 g'8 a'8} 
      | bes'4.\glissando  e'4^\markup{\left-align \small vib} r8 r4 
      | f'4~^\markup{\left-align \small vib} f'16 d'16 f'16 g'4.^\markup{\left-align \small vib} g'16 bes'16 c''16~ 
      | \tuplet 6/4 {c''16 d''8.^\markup{\left-align \small vib} c''16 es''16~} es''8~ es''32\glissando  d''32 es''32 d''32 \tuplet 5/4 {c''16 bes'16 a'16 g'16 fis'16\glissando } a'4~ 
      | a'8. aes'16 \tuplet 6/4 {g'16 fis'16 e'16 es'16 d'8~^\markup{\left-align \small vib}} d'4.. cis'16 
      | \tuplet 3/2 {d'8 fis'8\glissando  g'8~} \tuplet 7/8 {g'16 ges'32 f'32 e'32 d'32 cis'32~} \tuplet 6/4 {cis'16 b16 c'16 d'16 f'16 a'16} d''16\glissando  e''8.\glissando  
      | f''4\glissando  g''8.\bendAfter #+4  fis''16 g''2~^\markup{\left-align \small vib} 
      | g''2 r2\bar  ".."
    }
    >>
>>    
}
