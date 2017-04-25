\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Night and Day"
  composer = "Zoot Sims"
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
      | e2:7 a2:7 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:maj | s1 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:maj | c1:7 
      | f1:maj | s1 | d1:maj | s1 | f1:maj | s1 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:6 | e2:7 a2:7 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:maj | s1 
      | e1:min5-7 | a1:7 | d1:maj | s1 | e1:min5-7 | a1:7 | d1:maj | s1 
      | gis1:min5-7 | g1:min7 | fis1:min7 | f1:dim7 | e1:min7 | a1:7 | d1:maj | c1:7 
      | f1:maj|
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


      \tempo 4 = 217
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 a'4 a'4 
      \bar "||" \mark \default a'2^\markup{\left-align \small vib} a'4. a'8~^\markup{\left-align \small vib} 
      | a'4 g'4 a'4.^\markup{\left-align \small vib} e'8~ 
      | e'16 f'16 fis'16 g'16~ g'16 fis'8 d'16 e'4~ e'16 d'8 fis'16~ 
      | fis'8 a8~^\markup{\left-align \small vib} a2 r4 
      | r4 r8 g'8\glissando  a'4 f'8 d'8 
      | e'4.^\markup{\left-align \small vib} cis'8 a4 f8 fis8 
      | \tuplet 3/2 {a4 cis'8} e'8 cis'8 d'4.^\markup{\left-align \small vib} r8 
      | r4 r8 b8 d'8 e'8 fis'4~^\markup{\left-align \small vib} 
      | fis'4. e'8 d'8 b8 fis4 
      | f2^\markup{\left-align \small vib} r2 
      | r2 r16 b8 a16 cis'8 b8 
      | c'2~^\markup{\left-align \small vib} \tuplet 6/4 {c'16 b4 a16~} a8. b16~^\markup{\left-align \small vib} 
      | b4 g4 \tuplet 3/2 {e4 fis8~} fis16 a8 fis16~ 
      | fis16 g8 a16~ \tuplet 3/2 {a8 ais8 d'8~} \tuplet 3/2 {d'8 f'8 g'8} f'16 cis'8. 
      | a8 d'8~^\markup{\left-align \small vib} d'2 r4 
      | r2 r8 a8 d'4 
      \bar "||" dis'8\glissando  f'4 d'8 f'4.^\markup{\left-align \small vib} e'8~ 
      | e'8 e'8 b8 d'8 cis'8 a8 f4 
      | a8 b8 cis'8 d'16 e'16~ e'8 cis'8 d'8 fis'8 
      | a'8 cis''16 d''16~ d''8 a'8~^\markup{\left-align \small vib} a'4. cis''8\glissando  
      | d''4 a'4 c''2~^\markup{\left-align \small vib} 
      | c''8 g'8 \tuplet 3/2 {ais'4 fis'8} a'2^\markup{\left-align \small vib} 
      | r4 r8 e'8 g'8 aes'16 g'16 \tuplet 3/2 {e'4 f'8~} 
      | f'16 fis'8 cis'16 e'4.. d'16~ d'4 
      | e'8\glissando  fis'4. b'8 cis''8 b'4~ 
      | b'8 r8 r2 bes'8 c''8~ 
      | c''16 a'16 b'16 a'16~ a'8 fis'8 d'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {e'8 fis'8 f'8} e'8 d'8 e'4.^\markup{\left-align \small vib} d'8 
      | b8 g8 e2 g8. b16~ 
      | b8 d'8~ \tuplet 6/4 {d'16 b4 cis'16~^\markup{\left-align \small vib}} cis'4. a8 
      | cis'8 fis'8 d'2^\markup{\left-align \small vib} r4 
      | r2 r8 a8 d'8 cis'8 
      \bar "||" c'8 a8 f8 e8 \tuplet 3/2 {g4 e8} \tuplet 3/2 {f8 g8 f8} 
      | e8 f8 a8 c'8 \tuplet 3/2 {e'8 g'8 f'8} e'8 d'8 
      | e'4. d'8 \tuplet 3/2 {a4 f8~} \tuplet 3/2 {f8 fis8 a8~} 
      | a16 b8 cis'16~ cis'16 e'8 cis'16 \tuplet 3/2 {d'4 fis'8~} fis'16 a'8\glissando  c''16 
      | d''2 a'2~^\markup{\left-align \small vib} 
      | a'8 bes'8\glissando  c''4 a'2^\markup{\left-align \small vib} 
      | g'8 a'8 fis'8 e'8 d'8 e'8 \tuplet 3/2 {fis'4 b8~} 
      | b4. r8 r4 r8 dis'8\glissando  
      \bar "||" fis'4 e'8 d'8 b8 fis8~ \tuplet 3/2 {fis8 d8 e8} 
      | f4~ f16\bendAfter #+4  e8 f16~^\markup{\left-align \small vib} f4. r8 
      | r4 r8 e16 d16 cis8 d8~ d16 f8 a16 
      | b8 c'8 \tuplet 3/2 {bes8 a8 b8~^\markup{\left-align \small vib}} b4.. b16 
      | \tuplet 3/2 {g4 e8~^\markup{\left-align \small vib}} e2 r4 
      | r8 d'8\glissando  e'2~ e'8 d'8 
      | \tuplet 3/2 {cis'8 b8 a8} \tuplet 3/2 {g4 f8} \tuplet 3/2 {a4 d'8~^\markup{\left-align \small vib}} d'8 r8 
      | r1 
      \bar "||" \mark \default r4 r8. a'16~ a'8. e'16~ e'4 
      | \tuplet 6/4 {g'8. aes'16 g'16 e'16~} e'4 fis'4..^\markup{\left-align \small vib} a'16~ 
      | a'8 a'4.^\markup{\left-align \small vib} fis'4 r4 
      | r4 fis'8 e'8 d'8 a8 b4 
      | d'2.^\markup{\left-align \small vib} c'4^\markup{\left-align \small vib} 
      | \tuplet 3/2 {a4 g8~^\markup{\left-align \small vib}} g2~ g8 a8 
      | fis4 g8 a8 b8 cis'8 e'8 cis'8 
      | d'8\glissando  e'8 fis'2~^\markup{\left-align \small vib} fis'16 d'8 fis'16~ 
      | fis'8. cis'16~ cis'8 e'8~^\markup{\left-align \small vib} e'2 
      | es'8\glissando  f'4 c'8 e'2^\markup{\left-align \small vib} 
      | r4 r8 e'16 d'16~ \tuplet 3/2 {d'8 cis'8 a8} fis8 d8 
      | f4 d8\glissando  a8 b2^\markup{\left-align \small vib} 
      | g8 e8~^\markup{\left-align \small vib} e4. g8 b8 d'8 
      | cis'8 e'8 \tuplet 3/2 {g'4 a'8} b'2^\markup{\left-align \small vib} 
      | a'4 fis'4 a2~^\markup{\left-align \small vib} 
      | a4 r2. 
      \bar "||" a'4 \tuplet 3/2 {d''4 a'8} \tuplet 3/2 {d''4 a'8~} a'8 bes'8\glissando  
      | c''2 a'2~^\markup{\left-align \small vib} 
      | a'8. c''16~ \tuplet 3/2 {c''8 d''8 c''8} a'8. a'16~^\markup{\left-align \small vib} a'4~ 
      | a'8 g'8 fis'8 a8 b8 cis'8 e'8 cis'8 
      | d'8 e'8~ e'16 f'16 fis'16 f'16 d'8. a16~^\markup{\left-align \small vib} a4~ 
      | a8 d'4\glissando  e'8 cis'8 a8~ a16 g8 f16~ 
      | f8 fis8~^\markup{\left-align \small vib} fis4. g8~ \tuplet 3/2 {g8 a8 b8~} 
      | b16 cis'8 b16~^\markup{\left-align \small vib} b2 r4 
      | r4 b8 cis'8 d'8 e'8 fis'8 r8 
      | r4 bes8 c'8 \tuplet 3/2 {cis'4 es'8} f'8 r8 
      | r2 a8 b8 cis'8 d'8 
      | e'4 \tuplet 3/2 {e'4 cis'8} \tuplet 3/2 {es'4\glissando  a'8} b'4~^\markup{\left-align \small vib} 
      | b'4. a'8 g'8 b8 d'8\glissando  e'8 
      | fis'4 d'4 \tuplet 3/2 {e'8\glissando  f'4~^\markup{\left-align \small vib}} f'8 d'8~ 
      | d'16 a8 fis16~ fis8 a8 b8. d'16~^\markup{\left-align \small vib} d'4~ 
      | d'2~ d'8 a8 d'8 cis'8 
      \bar "||" c'4.^\markup{\left-align \small vib} r8 r2\bar  ".."
    }
    >>
>>    
}
