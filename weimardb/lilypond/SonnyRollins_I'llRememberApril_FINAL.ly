\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I'll Remember April"
  composer = "Sonny Rollins"
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
      
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | g1:min7 | c1:min7 | f1:7 | bes1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | a2:min7 d2:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | s1 | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | g1:min7 | c1:min7 | f1:7 | bes1:maj | s1 
      | a1:min7 | d1:7 | g1:maj | s1 | fis1:min7 | b1:7 | e1:maj | a2:min7 d2:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | s1|
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


      \tempo 4 = 294
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 r8. d'16~ d'8 e'8 f'8 fis'8~ 
      | fis'8 g'8 a'4 fis'4 g'4~ 
      | g'8 d'8~ d'2~ \tuplet 3/2 {d'8 cis'8\glissando  d'8~} 
      | d'8 g2..~ 
      | g4 d'8 e'8 fis'8 g'8 a'4 
      | fis'4\glissando  g'4. d'4. 
      | cis'8\glissando  d'4 g8~ g2~ 
      | g2 cis'8 d'8 g4~ 
      | g2 cis'8\glissando  d'4 g8~ 
      | g1 
      | \tuplet 3/2 {cis'8 d'4~} d'8 g8 cis'8\glissando  d'4 g8~ 
      | g1\glissando  
      | \tuplet 3/2 {ais8 b4} g4~ g16 cis'16 d'8 g4~ 
      | g4.. g16 r2 
      | r2. r8. f'16~ 
      \bar "||" f'8 g'4 d'8 \tuplet 3/2 {f'4 d'8~} d'8 es'8 
      | c'4 d'4 bes8 c'8 a4 
      | bes8. a16~ a8 f8 g2~^\markup{\left-align \small vib} 
      | g8 d8 f8 e8 \tuplet 3/2 {es4 f8} g8 bes8 
      | d'16 dis'8 e'16 f'8 e'8 \tuplet 3/2 {es'4 d'8~} d'16 c'8 bes16~ 
      | bes8 a8 fis8 f8 es8 d4 bes16 c'16~ 
      | \tuplet 3/2 {c'8 a8 b8} bes4 \tuplet 3/2 {f'8 a'4} \tuplet 3/2 {f'8 g'4~^\markup{\left-align \small vib}} 
      | g'8. d'16 f'4 r2 
      | r1 
      | r4 r8. dis'16~ dis'8 cis'8 d'8. c'16 
      | b8 a8 g8 fis8 \tuplet 3/2 {a4 fis8} g4 
      | \tuplet 3/2 {fis8 g4} ais16 d'8 fis'16~ fis'8 d'8 e'4~^\markup{\left-align \small vib} 
      | e'16 dis'8 cis'16~ cis'8 a8 fis8 a8 cis'8 e'8 
      | gis'8 fis'8 e'8 cis'8 a8 fis8 dis'8. cis'16~ 
      | cis'16 b8 bes16~ bes8 a8 \tuplet 3/2 {gis8 ais8 b8} cis'8 dis'8 
      | fis'8 dis'8 \tuplet 3/2 {e'4 c'8} a8 g8 fis8 a8 
      \bar "||" c'8 e'8 d'8 c'8 b8 a8 g8 fis8 
      | \tuplet 3/2 {a4 g8} fis8 g8 \tuplet 3/2 {b4 d'8~} \tuplet 3/2 {d'8 f'8 g'8} 
      | a'8 fis'8 g'8 a'8 fis'8 d'8 b8 c'8 
      | d'8 b8 a4 g8 a4.^\markup{\left-align \small vib} 
      | ais8 d'8 bes8 r8 r2 
      | r2 r16 g8 bes16 d'8 fis'8~ 
      | fis'8\glissando  a'8 \tuplet 3/2 {aes'8 g'8 fis'8~} fis'8\glissando  a'8 \tuplet 3/2 {aes'8 g'8 fis'8~} 
      | fis'8\glissando  a'8~ a'16 aes'16 g'16 fis'16~ fis'8\glissando  a'8 \tuplet 3/2 {aes'8 g'8 fis'8} 
      | r2 r8 a8 \tuplet 3/2 {e'8 g'8 aes'8} 
      | b'4\glissando  bes'16 a'8. b'8 bes'8 a'8 r8 
      | r8. c'16 \tuplet 3/2 {d'8 g'8 ais'8} c''8.\glissando  cis''16 \tuplet 3/2 {c'8 b'8 ais'8~} 
      | \tuplet 3/2 {ais'8 c''8\glissando  des''8~} \tuplet 3/2 {des''8 c''8 ais'8} c''8\glissando  des''8 c''16 ais'8. 
      | \tuplet 3/2 {b'4 bes'8} a'8 aes'8 r2 
      | r1 
      | g'4 d'8 r8 r2 
      | \tuplet 3/2 {g'4 d'8} r2. 
      \bar "||" \mark \default g'8 d'8 r4 \tuplet 3/2 {a'4 d'8} r4 
      | r16 g'8 d'16 r4 r8 a'8 d'4~ 
      | d'16 g'8 d'16 r4 r16 a'8 d'16~ d'4 
      | g'8 d'8~ d'16 g'8 b'16~ b'8 g'4 d'8~ 
      | d'4 r2. 
      | g'8 bes'8 \tuplet 3/2 {fis'4 a'8~} a'8 g'8 d'4 
      | fis'4 d'4 e'4 bes4 
      | a4 g4. a4 e8~^\markup{\left-align \small vib} 
      | e4. r8 r2 
      | r4 ais'8 b'4 bes'8 a'8 gis'8 
      | fis'8 f'8 r2. 
      | r16 d''8\glissando  e''16~ e''2. 
      | ais'8 b'8 \tuplet 3/2 {d''4 des''8~} \tuplet 3/2 {des''8 c''8 b'8~} b'16 a'8 gis'16~ 
      | gis'16 b'8 gis'16~ gis'16 a'8 g'16~ g'16 fis'8 e'16~ e'16 d'8 c'16~ 
      | c'8 b8 a8 g8 fis8 a8 fis8 g8 
      | r1 
      \bar "||" r8 g8 \tuplet 3/2 {bes8 c'4} es'8\glissando  g'8 bes'4~^\markup{\left-align \small vib} 
      | bes'4. g'8 \tuplet 3/2 {a'4 f'8} g'8 es'8 
      | c'8 d'8 f'8 e'8 es'8 cis'8 d'8 e'8~ 
      | e'16 c'8 ais16 b4 f8 fis8 aes4 
      | \tuplet 3/2 {f8 g4} es8 c8 \tuplet 3/2 {es8 f8 e8} es8 f8 
      | g8 bes8 d'8. bes16 des'4 a8 fis8 
      | \tuplet 3/2 {e8 f4} e8 es8 cis8 d8 es'4 
      | \tuplet 3/2 {cis'8 d'4} g'4 fis'8 f'8 d'8 bes8 
      | g16 e'8. c'8 a8 g8 b8 a4~ 
      | a8 gis4 b8 a4. g8 
      | fis4. a4 e4.~^\markup{\left-align \small vib} 
      | e4 r2 fis'8 gis'8 
      | \tuplet 3/2 {b'4 bes'8} a'8 gis'8 fis'8 e'8 \tuplet 3/2 {dis'4 cis'8} 
      | b8 bes8 a8. g16 gis8 b8 \tuplet 3/2 {cis'4 dis'8} 
      | fis'8 dis'8 b8 r8 r2 
      | gis'8. b'16~ b'16 a'8 g'16~ g'16 fis'8 e'16~ e'16 d'8 c'16 
      \bar "||" b4 \tuplet 3/2 {d'8 a8 fis8~} fis8 g4 b8 
      | d'8 b8 c'8 e'8 g'16 b'8. f'16 fis'8 a'16~ 
      | a'8 g'8 d'8 b8 \tuplet 3/2 {c'8 d'4} b8 r8 
      | r2. d'4~ 
      | d'16 bes'8\glissando  d''16~ d''8\glissando  b'8 r2 
      | r4 a'8 bes'4.\glissando  \tuplet 3/2 {fis'4 aes'8} 
      | bes'8. fis'16~ fis'16 dis'8 e'16 fis'4.. d'16 
      | \tuplet 3/2 {bes4 cis'8} d'4. bes8 fis8 r8 
      | r1 
      | ais'8\glissando  b'4. a'2^\markup{\left-align \small vib} 
      | dis'8\glissando  f'4. ais8\glissando  b8 f'8 e'8 
      | d'8 c'8 b8 a8 gis4 \tuplet 3/2 {b4 gis8} 
      | a8 r8 r2. 
      | f'8 e'8 es'8 d'8 c'8 bes8 a8 g8 
      | f8 e8~ e16 dis8 cis16 d8 r8 r4 
      | r1 
      \bar "||" \mark \default fis'16 g'16 fis'16 d'16 r2.\bar  ".."
    }
    >>
>>    
}
