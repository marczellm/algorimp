\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "After Theatre Jump"
  composer = "Lester Young"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:7 aes2:7 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | es1:7 | aes1:7 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:7 aes2:7 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | es1:7 | aes1:7 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 
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


      \tempo 4 = 176
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 aes4 des'4.^\markup{\left-align \small vib} r8 
      | r8 f8 ges4 des'4^\markup{\left-align \small vib} r4 
      | r8 e8 f8 aes8 des'4.^\markup{\left-align \small vib} r8 
      | r8 f8 ges4 des'4^\markup{\left-align \small vib} r4 
      | r8. e16 f8. aes16 des'8 es'8 f'8 g'16 f'16 
      | \tuplet 3/2 {des'4 bes8} ges8 es8 \tuplet 3/2 {f4 aes8~} aes16 e8 f16 
      | \tuplet 3/2 {aes4 des'8~} des'8. des'16 des'4 \tuplet 3/2 {b4 b8~} 
      | b8 bes8 aes4. aes8 f4 
      \bar "||" \tuplet 3/2 {es'4 d'8} es'4 des'4 \tuplet 3/2 {bes4 d'8} 
      | es'8. es'16 des'4 e'8 f'4 es'8 
      | \tuplet 3/2 {des'4 bes8~^\markup{\left-align \small vib}} bes2~ bes8 r8 
      | r4 r8 aes'8~ aes'4~ aes'16 ges'16 g'16 ges'16 
      | e'8. f'16~^\markup{\left-align \small vib} f'4 \tuplet 3/2 {des'4 bes8} des'8 f'8 
      | \tuplet 3/2 {e'4 des'8} \tuplet 3/2 {bes4 f8} ges8 aes8 \tuplet 3/2 {e4 f8~} 
      | f16 aes8 des'16~^\markup{\left-align \small vib} des'4~ \tuplet 6/4 {des'16 bes8. f16\glissando  ges16~} ges8 e8 
      | \tuplet 3/2 {f4 aes8~^\markup{\left-align \small vib}} aes4 r2 
      \bar "||" r8 e8 bes8 bes,8~ bes,4. e8~ 
      | e16 bes8 bes,16~ bes,4 e4 bes8 d'8 
      | c'4.^\markup{\left-align \small vib} g'8 f'4. d''8~ 
      | d''8 c''8 g'4 d'8 c'4 e'8 
      | f'4.^\markup{\left-align \small vib} es'8 d'8 c'8 \tuplet 3/2 {bes4 aes8~} 
      | aes16 g8 f16 g4^\markup{\left-align \small vib} r4 r8 es'8~ 
      | es'8\glissando  f'4.^\markup{\left-align \small vib} \tuplet 3/2 {des'4 bes8} f'8. f'16 
      | e'8 des'8 \tuplet 3/2 {b4 f8} e4 bes8. f16 
      \bar "||" aes4^\markup{\left-align \small vib} f4 des'8 r8 r4 
      | r4 r8 des'4.^\markup{\left-align \small vib} bes4 
      | es'8\glissando  f'8~ \tuplet 6/4 {f'4 g'16 f'16} \tuplet 3/2 {e'4 des'8} bes8 des'8 
      | es'8 f'8~^\markup{\left-align \small vib} f'8. f'16 \tuplet 3/2 {des'4 bes8} \tuplet 3/2 {ges4 e8} 
      | \tuplet 3/2 {f4 aes8~} aes8 f8 aes4.^\markup{\left-align \small vib} f8 
      | \tuplet 3/2 {ges4 bes8~} bes4 bes4^\markup{\left-align \small vib} r4 
      | r4 r8. aes16~ aes8 des'8~ \tuplet 6/4 {des'4~ des'16 des'16~^\markup{\left-align \small vib}} 
      | des'4 bes8 des'8 es'8 f'4. 
      \bar "||" \mark \default des'4. c'4 es'4^\markup{\left-align \small vib} c'8 
      | des'4 \tuplet 3/2 {bes4 b8\glissando } c'4 aes4 
      | \tuplet 3/2 {b8\glissando  c'4} \tuplet 6/4 {aes4~ aes16 bes16~^\markup{\left-align \small vib}} bes4 r4 
      | r4 r8 f8 ges4 \tuplet 3/2 {f4 aes8~^\markup{\left-align \small vib}} 
      | aes4. e8 f4. es8~^\markup{\left-align \small vib} 
      | es4.. es16 e8 f8 ges8 e8 
      | \tuplet 3/2 {f4 aes8} e8 f8 aes8. des'16~^\markup{\left-align \small vib} des'4 
      | aes8 r8 r2 r8 aes,8 
      \bar "||" r4 aes4~ \tuplet 3/2 {aes8 e8 a,8~} a,4~ 
      | a,4 a4 bes,8 r8 r4 
      | r4 r8 aes,4 aes16 f16 a,4~ 
      | a,2 bes,8 r8 r4 
      | r2 es'8\bendAfter #+4  e'4 es'16\bendAfter #+4  f'16~^\markup{\left-align \small vib} 
      | f'4 des'8 es'8 des'8 aes8 \tuplet 3/2 {e4 f8} 
      | \tuplet 3/2 {ges4 e8} f8 aes8 des'8 es'8 f'8 g'16 f'16 
      | \tuplet 3/2 {des'4 bes8~^\markup{\left-align \small vib}} bes4 r4 r8 bes,8 
      \bar "||" bes8 e'8 bes8 e4 bes,4.~ 
      | bes,8 e8 bes8 d'8 bes8 e4. 
      | r2 a,4. es8 
      | a8 d'4.^\markup{\left-align \small vib} c'8 g4 f8~^\markup{\left-align \small vib} 
      | f4 r4 r8 d'16 es'16 e'16 f'16 f'16 aes'16~ 
      | aes'16\glissando  b'8 c''16~ c''4 g'4.^\markup{\left-align \small vib} f'16 g'16 
      | \tuplet 3/2 {f'4 c'8} \tuplet 3/2 {g4 f8} b8\glissando  c'4 g8 
      | r4 \tuplet 6/4 {des''8 b'8 aes'16 g'16} ges'16 e'16 des'16 b16 aes8 ges16 e16 
      \bar "||" es2~ es8. es16 des4 
      | \tuplet 3/2 {e8\glissando  f4} r2 r8 es'8~^\markup{\left-align \small vib} 
      | es'4 des'4 es'8. es'16 des'4 
      | \tuplet 3/2 {e'4\glissando  f'8} des'4 e'8\glissando  f'8 \tuplet 3/2 {des'4 e'8~} 
      | e'16\glissando  f'8 aes'16~^\markup{\left-align \small vib} aes'4 f'8 f'8 \tuplet 6/4 {des'4~ des'16 e'16~} 
      | e'8 ges'16 e'16 \tuplet 3/2 {des'4 es'8} \tuplet 3/2 {des'4 aes8} e8 f8 
      | \tuplet 3/2 {aes4 des'8~} des'8 des'8~^\markup{\left-align \small vib} des'4. des'8~^\markup{\left-align \small vib} 
      | des'4 bes8 des'8 f'8 des'8 bes4 
      \bar "||" aes4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
