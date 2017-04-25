\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Night And Day"
  composer = "Ben Webster"
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
      
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim | e1:min7 | a1:7 | d1:maj | s1 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim | e1:min7 | a1:7 | d1:maj | c1:7 
      | f1:maj | s1 | d1:maj | s1 | f1:maj | s1 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim | e1:min7 | a1:7 | d1:6 | e2:7 a2:7 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim | e1:min7 | a1:7 | d1:maj | s1 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim | e1:min7 | a1:7 | d1:maj | c1:7 
      | f1:maj | s1 | d1:maj | s1 | f1:maj | s1 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim | e1:min7 | a1:7 | d1:6 | e2:7 a2:7|
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


      \tempo 4 = 182
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 f8 a2.^\markup{\left-align \small vib} 
      | r2 r8 b4.\glissando  
      | \tuplet 6/4 {cis'4~ cis'16 b16~} b8 a4 fis4 f8 
      | fis4 r2. 
      | r8 a8 bes8 c'4 g'8 \tuplet 3/2 {f'4 d'8} 
      | e'4.^\markup{\left-align \small vib} d'8 cis'4 \tuplet 3/2 {b4 cis'8~} 
      | cis'8 b8 a4 \tuplet 3/2 {d'4 b8~^\markup{\left-align \small vib}} b8 r8 
      | r2 r8 a8 \tuplet 3/2 {b4 d'8} 
      \bar "||" f'8 fis'8 f'8 fis'4 d'8 \tuplet 3/2 {b4 f8} 
      | f'4 d'8. e'16~^\markup{\left-align \small vib} e'4 r4 
      | r4 r8 e16 f16 fis8 a8 b8 cis'8 
      | e'4 es'8 d'8~^\markup{\left-align \small vib} d'8. cis'16~ cis'8 e'8~ 
      | e'8 fis'8 a8. a16~^\markup{\left-align \small vib} a4 r4 
      | r2 a'8. a'16~ a'8 a'8~ 
      | a'4. d'4 d'4 cis'8 
      | d'4^\markup{\left-align \small vib} r2 r8 a8 
      \bar "||" \tuplet 3/2 {bes4 c'8} d'8 g'8 f'16 g'16 f'16 d'16 \tuplet 3/2 {bes4 g8} 
      | a8. gis16~ gis8 f'4 g4 e'8 
      | d'4 b4 b4^\markup{\left-align \small vib} r4 
      | r2 r8 a4\glissando  a8~ 
      | a8\glissando  a8~^\markup{\left-align \small vib} a2 r4 
      | r2 \tuplet 3/2 {g4 gis8} a4 
      | g8 a8 e8 f8 \tuplet 3/2 {fis4 d'8~^\markup{\left-align \small vib}} d'4 
      | a16 b16 a16 e'16~ e'8 d'4.^\markup{\left-align \small vib} a4 
      \bar "||" d'4 r2 r8 b8 
      | \tuplet 3/2 {d'4 fis'8~} fis'8\glissando  d'4.^\markup{\left-align \small vib} \tuplet 3/2 {b4 a8~} 
      | a16 b'8 a'16 fis'8 d'8 d'4^\markup{\left-align \small vib} b4 
      | e'4. d'8 e'16 d'16 aes4 e'8~ 
      | e'16 d'16 e'16 d'16 g4 r4 r8 gis8 
      | \tuplet 3/2 {b4 d'8~} d'8. c'16 cis'8 e'4.^\markup{\left-align \small vib} 
      | d'8. b16 e8 f8 \tuplet 3/2 {fis4 a8} d'4^\markup{\left-align \small vib} 
      | r1 
      \bar "||" r8. b16~ b4\glissando  \tuplet 3/2 {c'4 c'8~} c'4 
      | c'2^\markup{\left-align \small vib} bes16 c'8 cis'16 d'4 
      | bes8. g16~ g8 gis4 a4.^\markup{\left-align \small vib} 
      | r2 r8 gis4 ais8 
      | c'4 \tuplet 3/2 {g'4 fis'8} f'8 d'8 \tuplet 6/4 {c'4~ c'16 c'16~} 
      | c'8 bes8 g4 \tuplet 3/2 {a4 f'8~^\markup{\left-align \small vib}} f'4 
      | e'4 g'8. fis'16~ fis'8 d'8 a8 r8 
      | r2 r8 e'4 f'8 
      \bar "||" fis'8 f'8 \tuplet 3/2 {fis'4 f'8} \tuplet 3/2 {fis'4 d'8~} d'4 
      | f'4 d'8. e'16~^\markup{\left-align \small vib} e'4 r4 
      | r4 r8 fis'8~ fis'8.\glissando  a'16 \tuplet 3/2 {b'4 a'8} 
      | \tuplet 3/2 {b'4 a'8~} a'8 f'4 e'8~ e'8. d'16~ 
      | d'8. a'16~ a'8 fis'8~ fis'16 e'8 a16~ a8 a8~ 
      | a8 r8 r4 r8 a8 d'8. d'16~^\markup{\left-align \small vib} 
      | d'4 b4 d'4^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" \mark \default r4 r8 a'4.\glissando  a'8.\glissando  a'16~ 
      | a'8\glissando  a'4\glissando  a'4\glissando  a'8 \tuplet 3/2 {a'4\glissando  a'8~} 
      | \tuplet 3/2 {a'8 g'8 d'8~} d'8 g'8~ g'16 fis'8 d'16~ d'8 b8 
      | d'2^\markup{\left-align \small vib} b8 r8 r4 
      | r2 gis'2\glissando  
      | a'4 a8 d'4. cis'8. b16 
      | e'8 d'8~ d'8. fis'16~ fis'8\glissando  a'4 g'8 
      | \tuplet 6/4 {cis'4~ cis'16 b16~} b8 b4 d'8~ \tuplet 6/4 {d'16 f'8 fis'8 a16~} 
      \bar "||" a4 gis4 fis'8 r8 r4 
      | aes4 g8. f'16~ f'4\glissando  e'8. d'16 
      | \tuplet 3/2 {e'4 d'8} d'4 d'4^\markup{\left-align \small vib} r4 
      | r2 b8. cis'16~ cis'8 e'8~ 
      | e'4~ e'16 e'16 d'16 b16 e'4 e'8 d'16 b16 
      | e'4 \tuplet 3/2 {e'8 d'8 a8~} a8 g8~ \tuplet 6/4 {g16 fis4 e16~} 
      | e8. fis16~ fis8 d8 r2 
      | r8 e8 \tuplet 3/2 {fis4 a8} e'8 d'4. 
      \bar "||" bes8 r8 r8. c'16 \tuplet 3/2 {d'4 g'8} \tuplet 3/2 {f'4 d'8} 
      | e'4^\markup{\left-align \small vib} r2 \tuplet 6/4 {r4 r16 a16~} 
      | \tuplet 3/2 {a8 b8 cis'8~} cis'4 cis'2 
      | cis'8. a16 \tuplet 3/2 {e'4 cis'8~} \tuplet 6/4 {cis'16 d'4 a16~} a8 f8~ 
      | f8 r8 r2. 
      | r8 e4 es16 d16 cis4 \tuplet 3/2 {e4 g8~} 
      | g8 d'4\glissando  a8 d'4^\markup{\left-align \small vib} b8 a8 
      | r2 r8. b16~ b4~ 
      \bar "||" b16\glissando  d'8 f'16 fis'4 \tuplet 3/2 {cis'8 a4} gis4~ 
      | gis8 f'8~ \tuplet 6/4 {f'16\glissando  d'4 e'16~^\markup{\left-align \small vib}} e'4 r4 
      | r2 r8 a'4 b'8 
      | \tuplet 3/2 {c''8 b'8 a'8} b'4~^\markup{\left-align \small vib} b'16 bes'16 g'16 f'16 e'8 d'16 e'16~^\markup{\left-align \small vib} 
      | e'4. a8 \tuplet 3/2 {b4 d'8} f'4 
      | fis'4 r4 \tuplet 5/4 {a4 g'16~} g'8 fis'8~ 
      | fis'8 d'8~ \tuplet 6/4 {d'4~ d'16 d'16~} d'4 a4 
      | r2 r8. c'16~ c'4~ 
      \bar "||" c'4\glissando  g'8 f'4.^\markup{\left-align \small vib} d'8. c'16 
      | e'8 d'8 \tuplet 3/2 {c'4 a8~} a4 r4 
      | r2 a2~ 
      | a4.. aes16 g16 fis8 a16~ a8 r8 
      | r4 e4 f2^\markup{\left-align \small vib} 
      | a4 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} f'4 r4 
      | r2 e'8. fis'16~ fis'8.\glissando  a'16~^\markup{\left-align \small vib} 
      | a'4.. fis'16~ fis'16 e'8 d'16~ d'16 a8 d'16~ 
      \bar "||" d'8. fis'16~ fis'4\glissando  fis'16 f'8 d'16~ d'8 r8 
      | r8 f'8 r2. 
      | r8. a16~ a4\glissando  e'8. e'16~ e'8 d'8 
      | e'4 es'8 d'4 r8 r8. cis'16~ 
      | cis'4 cis'8 e'4 a4 r8 
      | r2 \tuplet 3/2 {b4 d'8~} d'8 d'8~^\markup{\left-align \small vib} 
      | d'2 ais8 r8 r4 
      | r8. e16 \tuplet 3/2 {fis4 a8~} a16 b8 a16 fis8 r8\bar  ".."
    }
    >>
>>    
}
