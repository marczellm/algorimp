\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "D.B. Blues"
  composer = "Lester Young"
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
      | s2. r4 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | s1 | s1 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | s1 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | g1:7 | c1:min7 | f1:7 | bes1:7|
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


      \tempo 4 = 151
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. f8 g8 
      \bar "||" \mark \default bes4 r2. 
      | r4 \tuplet 6/4 {r8 e8 g16 bes16~} \tuplet 6/4 {bes16 cis'4 d'16~} \tuplet 6/4 {d'4 cis'16 d'16} 
      | \tuplet 3/2 {bes4 f8~} f16 cis8 d16 \tuplet 3/2 {f4 bes8~^\markup{\left-align \small vib}} bes8 r8 
      | r2 r8. fis16 g8. bes16 
      | \tuplet 3/2 {des'4 es'8~} es'16 f'8 ges'16 f'16 es'8 bes16 des'4 
      | es'4..^\markup{\left-align \small vib} es'16 e'8 f'8~^\markup{\left-align \small vib} f'8. es'16 
      | cis'4 \tuplet 6/4 {d'4~ d'16 bes16} f4^\markup{\left-align \small vib} r4 
      | r4 a'8 f'8 d'8 gis'8 aes8. g16~ 
      | g8. es'16~^\markup{\left-align \small vib} es'4. g8 \tuplet 3/2 {ges4 e8~} 
      | e8 f16 d16 es8. d16~ d16 es8 f16 ges4~ 
      | ges16 f8 aes16 bes2~^\markup{\left-align \small vib} bes8. g16 
      | f8. bes16 g4 r4 r8. f16 
      \bar "||" \tuplet 3/2 {g8 bes8 cis'8} d'4 r2 
      | r4 \tuplet 7/8 {r16 f16 g16 bes32} des'4 des'8. des'16~ 
      | des'8 c'4 c'4.^\markup{\left-align \small vib} \tuplet 3/2 {bes8 aes4} 
      | bes16 c'8. g4 bes4^\markup{\left-align \small vib} r4 
      | r16 f16 ges16 f16 es16 f8.~ f8 es8 f16 g16 f16 es16~ 
      | \tuplet 6/4 {es16 f16 g16 f8 es16~} es16 aes16\glissando  bes8~^\markup{\left-align \small vib} bes4.. f16~ 
      | f8 des8~ des16 es8 e16 f8. bes16 r4 
      | r2 r8. bes16~ bes8 cis'8~ 
      | \tuplet 6/4 {cis'16 d'4 es'16~} es'8. es'16~ es'8\glissando  f'4.~^\markup{\left-align \small vib} 
      | f'16 d'8 es'16~ es'16 f'8 ges'16~ \tuplet 3/2 {ges'8 f'8 es'8} \tuplet 3/2 {cis'4 d'8} 
      | bes8 f8~ f16 d8 es16~ es16 cis16 d8 es4 
      | e16 f8 bes16~^\markup{\left-align \small vib} bes4 r4 r16 d'8 d'16~ 
      \bar "||" d'8 d'8 r2 r8. d'16~ 
      | \tuplet 6/4 {d'16 e'8 f'16 gis'16 b'16} cis''16 d''8 b'16~^\markup{\left-align \small vib} b'2 
      | d'8 r8 r2 r8 d'8~ 
      | d'16 f'16 gis'16 b'16 cis''16 d''8. g'4..^\markup{\left-align \small vib} a'16~ 
      | a'8. d'16~^\markup{\left-align \small vib} d'4 c'4 g4~^\markup{\left-align \small vib} 
      | g4. f8 e8. g16 d'8. c'16 
      | r2 d16 es8 f16~ f8 ges8~ 
      | ges4 es16 f8.^\markup{\left-align \small vib} r2 
      \bar "||" \tuplet 3/2 {c'8 des'8 des'8} des'4 des'4..^\markup{\left-align \small vib} des'16 
      | des'4 des'4 \tuplet 3/2 {des'4 des'8} des'4 
      | \tuplet 3/2 {des'4 des'8} des'4 \tuplet 3/2 {des'4 des'8~} des'8 des'8 
      | des'4 c'8. c'16~^\markup{\left-align \small vib} c'4~ \tuplet 3/2 {c'8 g8 bes8} 
      | \tuplet 6/4 {d'8 es'8.\glissando  f'16~} f'4~ \tuplet 6/4 {f'16 es'4 f'16~^\markup{\left-align \small vib}} f'4 
      | es'8 r8 r2 r8. cis'16~ 
      | cis'16 d'8 f'16~ f'8. bes'16~^\markup{\left-align \small vib} bes'2 
      | g'8 f'8~ f'16 d'8 bes16~ bes16 a8 d'16~ d'16 a8 g16~^\markup{\left-align \small vib} 
      | g4. d16 es16~ \tuplet 5/4 {es16 f8. ges16~} ges8 f16 es16 
      | f2^\markup{\left-align \small vib} es8. ges16 c4 
      | ges16 bes4.^\markup{\left-align \small vib} g16 bes8 r8 r8. bes16~^\markup{\left-align \small vib} 
      | bes4~ bes16 g16 bes16 cis'16 \tuplet 3/2 {d'4 es'8~} es'16 cis'8 d'16\bar  ".."
    }
    >>
>>    
}
