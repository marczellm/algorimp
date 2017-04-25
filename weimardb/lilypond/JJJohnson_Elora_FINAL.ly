\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Elora"
  composer = "J.J. Johnson"
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
      
      | c1:min7 | f1:7 | bes2:maj es2:maj | d2:min7 des2:7 | c2:min7 g2:7 | c2:min7 f2:7 | bes1:maj | d2:min7 des2:7 
      | c1:min7 | f1:7 | bes2:maj es2:maj | d2:min7 des2:7 | c2:min7 g2:7 | c2:min7 f2:7 | bes1:maj | f2:min7 bes2:7 
      | es1:maj | es2:min7 aes2:7 | bes1:min7 | a2:min7 d2:7 | g1:min7 | c1:7 | c1:min7 | f1:7 
      | c1:min7 | f1:7 | bes2:maj es2:maj | d2:min7 des2:7 | c2:min7 g2:7 | c2:min7 f2:7 | bes1:maj | d2:min7 des2:7 
      | c1:min7|
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


      \tempo 4 = 197
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 a'8 f'8 e'8 es'4~ es'16 bes8 d'16 
      | c'8 bes8 a8. es'16 aes'4 ges'4 
      | f'4 d'8 a4. r4 
      | r8. f16 \tuplet 3/2 {g4 aes8~} aes8 es'8 des'4 
      | \tuplet 3/2 {c'4 g8~} g4 r2 
      | f'4 bes'8 a'4 g'8 f'8 e'8 
      | d'8 des'16 bes16~ bes8. c'16~ c'8 a16 bes16~ bes16 es'16 f'8 
      | a'8 aes'8 \tuplet 6/4 {g'8. ges'8 f'16~} f'4 d'4 
      \bar "||" es'2 g8 r8 r4 
      | \tuplet 3/2 {d'4 bes8} d'8 c'8~ c'4. bes8 
      | a4 f8 gis8 a2^\markup{\left-align \small vib} 
      | r1 
      | r1 
      | r8 bes'4 aes'8 \tuplet 3/2 {f'4 es'8} c'16 bes8 aes16\glissando  
      | c'8 d'4. f'4 r4 
      | r1 
      \bar "||" bes'4. g'8 \tuplet 3/2 {f'4 es'8~} es'8 bes'8~ 
      | bes'8 bes'8~ bes'16 ges'8 f'16~ f'8 es'4. 
      | cis'16 d'8.~ d'4 f'8 r8 r4 
      | e'4~ e'16 g'8 fis'16~ fis'8 es'8 d'4 
      | c'8 a16 bes16~ \tuplet 5/4 {bes16 d'16 f'8 a'16~} a'8 c''8 bes'4 
      | f'8 a'8 \tuplet 3/2 {g'4 e'8~} e'4 \tuplet 3/2 {bes8 d'8 c'8~} 
      | \tuplet 3/2 {c'8 bes8 a8~} a16 aes8 f16~ \tuplet 6/4 {f4 es16 d16~} d8 bes8\glissando  
      | cis'16 d'8 c'16~^\markup{\left-align \small vib} c'4 r2 
      \bar "||" r2 f'2~ 
      | f'8. d'16~ d'4 es'4 g'8 f'8~ 
      | f'8 e'16 d'16~ \tuplet 3/2 {d'8 c'8 bes8~} bes4 a8 c'8~ 
      | c'4 \tuplet 3/2 {a4 c'8} b8 aes'8 g'8 f'8 
      | es'4 a4 d'8 c'4.^\markup{\left-align \small vib} 
      | r2. r8 cis''16 d''16~ 
      | d''8. c''16~ c''8 bes'8 aes'8 f'8 es'4 
      | c'8\glissando  d'4 c'8 b8 a16 g16~ g4 
      \bar "||" f8 r8 r2.\bar  ".."
    }
    >>
>>    
}
