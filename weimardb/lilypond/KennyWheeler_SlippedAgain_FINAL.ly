\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Slipped again"
  composer = "Kenny Wheeler"
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7|
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


      \tempo 4 = 130
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 f''8 e''16 f''16 g''4~ 
      | g''2.. f''8 
      | f''8 es''8 \tuplet 3/2 {d''8 c''8 des''8~} des''8. a'16~ a'16 ges'16 es'16 f'16~ 
      | f'16 d'16 d'16 f'16~ f'16 aes'16 bes'16 e''16 \tuplet 3/2 {bes'8 des''8 bes'8} \tuplet 3/2 {des''8 bes'8 des''8} 
      | \tuplet 3/2 {bes'8 des''4} bes'4^\markup{\left-align \small vib} r4 \tuplet 7/8 {r8 c''16 a'32} 
      | c''2~^\markup{\left-align \small vib} c''8 r8 r4 
      | r8 a'8 \tuplet 3/2 {b'4 gis'8~} gis'4 \tuplet 6/4 {bes'8 g'16 bes'16 c''16 d''16} 
      | dis''16 f''16 g''8 r4 r16 bes''16 g''16 g''16 f''16 e''16 es''16 d''16~ 
      | d''16 des''16 c''16 bes'16 \tuplet 6/4 {a'8 g'16 f'8 d'16~} \tuplet 6/4 {d'16 es'16 f'8 g'16 a'16~} a'16 bes'16 des''16 c''16 
      | \tuplet 6/4 {bes'8 a'8 c''16 bes'16~} bes'16 gis'16 a'16 g'16~ g'16 ges'16 e'16 f'16~ \tuplet 6/4 {f'16 d'16 e'8 f'16 g'16} 
      | a'16 bes'16 b'8 r4 r16 bes'8 gis'16 a'8. e'16~ 
      \bar "||" \mark \default e'8 es'8 es'8 r8 r4 r16 f''16 e''16 es''16 
      | f''8 d''8~ \tuplet 6/4 {d''4~ d''16 c''16} \tuplet 3/2 {des''4 aes'8~} aes'16 f'8 c'16~ 
      | c'16\glissando  des'8 c'16~ c'2~ c'8 bes8~ 
      | bes4. a4 r8 \tuplet 6/4 {r4 g'16 aes'16~} 
      | aes'16 des''8 a'16~ \tuplet 6/4 {a'16 des''4 aes'16~} aes'8 f'8 \tuplet 3/2 {es'4 d'8} 
      | r2. f''8 a''8 
      | \tuplet 3/2 {bes''8 c'''8 bes''8} \tuplet 3/2 {a''8 g''8 bes''8} \tuplet 3/2 {a''8 g''8 f''8} e''4~ 
      | e''2 d''16 dis''8. cis''4^\markup{\left-align \small vib} 
      | \tuplet 6/4 {r4 r16 f''16} \tuplet 6/4 {e''16 es''4 d''16~} d''16 des''16 c''16 bes'16~ \tuplet 6/4 {bes'16 a'16 g'8 f'16 e'16~} 
      | e'16 d'16 es'16 f'16 g'16 a'16 bes'16 des''16 c''16 bes'16 a'8~ \tuplet 6/4 {a'8 f''16 es''16 b'16 a'16} 
      | \tuplet 3/2 {bes'8 g'8 a'8~} a'8 g'16 f'16~ f'16 e'16 es'8 r4 
      | d''4 cis''16 d''8 es''16~^\markup{\left-align \small vib} es''8. des''16~ des''16 e''16 dis''16 e''16 
      \bar "||" \mark \default f''8 r8 r4 f'''4 r4 
      | \tuplet 6/4 {r16 b''16 dis'''16 e'''8.~} e'''16 d'''8 c'''16~ \tuplet 6/4 {c'''8 bes''8. aes''16~} aes''16 g''16 f''8 
      | \tuplet 6/4 {aes''16 f''16 es''8. c''16} bes'4 f'16 a'8. ges'8. f'16~ 
      | f'8 es'8~ es'8. des'16~ des'8 b4. 
      | \tuplet 3/2 {bes4 bes8} r2 d''16 c''16 a'16 bes'16 
      | \tuplet 3/2 {g'8 aes'8 bes'8} \tuplet 3/2 {c''8 d''8 e''8} \tuplet 6/4 {d''8 c''8 b'16 bes'16~} bes'8 gis'8~ 
      | gis'4 a'4~^\markup{\left-align \small vib} \tuplet 7/8 {a'16 f''32 es''32 c''32 gis'32 a'32} bes'4~ 
      | bes'16 a'8 g'16~ \tuplet 3/2 {g'8 fis'8 e'8} r4 r16 f''16 e''16 f''16 
      | \tuplet 3/2 {g''8 e''8 d''8} c''4~ c''16 d''16 c''16 d''16~ d''4 
      | c''16 d''16 c''16 bes'16~^\markup{\left-align \small vib} bes'8 r8 r4 \tuplet 3/2 {f''8 e''8 e''8} 
      | ges''16. a''16 b''16 d'''32~ \tuplet 6/4 {d'''8 bes''8 a''16 g''16~} g''16 f''16 es''16 c''16 \tuplet 3/2 {b'8 bes'8 a'8~} 
      | a'16 bes'8 a'16~ a'16 g'16 f'16 e'16~ e'16 es'16 c'16 b16 bes4 
      \bar "||" \mark \default a4 r2.\bar  ".."
    }
    >>
>>    
}
