\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I'm Glad There Is You"
  composer = "Stan Getz"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key cis \major
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
      | cis2:maj ais2:min7 | dis2:min7 gis2:7 
      | cis1:maj | cis1:maj | cis1:min7 | fis1:13.9 | dis1:min7 | gis1:7 | f2:min7 e2:13.9 | a2:maj d2:9 
      | cis2:maj dis2:min7 | f2:min7 e2:dim7 | dis1:min7 | gis1:9 | cis2:maj b2:9 | ais1:9- | dis1:13.9 | gis2:9 cis2:9sus4|
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


      \tempo 4 = 67
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r4 \tuplet 10/8 {r8 c''16. ais'16 c''32~} \tuplet 12/8 {c''16 ais'16. gis'16. f'16. dis'32~} dis'16 cis'16 ais16 cis'16 
      | e'16\glissando  f'16 e'16\glissando  f'16 \tuplet 5/4 {e'16\glissando  f'16 cis'16 ais16 fis'16} f'16 e'16\glissando  f'16 e'16\glissando  f'16 cis'16 a16 fis'16 
      \bar "||" \mark \default f'8 c'8~^\markup{\left-align \small vib} c'4~ \tuplet 7/8 {c'16. cis32 f32 gis32 c'32} dis'16 cis'16 gis16 f16 
      | b16 c'8.^\markup{\left-align \small vib} r4 r16 c'16 cis'32 f'32 gis'32 c''32 dis''16 cis''16 gis'16 f'16 
      | e'8 e'8~^\markup{\left-align \small vib} e'4~ \tuplet 10/8 {e'4 g'32 ais'32} b'16\glissando  cis''8.~^\markup{\left-align \small vib} 
      | cis''8 gis'16 e'16~^\markup{\left-align \small vib} e'8 gis8 dis'8 cis'4^\markup{\left-align \small vib} gis16 b32 e'32~ 
      | \tuplet 3/2 {e'8 ais8 ais8} r2 \tuplet 7/8 {dis32 fis32 dis32 fis32 ais32 fis32 ais32~} 
      | ais32 cis'32 ais32 cis'32 f'16 cis'32 f'32 gis'4~^\markup{\left-align \small vib} \tuplet 6/4 {gis'8 gis'8 g'16 fis'16} f'16 dis'16 d'16 dis'16 
      | ais'16 gis'16 f'16 cis'16~ \tuplet 14/16 {cis'64 c'32. cis'32. f'32. gis'32. e'64~^\markup{\left-align \small vib}} e'8 fis'8 gis'8^\markup{\left-align \small vib} e'8~ 
      | \tuplet 6/4 {e'8 a'16 b'8 d''16~} \tuplet 12/8 {d''16. cis''16. b'16. a'32 b'32 gis'32~^\markup{\left-align \small vib}} gis'4~ gis'16 f'16 fis'16 g'16~ 
      \bar "||" \tuplet 10/8 {g'16\glissando  gis'8. f'32 cis'32} \tuplet 6/4 {c'16 cis'16 gis'16 c''16 dis''16 c''16~^\markup{\left-align \small vib}} c''4~ \tuplet 6/4 {c''16 ais'16 cis''16 ais'8.~} 
      | ais'32 fis'32 gis'32 c''32 gis'8~^\markup{\left-align \small vib} \tuplet 3/2 {gis'8 gis'8 gis'8} \tuplet 3/2 {b'8\glissando  c''8 c''8~^\markup{\left-align \small vib}} c''8. ais'16 
      | \tuplet 5/4 {a'16 ais'16 b'16\glissando  cis''16 fis'16} fis'2.~^\markup{\left-align \small vib} 
      | fis'4~ \tuplet 6/4 {fis'16 dis'16 f'16 fis'16 gis'16 ais'16} cis''8 ais'16 fis'16 c''8.^\markup{\left-align \small vib} ais'16 
      | \tuplet 3/2 {gis'8 f'4~^\markup{\left-align \small vib}} f'16 gis8 ais16 b4~^\markup{\left-align \small vib} \tuplet 6/4 {b8 cis'8 dis'16 fis'16} 
      | f'4~^\markup{\left-align \small vib} \tuplet 3/2 {f'8 f'8 fis'8} \tuplet 3/2 {gis'8 ais'4} f'8 fis'8^\markup{\left-align \small vib} 
      | dis'4.^\markup{\left-align \small vib} \tuplet 6/4 {e'16 f'16 gis'16} \tuplet 6/4 {f'8 cis'16 ais16 a16 gis16~} \tuplet 12/8 {gis32 g16 ais16 cis'16\glissando  e'32 f'16 e'32\glissando  f'32~} 
      | \tuplet 6/4 {f'16 e'16\glissando  f'16 c'8 c'16~} c'16 c'16 a16 a16 \tuplet 3/2 {a8 f8 f8~^\markup{\left-align \small vib}} f8 r8\bar  ".."
    }
    >>
>>    
}
