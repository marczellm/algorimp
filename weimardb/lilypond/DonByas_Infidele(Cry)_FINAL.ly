\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Infidele (Cry)"
  composer = "Don Byas"
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
      | c4:min7 r4 s4 s4 | f1:7 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes1:maj | bes1:maj | a2:min7 aes2:dim | g2:min7 d2:7/fis | g1:min7 | s1 | d2:min7 des2:dim | c2:min7 b2:dim7 
      | c1:min7 | f1:7 | bes2:maj aes2:7 | g1:7 | c1:maj | c1:min7 | f1:7 | c2:min7 f2:7 
      | bes1:maj | s1 | a2:min7 aes2:dim | g2:min7 ges2:dim | g1:min7 | s1 | d2:min7 des2:dim | c2:min7 b2:dim 
      | c1:min7 | f1:7 | bes2:maj aes2:7 | g1:7 | c1:min7 | f1:7 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes1:maj|
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


      \tempo 4 = 120
      \set Score.currentBarNumber = #-3
     
      \bar "||" \mark \default r8. g16~ \tuplet 6/4 {g16 fis8 g8 bes16~} bes16 d'16 f'16 es'16~ es'16 d'16 c'16 bes16 
      | g4.^\markup{\left-align \small vib} bes8~ \tuplet 3/2 {bes8 d'8 f'8} \tuplet 3/2 {d'4 bes8~^\markup{\left-align \small vib}} 
      | bes4 r4 \tuplet 3/2 {es'8\bendAfter #+4  f'4~} f'8. fis'16 
      | \tuplet 3/2 {g'8 es'8 d'8} \tuplet 3/2 {c'8 bes8 g8} \tuplet 3/2 {a4 f'8} des'4 
      \bar "||" \mark \default c'4..^\markup{\left-align \small vib} bes16~ bes8 f'4^\markup{\left-align \small vib} r8 
      | r4 r16 c''8 a'16 bes'8 a'16 g'16 \tuplet 3/2 {f'8 es'8 d'8} 
      | \tuplet 3/2 {c'8 bes8 a8} e'4. aes8~ aes16 e'8 g16~ 
      | g8 e'8 ges8^\markup{\left-align \small vib} r8 r4 \tuplet 6/4 {es'8 es'8. cis'16} 
      | d'4.^\markup{\left-align \small vib} r8 r8. des16~ des16\bendAfter #+4  es8\bendAfter #+4  c16 
      | d4~^\markup{\left-align \small vib} \tuplet 6/4 {d4~ d16 a16~} a16 fis16 g16 bes16~ \tuplet 6/4 {bes16 d'8 g'8 e'16} 
      | f'4^\markup{\left-align \small vib} r4 \tuplet 6/4 {r8. es'16 e'16 f'16} cis'8 f'8 
      | c'8 f'4 aes8\bendAfter #+4  bes4. aes8 
      \bar "||" g4.^\markup{\left-align \small vib} r8 r8. bes16~ bes8 d'8~ 
      | d'16 e'16\bendAfter #+4  f'16 es'16 g'8 bes'8 \tuplet 3/2 {a'8 c''8 g'8} es'4~^\markup{\left-align \small vib} 
      | es'8 r8 r8 c'16 d'16 f'16 d'16 es'16 f'16 g'4~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {g'16 fis'16 g'16 ges'16 f'8} d'8.^\markup{\left-align \small vib} c'16~ \tuplet 6/4 {c'16 bes16 b16 e'16 f'16 e'16} d'16 b16 gis16 f16 
      | e4^\markup{\left-align \small vib} r4 \tuplet 6/4 {r8 d''16 c''16 b'16 bes'16} g'16 fis'16 d'16 bes16 
      | \tuplet 5/4 {fis8\bendAfter #-4  e16 f16 a16} \tuplet 3/2 {cis'8 d'8 f'8} \tuplet 6/4 {e'16 f'16 e'16 des'8 c'16} bes16 aes16 g16 es16 
      | e16 g16 e16 fis16 g16 gis32 a16 c'32 d'32 es'32 \tuplet 3/2 {f'8 e'8 f'8} g'8 gis'8 
      | r4 a'8 c''8 g'8 es'8~ es'32 c'16. cis'16. d'32~ 
      \bar "||" \mark \default d'8 f'16 a'16 c''4 a'16 bes'8 g'16 es'8 c'8 
      | \tuplet 3/2 {d'4 f'8~^\markup{\left-align \small vib}} f'4 r4 \tuplet 3/2 {d'4 d'8~} 
      | \tuplet 3/2 {d'8 es'8\bendAfter #+4  e'8} fis'8. e'16 fis'16 e'4..~^\markup{\left-align \small vib} 
      | e'8 a16\bendAfter #+4  b16~ b8. a16 b16 a4..~^\markup{\left-align \small vib} 
      | a8 g8~ g8. a16 \tuplet 3/2 {bes8 c'8 d'8~} \tuplet 6/4 {d'16 es'8. cis'16 d'16~} 
      | d'8. g16~^\markup{\left-align \small vib} g2 aes4\bendAfter #+4  
      | bes4.^\markup{\left-align \small vib} f'8~ f'16 cis'8 a16~ a8 f8 
      | c'8 a8 f8 a16 b16 bes4^\markup{\left-align \small vib} r4 
      \bar "||" r8 es16\bendAfter #+4  fis16~ fis16 g16 bes16 d'16 f'8 es'8~ \tuplet 3/2 {es'8 g8 bes8} 
      | d'8 c'8 ges2~^\markup{\left-align \small vib} ges8 r8 
      | r8. f16~ \tuplet 3/2 {f8 cis8 d8~} d16 f8 a16~ \tuplet 6/4 {a16 c'4 bes16~} 
      | bes8 a8~^\markup{\left-align \small vib} a4.. fis16\bendAfter #+4  \tuplet 3/2 {g8 gis4} 
      | \tuplet 5/4 {fis16 g8 bes16 d'16~} d'16 es'8\bendAfter #+4  f'16~^\markup{\left-align \small vib} f'4. es'8~ 
      | es'16 d'8 es16~^\markup{\left-align \small vib} es4 r4 r8 ges8 
      | \tuplet 3/2 {e8 f8 a8} \tuplet 3/2 {c'4 f'8~} f'8 b8~^\markup{\left-align \small vib} \tuplet 6/4 {b4 g16\bendAfter #+4  bes16~} 
      | bes8 fis8 \tuplet 5/4 {g16 bes16 d'16 f'16 d'16} es'8.^\markup{\left-align \small vib} c'16~ c'32 des'16 a16 g16 es32 
      \bar "||" \mark \default d4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
