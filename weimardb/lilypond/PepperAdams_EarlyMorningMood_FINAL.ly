\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Early Morning Mood"
  composer = "Pepper Adams"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      
      | g1:7 | c2:7 cis2:dim7 | g1:7 | s1 | c1:7 | s1 | g1:7 | b2:min7 bes2:dim 
      | a1:min7 | d1:7 | g2:7 c2:7 | d1:7 | g1:7 | c2:7 cis2:dim7 | g1:7 | s2 s2 
      | c1:7 | s1 | g1:7 | c2:7 cis2:dim7 | e1:min7 | a2:min7 d2:7 | g2:7 c2:7 | d1:7 
      | g1:7|
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


      \tempo 4 = 60
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8.. g32~ \tuplet 6/4 {g16 ais16 b16 e'16 d'8} e16\glissando  f4.. 
      | dis16\glissando  e8. gis16\glissando  a16 g16 c16~ \tuplet 6/4 {c16 cis8. gis16 a16~} a8 g16 cis16 
      | ais,16 d16 r8 r8 e16 f16 g16 a16 c'16 e'16 \tuplet 5/4 {d'8 g16\glissando  a16 c'16} 
      | ais32\glissando  b8 g32 a32 f32 r4 \tuplet 10/8 {r16. d32 dis32 des32 c32 b,16 cis32} f16 g32 aes32 g32 f32 e32 g32 
      | \tuplet 6/4 {bes16 fis16\glissando  g4~} g32 g16 a16. d32 c32~ c8. g16 \tuplet 3/2 {bes8 c'16 r8.} 
      | r8. g16 \tuplet 6/4 {bes8. c'8 c'16\glissando } \tuplet 6/4 {des'16 c'16 bes16 g16 c'8} bes16 g8 f16 
      | fis16\glissando  g8. \tuplet 6/4 {ais16 cis'16 ais16 g16 d16 des16} \tuplet 6/4 {c4~ c16 g16~} \tuplet 10/8 {g16 a32 ais16 g16 d32 c32 cis32~} 
      | cis32 ais,32\glissando  b,8 d32 fis32 a16 e16 c8 d4 g16 f16 ais,16 b,32 dis32\glissando  
      | \tuplet 12/8 {e16 a,32~ a,4 d32~} \tuplet 6/4 {d16 b,8 c16 e16 g16} a16 b16 d'16 a16~ \tuplet 14/16 {a8~ a64 d'32 e'64 d'64 b64~} 
      | \tuplet 6/4 {b16 c'16 dis8 e16 g16~} \tuplet 10/8 {g32 b8 a16 g16 d32} dis4 \tuplet 6/4 {d'16 e'16 d'16 c'16 g'16 dis'16~} 
      | \tuplet 10/8 {dis'32 c'32\glissando  d'8. g32 g'32~} \tuplet 6/4 {g'8 d'16 b16 b16 g16} c'8.. g32~ \tuplet 6/4 {g16 bes16 c'16 bes16 g16 d16} 
      | \tuplet 9/8 {c32 d32 ais,32\glissando  b,8 d32 g32~} g8 e8 r4 e16 cis16 d16 e16 
      \bar "||" \mark \default f16 g16 a16 c'16 \tuplet 6/4 {dis'16\glissando  e'8. c'16 a16~} a32 f16. a,32 dis32 e32 d32 c16 b,16 r8 
      | r4 \tuplet 6/4 {d16 e16 d16 b,16 c16 d16} dis16 f16 g16 ais16 \tuplet 6/4 {c'16 d'16 ais16 d16 e16 ais16} 
      | \tuplet 6/4 {c'16 a16\glissando  b8. g16~} \tuplet 9/8 {g32 a16. f16 e16 d32} fis16\glissando  g16 r8 r4 
      | r16. e16 f32 a32 ais32~ \tuplet 12/8 {ais32 d'16\glissando  e'8.. d'32 c'32} \tuplet 10/8 {b32\bendAfter #+4  ais32 b8. bes32 a32} \tuplet 5/4 {aes8 g16 fis16 f16} 
      | \tuplet 6/4 {dis16 e8 bes16 g16 g16} e16 g16 bes8~ bes16. g16 bes16 c'32 \tuplet 5/4 {des'16 c'16 bes16 g16 c'16} 
      | bes16 g8 g16 \tuplet 3/2 {a8 a8 c8} r4 \tuplet 14/16 {g,32. des64~ des16 e16~ e64 cis64} 
      \bar "||" \mark \default d16 g16 d16 c16 \tuplet 6/4 {b,8. g,8 c16~} c16. g,8 es32~ \tuplet 5/4 {es16 d16 c16 fis16 gis16\glissando } 
      | \tuplet 5/4 {a8 aes16 g16 fis16} \tuplet 3/2 {d'8 b8 fis8} d16 f16 d16 e16 r4 
      | r8 b,32 gis,32 a,32 b,32 \tuplet 12/8 {c16 d16 e16 g32 b16 gis32 a32 b32} \tuplet 7/8 {c'32 d'32 e'32 fis'32 g'32 fis'32 d'32} \tuplet 12/8 {des'32 c'16 dis32 e32 g16 b32 c'16 gis32 b32~} 
      | \tuplet 14/16 {b64 a32. e64 g32 e64 fis32. e64 d64 des64~} \tuplet 10/8 {des32 c32 d32 e32 g16 a32\glissando  b32 g32 e32} \tuplet 9/8 {c16 e32 g32 ais32 cis'32\glissando  d'32 c'32 a32} es32 d8 b32 c'32 d'32 
      | \tuplet 6/4 {a16\glissando  b16 g8 g16 a16} r4 \tuplet 10/8 {d32 g16 bes32 c'32 c'32\glissando  des'32 c'32 bes32 g32} \tuplet 9/8 {bes32 c'16 bes16 des32 c32 g32 g32} 
      | \tuplet 7/8 {e16 g32 fis32 g32 g32\glissando  a32~} \tuplet 6/4 {a4~ a16 d16} des32 c32 d16 g32 b32 c'32 a32 g32 fis32 a32 e32 c32 d16 d32 
      \bar "||" \tuplet 6/4 {c16 a,16 b,16 g8.} r2.\bar  ".."
    }
    >>
>>    
}
