\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blues for Alice"
  composer = "Charlie Parker"
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
      | s2 r2 
      | f1:maj | e2:min5-7 a2:9- | d2:min7 g2:7 | c2:min7 f2:7 | bes1:7 | bes2:min7 es2:7 | a2:min7 d2:7 | aes2:min7 des2:7 
      | g1:min7 | c1:7 | f2:maj d2:min7 | g2:min7 c2:7 | f1:maj | e2:min5-7 a2:9- | d2:min7 g2:7 | c2:min7 f2:7 
      | bes1:7 | bes2:min7 es2:7 | a2:min7 d2:7 | aes2:min7 des2:7 | g1:min7 | c1:7 | f2:maj d2:min7 | g2:min7 c2:7 
      | f1:maj | e2:min5-7 a2:9- | d2:min7 g2:7 | c2:min7 f2:7 | bes1:7 | bes2:min7 es2:7 | a2:min7 d2:7 | aes2:min7 des2:7 
      | g1:min7 | c1:7 | f2:maj d2:min7 | g2:min7 c2:7 | f1:maj|
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


      \tempo 4 = 169
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 c'8~ 
      \bar "||" \mark \default \tuplet 6/4 {c'16 d'16 e'16 g'8.} \tuplet 3/2 {f'4 c'8} e'8 f'8~ f'16 bes8 b16 
      | d'8. c'16 \tuplet 3/2 {des'8 e'8 g'8~} g'16 bes'16 c''16 bes'16 \tuplet 3/2 {a'4 f'8} 
      | g'8 c'16 d'16~ d'8 es'8~^\markup{\left-align \small vib} es'4. r8 
      | r2 r8. f'16 f'8. bes'16\glissando  
      | b'8. bes'16~ bes'4 \tuplet 3/2 {bes'8\glissando  b'4} bes'4 
      | g'8 aes'8~ \tuplet 6/4 {aes'16 f'8. g'16 f'16~^\markup{\left-align \small vib}} f'16 es'8 c'16 bes4^\markup{\left-align \small vib} 
      | f8 gis16\glissando  a16~ \tuplet 6/4 {a8. c'16\glissando  dis'16 g'16} f'4 c'16 d'8 dis'16~^\markup{\left-align \small vib} 
      | dis'4 r2 cis'8\glissando  d'8~ 
      | d'16 bes'16 c''16 bes'16 a'8 g'8 \tuplet 3/2 {c''4 g'8~} g'8 r8 
      | r8 dis'16 e'16 fis'16 g'16\glissando  bes'16\glissando  es''16 \tuplet 6/4 {f''16 e''16 d''16 dis''16 e''8} cis''16. d''16 es''32 es''32 des''32 
      | \tuplet 5/4 {bes'16 bes'16 g'16 c''16 bes'16} \tuplet 5/4 {a'8 f'16 des'16 bes16} c'4^\markup{\left-align \small vib} r4 
      | r2. r8 e'8 
      \bar "||" \mark \default \tuplet 3/2 {f'8 a'8 c''8} e''8 f''16 fis''16 g''8 ges''16 f''16 e''8 d''8 
      | \tuplet 3/2 {des''4 e'8} g'8 a'8~ a'16 bes'16 c''16 bes'16 \tuplet 3/2 {a'4 f'8} 
      | g'16 a'16 g'16 f'16 d'8 f'4. g'16 a'16 g'16 f'16 
      | es'8 f'8~^\markup{\left-align \small vib} f'4. r8 r4 
      | \tuplet 6/4 {r4 c'16 d'16~} \tuplet 6/4 {d'4 f'16 aes'16} c''8 bes'8~ \tuplet 5/4 {bes'16 aes'16 bes'16 aes'16 f'16} 
      | g'4 f'8. es'16~ es'8 c'8~ c'16 bes8 f16~ 
      | f8 a8~ \tuplet 6/4 {a8. c'16 d'16 e'16} g'16 c''8 g'16~ g'16 e'8 cis'16~ 
      | cis'16 des''8 b'16~ \tuplet 3/2 {b'8 ges'8 es'8} \tuplet 3/2 {b8 bes'4} aes'8 r8 
      | r4 r8 dis'8 e'16 ges'16 aes'16 b'16 es''16\glissando  f''16 r8 
      | \tuplet 6/4 {r4 dis'16 e'16} g'16\glissando  a'16 bes'8 des''16 c''16 bes'16 a'16 g'16 f'16 e'16 g16 
      | bes16 des'16 c'16 a16 bes16 a'16 dis'16 e'16 g'8 r8 r8. b16\glissando  
      | c'2~ c'4~ c'16 d'8 c'16~ 
      \bar "||" \mark \default c'32 g'16\glissando  a'16. c''32 a'32~ a'16 g'8 f'16~ f'8 r8 r8 a'8 
      | \tuplet 3/2 {bes'8 c''8 a'8} g'8 f'8 e'8 d'8 des'8 e'8~ 
      | e'16 d'8 cis'16 d'8 e'8 f'8 g'8 a'4 
      | d'8. es'16~^\markup{\left-align \small vib} es'4. r8 r4 
      | r8. bes'16\glissando  c''4 \tuplet 3/2 {f''4 des''8\bendAfter #-4 } bes'16 aes'8 f'16~ 
      | f'4.. c'16 b'8 bes'8 aes'16 bes'16 aes'16 f'16~ 
      | \tuplet 3/2 {f'8 g'8\glissando  a'8~} \tuplet 6/4 {a'8 c''16 a'8 e'16} d'8 d'4.^\markup{\left-align \small vib} 
      | r1 
      | r8 dis'8 \tuplet 5/4 {e'16 g'16 a'16 bes'16 b'16} \tuplet 3/2 {c''8 b'8 bes'8~} bes'8 dis'8 
      | \tuplet 6/4 {e'16 g'16 a'16 bes'8 b'16} \tuplet 5/4 {c''8 b'16 bes'16 a'16~} a'16 g'16 f'16 e'16 g'16 bes'16 des''8 
      | \tuplet 5/4 {bes'16 bes'16 c''16 bes'16 a'16} \tuplet 3/2 {g'8 f'16 r8.} r8. d'16\glissando  e'4~^\markup{\left-align \small vib} 
      | e'4 g'16 f'16 e'16 d'16 des'8 f'16 des'16 c'16 bes16 a16 c'16 
      \bar "||" \mark \default e'16 f'16 d'16 e'16 c'4 r2\bar  ".."
    }
    >>
>>    
}
