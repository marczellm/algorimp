\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "245"
  composer = "Freddie Hubbard"
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
      
      | f1:7 | bes1:7 | f1:7 | fis2:min b2:7 | bes1:7 | b1:dim | e2:9+ aes2:13-.9 | a2:min7 aes2:min7 
      | g1:min7 | cis2:min fis2:7 | b1:775+ | s1 | f1:7 | bes1:7 | f1:7 | fis2:min b2:7 
      | bes1:7 | b1:dim | e2:9+ a2:13-.9 | a2:min7 aes2:min7 | g1:min7 | cis2:min fis2:7 | b1:775+ | s1 
      | f1:7 | bes1:7 | f1:7 | fis2:min b2:7 | bes1:7 | b1:dim | e2:9+ a2:13-.9 | a2:min7 aes2:min7 
      | g1:min7 | cis2:min f2:7 | b1:775+ | s1 | f1:7|
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


      \tempo 4 = 73
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. f''16~ \tuplet 6/4 {f''16 aes''16 g''8 f''16 es''16~} \tuplet 3/2 {es''8 f''8 aes'8} r4 
      | r4 \tuplet 5/4 {r8. d''16 f''16~} f''16 g''16 aes''8~ aes''8~ aes''32 g''32 gis''32 a''32 
      | \tuplet 10/8 {f''16 aes''16. g''16 f''16 es''32} f''8 aes'8 r2 
      | r8 a''16 bes''16 \tuplet 7/8 {a''16. g''16 fis''32\glissando  e''32~} e''32 d''32 e''32 fis''32 e''32 cis''32 b'16~ \tuplet 11/8 {b'32 bes'16 a'8.^\markup{\left-align \small vib} gis''32 a''32} 
      | aes''16 f''16 aes''16 aes'16 r2. 
      | \tuplet 10/8 {r32 d'32 dis'32 f'32 aes'32 g'32 f'32 gis'16 f'32~} f'16 g'32 gis'32 b'32 bes'32 gis'32 b'32 \tuplet 11/8 {cis'32 dis'32 f'32 g'32 gis'32 b'32 cis''32 d''32 e''32 f''32 g''32} gis''4 
      | r4 \tuplet 6/4 {r16 gis''16\bendAfter #+4  cis'''8 f''16 f''16~} \tuplet 12/8 {f''16 e''16. d''16. c''32 des''32 c''32 b'32~} b'16 bes'16 a'16 g'16 
      | \tuplet 10/8 {f'16 e'16. cis'16 d'32 e'32 g'32~} g'16 e'16 f'16 a'16 c''16 des''16 es''16 f''16 ges''16 aes''16 bes''16 a''16~ 
      | \tuplet 6/4 {a''16 c'''8. bes''16 d''16} \tuplet 9/8 {f''16 a''16 g''16 f''16 e''32~} \tuplet 6/4 {e''16 d''8 des''16 c''16 des''16} \tuplet 12/8 {bes'16. a'8 g'8 es''32~^\markup{\left-align \small vib}} 
      | es''8. cis''16 fis''4~^\markup{\left-align \small vib} \tuplet 3/2 {fis''8 dis''8^\markup{\left-align \small vib} cis''8} fis'4~ 
      | \tuplet 3/2 {fis'8 dis''8 cis''8} fis'4^\markup{\left-align \small vib} dis''8~ dis''32 cis''16 fis'32~^\markup{\left-align \small vib} fis'8. fis'16~ 
      | \tuplet 6/4 {fis'16 dis''16 dis''16 cis''8 cis''16} fis'8 fis'8 r2 
      \bar "||" \mark \default r8 f''8~ \tuplet 10/8 {f''32 es''16 aes''32 es''32 b'16 bes'16 aes'32~} aes'16 bes'16 bes'16 aes'16 aes'16 bes'16 bes'16 aes'16 
      | \tuplet 11/8 {aes'16. bes'16 bes'16 aes'32 g'32 aes'32 aes'32} f'8 f'8 r4 \tuplet 6/4 {r8 gis'16 a'16 c''16 d''16~} 
      | d''16 f'''16 d''16 es''16~ es''8 b'8 bes'8~^\markup{\left-align \small vib} bes'32 gis'32 a'32 aes'32 f'16 bes'16 aes'16 f'16 
      | es'16 f'16 f'8^\markup{\left-align \small vib} r2. 
      | \tuplet 10/8 {r8 f'16 es'32 f'32 es'32 cis'32~} \tuplet 5/4 {cis'16 d'16 c'16 bes16 a16} \tuplet 5/4 {aes8 bes16 c'16 es'16} g'8 g'8 
      | g'4~^\markup{\left-align \small vib} \tuplet 5/4 {g'8 dis'16 g'16 dis'16} g'8^\markup{\left-align \small vib} r8 r4 
      | r4 \tuplet 14/16 {r8 r32 a'32 b'64 c''64} \tuplet 6/4 {d''16 e''8. c''16 b'16} des''8^\markup{\left-align \small vib} c''16 b'16 
      | r2 r16 des''16 c''16 b'16 \tuplet 6/4 {bes'16 aes'16 bes'16 aes'16 ges'16 es'16} 
      | b16 a8. g16 c'16 bes16 d'16 c'16 e'32 d'32 f'32 e'32 g'32 f'32 a'32 g'32 bes'32 a'32 c''8 
      | r4 r32 cis'32 dis'32 e'32 g'32 gis'32 b'32 dis''32~ dis''16 cis''32 b'32 bes'32 gis'32 ges'32 f'32 e'8^\markup{\left-align \small vib} r8 
      | r4 \tuplet 10/8 {r16 b'16 cis''16 dis''16. fis''32~} \tuplet 10/8 {fis''8. dis''32 f''32 dis''32 cis''32~} \tuplet 6/4 {cis''16 b'8 fis'8 fis'16} 
      | \tuplet 6/4 {dis''8. cis''8 b'16~} b'8 fis'8^\markup{\left-align \small vib} \tuplet 6/4 {dis''8 f''16 dis''16 cis''16 cis''16} \tuplet 3/2 {b'8 b'8 fis'8} 
      \bar "||" \mark \default r4 r8.. f''32 gis''16 a''16 bes''16 b''16~ \tuplet 7/8 {b''32 c'''16. aes''32 g''32 a''32} 
      | \tuplet 3/2 {f''8 ges''8 f''8~} \tuplet 6/4 {f''8 f''16 bes''16 bes''16 b''16} \tuplet 6/4 {bes''16 aes''16 f''16 es''16 c''16 b'16} \tuplet 6/4 {bes'16 aes'16 f'16 es'16 des'16 c'16~} 
      | c'32 bes32 aes32 f32 aes16 f32 aes32~ \tuplet 12/8 {aes16 f32 aes16. f32 aes16. f32 aes32~} \tuplet 6/4 {aes16 f16 aes16 f16 aes16 f16} \tuplet 12/8 {aes16. f32 aes16. f32 aes16 f32 aes32} 
      | f8 f8~^\markup{\left-align \small vib} \tuplet 6/4 {f4~ f16 dis''16~} dis''32 b'32 cis''32 a'32 fis'32 e'32 dis'32 c'32 \tuplet 6/4 {cis'8 a16 gis16 fis16 b16} 
      | r4 \tuplet 9/8 {r32 f'16. es'32 d'32 es'32 d'32 c'32} bes16 a16 aes16 g16~ \tuplet 10/8 {g32 f16. g16 aes16. b32} 
      | c'8 f'4.^\markup{\left-align \small vib} \tuplet 6/4 {f'16 gis'16 f'16 g'16 f'8} \tuplet 6/4 {d'16 gis'16 f'16 g'16 f'8^\markup{\left-align \small vib}} 
      | d'4 \tuplet 13/16 {r16. d'64 fis'64 g'64 a'64 b'64 c''64 d''64} \tuplet 12/8 {cis''8~ cis''32 b'32 a'32 aes'32 g'32 f'32 e'32 d'32} des'8 r8 
      | \tuplet 6/4 {r4 r16 e''16} g''16 b''16 a''16 g''16~ \tuplet 6/4 {g''16 ges''16 es''8 b'16 des''16~} \tuplet 5/4 {des''16 ges'16 aes'16 c'16 des'16~} 
      | \tuplet 6/4 {des'4~ des'16 a'16~} a'32 c''32 des''32 c''32 b'32 bes'16 a'32 g'8 d'8~^\markup{\left-align \small vib} d'32 ges'16. d'32 f'16 es'32~ 
      | es'4~ \tuplet 3/2 {es'8 cis'8 fis'8} \tuplet 10/8 {gis'32 bes'32 b'32 des''16 b'32 bes'32 aes'32 g'32 ges'32~^\markup{\left-align \small vib}} ges'8 r8 
      | r8 b'8 b'4~ b'16 bes'16 fis'16 gis'16~^\markup{\left-align \small vib} \tuplet 7/8 {gis'8 fis'16 dis'32~} 
      | \tuplet 6/4 {dis'4~ dis'16 fis'16} gis'8\bendAfter #-4  f'8 r4 r32 es''32 d''32 dis''32 b'32 bes'32 gis'32 f'32 
      \bar "||" \mark \default \tuplet 6/4 {es'16 c'16 bes16 gis16 a16 f'16~^\markup{\left-align \small vib}} f'4 \tuplet 3/2 {f'8 f'4} r4\bar  ".."
    }
    >>
>>    
}
