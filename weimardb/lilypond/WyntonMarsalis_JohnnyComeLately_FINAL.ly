\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Johnny Come Lately"
  composer = "Wynton Marsalis"
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
      
      | g1:min7 | es2:9 d2:9- | g1:min7 | es2:9 d2:9- | g1:min6 | es2:7 d2:9+ | g1:min7 | es2:7 d2:9+ 
      | g1:min7 | es2:9 d2:9- | g1:min7 | es2:9 d2:9- | g1:min6 | es2:7 d2:9+ | g1:min7 | f2:min7 bes2:7 
      | es2:6 f2:min7 | g2:min7 f2:min | es2:6 f2:min7 | g2:min7 f2:min7 | es2:6 f2:min7 | g2:min7 c2:9- | f2:min6 bes2:7 | a2:9- d2:9+ 
      | g1:min7 | es2:9 d2:9- | g1:min7 | es2:9 d2:9- | g1:min6 | es2:7 d2:9+ | g1:min7 | es2:7 d2:9- 
      | g1:min7 | es2:9 d2:9- | g1:min7 | es2:9 d2:9- | g1:min6 | es2:7 d2:9+ | g1:min7 | es2:7 d2:9+ 
      | g1:min7 | es2:9 d2:9- | g1:min7 | es2:9 d2:9- | g1:min6 | es2:7 d2:9+ | g1:min7 | f2:min7 bes2:7 
      | es2:6 f2:min7 | g2:min7 f2:min | es2:6 f2:min7 | g2:min7 f2:min7 | es2:6 f2:min7 | g2:min7 c2:9- | f2:min6 bes2:7 | a2:9- d2:9+ 
      | g1:min7 | es2:9 d2:9- | g1:min7 | es2:9 d2:9- | g1:min6 | es2:7 d2:9+ | g1:min6|
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


      \tempo 4 = 245
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default ges''4 e''4 d''4 c''4 
      | bes'4. a'8 bes'4. d''8 
      | a'4.. a'16~^\markup{\left-align \small vib} a'2~ 
      | a'4 r2. 
      | r2 f''4 es''8 ges'8~ 
      | ges'8 a'8 bes'4 c''4 d''8 a'8~^\markup{\left-align \small vib} 
      | a'4.. g'16 bes'2~^\markup{\left-align \small vib} 
      | bes'8 r8 r2. 
      \bar "||" r4 d'8 bes8 \tuplet 3/2 {d'8 f'4} d'8 e'8 
      | g'8 c''8 a'8 bes'8 d''8 f''8 \tuplet 3/2 {d''8 e''4} 
      | c'''8. a''16 bes''4 g''16 a''8 fis''16 g''4 
      | ges''8. f''16~ f''8 e''8 es''8 d''16 des''16~ des''16 c''8 c''16~ 
      | c''16 b'8 a'16 bes'4 ges'16 a'8 g'16~ g'16 ges'8 f'16~ 
      | f'16 ges'8 d'16~ d'16 e'8 c'16~ c'16 d'8 bes16~ bes16 c'8 g16 
      | bes2 g16 a8 g16~ g16 a8 bes16~ 
      | bes16 c'8 es'16~ es'16 g'8 bes'16 aes'8 ges'8 d'8 bes8 
      \bar "||" f'4. es'8 bes'2~^\markup{\left-align \small vib} 
      | bes'4 r2. 
      | r8 ges''4. ges''2 
      | ges''4. d''8 f''8 e''8~ e''16 es''8 es''16~ 
      | es''8 d''8 \tuplet 3/2 {bes'8 g'4} \tuplet 3/2 {f'8 c''4~^\markup{\left-align \small vib}} c''8. g'16~ 
      | g'16 bes'8 g'16~ g'16 aes'8 bes'16~ bes'16 b'8 cis''16~ cis''16 d''8 e''16 
      | f''4 \tuplet 3/2 {g''8 gis''8 a''8~} a''16 f''8 ges''16~ ges''16 e''8 f''16 
      | e''4 f''16 aes''16 bes''8 e''4 f''4 
      \bar "||" bes'1 
      | a'16 bes'8 g'16 a'4 bes'8 g'8~ g'16 a'8 bes'16~^\markup{\left-align \small vib} 
      | bes'2~ bes'8 r8 r4 
      | r2. e''8. g''16 
      | e''4 e''4 e''2~ 
      | e''2. e''8 g''8 
      | e''2 es''2 
      | d''2 cis''4. d''8~ 
      \bar "||" \mark \default d''8. es''16~ es''4. e''4. 
      | ges''4.. a''16~ a''4.. c'''16~^\markup{\left-align \small vib} 
      | c'''1~ 
      | c'''2~ c'''8. a''16~ a''8 bes''8~ 
      | bes''8 ges''8\glissando  a''8. g''16~ g''8 ges''8 f''8 e''8 
      | es''8 des''8 c''8 b'8 bes'8 fis'16 g'16 a'8 fis'8 
      | g'8 e'8 d'8. c'16 bes4.^\markup{\left-align \small vib} r8 
      | r2 bes'4. d'8~ 
      \bar "||" d'8 g'8~ g'8. f''16~ f''4 es''4 
      | ges'2 cis''8 d''4 d'8~ 
      | d'8 g'8~ g'8. f''16~^\markup{\left-align \small vib} f''2~ 
      | f''4 es''8. ges'16~ ges'8 d''8 d'8 e'8~ 
      | e'8 g'8~^\markup{\left-align \small vib} g'2 r4 
      | r4 a'8 bes'8 c''8 des''8 c''8 a'8 
      | bes'4. g'8 a'4.. g'16 
      | aes'8 c''4 es''8 g''8 c'''4.~ 
      \bar "||" c'''2 bes''8 g''4 bes'8 
      | aes''4 g''8 ges''8 f''8 e''8 es''8 d''8 
      | c''8 b'8 bes'8 aes'8 \tuplet 3/2 {ges''4 bes'8} f'8 es'8 
      | bes'8 ges'8 aes'8 f'8 \tuplet 3/2 {ges'4 es'8} f'8 es'8 
      | d'8 bes'4 g'8 c''4~ \tuplet 3/2 {c''8 a'8 bes'8~^\markup{\left-align \small vib}} 
      | bes'2 r2 
      | r8 gis''8 a''4 g''8 aes''8 ges''8 des''8 
      | b'8 a'8 g'8 ges'8 a'8 fis'4 bes'8 
      \bar "||" ges'8 es'8 d'8 a8 e'8 fis'8~ \tuplet 3/2 {fis'8 g'8 a'8} 
      | \tuplet 3/2 {bes'4 g'8} a'4 bes'4 c''4 
      | e''4 g''4 c'''2~^\markup{\left-align \small vib} 
      | c'''2.. a''8 
      | g''8 e''8 c''8 a'8 bes'8 g'8 a'8 fis'8 
      | g'4 e'4 g'4 c''8. bes'16~ 
      | bes'2.. g'8 
      | e''16 des''16 bes'16 a'16 bes'16 es''16 c''16 bes'16 a'16 es''16 des''16 bes'16 a'16 bes'8 des''16 
      | \tuplet 3/2 {bes'8 a'8 g'8~} g'2~ g'8 r8\bar  ".."
    }
    >>
>>    
}
