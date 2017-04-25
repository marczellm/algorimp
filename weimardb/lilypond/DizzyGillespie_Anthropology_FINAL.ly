\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Anthropology"
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
      
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:7 f2:7 | bes1:7 | es2:6 es2:min6 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:7 f2:7 | bes1:7 | es2:6 es2:min6 | d2:min7 g2:7 | c4:min7 f4:7 bes2:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:7 f2:7 | bes1:7 | es2:6 es2:min6 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes1:6|
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


      \tempo 4 = 246
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 d''4 f''4. d''8 
      | es''8. f''16~ f''8 r8 r2 
      | r4 d''4 es''2 
      | es''4 \tuplet 3/2 {d''4 f''8~^\markup{\left-align \small vib}} f''4 r4 
      | r1 
      | d'''8. c'''16 bes''4 \tuplet 3/2 {c'''4 bes''8} a''8 g''8 
      | f''8 es''8 cis''8 d''8 es''8. cis''16 d''8 bes'8 
      | r1 
      \bar "||" r4 \tuplet 3/2 {c'''8 d'''8 f'''8~} f'''8\glissando  r8 r4 
      | r8. es'''16~ es'''4 aes''8 c'''4 bes''8 
      | a''8 g''16 f''16~ f''8 e''8 \tuplet 3/2 {es''4 g'8} bes'8 d''8 
      | \tuplet 3/2 {c''8 d''8 c''8} bes'8 g'8 aes'8 bes'8 \tuplet 3/2 {aes'8 bes'8 aes'8} 
      | g'8 f'8 e'8 bes'8 cis''8 d''8 \tuplet 3/2 {es''4 e''8} 
      | f''4 bes'8 d''8 des''4 \tuplet 3/2 {c''4 aes'8} 
      | \tuplet 3/2 {g'4 f'8} bes'8. g'16 gis'8 bes'8 \tuplet 3/2 {gis'8 bes'8 aes'8} 
      | g'8 f'4 g'8 e'2~ 
      \bar "||" e'4 a'8 b'8 c''8 b'8 \tuplet 3/2 {a'4 g'8} 
      | fis'4 c''8 es''8 d''8 c''8 \tuplet 3/2 {b'8 d''8 e''8} 
      | a''8 c'''8 \tuplet 3/2 {b''4 cis'''8~} cis'''4. r8 
      | r2. r8. g''16~ 
      | \tuplet 3/2 {g''8 a''8 d'''8~} d'''8 f'''8 e'''4~ \tuplet 3/2 {e'''8 b''8 d'''8~} 
      | d'''8 c'''4 d''16 bes''16~ \tuplet 3/2 {bes''8 a''8 aes''8~} aes''8 ges''8 
      | f''8 d''8 es''8 bes'4. r4 
      | r2. r8 f''8 
      \bar "||" f'''4 d'''4. f'''8\glissando  d'''4 
      | f'''4\glissando  d'''4 f'''4.\glissando  d'''8 
      | f'''4. d'''4 bes''8~ \tuplet 3/2 {bes''8 g''8 c'''8~} 
      | c'''4\glissando  bes''8 aes''16 g''16~ g''8 f''16 es''16~ es''4 
      | d''8 bes'8 a'8. c''16~ c''8 aes'8 r4 
      | bes'8 g'8 aes'8 bes'8 \tuplet 3/2 {aes'8 bes'8 aes'8} g'8 f'8~ 
      | f'8 bes'8 cis''8 d''8 es''8 e''8 f''4 
      | bes'8 d''16 des''16~ des''4 c''8 aes'8 g'4 
      \bar "||" bes'4 r2.\bar  ".."
    }
    >>
>>    
}
