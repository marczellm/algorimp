\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Sweet Lorraine"
  composer = "Benny Carter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \major
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
      | g4:maj f4:7 e2:7 | a2:min7 d2:7 
      | g4:maj f4:7 e2:7 | a2:min7 d4:7 es4:dim | e2:min7 d4:min7 g4:7 | c2:7 b2:7 | e2:7 a2:7 | a2:min7 d2:7 | g4:maj f4:7 e2:7 | a2:7 d2:7 
      | g4:maj f4:7 e2:7 | a2:min7 d4:7 es4:dim | e2:min7 d4:min7 g4:7 | c2:7 b2:7 | e2:7 a2:7 | a2:min7 d2:7 | g2:6 c4:7 des4:dim | g2:6/d g4:7 des4:7 
      | c2:maj b4:min5-7 e4:7 | a4:min7 aes4:7 g4:min7 c4:7 | f2:7 e2:7 | a4:min7 aes4:7 g4:min7 c4:7 | f2:7 e2:7 | es2:11+.9 d2:7 | f2:7 e2:7 | es2:11+.9 d2:7 
      | g4:maj f4:7 e2:7 | a2:min7 d4:7 es4:dim | e2:min7 d4:min7 g4:7 | c2:7 b2:7 | e2:7 a2:7 | a2:min7 d2:7 | g4:6 f4:7 e2:7 | a2:7 d2:7 
      | g4:maj f4:7 e2:7|
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


      \tempo 4 = 92
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2 r8 d'8 g'16 b'16 c''16 gis'16 
      | b'16 a'16 e'16 gis'32\glissando  a'32 \tuplet 6/4 {g'16 fis'16 e'8 c'16 a16} d'4. b8 
      \bar "||" \mark \default \tuplet 6/4 {d'4 b16 d'16~} \tuplet 3/2 {d'8 c'8 a8} r4 r16 b16 gis8 
      | r4 \tuplet 5/4 {r8 c'16 e'16 g'16~} g'16 b'16 c''16 a'16 ais'16 b'16 fis'16 es'16 
      | b16 e'8. r4 b16 d'16 f'16 e'16 g'16 b'16 d''16 g''16 
      | e''4 \tuplet 5/4 {c''16 d''16 c''16 a'16 ais'16} b'8 r8 \tuplet 3/2 {r8 b'8 c''8} 
      | gis'16 b'8 gis'16~ \tuplet 6/4 {gis'16 d'16 e'16 b8 d'16} \tuplet 5/4 {cis'8 e'16 g'16 a'16~} a'32 b'16 cis''16 a'16 ais'32 
      | \tuplet 6/4 {b'8 c''8 g'16 fis'16} \tuplet 6/4 {e'8 c'16 ais8 gis16~} \tuplet 6/4 {gis16 a16 c'8 g16 f16} fis8 d'16 c'16 
      | b8 r8 r4 \tuplet 6/4 {r4 e'16 gis'16~} gis'32 b'16 d''16 e''32 f''32 e''32~ 
      | \tuplet 5/4 {e''16 c''16 g'16 e'16 c'16} \tuplet 5/4 {a8 aes16 g16 f16} fis16. b16 gis16 a32~ a16 b16 c'16 e'16 
      \bar "||" f'16 fis'16 b'16 a'16 d'16 b16 bes16 a16~ \tuplet 10/8 {a32 g8 gis8 d'32} e'4 
      | r4 \tuplet 10/8 {r8. c'32 des'32 c'32 a32~} a32 b16. d'16. ais32\glissando  \tuplet 6/4 {b8. a8 fis16} 
      | g8 b8 g8 r8 r4 \tuplet 6/4 {r16 g'8 e'16 f'16 a'16} 
      | e'4 \tuplet 6/4 {r8. d'16 e'16 fis'16} g'8 a'8 b'8 g'16 fis'16~ 
      | \tuplet 6/4 {fis'16 e'8 fis'16 d'16 e'16} b4 \tuplet 7/8 {r8 cis'16 e'32} \tuplet 3/2 {g'8 b'8 a'8} 
      | g'16 fis'16 a'16 c''16 \tuplet 6/4 {e''16 c''16 d''16 c''16 a'16 a'16} r4 \tuplet 5/4 {r8 a'16 b'16 c''16\glissando } 
      | \tuplet 6/4 {d''8 b'8 g'16 e'16~} e'32 cis'32 d'32 c'32 a32 d'16. \tuplet 7/8 {des'32 c'16 gis16 a32 c'32~} \tuplet 7/8 {c'32 a16 g16 d32 dis32~} 
      | dis16 a8 d16~ d8 r8 r4 r16 c'32 d'16 f'16 e'32~ 
      \bar "||" \tuplet 10/8 {e'16. g'16. a'16. b'32~} \tuplet 3/2 {b'8 d''8 c''8} \tuplet 10/8 {b'8 a'16. gis'16 b'32~} \tuplet 3/2 {b'8 e'8 d'8} 
      | \tuplet 3/2 {b8 c'8 e'8} r2. 
      | r16 a'16 b'16 c''16~ \tuplet 10/8 {c''32 a'16. e'32 d'32 es'32 d'32 b32 a32} \tuplet 6/4 {gis8 b8 e'16 f'16~} \tuplet 6/4 {f'16 e'16 f'16 gis'8 b'16~} 
      | b'16 d''16 e''16 c''16 r4 \tuplet 6/4 {c''16 d''16 c''16 b'16 bes'16 g'16} e'16. c'32\glissando  bes16 a32 gis32~ 
      | \tuplet 5/4 {gis16 a16 c'16 f'16 fis'16} g'4 r2 
      | r8 d'16 e'16~ \tuplet 3/2 {e'8 g'8 e'8} \tuplet 3/2 {g'8 e'8 b8} r4 
      | r4 a'16 b'16 c''16 d''16~ \tuplet 9/8 {d''16 c''16. b'16. gis'32~} gis'8 e'8~ 
      | e'8. e'16 a'16 b'16 aes'16 b'16 \tuplet 6/4 {a'8 fis'16 e'8 c'16~} \tuplet 6/4 {c'16 a16 g16 fis8 d'16} 
      \bar "||" b4~ \tuplet 3/2 {b8 b'8 ais'8~} ais'16 b'16 ais'16 b'16~ \tuplet 3/2 {b'8 ais'8 b'8~} 
      | \tuplet 6/4 {b'4~ b'16 fis'16~} \tuplet 5/4 {fis'16 a'16 b'16 c''16 d''16} b'16 bes'16 a'16 g'16 \tuplet 3/2 {fis'8 a'4~} 
      | \tuplet 6/4 {a'8 dis'16 e'8 fis'16} \tuplet 3/2 {g'8 a'8 b'8~} b'32 a'16 f'16 ais32 b32 c'32~ \tuplet 6/4 {c'16 b16 d'8 a16 aes16} 
      | \tuplet 3/2 {g8 c'8 e'8} r4 r8 fis'16 g'16 \tuplet 3/2 {a'8 b'8 g'8~} 
      | g'32 fis'16. e'16. b32 \tuplet 3/2 {bes8 a8 gis8} \tuplet 3/2 {b8 g8 cis'8} r4 
      | r8. d'16 e'16 g'16 fis'16 e'16 \tuplet 6/4 {d'16 c'16 a16 d'8 des'16} \tuplet 6/4 {c'8 aes16 g16 a16 d'16} 
      | \tuplet 3/2 {g'8 g'4} \tuplet 3/2 {g'4 e'8} g'16 b'8 g'16~ \tuplet 6/4 {g'16 fis'16 e'8. a16~} 
      | \tuplet 6/4 {a16 d'16 des'8 c'16 b16~} b16 ais16 gis16 a16 c'16 a16 aes16 g16 f16 fis16 a16 dis16 
      \bar "||" \mark \default a8 d4 r8 r2\bar  ".."
    }
    >>
>>    
}
