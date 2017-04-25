\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Baby Won't You Please Come Home"
  composer = "Henry Allen"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | c2:7 f2:7 | bes2 g2:7 | c2:min f2:7 | bes1 | r1|
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


      \tempo 4 = 212
      \set Score.currentBarNumber = #0
     
      | r8 bes'4 bes'4 bes'4. 
      \bar "||" \mark \default c''8 des''8 g'4 bes'8\bendAfter #-4  a'8 r4 
      | r4 r8 cis''8 d''8. es''16~ es''8 d''8\glissando  
      | es''4 d''8. d''16~ d''8 g'4. 
      | bes'4 bes'8 bes'8 a'8 g'4 es'8~ 
      | es'2 cis''8 d''8 cis''8 d''8 
      | \tuplet 3/2 {c''4 g'8~} g'8 bes'8~ bes'8. g'16~ g'8 f'8 
      | e'8. g'16~ g'8\glissando  a'8 \tuplet 3/2 {g'4 es'8~} es'4 
      | d'8 g'8\glissando  a'8. g'16~ g'8 es'4. 
      \bar "||" \tuplet 3/2 {cis'4 d'8~} d'8 f'4 r8 r4 
      | r4 cis''8 d''8 es''8 d''4 c''8~ 
      | \tuplet 6/4 {c''8 g'8. es'16~} es'8 c'4.^\markup{\left-align \small vib} c''8 bes'8 
      | a'4 \tuplet 6/4 {a'8. fis'8 d'16~} d'8 e'4 a8 
      | g4. r8 r4 r8 f''8 
      | g''1~^\markup{\left-align \small vib} 
      | g''1~ 
      | g''1~ 
      | g''1~ 
      | g''4. r8 r4 f''8 g''8 
      \bar "||" \mark \default a''4 \tuplet 3/2 {a''4 a''8~} a''4 \tuplet 3/2 {g''4 g''8~} 
      | g''8 d''8 f''8 e''8 \tuplet 3/2 {es''4 d''8~} d''8 d''8~ 
      | d''4. c''8 c''8 bes'4 g'8 
      | bes'8 g'8 gis'8 a'8~^\markup{\left-align \small vib} a'8. g'16~ g'8 f'16 es'16~ 
      | es'8 r8 r4 cis''8 d''8 cis''8 d''16 c''16~ 
      | c''8 g'4 bes'4. g'8 f'8 
      | e'8. g'16~ g'8\glissando  bes'8 a'8. g'16~ g'8 a'8~ 
      | a'8 es'4 r8 r2 
      \bar "||" r4 \tuplet 3/2 {d''8 es''8 e''8} f''4. e''16 es''16 
      | d''4 cis''8 d''8 es''8 d''4 c''8~ 
      | c''4 g'4 bes'4 bes'8 a'8 
      | r4 r8 f''16\glissando  fis''16 aes''2~ 
      | aes''4.\bendAfter #-4  g''8 f''4 es''4 
      | cis''8. d''16~ d''8 f''4 d''8 f''8 e''8 
      | es''8 d''16 cis''16~ cis''8 d''16 cis''16~ cis''8 d''16 cis''16~ cis''16 d''8 c''16~ 
      | c''8 g'4 bes'4. g'4 
      | cis''8 d''8 \tuplet 3/2 {cis''8 d''8 f''8~} f''8 d''4 bes'8~ 
      | bes'4 \tuplet 3/2 {bes'4 bes'8} a'8 a'8 g'4 
      \bar "||" f'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
