\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Begin the Beguine"
  composer = "David Liebman"
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
      | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 
      | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 
      | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 
      | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 | ges1:maj9 | aes1:maj9 | bes1:maj9 | s1 
      | ges1:maj9|
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


      \tempo 4 = 120
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8 f'8 a'4 c''4 
      \bar "||" \mark \default c''8 r8 r2. 
      | r4 \tuplet 9/8 {r16. c'32 d'32 ges'32 b'32 es''32 f''32} aes''32 bes''32 aes''32 f''32 es''32 c''32 bes'32 f'32 \tuplet 7/8 {es'32 c'32 bes8 c'32~} 
      | c'8 f'8 \tuplet 3/2 {c''8 bes'8 f'8~} f'8 r8 r4 
      | r4 \tuplet 12/8 {r4 r32 g''32 aes''32 g''32} ges''32 f''32 e''32 f''32 es''32 cis''32 d''32 b'32 \tuplet 6/4 {ges'16 d'16 c'8 d'16 g'16} 
      | \tuplet 3/2 {es'8 f'4~} \tuplet 6/4 {f'8 c'16 es'16 f'16 ges'16} \tuplet 6/4 {aes'16 bes'16 c''16 es''16 f''16 ges''16} \tuplet 6/4 {aes''16 es''16 f''16 des''16 es''16 bes'16} 
      | \tuplet 6/4 {c''16 bes'16 f'16 es'16 c'16 es'16} c'32 es'32 f'16 aes'32 g'32 bes'32 es''32 f''32 g''32 gis''32 a''32 bes''32 f''32 c''32 es''32 bes'32 c''32 gis'16 a'32 es'32 f'32 c'32 
      | es'16 bes16 aes8 r4 r8 r32 f''32 g''32 bes''32~ bes''16 c'''16 d'''16 bes''16 
      | c'''4 r2. 
      | r2 aes''16 bes''16 c'''16 des'''16 c'''16 bes''8.~ 
      | bes''8 es''16 aes''16 \tuplet 3/2 {bes''8 c'''8 bes''8~} \tuplet 6/4 {bes''16 aes''8 f''8 es''16~} es''16 es''16 aes''16 f''16~ 
      | f''8 r8 r2. 
      | r1 
      | es''8 aes''16 f''16 \tuplet 3/2 {c''8 es''8 bes'8} f'16 es'16 c'16 aes'16 \tuplet 6/4 {f'8 es'8 c'16 bes16~^\markup{\left-align \small vib}} 
      | bes4 r4 \tuplet 5/4 {r8 bes16 c'16 es'16~} es'16 f'16 g'16 es'16 
      | f'8 f'16 f'16 \tuplet 6/4 {c''8 c''8. f''16~} \tuplet 3/2 {f''8 f''8 c''8~} c''16 c''16 f'8 
      | r4 r16 c'16 es'16 f'16 aes'4 bes'4 
      | c''4 des''4~ des''16 es''8 f''16 r4 
      | \tuplet 6/4 {r8. aes''8 bes''16~} bes''16. c'''8 bes''32 c'''16 b''16 bes''4 bes'8 
      | bes''16 b''16 bes''16 c'''16~ c'''2.~ 
      | c'''8 c''16 bes''16 \tuplet 3/2 {c'''8 b''8 bes''8} aes''16 f''16 es''16 c''16~ \tuplet 6/4 {c''16 d''16 b'16 g'8 d'16} 
      | \tuplet 5/4 {f'8 c'16 f'16 g'16} aes'16 bes'16 c''16 es''16 \tuplet 5/4 {c''16 cis''16 d''16 es''16 des''16} c''16 des''16 f''16 aes''16~ 
      | \tuplet 6/4 {aes''16 bes''8 aes''16 bes''16 aes''16} f''16 es''16 c''16 bes'16 c''16 bes'16 c''16 bes'16 aes'16 aes'16 f'16 es'16 
      | c'16 d'16 f'16 bes'16 c''8 f''8 b'16 cis''16 d''8 f'4^\markup{\left-align \small vib} 
      | r1 
      | \tuplet 3/2 {r8 g''8 f''8} aes''4~ aes''16 aes''8 f''16 c''8 r8 
      | r8 c''16 f''16 aes''8 r8 \tuplet 3/2 {r8 aes''8 aes''8~} aes''16 f''16 f''16 c''16~ 
      | c''8 bes'16 f''16 f''8 bes''8 r4 bes''16 bes'16 bes8 
      | r4 r8. aes16 aes'32 f'32 es'32 f'32 g'32 bes'32 b32 d'32~ \tuplet 10/8 {d'32 es'32 d'32 g'32 b'32 d''32 f''32 g''32 b''32 es'''32~} 
      | \tuplet 11/8 {es'''16 d'''32 b''32 bes''32 ges''32 f''32 es''32 d''32 bes'32 ges'32} \tuplet 6/4 {f'16\bendAfter #-4  b16 des'16 b16 des'16 b16} des'32 b32 c'32 b32 des'32 b32 c'32 des'32 c'8 r8 
      | r4 \tuplet 5/4 {es'16 f'16 aes'16 bes'16 es''16} \tuplet 6/4 {f''8 aes''8 es''16 f''16~} f''16 c''16 es''16 bes'16 
      | f'16 f'16 f'16 f'16 \tuplet 6/4 {f'16 e'16 f'8 es'16 f'16~^\markup{\left-align \small vib}} f'8 r8 r4 
      | r2 aes''16 f''16 es''16 cis''16 d''16. b'32 g'16 ges'32 d'32 
      | es'16 f'8. \tuplet 3/2 {ges'4 es'8~} es'8 r8 r4\bar  ".."
    }
    >>
>>    
}
