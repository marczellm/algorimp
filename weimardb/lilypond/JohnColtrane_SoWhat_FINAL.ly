\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "So What"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key d \major
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
      
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min7|
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


      \tempo 4 = 142
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8. d'16~ d'16 f'8 g'16~ 
      | g'2~ g'8 a'8 r4 
      | r4 r8 d'8 f'8 g'4 e'8~ 
      | e'4 r4 r8. a'16~ a'8 g'8 
      | f'8 a8 d'8 f'4 f'8~ f'16 f'8 f'16~ 
      | \tuplet 6/4 {f'16 g'4 g'16~} g'8 g'8~ g'4.. a'16~ 
      | a'8 r8 r4 r8 d'8 f'8 g'8~ 
      | g'4.. e'16~ e'8 r8 r4 
      \bar "||" r4 \tuplet 3/2 {r8 d'8 f'8} \tuplet 3/2 {g'8 a'4~} \tuplet 6/4 {a'8. c''16 a'16 g'16} 
      | f'16 d'16 f'32 g'32 a'32 c''32~ c''4~ c''16 a'16 c''8 \tuplet 6/4 {a'16 g'16 f'16 d'8.} 
      | r2 \tuplet 6/4 {r8. d'16 f'16 g'16} a'16 c''8.~ 
      | \tuplet 3/2 {c''8 d''8 c''8} d''8 a'8~ \tuplet 6/4 {a'8. c''16 a'16 g'16} f'16 d'16 r8 
      | r2 \tuplet 6/4 {r8 d'16 f'16 g'16 a'16} c''4~ 
      | c''4 \tuplet 3/2 {a'8 c''8 a'8~} a'8 c''16 a'16~ a'16 g'16 f'16 d'16 
      | r4 r8. bes'16 a'4. e'16 g'16~ 
      | \tuplet 6/4 {g'16 e'16 f'8. a16} b16 cis'16 d'16 e'16 f'16 d'8. a16 g16 f8 
      \bar "||" r4 \tuplet 6/4 {r4 r16 aes16} ais16 b16 c'16 es'16 fis'16 aes'16 bes'16 c''16~ 
      | c''4. aes'16 c''16 bes'2~ 
      | bes'16 fis'16 bes'16 gis'16~ gis'8 a'16 c''16 bes'32 e'32 f'16 aes'32 fis'32 cis'32 d'32~ \tuplet 6/4 {d'16 f'16 es'16 gis16 a16 c'16~} 
      | \tuplet 5/4 {c'16 gis16 a16 c'16 bes16~} bes4~ bes16 fis16 f16 es16 aes8 r8 
      | r4 \tuplet 6/4 {r8 aes8 bes16 c'16~} \tuplet 3/2 {c'8 aes8 cis'8~} \tuplet 3/2 {cis'8 bes8 d'8~} 
      | d'16 bes16 es'4 f'16 fis'16~ fis'16 f'8 fis'16 bes'8 cis''8~ 
      | cis''16 f''8 f''16~ f''8 es''8 es''4. cis''16 c''16~ 
      | c''8 gis'16 a'16 b'16 bes'16 fis'16 es'16 r2 
      \bar "||" r4 r8 a16 b16 cis'16 d'4..~ 
      | \tuplet 3/2 {d'8 cis'8 b8} bes16 a16 f16 e16 d16 f16 r8 r4 
      | r16 a16 b16 cis'16 d'4~ d'16 cis'16 b16 bes16 a16 f16 e16 d16 
      | f16 g16 a16 b16 cis'16 d'16 e'16 cis'16 d'8 r8 r4 
      | \tuplet 5/4 {r8 a16 b16 cis'16} d'4~ d'16. cis'16. b32 bes32~ \tuplet 5/4 {bes16 a16 f16 e16 d16} 
      | f16 g16 a16 b16 cis'16 d'16 e'16 cis'16 \tuplet 3/2 {d'8 f'8 a'8} b'16 e''8.~ 
      | e''8 a16 b16 cis'16 d'16 e'16 cis'16 d'16 e'16 f'16 g'16 a'4~ 
      | a'2~ \tuplet 6/4 {a'16 cis''16 d''16 cis''16 b'16 e'16} f'16 cis'16 d'8 
      \bar "||" \mark \default r4 r16 d'16 f'16 a'16 cis''16 d''4.. 
      | \tuplet 3/2 {d''8 cis''8 e'8} \tuplet 3/2 {f'8 cis'8 d'8~} d'8 r8 r4 
      | \tuplet 5/4 {r16 a16 b16 cis'16 d'16} e'16 f'16 g'16 b'16 \tuplet 3/2 {cis''8 d''8 d''8~} d''4~ 
      | \tuplet 5/4 {d''16 aes'8 cis''16 d''16} \tuplet 6/4 {cis''16 a'16 e'16 f'8.} cis'16 d'16 d'8 r4 
      | r8 a'8~ a'16 a'8 d''16~ d''16 a'8 d''16~ d''16 a'32~ a'8 g'32~ 
      | g'4~ \tuplet 3/2 {g'8 f'8 g'8} f'8 g'16 a'16 r4 
      | r4 r8 a'8~ a'4.. aes'16 
      | \tuplet 6/4 {g'8 f'8 e'16 d'16~} \tuplet 6/4 {d'16 cis'16 b8 a16 aes16} \tuplet 3/2 {g8 a8 b8} cis'16 d'16 e'16 cis'16 
      \bar "||" \tuplet 6/4 {d'8 e'8 f'16 g'16} a'4 \tuplet 3/2 {g'8 f'8 a'8} r4 
      | r4 \tuplet 6/4 {r8 c'16 f'16 g'16 a'16~} a'8 d'8 e'8 r8 
      | r4 r8 d'16 g'16 a'16 b'8.~ \tuplet 5/4 {b'16 d'16 g'16 a'16 b'16~} 
      | \tuplet 6/4 {b'16 g'8 f'16 g'16 a'16~} a'4 f'16 g'16 a'16 g'16~ g'8 e'8 
      | r4 r16 d'16 g'16 a'16 \tuplet 3/2 {b'8 c''8 b'8} c''4 
      | \tuplet 6/4 {b'8 g'8 f'16 g'16} a'16 bes'8. a'8 bes'8 a'8 r8 
      | r4 \tuplet 3/2 {d'8 g'8 a'8} \tuplet 3/2 {b'8 c''4~} c''4 
      | b'16 c''16 b'16 a'16~ \tuplet 6/4 {a'16 g'16 fis'8 f'16 a'16~} \tuplet 5/4 {a'16 e'16 g'16 f'16 e'16} d'8 r8 
      \bar "||" r2 r16 c'16 cis'16 es'16~ es'4~ 
      | es'4 es'8 es'8 es'4 bes4 
      | r4 f16 aes16 fis16 aes16 bes16 c'16 cis'16 es'16~ es'8 es'8 
      | es'4~ es'16 f'16 fis'16 aes'16~ aes'4 bes4 
      | r4 \tuplet 6/4 {r8. c'16 cis'16 es'16~} es'8 es'4 dis'8 
      | e'16 f'8.~ f'4 cis'16 es'16 aes'8~ \tuplet 7/8 {aes'16. g'32 f'32 es'32 cis'32} 
      | es'4. r8 r4 es'16 fis'8 cis''16 
      | f''4~ \tuplet 3/2 {f''8 es''8 cis''8} \tuplet 5/4 {c''8 bes'16 aes'16 g'16} fis'4 
      \bar "||" \tuplet 6/4 {e'8 f'16 a'8 e''16} g''4~ \tuplet 6/4 {g''4~ g''16 f''16~} f''16 e''8 d''16 
      | e''8 c''8~ \tuplet 3/2 {c''8 c''8 a'8~} a'16 f'16 d'8 g'8 r8 
      | r4 c''16 cis''16 d''16 cis''16 c''16 b'16 a'16 g'16 fis'16 f'16 a'16 e'16 
      | g'16 f'8 a16 b16 cis'16 d'16 e'16 \tuplet 6/4 {cis'16 d'8 e'16 f'16 g'16} a'8 r8 
      | r4 r8 a'8~ a'4. a'8 
      | \tuplet 3/2 {a'8 c''8 g'8~} g'4. fis'8 f'16 a'16 e'16 g'16~ 
      | \tuplet 6/4 {g'16 f'4 a16~} \tuplet 5/4 {a16 cis'8 e'16 cis'16~} \tuplet 5/4 {cis'16 d'16 e'16 f'16 g'16} a'16 c''16 b'16 a'16~ 
      | \tuplet 6/4 {a'16 aes'16 b'8 a'16 f'16~} \tuplet 6/4 {f'16 e'16 g'8 f'16 d'16} cis'16 e'16 d'16 c'16 b16 a16 g16 fis16 
      | f8 r8 r2.\bar  ".."
    }
    >>
>>    
}
