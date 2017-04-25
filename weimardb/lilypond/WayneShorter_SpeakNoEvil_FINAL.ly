\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Speak No Evil"
  composer = "Wayne Shorter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \minor
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
      
      | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj 
      | e2:min11.9 a2:775+ | d2:min11.9 g2:775+ | a1:min5-7 | bes1:min7 | a1:min5-7 | bes1:min7 | c1:min7 | des1:maj 
      | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj | e2:min11.9 a2:775+ | d2:min11.9 g2:775+ 
      | a1:min5-7 | bes1:min7 | a1:min5-7 | bes1:min7 | c2.:min7 aes4:7 | s1 | g2.:min7 ges4:min5-7 | s1 
      | f2.:min7 bes4:min5-7 | s1 | es2.:7 des4:7 | s1 | c1:min7 | des1:maj | c1:min7 | des1:maj 
      | c1:min7 | des1:maj | c1:min7 | des1:maj | e2:min11.9 a2:775+ | d2:min11.9 g2:775+ | a1:min5-7 | bes1:min7 
      | a1:min5-7 | bes1:min7 | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj 
      | c1:min7 | des1:maj | e2:min11.9 a2:775+ | d2:min11.9 g2:775+ | a1:min5-7 | bes1:min7 | a1:min5-7 | bes1:min7 
      | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj 
      | e2:min11.9 a2:775+ | d2:min11.9 g2:775+ | a1:min5-7 | bes1:min7 | a1:min5-7 | bes1:min7 | c2.:min7 aes4:7 | s1 
      | g2.:min7 ges4:min5-7 | s1 | f2.:min7 bes4:min5-7 | s1 | es2.:7 des4:7 | s1 | c1:min7 | des1:maj 
      | c1:min7 | des1:maj | c1:min7 | des1:maj | c1:min7 | des1:maj | e2:min11.9 a2:775+ | d2:min11.9 g2:775+ 
      | a1:min5-7 | bes1:min7 | a1:min5-7 | bes1:min7 | r1|
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


      \tempo 4 = 143
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r8. f'16~ f'16 g'8 g'16~ g'16 g'8 g'16~ g'8 g'8 
      | g'4 f'4 f'8 r8 r4 
      | r1 
      | r8 g'8 g'4 a'8\bendAfter #+4  bes'8 b'16 c''8 bes'16~^\markup{\left-align \small vib} 
      | bes'2~ bes'16 g'16 f'16 es'16~ es'16 g'16 f'16 es'16 
      | c'4~ \tuplet 3/2 {c'8 bes8 g8} \tuplet 6/4 {f16 es8 f8 es16~} es8 c8 
      | r2. r8. bes'16 
      | b'4~ b'16 d''8 b'16~ \tuplet 3/2 {b'8 fis'8 g'8~} g'16 e'8 g'16\glissando  
      | a'4 c''8 g'8~ g'16 f'8 d'16~ d'16 f'8 es'16~ 
      | es'8 des'16 c'16~ c'8 bes8 r2 
      | r4 r8 g16 aes16~ aes4 g8 aes8~ 
      | aes8 g8 f8 es8 r2 
      | r2 r8 g'8 c''8 c'8 
      \bar "||" f'8 r8 r4 r8 g'8 c''4 
      | f'4 g'4. g'8 \tuplet 3/2 {c''4 d'8} 
      | f'8. g'16~ g'4 \tuplet 3/2 {aes'4 a'8} bes'8 b'8 
      | \tuplet 3/2 {b'8\glissando  c''8 cis''8} d''4. c'8 f'8 g'8 
      | \tuplet 3/2 {g'8 aes'8 a'8} r4 a'8 r8 r4 
      | a'8 b'8\bendAfter #+4  a'16 bes'8 b'16 bes'8 g'8 f'8 es'8 
      | g'8 f'8 \tuplet 6/4 {es'4 g'16 es'16~} es'16 c'8 bes16 g8 f8 
      | r1 
      | r16 d''16 b'16 g'16 e'8 a'8 f'8 d'8 a8 c'8 
      | es'8 g'8 bes8 des'8 c''8 aes'8 c''4 
      | a'4^\markup{\left-align \small vib} e'8 r8 r2 
      | r2. \tuplet 6/4 {r16 a'8 e'8 a'16} 
      | e'8 des'8 \tuplet 3/2 {a8 e4} a8 r8 r4 
      | r1 
      \bar "||" d'16 es'8.~ es'4 \tuplet 3/2 {es'4 es'8~} es'8 es'8~ 
      | es'2~ es'16 ges'16 f'16 es'16 c'4 
      | es'4~ \tuplet 6/4 {es'4~ es'16 es'16~} es'8 es'4 es'8~ 
      | es'4.. es'16~ \tuplet 6/4 {es'4~ es'16 d'16} es'4~ 
      | es'8 r8 r4 d'16 es'8 bes16 des'16\glissando  es'8.~ 
      | \tuplet 6/4 {es'4~ es'16 d'16} es'4. bes8 es'4 
      | aes16 a8. a'8 aes'16\bendAfter #+4  a'16 r2 
      | r1 
      \bar "||" es''16 e''8. c''4 d''16 es''8. g'8 bes'8 
      | c''8 g'8 e''16\glissando  f''8. g'8 es''8~ \tuplet 6/4 {es''16 c''8. b'16\glissando  c''16~} 
      | c''8 g'8 bes'4 d''16 es''8. c''8\glissando  e''16 f''16 
      | g'4 c''4 g'8 bes'8~ bes'16 d''8 c''16~ 
      | c''4. g'8~ \tuplet 3/2 {g'8 bes'8 g'8} f'8 es'8 
      | g'8 f'8 es'4 f'8 es'8 c'8 bes8 
      | g4 f8 es8 c8 r8 r4 
      | r2. r16 aes'16\glissando  a'8~ 
      | a'16 aes'16\glissando  a'8~ a'16 d''8 b'16~ b'16 a'8 f'16~ f'16 d'8 g'16~ 
      | g'16 f'8 d'16~ d'16 es'8 es'16 cis'8 es'8 c'8 bes8~ 
      | bes8 a8\bendAfter #-4  r2 \tuplet 3/2 {a,4 bes,8~^\markup{\left-align \small vib}} 
      | bes,4 \tuplet 3/2 {c4 des8} es4 des4 
      | c4^\markup{\left-align \small vib} r2. 
      | r16 bes,8 c16 des8 es8 f8 g8 a4 
      \bar "||" \mark \default c'4 r4 r8 c'8 r4 
      | c'8 r8 r8. c'16 r4 r8 c'8 
      | r4 c'8 r8 r4 \tuplet 3/2 {c'4 c'8} 
      | r2 c'4 c'4 
      | c'8 r8 r4 \tuplet 3/2 {r8 c'8 d'8} es'8 f'8~ 
      | \tuplet 6/4 {f'16 des'16\bendAfter #+4  c'16 d'8.} c'4 bes4 g8 f8 
      | \tuplet 3/2 {es4 c8} f4^\markup{\left-align \small vib} es8 r8 r4 
      | r1 
      | e'8 fis'8 g'8 a'8 b'8 d'8 f'8 a'8~ 
      | a'16 g'16\glissando  aes'8 a'16 g'8 g'16~ g'16 ges'8 f'16~ \tuplet 6/4 {f'16 e'8. bes16 d'16~} 
      | \tuplet 6/4 {d'8 es'8. c'16~} c'16 g16\bendAfter #+4  aes8 r2 
      | r4 \tuplet 6/4 {r4 bes'16 c''16~^\markup{\left-align \small vib}} c''2 
      | bes'8 aes'8 g'8 f'8 es'8 c'8 r4 
      | r1 
      \bar "||" c''8 c''8 es''8 g'8 c''8 c''8~ c''16 es''8 g'16 
      | c''8 c''8 \tuplet 3/2 {es''4 g'8} c''8 c''8 \tuplet 3/2 {es''4 g'8} 
      | c''8 g'8 c''8 g'8 c''8 g'8 \tuplet 3/2 {es''4 g'8~^\markup{\left-align \small vib}} 
      | g'8. c''16~ c''8 es''8~ \tuplet 6/4 {es''4 c''16 g'16~} g'8 c''8~ 
      | c''8 es''8 r4 r32 es''8. c''32~ c''4~ 
      | c''8 es''8 \tuplet 5/4 {c''8. c''16 es''16~} es''4 r4 
      | es''4 d''16\glissando  es''8 f''16~ f''4 es''8 c''8 
      | r2. r8 des''16 f''16 
      | ges''16 f''16\bendAfter #+4  fis''8~^\markup{\left-align \small vib} fis''16 es''16 f''16 d''16 cis''4 cis''16 es''8.^\markup{\left-align \small vib} 
      | des''8 c''8 b'8 bes'8~ bes'16 a'16\bendAfter #-4  aes'16 g'16~ g'16 g'8 f'16~ 
      | f'8 f'8\bendAfter #-4  r2. 
      | r4 f'8 e'8~ \tuplet 3/2 {e'8 es'8 d'8} des'8 b8~ 
      | b8 bes8~ \tuplet 6/4 {bes8 bes8. a16~} a8\bendAfter #-4  aes8 g8\bendAfter #-4  r8 
      | r1 
      \bar "||" r8 es'8 r4 es'4 r4 
      | r4 r8 es'4.^\markup{\left-align \small vib} es'8 r8 
      | r4 es'4 es'4^\markup{\left-align \small vib} r4 
      | r4 \tuplet 6/4 {r4 d'16 es'16~} es'4 cis''16\glissando  es''8.~ 
      | es''2~ \tuplet 6/4 {es''16 c''8 des''16 c''16 b'16} \tuplet 3/2 {bes'4 aes'8} 
      | fis'8 es'8 cis'8 bes8 aes4 \tuplet 6/4 {fis4~ fis16 a16~^\markup{\left-align \small vib}} 
      | a4. a,8 r2 
      | r8 des8 f8 aes8 des'8 f'8 aes'8 f'8 
      \bar "||" g'1~^\markup{\left-align \small vib} 
      | g'1~ 
      | g'2. r4 
      | r4 r8 f'8\glissando  g'2 
      | \tuplet 3/2 {g'4 g'8} \tuplet 3/2 {g'4 g'8} \tuplet 3/2 {fis'8 g'8 g'8} g'8. g'16 
      | \tuplet 3/2 {g'4 g'8} \tuplet 3/2 {g'4 g'8} \tuplet 3/2 {g'4 g'8~} g'16 g'8 f'16 
      | g'8 f'16 es'16~ es'8 f'8 c'8 r8 r4 
      | r2. r8 g'16 a'16~ 
      | a'4 b'8 a'4 g'8 \tuplet 6/4 {f'4 f'16\glissando  g'16~} 
      | g'4. a'16 g'16 f'4^\markup{\left-align \small vib} es'8 f'8~ 
      | f'8\bendAfter #-4  r8 r4 r8 es'8 f'8\bendAfter #-4  r8 
      | r4 r16 es'8 f'16\bendAfter #-4  r2 
      | r8 es'8 f'8\bendAfter #-4  r8 r8 es''8 \tuplet 3/2 {c''8 e''8\glissando  f''8~} 
      | f''2 es''8 c''8~ c''16 bes'8 g'16~ 
      \bar "||" g'8 f'8 es'8 c'8 \tuplet 6/4 {r4 r16 c'16~} c'8 r8\bar  ".."
    }
    >>
>>    
}
