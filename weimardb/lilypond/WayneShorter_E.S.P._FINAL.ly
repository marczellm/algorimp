\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "E.S.P."
  composer = "Wayne Shorter"
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
      
      | e1:13-.9+11+ | e1:13-.9+11+ | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:7 | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:7 | des1:11+.9 | c1:7 | des2:7 ges2:7 | f1:maj 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:7 | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:7 | des1:11+.9 | c1:7 | des2:7 ges2:7 | f1:maj 
      | e1:13-.9+11+|
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


      \tempo 4 = 285
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r16 gis8 bes16~ bes16 b8 cis'16 
      | dis'8 e'8~ e'16 fis'8 gis'16~ gis'8 bes'8 b'4~ 
      | b'8 r8 r2. 
      | r2 a'4 aes'8 g'8 
      | fis'8 e'8 d'8 c'8 bes8 gis8~ gis8. bes16 
      | cis'8 d'4. c'16 d'8. c'8 bes8 
      | g16 a8 c'16 d'8 es'8 g'8 f'8 d'8 bes8 
      | es'8 c'8 aes8 g8 bes8 aes8 r4 
      | r4 r8. gis16~ gis4 r4 
      | r4 a4 r4 r8. bes16~ 
      | bes8 r8 r4 b4 d'8 b8 
      | c'8 d'8 es'8 f'16 g'16~ g'8 e'8 ges'8 e'8 
      | f'8 e'8 es'8. des'16 e'8 cis'8 d'8 e'8 
      | f'8 g'8 a'8 f'8 g'8 f'8 \tuplet 3/2 {d'4 bes8} 
      | a2 g8 bes4 a8~ 
      | a4 gis4 r2 
      \bar "||" r2 \tuplet 3/2 {aes8 g8 fis8~} fis8 gis8 
      | e8 fis8 \tuplet 3/2 {gis4 bes8} dis'8 cis'8 \tuplet 3/2 {bes4 fis8} 
      | \tuplet 3/2 {a4 f8~} f16 g8 a16~ a16 bes8 c'16 d'8 e'8 
      | g'8 f'8 \tuplet 3/2 {e'4 f'8} a'8 g'8 e'8 a'8~ 
      | a'16 dis'16 e'4 g'8 b'8 e''8 \tuplet 3/2 {b'4 bes'8} 
      | a'8 aes'8 g'8 ges'8 f'8 e'8 \tuplet 3/2 {dis'4 g'8} 
      | f'8 d'8 \tuplet 3/2 {bes4 g8} es'8 c'8 aes8. f16 
      | bes8 g8 aes8 bes8 g8 f8 es8 r8 
      | r2 g'8 ges'8 f'8 r8 
      | r4 aes'8 g'8 ges'4 b'8 bes'8 
      | a'8 aes'8 g'8 ges'8 f'8 e'8 es'8 d'8 
      | des'8 es'8 d'8 bes8 a8 g8 \tuplet 3/2 {c'8 bes8 a8~} 
      | \tuplet 3/2 {a8 g8 ges8~} ges8 a8 g8 a8 bes8 c'8 
      | des'8 dis'8 e'8 ges'8 aes'8 e'8 es'8 des'8\glissando  
      | des''8 es'8 des'8 bes8 fis8 gis8 bes8 des'8 
      | c'8 bes4 g8 a8 c'8 \tuplet 3/2 {d'8 g'8 f'8~} 
      \bar "||" \mark \default f'8 g'8~ \tuplet 3/2 {g'8 bes'8 cis''8~} cis''8 r8 r4 
      | r2 g'8 fis'8 \tuplet 3/2 {g'8 fis'8 ges'8} 
      | f'8 d'8 bes8 g8 \tuplet 3/2 {e'4 c'8~} c'8 r8 
      | r2 r8 e'4 c'8 
      | e'8 cis'8 dis'8 f'8 dis'8 bes4 bes8 
      | d'8 a4. c'8 gis8 f8 c8 
      | bes8 c8 f8 g8 f8 g4 c'8 
      | \tuplet 3/2 {bes8 c'8 d'8~} d'16 f'8 d'16~ \tuplet 3/2 {d'8 es'8 g'8~} g'8 bes'8\glissando  
      | d''2~ d''8. c''16 d''8 c''8 
      | a'2^\markup{\left-align \small vib} aes'16 g'16 a'16 g'16 \tuplet 3/2 {f'8 d'8 a8} 
      | g16 f16 d16 g16 f16 d16 c16 bes,16~ bes,8 a,8 r4 
      | r2 r8 a'4. 
      | a'8 g'8 f'8 e'8 g'8 f'8 e'8 d'8 
      | des'8 es'16 d'16~ d'8 c'8 \tuplet 3/2 {b8 c'8 d'8~} d'16 g'8 f'16~ 
      | f'8 d'8 \tuplet 3/2 {bes4 a8} r2 
      | \tuplet 3/2 {f8 fis8 bes8} cis'8 f'8~ \tuplet 3/2 {f'8 cis'8 bes8~} bes16 g8 e'16~ 
      \bar "||" e'8 r8 r2 r8. gis16~ 
      | gis8. gis16~ gis8 e'4 e'8 aes4 
      | r4 r8. g16~ g4 g8 e'8~ 
      | e'8 e'8 g4 r4 r8. aes16~ 
      | aes8 e8 \tuplet 3/2 {gis4 e'8~} e'8 e'8 \tuplet 3/2 {d'4 gis8~} 
      | gis2\glissando  e'4 aes4 
      | g4 d'8. g16~ g8 g8 f'4 
      | r2 f'8 g'8 f'8 d'8 
      | a'4. g'8 r2 
      | bes'8 a'4 aes'8 r2 
      | b'8 bes'8 a'8 r8 r4 c''8 b'8 
      | bes'8 r8 r4 a'8 aes'8 g'8 ges'8 
      | f'8 e'8 es'8 d'8~ d'16 des'8 es'16~ \tuplet 3/2 {es'8 es'8 f'8} 
      | \tuplet 3/2 {aes'4 des'8} es'16 f'16 aes'8 ges'8 ges'8 aes'8 f'8 
      | e'8 es'8 d'8 des'8 bes8 fis8 g4~ 
      | g4 ges8 f8 a8 g16 f16~ f8 des16 c16~ 
      \bar "||" \mark \default c4. b,8 r2\bar  ".."
    }
    >>
>>    
}
