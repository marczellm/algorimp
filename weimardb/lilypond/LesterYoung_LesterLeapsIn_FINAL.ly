\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Lester Leaps In"
  composer = "Lester Young"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | bes1 | bes1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes1 | s1 | s1 | s1 | s1 | s1 | s1 | s1|
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


      \tempo 4 = 251
      \set Score.currentBarNumber = #0
     
      | r2. r8 f8 
      \bar "||" \mark \default bes8. es'16~ es'8.\glissando  f'16~ f'4. d'8~ 
      | d'8 c'8 \tuplet 3/2 {bes4 g8} \tuplet 3/2 {f4 d8} es8 c8 
      | d4 g8. bes16~ bes4. g8~ 
      | g8 r8 r2. 
      | r8. c''16~ c''8 bes'8 g'8 f'8 d'8 c'8 
      | bes8 g8~ g16 b,8 c16 d4.. f16~ 
      | f2.. bes8~ 
      | bes8 r8 r2. 
      \bar "||" \tuplet 3/2 {r8 aes'8 f'8} g'8 f'8 aes'8 f'8 g'8 f'8 
      | aes'8 f'8 g'8 f'8 g'4^\markup{\left-align \small vib} f'8 d'8 
      | des'8 bes8 g8 ges8 bes8 g8 ges8 d8 
      | f8 d8 es8 f8 g8 c'8 d'4 
      | bes4 r2 r8 es'8\glissando  
      | f'8. e'16~ e'2~ e'8 f'8~^\markup{\left-align \small vib} 
      | f'4 cis'8 d'8 bes8 g8~ \tuplet 3/2 {g8 f8 d8~} 
      | \tuplet 3/2 {d8 d8 f8~} f4 r2 
      \bar "||" r4 r16 es16 fis8 \tuplet 3/2 {b4 e'8~^\markup{\left-align \small vib}} e'4~ 
      | e'4 \tuplet 3/2 {e4 fis8} b8 e'4.^\markup{\left-align \small vib} 
      | bes8 a2.. 
      | d4. g8~^\markup{\left-align \small vib} g2 
      | r2 r8 ges'8\bendAfter #-4  e'8 f'8 
      | e'8 d'8 bes8 g8 f8 g8 \tuplet 3/2 {f8 e8 f8} 
      | \tuplet 3/2 {g4 e8} f8 a8 \tuplet 3/2 {des'4 f'8} es'8 des'8 
      | a8 f4 g4. g8 f16 c'16~^\markup{\left-align \small vib} 
      \bar "||" c'1 
      | c'2~^\markup{\left-align \small vib} c'8 bes8 g4 
      | c'4 c'4 c'4.^\markup{\left-align \small vib} r8 
      | r4 r8 c'4\glissando  des'4 bes8~ 
      | bes4. f4 f8 aes8. g16 
      | \tuplet 3/2 {bes4 g8} \tuplet 3/2 {bes4 g8} \tuplet 3/2 {bes4 g8} cis8 d8 
      | f8 bes4.^\markup{\left-align \small vib} r2 
      | r1 
      \bar "||" \mark \default e'8 f'8 ges'8 e'8 f'8 cis'8 d'8. bes16~^\markup{\left-align \small vib} 
      | bes4. f8 e8 f8 \tuplet 3/2 {ges4 e8} 
      | f8 bes,8 d8 f16 bes16~ bes8 bes4 bes8~^\markup{\left-align \small vib} 
      | bes4 c8 es8 g8 bes4.^\markup{\left-align \small vib} 
      | g4..^\markup{\left-align \small vib} bes'16~ bes'8 g'8 f'8 d'8 
      | c'8 bes8 g8 es8 es8 cis8 d8 ges8 
      | bes8 bes4. cis'8\glissando  d'4. 
      | a'4\bendAfter #-4  bes8 g4^\markup{\left-align \small vib} r8 r4 
      \bar "||" r2 c''8 bes'8 g'8 f'8 
      | d'8 bes8 c'8 d'16 es'16~ es'8 bes8 cis'16 d'16 es'16 f'16~ 
      | f'8 bes8 \tuplet 3/2 {cis'8 d'8 es'8~} es'8 e'8 \tuplet 3/2 {f'8 ges'8 f'8} 
      | cis'8 d'8 \tuplet 3/2 {bes4 g8} f8 d8 \tuplet 3/2 {es8 c8 d8~} 
      | d4~ \tuplet 3/2 {d8 f8 aes8\glissando } bes2~ 
      | bes4 \tuplet 3/2 {c8 es8 bes8~} bes2~ 
      | bes8 bes4. cis'8.\glissando  d'16~ d'8 f'16 c'16~ 
      | c'4 g8 bes8~^\markup{\left-align \small vib} bes4. r8 
      \bar "||" r2 d'8 e'8 fis'8 g'8 
      | a'8. g'16 fis'8 e'8 d'8 bes8 e8 d8 
      | g8. e16~ e16 f16 g16 bes16 e'8 d'8 b8 a8~^\markup{\left-align \small vib} 
      | a4 e8 a4.^\markup{\left-align \small vib} g8 d'8~^\markup{\left-align \small vib} 
      | d'4 r2. 
      | r8. c'16~ \tuplet 3/2 {c'8 e'8 aes'8} b'8 c''4 a'8 
      | g'8 f'8 es'8 des'8 a8 f8 cis8 d8 
      | g8 f8 g2^\markup{\left-align \small vib} r4 
      \bar "||" r8 f8 bes8 cis'8 \tuplet 3/2 {d'4 bes8} \tuplet 3/2 {g4 d8} 
      | \tuplet 3/2 {es4 c8~} c8 d8 f2^\markup{\left-align \small vib} 
      | r4 r16 f8 bes16~ \tuplet 3/2 {bes8 cis'8 d'8~} \tuplet 3/2 {d'8 f'8 es'8~} 
      | es'16 cis'8 d'16 f'8 d'8 f'2^\markup{\left-align \small vib} 
      | r4 r8 bes'8 bes'4 bes'4~ 
      | bes'8. aes'16~ aes'16 g'8 f'16 des'4. des'8~ 
      | des'8\glissando  c'8 bes8. bes16~^\markup{\left-align \small vib} bes4 aes4~ 
      | aes8\glissando  g8 f2^\markup{\left-align \small vib} r4\bar  ".."
    }
    >>
>>    
}
