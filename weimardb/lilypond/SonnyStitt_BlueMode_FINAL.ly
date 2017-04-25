\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Mode"
  composer = "Sonny Stitt"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \major
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
      
      | bes1:7 | es2:7 e2:min5-7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s2 g2:7 
      | c1:min7 | f1:7 | bes2:7 f2:7 | b4:7 g4:7 c4:min7 f4:7 | bes1:7 | a2:min7 d2:min7 | g1:min7 | f1:7 
      | es1:7 | s1 | f1:7 | es2:7 g2:7 | c1:min7 | s2 f2:7 | bes1:7|
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


      \tempo 4 = 61
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default bes8 f16 c'16~ \tuplet 12/8 {c'8~ c'32 f32 bes16. c'16\glissando  d'32~} d'8 bes8 f'4 
      | \tuplet 11/8 {r8 es8 g32 bes32 c'32~} \tuplet 6/4 {c'16 des'8 bes16 c'16 des'16} \tuplet 6/4 {c'16 des'16 c'16 des'8.} \tuplet 10/8 {c'16. des'16 c'16 des'32 c'32 bes32} 
      | cis'16 d'16 f'8^\markup{\left-align \small vib} r4 r16 g'16 f'16 e'16 es'32 f'32 es'32 c'32 g'16 aes32 f32 
      | \tuplet 6/4 {d'16 es'16 d'16 c'16 bes16 g16~} \tuplet 10/8 {g32 aes16 c'32 es'32\glissando  fis'32 g'16 f'32\glissando  ges'32~^\markup{\left-align \small vib}} ges'8 d'16 c'16 \tuplet 10/8 {bes8 a'32\glissando  bes'16 b'32 bes'32 g'32} 
      | \tuplet 5/4 {f'8 bes16 c'16 des'16} \tuplet 3/2 {es'8\glissando  f'4~} \tuplet 10/8 {f'32 a'32 b'16\glissando  c''8 b'32 bes'32~} \tuplet 10/8 {bes'32 a'16. f'32 des'16.\glissando  c'32 g32} 
      | \tuplet 6/4 {c'16 des'16 c'16 bes16 c'16 des'16~^\markup{\left-align \small vib}} des'8 r8 r4 \tuplet 14/16 {r16.. f32 g64 a64 g64 bes64 c'64~} 
      | c'32 a32 bes32 c'32 cis'32 d'32 es'32 cis'32 d'16 f'32 g'32 a'32 c''32 bes'32 a'32 g'32 fis'32 g'32 bes'32 g'32 es'32 c'32 des'32 \tuplet 10/8 {e'32 a'32 g'32 f'32 d'32 es'32 f'32 es'32 d'32 es'32} 
      | f'4 \tuplet 6/4 {d'16 es'16 f'16 es'16 d'16 c'16~} \tuplet 5/4 {c'8 d'16 f'16 g'16\glissando } \tuplet 12/8 {aes'32 g'16 aes'32 g'32 d'16 e'32\glissando  f'16. es'32~^\markup{\left-align \small vib}} 
      | es'8.. g'32~ g'32 d'32 es'32 d'32 c'32 g16 es32 b4^\markup{\left-align \small vib} r4 
      | r8 r32 c'32 es'32 g'32 \tuplet 6/4 {bes'16 cis''16\glissando  d''16 c''16 bes'16 g'16} es'16 c'16 d'16 c'16~ c'32 f'32 g'32 f'32 des'32 a16 f32 
      | \tuplet 5/4 {bes8 f16 bes16 c'16} cis'16\glissando  d'16 c'16 bes16 d'16 es'8^\markup{\left-align \small vib} g'16 \tuplet 12/8 {f'8.^\markup{\left-align \small vib} d'16. f'32 g'32 a'32} 
      | bes'8 d'16 c'16~ c'32 b16 aes'32 g'32 aes'32 g'32 f'32 \tuplet 6/4 {es'8 bes16 cis'16 d'16 c'16\glissando } des'4~ 
      \bar "||" \tuplet 6/4 {des'16 bes'8 f'8 g'16} \tuplet 7/8 {a'32 bes'32 b'32\glissando  c''32 cis''32 d''32 bes'32~^\markup{\left-align \small vib}} bes'8 r8 r4 
      | r8 c''16 bes'16 a'32 bes'32 a'32 g'32 fis'16 a32 c'32 \tuplet 6/4 {es'8. d'8 aes16^\markup{\left-align \small vib}} d4 
      | \tuplet 5/4 {g8 a16 bes16 c'16} d'8^\markup{\left-align \small vib} r8 r8. fis'16\glissando  g'8 f'32 g'32 f'32 es'32 
      | d'16 c'16 bes16 g16 \tuplet 12/8 {aes16 c'16 es'32 g'32~ g'8 a'32\glissando  bes'32~} bes'16. fis'16 g'32 ges'32 d'32 c'8^\markup{\left-align \small vib} bes16 c'16~ 
      | c'32 des'8. bes32~ bes32 e'32 f'32 e'16 des'32 bes32 des'32 \tuplet 3/2 {es'8\glissando  f'8 bes'8} bes4^\markup{\left-align \small vib} 
      | des'8 bes16 des'16 \tuplet 6/4 {e'16 f'16 e'16 des'16 bes16 des'16} e'8 des'16 e'32 g'32 gis'16\glissando  a'16 g'16 f'16~^\markup{\left-align \small vib} 
      | f'8 r8 r8 r32 d'32 f'32 g'32 \tuplet 6/4 {a'16 c''8^\markup{\left-align \small vib} a'16 f'16 d'16} g'8^\markup{\left-align \small vib} r8 
      | r8 d'16 es'16 f'16 g'16 aes'16 bes'16\glissando  b'8 d''16 g'16~^\markup{\left-align \small vib} g'16. f'16 g'32 f'32 d'32~ 
      | \tuplet 10/8 {d'32 es'16 g16 c'16. es'32 d'32} \tuplet 6/4 {es'16 d'16 c'16 b16 d'16 c'16~} \tuplet 6/4 {c'16 bes8 a16 c'16 es'16} \tuplet 3/2 {fis'8\glissando  g'8 d'8} 
      | r4 \tuplet 20/16 {r16 a32 bes32 b32 c'64\glissando  cis'64 d'32 es'64 f'64 g'64 a'64 b'64 c''64} \tuplet 6/4 {cis''16 d''16 a'8 g'16 f'16~^\markup{\left-align \small vib}} f'8. g'32 a'32 
      | bes'4~ bes'32 aes'32 bes'32 aes'32 g'16 f'32 es'32~ \tuplet 6/4 {es'16 cis'16\glissando  d'16 bes16 f16 es16~^\markup{\left-align \small vib}} es8 f16 cis16 
      | d4^\markup{\left-align \small vib} \tuplet 3/2 {f4 bes8~^\markup{\left-align \small vib}} bes4. r8\bar  ".."
    }
    >>
>>    
}
