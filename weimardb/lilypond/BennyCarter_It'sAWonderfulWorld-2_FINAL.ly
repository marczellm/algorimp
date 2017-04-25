\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "It's a Wonderful World (Solo 2)"
  composer = "Benny Carter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | c1:maj | e2:min7 a2:7 | d2:min g2:7 | c2:maj g2:7 | c1:maj | e2:min7 a2:7 | d1:min7 | g1:7 
      | c1:7 | s1 | f1:7 | bes1:7 | c1:maj | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj 
      | s1 | e2:min7 a2:7 | d2:min g2:7 | c2:maj g2:7 | c1:maj | e2:min7 a2:7 | d1:min7 | g1:7 
      | c1:7 | s1 | f1:7 | bes1:7 | c1:maj | e2:min7 a2:7 | d2:min7 g2:7 | c1:maj|
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


      \tempo 4 = 127
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 c'16 d'16 e'4 r8 e'16 f'16 g'8 r8 
      | \tuplet 3/2 {r8 g'8 a'8~} \tuplet 6/4 {a'16 ais'8. b'16 a'16} r4 r32 c''16 a'8 dis'32\bendAfter #-4  
      | r4 \tuplet 3/2 {r8 c'8 d'8} a8 c'8 \tuplet 3/2 {d'4 c'8} 
      | r4 r16 c'16\glissando  e'16 g'16~ g'16 a'16 b'16 c''16 \tuplet 3/2 {a'8 dis'8\bendAfter #+4  e'8} 
      \bar "||" d'16 a8 c'16~ c'16 d'8 c'16~ c'16 a'8 d'16 es'16 d'8 a16~ 
      | a32 c'32~ c'8 d'32 c'32 b16 ais8 gis16 a8 a'8 fis'4 
      | b'4 a'4 \tuplet 3/2 {cis''8\glissando  d''16 r8.} r8. a'16\glissando  
      | \tuplet 5/4 {b'8 d''16 b'16 g'16} a'8. e'16 g'4^\markup{\left-align \small vib} a'8.. c''32~ 
      \bar "||" \tuplet 3/2 {c''8\bendAfter #+4  g'8 a'8} es'8 r8 r2 
      | \tuplet 3/2 {g'8 a'8 g'8~} g'16 b'16 c''16 a'16 dis'8\bendAfter #-4  r8 r4 
      | r8 e'8\glissando  \tuplet 6/4 {g'8 a'8 g'16 bes'16} \tuplet 3/2 {c''8 a'4} es'16\glissando  d'16 r8 
      | \tuplet 6/4 {r4 c'16 d'16} c'16 b16 c'16 bes'16 \tuplet 3/2 {aes'8 d'8 g'8} \tuplet 3/2 {f'8 d'8 aes8~} 
      \bar "||" \tuplet 6/4 {aes16 g8 e'8 b16} d'8 c'4 b'16. g'32 a'8 g'8~ 
      | \tuplet 5/4 {g'8 e''16 f''16 ais'16~} ais'8 d''8~ d''16 a'16 b'16 e'16 fis'8 a'8~ 
      | a'32 a8.\bendAfter #+4  aes32~ aes8 e'8 a8 c'8 c'4 
      | c'4.^\markup{\left-align \small vib} d'16\glissando  e'16 \tuplet 3/2 {g'8 a'8 c''8} \tuplet 6/4 {c''8. d''16 c''16 a'16} 
      \bar "||" \mark \default c''4 d''8\glissando  e''4 a'16\glissando  c''16~ c''16 b'32\glissando  c''16 d''32 c''32 a'32~ 
      | a'8 c''8 \tuplet 3/2 {fis''8\glissando  g''4~} g''8 c''8~ \tuplet 5/4 {c''16 c''16 d''16 c''16 a'16} 
      | c''4 a''4 \tuplet 3/2 {r8 b'8\glissando  c''8} c''16 d''16 c''16 a'16 
      | \tuplet 6/4 {c''4~ c''16 c'''16} r4 r8. a''16~ a''16 e''8 c''16~ 
      \bar "||" \tuplet 6/4 {c''16 g'8. d''16 c''16~} c''16 g'16 e'16 c'16 \tuplet 6/4 {a4 gis16 b16~} b8\glissando  d'8 
      | \tuplet 3/2 {ais8 d'8 f'8~} f'16 ais'16 gis'16 a'16~ a'16 e'16 g'16 cis'16 cis'8 a8 
      | g8 f8~ f16 ges8 b16~ b16 a8 e'16 \tuplet 3/2 {c'4 a8} 
      | d'4~^\markup{\left-align \small vib} \tuplet 6/4 {d'4~ d'16 cis'16~} cis'16 e'16 g'16 a'16 \tuplet 3/2 {c''4 a'8} 
      \bar "||" r4 r16. c'16\glissando  es'32 g'32 a'32 c''8 a'4 dis'32\glissando  e'32 g'32 a'32 
      | c''4~ c''16 d''32 c''32 b'32 bes'16 g'32~ \tuplet 6/4 {g'16 e'16 des'8 c'16 bes16} \tuplet 3/2 {a8 b8 c'8} 
      | \tuplet 3/2 {a'8 e'8 g'8} e'8 f'8 r4 \tuplet 3/2 {a8 c'8 e'8} 
      | aes2~ aes16\bendAfter #+4  d'8 b16 r4 
      \bar "||" r8 g16 a16 c'8 d'8 \tuplet 3/2 {e'4 g'8~} g'16 a'8\glissando  g'16~ 
      | g'16 a'16 ais'16 b'16 r4 r8 e'8 \tuplet 3/2 {a'4 b'8~} 
      | \tuplet 6/4 {b'16 c''4 ges'16~} ges'8 a'8 dis'8. a16 d'8 c'8~ 
      | c'2.. r8\bar  ".."
    }
    >>
>>    
}
