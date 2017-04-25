\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Work"
  composer = "Steve Lacy"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | des1:7 | des1:7 | ges1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | des1:7 | s1 | ges1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | d2:min7 g2:7 | s1 | c1:7 | s1 | c1:min7 | f1:7 | e2:7 a2:13-.9 | aes1:13-.9+11+ 
      | des1:7 | s1 | ges1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | des1:7 | s1 | ges1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | des1:7 | s1 | ges1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | d2:min7 g2:7 | s1 | c1:7 | s1 | c1:min7 | f1:7 | e2:7 a2:13-.9 | aes1:13-.9+11+ 
      | des1:7 | s1 | ges1:7 | s1 | f2:7 e2:7 | es1:7 | d1:7 | s1 
      | des1:7|
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


      \tempo 4 = 166
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 aes'8 r4 \tuplet 6/4 {r8 es'8. d'16~} d'8 des'8 
      | aes'2~ aes'16 es'8 des'16~ des'8 c'8 
      | gis'2^\markup{\left-align \small vib} \tuplet 3/2 {dis'4 des'8} c'4 
      | gis'4 gis'4 \tuplet 3/2 {dis'4 des'8} c'4 
      | g'4 g'4~^\markup{\left-align \small vib} \tuplet 6/4 {g'8 fis'8. d'16~} d'8 b8 
      | r2 bes'4~ bes'16 bes'8 g'16~ 
      | g'16 f'8 dis'16 cis'4 dis'16 gis'8 gis'16~ gis'16 gis'8 e'16~ 
      | e'8 d'8 c'4^\markup{\left-align \small vib} gis'4~ gis'16 gis'8 ges'16~ 
      \bar "||" ges'16 f'8 es'16~ es'16 f'8 aes'16~ aes'8 ges'4 ges'8 
      | aes'8 f'4 f'8 aes'8 e'8~ e'16 e'8 aes'16~ 
      | aes'8 dis'4.^\markup{\left-align \small vib} r4 r8. ais'16~ 
      | ais'4.\glissando  dis''8 e''8 dis''8 ais'8 dis''8 
      | e''8 f''8 f''16 es''16 c''8 a'8 d''4 d''8~ 
      | d''8 b'8 bes'8 r8 \tuplet 6/4 {r4 r16 a'16~} a'8 bes'8 
      | g'8 r8 r8 gis'8~ gis'8. e'16 r4 
      | r4 ais'4~ \tuplet 6/4 {ais'8 fis'8 d'16 c'16} ais4~ 
      \bar "||" ais8 b4.^\markup{\left-align \small vib} d'8 r8 r4 
      | r8 f'8 b'8. f''16~ f''8 b''4 f''8 
      | e''4 bes'8. e'16 bes'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {dis'8 e'4} g'8 a'16 bes'16~ bes'16 c''8 d''16~ \tuplet 6/4 {d''8 es''8. f''16~} 
      | f''8 ges''8 c'''4\glissando  ges''8 r8 r8 f''8~ 
      | f''4 es''4. c''8 \tuplet 6/4 {a'8. ges'16 a'16 ges'16} 
      | \tuplet 3/2 {dis'8 f'4} gis'8 b'8 d''8 des''4 a'8~ 
      | a'4 c''4. gis'4.~ 
      \bar "||" gis'2~ gis'8\glissando  aes'4\glissando  aes'8 
      | aes'8 aes'4 f'4 aes'8 f'4~ 
      | f'4 dis'2~^\markup{\left-align \small vib} dis'8 r8 
      | r4 ais16 dis'16 f'16 dis'16 ais8 dis'8 e'4 
      | f'8 r8 r4 fis'8 r8 r4 
      | r8 g'8 a'16 b'8 des''16~ des''4 dis''4~ 
      | dis''8 e''8~^\markup{\left-align \small vib} e''4~ e''16 f''8 fis''16~ \tuplet 3/2 {fis''8 d''8 c''8~} 
      | c''16 ais'8 fis'16~ \tuplet 6/4 {fis'16 e'16 fis'16 e'8 d'16} c'4 d'16 e'8 ges'16~ 
      \bar "||" \mark \default \tuplet 5/4 {ges'16 f'8. e'16~} e'16 f'8 aes'16~ \tuplet 6/4 {aes'8 bes'8. c''16~} \tuplet 6/4 {c''8 des''8. es''16~} 
      | \tuplet 6/4 {es''8 f''8. ges''16~} \tuplet 3/2 {ges''8 aes''8 f''8} r4 aes''4~ 
      | aes''8 e''4.\glissando  ais'4..^\markup{\left-align \small vib} dis''16~ 
      | dis''16 cis''8 e''16~ e''16 dis''8 fis''16~ fis''8 e''8 e''4~ 
      | e''8 es''8 es''4. d''8 d''4 
      | des''4 des''4 b'4~ \tuplet 6/4 {b'4\glissando  b'16 a'16~} 
      | a'8 ais'8 r4 r8. g'16~ g'16 a'8 cis''16~ 
      | cis''8 aes'8~ aes'8. g'16~ g'4 ges'4~ 
      \bar "||" ges'8 f'4.\glissando  aes'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {dis''4 e''8~} e''16 es''8 bes'16 dis''4 e''8. e''16~ 
      | e''8. ais'16~ ais'4~ \tuplet 6/4 {ais'4~ ais'16 e'16~} e'4~ 
      | e'8 e'8 ais2 f'4~^\markup{\left-align \small vib} 
      | f'4~ f'16 es'8 c'16~ c'8 b8 r4 
      | r8 b'8~^\markup{\left-align \small vib} b'4~ b'16 ges'8 d'16~ d'8 des'8~ 
      | des'8. ais'16~^\markup{\left-align \small vib} ais'4. fis'8 d'8 c'8 
      | a4~ a16 gis8 a16~ a8 b8 \tuplet 6/4 {c'8 d'8. e'16~} 
      \bar "||" e'16 f'8 g'16~ g'16 aes'8 ais'16~ \tuplet 6/4 {ais'8 b'8. cis''16~} cis''16 d''16 e''16 b''16~ 
      | b''16 f''8 b''16~ b''16 f''8 e''16~ e''16 es''8 d''16~ d''16 cis''8 b'16~ 
      | b'16 ais'16 b'16 bes'16 \tuplet 3/2 {g'8 bes'4} bes'4.^\markup{\left-align \small vib} g'8 
      | ges'8 r8 r4 \tuplet 6/4 {r4 r16 e'16~} e'16 fis'16 g'8 
      | e'16 fis'8 g'16~ g'8. bes'16~ bes'8. g'16~ g'8. fis'16~^\markup{\left-align \small vib} 
      | fis'4 g'4 bes'8. g'16~^\markup{\left-align \small vib} g'4~ 
      | g'8 f'8~ f'16 gis'8 c''16~ c''16 des''8 e''16 g''8 ges''8 
      | f''8 e''8 es''8 d''8 cis''8 b'8~ b'16 fis'16 gis'16 fis'16 
      \bar "||" \tuplet 3/2 {d'8 f'4~^\markup{\left-align \small vib}} f'4. f'8 r4 
      | r8. aes'16~^\markup{\left-align \small vib} aes'4~ \tuplet 6/4 {aes'8 dis''8. e''16~} e''8 es''8~ 
      | es''8 dis''8 ais'4 ais'2~^\markup{\left-align \small vib} 
      | ais'4.. ais'16~ \tuplet 3/2 {ais'8 dis''8 e''8} dis''4 
      | \tuplet 3/2 {ais'4 es''8~} es''8 a'8 gis'4..^\markup{\left-align \small vib} d''16~ 
      | d''8 des''8 r4 r8. bes'16~ bes'16 g'8 f'16~ 
      | f'8 fis'4. c''4 e'4~ 
      | e'8 d'4 d'4 ais'8 d'4 
      \bar "||" \mark \default des'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
