\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tautology"
  composer = "Warne Marsh"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \major
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
      
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | c2:maj11+.9 bes2:11+.9 | aes2:11+.9 ges2:maj11+.9 | f1:maj | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | bes1:min7 | es1:7 | bes2:dim bes2:min7 | aes1 | a1:min7 | d1:7 | g1:7 | c1:7 
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | c2:maj11+.9 bes2:11+.9 | aes2:11+.9 ges2:maj11+.9 | f1:maj | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | bes1:min7 | es1:7 | bes2:dim bes2:min7 | aes1 | a1:min7 | d1:7 | g1:7 | c1:7 
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj|
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


      \tempo 4 = 270
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 \tuplet 3/2 {gis'4 a'8~} a'16 c''8 a'16~ 
      | a'8 f'8 d'16 e'8.~ e'8 cis'8 d'4 
      | a2^\markup{\left-align \small vib} r2 
      | r2 r16 c'8 es'16~ \tuplet 3/2 {es'8 d'8 c'8~} 
      | c'16 f'8 d'16~ d'16 bes8 g16~ g4 bes8 a16 g16~ 
      | g16 c'8 a16~ a16 bes8 c'16 d'8 e'8 f'8 g'8 
      | a'8 r8 r2. 
      | r2 bes'8 g'8 \tuplet 3/2 {c''4 a'8~} 
      \bar "||" \tuplet 3/2 {a'8 f'8 d'8} r4 r16 e'8 cis'16~ cis'8 r8 
      | r2 d'8 b8 cis'8 d'8 
      | e'8 d'8 cis'8 d'8 f'4 a'16 d''8 des''16 
      | c''8 a'4 fis'8 dis'16 c'8 a16~ \tuplet 3/2 {a8 fis8 g8~} 
      | g16 bes8 d'16~ d'8 bes8~ \tuplet 3/2 {bes8 c'8 b8~} \tuplet 3/2 {b8 bes8 c'8} 
      | d'8 e'8~ e'16 a'8 g'16 e'8 c'8 \tuplet 3/2 {d'8 f'8 a'8} 
      | c''4. c'8 \tuplet 3/2 {d'8 f'8 a'8} bes'8 r8 
      | r8. a'16~ a'8 bes'8 a'8 f'8 c'8 a8~ 
      \bar "||" \tuplet 3/2 {a8 g8 aes8} c'16 es'8 c'16 des'8 f'16 aes'16 \tuplet 3/2 {c''4 es''8~} 
      | es''8 r8 r2. 
      | r4 \tuplet 3/2 {r8 es'8 f'8~} f'16 aes'8 des''16~ des''8 c''8 
      | bes'8 aes'8 \tuplet 3/2 {g'8 f'8 es'8~} es'8 des'8 c'8 bes8 
      | gis8 a8 \tuplet 3/2 {c'8 e'4~} e'8 g'8 e'16 f'16 fis'16 g'16~ 
      | g'8 a'4. d''2 
      | r1 
      | r2 \tuplet 3/2 {r8 d'8 f'8~} f'16 e'8 f'16 
      \bar "||" g'4~ g'16 c''8 a'16~ \tuplet 3/2 {a'8 f'8 d'8~} d'4 
      | e'4. des'8~ des'16 a8 b16 cis'8 d'8 
      | e'8 d'8 cis'8 d'8 f'8. a'16 d''8 des''8~ 
      | des''16 c''8 a'16~ a'16 fis'8 dis'16~ dis'16 c'8 a16~ a16 fis8 g16~ 
      | g8. d'16 g'4 \tuplet 3/2 {ges'8 f'8 des'8} bes8 c'8 
      | des'8 f'8 a'8. aes'16 g'8 e'8 c'8 a8 
      | g8 f8 e8 f8 g8 a8 bes8 c'8~^\markup{\left-align \small vib} 
      | c'4. r8 r2 
      \bar "||" \mark \default r4 c8 d8 e8 f8 \tuplet 3/2 {g4 e8} 
      | \tuplet 3/2 {f4 g8~} \tuplet 3/2 {g8 a8 b8} cis'8 d'8~ d'16 e'8 cis'16~ 
      | cis'16 d'8 e'16~ \tuplet 3/2 {e'8 f'8 g'8} a'8 bes'8 c''8 d''8 
      | es''8 d''8 c''8 b'8 bes'8 a'8 g'8 ges'8 
      | f'8 d'8 bes8 g8 c'8 b8 bes8 c'8 
      | des'8 e'8 a'8 g'8 e'8 c'8 \tuplet 3/2 {d'8 f'8 a'8} 
      | c''4 c'8 d'8 es'8 ges'16 a'16 c''4~ 
      | c''8 bes16 c'16~ c'16 des'16 e'8 aes'16 c''8 aes'16 \tuplet 3/2 {es'8 des'8 bes8} 
      \bar "||" e8 f8 r2. 
      | r8 c'8 a8 f8 \tuplet 3/2 {des'4 a8~} a16 e8 f16~ 
      | \tuplet 3/2 {f8 g8 a8~} \tuplet 3/2 {a8 cis'8\glissando  d'8~^\markup{\left-align \small vib}} d'4. r8 
      | r2. r16 g8 bes16 
      | d'4 g'8. ges'16~ \tuplet 3/2 {ges'8 f'8 d'8} \tuplet 3/2 {bes4 c'8} 
      | des'4~ \tuplet 6/4 {des'16 a'4 aes'16} g'8 e'8 c'8 d'8 
      | e'8 g'8 \tuplet 3/2 {c''4 b'8} bes'8 aes'8~ \tuplet 3/2 {aes'8 g'8 f'8~} 
      | f'8 e'8 c'8 d'8 e'4 f'8 g'8 
      \bar "||" aes'8 r8 r4 r16 bes8 c'16~ c'16 des'8 es'16~ 
      | es'4~ es'16 bes8 c'16~ c'8 des'8 es'8 f'8~ 
      | f'8 bes'4.^\markup{\left-align \small vib} r2 
      | r2 es''8 c''8 aes'8 es'8 
      | cis'8 d'8 g'4 \tuplet 3/2 {c''4 b'8} a'8 g'8 
      | fis'8 e'8 d'8 c'8 b8 a8 fis8 g8 
      | b8 d'8 \tuplet 3/2 {fis'4 e'8} es'8 d'8 des'8 c'8 
      | b8 bes8 a8 g8 f8 e4. 
      \bar "||" f2 a8 c'4 a8~ 
      | a8 des'8 e'4~ e'16 cis'8 d'16 f'8 a'8 
      | d''4. d''8 r2 
      | r1 
      | f''8 d''8 bes'8 g'8 d'8 f'8 e'8 d'8 
      | des'8 e'8 g'8 b'8 c''8 a'8 f'8 c'8 
      | a8 c'8 bes8 a8 g8 bes8 d'8 f'8 
      | ges'8 e'8 es'8 des'8 c'8 bes8 aes8 g8 
      \bar "||" f8 r8 r2.\bar  ".."
    }
    >>
>>    
}
