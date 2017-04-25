\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "After Theatre Jump"
  composer = "Dickie Wells"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | s4 r2. 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:7 aes2:7 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | es1:7 | aes1:7 
      | des2 bes2:7 | es2:min7 aes2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7 | aes2:min7 des2:7 | ges2:7 b2:7 | f2:min7 bes2:min7 | es2:min7 aes2:7|
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


      \tempo 4 = 174
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 bes'4 bes'8~ 
      \bar "||" \mark \default bes'8 bes'8~ bes'8. aes'16 bes'4 bes'4 
      | bes'8 e'8 \tuplet 3/2 {f'4 c'8} des'4 \tuplet 3/2 {bes4 des'8~^\markup{\left-align \small vib}} 
      | des'4 r4 r8 des'8 e'8 f'8 
      | des'8 bes8 des'8 des'8 \tuplet 3/2 {aes4 e8~} e8 f8~ 
      | f4. des'8 e'16\glissando  f'8 des'16~ des'8 e'16\glissando  f'16~ 
      | f'8 e'8 f'4 \tuplet 3/2 {des'4 aes8} c'16 des'8 bes16~ 
      | bes8 e8~ e16 f8 f'16~ f'8 des'4.^\markup{\left-align \small vib} 
      | r2. \tuplet 3/2 {a8\glissando  bes8 bes8~} 
      \bar "||" bes8 e'8 es'8 des'8 e'8 es'8~ \tuplet 3/2 {es'8 c'8 b8~} 
      | b8 aes8 \tuplet 3/2 {b8 c'8 bes8~} bes8 es8~ es16 e8\glissando  f16~ 
      | f8 des'8 bes8 aes8 \tuplet 3/2 {des'4 e'8~} e'8 f'8 
      | e'8 bes8 bes4.^\markup{\left-align \small vib} r8 r4 
      | r8 des8 des8 es8 e8 f4 a16 bes16~ 
      | bes8 d'8 e'8 f'4 aes8 bes8. des'16~ 
      | \tuplet 6/4 {des'8. e'8 f'16} r2. 
      | r8 g'8\glissando  bes'4 bes'4.\bendAfter #-4  a,8~ 
      \bar "||" a,4 e8. f16~ f8 bes,4 f'8 
      | e'4 d'8 c'4 d'8 r4 
      | r2 f4 f4 
      | \tuplet 3/2 {f'4 d'8} f'8 d'16\glissando  c'16~ c'8 f4^\markup{\left-align \small vib} r8 
      | r2 bes4.^\markup{\left-align \small vib} bes8 
      | bes8 c'8 \tuplet 3/2 {des'8 e'8 des'8} c'8 bes4 c'8 
      | es'8 es4 e8 \tuplet 3/2 {f4 des'8~} des'8 des'8 
      | c'8 aes4 aes4^\markup{\left-align \small vib} r8 r4 
      \bar "||" r4 r8 aes'8\glissando  bes'4.^\markup{\left-align \small vib} \tuplet 6/4 {c''8 c''16~} 
      | c''8.\glissando  f'16~ f'4 \tuplet 3/2 {f'4 bes8~} bes8 c'8 
      | des'4\glissando  e4 \tuplet 3/2 {f4 e'8\glissando } \tuplet 3/2 {f'4 des'8\glissando } 
      | c'8 bes4 bes4^\markup{\left-align \small vib} r8 r4 
      | r8 aes8 bes8 des'8 e'16\glissando  f'8 des'16~ des'8 e'8\glissando  
      | f'8 des'4 e'8\glissando  f'8.\glissando  bes'16~ bes'8 r8 
      | r4 aes8 bes8 des'8 f'8 des'8 bes8 
      | \tuplet 3/2 {aes4 e8~} e8 f4.^\markup{\left-align \small vib} r4\bar  ".."
    }
    >>
>>    
}
