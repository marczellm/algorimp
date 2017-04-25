\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Thriving on a Riff"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | bes2 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:maj 
      | s2 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes1:maj | es2:7 aes2:7 | c2:min7 f2:7 | bes1:maj 
      | s2 g2:7|
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


      \tempo 4 = 227
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 6/4 {d'8 es'8 e'16 f'16~} f'8 d'8 es'8 f'4 d'8~ 
      | d'8 c'8 bes4 c'4..^\markup{\left-align \small vib} bes16~ 
      | \tuplet 3/2 {bes8 a8 bes8~} \tuplet 3/2 {bes8 d'8 f'8} a'8 aes'8 g'8 ges'8 
      | \tuplet 3/2 {f'4 e'8} es'8 a4. \tuplet 3/2 {d'4 c'8} 
      | bes8 a8~ a16 aes16 g16 bes'16~ bes'8 aes'8 g'8 f'8 
      | es'8 bes4. des'8 bes8 g8 a8 
      | \tuplet 3/2 {c'4 bes8} a8 bes8 \tuplet 3/2 {d'4 f'8~^\markup{\left-align \small vib}} f'4~ 
      | f'8 r8 r2. 
      \bar "||" r4 r8 es''16 f''16~ f''8 d''4 bes'8 
      | c''2~^\markup{\left-align \small vib} c''8 r8 r4 
      | r8 e'8 f'8 bes'16 d''16 f''8 e''8 es''8 b'8 
      | \tuplet 3/2 {d''4 des''8} c''8 b'8 b'8 ges'8~ ges'16 es'8 c'16~ 
      | \tuplet 3/2 {c'8 d'8 f'8} aes'8 d''8 bes'8 ges'8 r4 
      | r4 r8 a'8\glissando  \tuplet 3/2 {bes'4 b'8} bes'16 g'8 f'16~ 
      | f'8 es'8 bes'8 b'16 bes'16 ges'8 f'8 es'8 c'8 
      | d'8 f'4 r8 r2 
      \bar "||" r4 r8 b'8 \tuplet 3/2 {gis'8 e'8 c'8} b'4~ 
      | b'4 \tuplet 3/2 {a'8 aes'8 g'8} fis'4 c''8 e''8 
      | d''8 c''8 b'8 d''8 a'8 f'8 d'8 bes8~ 
      | bes8 e'8~ e'16 es'8 b16~ b16 d'8 f16~^\markup{\left-align \small vib} f4 
      | r4 r8 c'8 d'16 e'8 f'16~ f'8 g'16 a'16 
      | \tuplet 3/2 {c''4 b'8} bes'8 a'8 g'8 f'8 \tuplet 3/2 {e'8 g'8 bes'8} 
      | d''8 des''8 c''16 b'8 g'16~ g'16 es'8 c'16 bes'8 g'8 
      | \tuplet 3/2 {a'4 aes''8~^\markup{\left-align \small vib}} aes''4.. ges''16~ ges''8 e''16 f''16~ 
      \bar "||" f''8 d''4. r2 
      | r1 
      | r8 e'16 f'16~ f'8 g'8 bes'8 es''4 des''16 c''16 
      | bes'8 ges'8 es'8 c'8 \tuplet 3/2 {d'4 bes8} g8 a8 
      | \tuplet 3/2 {c'4 b8} bes8 a8 aes8 c'8 \tuplet 3/2 {bes'4 aes'8~} 
      | aes'16 g'16 f'8 es'4 bes'8 ges'8 es'8 c'8 
      | d'8 bes8 r2. 
      | r1 
      \bar "||" \mark \default r4 e''4 f''4 cis''4 
      | d''4 \tuplet 3/2 {a'4 bes'8~} bes'8 d''8 bes'8 f'8~ 
      | f'8 a'8 c''8 a'16 b'16~ b'8 gis'8 e'8 cis'16 bes'16~ 
      | \tuplet 3/2 {bes'8 b'8 bes'8} a'8 g'8 f'8 es'8 d'8 c'8 
      | bes8 aes8 \tuplet 3/2 {f8 aes8 c'8} bes'8 aes'8 g'8 f'8 
      | es'8 a8 bes4 \tuplet 3/2 {des'4 bes8~} bes16 g8 a16 
      | c'4 bes4.^\markup{\left-align \small vib} r8 r4 
      | r2. r8. bes16~ 
      \bar "||" bes4 a8 bes16 c'16~ c'8 a8 \tuplet 3/2 {bes8 c'8 d'8} 
      | f'8. es'16~ es'8\glissando  e'4 g'4 e'8 
      | f'4 r2. 
      | r16 c''16 a'16 b'16 aes'8 e'8 \tuplet 3/2 {des'8 a'8 g'8} f'16 es'16 d'16 c'16 
      | bes8 c'16 es'16 \tuplet 3/2 {ges'8 f'4~} f'8. es'16~ es'8 c'8 
      | \tuplet 3/2 {bes4 aes8} g4 bes'8 ges'8 es'8 c'8 
      | d'8 bes8 g8 a8 c'8. bes16 a8 bes8 
      | d'4.^\markup{\left-align \small vib} r8 r2 
      \bar "||" r1 
      | r2 d''8. des''16~ des''16 c''8 b'16 
      | a'8 g'8 fis'8 a'8 c''8 es''8 \tuplet 3/2 {d''4 c''8} 
      | b'4 f'8. fis'16\glissando  aes'4 g'8 f'8 
      | e'8 c'8 bes8 g8 \tuplet 3/2 {d'4 bes8} g8 a8 
      | \tuplet 3/2 {c'4 a8} bes16 c'16 d'16 e'16 a'8 g'8 e'8 c'8 
      | f'4 f'2^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" r4 f'8 g'16 aes'16 bes'8 c''8\glissando  \tuplet 3/2 {d''4 bes'8~} 
      | bes'8 c''8 bes'16 g'8 ges'16~ ges'16 c''8\glissando  cis''16\glissando  d''4 
      | r4 f'8 g'8 \tuplet 3/2 {aes'8 bes'8 cis''8\glissando } \tuplet 3/2 {d''4 c''8~^\markup{\left-align \small vib}} 
      | c''4 bes'8 g'8 a'8 f'4 r8 
      | r4 r8 c''8 b'16 bes'8 a'16 aes'8 c''8 
      | bes'8 g'4. bes'8 ges'4. 
      | \tuplet 3/2 {d'4 bes8} g8 a8 \tuplet 3/2 {c'4 bes8} a8 c'8 
      | d'16 es'8 f'16~ f'8 c'8\glissando  d'4~ \tuplet 3/2 {d'8 f'8 d'8} 
      \bar "||" \mark \default \tuplet 3/2 {c'4 bes8~^\markup{\left-align \small vib}} bes4. r8 r4\bar  ".."
    }
    >>
>>    
}
