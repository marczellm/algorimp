\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Johnny Come Lately"
  composer = "Don Ellis"
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
      | g1:min6 
      | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | a2:min5-7 d2:7 
      | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:7 c2:7 | f2:7 bes2:7 | a2:9- d2:775+ 
      | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | s1 
      | s1 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | a2:min5-7 d2:7 
      | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:7 c2:7 | f2:7 bes2:7 | a2:9- d2:775+ 
      | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6 | es2:7 d2:7 | g1:min6|
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


      \tempo 4 = 211
      \set Score.currentBarNumber = #0
     
      | r2 e''8. g''16 \tuplet 3/2 {a''4 a''8~} 
      \bar "||" \mark \default a''4. r8 r4 e''4 
      | g''8 r8 r8. e''16~ e''8 g''4.\glissando  
      | a''2~ a''8 a''16 bes''16 a''8. e''16 
      | g''8 r8 r4 r8 e''8 g''8 a''8 
      | a''2.^\markup{\left-align \small vib} g''8 e''8 
      | d''8 des''8 c''8 b'8 bes'8 f'8 \tuplet 3/2 {g'8 a'8 bes'8} 
      | a'8. bes'16 \tuplet 3/2 {ges'4 a'8~} \tuplet 6/4 {a'16 e'4 e'16~^\markup{\left-align \small vib}} e'4 
      | r2 r8. a''16~ a''8 bes''8 
      \bar "||" \tuplet 3/2 {c'''4 c'''8} r2. 
      | r2 r8 g''8 \tuplet 3/2 {a''4 c'''8} 
      | c'''8 d'''8 c'''8 bes''8 a''8 d''8 \tuplet 3/2 {g''4 d''8} 
      | ges''8 es''8 d''8 c''8 b'8 gis'8 a'4 
      | a'4..^\markup{\left-align \small vib} g'16~ g'8 e''4 d''8 
      | bes'4 ges'4 gis'8 es'8 c'8 g8 
      | a4~ a16 des'8 e'16 gis'4 a'4~^\markup{\left-align \small vib} 
      | a'8 r8 r4 r8 g''8 aes''16 g''8.~ 
      \bar "||" g''4. es''8 r2 
      | r2 r8 a'16 bes'16 c''8 es''8 
      | g''4 \tuplet 6/4 {g''4~ g''16 a''16} ges''16 es''16 des''16 bes'16 \tuplet 3/2 {aes'4 fis'8} 
      | \tuplet 3/2 {g'4 bes'8} a'16 f'8. \tuplet 3/2 {es'4 f'8} d'8 g8 
      | c'8 bes8~ \tuplet 5/4 {bes8. bes16 es'16~} es'8 r8 r4 
      | f'8 a'8 c''8 f''8 a''2 
      | e'8 aes'8 b'8 des''8 ges''16 e''8. r4 
      | r4 es'8 ges'16 e'16~ e'16 a'16 g'16 gis'16 \tuplet 6/4 {a'16 b'16 cis''16 es''16 fis''8} 
      \bar "||" bes''8 r8 r2 \tuplet 3/2 {g''4 bes''8} 
      | r1 
      | r2 r8. f''16~ f''16 g''8 a''16 
      | bes''8 a''8 bes''8 a''8 g''8 e''8 \tuplet 3/2 {es''4 cis''8} 
      | d''2^\markup{\left-align \small vib} f''2~ 
      | f''8 d''8 cis''8 d''8 gis''8 es''8 \tuplet 3/2 {c''4 gis'8} 
      | ges'8 a'8 aes'8 es'8 c'8 aes16 bes16~ bes8 des'8 
      | r2 r8 des''4 e''8 
      \bar "||" \mark \default aes''4.. es''16~ es''8 g''8 bes''4 
      | r2. \tuplet 3/2 {cis''4 e''8} 
      | aes''4 aes''4 aes''4 bes''8 ges''8 
      | es''4 r2 cis''4 
      | e''1^\markup{\left-align \small vib} 
      | e''8 f''8 es''8 cis''8 d''8 bes'8 c''8 b'8 
      | bes'2^\markup{\left-align \small vib} bes'16 g'16 a'16 bes'16 a'4 
      | r2 r8 e''4 e''8~^\markup{\left-align \small vib} 
      \bar "||" e''4. d''8 f''2 
      | e''8. b'16 f''4 r2 
      | r8 bes'8 e''8 f''8 g''8 a''8 bes''8 gis''8 
      | a''8 g''8~ g''16\glissando  ges''8 es''16 d''8 c''8 b'8 a'8 
      | bes'8 ges'8 r2 r8 a'8 
      | g'8 a'8 bes'8 c''16 d''16~ d''8 f''16 a''16~ a''8 d''8 
      | g''4..^\markup{\left-align \small vib} bes''16~ bes''8 c'''8 r4 
      | r1 
      \bar "||" es'''1~ 
      | es'''2. d'''4~ 
      | d'''8 a''8 aes''8 aes''16 ges''16 f''8 e''8 f''8 e''8 
      | es''8 d''8 c''16 des''16 c''16 b'16 bes'8 a'8 aes'8 bes'16 g'16~ 
      | g'8 bes'4.^\markup{\left-align \small vib} r2 
      | r8 fis'16 g'16 gis'8 bes'8 c''8 d''16 e''16~ \tuplet 3/2 {e''8 f''8 g''8~} 
      | g''4 f''4 \tuplet 3/2 {aes''4 d''8} \tuplet 3/2 {g''4 des''8} 
      | f''4.^\markup{\left-align \small vib} r8 r4 g''4 
      \bar "||" bes''2.^\markup{\left-align \small vib} g''8 a''8 
      | r1 
      | r4 e''8 f''8 g''8 a''8 bes''8 c'''8~ 
      | c'''8. bes''16~ bes''8 a''8~ a''16\glissando  f''8 f''16~ f''8 bes''8 
      | gis''8 ges''16 e''16 f''8 e''8 es''8 d''16 des''16~ des''8 b'8 
      | c''2^\markup{\left-align \small vib} a'8 bes'8 c''8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r4 r8 bes''4 bes''8 
      | a''4 ges''4 es''4 c''8 a'8 
      | des''8 bes'8 ges'8 a'4.^\markup{\left-align \small vib} e'8 r8\bar  ".."
    }
    >>
>>    
}
