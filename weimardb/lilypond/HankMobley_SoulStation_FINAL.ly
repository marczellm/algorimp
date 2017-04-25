\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Soul Station"
  composer = "Hank Mobley"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key es \major
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
      | es1:7 | s1 
      | es1:7 | s1 | s1 | s1 | aes1:7 | s1 | bes1:7 | s1 
      | es1:7 | bes2:min7 es2:7 | aes1:7 | a1:dim | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | s1 | bes1:7 | s1 
      | es1:7 | bes2:min7 es2:7 | aes1:7 | a1:dim | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | s1 | bes1:7 | s1 
      | es1:7 | bes2:min7 es2:7 | aes1:7 | a1:dim | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | s1 | bes1:7 | s1 
      | es1:7 | bes2:min7 es2:7 | aes1:7 | a1:dim | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | s1 | bes1:7 | s1 
      | es1:7 | bes2:min7 es2:7 | aes1:7 | a1:dim | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | s1|
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


      \tempo 4 = 102
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default es'4 c'8\glissando  des'8 bes8. aes16 r4 
      | r8 bes'16 c''16~ c''8 bes'8 \tuplet 7/8 {es'16 aes'16. g'32 es'32~} es'16 bes16. aes16 g32~ 
      \bar "||" \mark \default g8 es'8~^\markup{\left-align \small vib} es'2 r4 
      | aes'16 bes'16 aes'16 es'16~ es'8.. aes'32~ \tuplet 3/2 {aes'8 g'8 es'8~} es'8. c'16 
      | es'8 es'8 r4 r8 r32 g32 bes32 des'32~ \tuplet 3/2 {des'8 f'8 g'8~} 
      | g'16 bes'16 c''4 g'8~ \tuplet 6/4 {g'8 a'16 bes'16 g'16 es'16} des'8. es'16~ 
      | es'16 b16\glissando  c'8~ c'8. aes'16~ aes'4 r4 
      | r8. aes'16~ \tuplet 3/2 {aes'8 aes'8 bes'8} \tuplet 3/2 {ges'8 f'8 es'8~} es'4~ 
      | \tuplet 6/4 {es'4 a'16\bendAfter #+4  aes'16} bes'4.^\markup{\left-align \small vib} aes'8 aes'16 g'16 f'16 es'16~ 
      | es'32 d'32 c'16 bes16. g32~ \tuplet 5/4 {g16 aes16 a16 c'16 d'16} g'16 f'16 d'8 r4 
      \bar "||" \tuplet 6/4 {r4 c'16 bes16} es'16. f'16. fis'32 g'32~ g'16 aes'8 bes'16~ bes'16 fis'16 g'16 es'16~ 
      | es'8. a32 b32 \tuplet 10/8 {d'32 es'16. f'16. fis'16\glissando  g'32~} g'16 c''8 f'16\glissando  \tuplet 3/2 {g'8 es'4~} 
      | es'8 aes16 b16~ b16 c'16 es'16 f'16~ \tuplet 10/8 {f'32 ges'8 es'16.\glissando  g'32 a'32} aes'4 
      | \tuplet 3/2 {fis'8 es'8 bes8~} bes16 aes16 es16 fis16~^\markup{\left-align \small vib} fis4 r4 
      | r4 r8. c''32 b'32~ \tuplet 6/4 {b'16 bes'16 aes'8 g'16 f'16~} \tuplet 5/4 {f'16 e'16 des'16 c'16 bes16~} 
      | bes16 a16 c'16 es'16 g'4 aes8 g'16 aes'16 g'16 f'16 d'16 b16 
      | bes8 es'8~ es'32 es'8. bes32 aes8 es'8 a8 es'8 
      | \tuplet 3/2 {bes8 es'4^\markup{\left-align \small vib}} r4 \tuplet 3/2 {r8 es'8 es'8~} \tuplet 6/4 {es'16 g'16 aes'16 g'8 es'16~} 
      \bar "||" \mark \default es'8 es'8 es'8 r8 \tuplet 3/2 {r8 es'8 es'8~} es'16 aes'16 bes'16 aes'16 
      | ges'16 es'8 es'16 r4 \tuplet 3/2 {r8 es'8 es'8~} \tuplet 6/4 {es'16 g'16 aes'16 g'16 es'8~} 
      | es'8 d'8 es'16 es'8. es'16 es'8. es'8. des'16 
      | \tuplet 3/2 {g'8 es'4} es'2^\markup{\left-align \small vib} c''8 es'8~ 
      | es'8 r8 r2 \tuplet 6/4 {es'8 f'8 aes'16 bes'16~} 
      | \tuplet 3/2 {bes'8 bes'8\glissando  c''8} bes'16\glissando  c''16 bes'16\glissando  c''16 aes'8 es'8 es'4^\markup{\left-align \small vib} 
      | r2 d''16 c''16 bes'16 a'16 \tuplet 3/2 {aes'8 g'8 f'8} 
      | \tuplet 3/2 {e'8 g'8 f'8} \tuplet 6/4 {es'8 cis'16 d'16 f'16 c''16} bes'16 a'16 aes'16 es'16 f'16 g'8. 
      \bar "||" \tuplet 6/4 {aes'16 f'16 es'4~} es'8. es'16 f'16\glissando  g'8 bes'16 \tuplet 3/2 {es''4 c''8~} 
      | \tuplet 6/4 {c''16\glissando  des''4 c''16} \tuplet 6/4 {b'16 bes'16 aes'8 g'16 f'16} \tuplet 3/2 {es'8 d'8 des'8} \tuplet 6/4 {ges'16 c''8. bes'16 c''16} 
      | b'32 g'16 f'16 es'16 des'32 c'16 es'16 f'8 aes'4^\markup{\left-align \small vib} r4 
      | r8 bes'16\glissando  c''16~ c''8\glissando  g'16 a'16 f'16\glissando  fis'16 d'16\glissando  es'16 bes16\glissando  c'16 aes16\glissando  a16 
      | bes8 g'8 r4 g'8 e'8~ \tuplet 6/4 {e'8. g'8 e'16} 
      | f'8 c'8~ \tuplet 6/4 {c'16 es'16\glissando  e'8. c'16} es'16 c'16 d'8 \tuplet 3/2 {bes'8 bes'8 ges'8} 
      | es'2 es'4 g'16\glissando  aes'16 g'16 es'16 
      | bes16 es'8.^\markup{\left-align \small vib} r2 \tuplet 6/4 {r16 c'16 es'16 f'8 c'16} 
      \bar "||" \mark \default es'4.^\markup{\left-align \small vib} bes8 aes4 \tuplet 3/2 {es'4 f8\glissando } 
      | g4 r2 \tuplet 9/8 {c'16. es'16. f'16 c'32\glissando } 
      | es'4. bes8 aes4 es'8. f32 g32~ 
      | g4 r2 \tuplet 3/2 {f'8 aes'8 bes'8} 
      | \tuplet 3/2 {f'8 aes'4~} aes'8 es'8 des'4 ges'16 aes'8 c'16~^\markup{\left-align \small vib} 
      | c'4 r2 d'16 e'16 f'16 g'16~ 
      | \tuplet 3/2 {g'8 aes'8 bes'8~} bes'16 bes'16\glissando  c''8~ c''16 aes'16 g'16 f'16~ \tuplet 6/4 {f'16 e'16 c'16 es'8 cis'16~} 
      | cis'32 d'32~ d'8 g'32 b'32 bes'8 r8 r2 
      \bar "||" r8 b'16\glissando  des''16 b'16\glissando  des''16 bes'16 es'16~ es'16 aes'8 aes'16 ges'8 es'8 
      | f'16\glissando  g'8 aes'16 g'16 es'16 d'16 fis'16 \tuplet 7/8 {g'16 c''16. bes'32 c''32~} c''16 g'16 f'16 es'16 
      | \tuplet 6/4 {des'16 c'16 es'8 f'16 g'16} bes'4~ \tuplet 5/4 {bes'8 aes'16 g'16 f'16} es'8 r8 
      | r4 \tuplet 3/2 {r8 c''8 bes'8} \tuplet 6/4 {a'8 g'8 fis'16 des'16} c'16 es'16 d'16 c'16 
      | bes16 c'16 es'16 f'16 \tuplet 5/4 {fis'16 g'16 g'16 aes'16 a'16} bes'16 g'16 aes'16 bes'16 g'16 f'16 e'16 g'16 
      | \tuplet 6/4 {f'8 c'8. bes16} c'4. e'16 f'16 \tuplet 6/4 {b8 des'8. bes16~} 
      | bes8 es'4 g'8 \tuplet 6/4 {aes'8 g'16 es'8 bes16~} bes16 aes16 g16 bes16~ 
      | bes8 es'8 r4 r8.. es'32~ \tuplet 3/2 {es'8 es'8 c'8} 
      \bar "||" \mark \default es'16 es'8 c'16~ c'16 es'8 c'16~ c'16 es'8 c'16 es'8 es'8 
      | c'8 es'8~ es'8. es'16~ es'16 aes'16\glissando  a'16 aes'16~ aes'32 g'16.\glissando  aes'16. f'32 
      | \tuplet 6/4 {es'8. es'8 c'16~} \tuplet 3/2 {c'8 es'8 c'8} \tuplet 6/4 {es'8. g'8\glissando  aes'16~} aes'8 ges'16 es'16~ 
      | es'8 es'4 es'8 \tuplet 9/8 {g'16\glissando  bes'16. aes'32 f'32 es'32 des'32} \tuplet 3/2 {aes'8 f'8 es'8~} 
      | es'16 es'16 es'8 \tuplet 6/4 {r4 r16 es'16~} \tuplet 3/2 {es'8 ges'8 es'8} ges'8 f'16 ges'16 
      | es'8 es'8 r8. es'16 aes'16 ges'16 es'8 es'4 
      | f'8 f'8~ \tuplet 6/4 {f'4 des'16 e'16~} e'16 g'16 f'16 des'16 es'16 cis'16 d'16 c'16 
      | bes4^\markup{\left-align \small vib} r4 r16 bes16 c'16 es'16~ es'16 aes'8 f'16~ 
      \bar "||" \tuplet 3/2 {f'8 es'8 es'8~} es'8 aes'16 f'32 g'32~ g'16 es'16 es'16. ges'32~ \tuplet 6/4 {ges'16 es'16 g'8 fis'16 g'16} 
      | es'4 bes'8\glissando  c''8 bes'16 aes'16 g'16 f'16 es'16 d'16 des'16 f'16 
      | \tuplet 5/4 {es'8 des'16 c'16 f'16} bes'8 a'16 g'16 aes'16 g'16 f'16 e'16 es'4^\markup{\left-align \small vib} 
      | r4 r16 bes'16\glissando  c''16 f'16\glissando  fis'16 g'16\glissando  a'16 d'16\glissando  \tuplet 3/2 {es'8 b8\glissando  c'8} 
      | r4 bes16 c'16 es'16 f'16 fis'16\glissando  g'16 c''16 b'16 bes'16 g'16 e'16 des'16~ 
      | \tuplet 6/4 {des'16 fis'16\glissando  g'16 aes'8 aes'16} ges'16 f'16 c'16 c'16 g'16\glissando  aes'16 ges'16 e'16~ e'16 b16 bes16 aes16 
      | g4 es'4~ \tuplet 3/2 {es'8 aes8 es'8~} es'16 g16\glissando  a16 es'16 
      | bes4^\markup{\left-align \small vib} r4 r8 d'16 f'16~ f'4~ 
      \bar "||" \mark \default f'8. es'16 f'8. es'16 f'8. es'16 f'4 
      | f'8 f'8 r4 \tuplet 3/2 {r8 aes'8 g'8~} g'16 e'16\glissando  f'8~ 
      | \tuplet 3/2 {f'8 es'8 d'8} \tuplet 6/4 {des'8 bes8 es'16\glissando  f'16~^\markup{\left-align \small vib}} f'2~ 
      | f'8 des'16 bes16~ bes16 a16 f16 aes16 g8 es8 r4 
      | r4 aes,8 es16 aes16~ \tuplet 3/2 {aes8 bes8\glissando  b8} c'16 f'16 e'16 es'16 
      | des'16 c'16 es'16 f'16 g'16 bes'8 g'16 aes'8 es'8 r4 
      | r4 r8 es''32 d''32 des''32 c''32 \tuplet 6/4 {bes'16 aes'8 g'16 f'16 es'16~} es'16 d'16 c''16 g'16~ 
      | g'16 a'16\glissando  bes'16 a'16 aes'16 g'16 f'16 es'16 \tuplet 6/4 {d'16 e'16 aes'16\glissando  bes'16 c''8} bes'16 aes'16 g'16 f'16 
      \bar "||" es'8 ges'16\glissando  aes'16~ aes'8~ aes'32 f'16 es'32~ es'8 es'8 r4 
      | r16 b'16 c''8 a'8 f'16 g'16 es'8 es'8 \tuplet 3/2 {aes'8 g'8 es'8} 
      | bes16 es'16 es'8 \tuplet 10/8 {aes'8 es'8 g'32 ges'32~} ges'16 es'8 es'16~ \tuplet 6/4 {es'16 aes'8. f'16\glissando  ges'16} 
      | es'8 es'8 g'16 aes'16 es'8 \tuplet 6/4 {fis'8. es'8 es'16} aes'8 f'8 
      | es'8 r8 r8 c''16 b'16 bes'16 aes'16 g'16 f'16 e'16 des'16 c'16 bes16 
      | a8 g'8 g'8 a8 aes8 ges'8 ges'8 d'8 
      | es'8 r8 r4 r16 des'16 es'8~ \tuplet 6/4 {es'16 c'16 es'8 b16 es'16} 
      | bes4 \tuplet 3/2 {g8 bes8 g8} \tuplet 3/2 {aes8 c'8 es'8} \tuplet 3/2 {g'8\bendAfter #-4  ges'16 r8.}\bar  ".."
    }
    >>
>>    
}
