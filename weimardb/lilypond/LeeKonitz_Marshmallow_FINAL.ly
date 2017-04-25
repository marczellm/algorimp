\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Marshmallow"
  composer = "Lee Konitz"
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
      
      | bes1:maj | bes1:maj | f1:min7 | bes1:7 | es1:maj | s1 | c1:min7 | f1:7 
      | bes1:maj | s1 | c1:7 | s1 | c1:min7 | d2:min5-7 g2:7 | c1:min7 | f1:775+ 
      | bes1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 | es1:min7 | aes1:7 
      | bes1:maj | s1 | c1:7 | s1 | c1:min7 | f1:7 | bes1:maj | s1 
      | cis1:min7 | fis1:7 | b1:maj | s1 | b1:min7 | e1:7 | a1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | g1:min7 | c1:7 | c1:min7 | f1:775+ 
      | bes1:maj | s1 | f1:min7 | bes1:7 | es1:maj | s1 | es1:min7 | aes1:7 
      | bes1:maj | s1 | c1:7 | s1 | c1:min7 | f1:7 | bes1:maj | s1 
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
     
      \bar "||" \mark \default r8. f'16 a'8 bes'8 \tuplet 3/2 {c''4 bes'8} a'8 bes'8 
      | \tuplet 3/2 {d''4 f'8} g'8 a'8 bes'8 g'8 es'8 c'8 
      | a'8 bes'8 c''8 b'8 bes'8 a'8 aes'8 g'8 
      | f'8 es'8 d'8 f'8 bes'8 a'8 aes'8 g'8 
      | f'8 es'8 \tuplet 3/2 {d'8 es'8 f'8~} f'8 d'8 es'8 fis'8~ 
      | fis'8 g'8 gis'16 a'8 bes'16~ bes'8 g'8 es'8 c'16 bes'16~ 
      | bes'8 ges'8 bes'4 bes'2^\markup{\left-align \small vib} 
      | r1 
      | r8 fis'8 g'8 d''8 \tuplet 3/2 {f''4 f'8} \tuplet 3/2 {g'8 bes'8 c''8} 
      | f''8 e''8 es''8 d''8 c''8 bes'8 a'8 bes'8 
      | \tuplet 3/2 {c''4 fis'8} \tuplet 3/2 {g'8 bes'8 d''8} ges''8. e''16~ e''8. ges''16~ 
      | ges''8 e''8 r2. 
      | r1 
      | g''8 ges''8~ ges''16 f''8 e''16~ e''16 es''8 a'16~ a'8 fis'8~ 
      | fis'8 r8 r4 r8 d''4 des''8 
      | c''8 b'8 bes'8 a'8 g'8 f'8 e'8 es'8 
      \bar "||" d'8 c'8 bes4 \tuplet 3/2 {c'4 a8} bes8 c'8 
      | d'8 es'8 f'8 g'8 a'8 bes'8 c''8 bes'8~ 
      | \tuplet 3/2 {bes'8 a'8 bes'8} e''4 ges''4 r4 
      | r2 ges'8 aes'8 bes'8 c''8 
      | d''4 es''4 e''4 r4 
      | r1 
      | r4 r8 f''4 ges''4 f''8 
      | r4 r8 es''8~ es''16 bes'8 ges'16~ \tuplet 3/2 {ges'8 f'8 es'8~} 
      | es'8\glissando  f'4.^\markup{\left-align \small vib} r2 
      | r8 f'8 \tuplet 3/2 {g'8 a'4} c''8 bes'8 a'8 bes'8 
      | d''8 f'8 g'8 a'8 bes'16 g'8 es'16~ \tuplet 3/2 {es'8 c'8 a'8~} 
      | \tuplet 3/2 {a'8 bes'8 c''8~} c''8 b'8 bes'8 ges'8 e'8 c'8 
      | a'4 a'8 r8 r2 
      | r8. g'16~ \tuplet 3/2 {g'8 a'8 bes'8~} bes'8 g'8 a'8 bes'8 
      | \tuplet 3/2 {c''8 bes'8 a'8~} \tuplet 3/2 {a'8 bes'8 d''8~} d''8 f'4. 
      | f'8 r8 r2 r8 des''8~ 
      \bar "||" des''16 gis'8 e'16~ e'8 c'8 cis'8 e'8 fis'8 g'16 bes'16 
      | es''4 des''8 c''8 \tuplet 3/2 {bes'8 a'8 g'8} fis'8 e'8 
      | es'8. fis'16~ fis'16 b'8 fis'16~ fis'16 gis'16 bes'8 cis''8 b'8 
      | \tuplet 3/2 {bes'8 gis'4} fis'8 e'8 es'8 cis'8 b8 bes8 
      | a4 d'8 fis'8 \tuplet 3/2 {a'4 fis'8~} fis'4 
      | \tuplet 3/2 {gis'4 fis'8~} fis'4 e'4 fis'4~ 
      | fis'8 e'4. gis'4~ \tuplet 3/2 {gis'8 e'8 fis'8~^\markup{\left-align \small vib}} 
      | fis'4 r2. 
      | r2. b'8 c''8 
      | \tuplet 3/2 {e''4 g'8} a'8 b'8 d''8 c''8 b'8 a'8 
      | g'8 fis'8 a'8 fis'8 g'8 a'8 b'8 c''8 
      | d''8 des''8 c''8 b'8 a'8 g'8 fis'8 g'8 
      | a'8 fis'8 g'8 bes'16 d''16 f''8 e''8 es''8 des''8 
      | c''8 bes'8 a'8 g'8 f'8 e'8 es'8 f'8 
      | \tuplet 3/2 {ges'4 a'8} c''8 f''4. c''8 f''8~ 
      | f''4 r2. 
      \bar "||" r2 d''8 es''8 d''8 c''8 
      | \tuplet 3/2 {bes'8 a'4} c''8 a'8 \tuplet 3/2 {bes'8 c''8 d''8~} d''8 es''8 
      | \tuplet 3/2 {f''4 e''8} es''8 d''8 c''8 bes'8 a'8 bes'8 
      | c''8 f'8 g'8 aes'8 bes'8 a'8 aes'8 g'8 
      | f'8 es'8 d'4 f'4 f'8 r8 
      | r1 
      | f''8\glissando  e''8 es''4 ges'8 f'4 es'8 
      | f'4.^\markup{\left-align \small vib} es'8 f'8 es'8 bes8 c'8 
      | d'4. d'8 r2 
      | r4 f'8 g'8 a'8 bes'8 c''8 bes'8 
      | a'8 bes'8 e'8 fis'8 g'8 a'8 des''8 aes'8 
      | e'8 c'8 bes'4 a'8 g'8 f'8 es'8 
      | d'4. d'8 r2 
      | r8. d'16~ \tuplet 3/2 {d'8 c'8 d'8~} d'8 c'8 bes4 
      | \tuplet 3/2 {c'4 a8} bes8 c'8 d'8 es'8 f'8 e'8 
      | es'8 d'8 c'8 bes8 a8 bes8 \tuplet 3/2 {c'4 d'8~} 
      \bar "||" \mark \default d'8 bes4 r8 r2\bar  ".."
    }
    >>
>>    
}
