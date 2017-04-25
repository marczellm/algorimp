\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "245"
  composer = "Eric Dolphy"
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
      
      | f1:7 | bes1:7 | f1:7 | fis2:min7 b2:7 | bes1:7 | b1:dim | e2:9+ a2:13-.9 | a2:min7 aes2:min7 
      | g1:min7 | des2:min7 fis2:7 | b1:775+ | s1 | f1:7 | bes1:7 | f1:7 | fis2:min b2:7 
      | bes1:7 | b1:dim | e2:9+ a2:13-.9 | a2:min7 aes2:min7 | g1:min7 | cis2:min7 fis2:7 | b1:775+ | s1 
      | f1:7 | bes1:7 | f1:7 | fis2:min7 b2:7 | bes1:7 | b1:dim | e2:9+ a2:13-.9 | a2:min7 aes2:min7 
      | g1:min7 | cis2:min7 fis2:7 | b1:775+|
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


      \tempo 4 = 71
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 10/8 {r8 r32 g'16 ges'32 e'32 d'32} es'32 es'16 ges32 aes32 bes16 d'32~ \tuplet 7/8 {d'32 c'32 d'32 c'32 bes32 a32 c'32} \tuplet 6/4 {es'16 g'16 b16 c'16 e'16 f'16} 
      | g'16 aes'16 bes'16 c''16 e'16 c'8 e'16~ e'4 r4 
      | r8 r32 c''32 d''32 e''32 f''16 e''8 c''16 \tuplet 6/4 {cis''16\bendAfter #+4  d''16 c''16 a'16 bes'8} \tuplet 5/4 {c''16\bendAfter #-4  g'16\bendAfter #+4  a'16 f'16 d'16} 
      | \tuplet 7/8 {bes32 g'32 aes'32 g'32 f'32 dis'32 e'32} \tuplet 6/4 {des'16 c'16 dis'16 b8.~} b32 bes32 c'32 dis'32 e'32 fis'32 b'32 dis''32 e''4\bendAfter #+4  
      | r4 \tuplet 6/4 {d''16 es''16 d''16 bes'16 f'16 d'16} \tuplet 6/4 {c'16 cis'16\bendAfter #+4  d'16 f16 g16 aes16} r4 
      | r16. cis'32 dis'32 f'32 fis'32 g'32 bes'32 c''32 aes'32 g'32 f'32 bes'32\bendAfter #+4  b'16~ \tuplet 9/8 {b'16 b'32 c''32 cis''32 d''32 c''32 b'32 a'32} \tuplet 7/8 {g'32 f'32 e'32 b32 d'32 b32 c'32} 
      | \tuplet 6/4 {b16 gis16 a4~} a16 c'32 e'32 g'32 e'32 b32 a32 d'16\bendAfter #+4  e'16 d'8 r4 
      | r32 e''32 f''32 e''32 d''32 c''32 bes'32 g'32 \tuplet 10/8 {gis'32 a'32 bes'32 a'32 g'16 fis'32 e'16 c'32} \tuplet 7/8 {es'32 c'32 des'32 ges32 bes32 des'32 bes32} \tuplet 10/8 {c'16 bes16 c'32 es'32 bes'32 a'32 fis'32 g'32} 
      | \tuplet 7/8 {aes'32 bes'32 c''32 d''32 c''32 bes'32 a'32} f''16 g''8. g''4 r8 fis''16 g''16~ 
      | g''16. fis''32 e''32 dis''32 des''32 c''32 \tuplet 7/8 {b'32 c''32 gis'32 fis'32 e'32 c'32 dis'32} r4 \tuplet 10/8 {r16 dis''32 e''16 dis''32 des''32 c''32 b'32 bes'32~} 
      | \tuplet 10/8 {bes'32 g'32 gis'32 a'32 f'32 cis'32 a32 bes32 b32 dis'32~} dis'32 fis'32 b'32 dis''32 fis''32 a''16.~ \tuplet 10/8 {a''16 f''32 e''32 cis''32 a'32 f'32 cis'32 bes'32\bendAfter #+4  b'32} \tuplet 10/8 {g'32 dis'32 b32 gis'32\bendAfter #+4  a'32 f'32 cis'32 a32 g32 g'32~} 
      | \tuplet 12/8 {g'16 dis'32 b32 a32 f'16. cis'32 a32 g32 f32} \tuplet 10/8 {bes32 b32 dis'32 f'32 aes'32 g'32 cis''32 dis''32 b'16} r2 
      \bar "||" \mark \default \tuplet 6/4 {c''8 d''16 es''16 d''16 es''16~} \tuplet 6/4 {es''16 c''16 e''16 es''16 bes'16 f'16~} \tuplet 6/4 {f'16 f'8. d'16 cis'16} d'16 f'8.~ 
      | \tuplet 6/4 {f'16 d''16 es''8 d''16 es''16~} \tuplet 10/8 {es''16 c''16 es''32 des''32 f'16 aes'32 bes'32~} \tuplet 10/8 {bes'16 bes'32 c''32 f''32 a'32 bes'32 c''32 es''32 b'32} \tuplet 12/8 {aes'16 f'16 es'32 des'32 es'32 f'32 f'32 g'32\bendAfter #+4  aes'32 gis'32~} 
      | gis'16 a'32 bes'32 bes'32 b'32\bendAfter #+4  c''32 es'32~ \tuplet 12/8 {es'32 f'32 gis'16. a'32\bendAfter #+4  bes'32 bes'16 b'32\bendAfter #+4  c''32 c''32} \tuplet 10/8 {es''32 c''32 bes'32 aes'32 f'32 d'32 a'8} r4 
      | r64 gis'32. bes'64\bendAfter #+4  b'32. c''16 e''64 dis''64 c''64 bes'64~ \tuplet 6/4 {bes'16 a'8 f'16 d'16 dis'16} c'32 g'32 aes'32 g'32 f'32 e'16. \tuplet 9/8 {d'32 dis'16 bes'32\bendAfter #+4  b'32 bes'32 a'32 gis'32 fis'32~} 
      | \tuplet 6/4 {fis'16 bes'8 c''8 c''16~} \tuplet 10/8 {c''16. bes'32 c''16 es''32 c''32 bes'32 aes'32~} \tuplet 10/8 {aes'32 f'16 bes'32\bendAfter #+4  c''16 c''16 c''32 b'32} c''32 es''32 c''32 bes'32 aes'32 f'16\bendAfter #+4  aes'32~ 
      | \tuplet 14/16 {aes'32 c''64 bes'64 c''16 c''64 b'64 c''64 c''64 bes'64 c''64~} \tuplet 10/8 {c''32 e''32 c''32 b'32 gis'32 f'32 gis'32 a'32 bes'32 c''32} e''32 c''32 b'32 gis'32 f'8 r4 
      | c''8 g''16 f''16 e''8 d''16\bendAfter #+4  e''16~ \tuplet 12/8 {e''16 d''16. e''16. d''32 e''32 d''32 c''32~} c''32 bes'32 bes'32 a'32 f'32 cis'32 d'32 f'32 
      | \tuplet 6/4 {d'16 c'16 g'4} \tuplet 10/8 {c'''8~ c'''32 g''16. gis''32 a''32} gis''32 a''32\bendAfter #+4  bes''32 ges''16 des''32 bes'32 f'32 des'8 e'32 ges32 bes32 cis'32\bendAfter #+4  
      | d'16 cis'16 d'8~ \tuplet 5/4 {d'16 bes'16\bendAfter #+4  c''8 f''16} \tuplet 6/4 {e''16 c''16 bes'16 a'16 g'8} r4 
      | \tuplet 9/8 {r8 cis'32 e'32 gis'32 a'32 bes'32} b'32 cis''32 d''32\bendAfter #+4  e''8 e''32~ e''32 d''32\bendAfter #+4  e''32 dis''32 des''32 c''32 des''32 c''32 \tuplet 6/4 {bes'16 b'16 bes'16 a'8.} 
      | c'32 e'32 g'32 b'32 a'32 cis''16 a'32~ \tuplet 10/8 {a'16 b'16 g'32 dis'32 e'32 cis'32 dis'32 g'32} b'32 a'32 f'32 cis'32 g32 f32 g'32 bes32~ \tuplet 10/8 {bes32 cis'32 g'32 gis'32 c''32 b'32 f'8~} 
      | f'16 f'32 g'32 gis'32\bendAfter #+4  a'32 a'32 g'32 \tuplet 7/8 {fis'32 e'32 cis'32 dis'32 b32 cis'32 a32} \tuplet 3/2 {a'8\bendAfter #+4  b'16 r8.} r4 
      \bar "||" \mark \default r4 r16 des''16 es''16 dis''16 e''16 dis''16 e''16 c''16 d''16\bendAfter #+4  es''8.~ 
      | \tuplet 5/4 {es''8 des''16 dis''16\bendAfter #+4  e''16~} e''32 dis''16 e''16 dis''32 e''32 des''32~ des''32 dis''16 e''32 c''16. d''32~ \tuplet 10/8 {d''32 es''16. d''16 es''16 d''32 es''32~} 
      | \tuplet 12/8 {es''16\bendAfter #+4  d''32 es''32 f''16 e''32 c''32 bes'32 aes'32 f'32 c'32} f'4 r16. des'32 es'32 f'32 gis'32 a'32 bes'16 b'8.\bendAfter #+4  
      | \tuplet 10/8 {b32 dis'32 g'32 b'32 a'32 g'32 ges'32 f'32 e'32 dis'32} g4 \tuplet 12/8 {dis'32 b32 fis32 g32 a32 bes32 c'32 dis'32 c'32 d'16 c'32} b32 cis'32 dis'32 a'32 a'32 fis'32 g'32 gis'32 
      | \tuplet 7/8 {a'32 c''32 d''32 c''32 bes'32 aes'32 aes'32~} \tuplet 6/4 {aes'16 c'''16 c'''8 aes'16 gis''16} \tuplet 12/8 {a''16 bes''32 c'''32 ges''32 f''32 d''32 b'32 ges'32 d'32 b32 ges32~} \tuplet 14/16 {ges64 bes64 d'32. c'64 d'32 c'64 bes64 c'64 des'64 f'64 aes'64} 
      | \tuplet 6/4 {d''16 f'16 gis'4~} \tuplet 14/16 {gis'64 cis'64 dis'64 e'64 g'64 fis'64 gis'64 bes'64 c''64 d''32. bes'64 b'64~} \tuplet 14/16 {b'64 c''32. d''64 es''64 d''64 c''64 bes'64 gis'64 f'64 cis'64 bes64 gis64} f16 e8.~ 
      | \tuplet 9/8 {e8 cis'32 dis'32 g'32 bes'32 a'32} \tuplet 10/8 {f'32 d'16 c'32 g'32 f'32 e'16 d'32 c'32~} \tuplet 12/8 {c'32 bes32 a32 c'32 e'32 g'32 e'32 f'16 g'32 f'32 c''32} \tuplet 6/4 {b'16 c''8 d''16\bendAfter #+4  es''16 c''16~} 
      | \tuplet 12/8 {c''16. d''32 dis''8 c''32 c''32 es''32 d''32} \tuplet 6/4 {dis''8 c''16 e''16 cis''16 b'16~} \tuplet 7/8 {b'16 c''32 e''32 des''32 c''32 b'32} \tuplet 10/8 {c''32 es''32 es''32 c''32 bes'32 b'32 aes'8~} 
      | \tuplet 10/8 {aes'8.\bendAfter #-4  c''16 es''32 d''32} bes'16 a'16 f'16 d'16~ d'32 g'16 d'16 g'16 a'32~ a'8 r8 
      | \tuplet 7/8 {r16 cis'32 dis'32 gis'32 bes'32 b'32} d''16 e''32 ges''16. f''32 ges''32 \tuplet 7/8 {f''32 fis''16 d''32 e''32 dis''32 des''32} \tuplet 10/8 {c''32 d''32 c''16 b'32 bes'32 g'16 gis'32 a'32~} 
      | \tuplet 12/8 {a'16. a'32 cis''16 a'8 a'32 cis''32~} cis''32 a'16 a'32 cis''32 a'32 g'32 f'32 \tuplet 10/8 {g'32 a'16. a'32 cis''32 b'32 g'32 cis'32 g'32} b'32 g'32 cis'32 g'32 b'32 a'32 g'32 f'32~ 
      | f'32 f'16 f'32 a'32 f'32 cis'32 f'32 a'32 dis'32 cis'32 dis'32 f'32 c'32 cis'16 r2\bar  ".."
    }
    >>
>>    
}
