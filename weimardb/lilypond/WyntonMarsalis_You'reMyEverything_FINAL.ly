\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "You're My Everything"
  composer = "Wynton Marsalis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key b \major
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
      | b1:maj | b1:maj | f2:min7 bes2:7 | es2:min7 aes2:7 | des1:min7 | s1 | ges1:7 | e1:min 
      | es1:min7 | d2:min7 g2:9 | d1:min7 | bes2:min7 es2:7 | aes1:min7 | des1:9 | des1:min7 | ges1:7 
      | b1:maj | s1 | f2:min7 bes2:7 | es2:min7 aes2:7 | des1:min7 | s1 | bes1:min5-7 | es1:7 
      | aes2:min7 g2:13.9 | ges2:min7 b2:7 | e1:maj | a1:9 | es2:min7 d2:min7 | des2:min7 ges2:7 | g1:maj | s1 
      | b1:maj|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #0
     
      | r4 \tuplet 3/2 {e'4 b8} e'8 e'8 \tuplet 3/2 {b4 e'8} 
      \bar "||" \mark \default dis'8 fis'8 b'4 cis'16\glissando  dis'8. r4 
      | r2. r8 ais'8~ 
      | ais'4 ais'4 ais'4. gis'8 
      | fis'4~ fis'16 fis'8 fis'16~ fis'4 gis'8 fis'8 
      | \tuplet 6/4 {e'4 e'16 dis''16~} dis''8 e'8~^\markup{\left-align \small vib} e'2~ 
      | e'8 r8 r4 r8. gis'16 b'8 a'8 
      | ais'2. \tuplet 3/2 {gis'4 fis'8~} 
      | fis'8 e'8 \tuplet 3/2 {e'4 dis'8~^\markup{\left-align \small vib}} dis'4. cis'8 
      | dis'8 fis'8 ais'8 d''8~ d''16 e''16\glissando  f''8 dis''8 e''8~ 
      | e''16 a''16 g''16 f''16 e''8 d''8~ \tuplet 3/2 {d''8 c''8 b'8} \tuplet 3/2 {a'4 gis'8} 
      | fis'8 dis''8~ dis''16 cis''8 e'16~ e'8 fis'8 e'8. dis'16~^\markup{\left-align \small vib} 
      | dis'2 r4 r8 b'8~ 
      | b'8. gis'16 b'4 gis'8. b16~^\markup{\left-align \small vib} b4 
      | r2 f''4. fis''8 
      | e''4 \tuplet 3/2 {cis''4 dis''8~} dis''8 cis''8 \tuplet 3/2 {ais'4 b'8~} 
      | b'16 g'8 gis'16 e'8 cis'8 g4 gis4 
      \bar "||" fis'2 fis'4. dis'8~^\markup{\left-align \small vib} 
      | dis'4. r8 r4 \tuplet 3/2 {a4 ais8~} 
      | \tuplet 6/4 {ais16 f'16 ais'8. gis'16~} gis'8 gis'8~ gis'4~ \tuplet 3/2 {gis'8 gis8 f'8~} 
      | \tuplet 6/4 {f'16\glissando  gis'4 fis'16~} fis'8 fis'4. \tuplet 3/2 {gis'4 fis'8} 
      | e'4 d''16 dis''8. e'2~^\markup{\left-align \small vib} 
      | e'4 r2 r8 gis'8~ 
      | gis'16 ais'8 gis'16 ais'8 gis'8 g'4 f'8 d'8~ 
      | d'16 e'8 f'16 gis'8 ais'4 b'8 cis''4~^\markup{\left-align \small vib} 
      | cis''4 \tuplet 3/2 {b'4 gis'8~} gis'8 b'8 \tuplet 3/2 {gis'4 dis'8} 
      | gis'4 gis'4 dis'4.^\markup{\left-align \small vib} b8 
      | d'8\glissando  dis'8 b8. gis16~^\markup{\left-align \small vib} gis2~ 
      | gis8 g'8 fis'8 e'8~ \tuplet 3/2 {e'8 dis'8 cis'8} b8 a8 
      | ais8 dis'8 cis'4 gis'4 gis'4 
      | b'4.^\markup{\left-align \small vib} gis'8~ gis'16 d''16 dis''4 fis''8~ 
      | \tuplet 3/2 {fis''8 a''8 g''8~} g''16 e''8 b'16~ \tuplet 6/4 {b'16 e''16 fis''16 e''8 b'16} \tuplet 3/2 {g'4 e'8} 
      | fis'16\glissando  g'8. \tuplet 3/2 {e'4 b8} e'4 \tuplet 3/2 {b4 g8} 
      \bar "||" \mark \default b8. fis16 e8 dis4 r8 r4\bar  ".."
    }
    >>
>>    
}
