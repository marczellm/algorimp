\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "St. Louis Blues"
  composer = "Roy Eldridge"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \major
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
      | g1:min | g1:min | d1:7 | s1 | s1 | s1 | g1:min | s2 d2:7 
      | g1:min | s1 | d1:7 | s1 | s1 | s1 | g2:min a2:7 | d1:7 
      | g1 | s1 | s1 | g1:7 | c1:7 | s2 d2:7 | g1 | s1 
      | d1:7 | a2:7 d2:7 | g1 | d1:7 | g1 | s1 | s1 | g1:7 
      | c1:7 | s2 d2:7 | g1 | s1 | d1:7 | a2:7 d2:7 | g1 | d1:7 
      | g1 | s1 | s1 | g1:7 | c1:7 | s2 d2:7 | g1 | s1 
      | d1:7 | a2:7 d2:7 | g1 | g1:7|
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


      \tempo 4 = 361
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 d''4 d''4 
      \bar "||" \mark \default d''4 d''4 d''4 r4 
      | r8 bes'8 c''8 cis''8 d''4 bes'4 
      | a'4. a'8 r2 
      | r4 r8 c''4 c''4. 
      | c''8. c''16~ c''8 c''8 c''8 c''8 c''8 c''8 
      | c''8 c''8 \tuplet 3/2 {b'4 c''8} d''4 ais'4 
      | g'8 r8 r4 e'8 r8 r4 
      | r4 r8 d''4. \tuplet 3/2 {cis''8 d''4} 
      \bar "||" cis''8 d''8 \tuplet 3/2 {cis''8 d''8 es''8~} es''8 d''8 es''8 d''8 
      | cis''8 d''8 cis''8 d''8 es''8. d''16~ d''16 es''8 d''16~ 
      | d''16 cis''8 d''16 cis''4 d''8 es''8 d''8 es''8 
      | d''16 cis''8 d''16 cis''4 e''16 es''8 d''16 es''4 
      | d''16 cis''8 d''16 cis''4 d''8 es''8 d''8 es''8 
      | \tuplet 3/2 {d''8 cis''8 d''8~} \tuplet 3/2 {d''8 cis''8 d''8} es''8 d''8~ d''16 cis''16 ais'8 
      | g'4 r4 a'4 r4 
      | d''4 r4 \tuplet 3/2 {r8 bes'8 a'8} g'8 e'8 
      \bar "||" dis'8 r8 r2. 
      | bes'8 a'8 g'8 e'8 d'4 e'4 
      | g'4. a'8 r2 
      | r2 bes'8 a'8 g'8 e'8 
      | d'4 r2. 
      | bes'8 a'8 g'8 e'8 d'4 e'4 
      | bes'8 r8 r8 a'8 r2 
      | r2 r8. ais'16~ ais'16 b'8 d''16 
      | f''4 e''16 f''8 e''16 \tuplet 3/2 {d''4 c''8} cis''4 
      | d''16 c''8 cis''16~ \tuplet 3/2 {cis''8 d''8 bes'8} a'8 g'8~ \tuplet 3/2 {g'8 f'8 g'8~} 
      | g'4. b'8 r2 
      | r4 r8 cis''8 d''4 \tuplet 3/2 {cis''8 d''8 cis''8} 
      \bar "||" d''4~ \tuplet 3/2 {d''8 cis''8 d''8} cis''8 d''8~ d''16 cis''16 d''8 
      | \tuplet 3/2 {cis''8 d''4~} \tuplet 3/2 {d''8 cis''8 d''8} \tuplet 3/2 {cis''8 d''4} cis''8 d''8 
      | cis''8 d''8~ d''16 cis''8 d''16 \tuplet 3/2 {cis''8 d''4~} \tuplet 3/2 {d''8 cis''8 d''8} 
      | cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8} cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8} 
      | cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8} cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8} 
      | cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8} cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8} 
      | \tuplet 3/2 {cis''8 d''4~} \tuplet 3/2 {d''8 cis''8 d''8} \tuplet 3/2 {cis''8 d''4~} d''8 cis''16 d''16 
      | cis''8 d''8~ \tuplet 3/2 {d''8 cis''8 d''8~} \tuplet 3/2 {d''8 cis''8 d''8~} \tuplet 3/2 {d''8 d''8 cis''8} 
      | d''8. d''16 r2 r8 d''8 
      | c''8 cis''8 d''8 c''8 cis''8 d''8 c''8 cis''8 
      | \tuplet 3/2 {d''4 ais'8} g'4. g'8\bendAfter #-4  fis'4 
      | r2 r8 d''8 e''4 
      \bar "||" g''1~ 
      | g''2. e''4 
      | d''4. b'8 ais'8 b'8 ais'8 b'8~ 
      | b'8 r8 r4 r8 c''8 \tuplet 3/2 {cis''4 g''8} 
      | b''4. a''4 a''4 g''8~ 
      | g''8 g''4 fis''8 fis''4 fis''4 
      | e''8 d''8 dis''16 b'8. c''16 d''8. b'8 c''8 
      | d''8 e''8 \tuplet 3/2 {f''4 e''8~} e''16 f''8 e''16~ e''16 f''8 e''16~ 
      | e''16 d''8 c''16~ c''16 cis''8 d''16 c''4 cis''16 d''8 bes'16 
      | a'4 g'8. a'16~ \tuplet 3/2 {a'8 gis'8 a'8} fis'8 ais'8 
      | fis'16 g'8 e'16 \tuplet 3/2 {g'4 fis'8} g'4~ \tuplet 3/2 {g'8 fis'8 g'8~} 
      | g'4 e'8 c''8 r2\bar  ".."
    }
    >>
>>    
}
