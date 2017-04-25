\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dahomey Dance"
  composer = "Eric Dolphy"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \major
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
      
      | g1:7 | g1:7 | s1 | g1:13.9 | f1:7 | s1 | g1:7 | g1:13.9 
      | d1:7sus4 | d1:7 | g1:7 | g1:13.9 | g1:7 | s1 | s1 | g1:13.9 
      | f1:7 | s1 | g1:7 | g1:13.9 | d1:7sus4 | d1:7 | g1:7 | g1:13.9 
      | g1:7 | s1 | s1 | g1:13.9 | f1:7 | s1 | g1:7 | g1:13.9 
      | d1:7sus4 | d1:7 | g1:7 | g1:13.9 | g1:7 | s1 | s1 | g1:13.9 
      | f1:7 | s1 | g1:7 | g1:13.9 | d1:7sus4 | d1:7 | g1:7 | g1:13.9 
      | g1:7 | s1 | s1 | g1:13.9 | f1:7 | s1 | g1:7 | g1:13.9 
      | d1:7sus4 | d1:7 | g1:7 | g1:13.9 | g1:7 | s1 | s1 | g1:13.9 
      | f1:7 | s1 | g1:7 | g1:13.9 | d1:7sus4 | d1:7 | g1:7 | g1:13.9 
      | g1:7|
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


      \tempo 4 = 129
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 cis'16 d'16 
      | \tuplet 3/2 {f'4 cis''8~} cis''8 des''8~ des''16 c''16\glissando  cis''8 a'4 
      | \tuplet 3/2 {d''8\glissando  e''4} d''4 a'4 b'16\glissando  c''8.~ 
      | c''4.. d''32 cis''32 ais'16 b'8 d'16~ d'4~ 
      | d'8 d'4. r2 
      | r4 \tuplet 6/4 {r4 gis''16 a''16~} a''8 gis''8\glissando  a''4~ 
      | a''2 f''4.. dis''16~ 
      | dis''16\glissando  f''16 dis''16 f''16 r2. 
      | r4 \tuplet 6/4 {b'16 c''16 d''16 e''8 d''16} \tuplet 5/4 {c''16 b'16 a'16 g'16 f'16~} \tuplet 6/4 {f'16 e'16 g'16 ais'8 c''16~} 
      | \tuplet 3/2 {c''8 a'8 dis''8} \tuplet 7/8 {des''32 c''32 b'32 b'32 a'32 g'32 g'32} f'16 e'16 d'16 dis'16\bendAfter #-4  \tuplet 3/2 {ais,8 cis'8 ais8~} 
      | \tuplet 6/4 {ais16 c'16 bes8 a16 g16} f16 a16 c'16 dis'16 b16 cis'16 d'16 c'16 \tuplet 6/4 {ais16 b16 d'16 f'16 a'16 f'16~} 
      | \tuplet 6/4 {f'16 g'16 a'8 ais'16 d''16} \tuplet 3/2 {g''8 f''16 r8.} r2 
      \bar "||" \mark \default d'''8 r8 r2 gis''16 a''8. 
      | r8.. a32~ a8 r8 \tuplet 5/4 {r8. d''16 e''16~} e''8 a'8 
      | d''8..^\markup{\left-align \small vib} a'32~ \tuplet 6/4 {a'4~ a'16 c''16~} c''2~ 
      | c''4\glissando  cis''4. b'8\glissando  cis''8\bendAfter #-4  r8 
      | r4 r8 b'16\glissando  d''16~ d''2~ 
      | d''8 es''8 \tuplet 5/4 {des''16 c''16 bes'16 a'16 g'16} f'16 es'16 d'16 cis'16 d'16 c'16 b16 d'16 
      | a'16 f'16 g'32 g'32 a'32 a'32 \tuplet 5/4 {ais'16 ais'16 c''16 d''16 c''16} b'16 a'16 gis'16 e''16 f''16 g''16 a''8 
      | r1 
      | r8. ais'16~ \tuplet 6/4 {ais'16 c''16 d''16 e''8 d''16} \tuplet 6/4 {ais'16\glissando  b'16 a'8 g'16 f'16} \tuplet 3/2 {dis'8 b8 d'8} 
      | \tuplet 6/4 {ais16 c'16 d'16 c'16 bes8} \tuplet 6/4 {a16 g8 f16 a16 c'16} dis'16 c'16 cis'16 d'16 \tuplet 6/4 {d'16 c'16 ais16 dis'16 ais'8} 
      | g'16 gis'16 a'8 r4 gis'16\glissando  ais'16 dis''16 c''16 d''16 c''16 b'16 gis'16~ 
      | gis'32 a'32 b'32 d''32 e''32 gis''16.~ gis''2. 
      \bar "||" \mark \default \tuplet 6/4 {gis''16 dis''8 c''8 gis'16~} gis'16 c''16 dis''8 gis''8 dis''8 c''4\bendAfter #-4  
      | \tuplet 3/2 {c''8 cis''4~} cis''16 g''16 gis''16 c'''16~ c'''4 gis''4~ 
      | gis''8 gis'8 \tuplet 3/2 {c''8 e''8 gis''8} c'''4 f''4 
      | dis'''4 c'''4 \tuplet 6/4 {cis'''4~ cis'''16 f''16~} f''8 r8 
      | r2 gis''16 a''16 aes''16 f''16 des''8 a'8\bendAfter #-4  
      | r4 r8 r32 es''32 d''32 c''32 \tuplet 5/4 {a'8 b'16 c''16 des''16} e''16 d''16 c''16 b'16 
      | a'16 g'16 f'16 e'16~ \tuplet 3/2 {e'8 d'8 dis'8} \tuplet 5/4 {c'16 cis'16 a16 b16 d'16~} d'16 a16 b16 d'16~ 
      | d'8\bendAfter #-4  c''16 d''16~ d''16 g'8\glissando  b'16\glissando  \tuplet 3/2 {c''8\glissando  d''8 g'8\glissando } b'8 cis''16 d''16~ 
      | d''16 g'8\glissando  cis''16 d''4.\glissando  \tuplet 6/4 {e''16 des''16 c''16} ais'16 g'16 f'16 d'16~ 
      | d'8 r8 r4 \tuplet 6/4 {r16 c''8 dis''16 c''16 ais'16} \tuplet 3/2 {g'8 f'8 c''8} 
      | dis''16 cis''16 ais'16 g'16~ \tuplet 3/2 {g'8 c''8\glissando  d''8~^\markup{\left-align \small vib}} d''2~ 
      | d''8 r8 r4 r8. c''16 d''8. g''16~ 
      \bar "||" \mark \default g''8 f''2..~^\markup{\left-align \small vib} 
      | f''4 \tuplet 3/2 {dis''8 e''8 aes''8} r2 
      | g''16 aes''16 g''16 fis''16 \tuplet 6/4 {f''16 e''16 dis''16 cis''16 e''8} \tuplet 5/4 {d''16 des''16 c''16 g'16 gis'16~} \tuplet 6/4 {gis'16 a'8 f'16 cis'16 b16} 
      | c'16 a16 b16 a16~ a8 r8 r4 \tuplet 6/4 {r8. bes8 a16~} 
      | a16 ais16 b16 d'16 e'16 d'16 c'16 b16 a16 g16 f16 bes16 c'16 es'16. c'32 cis'32 d'32~ 
      | \tuplet 7/8 {d'16 c'32 bes32 g32 c'32 fis'32} a'4 r2 
      | r4 c''8 r8 r2 
      | r2. \tuplet 6/4 {c''4~ c''16 c'''16~} 
      | c'''4 c'''4 gis''16 a''8. \tuplet 3/2 {f''4 d''8} 
      | e''4 d''8 dis''8~^\markup{\left-align \small vib} dis''4. r8 
      | r2 dis''16 f''16 es''16 d''16 c''16 bes'16 a'16 g'16 
      | f'16 dis'16 c'16 cis'16~ \tuplet 10/8 {cis'32 d'16. c'32 ais32 dis'32 f'32 fis'32 a'32~} a'16 f'16 g'16 a'16 b'16 c''16 d''16 c''16 
      \bar "||" \mark \default b'16 gis'16 a'16 f'16 \tuplet 5/4 {cis'16 a8 c'16 a16} b8 r8 r4 
      | r16 ais16 c'16 d'16 \tuplet 6/4 {cis'16 b16 ais16 d'16 g'16 b'16~} \tuplet 7/8 {b'8 ais32 b32\glissando  cis'32} \tuplet 6/4 {es'16 d'16 c'16 b8 e''16~} 
      | \tuplet 6/4 {e''16 dis''16 c''8\glissando  b16 c'16} d'16 c'16 b8 e''16 dis''16 c''8 \tuplet 6/4 {b16\glissando  cis'16 d'16 c'16 b8~} 
      | \tuplet 6/4 {b16 e''8 es''16 d''16 b16~} \tuplet 6/4 {b16\glissando  c'16 cis'16 d'16 b16 c'16} \tuplet 6/4 {d'16 c'16 b16 e'16 b'8} r4 
      | r8 d8 d'8 a'8 d''8. d'''16~ d'''4 
      | a''4 \tuplet 3/2 {f''4 f8~} f8 a'4 e''8~ 
      | e''8 g''8 \tuplet 6/4 {f''4 d''16 e''16~} e''8 f4 g8 
      | r4 r8 g8 d'8 f'8 \tuplet 3/2 {g'4 g'8~} 
      | g'2~ \tuplet 6/4 {g'8. gis'16 a'16 ais'16~} ais'4~ 
      | ais'8 ais'8 \tuplet 6/4 {c''16 d''16 b'16 ais'16 g'8} f'16 dis'16 c'16 cis'16 d'16 des'16 c'16 ais16 
      | r4 \tuplet 6/4 {r4 d'16 c'16} a16 ais16 b16 d'16 r4 
      | r2. r8 g'8 
      \bar "||" \mark \default \tuplet 3/2 {b'8 cis''8 dis''8} des''32 c''32 ais'16 g'16. f'32~ f'8 r8 r4 
      | r8. g'16 ais'8 c''8 r2 
      | r8 e'16 g'16 \tuplet 6/4 {ais'8 ais'8. ais'16~} \tuplet 5/4 {ais'16 g'8 b'16 c''16} c''8 g'16 ais'16 
      | ais'8 ais'8~ \tuplet 5/4 {ais'16 g'16 b'16 c''16 c''16~} \tuplet 6/4 {c''16 g'8 ais'8 ais'16~} ais'16 ais'16. g'16 b'32 
      | \tuplet 3/2 {c''8 c''8 g'8~} \tuplet 6/4 {g'16 ais'16 b'16 c''8 c''16} g'8 bes'8 c''4 
      | r4 \tuplet 5/4 {r16 bes'16 c''16 d''16 c''16} b'16 g'16 gis'16 a'16 f'16 d'16 r8 
      | r1 
      | \tuplet 6/4 {r4 fis''16 g''16} f''8 b'8 \tuplet 3/2 {dis''8\glissando  e''8 d''8} a'8\bendAfter #-4  gis'16 d'16~ 
      | d'2. \tuplet 5/4 {e'8. d'16 g'16~} 
      | g'4\bendAfter #-4  fis'4 r2 
      | r8.. dis''32~ dis''16 f''16 es''16 d''16 c''16 bes'16 a'16 g'16 \tuplet 6/4 {f'8 dis'8 c'16 cis'16~} 
      | cis'32 d'16 c'16 ais32 cis'32 f'32 \tuplet 6/4 {a'8 f'16 g'16 g'16 a'16} a'4\glissando  f''8.\bendAfter #-4  e'32 d'32 
      \bar "||" \mark \default f'1~ 
      | f'4. r8 r2\bar  ".."
    }
    >>
>>    
}
