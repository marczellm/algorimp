\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Billie's Bounce"
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
      | s2. r4 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min | c1:7 | f2:7 c2:7 | f2:7 c2:7 
      | f1:7 | s1 | s1 | c2:min f2:7 | bes1:7 | s1 | f1:7 | a2:min d2:7 
      | g1:min | c1:7 | f1:7 | s2 c2:7 | f1:7 | s1 | s1 | c2:min f2:7 
      | bes1:7 | s1 | f1:7 | d1:7 | g1:min | c1:7 | f1:7 | c1:7 
      | f1:7|
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


      \tempo 4 = 159
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 c'8 
      \bar "||" \mark \default f'4 g'8 gis'8 a'4 \tuplet 3/2 {bes'4 b'8} 
      | c''4~ c''16 bes'16 c''16 bes'16 \tuplet 3/2 {a'4 f'8} d'4~ 
      | \tuplet 5/4 {d'16 g'16 aes'16 g'16 f'16} \tuplet 3/2 {es'4 f'8~} f'4. r8 
      | r2. r8. e''16\bendAfter #+4  
      | f''8. c''16 \tuplet 6/4 {bes'16 g'16\bendAfter #+4  aes'8. f'16} g'8 f'8 \tuplet 3/2 {es'4 d'8~} 
      | d'16 c'8 c'16 \tuplet 3/2 {bes4 e8} \tuplet 3/2 {gis4 a8~} a16 bes8 b16 
      | \tuplet 3/2 {c'4 d'8} c'16 a8 c'16 \tuplet 3/2 {e'4 d'8~} d'8 r8 
      | r1 
      | r4 r8 g'16 bes'16 \tuplet 3/2 {d''8 f''8 e''8~} \tuplet 6/4 {e''16 d''8. des''16 b'16} 
      | c''8. a'16 \tuplet 3/2 {bes'4 bes'8~} bes'16 a'8 f'16~ \tuplet 6/4 {f'16 d'4 c'16} 
      | g'4 f'16 g'8 gis'16\bendAfter #+4  a'4. r8 
      | r1 
      \bar "||" \mark \default r8. f'16~ f'8 aes'8 bes'8 a'16 bes'16 b'8 b'16 b'16~ 
      | \tuplet 3/2 {b'8 bes'8 aes'8} \tuplet 3/2 {f'8 a'8 bes'8} b'8 bes'4 r8 
      | r4 r8. f'16~ f'16 gis'8 a'16~ a'16 bes'8 b'16~ 
      | \tuplet 6/4 {b'16 c''8 des''16 c''16 a'16~} a'8 f'16 es'16~ es'4. g'8~ 
      | \tuplet 5/4 {g'16 f'16 g'16 f'16 d'16~} d'16 bes8 g16 aes4. r8 
      | r2 r16 a'16\bendAfter #+4  c''8 f''8 c''8~ 
      | \tuplet 6/4 {c''16 bes'8. c''16 bes'16} \tuplet 3/2 {a'4 bes'8} c''8 a'4. 
      | r1 
      | r4 r16 f'16 g'16 bes'16 d''16 f''16 d''16 dis''16 e''16 c''16 cis''16 d''16 
      | \tuplet 6/4 {c''16 bes'8 a'16 g'16 f'16~} f'16 e'16 g'16 bes'16 des''32 c''32 b'32 a'16 b'32 c''32 bes'32 a'16 f'16 d'16 c'16 
      | f'4~ \tuplet 6/4 {f'4 d'16\bendAfter #+4  es'16} d'8 c'4 r8 
      | r4 r8. c'16 f'8 a'8 c''8. f''16~ 
      \bar "||" \mark \default f''4 \tuplet 3/2 {d''8\bendAfter #+4  es''8 d''8} c''16 bes'8 a'16 g'8 ges'8 
      | f'8 es'8~ es'16 d'16 f'16 a'16~ a'16 c''8 bes'16~ bes'8 des'8 
      | bes'16 a'16 bes'16 a'16 f'16 d'8 c'16 g'16 aes'16 g'16 f'16 es'8 f'8 
      | d'8 f'8 des'8 c'4. r4 
      | r2. r8 g''8\bendAfter #+4  
      | aes''8. g''16~ g''8 f''8~ f''16 d''16\bendAfter #+4  es''16 c''16~ c''8 bes'8 
      | f'16 g'16 gis'16\bendAfter #+4  a'16~ a'8 c''4 r8 \tuplet 6/4 {r4 r16 bes'16~} 
      | \tuplet 6/4 {bes'8 a'16 bes'16 a'16 g'16} fis'8. a'16 \tuplet 3/2 {c''4 es''8~} \tuplet 6/4 {es''8 d''8. a'16} 
      | c''8 bes'4 r8 r4 \tuplet 6/4 {r4 f''16 e''16} 
      | d''16 c''16 bes'16 a'16~ a'16 g'8 f'16 \tuplet 3/2 {e'8 g'8 bes'8} des''16 es''8 c''16~ 
      | c''8 bes'8 c''16 a'8.~ a'8 r8 r4 
      | r8. fis'16\bendAfter #+4  g'2.~ 
      \bar "||" \mark \default g'4.. f'16 bes'16 c''16 bes'16 a'16 aes'4~ 
      | aes'4 f'16 g'16 f'16 e'16 es'4 \tuplet 6/4 {c'4 fis'16\bendAfter #+4  g'16~} 
      | g'4~ \tuplet 6/4 {g'16 es'4 c'16} \tuplet 3/2 {f'4 c'8~} c'4 
      | r1 
      | r4 r8 c''8~ \tuplet 6/4 {c''16 f''8. c''16 bes'16} \tuplet 3/2 {aes'4 f'8~} 
      | f'4 \tuplet 3/2 {f''4 c''8} bes'16 aes'8 d'16~ d'4 
      | r4 r8. e'16 f'8 a'16 c''16 \tuplet 3/2 {e''4 d''8~} 
      | d''4 c''16 d''16 c''16 bes'16 a'8 g'8 fis'8 a'8 
      | g'8 d''8~ \tuplet 5/4 {d''16 bes'16 c''16 bes'16 g'16} ges'8 d'8 \tuplet 3/2 {bes4 ges8} 
      | \tuplet 3/2 {f'4 dis'8} \tuplet 3/2 {e'4 c''8~} c''8 r8 r8. bes'16~ 
      | bes'16 g'16 a'16 c''16~ c''8 c''8 bes'8 a'8 \tuplet 3/2 {f'4 c'8} 
      | g'8\bendAfter #+4  a'4 f'8 g'8 f'8~ f'16 d'8 c'16~ 
      \bar "||" \mark \default c'4 r2.\bar  ".."
    }
    >>
>>    
}
