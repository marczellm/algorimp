\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Down Under"
  composer = "Wayne Shorter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key fis \minor
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
      | ges1:min7 | b2:min5-7 e2:7 | a1:min | s1 
      | ges1:min7 | aes2:min5-7 des2:7 | ges1:min7 | s1 | g1:7 | s1 | ges1:min7 | e2:min7 a2:7 
      | d1:7 | des1:7 | ges1:min7 | des1:7 | ges1:min7 | s1 | s1 | s1 
      | g1:7 | s1 | ges1:min7 | e2:min7 a2:7 | d1:7 | des1:7 | ges1:min7 | des1:7 
      | ges1:min7|
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


      \tempo 4 = 147
      \set Score.currentBarNumber = #-3
     
      \bar "||" \mark \default r16 b'16\bendAfter #+4  c''8~ \tuplet 6/4 {c''8 b'16 a'16 g'16 f'16~} \tuplet 7/8 {f'16 d'16 f'32 g'32 a'32} \tuplet 6/4 {b'16 c''16 b'4} 
      | r4 r16 ais'16\bendAfter #+4  b'8~ \tuplet 5/4 {b'8 b'16 a'16 gis'16~} \tuplet 10/8 {gis'32 fis'16 f'16. d'16 b32 cis'32~} 
      | cis'16 b16 a8~ \tuplet 6/4 {a8. b16 c'16 cis'16} \tuplet 6/4 {e'16 gis'8 fis'16 e'16 d'16~} \tuplet 6/4 {d'16 cis'8 b16 a16 gis16~} 
      | gis16 fis16 e16 cis16 a,4 r2 
      \bar "||" \mark \default gis'16 fis'16 e'16 d'16 cis'16 b16 cis'16 e'16~ \tuplet 6/4 {e'16 gis'16 fis'16 e'8 d'16} cis'16 b16 a8 
      | r4 r16 ais'16\bendAfter #+4  b'8~ b'16 bes'16 a'16 gis'16 fis'16 f'16 d'16 cis'16 
      | \tuplet 6/4 {b16 bes16 a8 gis16 g16} fis8 r8 r2 
      | r4 \tuplet 6/4 {r16 e8 f16 g16 a16~} \tuplet 6/4 {a16 b8 c'16 d'16 e'16~} \tuplet 6/4 {e'16 fis'16 a'8 gis'16 g'16~} 
      | \tuplet 6/4 {g'16 fis'16 f'8 e'16 d'16~} \tuplet 6/4 {d'16 c'16 b16 c'8 d'16} \tuplet 6/4 {e'16 f'8 d'16 a16 g16} f16 c'8. 
      | r4 \tuplet 6/4 {c'8 e'16 d'16 d'16 c'16} b16 c'16 d'16 e'16 \tuplet 5/4 {g'8 e'16 f'16 g'16} 
      | \tuplet 3/2 {fis'8 d'8 b8} g16 dis'16 cis'16 b16 gis16 b8. r4 
      | r16 e16 fis16 g16~ \tuplet 6/4 {g16 a16 b16 cis'16 d'16 e'16~} \tuplet 6/4 {e'16 fis'8 d'16 b16 g16~} \tuplet 6/4 {g16 e'16 cis'8 a16 fis16} 
      | \tuplet 3/2 {a8 f8 g8} \tuplet 6/4 {a16 b8 c'16 dis'16 f'16} a'16 gis'16 g'16 fis'16 f'16 e'16 d'16 c'16 
      | b16 cis'16 d'16 es'16 fis'16 es'16 b16 gis16 \tuplet 6/4 {f16 bes16 gis16 g8 bes16} \tuplet 6/4 {gis16 g16 fis16 f16 e16 cis16} 
      | b,4 r2. 
      | r4 \tuplet 10/8 {r8. a'16 ais'32 b'32~} b'4. gis'8~ 
      \bar "||" \mark \default \tuplet 6/4 {gis'16 ais'16 c''16 cis''8.~} cis''2.~ 
      | cis''2 \tuplet 3/2 {fis'4 fis'8~} fis'8 dis''8 
      | dis''4. gis'8 cis''8 r8 r4 
      | r2. e''8. e''16~ 
      | e''4. g'8~ \tuplet 6/4 {g'16 ais'16 c''16 d''4.} f'8 
      | g'16 b'16 c''16 e'16~ e'16 b'8 e'16 a'16 fis'16 g'8 \tuplet 5/4 {b16 e'8 a16 d'16~} 
      | d'16 fis16 c'8 fis8 r8 r2 
      | r4 e'16 fis'16 g'16 a'16 \tuplet 5/4 {b'8 d''16 cis''16 b'16~} b'16 a'16 g'16 fis'16 
      | \tuplet 5/4 {f'16 e'16 d'16 c'16 gis16} f16 a16 gis8~ gis8. d'16 \tuplet 6/4 {g'16 bes'16 a'16 gis'16 g'16 g'16} 
      | fis'16 f'32 e'16 f'32 es'32 d'32~ \tuplet 6/4 {d'16 cis'16 c'16 b8 cis'16} \tuplet 6/4 {es'8 g'16 gis'16 es'8} fis'16 es'16 b8 
      | r2 f'16 e'16 es'16 d'16 cis'16 c'16 b16 gis16 
      | bes4 gis16 g16 bes16 gis16 \tuplet 3/2 {g8 f4} \tuplet 3/2 {f4 cis8} 
      \bar "||" \mark \default c16 bes,16 a,8 a,8 a,8 r2\bar  ".."
    }
    >>
>>    
}
