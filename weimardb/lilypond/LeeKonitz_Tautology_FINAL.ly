\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tautology"
  composer = "Lee Konitz"
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
      | r1 | s1 
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | c2:maj11+.9 bes2:11+.9 | aes2:11+.9 ges2:maj11+.9 | f1:maj | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | bes1:min7 | es1:7 | bes2:dim bes2:min7 | aes1 | a1:min7 | d1:7 | g1:7 | c1:7 
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | c2:maj11+.9 bes2:11+.9 | aes2:11+.9 ges2:maj11+.9 | f1:maj | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | bes1:min7 | es1:7 | bes2:dim bes2:min7 | aes1 | a1:min7 | d1:7 | g1:7 | c1:7 
      | f1 | f1:7 | a1:min | d1:7 | g1:min | c1:7 | f1:maj | s1 
      | f1|
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


      \tempo 4 = 266
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2. cis'8 d'8 
      | \tuplet 3/2 {es'4 cis'8} d'8 dis'8 e'8 f'8 fis'8 g'8 
      \bar "||" \mark \default a'8 g'8 f'8 g'8 a'8 bes'8 c''8. b'16 
      | bes'8 a'8 g'8 f'8 es'8 des'8 bes8 f8 
      | a2^\markup{\left-align \small vib} r2 
      | r2 d'8 cis'8 d'8 dis'8 
      | f'8 r8 r2. 
      | r8 d'8 e'8 g'8 c''8. g'16 a'8 c''8 
      | f''8 e''8 es''8 des''8 c''8 bes'8 a'8 bes'8 
      | \tuplet 3/2 {c''4 f'8~} f'4~ f'16 a'8 g'16~ g'4~ 
      \bar "||" g'16 bes'8 a'16~ a'16 g'8 c''16~^\markup{\left-align \small vib} c''2 
      | r2. r8. cis''16~ 
      | \tuplet 3/2 {cis''8 d''8 e''8~} e''8 d''8 r2 
      | r8 f'8 a'8. c''16~ \tuplet 3/2 {c''8 b'8 bes'8~} \tuplet 3/2 {bes'8 a'8 bes'8~} 
      | bes'4 bes'8 r8 r2 
      | d'8 e'8 g'4 c''4 es''8 c''8 
      | des''8 c''8 bes'8 a'8 g'8 f'8 e'8 d'8 
      | c'8 bes8 a8 c'8 f'8 r8 r4 
      \bar "||" r2 bes8 c'8 des'8 c'8~ 
      | c'16 bes8 des'16 f'8 aes'8 f'8 g'8 a'8 bes'8 
      | c''8 b'8 bes'4 aes'8 g'8 f'8 es'8 
      | des'8 c'8 bes8 aes8 g8 aes8 bes8. g16~ 
      | \tuplet 3/2 {g8 gis8 a8} bes4 b8 c'8 d'8 dis'8 
      | \tuplet 3/2 {f'4 fis'8} g'8 gis'8 a'8 bes'8 b'8 c''8 
      | des''4 r2. 
      | r2. \tuplet 3/2 {c''4 bes'8~} 
      \bar "||" \tuplet 3/2 {bes'8 a'8 c''8} f''8 r8 r4 \tuplet 3/2 {es''4 des''8} 
      | c''8 bes'8 a'8 g'8 f'8 e'8 d'4 
      | cis'4 e'4 a'2^\markup{\left-align \small vib} 
      | r1 
      | r2 \tuplet 3/2 {r8 g'8 fis'8} g'4 
      | f''8 r8 r2 \tuplet 3/2 {r8 a'8 bes'8} 
      | \tuplet 3/2 {c''4 b'8} bes'8 a'8 \tuplet 3/2 {g'4 f'8~} f'8 e'8 
      | g'8 e'8 \tuplet 3/2 {f'4 g'8} a'8 g'8 f'8 e'8~ 
      \bar "||" \mark \default \tuplet 3/2 {e'8 d'8 f'8~} f'8 c''8 \tuplet 3/2 {e''4 es''8} d''8 des''8 
      | c''8 r8 r2. 
      | r2. \tuplet 3/2 {f''4 fis''8} 
      | g''8 e''8 dis''8 des''8 c''8 bes'8 a'8 bes'8 
      | \tuplet 3/2 {c''4 f'8} g'8 a'8 bes'8 g'8~ g'8. c''16~ 
      | c''8 b'8 \tuplet 3/2 {bes'8 a'8 g'8~} g'8 f'4 e'8 
      | g'8 e'8 \tuplet 3/2 {f'8 a'8 d''8} c''8 r8 r4 
      | r2. r8. c''16~ 
      \bar "||" \tuplet 3/2 {c''8 d''8 e''8} f''4 f'4 \tuplet 3/2 {es''4 c''8} 
      | des''8 c''8 bes'8 a'8 g'8 f'8 es'8 des'8~ 
      | des'4 \tuplet 3/2 {e'4 cis'8} d'2 
      | f'2. gis'8 fis'8 
      | g'2 bes'8 g'8 a'4~ 
      | a'4 c''8. a'16~ a'8 d''8 c''8 bes'8 
      | a'4 c''8 bes'8 a'8 g'8 f'8 e'8 
      | d'8 g'8 e'8. c'16 f'8 g'8 aes'8 bes'8 
      \bar "||" c''8 aes'8 f'8 des'8 a'8 bes'8 c''8 bes'8 
      | \tuplet 3/2 {a'8 bes'8 des''8} f''8 es''4 r8 r4 
      | r2 r8. c''16~ \tuplet 3/2 {c''8 des''8 es''8} 
      | f''8. es''16~ es''16 des''8 c''16 bes'8 aes'8 g'8 aes'8 
      | bes'8 g'8 b'8 a'8 g'8 fis'8 \tuplet 3/2 {e'4 d'8} 
      | cis'4 e'8 cis'8 d'8 e'8 f'8 g'8 
      | gis'8 f'8 fis'8 g'8 bes'8 g'8~ g'16 a'8 c''16~ 
      | c''8 a'8 bes'16 es''8 c''16~ \tuplet 3/2 {c''8 des''8 c''8} \tuplet 3/2 {bes'8 a'8 g'8} 
      \bar "||" f'8 r8 r2. 
      | r4 r8 g''8~ g''16 ges''8 f''16~ f''8 e''8 
      | es''8 des''8 c''8 bes'8 a'8 bes'16 c''16~ c''8 f'8 
      | fis'8 bes'8 a'8 g'8 gis'8 bes'16 c''16~ c''16 a'8 bes'16 
      | b'4.^\markup{\left-align \small vib} r8 r2 
      | r4 b'8 c''8 e''8 d''8 a'8 bes'8 
      | d''8 c''8 g'8 a'8 c''8 b'8 bes'8 a'8 
      | g'8 f'4 e'8 \tuplet 3/2 {g'8 e'8 f'8~} f'8 e''8 
      \bar "||" \mark \default d''8 c''8 r2.\bar  ".."
    }
    >>
>>    
}
