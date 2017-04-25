\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Six Cats and a Prince"
  composer = "Dickie Wells"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | f1:7 
      | bes1:maj | bes1:maj | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | f1:7 
      | bes1:maj | s1 | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | s1 
      | bes1:7 | s1 | es1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes1:maj | s1 | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj|
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


      \tempo 4 = 218
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r8 g'4 f'4 f'4. 
      \bar "||" \mark \default \tuplet 3/2 {bes4 d'8} es'4 f'4 r4 
      | r16 bes16 c'16 d'16~ d'8 g'4 bes8~ \tuplet 3/2 {bes8 cis'8 d'8~} 
      | d'8 f'4 b8 f'4 f'4 
      | f'4 g'4 g'4 bes8 cis'8 
      | d'8 f'4 f'8 \tuplet 3/2 {e'4 bes8~} bes8 cis'16 d'16~ 
      | d'8 bes4 cis'8 d'4 \tuplet 3/2 {bes4 aes8~} 
      | aes16 g8 f16~ f8 f'8~ f'2 
      | r4 g'8\bendAfter #-4  r8 r2 
      \bar "||" r2 r8 aes''8\bendAfter #-4  r4 
      | r8 aes,4 bes,8 f4 r4 
      | r2 r8 gis''4\bendAfter #-4  g,8~ 
      | g,8. a,16~ a,4 f4. r8 
      | r2 r8 g''8\bendAfter #-4  r4 
      | bes,4 c4 \tuplet 3/2 {f4 f'8~} f'8 cis'8 
      | d'4 bes4 bes4.. f'16~ 
      | f'8 r8 r2. 
      \bar "||" f4 e'16 f'8 d'16 c'4 bes8. f16~ 
      | f8 e'8 f'4 d'8 es'8 g8 r8 
      | r4 des4 b16 c'16 des'4 des'8 
      | c'4 \tuplet 3/2 {bes4 es'8~} es'8 r8 r4 
      | r2 r8 e8 g8. bes16~ 
      | bes8 d'8~ \tuplet 3/2 {d'8\bendAfter #+4  cis'8 d'8} c'4~ c'16 f8 f16~ 
      | f8. f'16 d'4 f'8 d'8 \tuplet 3/2 {c'4 g8} 
      | \tuplet 3/2 {aes4 f8~} f8 f'8 g'4 r4 
      \bar "||" r2 r8 c''8 des''4~ 
      | des''8 des''4 bes8~ \tuplet 3/2 {bes8 cis'8 d'8~} \tuplet 6/4 {d'16 bes4 cis'16~} 
      | cis'16 d'8 a16~ a8 gis4. \tuplet 3/2 {f4 f'8~} 
      | f'8. d'16~ d'8. d'16~ d'4 r4 
      | r4 c'8 d'8 e'8. f'16~ f'8. d'16 
      | f'4 f'4 f'4 d'8. des'16 
      | c'8. bes16~ bes8. bes16~ bes4. r8\bar  ".."
    }
    >>
>>    
}
