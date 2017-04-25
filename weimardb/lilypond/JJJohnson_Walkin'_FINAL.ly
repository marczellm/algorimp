\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Walkin'"
  composer = "J.J. Johnson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | s1 | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | s1 
      | g1:min7 | c1:7 | f1:7 | g2:min7 c2:7 | f1:7|
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


      \tempo 4 = 128
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8. bes16~ 
      | bes8 a8 r2 r8 bes8~ 
      | bes16 a8 bes16~ bes16 a8 bes16~ bes8 a8~ a16 f8 es16 
      | r2 cis'8 d'4 c'8~ 
      | \tuplet 3/2 {c'8 f8 f8} f4 f8 r8 r4 
      | f4 r4 f8 g8 aes8 bes8~ 
      | bes8 b16 b16~ b8 b8 b8 r8 r8 d'8 
      | \tuplet 3/2 {c'4 a8~} a4 bes8 r8 r4 
      | r8 b8 c'8 r8 r8. a16~ a16 bes16 d'16 f'16~ 
      | f'8 a'8 g'8 f'8 e'4 \tuplet 3/2 {bes4 d'8} 
      | \tuplet 3/2 {c'4 a8~} a4 a8 r8 r4 
      | r1 
      \bar "||" \mark \default r8 c'8 f'8. a16 es'4 g'8\glissando  f'8~ 
      | \tuplet 6/4 {f'4~ f'16 c'16~} \tuplet 6/4 {c'4 a16 bes16~} bes8 aes8 r4 
      | r8 c'8 f'8. des'16 \tuplet 3/2 {es'4 f'8~} f'8 e'8 
      | \tuplet 3/2 {es'4 aes8} bes8 d'8 c'8\glissando  des'8 \tuplet 3/2 {a4 e8} 
      | \tuplet 3/2 {c'4 bes8~^\markup{\left-align \small vib}} bes4 r2 
      | r4 r16 c'8 cis'16 \tuplet 3/2 {d'4 f'8} \tuplet 3/2 {g'4 f'8} 
      | g'8\glissando  aes'16 bes16 g'2 r4 
      | r4 \tuplet 3/2 {f'8 ges'8 e'8} \tuplet 3/2 {f'8 ges'8 es'8} r4 
      | r4 dis'16 e'16 d'8 dis'16 e'16 c'8 \tuplet 5/4 {c'16 des'16 bes16 bes16 c'16~} 
      | c'8 r8 r8 a8 \tuplet 3/2 {bes4 c'8} a8. g16~ 
      | g4 g4 r2 
      | r2. r8. cis'16 
      \bar "||" \mark \default \tuplet 3/2 {d'8 f'8 a'8} \tuplet 3/2 {c''4 bes'8~} \tuplet 6/4 {bes'4~ bes'16 d'16~} d'16 f'8 a'16~^\markup{\left-align \small vib} 
      | a'4~ \tuplet 6/4 {a'16 g'16 a'16 g'16 f'8} e'8 d'8 c'8 bes8 
      | a8 g8 f8 e8~ e16 es8 a16 bes8 d'8~ 
      | d'16 es'8 es'16 \tuplet 3/2 {es'4 es'8} \tuplet 3/2 {es'4 d'8} \tuplet 3/2 {bes4 g8} 
      | bes4 r4 d'8. f'32 g'32~ g'8. f'32 g'32~ 
      | g'16\glissando  aes'8 g'16\glissando  \tuplet 3/2 {aes'4 g'8~} g'4 f'8 d'8 
      | c'8 r8 r2. 
      | r1 
      | \tuplet 3/2 {r8 a8 bes8} d'8 f'8~ \tuplet 3/2 {f'8 a8 bes8} d'8 f'8 
      | a8 bes8 d'8 f'8 a'4~ a'16 e'8 g'16 
      | f'8 r8 r8 c'8 d'4 a8 c'8 
      | bes4. f'8 e'8 e'8 d'8 d'8 
      \bar "||" \mark \default c'4 r4 f'4 r4 
      | g8 a8 bes8 d'8 c'4 f8 bes8 
      | \tuplet 5/4 {a4 f16~} f8 es4^\markup{\left-align \small vib} r8 r4 
      | r4 r8 bes8 cis'8 d'8 dis'8 e'8 
      | f'8 d'8 bes8 a8 aes4 aes4 
      | aes4 aes4 aes8. d'16~ d'8 f'8 
      | e'4 c'8. c'16~^\markup{\left-align \small vib} c'4 r4 
      | r1 
      | \tuplet 6/4 {r8. fis8 g16~} g16 bes16 g16 bes16 \tuplet 3/2 {d'8 bes8 d'8} \tuplet 3/2 {g'8 d'8 f'8} 
      | \tuplet 3/2 {a'8 f'8 a'8} c''8 r8 r8. e'16 f'8 a'8~ 
      | a'16 bes'8 a'16~ a'16 bes'8 a'16 \tuplet 3/2 {f'4 d'8} f'8 f'8 
      | r2 r8 c'8~ \tuplet 3/2 {c'8 f'8 a'8~} 
      \bar "||" \mark \default a'16 bes'16 a'16 bes'16 a'8 r8 r2 
      | r8 c'4 f'8 a'8 bes'16 a'16~ a'16 bes'16 a'16 bes'16 
      | a'16. bes'16 a'16 bes'32 a'8 f'8 d'16 f'16 f'8 r4 
      | r1 
      | r4 r16 f'8 aes'16 \tuplet 3/2 {bes'4 aes'8} \tuplet 3/2 {f'4 d'8} 
      | f'4 f'4 f'4 f'8 r8 
      | r4 f'8 a'8 bes'8 aes'8~ aes'16 f'8 d'16 
      | f'4. a'8 f'4 f'8 a'8 
      | f'4. a'8 f'4. a'8 
      | \tuplet 6/4 {f'4~ f'16 f'16~} f'8 a'8 bes'8 a'8 f'8. d'16 
      | \tuplet 6/4 {f'4~ f'16 es'16~} \tuplet 6/4 {es'4 c'16 es'16~} es'8 f'8\bendAfter #-4  r4 
      | r1 
      \bar "||" \mark \default a'8 g'8 \tuplet 6/4 {f'4 e'16 g'16~} g'8 f'8 e'8 d'8 
      | f'8 d'8 bes8 a8 aes8. d'16 e'8. c'16~ 
      | c'8 d'8 es'8 f'8 g'8 bes'8 a'8 g'8 
      | f'16 g'16 f'16 d'16~ \tuplet 6/4 {d'16 es'16 f'16 es'16 c'8~} \tuplet 6/4 {c'16 d'16 e'16 des'8 bes16} \tuplet 6/4 {c'16 d'16 c'16 a8.} 
      | bes8 r8 r4 r8. e16~ e16 f8 g16 
      | aes8 b8 \tuplet 3/2 {d'4 f'8~} f'8 e'8~ e'16 d'8 f'16 
      | e'4~ \tuplet 3/2 {e'8 d'8 f'8} e'8 d'4. 
      | d'8 r8 r2. 
      | \tuplet 3/2 {a'8 g'8 f'8~} f'32 g'16 f'16 e'16 f'32~ f'16 e'16 d'8 e'16 f'16 e'16 d'32 c'32~ 
      | \tuplet 5/4 {c'16 cis'16 d'16 bes16 a16~} \tuplet 6/4 {a8. c'16 c'16 bes16~} bes16 g16 aes16 f16 \tuplet 7/8 {e16 d'8 c'32~} 
      | c'4 r2. 
      | r8 f'8 \tuplet 3/2 {aes'4 bes'8} b'8 b'8~ b'16 bes'8 bes'16~ 
      \bar "||" \mark \default bes'16 aes'8 aes'16~ aes'16 f'8 f'16~ \tuplet 3/2 {f'8 es'8 c'8~} \tuplet 6/4 {c'16 bes4 g16} 
      | bes2. bes8 bes8 
      | r4 r8. bes16 r2 
      | r2 r8 a8 bes8 b8~ 
      | b8. c'16~ c'8 r8 r2 
      | r4 r8 f'8 e'8 d'8 c'8 a8~ 
      | \tuplet 6/4 {a16 g4 g16~} g4 g8 r8 r4 
      | r1 
      | r8 d''8~ d''16 c''32~ c''8 bes'32~ bes'4~ \tuplet 3/2 {bes'8 f'8 a'8~} 
      | \tuplet 5/4 {a'16 g'16 a'16 g'16 f'16~} \tuplet 3/2 {f'8 e'8 d'8~} d'16 c'8 bes16~ bes8 a8 
      | a8 c'8 \tuplet 6/4 {d'4~ d'16 f'16~} f'8 r8 r4 
      | r16 e'8 e'16~ e'16 d'8 d'16~ d'16 c'8 c'16 \tuplet 3/2 {a4 g8~} 
      \bar "||" \mark \default g4. r8 r2\bar  ".."
    }
    >>
>>    
}
