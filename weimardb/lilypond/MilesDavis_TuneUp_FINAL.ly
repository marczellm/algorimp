\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tune Up"
  composer = "Miles Davis"
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
      | r1 
      | e1:min7 | a1:7 | d1:maj | s1 | d1:min7 | g1:7 | c1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | es1:maj | e1:min7 | f1:7 | bes1:maj | e2:min7 a2:9+ 
      | e1:min7 | a1:7 | d1:maj | s1 | d1:min7 | g1:7 | c1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | es1:maj | e1:min7 | a1:7 | d1:maj | e2:min7 a2:9+ 
      | e1:min7 | a1:7 | d1:maj | s1 | d1:min7 | g1:7 | c1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | es1:maj | e1:min7 | f1:7 | bes1:maj | e2:min7 a2:9+ 
      | e1:min7 | a1:7 | d1:maj | s1 | d1:min7 | g1:7 | c1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | es1:maj | e1:min7 | a1:7 | d1:maj | e2:min7 a2:9+ 
      | e1:min7 | a1:7 | d1:maj | s1 | d1:min7 | g1:7 | c1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | es1:maj | e1:min7 | f1:7 | bes1:maj | e2:min7 a2:9+ 
      | e1:min7 | a1:7 | d1:maj | s1 | d1:min7 | g1:7 | c1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | es1:maj | e1:min7 | a1:7 | d1:maj | e2:min7 a2:9+ 
      | e1:min7|
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


      \tempo 4 = 282
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8. cis''16~ cis''8 b'8 \tuplet 3/2 {cis''4 b'8} 
      \bar "||" \mark \default a'4.. fis'16~ fis'4. r8 
      | r2 e'8 fis'4. 
      | cis'2^\markup{\left-align \small vib} r2 
      | r2. e'8 dis'8 
      | \tuplet 3/2 {f'4 g'8~} g'8 a'8 r2 
      | r2 r8 g'8~ g'16 f'8 e'16~ 
      | e'16 g'8 a'16~ a'8 b'8 d''8 b'8 c''16 d''8. 
      | e''8 r8 r2. 
      | r4 r8 d''8 es''8. b'16~ b'8 d''8 
      | c''8 bes'8 g'8 gis'8 a'8 g'8 es'8 r8 
      | r1 
      | f'8 g'16 a'16~ a'16 bes'8 c''16~ c''4 bes'4 
      | a'4. a'4. r4 
      | r4 \tuplet 3/2 {c'8 es'8 f'8~} f'8 g'8 a'8 bes'8 
      | c''8 bes'8 c''8 bes'8 a'8 f'8 r4 
      | r1 
      \bar "||" r4 cis''8 b'8 cis''4. b'8 
      | a'2 fis'4. e'8~ 
      | e'2 fis'8 r8 r4 
      | r2. \tuplet 3/2 {d'8 cis'8 d'8~} 
      | d'16 e'8 f'16~ f'4. g'4. 
      | a'4~ a'16 b'8 c''16~ c''8 cis''8 d''8 e''8 
      | d''8 c''8 \tuplet 3/2 {b'8 a'8 g'8~} g'8 fis'8 f'8 e'8 
      | r2. \tuplet 3/2 {r8 e'8 dis'8~} 
      | dis'16 f'8 g'16 bes'8 d''8~ d''16 es''8 d''16~ d''16 c''8 b'16~ 
      | b'16 d''8 c''16~ c''16 bes'8 a'16~ a'8 g'8 fis'8 e'8 
      | f'8 c'8 \tuplet 3/2 {d'8 c'8 f'8~} f'8 g'8 a'16 bes'8 c''16~ 
      | c''4. cis''8 c''8 bes'8~ bes'8. a'16~ 
      | a'8 a'8 r2. 
      | r4 cis'8 dis'8 f'8 g'8 a'8 ais'8 
      | c''8 ais'16 c''16~ c''16 bes'8 a'16~ a'8 r8 r4 
      | r1 
      \bar "||" \mark \default r2 cis''8 e''4. 
      | cis''2 b'4.. a'16~ 
      | a'8 f'8~ f'2~ f'8 fis'8~ 
      | fis'8 r8 r2. 
      | r4 r8. d'16~ \tuplet 3/2 {d'8 e'8 f'8~} f'16 g'8 e'16~ 
      | e'8 f'8 d'8 c'8 b8 dis'8 f'8 a'8 
      | g'8 f'8 d'8 dis'8 e'8 f'8 g'8 a'8 
      | b'8 c''8 d''8 b'8 \tuplet 3/2 {c''8 d''8 e''8~} e''4 
      | es''2 d''4. c''8 
      | b'8 d''8 c''8 bes'8 a'8 g'8 dis'8 e'8 
      | f'8 r8 r4 \tuplet 3/2 {d'8 es'8 f'8~} f'16 g'8 a'16~ 
      | a'8 bes'8 c''8 bes'8 c''8 bes'4 a'8~ 
      | a'4 a'4 a'8 r8 r4 
      | r4 r8. a'16~ a'16 bes'8 c''16~ \tuplet 3/2 {c''8 bes'8 a'8~} 
      | a'8 g'8 \tuplet 3/2 {fis'8 e'4} f'8 d'8 r4 
      | r2. \tuplet 3/2 {a8 ais8 cis'8~} 
      \bar "||" \tuplet 3/2 {cis'8 d'8 e'8~} e'16 f'8 g'16~ \tuplet 3/2 {g'8 gis'8 a'8~} a'8 b'8~ 
      | b'8. cis''16~ cis''4.. b'16~ b'8 cis''8 
      | \tuplet 3/2 {a'4 fis'8~} fis'4 e'2 
      | fis'8 r8 r2. 
      | r4 r8 cis''8 d''8 e''8 \tuplet 3/2 {d''4 c''8~} 
      | \tuplet 3/2 {c''8 b'8 a'8} g'8 f'8 e'8 g'8 a'8 b'8 
      | d''8 b'8 c''8 d''8 \tuplet 3/2 {e''8 g''8 f''8} f''8 r8 
      | r2. r16 fis''16 e''16 es''16~ 
      | es''4~ \tuplet 3/2 {es''8 d''8 c''8~} c''8 r8 r8. b'16~ 
      | b'16 d''8 c''16~ c''16 bes'8 a'16~ a'16 g'8 g'16~ g'8 es'8 
      | f'8 r8 r4 d'8 es'8 f'8 g'8 
      | a'8 bes'8 c''8 bes'8 c''8 d''8 c''8 bes'8 
      | \tuplet 3/2 {a'4 a'8~} a'4 a'2 
      | r1 
      | r1 
      | r8 c''8 d''2~ d''8. d''16~ 
      \bar "||" \mark \default d''8 r8 r8. d''16~ d''2 
      | d''2 cis''4. b'8 
      | a'8 fis'4. e'2 
      | fis'8 r8 r2. 
      | r4 r8 cis''8 d''8 e''8 d''8 c''8 
      | b'8 a'8 g'8 f'8 e'8 g'8 a'16 b'8 d''16~ 
      | d''8 b'8 c''16 d''8 e''16~ e''8 g''4. 
      | f''4 e''4. es''4.~ 
      | es''2 d''4. c''8 
      | b'8 d''8 c''8 bes'16 a'16~ a'16 g'8 fis'16 e'4 
      | f'4 d'8 es'8 f'8 g'8 \tuplet 3/2 {a'8 bes'4} 
      | c''8 r8 r4 c''8 bes'16 c''16~ c''16 bes'8 a'16~ 
      | a'8 a'8 r2 \tuplet 3/2 {r8 cis'8 dis'8} 
      | f'8 g'8 a'8 bes'8 c''8 bes'8 c''8 bes'8 
      | a'8 f'8 g'8 a'16 f'16~ f'8 d'4 r8 
      | r1 
      \bar "||" r4 g'8 a'4. gis'8 a'8~ 
      | a'4 gis'8 a'4. gis'8 a'8~ 
      | a'8. f'16~ f'8 fis'8~ fis'8. f'16~ f'8 fis'8~ 
      | fis'4 \tuplet 3/2 {f'4 fis'8~} fis'8 r8 r4 
      | r4 e'8 f'8 cis'8 r8 r8 e'8 
      | d'8 e'8 f'8 g'8 a'4 r4 
      | r4 r8 e''16 es''16 d''8 c''8 b'8 a'8 
      | g'8 f'8 d'8 dis'8 e'8 r8 r4 
      | cis''8 d''4. c''4. bes'16 a'16~ 
      | a'8 g'8 \tuplet 3/2 {g'8 e'4} f'8 r8 r4 
      | r8 bes8 d'8 f'8 es'8 f'8 g'8 a'8 
      | bes'8 gis'8 a'8 c''8 es''8 f''8 f''8 es''8 
      | d''8 c''8 b'8 a'8 bes'8 a'8 g'8 dis'8 
      | a'4. a'8 cis''2 
      | fis'2. a'8 r8 
      | r2 fis'8 e'4. 
      \bar "||" \mark \default cis'2 r2\bar  ".."
    }
    >>
>>    
}
