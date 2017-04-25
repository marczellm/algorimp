\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Blue Heaven"
  composer = "Coleman Hawkins"
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
      | r1 
      | es1 | s1 | s2 d4:7 des4:7 | c1:7 | f1:7 | bes1:7 | g2:min7 ges2:7 | f2:min7 bes2:7 
      | es1 | s1 | s2 d4:7 des4:7 | c1:7 | f1:7 | bes1:7 | es1 | es2.:7 es4:775+ 
      | aes1 | c1:7 | f1:min | s1 | bes1:7 | s1 | es2 e2:dim | f2:min7 bes2:7 
      | es1 | s1 | s2 d4:7 des4:7 | c1:7 | f1:7 | bes1:7 | es2 aes2:7 | es2. r4|
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


      \tempo 4 = 132
      \set Score.currentBarNumber = #0
     
      | r4 es'4 g'4 aes'8 fis'8 
      \bar "||" \mark \default g'8 es'8 c'4 c'4.^\markup{\left-align \small vib} ges'8~ 
      | ges'8 es'4.^\markup{\left-align \small vib} f'8 es'8 \tuplet 6/4 {c'4~ c'16 c'16~^\markup{\left-align \small vib}} 
      | c'8 r8 r2. 
      | \tuplet 6/4 {r8. fis'16 g'16 aes'16~} aes'8 fis'16 g'16~ \tuplet 6/4 {g'8. es'8 c'16~} c'4 
      | es'16 f'16 es'16 c'16 g4 c'4^\markup{\left-align \small vib} es'8 g'8 
      | es'8 c'8 g8 b8 g'4^\markup{\left-align \small vib} r4 
      | r4 f'8 es'8 d'8 c'8~ c'16 aes8 bes16 
      | c'8 d'8 es'8 c'8 d'16 es'16 d'16 c'16 bes8 aes8 
      \bar "||" g8 bes8 c'8 es'4. f'8 g'8 
      | r2. r8 g'8 
      | bes'8 aes'8 g'8 f'8 es'8 d'8 \tuplet 3/2 {des'4 bes8} 
      | c'8 bes8 g8 f8 e8 des'8 c'8 bes8 
      | a8 g8 \tuplet 3/2 {f'8 ges'8 es'8~} \tuplet 5/4 {es'16 f'16 g'16 f'16 es'16} c'8 r8 
      | r4 \tuplet 3/2 {c'8 es'8 f'8} fis'8 g'8 aes'8 a'8 
      | bes'8 es'8 c'8 a8 cis'4 \tuplet 3/2 {d'4 es'8~^\markup{\left-align \small vib}} 
      | es'4. des'16 es'16~ es'2 
      \bar "||" des'16 es'16 c'8~ \tuplet 6/4 {c'16 c'16 d'8 es'16 d'16} c'8 r8 r4 
      | r4 ges16 bes16 c'8 \tuplet 6/4 {d'8. c'16 bes16 ges16~} ges4 
      | f8 bes8 c'16 cis'16 d'16 es'16 d'8 c'8~^\markup{\left-align \small vib} \tuplet 6/4 {c'4~ c'16 c'16~^\markup{\left-align \small vib}} 
      | c'4~ \tuplet 6/4 {c'4~ c'16 a'16~} a'8\glissando  c''4.~ 
      | c''8 aes'16 g'16 a'16 g'16 ges'16 f'16~ f'8 c'8 \tuplet 5/4 {d'8 es'16 d'16 c'16} 
      | d'4^\markup{\left-align \small vib} r4 aes'8 bes'8~ \tuplet 6/4 {bes'8 aes'16 bes'16 aes'16 g'16~} 
      | g'8 bes'8~ \tuplet 6/4 {bes'8. a'16 g'16 ges'16~} ges'8 bes'8 r4 
      | r8 f'8 es'8 c'16 cis'16 d'8 b8 bes8 aes8 
      \bar "||" g4 \tuplet 3/2 {es'4 fis'8~} fis'8 g'8 es'4 
      | es'4^\markup{\left-align \small vib} c'8 r8 r2 
      | r8 g16 b16 \tuplet 3/2 {c'8 d'8 es'8} \tuplet 6/4 {f'16 g'16 f'16 e'16 es'16 d'16} c'8 a16 bes16 
      | \tuplet 6/4 {c'16 e'16 des''16\bendAfter #+4  c''8 cis''16} d''4. \tuplet 6/4 {des''8 g'16~} g'4 
      | g'4^\markup{\left-align \small vib} es'8 r8 r4 g16 bes16 c'8 
      | d'8 es'8 f'8 fis'8 g'8 aes'8 \tuplet 3/2 {g'8 ges'8 es'8} 
      | \tuplet 3/2 {fis'8 g'8 es'8} es'4 es'4.^\markup{\left-align \small vib} bes8 
      | cis'8 d'8 r2.\bar  ".."
    }
    >>
>>    
}
