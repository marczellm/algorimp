\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bessie's Blues"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      | es1:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | s1 
      | bes1:7 | aes1:7 | es1:7 | s1 | s1 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | s1 | bes1:7 | aes1:7 | es1:7 | s1 
      | s1 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | s1 
      | bes1:7 | aes1:7 | es1:7 | s1 | s1 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | s1 | bes1:7 | aes1:7 | es1:7 | s1 
      | s1 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | s1 
      | bes1:7 | aes1:7 | es1:7 | s1 | s1|
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


      \tempo 4 = 184
      \set Score.currentBarNumber = #0
     
      | r8 bes'8~ bes'16 aes'8 bes'16~ bes'4.. es'16 
      \bar "||" \mark \default g'4 \tuplet 3/2 {aes'4 bes'8~^\markup{\left-align \small vib}} bes'4.. es'16 
      | \tuplet 3/2 {ges'4 es'8~} es'16 aes'16 ges'16 bes'16~ bes'8 es'8 r4 
      | r8 es'8 \tuplet 3/2 {g'8 aes'8 g'8} \tuplet 6/4 {bes'4~ bes'16 bes'16~} bes'8 aes'8~ 
      | aes'16 g'16 es'16 g'16~ g'16 f'16 des'16 f'16 es'4..^\markup{\left-align \small vib} es'16~ 
      | \tuplet 3/2 {es'8 aes'8 bes'8~} bes'8 c''8~ c''4~ \tuplet 3/2 {c''8 aes'8 des''8} 
      | \tuplet 3/2 {c''8 aes'8 c''8} \tuplet 3/2 {aes'8 es'8 aes'8} \tuplet 3/2 {ges'4 es'8} r4 
      | r8 es'8 \tuplet 3/2 {g'8 es'8 g'8} \tuplet 3/2 {aes'8 g'8 aes'8} bes'8 g'8 
      | es'8. f'16 g'8 bes'8 es''8.\bendAfter #-4  bes''16 \tuplet 3/2 {bes'4 d''8} 
      | c''4 aes'8 g'8 f'8 g'8 aes'8 bes'8 
      | aes'8 ges'8 es'4 ges'4. es'8 
      | bes8 aes4. r2 
      | r8 bes'8\glissando  c''2 c''4 
      \bar "||" \mark \default c''16 b'16 bes'8~ bes'4. es'8 \tuplet 3/2 {bes'4 f''8~} 
      | f''8 f''8 \tuplet 3/2 {fis''8 g''8 aes''8} c''8 aes'8 ges'8 r8 
      | r2 \tuplet 6/4 {r4 e''16 f''16~} f''8 es''8 
      | des''8 des''8 \tuplet 3/2 {c''4 es''8~} \tuplet 3/2 {es''8 bes'8 ges'8} es'8. c''16 
      | d''8 c''8 bes'8 a'8~ \tuplet 6/4 {a'8 aes'8 aes'16 g'16} ges'8 des''8 
      | aes'8 ges'8 es'8. bes16 f'16 ges'8. \tuplet 3/2 {f'8\glissando  ges'8 es'8~^\markup{\left-align \small vib}} 
      | es'2 bes8. g16~ g4\bendAfter #-4  
      | r2 r8 aes8 g8 ges8 
      | f8 e8 es8 f8 d8 f8 \tuplet 3/2 {bes4 d'8} 
      | c'8 es'8 \tuplet 3/2 {aes'4 c''8} es''8 bes'4 r8 
      | r2 r8 bes'8~ \tuplet 3/2 {bes'8 es''8 des''8~} 
      | des''8 es''8 \tuplet 3/2 {cis''4 d''8~} d''8\glissando  es''8 \tuplet 3/2 {des''4 es''8} 
      \bar "||" \mark \default des''8. c''16 c''8 des''8~ \tuplet 6/4 {des''16 bes'8. a'16 es'16~} es'8 bes'8~ 
      | \tuplet 3/2 {bes'8 aes'8 ges'8} es'8. bes16 \tuplet 3/2 {ges'4 es'8~} es'8 aes'8 
      | \tuplet 3/2 {g'4 es'8} \tuplet 3/2 {des'4 bes8} e'8. ges'16~ ges'8 des'8~ 
      | des'4 b8. g16~ g8 r8 r4 
      | r8 es'8 aes'8 bes'8 c''8 bes'8 c''8 b'8\glissando  
      | c''4.. bes'16~ bes'16 aes'8 es'16~ es'8 r8 
      | r4 r8 g'8 g'8 es'8 \tuplet 3/2 {des'4 bes8} 
      | d'8 des'8 aes8. e16 a2^\markup{\left-align \small vib} 
      | bes8 c'8 d'8 e'8 f'8 g'8 aes'8 bes'8 
      | g'8 es'8 c'8 bes16 f'16~^\markup{\left-align \small vib} f'4.. es'16 
      | \tuplet 3/2 {f'8 g'8 es'8~} \tuplet 6/4 {es'16 es'4 es'16~} es'8. d'16 des'4 
      | r2 r8 es'4 des'8~ 
      \bar "||" \mark \default des'16 bes8 des'16~ \tuplet 3/2 {des'8 f'8 g'8} c''8 bes'8 c''4~ 
      | c''4.. bes'16~ bes'16 aes'8 es'16~ es'8 r8 
      | r4 r8 b'8 c''4 \tuplet 3/2 {bes'4 aes'8} 
      | g'8 es'8 des'8. bes16 \tuplet 3/2 {es'8 bes'8 f''8} es''8 r8 
      | r4 \tuplet 5/4 {r8. f''16 a''16} \tuplet 3/2 {aes''8 d''8 aes'8~} aes'8 r8 
      | r4 r8 des''8 c''8 aes'8 ges'8 r8 
      | r4 r8 b'8\glissando  c''4 bes'8 aes'8 
      | g'8 bes'8 es''8 g''8 \tuplet 5/4 {aes''16 g''16 aes''16 d''16 es''16~} es''8 r8 
      | r4 f''8 d''16 c''16 bes'8 f'8 \tuplet 6/4 {bes'4 es''16 d''16} 
      | des''16 c''8. aes'8 g'8 es'4..^\markup{\left-align \small vib} bes16 
      | g'4 bes8 es'4 r8 r4 
      | r8 bes'8 c''2~ c''8 bes'16 c''16~ 
      \bar "||" \mark \default c''16 bes'8 g'16 aes'8. f'16 \tuplet 3/2 {g'4 es'8} \tuplet 3/2 {des'4 f'8} 
      | g'8 es'8 aes'8 c''8 \tuplet 3/2 {b'8 a'8 ges'8~} ges'8 b'8 
      | g'8 e'8 c'4 \tuplet 3/2 {a'4 aes'8} a8. fis16 
      | g8 des'8 b8 g8 r2 
      | r8 c'8 \tuplet 3/2 {des'8 es'4} aes'4 aes'8 ges'8~ 
      | ges'8 aes'4 ges'8 aes'4 ges'8 r8 
      | r4 r8. bes16 \tuplet 3/2 {es'4 des'8} es'4~^\markup{\left-align \small vib} 
      | es'4. f'8~ f'16 des'8 bes16 f'8 es'8 
      | d'8 a'8\glissando  bes'16 aes'8 ges'16 \tuplet 3/2 {aes'4 b'8} g'8 f'8 
      | \tuplet 3/2 {e'4 c'8} e'8 g'8 ges'8 d'8 des'8 bes8 
      | \tuplet 3/2 {ges'4 aes'8} des'8 es'8 r2 
      | r8. a'16\glissando  bes'2~^\markup{\left-align \small vib} bes'8 aes'8 
      \bar "||" \mark \default g'4 \tuplet 3/2 {es'4 des'8~} des'8\bendAfter #-4  r8 r4\bar  ".."
    }
    >>
>>    
}
