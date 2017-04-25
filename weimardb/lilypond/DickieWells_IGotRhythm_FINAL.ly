\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Got Rhythm"
  composer = "Dickie Wells"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      | r1 
      | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 bes2:7 | es2:6 e2:dim7 | bes2:6 f2:7 | bes1:6 
      | s2 g2:min7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 bes2:7 | es2:6 e2:dim7 | bes2:6 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 bes2:7 | es2:6 e2:dim7 | bes2:6 f2:7 | bes1:6 
      | s2 g2:min7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 bes2:7 | es2:6 e2:dim7 | bes2:6 f2:7 | bes1:6 
      | s2 g2:min7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 bes2:7 | es2:6 e2:dim7 | bes2:6 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | bes2:6 bes2:7 | es2:7 e2:dim7 | bes2:6 f2:7 | bes1:6 
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


      \tempo 4 = 243
      \set Score.currentBarNumber = #0
     
      | r2 r8. f16~ f8. f16~ 
      \bar "||" \mark \default f8 f'4. d'4 bes4~^\markup{\left-align \small vib} 
      | bes4. r8 r4 r8 g8~ 
      | g8 f'8\glissando  g'4.. es'16~ es'8 c'8~^\markup{\left-align \small vib} 
      | c'2 bes8. f16~ f8 f'8~ 
      | f'8 d'4 des'8 c'8\glissando  des'8 bes8 des'8~ 
      | \tuplet 3/2 {des'8 c'8\glissando  des'8} bes8 des'8 c'8\glissando  des'8 \tuplet 3/2 {bes4 f'8~} 
      | f'4\bendAfter #-4  \tuplet 3/2 {bes4 des'8~} \tuplet 3/2 {des'8 c'8\glissando  des'8} \tuplet 3/2 {bes4 cis'8~} 
      | cis'8\glissando  d'4. r2 
      \bar "||" r2 f'4 d'8 c'8 
      | bes4 c'8 d'4 f'4 g'8~ 
      | g'8 gis'8~ gis'16\glissando  a'8 g'16~ g'8 f'4 d'8 
      | c'4 c'4 c'8. bes16~ bes4 
      | bes4~ bes16 a8 g16~ g4 bes8. c'16~ 
      | c'8\glissando  d'4 d'4 bes4 des'8~ 
      | des'8. bes16~^\markup{\left-align \small vib} bes2~ bes8 r8 
      | r2. r8. d16~ 
      \bar "||" d4 fis4 g4 es'8.\glissando  e'16~ 
      | e'8. d'16~ d'8. a16~ a4 e4 
      | a,4. a4 e8~ e8. d16~ 
      | d4 d'4~ \tuplet 6/4 {d'16\glissando  e'4 d'16~} d'4 
      | d'4 c'4 c'8. c'16~ c'8. c'16~ 
      | c'8 c'4 c'8~^\markup{\left-align \small vib} c'4. r8 
      | r4 r8. f'16~ f'4 f'4 
      | f'8 f'8 cis'8 d'8 f'8 f'8 cis'8 d'8 
      \bar "||" f'8 f'8 f'8 d'4 f'4 d'8 
      | f'4 f'4 d'8 f'4 d'8 
      | f'4 g'4 a'4. g'8~ 
      | g'8 f'4 d'8 des'4 bes8 c'8\glissando  
      | des'4 bes8. bes16~^\markup{\left-align \small vib} bes4. r8 
      | r1 
      | r8 f'4\glissando  aes'8~ aes'4.\glissando  g'8~ 
      | g'4.. f'16~ f'4..\glissando  d'16~ 
      \bar "||" \mark \default d'4 bes4 d'2~ 
      | d'8\glissando  c'8~ c'8. bes16~ bes4\glissando  a4 
      | r4 f4 gis8\glissando  a4 f8~ 
      | f8 aes'8\glissando  g'4 f'4 \tuplet 3/2 {bes4 cis'8~} 
      | cis'8\glissando  d'2..~^\markup{\left-align \small vib} 
      | d'2~ d'8 r8 r4 
      | r1 
      | r2. r8 cis''8\glissando  
      \bar "||" d''4 r4 r8. f'16~ f'8 g'8 
      | bes'4 bes'8. a'16 bes'4 f'4 
      | f'4 f'4 f'8 d'8 c'8 bes8 
      | c'8 d'8 es'8 f'8 f'8 d'8 c'8 bes8~ 
      | bes4 aes4 \tuplet 3/2 {bes4 d'8~} \tuplet 3/2 {d'8 d'8 f'8~} 
      | f'4 d'4 \tuplet 3/2 {des'4 bes8~} bes8 bes8 
      | \tuplet 3/2 {cis'4\glissando  d'8~} d'4 \tuplet 3/2 {f'4 g'8~} g'8 bes8~ 
      | bes8 bes8~^\markup{\left-align \small vib} bes4. r8 r4 
      \bar "||" r2 r16 e'16 f'16 gis'16 bes'8.\glissando  d''16~ 
      | d''8 es''8 cis''4\glissando  \tuplet 3/2 {d''4 es''8\glissando } d''4 
      | es''4. e''4. f''4~^\markup{\left-align \small vib} 
      | f''1 
      | g''4\bendAfter #-4  r2 r8 d'8 
      | \tuplet 3/2 {f'4 f'8~} f'8 f'8 f'4 d'4 
      | c'4 \tuplet 3/2 {c'4 a8} b8\glissando  c'8 a4 
      | \tuplet 3/2 {a4 a8~} a8 a4\glissando  aes8 f8. f'16~ 
      \bar "||" f'8. bes16~^\markup{\left-align \small vib} bes2 r4 
      | r2 g'8 g'4 f'8 
      | g'4 a'4 bes'4 g'4 
      | a'8. g'16~ g'8 g'4\bendAfter #-4  r8 r8 f'8~ 
      | f'16 f'8 d'16~ d'8. c'16~ c'8 bes8 c'8\glissando  d'8~ 
      | d'8 f'4. \tuplet 3/2 {bes4 c'8~} c'8\glissando  d'8~ 
      | d'8 f'8 g'4 bes4 \tuplet 3/2 {c'4\glissando  d'8} 
      | f'8. bes16~ bes8 bes8~^\markup{\left-align \small vib} bes2~ 
      \bar "||" \mark \default bes8 r8 r2.\bar  ".."
    }
    >>
>>    
}
