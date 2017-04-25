\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Seven"
  composer = "Sonny Rollins"
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
      | s4 r2. 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | es1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | f1:7 | es1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | es1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | f1:7 | es1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | f1:7 | es1:7 | bes1:7 | f1:7 | bes1:7 | es1:7|
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


      \tempo 4 = 135
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8. g16 aes8 g'8~ 
      \bar "||" \mark \default g'4 r2. 
      | r4 r8. f'16~ f'16 c'8 aes16~ \tuplet 5/4 {aes16 g16 aes16 g16 f16} 
      | \tuplet 3/2 {bes4 f8~^\markup{\left-align \small vib}} f8 r8 r2 
      | r2. des'8 f'8 
      | a'8 c''8~ c''16\glissando  des''8 a'16~ a'4 r4 
      | r2 \tuplet 5/4 {r16 cis'16 d'16 es'16 f'16~} f'16 des'8 a16 
      | c'8. gis16~ \tuplet 6/4 {gis8 a8 aes16 f16} aes8 r8 r4 
      | r1 
      | \tuplet 3/2 {r8 g8 b8} \tuplet 5/4 {es'16 g'16 es'16 c'16 d'16} f'16 e'16 es'16 d'16 c'16 g16 b16 d'16 
      | \tuplet 6/4 {c'8. b16 bes16 g16} a16 g16 f16 e16~ \tuplet 6/4 {e16 c16 fis16 g16 bes16 d'16} \tuplet 6/4 {f'8 des'8 a16 g16~} 
      | \tuplet 6/4 {g16 c8 aes16 g16 f16} g8 r8 r2 
      | r4 r8. bes,16~ bes,8 aes8 c'4 
      \bar "||" \mark \default g'2^\markup{\left-align \small vib} r2 
      | r4 r8. f'16 r2 
      | r8 d'8 es'8. d'16 es'8. d'16 es'8. d'16 
      | es'8. d'16 \tuplet 6/4 {es'4~ es'16 d'16} \tuplet 3/2 {es'4 des'8~} des'16 bes8 aes16 
      | des'4 g4 c'4 r4 
      | r1 
      | \tuplet 5/4 {r16 aes'16 bes'16 aes'16 f'16~} f'16 aes'8 e'16~ e'8 e'8 r4 
      | r2 r8. d'16~ \tuplet 3/2 {d'8 es'8 g8} 
      | b8 g'8 b'8 d''8~^\markup{\left-align \small vib} d''4. r8 
      | r2 r8. c'16 f'8 aes'8~ 
      | aes'16 c''8 e''16~ e''4 r2 
      | r4 c''16 aes'16 g'16 f'16 bes'16 a'16 aes'16 e'16 g'16 e'16 f'16 es'16 
      \bar "||" \mark \default d'16 c'16 bes16 g16 aes16 g16 f16 e16 g16 f16 c16 es16 \tuplet 3/2 {d8 c8 bes,8} 
      | a,8 r8 r4 g4.. f16~ 
      | f8 c8 aes,2^\markup{\left-align \small vib} r4 
      | r2. \tuplet 3/2 {r8 des8 es8} 
      | \tuplet 3/2 {f8 g8 a8} bes8 c'8 des'16 es'16 f'16 f'16~ \tuplet 6/4 {f'16 f'8 g'8 g'16~} 
      | g'16 g'16 a'8 r2 \tuplet 6/4 {aes8 bes16 c'8 d'16~} 
      | \tuplet 6/4 {d'16 e'8 f'8 g'16~} \tuplet 3/2 {g'8 aes'8 aes'8} \tuplet 3/2 {aes'8 aes'8 aes'8} \tuplet 3/2 {aes'8 e'4} 
      | r1 
      | \tuplet 6/4 {r4 r16 cis'16} d'8 r8 r8 bes8~ bes8. g16~ 
      | g8 es8 es4 c'8 des'16 c'16 \tuplet 3/2 {a4 f8~} 
      | f8 d4 r8 r2 
      | r2 r8. bes,16 \tuplet 5/4 {f8 g16 aes16 bes16} 
      \bar "||" \mark \default \tuplet 5/4 {c'16 d'16 e'16 g'16 e'16~} \tuplet 6/4 {e'16 f'16 g'16 aes'8 es'16} e'16 g'16 f'16 es'16 \tuplet 6/4 {d'8 c'8 bes16 aes16} 
      | \tuplet 3/2 {f8\bendAfter #+4  ges16 r8.} r2 e'16\glissando  f'8 es'16 
      | des'8 aes8 r2. 
      | \tuplet 6/4 {r4 a'16 bes'16~} bes'4. bes'8 \tuplet 5/4 {fis'16 g'16 ges'16 d'16 b16} 
      | bes16 a16 aes16 fis16 g16 bes16 des'8 \tuplet 3/2 {f'8 c'8 es'8} \tuplet 3/2 {des'8 a16 r8.} 
      | r1 
      | \tuplet 6/4 {r8. f'8 g'16~} \tuplet 7/8 {g'32 aes'32 bes'16 c''16 d''32~} \tuplet 6/4 {d''8 c''8 bes'16 a'16~} \tuplet 6/4 {a'16 aes'16 c'16 e'8 g'16~} 
      | \tuplet 6/4 {g'16 e'16 f'16 g'8 e'16} \tuplet 3/2 {f'8 c'8 aes8} \tuplet 6/4 {f16 es'16 f'8 c'16 cis'16} d'16 c'16 b16 aes16 
      | d'16 b16 c'16 d'16 \tuplet 6/4 {es'16 fis'16 g'16 b'8 d''16} b'8 c''16 b'16 \tuplet 3/2 {g'8 es'8 c'8} 
      | r4 \tuplet 6/4 {r16 g16 c'16 es'16 g'16 bes'16} g'16 gis'16 a'16 f'16 g'16 es'32~ es'8 f'32~ 
      | f'16 c'16 f'16 g'16 aes'8 d'8 r2 
      | r2. r8 r32 c''32 cis''32 d''32~ 
      \bar "||" \mark \default d''8 aes'8 d'8 r8 r2 
      | r8 bes8 es'4~ es'16 c'16 des'8 \tuplet 6/4 {bes4~ bes16 f16} 
      | aes4 c'4\bendAfter #-4  r2 
      | r4 \tuplet 6/4 {r16 aes8 b8 f'16} ges'4 d'8 r8 
      | r2. r16 des'8 es'16~ 
      | es'4 des'8. es'4. aes8 c'16~ 
      | c'8. f16 aes8 c'8~ \tuplet 6/4 {c'4 b16 c'16} r4 
      | r2 cis'16 d'8 b16~ b8 g8 
      | f16 cis'8 d'16 bes8 g8~ \tuplet 3/2 {g8 d8 es8} f16 g16 bes16 d'16~ 
      | d'8 f'8 es'8 bes16 ges16~ ges8 aes4 ges8~ 
      | ges16 c'8 aes16~^\markup{\left-align \small vib} aes8 r8 r2 
      | r8 f4. \tuplet 6/4 {e16 es16 f4~} f4 
      \bar "||" \mark \default \tuplet 6/4 {f8. des8 b,16} bes,2.~ 
      | bes,8 r8 r2.\bar  ".."
    }
    >>
>>    
}
