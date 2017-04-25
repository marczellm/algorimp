\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue 'n Boogie"
  composer = "Dizzy Gillespie"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key bes \major
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
      | r1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | s1 | s1 | s1 | s1 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | s1 
      | s1 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | s1 | s1 | s1 | s1 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7|
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


      \tempo 4 = 204
      \set Score.currentBarNumber = #0
     
      | r2 \tuplet 6/4 {r16 ges''16 a''16 b''16 c'''16 cis'''16} d'''16 es'''16 e'''16 f'''16 
      \bar "||" \mark \default \tuplet 3/2 {f'''8 ges'''4} r2. 
      | r2 es'''8. d'''16 \tuplet 3/2 {d'''4 c'''8~} 
      | c'''4 bes''8 a''8 aes''4~ aes''16 ges''8 aes''16 
      | g''8 f''8 es''4 \tuplet 3/2 {d''4 es''8} d''16 b'8 a'16 
      | \tuplet 3/2 {bes'4 aes'8} \tuplet 6/4 {g'4 des''16 es''16} f''8 es''8 cis''8 d''8 
      | es''8 des''8 bes'4 c''4 bes'4 
      | aes'4 \tuplet 3/2 {g'4 f'8} es'4 d'8 f'8~^\markup{\left-align \small vib} 
      | f'4 r2 r16 des'8 f'16 
      | a'4 g'8 b'4 a'8 des''4 
      | \tuplet 3/2 {b'4 es''8~} es''4 f''4 d''8 f''8 
      | \tuplet 3/2 {cis''8 d''8 des''8} c''8. bes'16~ bes'4 r4 
      | r2. aes''4 
      \bar "||" \mark \default bes''4 bes''4 c'''4. g''8~ 
      | g''8 g''4 g''8 bes''4.. aes''16~ 
      | aes''8 c''8 es''8 g''8 f''8 es''8 cis''8 d''8 
      | es''4 \tuplet 3/2 {d''4 bes'8} \tuplet 3/2 {aes'8 bes'8 aes'8} f'8 g'8~^\markup{\left-align \small vib} 
      | g'4 des'8 c''8 bes'4 r4 
      | r2. r8 f'8~ 
      | f'8 f'8 \tuplet 3/2 {g'8 aes'8 bes'8} \tuplet 3/2 {c''8 cis''8 d''8} es''16 e''16 f''16 fis''16 
      | \tuplet 3/2 {g''8 ges''8 e''8} \tuplet 3/2 {f''4 d''8} e''16 f''16 es''16 cis''16 d''8. b'16 
      | c''8 bes'8~ \tuplet 5/4 {bes'16 a'16 bes'16 a'16 g'16} f'4 d'16 es'16 g'16 bes'16 
      | d''8 f''8 es''4 a'16 bes'8 d''16~ d''16 des''8 b'16 
      | c''4 \tuplet 3/2 {bes'4 f''8} r2 
      | r1 
      \bar "||" \mark \default b''16 bes''16 b''16 bes''16 bes''8 a''16 bes''16 \tuplet 3/2 {a''8 bes''4} a''16 bes''16 a''16 bes''16 
      | bes''8 cis'''16 d'''16 r2. 
      | \tuplet 3/2 {bes''8 b''8 bes''8} \tuplet 3/2 {bes''8 b''8 bes''8} b''16 bes''16 b''8 bes''16 b''16 bes''16 b''16 
      | bes''16 b''16 c'''16 cis'''16~ \tuplet 5/4 {cis'''16 d'''16 es'''16 e'''16 f'''16~} f'''2~ 
      | f'''4 es'''4 \tuplet 3/2 {des'''4 bes''8~} bes''8 f'''8\bendAfter #-4  
      | r1 
      | r8 es'''8 \tuplet 3/2 {d'''4 c'''8~} c'''8 b''4 bes'8 
      | f''8 aes''8 g''8 f''8 es''4 f''4 
      | es''4 c''8 es''8 d''8 c''8 b'8 bes'8 
      | a'8 g'8 \tuplet 6/4 {f'4 es'16 e'16~} e'16 aes'16 b'8 d''8 f''8 
      | es''8. d''16~ d''8 bes'8 a'8 r8 r4 
      | r2 r8. c'''16~ c'''4 
      \bar "||" \mark \default es'''4.. cis'''16 d'''8. bes''16\bendAfter #-4  r4 
      | r2 es'''8 d'''8 \tuplet 3/2 {d'''8 des'''8 c'''8} 
      | \tuplet 3/2 {bes''4 a''8} aes''4 f''8 aes''8 g''8 f''8 
      | es''4 d''8. des''16~ des''8 bes'8 aes'4 
      | aes'8 bes'8 des''8 f''4. r4 
      | r2. r8 f''8 
      | \tuplet 3/2 {aes''8 aes''8 f''8} g''16 aes''16 aes''16 f''16 \tuplet 6/4 {ges''16 gis''16 a''8 aes''16 f''16} \tuplet 3/2 {aes''8 aes''8 f''8} 
      | g''16 aes''16 aes''16 f''16 gis''16 a''16 aes''16 f''16 \tuplet 3/2 {aes''8 aes''8 f''8} gis''16 a''16 aes''16 f''16~ 
      | f''16 gis''16 a''16 aes''16 \tuplet 6/4 {g''8 f''8. e''16~} e''16 es''8 d''16~ \tuplet 5/4 {d''16 c''16 d''16 c''16 bes'16} 
      | a'8 g'8 f'4~ f'16 g'16 bes'8 es''8 cis''8 
      | d''8 es''8 e''8 fis''8 g''16 aes''16 ges''16 e''16 \tuplet 3/2 {f''4 d''8} 
      | es''16 f''16 es''16 cis''16 d''8 a'8 c''8 bes'8 a'8. bes'16\bar  ".."
    }
    >>
>>    
}
