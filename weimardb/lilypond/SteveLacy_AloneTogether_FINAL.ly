\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Alone Together"
  composer = "Steve Lacy"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key d \major
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
      
      | d1:min6 | e2:min5-7 a2:9- | d1:min6 | e2:min5-7 a2:9- | d1:min6 | a2:min5-7 d2:9- | g1:min7 | s1 
      | b2:min7 e2:7 | g2:min7 c2:7 | f1:maj | e2:min5-7 a2:7 | d1:maj | e2:min5-7 a2:7 | d1:min6 | e2:min5-7 a2:9- 
      | d1:min6 | e2:min5-7 a2:9- | d1:min6 | a2:min5-7 d2:9- | g1:min7 | s1 | b2:min7 e2:7 | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:7 | d1:maj | s1 | a1:min5-7 | d1:9- | g1:min6 | s1 
      | g1:min5-7 | c1:9- | f1:maj | e2:min5-7 a2:9- | d1:min6 | e2:min5-7 a2:9- | d1:min6 | e2:min5-7 a2:9- 
      | d1:min6 | bes2:7 a2:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6|
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


      \tempo 4 = 135
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. a'16~ a'8 d''4 d''4. 
      | d''8 r8 r4 r16 d''8 cis''16~ cis''8 bes'8 
      | g'8 d''8 a'4. a'4. 
      | a'8 d''8 d''4~ \tuplet 6/4 {d''16 d''8. d''16 cis''16~} cis''16 bes'8 g'16~ 
      | g'8 d''8 a'4~^\markup{\left-align \small vib} \tuplet 5/4 {a'16 g'8. f'16~} f'8 es''8 
      | es''4~ \tuplet 6/4 {es''8\glissando  d''8 d''16 c''16~} c''16 bes'8 a'16 g'8. fis'16 
      | bes'8 g'8~ \tuplet 7/8 {g'16 d'8 bes32~} bes16 c'8 es'16~ es'8 bes8 
      | r2 r8. d'16~ \tuplet 5/4 {d'16 g'8. bes'16~} 
      | bes'4 g'4 ais'4 g'8.. ais'32~^\markup{\left-align \small vib} 
      | ais'4~ \tuplet 6/4 {ais'8 g'8. bes'16~^\markup{\left-align \small vib}} bes'4~ \tuplet 6/4 {bes'16 g'4 f'16~} 
      | f'8 r8 r4 r8. c'16~ c'16 f'8 g'16~ 
      | g'16 a'16 bes'16 g'16~ g'16 a'8 f'16~ f'16 dis'8 cis'16 es'8 r8 
      | r8. d'16~ d'8 a8~ a8. e'16~ e'8 g'8~ 
      | g'8 fis'8 d'2 a'4~ 
      \bar "||" a'4 g'4. f'8 g'4 
      | d'4 f'4~ f'16 e'8 g'16~ g'8 bes'8 
      | a'4 f'8 d'8 a4 d'16 f'8 a'16~ 
      | a'8 g'8 e'4 cis'8 e'8 d'8 r8 
      | r2 r8. e'16~ e'16 f'8 a'16~ 
      | a'16 c''8 d''16~ d''16 es''8 f''16~ f''16 fis''16. g''32 fis''32 es''32~ es''16 d''8 c''16~ 
      | c''16 bes'8 g'16~ g'16 a'8 fis'16~ \tuplet 5/4 {fis'16 g'8. f'16~} f'16 fis'8 es'16~^\markup{\left-align \small vib} 
      | es'4 d'8 r8 r4 r8 bes'8~ 
      | bes'4.\glissando  g''4 f''8~ f''16 e''8 d''16~ 
      | d''8 f''8 \tuplet 3/2 {d''4 bes'8~^\markup{\left-align \small vib}} bes'4~ bes'16 g'8 c''16~ 
      | c''4.. g'16~ g'16 a'8 bes'16~ bes'16 g'8 a'16~ 
      | a'16 f'8 es'16~ \tuplet 6/4 {es'16 bes4 a16~} a4~ a16 ais8 d'16~^\markup{\left-align \small vib} 
      | d'4 fis'8 r8 r4 a'8 r8 
      | r4 fis'2\glissando  d'8. g'16~ 
      \bar "||" g'1~ 
      | g'4 \tuplet 6/4 {a'16 g'4 g'16~^\markup{\left-align \small vib}} g'4 es'4 
      | d'2. \tuplet 3/2 {cis'8 d'4~} 
      | d'2. c''4~^\markup{\left-align \small vib} 
      | c''8 r8 r4 r8. bes'16~ bes'16 a'8 bes'16~ 
      | \tuplet 5/4 {bes'16 c''8. d''16~} d''8 c'''8 bes''4~ bes''16 fis''8 cis''16~ 
      | cis''8 f''8~ f''16 e''8 c''16~ c''8 a'8~^\markup{\left-align \small vib} a'8. a'16~ 
      | \tuplet 3/2 {a'8 d''8 f''8} es''8. cis''16~ cis''8 bes'8 \tuplet 6/4 {g'8. f'8 es'16} 
      \bar "||" d'2. f'4 
      | e'4^\markup{\left-align \small vib} r4 r8. bes'16~ \tuplet 3/2 {bes'8 e''8 e''8~} 
      | \tuplet 3/2 {e''8 f''8 f''8~} f''8 e''8 a'4^\markup{\left-align \small vib} d''4 
      | d''4~ d''16 cis''8 cis''16~ cis''8.\glissando  bes'16~ bes'16 g'8 e'16 
      | f'4~^\markup{\left-align \small vib} f'16 d'32~ d'8 e'32~ e'16 f'8 g'16~ g'16 a'8 e''16~ 
      | e''4 d''8 r8 r8. cis''16~ \tuplet 6/4 {cis''8 ais'8. g'16~} 
      | \tuplet 6/4 {g'8 a'8. d'16~^\markup{\left-align \small vib}} d'4. g'8 cis'4^\markup{\left-align \small vib} 
      | f'2~ \tuplet 3/2 {f'8 e'8 f'8} e'8 bes8 
      \bar "||" \mark \default a4. r8 r2\bar  ".."
    }
    >>
>>    
}
