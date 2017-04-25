\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Rondo a la Turk"
  composer = "Paul Desmond"
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | a2:min7 d2:7 | g2:min7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | a2:min7 d2:7 | g2:min7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f2:7 d2:7 | g2:min7 c2:7 
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


      \tempo 4 = 117
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8. f'16 c''8 b'8 
      | bes'8 f'8 \tuplet 3/2 {aes'8 bes'8 b'8~} \tuplet 5/4 {b'16 bes'16 b'16 bes'16 aes'16~} aes'16 f'8 f'16~^\markup{\left-align \small vib} 
      | f'4.. g16 es'4.^\markup{\left-align \small vib} r8 
      | r2 \tuplet 6/4 {r4 c'16 d'16} g'8 bes'8~ 
      | \tuplet 3/2 {bes'8 b'8 c''8~} c''4~ \tuplet 6/4 {c''16 bes'8 c''16 bes'16 aes'16} f'8 f'8~^\markup{\left-align \small vib} 
      | f'4~ f'16 d'8 f'16 r2 
      | r8. a16~ a16 d'8 g'16 c''4~^\markup{\left-align \small vib} \tuplet 6/4 {c''16 f''4 c''16} 
      | r2 r8. d''16~ d''16 a'8 c''16 
      | bes'8 f''8~ \tuplet 5/4 {f''16 a'16 bes'16 a'16 f'16} g'8 c''8 a'8 r8 
      | r2 \tuplet 6/4 {r4 c'16 d'16} f'16 g'16 bes'16 a'16~ 
      | a'16 f'8 c'16~ c'16 d'8 es'16~^\markup{\left-align \small vib} es'4 \tuplet 3/2 {fis'8 a'8 c''8} 
      | \tuplet 3/2 {bes'8 d''8 f''8} a'16 bes'16 a'16 g'16 a'8 r8 r4 
      \bar "||" \mark \default r2 r16 g''16 aes''8 \tuplet 3/2 {g''8\glissando  aes''4} 
      | f''4~^\markup{\left-align \small vib} f''16 es''16 es''16 c''16~ \tuplet 6/4 {c''16 bes'8 c''16 bes'16 a'16} f'8 f'8~^\markup{\left-align \small vib} 
      | f'4 r2 \tuplet 6/4 {c'16 fis'16 g'8 a'8~} 
      | \tuplet 6/4 {a'16 bes'8 c''16 bes'16 a'16~} a'16 c''8 b'16 bes'8 a'8 g'16 aes'8 d'16~^\markup{\left-align \small vib} 
      | d'4.. aes16 d'4^\markup{\left-align \small vib} r4 
      | r4 r16 aes16 d'16 aes'16 d''8 r8 r4 
      | r4 r16 g16 d'16 g'16 d''8 r8 r8. aes16 
      | g8 d'8 \tuplet 3/2 {g'8 d''8 fis'8} d''8. fis16 d'8 fis'8 
      | d''4^\markup{\left-align \small vib} f'8 r8 r2 
      | r2. r8 f'16 g'16 
      | gis'16 a'16 bes'16 b'16 c''8 f''16 dis''16~ dis''8 c''8 c''16 bes'16 r8 
      | r4 \tuplet 6/4 {r8. d'16 f'16 f'16} a'16 a'16 c''16 c''16 \tuplet 6/4 {bes'16 c''16 bes'16 a'8.} 
      \bar "||" \mark \default f'4.^\markup{\left-align \small vib} r8 r4 \tuplet 3/2 {f'8 g'8 aes'8} 
      | f'1~^\markup{\left-align \small vib} 
      | f'16 g'16\glissando  aes'8~ aes'16 g'16 aes'16 g'16~^\markup{\left-align \small vib} g'4 r4 
      | r4 \tuplet 5/4 {f'8 g'16 aes'16 bes'16} b'8\glissando  c''8 \tuplet 3/2 {b'8\glissando  c''4} 
      | c''16 b'16 aes'16 f'16 f'4 d'4 g4 
      | r4 \tuplet 6/4 {r16 g16 aes8. d'16} g'8 e'8 r4 
      | r8 a16 c'16 f'16 g'16 a'16 bes'16 \tuplet 6/4 {a'16 bes'16 a'16 g'8.} c''8 f'16 g'16~^\markup{\left-align \small vib} 
      | g'4 r4 c'16 d'16 dis'16 fis'16 \tuplet 3/2 {a'8 c''8 es''8} 
      | d''4 e''16 f''16\glissando  r8 r4 f''16 e''16 es''16 d''16~ 
      | \tuplet 6/4 {d''16 gis'16 a'8 bes'16 b'16~} \tuplet 6/4 {b'16 c''16 a'8 f'16 d'16} g4 r4 
      | r4 \tuplet 6/4 {c''8 d''16 c''16 b'16 bes'16} gis'16 a'16 bes'16 b'16 c''16 cis''16 d''16 bes'16 
      | g'16 a'16 bes'16 b'16 c''8 r8 \tuplet 6/4 {r4 r16 g''16\glissando } \tuplet 3/2 {aes''8 g''8\glissando  aes''8} 
      \bar "||" \mark \default f''2^\markup{\left-align \small vib} es''16 es''16 c''16 c''16~ \tuplet 6/4 {c''16 b'8 bes'8 f'16~} 
      | f'8 g'8 f'4~^\markup{\left-align \small vib} \tuplet 5/4 {f'16 f'16 g'16 aes'16 bes'16~} bes'16 b'16 bes'16 aes'16~ 
      | \tuplet 6/4 {aes'16 f'4^\markup{\left-align \small vib} c'16~} c'8 f'8 r2 
      | r8 f'16 a'16 des''16 a'16 f'16 des'16 a4~ a16 des'16 f'8 
      | \tuplet 3/2 {ges'8 a'4} g'16 f'16 d'16 a16~ \tuplet 5/4 {a16 bes16 d'16 f'16 g'16~} g'4 
      | ges'8\glissando  aes'8~ \tuplet 6/4 {aes'16 g'16 f'8 d'16 g16~} \tuplet 5/4 {g16 aes16 b16 d'16 fis'16} g'4 
      | r8 g'32 ges'32 aes'32 g'32 f'16 d'16 a8 r8. g16 r4 
      | r8 a16 bes16 \tuplet 3/2 {c'8 d'8 es'8~} es'16 d'16 c'16 fis'16~ \tuplet 5/4 {fis'16 a'16 d''16 gis'16 a'16} 
      | bes'16 b'16 c''16 cis''16 \tuplet 6/4 {d''8 aes'16 bes'16 a'16 f'16} d'4 r4 
      | r8. a16 \tuplet 6/4 {bes16 c'8. a16 bes16~} bes16 c'16 des'8 c'4~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {c'16 a16 bes16 c'8 d'16} r4 r8 c'16 d'16 \tuplet 6/4 {dis'8 cis'16 d'16 fis'16 a'16} 
      | c''8 a'8 bes'4^\markup{\left-align \small vib} a'16 bes'16 a'16 f'16~ f'16 es'16 c'16 bes16 
      \bar "||" \mark \default \tuplet 3/2 {g8 a8 f'8~} f'4 r2\bar  ".."
    }
    >>
>>    
}
