\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Ko-Ko"
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
      
      | cis1:min7 | fis1:7 | b1:maj | s1 | b1:min7 | e1:7 | a1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | g1:min7 | c1:7 | c1:min7 | f1:7 
      | bes1:6 | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:6 | s1 | c1:7 | s1 | c1:min7 | f1:7 | bes1:6 | s1 
      | s1 | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:6 | s1 | c1:7 | s1 | c1:min7 | g1:7 | c1:min7 | f1:7 
      | bes1:6 | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:6 | s1 | c1:7 | s1 | c1:min7 | f1:7 | bes1:6 | s1 
      | cis1:min7 | fis1:7 | b1:maj | s1 | b1:min7 | e1:7 | a1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | g1:min7 | c1:7 | c1:min7 | f1:7 
      | bes1:6 | s1 | f1:min7 | bes1:7 | es1:maj | s1 | aes1:7 | s1 
      | bes1:6 | s1 | c1:7 | s1 | c1:min7 | f1:7 | bes1:6 | s1 
      | s1|
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


      \tempo 4 = 299
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 e'8~ \tuplet 3/2 {e'8 es'8 e'8~} e'8. f'16 \tuplet 3/2 {fis'8 gis'8 bes'8~} 
      | bes'16 d''8 es''16\glissando  fis''8. d''16~ d''8\glissando  fis''4 cis''8~ 
      | cis''4 r2. 
      | r1 
      | r4 d'8 cis'8 d'8. e'16 fis'8 gis'8~ 
      | gis'8 c''8 e''4 c''8. e''16~ e''8 b'8~ 
      | b'4. e''8~ e''16 d''16 cis''8 e'8 fis'8 
      | gis'8 b'8 gis'8 a'8 b'16 cis''8 e''16~ e''8 r8 
      | r2 a'8. c''16 e''8 g''8 
      | fis''8 e''8 d''8 des''8 c''4 r4 
      | r4 r8 d''8 c''8 g'8 e'4 
      | es'8 d'8 \tuplet 3/2 {b8 c'8 gis'8~} gis'16 a'8 fis'16~ fis'16 g'16 gis'16 d''16 
      | f''4 es''8 e''8~ \tuplet 3/2 {e''8 c''8 cis''8} d''8 c''8 
      | bes'8 a'8 g'8 f'8 e'8 g'8 \tuplet 3/2 {bes'8 d''4} 
      | c''8. c''16~ c''8 d''8 es''16 d''8 des''16 c''8 b'8 
      | aes'8 ges'8 es'8 c'8 \tuplet 3/2 {d'4 bes8} g8 a8~ 
      \bar "||" a16 c'8 bes16 a8 bes8 \tuplet 3/2 {d'4 f'8~^\markup{\left-align \small vib}} f'4~ 
      | f'4. r8 r2 
      | r2 gis'8 a'16 aes'16~ aes'16 g'8 ges'16~ 
      | ges'8 f'8 \tuplet 3/2 {es'8\glissando  d'8 c'8} bes8 a8 aes8 c'8 
      | g8 a8~ a16 c'16 d'16 f'16~ f'8 es'8 g'8 bes'16 d''16~ 
      | d''8 c''16 d''16~ d''8 c''4 r8 r4 
      | r4 \tuplet 3/2 {c''8 des''8 c''8~} c''16 bes'16 ges'8 \tuplet 3/2 {es'4 ges'8} 
      | bes'8 des''8 c''8 bes'8 \tuplet 3/2 {a'8 g'4} fis'8 g'8 
      | bes'8 g'8~ g'16 es'8 c'16~ c'16 d'8 bes16~ bes8 g8 
      | a16 c'8 bes16~ bes16 a8 bes16 d'8 f'8 g'8 a'8 
      | c''8. b'16 bes'8 a'8 g'8 f'8 e'8 c'8 
      | d'2 r2 
      | r2 es'8 f'4.~^\markup{\left-align \small vib} 
      | f'1~ 
      | f'2~ f'8 r8 r4 
      | r1 
      \bar "||" \mark \default \tuplet 3/2 {f'4 g'8} f'4 bes'8 c''8 \tuplet 3/2 {bes'8 f'8 bes'8} 
      | \tuplet 3/2 {d''4 c''8} bes'8 a'8 c''8 bes'8 a'8 g'8 
      | f'8 es'8 d'8 c'8 bes8.\glissando  a16~ a16 aes16 c'8 
      | bes'8 ges'8 d'8 c'8 c'8. aes16~ aes8 e8 
      | bes8 g8 bes8 c'8 f'8 es'8 \tuplet 3/2 {d'4 g'8~} 
      | g'8 bes'8 \tuplet 3/2 {c''8 d''8 f''8} d''4 r4 
      | r2 f'4 ges'16 a'16 des''8 
      | f''16 e''8 es''16~ es''8 d''8 des''8 c''8 bes'8 ges'8 
      | es'8 c'16 a'16~ a'8 g'8 f'8 es'8 d'8 bes16 c'16~ 
      | c'8 bes8 \tuplet 3/2 {a4 bes8} d'8 f'8 g'8 a'8 
      | c''8 b'8 bes'8 a'8 g'8 f'8 e'8 c'8 
      | d'2.^\markup{\left-align \small vib} r4 
      | r2 \tuplet 3/2 {es4 g8} c'8 es'8~ 
      | \tuplet 3/2 {es'8 d'8 c'8} b8 d'8 \tuplet 3/2 {f'4 aes'8~} \tuplet 3/2 {aes'8 g'8 f'8~} 
      | f'16 es'16 g'8 bes'8 d''8 f''8 es''4 r8 
      | r1 
      \bar "||" d''8 es''16 e''16 f''8 e''8 d''8 bes'8 g'8. c''16~ 
      | \tuplet 3/2 {c''8 a'8 c''8~} c''8 des''8 r4 \tuplet 3/2 {r8 cis'8 d'8} 
      | f'8 a'8 \tuplet 3/2 {c''4 b'8} bes'16 a'8 aes'16~ aes'8 c'8 
      | cis'8 d'8 g'8 ges'8 f'8 d'4\glissando  des'8 
      | bes8.\glissando  a16~ a16 aes8 c'16~ c'8 g8 bes4 
      | d'8 f'4 g'8~ g'16 bes'16 d''8 c''8 bes'8 
      | g'8 es'8 c'8 d'8 f'8. f'16~ f'8 es'8~^\markup{\left-align \small vib} 
      | es'2 r2 
      | r2 d'8 es'8 f'8 es'8~ 
      | es'16 d'8 bes16 g8 a8 c'8 a8 c'8 e'16 a'16~ 
      | a'8 g'8 e'8 c'8 d'2^\markup{\left-align \small vib} 
      | r1 
      | r4 r8 g'8 gis'8\glissando  a'16 c''16~ c''8 b'16 bes'16~ 
      | bes'8 a'8 aes'8 g'16 ges'16~ ges'8 f'8 e'8 bes8~ 
      | \tuplet 3/2 {bes8 b8 des'8~} \tuplet 3/2 {des'8 c'8 bes8} a8 ges'8~ \tuplet 3/2 {ges'8 es'8 e'8} 
      | f'8. d'16~ d'8 r8 r2 
      \bar "||" r4 b'8 gis'8 e'8 cis'8 bes'8 gis'8 
      | b'8 gis'8 e'8 cis'16 bes'16~ bes'8 fis'8~ fis'16 cis'16 d'8 
      | bes'8 fis'8 es'4 gis'8 fis'8 bes'8 fis'8~ 
      | fis'16 es'16 b16 gis'16~ gis'4. r8 r4 
      | r8 a'4 fis'8 \tuplet 3/2 {d'8 b8 gis'8~} gis'8 fis'8 
      | e'2~ e'8 es'8 d'8 e'8 
      | fis'8 gis'8 des''8 c''8 b'8 bes'8 a'8 fis'8 
      | d'8 b8 cis'8 e'4 r8 r4 
      | r4 r8. fis''16~ fis''8\glissando  e''8 c''16 a'8. 
      | \tuplet 3/2 {fis''4 es''8} \tuplet 3/2 {cis''8 g'4} e''8 cis''8 \tuplet 3/2 {a'8 fis'4} 
      | d''4 r4 r8 fis'8 g'8 c''8 
      | b'8 g'8 e'8 es'8 d'8 c'8 b16 fis'8 a'16~ 
      | a'8 g'4 r8 r2 
      | r8 fis'8 g'8 d''8 f''8 d''8 e''16 es''16 e''8~ 
      | e''8 cis''8\glissando  d''8 c''8 bes'8 a'8 g'8 f'8~ 
      | \tuplet 3/2 {f'8 es'8 g'8} bes'8 d''8 c''8 bes'8 a'8 aes'8 
      \bar "||" fis'8 g'8~ g'16 bes'8 g'16~ g'16 es'8 c'16 \tuplet 3/2 {f'4 es'8\glissando } 
      | d'4 \tuplet 3/2 {bes8 g8 a8} c'8. b16 bes8 a8~ 
      | a16 aes8 bes16 c'8 d'8 bes'8. fis'16~ fis'8 r8 
      | r1 
      | r4 r8. g'16~ g'8 bes'8 d''8 f''8 
      | d''8 c''8 \tuplet 3/2 {bes'8 g'4} d''8. f''16~^\markup{\left-align \small vib} f''4~ 
      | f''8 r8 r4 r8 f'8~ f'16 g'16 bes'16 des''16 
      | \tuplet 3/2 {f''4 e''8~} e''16 es''16 d''8 des''8 c''8 bes'8 ges'8 
      | \tuplet 3/2 {des'8 c'8 a'8~} a'8 g'8 f'8 d''8~ \tuplet 3/2 {d''8 d'8 bes8} 
      | c'8 bes8 a4 d'8 f'8 g'8 a'8 
      | c''8 b'8 bes'8 a'8 g'8 f'8 e'8 c'8 
      | d'2~^\markup{\left-align \small vib} d'8 r8 r4 
      | r2 f'8 g'8 bes'8 c''8\glissando  
      | des''8 bes'8 c''2~ c''8 a'8 
      | bes'8 f'8 \tuplet 3/2 {d'4 a'8~} a'8 aes'8 g'8 ges'8 
      | f'8 e'8 es'8 bes8 \tuplet 3/2 {g4 cis'8\glissando } d'8 c'8 
      \bar "||" \mark \default bes4 r2.\bar  ".."
    }
    >>
>>    
}
