\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bunny"
  composer = "Gerry Mulligan"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key c \major
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
      
      | a2:min7 d2:7 | g2 e2:7 | a2:min7 d2:7 | d2:min7 g2:min7 | c2 c4:min7 f4:7 | bes2 bes4:min7 es4:7 | a2:min7 d2:7 | g1 
      | a2:min7 d2:7 | g2 e2:7 | a2:min7 d2:7 | d2:min7 g2:7 | c2 c4:min7 f4:7 | bes2 bes4:min7 es4:7 | a2:min7 d2:7 | g2 c2 
      | d2:min7 g2:7 | c2 a2:7 | d2:min7 g2:7 | c1 | c2:min7 f2:7 | bes1 | a2:min7 d2:7 | b2:min7 e2:7 
      | a2:min7 d2:7 | g2 e2:7 | a2:min7 d2:7 | d2:min7 g2:min7 | c2 c4:min7 f4:7 | bes2 bes4:min7 es4:7 | a2:min7 d2:7 | g2 c2 
      | r1|
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


      \tempo 4 = 115
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 g16 a16~ 
      | a16 c8 g,16 a,4 d8. fis,16 a,4 
      | \tuplet 3/2 {dis4 g,8} a,4 e8 g,8 a,4 
      | f8. fis16~ fis8. g16~ g8 g,8 \tuplet 3/2 {a,8 c8 d8} 
      | \tuplet 3/2 {c4 c8~} c4. a8 \tuplet 3/2 {g8 e8 a,8} 
      | c8 c8 r4 r8 g8 \tuplet 3/2 {f8 es8 c8} 
      | \tuplet 3/2 {a,4 g,8~} g,8. g,16 \tuplet 3/2 {ais,4 g,8~} g,8 r8 
      | r4 r8 g,8 \tuplet 3/2 {c8 ais,8 g,8} b,8~ b,32 g,16 c32~ 
      \bar "||" c8 r8 r8 a8 g4. e8~ 
      | e16 d8 d16 a,8 g,4 a,8 \tuplet 3/2 {g4 f8} 
      | \tuplet 3/2 {e4 d8} c8 r8 r2 
      | r4 d8 cis8 d8 e8 f8 a8 
      | \tuplet 3/2 {g4 e8} c4. a8 \tuplet 3/2 {g8 e8 c8~} 
      | c8 d8 c8. c16~ c16 e16 es16 c16 \tuplet 3/2 {d4 c8~} 
      | c8. c16 d8 c8 d16\glissando  e8 g16~ g8 r8 
      | r1 
      \bar "||" r8.. c'32~ \tuplet 6/4 {c'8. c'16 b16 bes16} \tuplet 3/2 {a4 f8} d8 c8 
      | \tuplet 6/4 {d'8. des'16 c'16 b16} ais8 g8 e4 \tuplet 3/2 {e'4 d'8} 
      | c'8 a8 \tuplet 3/2 {f4 d8} r4 fis16 a16 c'16 es'16 
      | d'8 c'8 b16 c'16 b16 a16 ais8~ ais32 g16 e32~ e8 c8 
      | \tuplet 3/2 {d4 a8~^\markup{\left-align \small vib}} a8 r8 r4 aes16 f16 g16 f16 
      | \tuplet 3/2 {d'8 aes16 r8.} r4 d4 \tuplet 3/2 {f4 g8} 
      | \tuplet 3/2 {aes8 g8 f8} \tuplet 3/2 {c'4 a8} f8 d8 r4 
      | r2 d16 d16 c16 c16 d16 d16 c8 
      \bar "||" d4^\markup{\left-align \small vib} r4 d16 d16 c16 c16 d16 d16 c8 
      | dis16 e16 dis16 c16 d8 r8 r4 d16 d16 c8 
      | a4 a4^\markup{\left-align \small vib} g8 e8 c8 a,8 
      | d16 d16 c16 c16 d16 d16 c16 c16 es16 es16 c16 c16 a16 g16 es16 c16 
      | r4 r8 ais,16 c16~ \tuplet 6/4 {c16 e16 g8 a16 bes16} \tuplet 3/2 {d'8 bes8 g8} 
      | c'16 a16 f16 d16 r4 \tuplet 6/4 {r4 c16 d16} es16 f16 d16 es16 
      | c4 b,16 c16 d16 b,16 \tuplet 6/4 {c16 d8 dis16 e16 f16~} \tuplet 6/4 {f8 dis16 e16 g16 a16} 
      | \tuplet 3/2 {g8 c'8 d'8\glissando } e'16 dis'16 c'16 ais16 g16 f16 dis16 e16 g16 a16 c'8 
      \bar "||" c8 r8 r2.\bar  ".."
    }
    >>
>>    
}
