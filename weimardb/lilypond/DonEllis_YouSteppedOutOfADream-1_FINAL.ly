\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "You Stepped Out of a Dream"
  composer = "Don Ellis"
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
      | d1:maj 
      | d1:maj | d1:maj | es1:maj | s1 | f1:7 | s1 | bes1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | b1:min7 | e1:7 | f2:min7 bes2:7 | e2:min7 a2:7 
      | d1:maj | s1 | es1:maj | s1 | f1:7 | s1 | aes1:7 | g1:7 
      | e1:min5-7 | a1:7 | f1:min7 | bes1:7 | e1:min7 | a1:7 | d1:maj | s1 
      | s1|
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


      \tempo 4 = 200
      \set Score.currentBarNumber = #0
     
      | r2 r8 gis''8~ gis''16 fis''16 e''16 cis''16~ 
      \bar "||" \mark \default \tuplet 3/2 {cis''8 a'8 fis'8~} fis'4 r2 
      | r8. e'16 d'8 e'8 fis'8 a'8 cis''8 e''8 
      | d''4. es''8 bes'4. es'8~ 
      | es'4~ \tuplet 5/4 {es'8 f'8 g'16~} g'8 a'16 bes'16~ bes'8 cis''16 d''16 
      | dis''8 e''8 es''8 cis''16 d''16~ d''16 cis''8 c''16~ c''8 bes'8~ 
      | \tuplet 3/2 {bes'8 bes'8 a'8} g'8 f'8 r2 
      | r4 r8. bes16 c'4. d'8 
      | es'4. f'8 \tuplet 3/2 {g'8 a'8 bes'8} \tuplet 3/2 {c''8 d''4~} 
      | d''8\glissando  es''8~ es''8. d''16~ d''8 c''8 r4 
      | r4 \tuplet 3/2 {r8 a'8 g'8~} \tuplet 3/2 {g'8 f'8 fis'8~} \tuplet 3/2 {fis'8 f''8 es''8~} 
      | es''8 d''8~ d''16 f'16 cis''8 \tuplet 3/2 {gis'8 f'4} ais16 d'8 f'16~ 
      | f'16 cis'8 ais16 \tuplet 3/2 {c'4 a8} \tuplet 3/2 {b4 e'8~} \tuplet 6/4 {e'16 a'16 bes'16 a'8 g'16} 
      | ais'4~ ais'16 g'8 es'16~ es'4 d'4 
      | cis'4 c'4 r2 
      | r1 
      | r2. e'8 g'8 
      \bar "||" b'8 d''8 fis''4. d''8~ \tuplet 5/4 {d''16 b'8. cis''16~} 
      | cis''4. r8 r2 
      | r4 r16 e'8 d'16~ d'16 es'8 f'16 g'8 bes'8 
      | d''8 f''16 a''16~ a''4 \tuplet 3/2 {f''4 d''8} \tuplet 3/2 {bes'4 aes'8} 
      | \tuplet 3/2 {g'4 bes'8} g'4 a'8 g'8 f'8 e'8 
      | es'8 f'8 d'4 c'4 r4 
      | r4 \tuplet 3/2 {bes8 aes4~} aes8 bes'8 g'16 aes'8. 
      | ais'16 b'8 d''16~ d''16 b'8 f'16 \tuplet 3/2 {g'4 es'8} d'4 
      | es'4 c'8 d'4 es'4^\markup{\left-align \small vib} r8 
      | r2 \tuplet 3/2 {a'8 b'4} \tuplet 3/2 {gis'8 ais'4} 
      | \tuplet 3/2 {c''8 cis''4~} cis''8. a'16~ \tuplet 6/4 {a'16 g'4 a'16~} a'8 fis'8 
      | r2 \tuplet 6/4 {r16 e''16 f''4~} f''16 cis''16 d''16 f''16~ 
      | f''16 e''8 g'16 ais'8 d''8 cis''8. d'16 \tuplet 3/2 {fis'8 g'8 c''8} 
      | b'8. d'16~ d'16 f'8 bes'16 a'8 f'8 \tuplet 3/2 {gis'4 f'8} 
      | g'8 f'8 fis'8. e'16 \tuplet 3/2 {f'4 a8} \tuplet 3/2 {cis'8 e'8 f'8} 
      | e'8 ais8 \tuplet 3/2 {dis'4 ais8} \tuplet 3/2 {cis'4 ais8} c'8. ais16 
      \bar "||" \mark \default b4 r2.\bar  ".."
    }
    >>
>>    
}
