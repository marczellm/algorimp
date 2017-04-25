\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Mean to Me"
  composer = "Lee Konitz"
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
      | r1 
      | aes1:maj | bes2:7 es2:7 | aes1:maj | des2:7 c2:7 | f1:min7 | des2:7 c2:7 | f1:7 | f2:min7 bes2:7 
      | es2:maj e2:dim | f2:min7 bes2:7 | es2:maj bes4:min7 es4:7 | aes2:maj des2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj c2:min7 | f2:min7 bes2:7 
      | es2:maj e2:dim | f2:min7 bes2:7 | es2:maj bes4:min7 es4:7 | aes2:maj des2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj c2:9+ | f2:min7 bes2:7 
      | es2:maj e2:dim | f2:min7 bes2:7 | es2:maj bes4:min7 es4:7 | aes2:maj des2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj c2:min7 | es2:maj es2:7 
      | aes1:maj | bes2:7 es2:7 | aes1:maj | des2:7 c2:7 | f1:min7 | des2:7 c2:7 | f1:7 | c1:7 
      | es2:maj e2:dim | f2:min7 bes2:7 | es2:maj bes4:min7 es4:7 | aes2:maj des2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj c2:min7 | f2:min7 bes2:7 
      | es2:maj e2:dim | f2:min7 bes2:7 | es2:maj bes4:min7 es4:7 | aes2:maj des2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj c2:min7 | f2:min7 bes2:7 
      | es2:maj e2:dim | f2:min7 bes2:7 | es2:maj bes4:min7 es4:7 | aes2:maj des2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj c2:min7 | es2:maj bes4:min7 es4:7 
      | aes1:maj | bes2:7 es2:7 | aes1:maj | des2:7 c2:7 | f1:min7 | des2:7 c2:7 | f1:7 | c1:7 
      | es2:maj e2:dim | f2:min7 bes2:7 | es2:maj bes4:min7 es4:7 | aes2:maj des2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj c2:min7 | f2:min7 bes2:7 
      | es1:maj|
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
     
      \bar "||" \mark \default r2 c''4 c''4 
      \bar "||" \mark \default \tuplet 3/2 {bes'4 aes'8~^\markup{\left-align \small vib}} aes'4 r2 
      | r4 \tuplet 3/2 {c''4 b'8} c''8 g'8 \tuplet 3/2 {bes'4 bes'8~} 
      | bes'8 aes'8~^\markup{\left-align \small vib} aes'2 \tuplet 3/2 {c''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 \tuplet 3/2 {des''4 c''8~^\markup{\left-align \small vib}} c''4~ c''16 e''8 g''16~ 
      | g''16 f''8 c''4.^\markup{\left-align \small vib} aes'8 g'16~ g'16 f'8 es'16~ 
      | es'16 d'8 c'16~ \tuplet 5/4 {c'8 des'16 e'16 g'16~} g'16 a'8 bes'16 c''8 d''8~^\markup{\left-align \small vib} 
      | d''4 c''8 f'4.^\markup{\left-align \small vib} r4 
      | r8 bes'8 a'8 aes'8 \tuplet 3/2 {fis'4 g'8} c''8 bes'8 
      \bar "||" \tuplet 3/2 {g'4 es'8} f'8 fis'8 \tuplet 3/2 {g'4 es'8} f'8 g'8 
      | aes'8 aes'8 g'8 f'8~ \tuplet 6/4 {f'4~ f'16 f'16} bes'4 
      | r1 
      | r4 es''8 des''8 es''8 des''8 b'8 bes'8 
      | b'8 bes'8 a'8 bes'8 d''8 c''8 bes'8 g'8 
      | \tuplet 3/2 {f'4 es'8~} \tuplet 6/4 {es'16 f'4 es'16} \tuplet 3/2 {aes'4 g'8} f'4 
      | bes'4.^\markup{\left-align \small vib} r8 r4 r16 c''8 g'16~^\markup{\left-align \small vib} 
      | g'4 \tuplet 3/2 {f'4 es'8~} es'4 \tuplet 3/2 {c'4 bes8~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default bes4~ bes16 c'8 es'16 g'4 es'16 g'8.~ 
      | \tuplet 6/4 {g'16 bes'4 g'16} \tuplet 3/2 {bes'4 bes'8~} bes'16 c''8 bes'16~ bes'16 g'8 es'16~ 
      | \tuplet 6/4 {es'16 f'4 es'16} \tuplet 3/2 {f'4 g'8~} \tuplet 6/4 {g'16 f'4 es'16~} es'8. es'16~ 
      | \tuplet 6/4 {es'16 bes'4 aes'16} \tuplet 3/2 {bes'4 b'8~} b'16 bes'8 aes'16~ \tuplet 5/4 {aes'16 g'8 bes'16 c''16} 
      | es''2 r2 
      | r2. d''8 c''8 
      | bes'4^\markup{\left-align \small vib} g'8 f'8 e'8 g'8 c''8 bes'8 
      | aes'8 g'8 f'8 es'8~ es'16 d'8 ges'16 bes'8 cis''8\glissando  
      \bar "||" d''8 f''8 \tuplet 3/2 {d''4 c''8~} c''16 bes'8 g'16~ g'8 f'8 
      | es'16 f'8 g'16 aes'4~ aes'16 f'8 g'16 aes'8 a'8~ 
      | a'16 bes'8 g'16~ g'16 bes'8 c''16~ c''16 es''8 c''16~ c''16 bes'16 g'16 es'16~ 
      | es'16 f'16 g'16 f'16~ f'16 es'16 f'16 es'16~ es'16 des'16 es'16 des'16~ des'16 b16 des'16 b16~ 
      | \tuplet 6/4 {b16 bes8. c'16 bes16~} \tuplet 6/4 {bes8 g16 aes16 bes16 c'16~} c'16 es'8 c'16~^\markup{\left-align \small vib} c'4 
      | r2 r8. g'16 \tuplet 3/2 {bes'8 c''8 d''8} 
      | es''8 d''8 c''8 b'8 \tuplet 3/2 {bes'8 g'8 es'8~} es'16 aes'16 bes'16 aes'16~ 
      | aes'16 g'8 f'16~ f'8 e'8 \tuplet 3/2 {d'8 es'4} d'16 des'8 e'16~ 
      \bar "||" e'16 es'8 c''16~^\markup{\left-align \small vib} c''4 r4 r8. es'16~ 
      | \tuplet 6/4 {es'16 f'4 es'16~} es'16 g'8 aes'16~ aes'16 bes'8 aes'16~ aes'16 g'8 f'16~ 
      | f'16 es''8 c''16~ c''16 des''8 es''16~ es''16 c''8 aes'16~ aes'16 bes'8 c''16~ 
      | c''8 des''8 bes'8 c''8 des''8 bes'8~ \tuplet 6/4 {bes'8 g'8 aes'16 bes'16} 
      | c''4.^\markup{\left-align \small vib} r8 r2 
      | r8. aes'16 bes'8 c''8\glissando  \tuplet 3/2 {des''4 b'8} c''8 bes'8 
      | g'8 aes'8 a'8 c''8 \tuplet 3/2 {g'4 ges'8} \tuplet 3/2 {f'4 es'8} 
      | d'8 f'8~ f'16 c'8 b16~ b16 bes8 d'16 ges'8 a'8 
      \bar "||" \tuplet 3/2 {c''4 bes'8~^\markup{\left-align \small vib}} bes'4 \tuplet 3/2 {g'4 es'8} f'8 g'8 
      | aes'8 bes'8 aes'8 g'8 f'4 g'4 
      | bes'2^\markup{\left-align \small vib} r2 
      | r4 r32 es''32~ es''8 b'32 aes'32 \tuplet 3/2 {ges'4 aes'8~} \tuplet 6/4 {aes'8.\glissando  bes'16 aes'16 ges'16} 
      | f'4 es'16 c'8 es'16 \tuplet 3/2 {g'4 bes'8~} bes'16 c''8 bes'16~ 
      | bes'16 es''8 f''16~ f''16 es''8 c''16~ c''16 bes'8 g'16~ g'16 f'8 es'16 
      | f'8 es'8 d'8 es'8~ es'16 d'8 des'16~ des'16 c'16 es'16 g'16~ 
      | g'16 bes'8 a'16~ \tuplet 5/4 {a'16 aes'8 a'16 bes'16~} \tuplet 6/4 {bes'8 g'8 ges'16 f'16~^\markup{\left-align \small vib}} f'4 
      \bar "||" \mark \default r4 bes'8 c''16 es''16~ es''16 cis''16\bendAfter #+4  d''16 des''16~ des''16 c''8 b'16 
      | bes'8 aes'8 f'8 fis'8 \tuplet 3/2 {g'4 bes'8} c''8 es''8 
      | \tuplet 3/2 {g''4 aes''8~} aes''16 g''8 f''16~ f''16 es''8 bes'16 g'4~ 
      | g'16 aes'8 g'16 \tuplet 3/2 {aes'4 bes'8~} bes'16 b'8\glissando  bes'16 aes'16 g'8. 
      | bes'16 c''8 es''16~^\markup{\left-align \small vib} es''4 r2 
      | r2 r8 g'8 \tuplet 3/2 {bes'4 g'8} 
      | \tuplet 3/2 {bes'4 g'8} e'8. c'16 \tuplet 3/2 {es'4 d'8~} d'16 des'8 b16~ 
      | b16 c'8 aes'16~ aes'8. c'16 d'4 bes'8 g'8~ 
      \bar "||" g'8. es'16~ es'16 f'8 es'16~ es'16 b16 es'16 g'16 \tuplet 3/2 {bes'8 d''8 c''8} 
      | es''8 c''16 aes'16 f'16 fis'16 g'16 aes'16 a'16 bes'16 g'16 es'16 c'8 f'16 e'16 
      | es'8 f'16 g'16 aes'16 a'16 bes'16 c''16 bes'16 a'16 bes'16 es''16 \tuplet 5/4 {des''8 es''16 des''16 c''16~} 
      | \tuplet 6/4 {c''16 b'8 bes'16 a'16 aes'16~} \tuplet 6/4 {aes'16 g'16 f'8 e'16 es'16~} \tuplet 6/4 {es'16 f'8 ges'16 f'16 es'16} cis'16 d'16 f'16 e'16 
      | d'16 es'16 f'16 g'16 bes'16 c''16 es''16 c''16 r2 
      | r4 \tuplet 6/4 {r16 es''8. e''16 es''16} d''8 c''8~ c''16 bes'8 aes'16 
      | g'4~ g'16 aes'8 a'16~ a'16 bes'8 aes'16~ aes'16 g'8 f'16~ 
      | f'16 es'8 d'16~ d'16 des'8 es'16~ \tuplet 3/2 {es'8\glissando  e'8 g'8~} \tuplet 6/4 {g'16 b'4 g'16~} 
      \bar "||" \tuplet 6/4 {g'16 bes'4 aes'16} bes'4^\markup{\left-align \small vib} aes'8 g'8~ g'16 f'8 es'16 
      | c''8. bes'16 des''4~^\markup{\left-align \small vib} des''16 f'8 g'16~ g'16 aes'8 a'16~ 
      | a'16 bes'8 g'16 \tuplet 3/2 {es'4 f'8~} \tuplet 6/4 {f'16 aes'4 f'16~^\markup{\left-align \small vib}} f'4 
      | r2. \tuplet 3/2 {c''8 d''8 f''8} 
      | g''8. c''16~ c''8 r8 r8 f''8 c''8 aes'16 f'16~ 
      | f'16 bes'16 c''16 bes'16~ bes'16 a'16 bes'16 c''16 des''4~ des''16 g'8 bes'16 
      | a'8 c''8 g'8 ges'8 f'4 d''8 es''8~ 
      | es''16 d''8 c''16~ c''16 bes'8 a'16~ a'16 aes'8 g'16~ \tuplet 6/4 {g'8 f'8. e'16~} 
      \bar "||" e'32 es'8. g'32 bes'4 es'4~ es'16 g'8 bes'16~ 
      | bes'16 f'8 aes'16 c''4~^\markup{\left-align \small vib} c''16 ges'8 a'16 d''8 c''8 
      | \tuplet 3/2 {bes'4 c''8} es''8 c''8 bes'4~ bes'16 g'8 bes'16 
      | aes'8 r8 r8. bes16~ bes8 b'16 g'16~ g'16 f'8 d'16~ 
      | d'16 bes8 bes16~^\markup{\left-align \small vib} bes4 r2 
      | r4 \tuplet 3/2 {c'8 d'8 es'8} f'4~ f'32 cis'16 d'16 f'16 e'32 
      | es'16 f'16 g'16 aes'16 bes'4 fis'16 g'16 bes'16 a'16 g'16 aes'16 bes'16 c''16 
      | es''16 c''16 cis''16 d''16~ \tuplet 6/4 {d''16 bes'16 b'8 c''16 ges'16~} ges'8 bes'16 a'16 g'16 aes'16 g'16 f'16 
      \bar "||" \mark \default e'16 es'16 bes'8 r2.\bar  ".."
    }
    >>
>>    
}
