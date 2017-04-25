\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Lady Bird"
  composer = "Hank Mobley"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      
      | c1:maj | c1:maj | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj | s1 | f1:min7 | bes1:7 | c1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | a1:min7 | d1:7 | d1:min7 | g1:7 | c2:maj es2:maj | aes2:maj des2:maj 
      | c1:maj|
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


      \tempo 4 = 221
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r16 g'8 e'16~ e'8 r8 r8 g'4 es'8 
      | r4 \tuplet 6/4 {r4 r16 d'16~} d'8 c'8 r4 
      | r8. bes16~ bes4. c'4 g8 
      | r4 r8 e'4 r8 r8 b8~ 
      | b8. d'16~ \tuplet 6/4 {d'8 b8. c'16~} c'8 g'8 f'8 dis'8 
      | e'8 d'4. \tuplet 3/2 {des'4 b8~} b8 a8 
      | bes8. c'16~ c'16 des'8 es'16 f'8 aes'8~ \tuplet 3/2 {aes'8 g'8 f'8} 
      | es'8 des'8 ais8 b16 c'16~ c'8 es'8 bes8 g8 
      | aes4^\markup{\left-align \small vib} r2. 
      | r4 \tuplet 3/2 {r8 a'8 b'8~} b'8 a'8~ a'16 g'8 fis'16~ 
      | fis'8 e'8 d'8 des'8 c'8 b8 a8 g16 f16~ 
      | f8 g16 a16~ a8 c'8 e'8 f'8 des'8 e'8 
      | d'8 e'8 f'8 g'16 a'16~ a'8 c''8 b'8 a'8 
      | g'8 r8 r8. fis'16~ fis'16 g'8 bes'16~ bes'8 a'16 aes'16~ 
      | aes'8 b16 c'16~ \tuplet 3/2 {c'8 es'8 f'8~} f'8 fis'8 g'8 f'8 
      \bar "||" \mark \default e'4~ \tuplet 3/2 {e'8 g8 a8} d'8 b8 c'8 d'8 
      | \tuplet 3/2 {dis'8 e'8 f'8} e'8 d'8 c'8 g8 ais8 g8 
      | gis8 bes8 c'8 es'8 g'4 g'4 
      | g'8 aes'8 g'8 aes'16 g'16 f'4.^\markup{\left-align \small vib} r8 
      | r4 r8 a'8 b'4. a'16 g'16 
      | fis'4. d'16 cis'16 b4.^\markup{\left-align \small vib} r8 
      | r4 cis'16 d'16 e'16 ges'16~ ges'8 d'8 \tuplet 3/2 {cis'8 d'8 b8} 
      | bes8. c'16~ c'16 des'16 es'8 f'8 aes'8 g'8 f'8 
      | \tuplet 3/2 {es'4 c'8~} c'4 c'2^\markup{\left-align \small vib} 
      | r2 r8 gis4 a8~ 
      | a8 b4 c'4 d'4 e'8~ 
      | e'8 g'8 fis'8 e'16 d'16~ d'8 des'8 c'8 b8 
      | a8 g16 f16~ f8 e8 f8 g8 a8 c'8 
      | e'8 cis'8 d'8 g'4. r4 
      | r4 r8. b16~ b8 c'8 f'8 e'8 
      | es'8 des'8 c'8 bes8 aes8 ges8 f4~ 
      \bar "||" \mark \default f4 g4 b4.^\markup{\left-align \small vib} a8 
      | \tuplet 3/2 {gis4 a8~} a8\glissando  c'4 ais4 gis8 
      | r2 \tuplet 3/2 {g'4 g'8~} \tuplet 3/2 {g'8 g'8 f'8~} 
      | f'16 bes8 bes'16~ bes'8 aes'8 g'8. f'16~^\markup{\left-align \small vib} f'4 
      | e'8 g4 a4.^\markup{\left-align \small vib} r4 
      | r2. r8 e'8 
      | d'8. ges16 a8 des'4 b4 es'8 
      | \tuplet 3/2 {des'4 f8} \tuplet 3/2 {aes4\glissando  bes8} c'4~ \tuplet 3/2 {c'8 e8 g8} 
      | \tuplet 3/2 {bes4 g8} \tuplet 3/2 {aes8 ais8 b8~} b16 c'8 des'16~ \tuplet 3/2 {des'8 b8 c'8~} 
      | c'8 es'8~ \tuplet 3/2 {es'8 f'8 g'8} \tuplet 3/2 {bes'4 aes'8} r4 
      | r4 \tuplet 6/4 {r4 r16 gis'16~} gis'16 b'8 gis'16~ gis'8 f'8 
      | gis'8. e'16~ e'8 gis'8 e'8 c'8 r4 
      | r4 r8. g'16~ \tuplet 3/2 {g'8 gis'8 a'8} bes'8 aes'16 g'16~ 
      | g'8 dis'8 b8 g8 \tuplet 3/2 {cis'4 f'8} \tuplet 3/2 {cis'8 dis'8 des'8} 
      | c'8 r8 r4 f'8 e'8 es'8 bes'16 a'16 
      | aes'4. c'16 es'16~ es'16 g'8 f'16 d'8 dis'8 
      \bar "||" \mark \default e'4 g'4 ais'8\glissando  c''8~ \tuplet 3/2 {c''8 b'8 a'8} 
      | \tuplet 3/2 {g'4 f'8} es'8 d'8 c'8 b8 bes8 a8 
      | aes8 r8 r4 g'8 aes'16 g'16 f'4~^\markup{\left-align \small vib} 
      | f'8 r8 r2 r8. fis'16~ 
      | fis'16 g'8 b'16~ b'8 a'4 fis'8 g'4 
      | \tuplet 3/2 {b'4 a'8} g'8 gis'8 b'8 a'4 a'16 g'16 
      | \tuplet 3/2 {ges'4 a'8~} a'8 d'8 b8 a8 bes8 c'8 
      | des'8 r8 r4 ges'8 f'8 e'8 d'8 
      | es'4. c'8 g8 r8 r8. bes16~ 
      | bes8. aes16~ aes16 f8 c'16~ c'8 es'8 r4 
      | r4 a,8. e16~ e8 g8 \tuplet 3/2 {e4 fis8~} 
      | \tuplet 3/2 {fis8 a8 c'8~} c'8 e'8 fis'4 \tuplet 3/2 {b'4 bes'8} 
      | a'8 f'8 d'8 bes16 des'16~ des'8 e'8 d'16 c'8 b16~ 
      | b8 d'8 f'8 gis'8 f'8 fis'16 g'16~ g'8 f'8 
      | e'8 c'8 r2 r8 bes'8 
      | c''8. bes'16~ bes'8 aes'8 g'8 f'8 d'8 dis'8 
      \bar "||" \mark \default e'4 e'4 e'8 f'8 \tuplet 3/2 {e'4 c'8~} 
      | c'8 g8~ g8. ais16~ ais8\glissando  c'4 ais8 
      | aes2 fis'8\glissando  g'4 aes'16 g'16 
      | f'4 r2. 
      | r2 b'8 c''8 b'8 a'16 g'16~ 
      | g'8 e'8 r4 \tuplet 3/2 {r8 ais8 c'8} \tuplet 3/2 {d'8 fis'8 cis''8~} 
      | cis''8 b'4 a'8 aes'8 e'4 bes'8 
      | c''4. bes'16 aes'16 g'4 f'8 es'8 
      | c'4.^\markup{\left-align \small vib} r8 r4 r8. bes'16~ 
      | bes'8 g'8 aes'8 bes'8 aes'16 g'8 f'16~ f'8 r8 
      | r4 r8 a'8 b'8. d''16~ d''8 des''8 
      | c''8 b'8 a'8 g'8 fis'8 e'8 d'8 e'8 
      | f'8 g'16 e'16 f'4 d'8 e'8 \tuplet 3/2 {f'8 g'8 bes'8~} 
      | bes'8 gis'8 fis'8 dis'8 c'8 ais8 aes8 g8 
      | r4 r8. e'16~ e'8\glissando  f'4 es'8~ 
      | es'8. c'16~ c'8. aes16~ aes8. f16~ f4 
      \bar "||" \mark \default g4 e'4 e'4 e'4 
      | e'8 g'16 e'16 d'8 c'4.^\markup{\left-align \small vib} r4 
      | r2 g8 bes8 c'8 es'8 
      | g'8. g'16~ g'8 f'8 g'8 f'8 r4 
      | r2 e'8 a'4 d'8 
      | \tuplet 3/2 {g'4 c'8~} c'8 f'8 e'4. d'8 
      | des'4 b8 a8 bes8 c'16 des'16~ des'8 es'8 
      | \tuplet 3/2 {f'8 g'8 c''8~} c''8 bes'8~ bes'8. g'16~ g'4 
      | bes'2 g'8. es'16~ es'8 c'8 
      | r2. r8 a'8 
      | b'4 a'8 g'8 \tuplet 3/2 {fis'4 e'8} d'8 des'8 
      | c'8 b8 a8 g8 f8 e'8~ e'8. d'16~ 
      | d'4. g'4 r8 r4 
      | r2. r8 d'8~ 
      | \tuplet 3/2 {d'8 des'8 c'8~} c'8 f'8~ f'16 e'8 es'16~ es'8 bes8 
      | a8 aes4 d'8 es'4 b4 
      \bar "||" \mark \default d'8 d'8 b8. d'16~ d'4 r4\bar  ".."
    }
    >>
>>    
}
