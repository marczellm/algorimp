\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Down Under"
  composer = "Curtis Fuller"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key fis \minor
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
      
      | ges1:min7 | aes2:min5-7 des2:7 | ges1:min7 | s1 | g1:7 | s1 | ges1:min7 | e2:min7 a2:7 
      | d1:7 | des1:7 | ges1:min7 | des1:7 | ges1:min7 | aes2:min5-7 des2:7 | ges1:min7 | s1 
      | g1:7 | s1 | ges1:min7 | e2:min7 a2:7 | d1:7 | des1:7 | ges1:min7 | des1:7 
      | ges1:min7|
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


      \tempo 4 = 147
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 r8 fis'4 e'8 r4 
      | r8 cis'8 \tuplet 3/2 {b4 a8} \tuplet 6/4 {gis4~ gis16 fis16~} fis8 gis8 
      | \tuplet 3/2 {a4 b8} \tuplet 3/2 {gis4 fis8~} fis8 fis8~ fis8. e16 
      | dis8 dis8~ \tuplet 6/4 {dis16 fis8 g16 gis16 a16~} \tuplet 6/4 {a4 c'16 cis'16~} cis'8 b8 
      | \tuplet 3/2 {cis'4 e'8~} e'8 dis'8 e'4. e'8~ 
      | e'4 \tuplet 3/2 {cis'4 c'8} cis'8 cis'8 r4 
      | r4 r8 e'4 e'8 d'8. c'16 
      | d'8. cis'16~ cis'16 c'8 a16 c'8. c'16 \tuplet 3/2 {ais4 gis8} 
      | bes8 bes8 gis8 r8 r4 g16 d'8 cis'16~ 
      | cis'4 \tuplet 3/2 {b4 a8} gis8. fis16~ fis8 fis8 
      | r1 
      \bar "||" \mark \default \tuplet 3/2 {fis'8 fis'8 e'8} \tuplet 3/2 {fis'4 fis'8} r2 
      | r8. a'16~ a'8 a'4. fis'8. e'16 
      | \tuplet 3/2 {fis'4 fis'8} r2. 
      | r4 r8 gis'8\glissando  a'4~ \tuplet 3/2 {a'8 fis'8 e'8} 
      | fis'8. fis'16~ fis'4 fis'8\bendAfter #-4  f'8 r4 
      | r8 a'8 \tuplet 3/2 {gis'4 a'8~} a'4. fis'16 e'16~ 
      | e'16 fis'16 fis'16 e'16 fis'8 r8 r8 e'8 cis'8 r8 
      | r8 d'8 b8 r8 r8 c'16 cis'16 a8 r8 
      | r8 ais16 b16 fis4. a8 g8 r8 
      | r8. es'16 b16 gis8.~ \tuplet 6/4 {gis4 es'16 cis'16} a8 r8 
      | r8 cis'8 d'8 c'16 a16~ a16 gis8 fis16~ fis8. gis16 
      | a8. c'16 cis'8. b16~ b16 d'16 b16 a16 \tuplet 3/2 {gis4 fis8} 
      \bar "||" a8 a8 r2.\bar  ".."
    }
    >>
>>    
}
