\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "In 'n Out"
  composer = "Kenny Dorham"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key es \major
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
      
      | f4:13sus4.9 s2. | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9 | s1 | s1 | s1 
      | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 
      | es1:maj11+.9 | s1 | s1 | s1 | f1:13sus4.9 | s1 | s1 | ges1:13sus4.9 
      | f1:13sus4.9 | s1 | f2:7 es2:7 | d1:9 | es1:maj11+.9|
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


      \tempo 4 = 294
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 c''8~ 
      | c''2.. d''8~ 
      | d''8 g'4. c''2~ 
      | c''2. r4 
      | r8 f''4. bes'2~ 
      | bes'8 c''8~ c''4~ c''16 e''8\bendAfter #-4  d''16 r4 
      | r8 g'4 c''8~ c''2~ 
      | c''2. r4 
      | r16 ges'8 aes'16~ aes'16 bes'8 ges'16 aes'8 r8 r4 
      | r8 f'8 \tuplet 3/2 {g'8 a'8 f'8~} f'8 g'4 e'8~ 
      | e'4 fis'8 g'8 e'8 ges'8 r4 
      | r16 es'8 f'16~ \tuplet 3/2 {f'8 g'8 es'8~} es'8 f'8 r4 
      \bar "||" \mark \default r2 r8 f''8~ f''8. g''16~ 
      | g''1~ 
      | g''8 aes''4. f''4. g''8~ 
      | g''4. es''4. c''4 
      | d''4 d''4 bes'4.. c''16~ 
      | c''2 g'4. bes'8~ 
      | bes'8 f'4. g'4. es'8~ 
      | es'8 f'2.. 
      | bes'16 aes'8 fis'16~ fis'16 g'16 aes'16 bes'16~ bes'8. ges'16 aes'8 bes'8~ 
      | bes'8 f'4 g'8 a'2~ 
      | a'4 \tuplet 3/2 {aes'8 g'8 e'8~} e'2~ 
      | \tuplet 3/2 {e'8 d'8 es'8~} es'4. f'8 r4 
      \bar "||" \mark \default r1 
      | r2 cis''8 d''8 f''8 e''8~ 
      | e''16 es''16 des''16 b'16 d''4 \tuplet 3/2 {b'8 c''8 des''8} bes'16 a'8 des''16 
      | c''8 b'8 a'8 fis'8 e'8 f'8 \tuplet 3/2 {e'8 d'4} 
      | f'8 g'16 f'16~ f'8 aes'16 d''16 \tuplet 3/2 {c''8 aes'8 ges'8~} ges'16 bes'8 a'16~ 
      | a'16 aes'8 g'16~ g'8 e'8 \tuplet 3/2 {g'4 e'8} des'8 b8 
      | \tuplet 3/2 {cis'4 d'8} es'8 g'8 f'8 g'8 aes'8 a'8 
      | bes'8 aes'8 a'8 g'8 fis'8 a'8 fis'16 g'16 a'8 
      | g'8 a'8 bes'8 c''8 d''8 des''8 c''8 b'8 
      | bes'8 aes'8 g'8 f'8 \tuplet 3/2 {e'4 d'8~} d'8 des'8~ 
      | des'8 g'8~ g'16 f'8 g'16~ g'16 f'8 c'16 r4 
      | r2. r8. f''16~ 
      \bar "||" \mark \default f''16 ges''8 e''16 f''8 ges''8 f''16 e''8 d''16 es''8 e''8 
      | d''16 es''8 d''16~ d''8 r8 r4 r8 f''8~ 
      | \tuplet 3/2 {f''8 ges''8 e''8} f''8 es''8 e''8 d''4 es''8 
      | r2. r8. f''16 
      | ges''8 e''8 f''8 ges''8 e''8 d''8 es''8 cis''8 
      | \tuplet 3/2 {d''4 des''8~} des''8 b'8 c''8 bes'8 b'8 aes'8 
      | bes'8 c''8 d''8 f''8 r2 
      | e''4.\bendAfter #-4  c''4 d''8~ d''8. bes'16~ 
      | bes'4. ges'4 bes'4. 
      | a'8 bes'8 a'8 f'4 a'8~ a'8. aes'16~ 
      | aes'4. e'4 aes'4.~ 
      | aes'2.. c''8 
      \bar "||" \mark \default d''4 a'4 c''2~ 
      | c''2 d''4 f''8 e''8 
      | es''8 b'8 d''8 des''8 \tuplet 3/2 {b'8 c''8 bes'8} \tuplet 3/2 {a'4 c''8} 
      | b'8 r8 r4 b'8 bes'16 a'16 fis'8 e'8 
      | \tuplet 3/2 {f'4 g'8} aes'8 c''8~ \tuplet 3/2 {c''8 ges'8 f'8} bes'8 a'8 
      | aes'8 r8 r2. 
      | r4 r8 des''8~ des''16 es''8 bes'16~ bes'4~ 
      | bes'2~ bes'8 cis''4 aes'8~ 
      | aes'4.. bes'16~ bes'4 es'4~ 
      | es'4 f'4. es'4 c'8~ 
      | c'8 c'2..~ 
      | c'8 r8 r2 r8 es''8~ 
      \bar "||" \mark \default es''4 f''2 g''4~ 
      | g''4. g''4 es''4 f''8~ 
      | f''8 f''2..~ 
      | f''2. r4 
      | r4 r8 f''4 g''8\glissando  bes''4~ 
      | bes''1~ 
      | bes''8 g''4 f''8 f''2~ 
      | f''1~ 
      | f''4~ f''16 aes''8 ges''16~ ges''8. f''16~ f''8 es''8~ 
      | es''8. des''16~ des''2 es''4~ 
      | es''8 c''4. bes'4 bes'4~ 
      | bes'4. bes'8 r2 
      \bar "||" \mark \default r4 r8 es''8 \tuplet 3/2 {d''8 e''8 fis''8} g''8 aes''8 
      | e''8 r8 r2 r8 es''16 d''16~ 
      | d''8 es''8 g''8 f''8 e''8 es''8 d''8 r8 
      | r4 b'8 d''8~ \tuplet 3/2 {d''8 b'8 c''8} d''8 es''8~ 
      | \tuplet 3/2 {es''8 f''8 ges''8~} ges''16 e''8 f''16~ f''8 d''8 es''8 e''8 
      | d''8 c''8 bes'8 a'8 aes'8 g'8 f'8 es'8~ 
      | es'8 c'8 \tuplet 3/2 {bes4 g8~} g8 f8 g8 bes8 
      | c'16 f'8. d'8 es'16 f'16~ f'8 g'8 \tuplet 3/2 {a'8 d''8 b'8} 
      | r2 r8 ges'4.~ 
      | ges'4 aes'8 bes'4 f'4 f'8~ 
      | f'8 f'8 g'8 a'8 e'4 e'4~ 
      | e'1~ 
      \bar "||" \mark \default e'2~ e'16 d''8 es''16 ges''8 f''8 
      | ges''8 e''4. e''8 ges''8 e''8 f''8 
      | ges''8 e''8 r4 f''8 ges''16 e''16~ e''16 f''8 ges''16 
      | e''8 f''8~ f''16 es''8 cis''16~ cis''16 d''8 c''16 \tuplet 3/2 {cis''4 b'8} 
      | c''8 bes'8~ bes'16 b'8 a'16~ a'16 bes'8 es''16~ es''16 d''8 c''16~ 
      | c''16 bes'8 a'16~ a'16 aes'8 e'16~ e'16 g'8 e'16~ e'8 fis'8 
      | g'8 aes'8 bes'8 b'8 des''8 r8 r4 
      | r1 
      | \tuplet 3/2 {r8 cis''8 d''8~} d''4 des''8 c''8 des''8 c''8 
      | des''8 c''16 des''16 c''8 des''8 c''16 des''8 c''16 des''8 c''16 des''16 
      | c''8 des''8 \tuplet 3/2 {c''8 des''4} \tuplet 3/2 {b'8 c''4~} c''4~ 
      | c''1~ 
      \bar "||" \mark \default c''2 c''4. g'8~ 
      | g'8 bes'2..~ 
      | bes'4 d''4. es''16 c''16~ c''8. g'16~ 
      | g'8 bes'4 bes'8~ bes'2~ 
      | bes'8 bes'8 r2. 
      | r8 des''4 es''8 bes'4~ \tuplet 3/2 {bes'8 b'8 des''8~} 
      | des''8 aes'4 bes'8 f'4 f'4~ 
      | f'8 g'2..~ 
      | g'2~ g'8 f'8 fis'8. g'16~ 
      | g'8 a'8 ges'8 aes'8 r2 
      | r4 \tuplet 3/2 {r8 f'8 g'8} \tuplet 3/2 {a'4 f'8~} f'16 g'8 f'16 
      | d'4 des'4 f'8 r8 r8 f'8 
      \bar "||" \mark \default r2. d''4 
      | f''8 r8 r4 bes'4~ \tuplet 3/2 {bes'8 es''8 d''8} 
      | es''4 aes'4 d''4. g'8~ 
      | g'8 c''4 g'4 bes'8 g'8 a'8 
      | r4 r8 des''8 b'8 aes'8 e'8 f'8 
      | r4 r16 c''8 a'16~ a'16 bes'8 c''16~ c''8 cis''8 
      | d''16 es''8 e''16~ \tuplet 3/2 {e''8 f''8 d''8~} d''16 es''8 des''16~ des''8. f''16 
      | cis''4 b'8 c''8 r2 
      | r4 r8 d''8~ d''2~ 
      | d''1~ 
      | d''2~ d''8 cis''16 d''16 \tuplet 3/2 {cis''8 d''8 cis''8~} 
      | cis''8 d''16 cis''16~ \tuplet 3/2 {cis''8 d''8 cis''8} \tuplet 3/2 {d''8 des''8 c''8} des''16 c''16 des''16 c''16~ 
      \bar "||" \mark \default c''16 des''16 c''16 des''16 c''8. d''16~ d''4 g'4 
      | c''1 
      | d''4. g'4. c''4 
      | bes'4 bes'2. 
      | aes'8 a'8 g'16 f'8 es'16~ es'8 f'8~ \tuplet 3/2 {f'8 aes'8 a'8} 
      | \tuplet 3/2 {aes'8 g'4} bes'8 a'8 aes'16 g'8 f'16~ f'8 es'8 
      | \tuplet 3/2 {d'8 f'4} des'8 c'8 r2 
      | r1 
      | r1 
      | r8 d''8~ d''4. es''4.~ 
      | es''8 e''8~ e''4. f''4.~^\markup{\left-align \small vib} 
      | f''1~ 
      \bar "||" \mark \default f''4 e''8 f''8~ f''16 es''16 d''16 es''16~^\markup{\left-align \small vib} es''4~ 
      | es''1~ 
      | es''2~ es''8. b'16~ b'16 d''8 des''16 
      | b'8 c''8 bes'8 a'16 g'16~ g'8 f'8 \tuplet 3/2 {e'8 es'4} 
      | \tuplet 3/2 {f'8 g'8 a'8~} a'16 bes'8 aes'16~ aes'16 bes'8 a'16~ a'16 aes'8 g'16~ 
      | g'8 f'8 es'8 des'4 c'8 bes8 aes16 bes16 
      | c'4 g'4 e'8 f'8 g'8 aes'8 
      | a'16 d''8. b'8 c''8 bes'8 g'16 aes'16 \tuplet 3/2 {a'4 bes'8~} 
      | bes'16 a'8 g'16~ g'16 ges'8 es'16~ es'8 e'8 ges'16 a'8 fis'16 
      | g'8 a'8~ \tuplet 3/2 {a'8 bes'8 c''8} \tuplet 3/2 {d''8 c''8 d''8} r4 
      | r2 r8 des''8~ des''16 c''8 bes'16~ 
      | bes'16 a'8 g'16 f'4 des'8 c'8 bes8 des'8~ 
      \bar "||" des'4 f'8 g'8 r2\bar  ".."
    }
    >>
>>    
}
