\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "It's Only a Papermoon"
  composer = "Coleman Hawkins"
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
      | r1 
      | f2:6 d2:7 | g2:min7 c4:7 r4 | g2:min7 c4:7 r4 | f1:6 | f2.:7 r4 | bes2:6 g2:min5-7 | c1:7 | f2:6 c2:7 
      | f2:6 d2:7 | g2:min7 c2:7 | g2:min7 c2:7 | f1:6 | f1:7 | bes2:6 g2:min5-7 | c1:7 | f1:6 
      | bes2 b2:dim | f2:/c d2:7 | g2:min7 c2:7 | f2:6 f2:7 | bes2 b2:dim | f2:/c d2:7 | a2:min5-7 d2:7 | g2:min7 c2:7 
      | f2:6 d2:7 | g2:min7 c2:7 | g2:min7 c2:7 | f1:6 | f1:7 | bes2:6 g2:min5-7 | c1:7 | f1:6|
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


      \tempo 4 = 134
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 \tuplet 3/2 {r8 b,8 des8} es16 f16 ges16 aes16 
      \bar "||" \mark \default \tuplet 6/4 {bes16 c'8 d'16 dis'16 e'16} \tuplet 6/4 {ges'16 gis'8 a'16 bes'16 c''16} r2 
      | r4 \tuplet 3/2 {bes'8 c''8 a'8} g'4 f'16 ges'16 f'16 d'16 
      | \tuplet 3/2 {f'4 d'8~} \tuplet 6/4 {d'8. g8 c16~} c16 f16 g16 gis16 a16 a16 c'8 
      | g4~ g16 d8 f16~ f8 r8 r4 
      | r8 f16 g16 a16 bes16 c'16 d'16 dis'16 e'16 f'4 es'8 
      | \tuplet 3/2 {c'8 d'8 f'8} \tuplet 3/2 {d'8 c'8 g8~} g8 r8 r4 
      | r8 f8 \tuplet 3/2 {d8 dis8 e8} \tuplet 3/2 {des'8 c'8 bes8} a8. c'16~ 
      | c'8 e'8 \tuplet 3/2 {e'8 es'8 c'8~} c'8 r8 r4 
      \bar "||" r4 \tuplet 6/4 {c'16 d'8 g'16 gis'16 a'16~} \tuplet 5/4 {a'16 e'16 d'16 c'16 g'16~} \tuplet 6/4 {g'16 f'16 e'8 d'16 c'16~} 
      | \tuplet 6/4 {c'16 bes16 g8 f16 bes16~} \tuplet 6/4 {bes16 g16 a8 bes16 c'16} \tuplet 3/2 {e'8 g'8 e'8} \tuplet 6/4 {f'16 d'8 g16 f16 e'16~} 
      | e'16 c'16 g8 r4 r8 bes8 a8 g8 
      | \tuplet 6/4 {f16 ges16 f16 e8.} \tuplet 3/2 {g4 e8} f16. g32 a16 b32 c'32~ c'16 cis'16 d'16 es'16~ 
      | es'16 c'16 g16 f16 \tuplet 5/4 {d'16 des'16 c'16 bes16 a16~} a4 f'8 es'8 
      | d'8. f16 a8 g4.^\markup{\left-align \small vib} r4 
      | r8 f8 \tuplet 3/2 {d8 dis8 e8} \tuplet 3/2 {des'4 c'8~} c'16 bes8 gis16 
      | a4~ \tuplet 5/4 {a16 f'16 ges'16 e'16 c'16} e'8 c'4 r8 
      \bar "||" \tuplet 6/4 {r8. f'8 es'16~} es'16 cis'16 d'8 \tuplet 3/2 {f'8 g'8 gis'8} \tuplet 3/2 {d'8 c'8 b8~} 
      | b4 ges'16 aes'16 ges'16 e'16 f'8 c'16 bes16 a4~ 
      | \tuplet 6/4 {a4 e16 f16~} f8 d8 c'8 bes8 g16 a8.~ 
      | a8 e8~ e2 r4 
      | r8 d8 c16 d16 f8 c'8 a16 f16~ f8 fis8 
      | gis8 d8 \tuplet 6/4 {f8 aes8 b16 d'16} e'8 f'8 r4 
      | r8 a8 des'8 e'8 \tuplet 3/2 {cis'4 a8} cis'8 dis'8~ 
      | dis'8 e16 g16 c'16 cis'16 d'16 es'16~ \tuplet 3/2 {es'8 des'8 g'8} \tuplet 5/4 {f'16 e'16 f'16 e'16 des'16} 
      \bar "||" \tuplet 3/2 {c'8 bes8 a8} r4 r8 c'4.~ 
      | \tuplet 6/4 {c'8. gis16 a16 bes16~} \tuplet 3/2 {bes8 c'8 a8} g4 r4 
      | r8 c8~ c16. e16 f32 a32 c'32~ c'16 a16 d16 e16~ \tuplet 6/4 {e8 a8 aes16 g16~} 
      | g16 ges16 f16 e16 es4. f'4. 
      | es'8 f'8~ f'16 cis'16\glissando  d'16 f'16 c'4 f8 c'8 
      | des'4 bes8 a16 g16~ g4 \tuplet 3/2 {f4 dis8} 
      | e8 des'8 c'8 bes8 \tuplet 3/2 {a4 e8} \tuplet 3/2 {f8 aes8 c'8} 
      | f'4 es'8 c'4. r4\bar  ".."
    }
    >>
>>    
}
