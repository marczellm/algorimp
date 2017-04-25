\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Red Door"
  composer = "Gerry Mulligan"
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
      | r1 
      | g1 | c2:min7 f2:7 | g1 | c2:min7 f2:7 | bes1 | a2:min7 d2:7 | g1 | a2:min7 d2:7 
      | g1 | c2:min7 f2:7 | g1 | c2:min7 f2:7 | bes1 | a2:min6 d2:7 | g1 | g1:7 
      | c1:min | aes2:7 g2:7 | c1:min | aes2:7 g2:7 | es1 | f2:min7 bes2:7 | es1:7 | a2:min7 d2:7 
      | g1 | c2:min7 f2:7 | g1 | c2:min7 f2:7 | bes1 | a2:min7 d2:7 | g1 | a2:min7 d2:7 
      | g1 | c2:min7 f2:7 | g1 | c2:min7 f2:7 | bes1 | a2:min7 d2:7 | g1 | a2:min7 d2:7 
      | g1 | c2:min7 f2:7 | g1 | c2:min7 f2:7 | bes1 | a2:min7 d2:7 | g1 | g1:7 
      | c1:min | aes2:7 g2:7 | c1:min | aes2:7 g2:7 | es1 | f2:min7 bes2:7 | es1:7 | a2:min7 d2:7 
      | g1 | c2:min7 f2:7 | g1 | c2:min7 f2:7 | bes1 | a2:min7 d2:7 | g1 | s1 
      | s1 | c2:min7 f2:7|
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


      \tempo 4 = 236
      \set Score.currentBarNumber = #0
     
      | r2 d8. e16~ e4 
      \bar "||" \mark \default g8 r8 r4 g8. g16~ g8 ais8~ 
      | ais8 g8~ g8. d16~ d4 e4 
      | g8 r8 r4 g4 \tuplet 3/2 {g4 des'8~} 
      | des'8 c'4 c'8 bes8 g8 es8 c8 
      | cis8 d8 f4 f8 d8 aes,8 g,8 
      | a,8 c8~ c16 e8 g16 fis8 g8 a8 fis8 
      | g8 a8~ a16 b8 c'16 d'8 g'4.~ 
      | g'8 r8 r2. 
      \bar "||" g'16 fis'16 e'16 d'16 \tuplet 3/2 {c'4 b8} a8 g8 fis8 g8 
      | a8 fis4 a8 bes8 g8 es8 c8~ 
      | c16 cis8 d16 e8 cis8~ cis16 d8 e16 fis8 g8 
      | \tuplet 3/2 {a4 fis8} g8 a8 bes8 g8 es8 cis8 
      | d4 f4 bes4 d'4 
      | c'4. dis8 a4 \tuplet 3/2 {c'4 b8~} 
      | b8 g4 r8 r2 
      | r1 
      \bar "||" r8 g8 c'8 d'8 es'8 c'16 g16~ g8 es8 
      | \tuplet 3/2 {fis4 a8} c'8 d'8 dis'8 b8 \tuplet 3/2 {g4 fis8} 
      | g8 a8 b8 c'8 \tuplet 3/2 {d'4 b8} cis'8 d'8 
      | es'8 f'8 fis'8 d'8 b8 gis8~ gis16 fis8 dis16~ 
      | dis4. es8 \tuplet 3/2 {fis8\glissando  g4} bes4 
      | es4. es8 fis4 c'4 
      | \tuplet 3/2 {bes4 c'8} es'8 c'8 bes8 g8 es8 r8 
      | r2 d8.\glissando  es16~ es4~ 
      \bar "||" es4. d8 cis4 d8 bes8~ 
      | bes8 a8 g4. r8 r4 
      | r4 r8 g8 fis4 \tuplet 3/2 {g4 es'8~} 
      | es'8 d'8 c'4~ c'16 c'16 d'16 e'16 g'8 fis'8 
      | f'8 d'8 bes8 g8 \tuplet 3/2 {dis4 e8} f8 fis8 
      | a8 c'8 f'8 dis'8 \tuplet 3/2 {e'8 es'4~} es'8 d'8~ 
      | d'8 d'16 es'16~ es'4 d'4. r8 
      | r2 d'16 es'16 d'16 c'16~ \tuplet 3/2 {c'8 d'8 c'8} 
      \bar "||" \mark \default b4 d'4 g'8 r8 r4 
      | g8 bes8 es'8 a8 c'8 f'8 es'8 c'8 
      | d'4 b4 d8 r8 r8. d16 
      | es8 g8 bes8 c'8 des'8 a8 fis4 
      | c'8. a16 f8 d4. \tuplet 3/2 {des4 dis8} 
      | e8 fis8 g8 a8 ais8 g8 a8. g16~ 
      | g4 \tuplet 5/4 {gis8 ais16 c'16 d'16} e'8 r8 r4 
      | r2. r8 g8 
      \bar "||" e'8 d'8 es'8 d'8 d'8 b8 g8. g16 
      | c'4 \tuplet 3/2 {c'8 des'8 c'8} fis8. es16~ es8. cis16 
      | \tuplet 3/2 {d4 fis8} g8 a8 ais8 fis4 a8 
      | bes8 c'8 d'8 c'8 des'8 a8 fis8 r8 
      | r4 cis'8 d'8 \tuplet 3/2 {g'4 f'8} \tuplet 3/2 {des'8 ais8 b8~} 
      | b8 c'8 f'8 e'8 dis'8 c'8 \tuplet 3/2 {a4 fis8} 
      | \tuplet 3/2 {g4 a8~} a16 b8 cis'16 d'8 e'8 \tuplet 3/2 {fis'4 g'8~} 
      | g'2 g4 c'4 
      \bar "||" es'8 f'8~ f'8. es'16 f'4~ f'16 es'16 c'8~^\markup{\left-align \small vib} 
      | c'4 r4 r8 g8 c'8 dis'8 
      | f'8 fis'8 f'8 es'8 f'4 \tuplet 3/2 {es'4 c'8~} 
      | c'8 c'8~^\markup{\left-align \small vib} c'4. g8~ g16 c'8 dis'16 
      | \tuplet 3/2 {f'8 fis'8 f'8~} f'8 es'8 f'4 es'4 
      | \tuplet 3/2 {c'4 aes8} g8 f8 bes8 a8 aes8 fis8 
      | g8 bes8 c'8. es'16 \tuplet 3/2 {f'4 es'8~} es'8 r8 
      | r2 r8 g'4 g'8 
      \bar "||" fis'8 fis'8 \tuplet 3/2 {d'4 d'8} b4 f'8 f'8 
      | es'8 es'8 c'4 a4 fis'8 fis'8 
      | d'8 d'8 b4 g4 \tuplet 3/2 {dis'8 e'8 dis'8} 
      | \tuplet 3/2 {c'4 d'8} dis'8 e'8 f'8 es'8 \tuplet 3/2 {c'8 a8 f8~} 
      | f8 g8 a8 bes8 cis'16\glissando  d'8. bes4 
      | \tuplet 3/2 {c'4\glissando  cis'8~} cis'8 des'8 c'4 \tuplet 3/2 {ais4 g8~} 
      | g8 g4. r2 
      | r8 des'4. c'4 ais4 
      \bar "||" \mark \default \tuplet 3/2 {g4 g8} r4 g8 r8 r8 g8 
      | r4 g8 r8 r2\bar  ".."
    }
    >>
>>    
}
