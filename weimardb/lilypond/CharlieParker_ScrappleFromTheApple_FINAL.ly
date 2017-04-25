\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Scrapple from the Apple"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key f \major
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
      
      | a1:7 | s1 | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f2:maj f2:7 | bes2:maj b2:dim7 | f2:maj g2:maj | a2:min7 d2:7 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f2:maj f2:7 | bes2:maj b2:dim7 | f2:maj c2:7 | f1:maj 
      | a1:7 | s1 | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 
      | g1:min7 | c1:7 | g1:min7 | c1:7 | f2:maj f2:7 | bes2:maj b2:dim7 | f2:maj g2:min7 | a2:min7 d2:7|
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


      \tempo 4 = 165
      \set Score.currentBarNumber = #-7
     
      \bar "||" \mark \default r2 fis''16 g''16 fis''16 e''16 d''8 cis''8 
      | b'8 a'8 g'8 fis'8~ \tuplet 3/2 {fis'8 e'8 d'8~} \tuplet 3/2 {d'8 cis'8 e'8} 
      | g'8. b'16~ b'8. g'16~ g'16 a'8 e'16 r4 
      | r4 r8 d'16 des'16~ \tuplet 6/4 {des'16 c'16 b8 a16 g16} fis4 
      | r4 r8 d'8 \tuplet 6/4 {dis'16 f'16 g'8 a'16 b'16} \tuplet 3/2 {e''8 cis''8 d''8} 
      | g''8 g''8 \tuplet 3/2 {e''4 a'8~} \tuplet 6/4 {a'4~ a'16 fis'16} \tuplet 5/4 {g'8 bes'16 c''16 d''16} 
      | f''8 e''16 d''16 c''16 bes'8 a'16 \tuplet 3/2 {g'4 f'8~} \tuplet 6/4 {f'16 e'8 f'8 g'16} 
      | d''4~ d''16 g'8 a'16 \tuplet 3/2 {c''4 bes'8} r4 
      \bar "||" \mark \default r4 \tuplet 3/2 {fis8 g8 bes8} d'16 f'8 d'16~ d'16 e'8 c''16~ 
      | c''4~ c''16 bes'16 f'16 des'16 a'8 r8 r4 
      | r4 r8. e'16 g'16 a'16 g'8 f'16 e'8 d'16~ 
      | d'16 f'8 des'16 \tuplet 3/2 {bes4 g8} aes8 e'8 d'8 des'8 
      | \tuplet 3/2 {c'4 bes8~} bes16 c'16 es'16 g'16~ g'16 d''8 des''16~ des''16 c''8 b'16 
      | bes'8 f'8 g'8 aes'8 g'4. aes'8 
      | \tuplet 3/2 {g'8 ges'8 f'8} r4 r8 f'8 \tuplet 3/2 {g'4 aes'8~} 
      | aes'8 g'4 gis'8 r2 
      \bar "||" \mark \default r2 r8. fis'16~ fis'16 g'16 bes'16 d''16~ 
      | \tuplet 5/4 {d''16 f''8 e''16 d''16} c''16 bes'8 a'16 g'8 f'16 e'16~ \tuplet 3/2 {e'8 g'8 bes'8} 
      | des''16 es''8 c''16~ c''16 bes'16 c''16 a'16~ \tuplet 3/2 {a'8 g'8 a'8} f'4 
      | r2 \tuplet 6/4 {r4 es'16 f'16~} f'16 g'16 ges'16 e'16 
      | \tuplet 6/4 {es'16 d'16 c'4} r4 r8. a16~ a8. c'16 
      | \tuplet 3/2 {g4 a8} bes8 d'8~ d'16 gis8 b16 d'8 b8 
      | c'8 bes8 a16 c'16 es'16 g'16 \tuplet 3/2 {f'4 c'8~} c'4 
      | r1 
      \bar "||" r4 \tuplet 3/2 {d'4 b8} cis'8 e'8~ e'16 g'8 a'16 
      | b'8 g'8 \tuplet 3/2 {e'4 cis'8} ges'8 f'8 \tuplet 3/2 {e'4 es'8} 
      | \tuplet 3/2 {d'4 des'8~} \tuplet 5/4 {des'16 c'16 d'16 e'16 f'16} \tuplet 3/2 {b'4 gis'8} a'4 
      | d''4 r2. 
      | r2 r8 d'8 e'16 f'16 g'16 a'16 
      | \tuplet 6/4 {e''8 cis''16 d''16 e''16 g''16~} g''4.. e''16~ e''16 f''16 e''16 d''16 
      | bes'8 a'8 g'8 f'8~ f'16 e'16 g'16 bes'16 \tuplet 3/2 {d''4 g'8} 
      | a'8 c''8~ \tuplet 5/4 {c''16 bes'16 c''16 bes'16 a'16} \tuplet 3/2 {g'4 f'8~} f'16 e'8 d'16 
      \bar "||" c''4 r4 \tuplet 3/2 {a'4 f'8~} f'16 g'8 bes16~ 
      | bes4 r2. 
      | r4 r8 des''16 c''16~ c''16 bes'8 es'16 ges'8 bes'8 
      | aes'16 bes'16 aes'16 ges'16~ ges'16 dis'8 e'16 g'8 f'8~ \tuplet 6/4 {f'16 e'4 d'16} 
      | c'4.. bes16~ \tuplet 6/4 {bes16 a16 c'8 d'16 g'16} f'8 cis'8~ 
      | cis'16 d'16 f'16 a'16 c''8. bes'4. cis'8 b16~ 
      | b16 c'8 bes'16~ bes'16 g'8 gis'16~ gis'16 a'8 f'16~ f'16 d'8 des'16~ 
      | des'16 c'8 bes16 a8 g8~ \tuplet 6/4 {g8 fis8 gis16 c'16} d'8 c'8\bar  ".."
    }
    >>
>>    
}
