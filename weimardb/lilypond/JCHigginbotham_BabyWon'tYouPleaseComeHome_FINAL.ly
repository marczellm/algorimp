\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Baby Won't You Please Come Home"
  composer = "J.C. Higginbotham"
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
      | r1 
      | bes2 d2:7 | g1:7 | c1:7 | s1 | f2:7 fis2:dim | g1:min | c1:7 | f1:7 
      | bes2 d2:7 | g1:7 | c2:min es2 | d1:7 | es2 e2:dim | bes2 g2:7 | c2:7 f2:7 | bes2 g2:7 
      | c2:min f2:7 | bes1 | s2 d2:7 | g1:7 | c1:7 | s1 | f2:7 fis2:dim | g1:min 
      | c1:7 | f1:7 | bes2 d2:7 | g1:7 | c2:min es2 | d1:7 | es2 e2:dim | bes2 g2:7 
      | c2:7 f2:7 | bes2 g2:7 | c2:min f2:7 | bes1|
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


      \tempo 4 = 210
      \set Score.currentBarNumber = #0
     
      | r2 r8. f'16~ f'8 g'8 
      \bar "||" \mark \default \tuplet 3/2 {a'4 g'8} bes'4 g'8. a'16~ a'8 f'8~ 
      | \tuplet 6/4 {f'16 g'4 f'16~} f'8 e'8 es'8 d'4 d'8~ 
      | d'8 g8~ g8. d'16~ d'8 d'4 d'8~^\markup{\left-align \small vib} 
      | d'4. r8 r4 r8 b8~ 
      | b8 d'4 d'4 es'8 d'8 c'8 
      | bes8. g16~ g8 r8 r4 g'8 a'8\glissando  
      | bes'4~ \tuplet 3/2 {bes'8\bendAfter #+4  a'8 bes'8\glissando } a'4 g'4 
      | f'8 e'8 \tuplet 6/4 {es'8. g'8 g16~} g8 gis8 a8 f'8 
      \bar "||" d'8 g8 f4.. bes16~ bes8 d'8 
      | f'8. d'16~ d'4 r4 r8 c'8~ 
      | c'8 bes8 g8. bes16~ bes8 c'8~ c'16 bes8 a16~^\markup{\left-align \small vib} 
      | a4. r8 r4 r16 d'8 c'16~ 
      | c'8 bes8 c'8. bes16 cis'8 bes8 cis'8 bes8~ 
      | bes16 d'8 f'16~ f'8 e'8\glissando  es'8 r8 r8 d'8~ 
      | d'8 g8 fis8 g16 c'16~ c'16 d'8 f16~ f4 
      | bes8 d'8 f'8 a'4 g'8\bendAfter #-4  fis'4~ 
      | fis'16 g8 aes16~ aes16 bes8 d'16~ d'4 f8 bes8~^\markup{\left-align \small vib} 
      | bes4 r4 \tuplet 6/4 {r4 r16 g'16~} g'8 g'8 
      \bar "||" \mark \default g'8 g'8 g'8 g'8 g'8 g'8 g'8 g'8 
      | g'8 g'8 a'4 g'8 a'8 g'8 d'8 
      | des'8\glissando  c'4. \tuplet 3/2 {cis'4\glissando  d'8~} d'8 bes8~ 
      | bes8 g8~ g4. r8 r4 
      | r8 d'4 des'4 c'4 bes8~ 
      | bes8 g4 bes4 g4 c'8~ 
      | c'8 bes4 a4 g4 a8~ 
      | a8 f4 f'8\bendAfter #-4  e'8 des'8 r4 
      \bar "||" r4 r8. f16 bes8 d'8 f'8 g'8~ 
      | g'8 a'4. g'8 f'8 d'8. c'16~ 
      | c'4.. bes16~ bes8 g4 d'8~ 
      | d'4 r4 r8. cis''16\glissando  d''4~ 
      | d''4~ \tuplet 6/4 {d''16 b'16 c''16 es''8 c''16~} c''8 bes'4. 
      | g'4 \tuplet 3/2 {f'4 e'8} es'8 d'4 d'8~ 
      | \tuplet 6/4 {d'8 g8. fis16} g4 d'8 f8~ \tuplet 5/4 {f8 f8 bes16~} 
      | bes8 f8~ f16 bes8 d'16~ d'16 f'8 e'16~ e'8 es'8 
      | d'4 \tuplet 3/2 {f'4 d'8} des'4..^\markup{\left-align \small vib} bes16~^\markup{\left-align \small vib} 
      | bes4. r8 r2\bar  ".."
    }
    >>
>>    
}
