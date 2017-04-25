\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Strollin' with Pam"
  composer = "Phil Woods"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | f2:min7 bes2:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | es2:7 c2:7 | f2:min7 bes2:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | es2:7 c2:7 | f2:min7 bes2:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | es2:7 c2:7 | f2:min7 bes2:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | es2:7 c2:7 | f2:min7 bes2:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | d2:min7 g2 
      | c1:min7 | f1:7 | es2:7 c2:7 | f2:min7 bes2:7 | es1:7|
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


      \tempo 4 = 139
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r8 es''4 des''8 bes'8 aes'8 ges'4 
      \bar "||" \mark \default d'16 es'8. es'4 es'4 ges'8 es'8~ 
      | es'8 b'8 \tuplet 3/2 {c''4 bes'8} g'8 es'8 \tuplet 3/2 {c'4 bes8} 
      | es'4 es'8 r8 r8 es'8~ \tuplet 3/2 {es'8 g'8 c''8~} 
      | c''16 c''16 des''16 c''16~ \tuplet 6/4 {c''16 bes'16 c''16 bes'16 g'8} es'8 c'8 es'4~ 
      | es'4 es'8 r8 \tuplet 6/4 {r4 r16 aes16~} aes8 bes8 
      | \tuplet 3/2 {c'4 es'8} \tuplet 3/2 {f'4 ges'8~} ges'4 a4~ 
      | a4 bes8 r8 r8. bes16~ bes16 c'16 es'16 g'16~ 
      | g'16 aes'8 g'16~ \tuplet 3/2 {g'8 aes'8 g'8} aes'8 g'8~ \tuplet 3/2 {g'8 aes'8 g'8} 
      | aes'8 g'8~ \tuplet 3/2 {g'8 aes'8 g'8} \tuplet 3/2 {aes'4 bes'8~} bes'8\bendAfter #-4  r8 
      | r4 \tuplet 3/2 {bes8 c'8 es'8\glissando } fis'16 g'8. fis'16 g'8 es'16~^\markup{\left-align \small vib} 
      | es'4 des'8 c'8 bes4 bes8 a8 
      | aes8 bes8 c'8 es'8 fis'8 g'16 bes'16 \tuplet 6/4 {c''4~ c''16\glissando  es''16~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default es''2~ \tuplet 3/2 {es''8 c''8 des''8} bes'8 r8 
      | r8. es''16~ \tuplet 3/2 {es''8 des''8 bes'8} aes'16. ges'16. es'32 des'32~ \tuplet 3/2 {des'8 bes8 aes8} 
      | \tuplet 3/2 {fis8\glissando  g4~} g8 es'4.^\markup{\left-align \small vib} r4 
      | r8. bes16~ bes8 aes'8~ \tuplet 5/4 {aes'16 g'16 aes'16 g'16 f'16} es'8 des'8 
      | c'8 aes8~ aes16 g8 f16~ f16 bes8 g16 \tuplet 3/2 {aes4\glissando  a8~^\markup{\left-align \small vib}} 
      | a4. b8 c'8 ges'8 \tuplet 3/2 {d'4 bes8} 
      | \tuplet 3/2 {f'4 d'8} es'8 aes'8\glissando  fis'8 g'8 c''8 a'8 
      | \tuplet 3/2 {bes'4 d'8} es'8 aes'8 g'16 aes'16 g'16 e'16 \tuplet 3/2 {cis'4 bes8} 
      | g'8. bes16~^\markup{\left-align \small vib} bes2 bes8. c'16 
      | es'8 ges'8\glissando  \tuplet 3/2 {f'4 c'8} \tuplet 6/4 {ges'8.\glissando  f'8 c'16~} c'8 ges'8\glissando  
      | \tuplet 3/2 {f'4 c'8} \tuplet 3/2 {ges'4\glissando  f'8} \tuplet 3/2 {c'4 ges'8\glissando } f'8 c'8 
      | ges'16\glissando  f'8 c'16 r4 r8 b'8\glissando  c''4~ 
      \bar "||" \mark \default c''4 c''4 \tuplet 3/2 {c''4 bes'8} \tuplet 6/4 {g'4 es'16 bes'16~} 
      | bes'8. bes'16~ bes'8 bes'4 aes'8 es'4 
      | fis'8 g'8\glissando  aes'8 a'8 bes'8 b'8 c''16 des''16 c''16 b'16 
      | bes'8 g'8 es'8 des'8\glissando  bes'16 b'16 g'16 e'16 \tuplet 3/2 {des'4 aes8} 
      | c'8. bes'16~ bes'8 r8 r4 r8 es'8 
      | ges'8 aes'8 \tuplet 3/2 {ges'4 es'8} ges'4 aes'8 r8 
      | r4 r8 bes8 des'8 es'8 des'8. bes16\glissando  
      | \tuplet 3/2 {c'8 des'4} es'8 cis'8~ cis'16 d'16 cis'16 bes16 a4 
      | fis16 aes8.~^\markup{\left-align \small vib} aes8 g8 \tuplet 3/2 {aes8 c'8 es'8} \tuplet 3/2 {g'4 e'8} 
      | f'8 g'8 aes'8 a'8 bes'8 ges'8 \tuplet 3/2 {d'4 des'8} 
      | c'8 d'8 \tuplet 3/2 {es'4 f'8} \tuplet 3/2 {g'4 bes8~^\markup{\left-align \small vib}} bes4 
      | r4 r8 bes'8 cis''4 d''8.\glissando  es''16~^\markup{\left-align \small vib} 
      \bar "||" \mark \default es''2 \tuplet 3/2 {c''8\glissando  des''8 bes'8} r4 
      | r8 es''4 des''8 bes'8 aes'8 ges'8. f'16 
      | ges'8\bendAfter #+4  f'8 \tuplet 3/2 {c'4 f'8~} f'4 r4 
      | r16 a16 bes16 c'16 des'16 es'16 f'16 aes'16 g'16 ges'16 f'16 des'16~ \tuplet 6/4 {des'16 bes16 g16 bes8 g16} 
      | \tuplet 3/2 {aes8 bes8 c'8} c'4~ c'16 g16 aes16 a16 bes16 c'16 d'16 es'16 
      | r4 r16 aes16 a16 b16 c'16 d'16 es'16 f'16 ges'4~ 
      | ges'16 a16 bes16 b16 c'16 cis'16 d'16 es'16 e'16 f'16 fis'16 g'16 aes'4~ 
      | aes'16 a16 bes16 b16 c'16 cis'16 d'16 es'16 e'16 f'16 fis'16 g'16 aes'16 a'16 bes'16 b'16 
      | c''16 b'16 bes'16 a'16 aes'16 c'16 es'16\glissando  g'16~ \tuplet 6/4 {g'16 aes'16 g'16 f'8 e'16} es'16 c'16 aes16 f16 
      | bes16 g16 aes16 bes16~ bes16 es'16 g'16 e'16 \tuplet 6/4 {f'16 g'16 aes'8 a'16 bes'16~} bes'16 a'16 aes'16 f'16 
      | fis'16 g'16 aes'16 a'16 bes'16 c''16 es''16\glissando  c''32 des''32~ \tuplet 6/4 {des''16 es''16 des''16 bes'16\glissando  g'16 aes'16~} aes'32 bes'16 aes'32 ges'16\glissando  d'32 es'32 
      | \tuplet 5/4 {e'16 es'16 des'16\glissando  a16 bes16} c'16 bes16 aes16 ges16 r4 r8 f'8 
      \bar "||" \mark \default f'16 ges'8 ges'16 f'16\glissando  ges'8 ges'16 ges'8\glissando  f'8 es'8 r8 
      | r8. ges'16~ ges'8 aes'8~ aes'16 ges'16 aes'16 ges'16 es'4 
      | f'16 ges'8 ges'16 ges'8 ges'8 \tuplet 6/4 {ges'8.\glissando  f'8 es'16~} es'8 r8 
      | r8 es'8~ \tuplet 3/2 {es'8 g'8 c''8} es''8 des''8 \tuplet 3/2 {a'8\glissando  bes'8 aes'8} 
      | ges'4 es'8 ges'8 f'8. es'16 ges'4 
      | es'8 ges'8\glissando  \tuplet 3/2 {f'4 es'8} ges'4 es'8 ges'8\glissando  
      | \tuplet 3/2 {f'4 es'8} g'4 es'8 g'8~ \tuplet 6/4 {g'16\glissando  ges'4 es'16} 
      | g'4 \tuplet 3/2 {es'4 g'8\glissando } fis'8 es'8 fis'4 
      | \tuplet 3/2 {es'4 ges'8\glissando } f'8. c'16 g'8. bes16~^\markup{\left-align \small vib} bes4 
      | r4 r8 bes'4 a'8 \tuplet 3/2 {aes'4 es'8} 
      | fis'8 g'8 aes'8 a'8 bes'8 aes'8 \tuplet 3/2 {e'4 c'8} 
      | g'8. bes16~ bes2 b'8 c''8 
      \bar "||" \mark \default c''8 c''8 c''8 c''8 c''4. b'8~ 
      | b'8 c''8 \tuplet 3/2 {b'8 c''8 b'8} c''8 aes'8 ges'4 
      | fis'8\glissando  g'8 \tuplet 3/2 {bes4 es'8~^\markup{\left-align \small vib}} es'4 r4 
      | r8 f'8~ \tuplet 3/2 {f'8 aes'8 des''8} \tuplet 3/2 {e''8\glissando  ges''4~^\markup{\left-align \small vib}} ges''4~ 
      | ges''4 \tuplet 3/2 {e''8\glissando  f''8 e''8} es''8 c''8 aes'8 g'8 
      | \tuplet 3/2 {ges'4 bes'8} d''8 aes'8\glissando  \tuplet 3/2 {a'4 f''8} d''8 r8 
      | r8 bes'8 c''16 d''16 c''16 bes'16 g'8~ g'32 cis'16\glissando  d'32~^\markup{\left-align \small vib} d'4~ 
      | d'4 bes'8 d'8 cis'8. c''16~ c''8 g'8\glissando  
      | bes'8 aes'8~^\markup{\left-align \small vib} aes'4~ \tuplet 6/4 {aes'4~ aes'16 c'16~} c'8 f'8 
      | fis'8 g'8 aes'8 a'8 bes'16 c''16 bes'16 ges'16 \tuplet 3/2 {es'4 c'8} 
      | es'4.^\markup{\left-align \small vib} fis'16 g'16 es'4.^\markup{\left-align \small vib} g'16 aes'16 
      | es'4.^\markup{\left-align \small vib} aes'16 a'16 es'4.^\markup{\left-align \small vib} a'16 bes'16 
      \bar "||" \mark \default es'4~^\markup{\left-align \small vib} \tuplet 3/2 {es'8 b'8 c''8} es'2~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {es'16 bes'16 b'8. es'16~} es'8 a'16 bes'16~ bes'16 es'8 aes'16 a'8 es'8~^\markup{\left-align \small vib} 
      | es'4 r4 r8 es'8 \tuplet 3/2 {fis'8 g'8 aes'8} 
      | \tuplet 6/4 {a'8 bes'8 a'16 bes'16~} \tuplet 3/2 {bes'8 a'8 bes'8} \tuplet 3/2 {a'8 bes'8 a'8} \tuplet 3/2 {bes'8 a'8 bes'8} 
      | g'16\glissando  aes'16 bes'16 aes'16 ges'4 f'8.\glissando  ges'16~^\markup{\left-align \small vib} ges'4~ 
      | ges'4 \tuplet 3/2 {f'4 e'8} es'8 c'8 a8 fis8 
      | g8 aes8 a8 bes8 es'8 c'8 f'8 fis'8 
      | \tuplet 6/4 {g'4 es'16 aes'16~} aes'8 a'8 bes'8 es''8 aes'16 a'8 aes'16~^\markup{\left-align \small vib} 
      | aes'2 \tuplet 6/4 {f'8. aes'8 c''16~} c''8 es''8 
      | \tuplet 3/2 {g''4 bes'8~^\markup{\left-align \small vib}} bes'4 bes'8 a'8 aes'8 bes'8 
      | g'16 aes'16 g'16 es'16 c'8 g'8 aes'16 bes'16 aes'16 e'16 des'8 a'8 
      | bes'16 c''16 bes'16 g'16 es'8 bes'8 \tuplet 6/4 {b'16 des''16 b'16 ges'8 d'16~} d'8 bes8 
      \bar "||" \mark \default c'4. r8 r2\bar  ".."
    }
    >>
>>    
}
