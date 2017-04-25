\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Donna Lee"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key aes \major
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
      | aes1 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 | aes1 | es2:min7 d2:7 
      | des1 | des1:min7 | aes1 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 
      | aes1 | f1:7 | bes1:7 | s1 | c1:7 | s1 | f1:min | c1:9+ 
      | f1:min | c1:7 | f1:min | aes1:dim | aes2 f2:7 | bes2:min7 es2:7 | aes1 | bes2:min7 es4:7 r4 
      | aes1 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 | aes1 | es2:min7 d2:7 
      | des1 | des1:min7 | aes1 | f1:7 | bes1:7 | s1 | bes1:min7 | es1:7 
      | aes1 | f1:7 | bes1:7 | s1 | c1:7 | s1 | f1:min | c1:9+ 
      | f1:min | c1:7 | f1:min | aes1:dim | aes2 f2:7 | bes2:min7 es2:7 | aes1 | bes2:min7 es2:7|
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


      \tempo 4 = 226
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2 r8 es'8 f'4 
      | \tuplet 3/2 {aes'4 g'8} f'8 e'8 es'8 des'4 des'16 es'16~ 
      \bar "||" \mark \default es'8 c'8 \tuplet 3/2 {des'4 es'8~^\markup{\left-align \small vib}} es'4. r8 
      | r2. r8 c'8 
      | g'8 f'8 \tuplet 3/2 {d'4 bes8} c'4 r4 
      | r1 
      | \tuplet 6/4 {r4 bes16 des'16} f'8 a'16 des''16 es''8 d''8 \tuplet 3/2 {des''4 c''8} 
      | bes'8 a'8 aes'8 g'8 ges'8 f'8 \tuplet 3/2 {e'4 des'8} 
      | es'4 r4 r8 des'4 c'8 
      | r2 bes'8 fis'8 es'4 
      | \tuplet 3/2 {aes'4 e'8} \tuplet 3/2 {f'8 aes'8 c''8} es''4 des''4~^\markup{\left-align \small vib} 
      | des''4. fis''8~ fis''16 e''8 aes'16 b'8 es''8 
      | des''8 r8 r4 r8 bes'8\glissando  c''4 
      | es''8 des''8 c''8 bes'8 a'4 es'4 
      | \tuplet 3/2 {f'8 g'8 ges'8} f'8 es'8 d'8 f'8 aes'8 c''8 
      | fis'8 g'8 \tuplet 3/2 {bes'4 g'8} aes'8 f'8 r4 
      | r2 r8 bes8 \tuplet 3/2 {des'8 f'8 aes'8} 
      | g'8 f'8 es'8 bes8 ges'8 f'8 e'4~ 
      \bar "||" e'8 b8 des'8 e'8 es'8 des'8 c'8 bes8 
      | a8 c'8 es'8 des'8 \tuplet 3/2 {ges'4 f'8~} f'16 es'8 c'16 
      | \tuplet 3/2 {g'4 f'8} des'16\glissando  d'8 bes16 c'4.^\markup{\left-align \small vib} r8 
      | r1 
      | r4 g'8 f'8 \tuplet 3/2 {es'8 g'8 bes'8} \tuplet 3/2 {des''4 c''8~^\markup{\left-align \small vib}} 
      | c''4 bes'16 c''16 bes'16 aes'16 g'8 f'8 e'8 g8 
      | bes8 des'8 c'8 bes8 aes4 c''8 bes'8 
      | aes'8 ges'8 e'8 bes8 des'8 e'8 es'8 des'8 
      | c'8 es'8 f'8 g'8 \tuplet 3/2 {bes'4 aes'8} g'8 f'8 
      | e'8 g8 bes8 des'8 bes8 g8 c'8. g16 
      | bes8 g8 aes8 f4.^\markup{\left-align \small vib} r4 
      | r1 
      | r8 b8 \tuplet 3/2 {c'8 es'8 g'8} aes'4 \tuplet 3/2 {g'8 aes'8 aes'8} 
      | \tuplet 3/2 {g'8 aes'8 g'8} aes'4 r4 r8 b8 
      | \tuplet 5/4 {c'8 es'16 g'16 aes'16~} aes'8 es'8 \tuplet 3/2 {g'8 aes'8 aes'8} g'16 aes'16 g'8 
      | aes'8 r8 r4 b16 c'8 g'16 aes'4 
      \bar "||" \mark \default g'8 aes'8 \tuplet 3/2 {g'8 aes'8 g'8} g'16 aes'16 g'8 f'8 e'8 
      | \tuplet 3/2 {es'4 des'8} c'8 bes8 a8 ges'4 e'16 f'16~ 
      | f'8 d'8 bes8 aes8 c'4.^\markup{\left-align \small vib} r8 
      | r1 
      | r8 bes16 des'16 \tuplet 3/2 {f'8 aes'8 c''8} es''8 d''16 des''16~ des''8 c''8 
      | bes'16 a'8 aes'16~ aes'16 g'8 ges'16~ ges'8 f'8 e'8 des'16 es'16~ 
      | es'8 des'16 c'16~ \tuplet 3/2 {c'8 es'8 g'8} bes'8 ges'8 es'8 bes8 
      | des'4 \tuplet 3/2 {c'4 f'8\bendAfter #-4 } e'8 c'8 aes'8 ges'8 
      | f'8 es'4 c'8 es'8 c'8 des'8 e'8~^\markup{\left-align \small vib} 
      | e'4. r8 r2 
      | r2 b'8 c''8 \tuplet 3/2 {es''4\glissando  fis''8} 
      | g''4 f''8 e''8 \tuplet 3/2 {es''4 des''8} \tuplet 3/2 {c''8 bes'4} 
      | \tuplet 6/4 {a'4~ a'16 es'16~} \tuplet 3/2 {es'8 c'8 fis'8~} \tuplet 3/2 {fis'8 g'8 ges'8} f'8 es'8 
      | d'4 aes'8 c''8 f'8 g'16 bes'16~ bes'8 g'8 
      | aes'4 r4 r8 bes8 c'8. des'16~ 
      | des'4 r4 ges'8 f'8 e'8 des'8 
      \bar "||" \tuplet 3/2 {es'4 c'8~} c'8 r8 r2 
      | r4 r8 c'8 g'8 f'8 es'8 des'8 
      | c'8 bes8 a8 c'8 es'8 ges'8 f'8 es'8 
      | d'8 g'8 r2. 
      | r2 g'8 f'8 \tuplet 3/2 {e'8 g'8 bes'8} 
      | c''8\glissando  des''8 g'8 b'4\glissando  c''8 \tuplet 3/2 {bes'4 g'8} 
      | \tuplet 3/2 {aes'4 f'8~} f'8 r8 r2 
      | r1 
      | r8. b16~ b16 c'16 es'16 g'16 \tuplet 3/2 {bes'4 aes'8} g'8 f'8 
      | e'8 g8 bes8 des'8 bes8 g8 \tuplet 3/2 {c'4 g8} 
      | \tuplet 3/2 {bes4 g8} aes8 f4 r8 r4 
      | r8 bes8 \tuplet 3/2 {b8 des'8 g'8} \tuplet 3/2 {bes'4 aes'8} g'8 f'8~ 
      | f'16 es'16 c'16\glissando  des'16~ \tuplet 3/2 {des'8 c'8 bes8} a8 ges'4 es'16 e'16 
      | f'8 des'8 bes8 aes8 g8 e'8 des'8 d'8 
      | es'4 c'8. g'16 \tuplet 6/4 {bes'4 g'16 aes'16~^\markup{\left-align \small vib}} aes'4~ 
      | aes'4. b'8 c''4 es''8 bes'8~ 
      \bar "||" bes'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
