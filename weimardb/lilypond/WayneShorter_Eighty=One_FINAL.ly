\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Eighty-One"
  composer = "Wayne Shorter"
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
      
      | f1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 | bes1:7sus4 | s1 | f1:7sus4 | s1 
      | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 | s1 | bes1:7sus4 | f1:7sus4 | s1 
      | bes1:7sus4 | s1 | f1:7sus4 | s1 | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 
      | s1 | bes1:7sus4 | f1:7sus4 | s1 | bes1:7sus4 | s1 | f1:7sus4 | s1 
      | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 | s1 | bes1:7sus4 | f1:7sus4 | s1 
      | bes1:7sus4 | s1 | f1:7sus4 | s1 | c1:7sus4 | bes1:7sus4 | f1:7sus4 | s1 
      | s1 | bes1:7sus4 | f1:7sus4 | s1 | bes1:7sus4 | s1 | f1:7sus4 | s1 
      | c1:7sus4 | f1:7sus4 | s1 | s1 | s1|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 r8 g'8 g'4. f'8 
      | \tuplet 3/2 {g'8 bes'16 r8.} r2. 
      | \tuplet 6/4 {r4 r16 g'16~} g'16 bes'8 g'16 \tuplet 3/2 {bes'8 g'8 bes'8~} \tuplet 6/4 {bes'16 g'16 f'16 g'8 bes'16} 
      | g'16 f'16 g'8 bes'8 r8 r2 
      | r4 r8 bes'16 c''16~ c''4. g'8 
      | c''8 g'8~ \tuplet 3/2 {g'8 g'8 f'8} g'4.^\markup{\left-align \small vib} f'8 
      | g'16 f'16 es'8 r2. 
      | r8 bes'16 c''16~ c''4 \tuplet 3/2 {bes'4 c''8} r4 
      | r8 d''16 es''16~ es''4 c''16 bes'16 aes'8\bendAfter #-4  r4 
      | r8 g'16 a'16~ a'8 f'8 \tuplet 3/2 {a'8 f'8 es'8~} \tuplet 6/4 {es'8. c'8 es'16} 
      | c'8 bes4 f16 a16~ a16 c'16 f'8~ f'8. es'16 
      \bar "||" \mark \default \tuplet 3/2 {f'8 ges'8 f'8} r2. 
      | \tuplet 3/2 {c'8 f'4^\markup{\left-align \small vib}} \tuplet 3/2 {c'8 f'8 ges'8~^\markup{\left-align \small vib}} ges'4.. e'16 
      | \tuplet 3/2 {f'8 e'8 es'8~} es'8 a8~^\markup{\left-align \small vib} a2~ 
      | a4~ \tuplet 6/4 {a16 b8 e'16 f'16 dis'16~} \tuplet 6/4 {dis'16 e'4 aes'16} es'8 cis'8 
      | r4 r8. d'16 f'8 gis'4 a'16\glissando  bes'16~^\markup{\left-align \small vib} 
      | bes'4 aes'16 f'16 d'16 bes16~ bes16 b16 d'16 f'16 \tuplet 3/2 {g'8 g'8 f'8} 
      | es'16 des'16 c'16 bes16 \tuplet 3/2 {g8 a8 g'8} \tuplet 6/4 {a'16 es'8 g'8 es'16} d'16 c'16 f'8 
      | d'4 r2 r8. e'16~ 
      | \tuplet 3/2 {e'8 c'8 g'8} c''8 bes'4 a'8 \tuplet 6/4 {g'8 f'8 g'16 ges'16\glissando } 
      | aes'8 g'8 f'16 d'16 bes16 g16 \tuplet 3/2 {aes8 bes8 e'8~^\markup{\left-align \small vib}} e'8 d'8 
      | c'16 bes16 a16 g16 f16 g16 a16 bes16 \tuplet 6/4 {c'8 d'16 es'16 f'16 g'16~} g'16 d'16 f'16 e'16 
      | \tuplet 6/4 {f'16 es'16 f'8. a'16} c''16 f''16 r8 r2 
      \bar "||" \mark \default \tuplet 3/2 {a'8 c''8 f''8~} f''2. 
      | \tuplet 5/4 {f''16 es''16 c''16 aes'16 bes'16~} bes'8\bendAfter #-4  r8 r4 bes'16 g'16 bes'16 c''16\glissando  
      | \tuplet 3/2 {d''8 c''4} \tuplet 3/2 {a'4 f'8~} f'4 es'16 aes'16 des'8 
      | r2 r8 ges'16\glissando  aes'16~ aes'8 f'16 g'16 
      | c''8 f'8 \tuplet 3/2 {bes'4 es'8~} es'16 aes'16 d'16 g'16~ g'16 g'16 f'16 bes16~ 
      | bes16 es'16 a16 d'16 \tuplet 3/2 {g8 c'8 g8~} g4. f16 g16 
      | f8 f4. g16 c16 r8 r4 
      | r1 
      | a'16 bes'16 c''4 c'16 aes'16 \tuplet 6/4 {bes'8. a'16 aes'16 g'16} f'16 d'16 g'16\glissando  aes'16~ 
      | aes'8 cis'8 d'8 r8 r2 
      | \tuplet 6/4 {r4 r16 ges'16~} ges'16\glissando  aes'16 cis'16 d'16~ d'16 g'8 aes'16 cis'16 d'8 ges'16~ 
      | ges'16\glissando  aes'16 cis'16 d'16~ d'16 fis'16 g'16 aes'16~ aes'16 gis'16 a'16 g'16 aes'16 cis'16 d'16 g'16\glissando  
      \bar "||" \mark \default gis'4. a'8 g'8 aes'8 r4 
      | ges'16\glissando  aes'4.^\markup{\left-align \small vib} d'16 g'8 aes'8 r4 
      | \tuplet 3/2 {c'8 d'8 f'8} g'16 aes'16 bes'16 c''16~ c''16 bes'16 c''16 bes'16~ bes'16 aes'16 f'16 bes'16~ 
      | \tuplet 6/4 {bes'16 aes'8 f'8 cis'16~} cis'32 d'16. f'16 g'32 ges'32~ \tuplet 6/4 {ges'16 f'8 g'8 ges'16} r4 
      | \tuplet 6/4 {r16 f'8 aes'8 bes'16~} bes'8 gis'8 \tuplet 3/2 {a'8\glissando  c''8 g'8~} g'4 
      | \tuplet 3/2 {bes'4 aes'8} \tuplet 3/2 {bes'4 aes'8~} \tuplet 5/4 {aes'16 f'16 g'16 f'16 es'16} c'8 bes8 
      | ges'16\glissando  aes'8\glissando  g'16~ g'16 cis'16 d'16 g'16 \tuplet 3/2 {f'4 d'8\bendAfter #-4 } c'4 
      | r1 
      | r16 es''16 d''8 c''16 b'16 aes'16\glissando  bes'16~ bes'8 a'8 \tuplet 3/2 {aes'8 g'8 f'8~} 
      | f'8 es'8 \tuplet 3/2 {d'8 c'8 bes8\bendAfter #-4 } a8 aes8 \tuplet 5/4 {g8 f16 ges16 a16~} 
      | a4~ a16 a16 f'16 c'16 r2 
      | r1 
      \bar "||" \mark \default a'4 c''4 \tuplet 3/2 {d''8 f''4~} f''4\glissando  
      | \tuplet 3/2 {bes'8 d''4} \tuplet 3/2 {bes'4 g'8~} g'8 ges'8\bendAfter #-4  r4 
      | a'8 g'8 f'8 g'8 a'8\glissando  b'16 f''16~ f''4 
      | c''16 d''8. \tuplet 6/4 {f''4 bes'16\glissando  c''16~} c''8\bendAfter #-4  bes'8 r4 
      | r32 bes'8. bes'32~ bes'8 es''8 a'16\glissando  c''8. \tuplet 3/2 {bes'4 aes'8~} 
      | aes'8\glissando  g'8~ g'2 g'8 f'8~ 
      | f'8 es'8 \tuplet 3/2 {es'4 es'8~} es'8 es'8 d'4\bendAfter #-4  
      | r2. r8 e'16 d'16~ 
      | \tuplet 6/4 {d'16 e'4 d'16~} \tuplet 7/8 {d'32 c'8 bes'32\glissando  c''32~} c''2~ 
      | c''8 cis''16\glissando  d''16 c''16 bes'8. bes'4~ bes'16 d''8 c''16~^\markup{\left-align \small vib} 
      | c''8. c''16 \tuplet 3/2 {a'4 f'8} r4 \tuplet 3/2 {r8 g'8 es'8} 
      | c'4 \tuplet 3/2 {f'8 d'8 bes8~} bes4~ \tuplet 6/4 {bes16 es'8 c'16 g16\glissando  a16~} 
      \bar "||" \mark \default a2 r2\bar  ".."
    }
    >>
>>    
}
