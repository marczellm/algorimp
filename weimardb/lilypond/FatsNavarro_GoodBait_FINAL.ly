\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Good Bait"
  composer = "Fats Navarro"
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
      
      | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj aes2:7 | d4:min7 g4:7 c4:min7 f4:7 | bes2:maj f2:7 
      | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj aes2:7 | d4:min7 g4:7 c4:min7 f4:7 | bes2:maj bes2:7 
      | es2:maj c2:min7 | f2:min7 bes2:7 | es2:maj c2:min7 | f2:min7 bes2:7 | es2:maj es2:7 | aes2:maj des2:7 | g4:min7 c4:7 f4:min7 bes4:7 | es2:maj f2:7 
      | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj g2:min7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj aes2:7 | d4:min7 g4:7 c4:min7 f4:7 | bes2:maj f2:7 
      | bes2:maj g2:7|
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


      \tempo 4 = 147
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r16 g''8 g''16~ g''8 d''8 f''4 r4 
      | r8 es''4 f''8 es''8 d''8 c''8. cis''16 
      | \tuplet 3/2 {d''4 d''8~} d''8 a'8 c''16 d''16 c''16 bes'16~ \tuplet 6/4 {bes'16 a'16 bes'16 a'16 g'8} 
      | \tuplet 6/4 {f'4 d'16 es'16~} es'16 g'16 bes'8 d''8 f''8 es''8 c''8 
      | d''8 bes'8 a'16 bes'16 a'16 g'16 aes'8. g''16~ g''8 r8 
      | r4 \tuplet 3/2 {r8 f''8 e''8} \tuplet 6/4 {es''16 d''16 c''16 aes'16 bes'16 d''16~} \tuplet 6/4 {d''16 des''16 c''8 bes'16 a'16} 
      | \tuplet 6/4 {bes'16 b'16 c''8 a'16 bes'16~} \tuplet 6/4 {bes'16 aes'16 g'8 f'16 a'16} \tuplet 6/4 {bes'16 a'16 g'8 f'16 es'16} \tuplet 3/2 {d'8 f'8 a'8} 
      | c''16 a'8 c''16 \tuplet 6/4 {cis''16 d''8 g''16 es''16 des''16} \tuplet 3/2 {f''8 d''8 es''8} es''8 c''8 
      \bar "||" f'16 bes'16 r8 r2. 
      | f''4 g''8. bes''16~ bes''8 d'''8 a''8 c'''8 
      | bes''8 f'8 \tuplet 3/2 {f''4 a''8~} a''16 d'''16 f'''16 g''16 f''8 e''8 
      | es''4 bes'8 cis''8 d''8 bes'8 g'8 f'8 
      | a'8 bes'8 \tuplet 3/2 {c''4 aes'8~^\markup{\left-align \small vib}} aes'4 r4 
      | r4 r8.. f''32~ f''8 g''8 bes''8. d'''16~ 
      | d'''8 bes''8~ \tuplet 6/4 {bes''8 gis''16 c'''8 g''16~} g''16 f''8 es''16~ es''16 d''8 cis''16 
      | \tuplet 3/2 {d''8 bes'8 a'8} aes'16 bes'16 c''16 es''16 \tuplet 6/4 {g''16 aes''16 g''16 f''8 es''16} d''16 f''16 e''16 d''16 
      \bar "||" \tuplet 5/4 {es''8 g'16 bes'16 cis''16} \tuplet 3/2 {d''8 b'8 a'8} aes'16 c''16 aes'16 e'16 f'16 es'16 e'8 
      | d'16 es'16 f'16 g'16 \tuplet 5/4 {aes'16 bes'16 c''16 es''16 aes''16} g''16 f''16 es''16 d''16 es''16 e''16 f''16 d''16 
      | es''16 g'16 bes'16 cis''16 d''16 b'16 bes'16 a'16 aes'16 c''16 g'16 e'16 f'16 c'16 es'16 des'16 
      | es'16 e'16 f'16 g'16 aes'16 bes'16 c''16 aes'16 g'16 f'16 bes'16 aes'16 g'16 f'16 e'16 des'16 
      | es'16 c'16 des'8 r2. 
      | r4 \tuplet 3/2 {c''8 es''8 g''8} \tuplet 3/2 {bes''4 a''8} aes''16 bes''16 aes''16 g''16 
      | f''8 es''8~ es''16 d''8 c''16~ \tuplet 6/4 {c''8 bes'8. a'16} aes'8 bes'8~ 
      | bes'16 g'8 f'16~ \tuplet 5/4 {f'16 es'16 f'16 es'16 d'16~} \tuplet 6/4 {d'16 es'4 d''16~} \tuplet 5/4 {d''16 cis''16 d''16 des''16 b'16~} 
      \bar "||" b'8 c''8 bes'4~ bes'16 f''8 d''16 a'4 
      | f'16 g'8 d'16~ d'16 c'8 f'16~^\markup{\left-align \small vib} f'8 r8 r4 
      | r2 f''16 es''16 d''16 c''16 \tuplet 6/4 {b'16 aes''16 ges''16 f''16 e''8} 
      | g''16 es''16 d''16 c''16 f''16 e''16 es''16 g'16 \tuplet 6/4 {cis''16 d''16 cis''16 d''16 bes'8} \tuplet 6/4 {a'8. d''16 es''16 b'16} 
      | a'16 des''16 e'16 bes'16 aes'8 r8 r2 
      | r8 f'8 \tuplet 3/2 {g'8 bes'8 d''8~} \tuplet 6/4 {d''16 e''16 f''8 e''16 f''16} \tuplet 3/2 {e''8\glissando  f''8 es''8} 
      | \tuplet 3/2 {c''8 d''8 bes'8} g'8 f'8 a'8 f'8 a'8. bes'16~ 
      | bes'4 \tuplet 3/2 {aes'4 f'8~} f'16 cis'16 d'8 e'4~ 
      \bar "||" e'4 es'8 r8 r2\bar  ".."
    }
    >>
>>    
}
