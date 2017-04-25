\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Item 1, D.I.T."
  composer = "Chris Potter"
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
      
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2:7 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2:7 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | e1:7 
      | c1 | aes1:7 | des1:7 | ges2:7 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7 
      | c1 | aes1:7 | des1:7 | ges2 g2:dim | aes1:7 | s1 | s1 | des2 d2:dim 
      | es1:7 | s1 | s1 | b1:7 | e1:7 | a2 bes2:dim | b1:7 | g1:7|
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


      \tempo 4 = 301
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r1 
      | r2 aes'8\glissando  bes'4 es'8 
      | r1 
      | r2 es'4 f'4 
      | ges'8. es'16~ es'4 bes'4 \tuplet 3/2 {aes'4 ges'8~} 
      | ges'8 f'8 es'4 f'4 ges'4~ 
      | ges'8\glissando  aes'8~ aes'8. des'16~ des'8. es'16~ es'8. des'16~ 
      | des'4 f'2~^\markup{\left-align \small vib} f'8 r8 
      | r1 
      | \tuplet 3/2 {r8 b'8\glissando  des''8~} des''8 c''4 bes'8 a'4 
      | a'16\glissando  gis'8.~ gis'8 fis'4 e'8 es'4 
      | d'4. cis'4 b8 bes4 
      | a8. b16~ \tuplet 3/2 {b8 cis'8 d'8} e'8 d'8 des'8 c'8 
      | b8 dis'8 fis'8 a'8 gis'8 ges'8 f'8 es'8 
      | d'8 f'8 a'8 c''8 \tuplet 3/2 {b'4 a'8~} a'16 g'8 f'16 
      \bar "||" \mark \default e'8 g'8~ g'16 d'8 b16 c'8 r8 r4 
      | r1 
      | r4 r16 b16 es'16 ges'16 bes'8 aes'8 f'8 es'8 
      | des'8 b8 bes8 aes8 ges8 aes8~ aes16 bes8 c'16~ 
      | c'8 cis'8 d'16 f'8 e'16~ e'16 es'8 des'16~ des'16 c'8 b16~ 
      | b16 aes8 bes16~ bes8. es'16 aes'8 r8 r4 
      | r1 
      | gis'16 a'16 aes'8 ges'8 e'8 f'8 des'8 bes8 g8 
      | des'8 bes8 des'8 f'4 f'8 \tuplet 3/2 {g'8\glissando  a'4} 
      | a'8 c''4 c''4\glissando  es''4.~ 
      | es''4. des''8 \tuplet 3/2 {c''4 bes'8} a'8 c''8 
      | ais'8 e'8 f'8 aes'8 g'8 dis'8 r4 
      | r2 \tuplet 3/2 {cis''8\glissando  d''8 cis''8} b'8 a'8 
      | gis'8 a'8 b'8 cis''8 a'8 des'8 r4 
      | r1 
      | r2 b8 g8 f8 d8 
      \bar "||" \mark \default c8 d8 e8 f8 fis8 bes8 a8 g8 
      | aes8 ais8 b8 des'8 es'8 f'8 \tuplet 3/2 {fis'8 g'8\glissando  aes'8} 
      | bes'8 g'8 aes'8 ais'8 b'8 es''8 \tuplet 3/2 {des''8 c''8 b'8~} 
      | b'8\glissando  aes'8 f'4 ges'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {f'8 ges'8 f'8} \tuplet 3/2 {es'8 d'8 f'8} es'8 des'8 c'8 bes8 
      | aes8 bes8 \tuplet 3/2 {c'8 es'8 aes'8} f'8\glissando  ges'8 es'8 r8 
      | r2. r8 aes'16 g'16 
      | f'8 des'8 bes8. g16 des'8 r8 r4 
      | r2 bes'8\glissando  c''4 a'8 
      | bes'8 g'8 es'8 bes8 aes'4 fis'8 g'8~ 
      | g'8 es'4 f'8 f'16 des'8 bes16~ bes4 
      | a4 g4~ g16 g8 bes16 r4 
      | r16 a8 fis16~ fis16 d8 b,16~ \tuplet 3/2 {b,8 g8\glissando  gis8~} gis16 fis8 e16 
      | r4 r8 a,8 r2 
      | r2. r8 dis8~ 
      | dis8 dis8 \tuplet 3/2 {g4 fis8} ais8 g8 gis8 a8 
      \bar "||" \mark \default f8 cis8 d8 g8 \tuplet 3/2 {e4 es8} d8 des8 
      | c8 cis8 d4 bes8 g8 gis8 a8 
      | des8 es8 \tuplet 3/2 {aes8 g8 ges8} f8 es8 c8 des16 es16~ 
      | es16 f8 aes16~ aes8 g16 ges16 f16 ges8. r4 
      | r2 c8 d8 f8 e8 
      | es8 des8 c8 bes,8 a,8 d8 ges8 a8 
      | b,8 es8 ges8 b8 gis8 a8 c'8 es'8 
      | ges'8 a'8 aes'8 ges'8 f'8 des'8 \tuplet 3/2 {bes4 g8} 
      | des'4 \tuplet 3/2 {bes8 e'8 f'8~} f'4 g'8\glissando  a'8~ 
      | a'8 c''8 r4 dis''4. r8 
      | r1 
      | r1 
      | e''8. cis''16~ cis''4 gis'16 a'8. fis'4 
      | d'4.^\markup{\left-align \small vib} r8 r2 
      | r4 \tuplet 3/2 {d''4 b'8~} b'8 gis'8 e'4 
      | \tuplet 3/2 {c''4 a'8} fis'8 dis'8 b'8 gis'8 e'8 c'8 
      \bar "||" \mark \default a8 c'8 e'8 g'8 \tuplet 3/2 {b'4 g'8} e'8 cis'8 
      | \tuplet 3/2 {ais'4 ges'8} es'8 b8 aes8 b8 es'8 f'8~ 
      | f'16 ges'8 aes'16~ \tuplet 3/2 {aes'8 ais'8 b'8} es''8 des''8 b'8 aes'8 
      | bes'8 ges'8 des'8 bes8 ges8 r8 r4 
      | r2 c''8 aes'8 e'4 
      | des'16 b'8 ges'16 bes'8 ges'8 d'8 bes8 \tuplet 3/2 {gis4 a8~} 
      | a16 c'8 e'16 ges'8 a'8 aes'8 ges'8 f'8 es'8 
      | c'8 des'8 es'8 f'8 aes'8. b'16 c''8 b'8 
      | bes'8 aes'8 g'8 ges'8 f'8 e'8 es'8 d'8~ 
      | d'16 des'8 es'16 f'8 des'8 c'8 bes8 a8 bes8 
      | es'8 des'8 a8 g8 c'8 bes8 r4 
      | r2 cis'8 b8 cis'8 b8 
      | d'8 fis'8 r2. 
      | fis'8 e'8 fis'8 e'8 a'8 des''8 r4 
      | r2 b'8 gis'8 a'8 ges'8 
      | f'8 es'8 d'8 c'8 b8 d'8 f'8 aes'8 
      \bar "||" \mark \default \tuplet 3/2 {g'4 fis'8} g'8 fis'8 c''8 ais'8 e'8 r8 
      | r4 es'8 d'8 es'8 d'8 bes'4 
      | r1 
      | r1 
      | es'8 d'8 es'8 d'8 bes'8 d'8 es'8 d'8 
      | es'8 d'8 es'8 d'8 bes'8 d'8 \tuplet 3/2 {es'4 d'8} 
      | es'8 d'8 es'8 d'8 bes'4 a'4 
      | \tuplet 3/2 {g'8 aes'8 g'8} aes'8 g'8 aes'8 g'8 aes'8 r8 
      | r1 
      | r8 aes'16 gis'16 a'8 gis'8 a'16 gis'16 a'8 g'8 aes'8 
      | \tuplet 3/2 {aes'8 gis'4} a'8 gis'8 a'16 gis'16 a'16 aes'16 \tuplet 3/2 {g'8 g'8 ges'8} 
      | f'8 e'8 es'8 d'8 des'8 c'8 \tuplet 3/2 {b8 a8 gis8~} 
      | gis8 b8 cis'4 b'16 cis''16 cis''16 d''16 cis''8 cis''16 cis''16 
      | \tuplet 6/4 {d''16 cis''16 d''16 cis''8 d''16} \tuplet 3/2 {cis''8 d''8 cis''8} r2 
      | r1 
      | d''4 \tuplet 3/2 {b'4 g'8~} g'16 f'8 a'16~ a'8. g'16~ 
      \bar "||" \mark \default g'8. e'16~ e'4 c'8. e'16~ e'8 g'8 
      | aes'4 f'8. ges'16~ ges'8 bes'4 g'8 
      | aes'4 bes'4 a'8\glissando  b'8 des''4 
      | bes'4 des4 ges2~^\markup{\left-align \small vib} 
      | ges4 f8 es8 d8 es8 f8 ges8 
      | es8 aes,8 r2. 
      | r4 a8 aes8 ges8 gis8 a8 b8 
      | \tuplet 3/2 {gis8 a8 aes8} \tuplet 3/2 {ges4 e8} f8 e8 es8 d8 
      | des8 es8 f8 g8 gis8 a8 c'8 des'8 
      | bes8 e8 f8 aes8 g8 es8 r4 
      | r2 es8 a,8~ \tuplet 3/2 {a,8 es8 aes8} 
      | g8 f8 fis8 cis8 d8 b8 ais8 gis8 
      | a8 f8 fis8 ais8 gis8 a8 cis'8 ais8 
      | b8 dis'8 ais8 d'8 b8 c'8 des'8 e'8 
      | \tuplet 3/2 {gis'4 f'8} fis'8 ais'8~ ais'16 gis'8 b'16~ b'16 ais'16 gis'8 
      | c''8 d''8 b'8 ais'8 b'8 r8 r4 
      \bar "||" \mark \default r2 d''8 dis''8 \tuplet 3/2 {es''8 d''8 des''8} 
      | \tuplet 3/2 {c''4 ges'8} ais'8 b'8 \tuplet 3/2 {ais'8 b'8 a'8} aes'4 
      | \tuplet 3/2 {bes'4 g'8} gis'8 a'4 des'8 \tuplet 3/2 {g'8 aes'8 aes'8} 
      | g'8 ges'8 f'8 e'8 es'8 d'8 des'8 c'8 
      | bes8 c'8 d'16 es'16 f'8 es'8 f'8 ges'8 aes'8 
      | \tuplet 3/2 {bes'4 bes'8} c''8 es''8 b'8\glissando  c''8 r4 
      | r4 aes'4 a''4 ges''8 e''8 
      | f''8. aes'16 bes'8 des''8~^\markup{\left-align \small vib} des''4. bes'8 
      | es''4. des''8\glissando  es''4 f''4 
      | r1 
      | e''8 e''8 f''8 fis''8 \tuplet 3/2 {g''4 fis''8} g''8 bes''8 
      | c'''8 ais''8 gis''8\glissando  ges''8 f''4 \tuplet 3/2 {e''8 es''8 d''8~} 
      | \tuplet 3/2 {d''8 cis''8 d''8} \tuplet 3/2 {e''4 gis''8} bes''8 a''8 gis''4 
      | e''8 d''8 cis''8 b'4\glissando  bes'8 gis'8 a'8~ 
      | a'16 f'16 fis'16 ais'16~ \tuplet 3/2 {ais'8 g'8 gis'8} a'4 f'16 e'8 d'16 
      | fis'16 g'8. f'8 g'8 \tuplet 3/2 {f'8 e'8 c'8} \tuplet 3/2 {a4 g8} 
      \bar "||" \mark \default c'4. dis'8\glissando  e'4 g'4 
      | f'8 r8 r4 \tuplet 3/2 {ges'8 aes'4} des''4 
      | r4 r8 des'4. f'8 r8 
      | r4 r8 f'8\glissando  ges'4 bes'8 r8 
      | r4 r8 c'4. e'8 r8 
      | r4 r8 e'8 f'4 a'8 r8 
      | r2 a4 ges'4 
      | d'4 ges'4 e'8\glissando  f'8 aes'8 r8 
      | r4 r8 es'4. g'8 r8 
      | r2 g'8\glissando  a'8 des''4 
      | es4 \tuplet 3/2 {g4 es8~} es16 gis16 a8 des'8 es'8~ 
      | es'4 \tuplet 3/2 {g'4 dis'8} g'8\glissando  a'8 cis''8 dis8 
      | e4\glissando  \tuplet 3/2 {gis4 e8} gis16 ais8. d'8 e'8 
      | r1 
      | r8 a8 cis'8 gis8 dis'8 cis'8 \tuplet 3/2 {b8 a8 f8} 
      | g8 b8 cis'8 f'8 b'8 g'8 f'8 cis'8 
      \bar "||" \mark \default b8 g8 f8 des8 c4.^\markup{\left-align \small vib} r8 
      | r2 e''8 d''8 c''8 bes'8 
      | aes'8 ges'8 e'8 d'8 c'8 r8 r4 
      | r4 es''8 des''8 c''16\glissando  b'16 a'8 g'8 des''8 
      | b'8 bes'8 aes'8 ges'8 \tuplet 3/2 {c''4 bes'8} aes'8 ges'8 
      | e'8 b'8 bes'8 g'8 f'8. bes'16 g'4 
      | gis'16 a'8. \tuplet 3/2 {des'8 e'8 aes'8~} \tuplet 3/2 {aes'8 f'8 ges'8} bes'8 gis'8 
      | a'8 aes'8 g'8 ges'8 f'8 e'8 es'8 d'8 
      | des'8 es'8 f'8 g'8 a'8 es'8 f'8 g'8 
      | a'8 b'8 f'8 g'8 a'8 b'8 \tuplet 3/2 {des''4 g'8} 
      | a'8 b'8 \tuplet 3/2 {des''4 dis''8} \tuplet 3/2 {e''8 a'8 b'8} des''8 es''8 
      | f''4 g''16 a''16 ais''8 cis'''8 r8 r4 
      | r1 
      | r1 
      | r1 
      | r8. c16 d16 fis16 ais8 cis'16 e'16 g'16 gis'16 c''8 cis''8 
      \bar "||" \mark \default d''2.^\markup{\left-align \small vib} b'8 gis'8 
      | d''8 es''4. c''8 aes'4\bendAfter #-4  r8 
      | r2. r8. aes,16~ 
      | aes,16 es8 aes,16 es8 bes8 aes4 c8 r8 
      | r1 
      | r2 d8 a,8 a8 aes8 
      | g8 ges8 f8 e8 es8 f8 ges8 aes8 
      | \tuplet 3/2 {c'4 a8} bes8 c'8 des'16 es'8 ges'16 aes'4 
      | b'16 c''16 es''16 des''16 c''8 gis'8 a'8 c''8 \tuplet 3/2 {b'4 a'8} 
      | \tuplet 3/2 {bes'8\glissando  a'8 e'8} \tuplet 3/2 {f'4 aes'8} \tuplet 3/2 {g'8 f'8 fis'8} g'8. es'16 
      | d'16 e'16 f'8 \tuplet 3/2 {des'8 c'8 bes8} es'8 r8 r4 
      | r2 r32 cis''32 d''32 cis''32 b'32 a'16. aes'8 g'8 
      | \tuplet 3/2 {ges'8 f'8 e'8} \tuplet 3/2 {es'8 d'8 des'8} c'8. cis'16 \tuplet 3/2 {d'8 e'8 ais'8~} 
      | \tuplet 3/2 {ais'8 gis'8 a'8} f'8 e'8 d'16 aes'8 f'16~ f'16 ges'8 bes'16~ 
      | \tuplet 3/2 {bes'8 f'8 es'8~} \tuplet 3/2 {es'8 d'8 c'8} b8 d'8 f'8 aes'8 
      | g'16 ges'16 f'8 g'8 f'8 e'8 c'8 a4 
      \bar "||" \mark \default g16 c'8 e'16 g'8 f'8 r4 r8 f8 
      | aes8 des'8 b8 r8 r8. es'16~ es'16 ges'8 bes'16 
      | aes'4. aes'8 b'8 es''8 des''8 r8 
      | r8 bes'8 f'4 ges'8 r8 r8 aes'8 
      | bes'8 des''8 c''4. aes'8 es'8 aes'8 
      | d'4. a8 ges4 b'8 gis'8~ 
      | gis'8 a'8 r4 \tuplet 3/2 {aes'4 f'8} ges'8 bes'8 
      | f'8 des'8 bes4 des'8 es'8 f'8 gis'8 
      | a'8 r8 r8 f'16 g'16~ g'8 c''8 es''8 r8 
      | r8 des''8~ \tuplet 3/2 {des''8 a'8 g'8} \tuplet 3/2 {d''8 c''4~} c''8 bes'8 
      | f'16 e'8 a'16 es'4. des'8 bes8 g8 
      | c'4. a8 fis8 b8 d4~ 
      | d8 fis8 a8 cis'8 b8 cis'8 d'8 e'8 
      | fis'8 a'8 gis'4 cis'8 r8 r4 
      | g8 gis8 a8 f8 e8 d8 g8 f8 
      | e8 f8 a8 c'8 e'8 g'8 \tuplet 3/2 {f'4 d'8} 
      \bar "||" \mark \default e'4.^\markup{\left-align \small vib} r8 r4 es'8 d'8 
      | es'8 f'8 ges'8 aes'8 bes'8 ges'8 f'8 e'8 
      | es'8 f'8 ges'8 aes'8 bes'8 es''8 des''8 b'8 
      | bes'8 ges'8 es'8 des'8 ges'4 r4 
      | r2 r16 b'16 g'16 ges'16 f'8 e'8 
      | es'4 bes'16 aes'16 g'16 ges'16 f'8 e'8 es'8 c'8~ 
      | c'16 a'16 aes'16 ges'16 f'8 e'8 es'8 des'8 des''8 c''8~ 
      | c''16 bes'8 bes'16 \tuplet 3/2 {a'8 aes'4} ges'8 bes'8 \tuplet 3/2 {g'8 gis'8 a'8~} 
      | a'8 des'16 es'16 \tuplet 3/2 {aes'4 aes'8~} \tuplet 3/2 {aes'8 g'8 ges'8} f'8 e'8 
      | es'8 d'8 des'8 c'8 bes8 aes8 g8 f8 
      | ges8 bes8~ bes16 g8 gis16 a8 f4 des8 
      | es8 b,8 r2. 
      | r2 g'8 gis'8 b'8 cis''8 
      | b'8 a'8 gis'8 a'8 bes'8 des''8 b'8 a'8 
      | gis'8 a'8 ais'8 cis''8 b'8 b'16 aes'16 g'8 gis'8 
      | a'16 ais'16 b'16 cis''16 b'8 a'8 gis'8 a'16 ais'16 \tuplet 3/2 {b'8 c''8 b'8~} 
      \bar "||" \mark \default b'8 a'8 g'8 a'8 b'8 c''8 b'8 a'8 
      | gis'8 a'8 \tuplet 3/2 {bes'4 c''8} b'8 a'8 aes'8 bes'8 
      | bes'8 des''8 b'8 bes'8 \tuplet 3/2 {aes'4 ais'8} b'8 des''8 
      | b'8 bes'8 fis'4 r2 
      | r4 g'8 ais'8 b'8 d''8 c''8 b'16 bes'16 
      | aes'8 ais'8 b'8 d''8 c''8 d''16 des''16 c''8 bes'8 
      | aes'8 ais'8 b'8 d''8 c''8 bes'8 aes'8 bes'8 
      | c''16 des''16 es''8 c''8 bes'8 c''8 b'8 bes'8 gis'8 
      | a'8 c''8 a'8 g'8 f'8 g'8 a'8 c''8 
      | g'8 bes'8 g'8 f'8 es'8 f'8 g'8 bes'8 
      | a'8 bes'8~ \tuplet 3/2 {bes'8 c''8 des''8} c''8 bes'8 a'8 bes'8 
      | c''8 des''8 c''8 bes'8 a'8 r8 r4 
      | r2 a'8\glissando  b'8 cis''8 d''8 
      | b'8 a'8 gis'8 a'8 ais'8 c''8 \tuplet 3/2 {b'8 a'8 aes'8} 
      | fis'8 gis'8 a'8 b'8 gis'8 ges'8 f'8 g'8 
      | gis'8 ais'8~ ais'16 b'16 cis''16 cis''16~ cis''8\glissando  b'4 aes'8 
      \bar "||" \mark \default g'8 f'8 e'8 f'8 g'8 a'8 g'8 f'8 
      | e'8 f'8 ges'8 aes'8 bes'8 aes'8 ges'8 r8 
      | r2 ges'8\glissando  gis'8 a'8 b'8 
      | f'8 ges'8 \tuplet 3/2 {bes'4 g'8\glissando } gis'8\glissando  a'4 des'16 es'16 
      | aes'8 ges'8 f'8 es'8 d'8 es'8 f'8 ges'8 
      | \tuplet 3/2 {aes'4 f'8} ges'8 bes'8 gis'8 a'4 es'8 
      | aes'4 \tuplet 3/2 {fis'8 g'8 ges'8} f'8 des'8 bes4 
      | \tuplet 3/2 {g8 des'4} \tuplet 3/2 {bes8 des'8 es'8~} \tuplet 3/2 {es'8 d'8 es'8\glissando } f'4 
      | r1 
      | r16 des''16 c''16 bes'16 a'16 g'8. des''16 c''16 b'8 \tuplet 3/2 {bes'8 g'4} 
      | \tuplet 3/2 {des''8 c''8 bes'8} g'4~ g'16 c''8 bes'16 g'4 
      | \tuplet 3/2 {fis'4 des'8} c'16 b8. f'16 es'16 d'16 cis'16 b8 r8 
      | r1 
      | dis8 f8 \tuplet 3/2 {gis8 b8 a8} \tuplet 3/2 {b8 des'8 e'8} des8 es8 
      | \tuplet 3/2 {fis8 a8 g8} a8 ais8 \tuplet 6/4 {d'16 c'8. cis'16 dis'16} g'8 f8 
      | gis16 a16 ais16 cis'16~ cis'8 ais8 c'16 d'16 dis'16 g'16 b'16 c''16 d''8 
      \bar "||" \mark \default e''4 r2 \tuplet 3/2 {dis''8 f''4} 
      | r2 bes''4 r4 
      | r4 des'''4\glissando  dis'''16 e'''4..~ 
      | e'''4\bendAfter #-4  r2. 
      | r1 
      | e'''4 des'''4 c'''4 b''8 bes''8~ 
      | bes''8 a''4 aes''4 aes''8 \tuplet 3/2 {g''4 ges''8} 
      | e''4 es''4 es''4 d''8 des''8\bendAfter #-4  
      | r2 r16 gis''8\glissando  a''16~ a''8 b''8~ 
      | b''8 des'''4 es'''8 f'''4 f'''4 
      | f'''4~ f'''16 a''16 b''16 des'''16~ des'''8 c'''4 b''8~ 
      | b''8 ais''4 g''8 cis''4 b'4 
      | e''4. b'8 a'8 r8 r4 
      | g'8 a'8 b'8 cis''8 a'8 e'8 r4 
      | r4 ais'8 gis'8 a'8 fis'8 dis'8 c'8 
      | b8 d'8 fis'8 gis'8~ \tuplet 3/2 {gis'8 f'8 g'8} f'8 dis'8 
      \bar "||" \mark \default dis'8\glissando  e'8~ e'2 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} 
      | f'4. r8 r4 \tuplet 3/2 {r8 aes'8 g'8~^\markup{\left-align \small vib}} 
      | g'2. bes'8 aes'8~^\markup{\left-align \small vib} 
      | aes'2 \tuplet 3/2 {b'4 bes'8} r4 
      | r4 des''8 c''8~^\markup{\left-align \small vib} c''4. des''8 
      | es''8 d''8 r2 f''8 e''8~ 
      | e''2 g''8 ges''8 r4 
      | r4 r16 a''8 aes''16 g''4. b''8 
      | \tuplet 3/2 {bes''8 c'''8 bes''8~} bes''8 r8 r4 \tuplet 3/2 {cis'''8 d'''8 c'''8~} 
      | c'''4~ \tuplet 3/2 {c'''8 d'''8 c'''8} e'''8. des'''16~ des'''8 r8 
      | r4 a,4 ais,8. b,16~ b,8. c16~ 
      | c4 cis4 d4 dis8 e8~^\markup{\left-align \small vib} 
      | e4 r2. 
      | r8 dis8 f8 fis8 g8 gis8~ gis16 a16 ais8 
      | b8 c'8 \tuplet 3/2 {cis'4 d'8} dis'8 cis'8 d'8 des'8 
      | c'8. ais16 b8 aes8 \tuplet 3/2 {g4 ges8} \tuplet 3/2 {f4 dis8} 
      \bar "||" \mark \default e4 g4 c'4 g8 f8~^\markup{\left-align \small vib} 
      | f4 r4 bes8 f8 es8 r8 
      | r4 \tuplet 3/2 {aes8 g8 ges8} f8 es8 des8 b,8 
      | bes,8 c8 \tuplet 3/2 {es4 aes8~} \tuplet 3/2 {aes8 f8 ges8~} ges16 bes8 cis'16 
      | d'8 f'8 \tuplet 3/2 {e'4 d'8} \tuplet 3/2 {es'4 f'8} ges'8 aes'8 
      | bes'8 es'8 r2. 
      | b'16 des''8 c''16~ \tuplet 3/2 {c''8 ais'8 b'8} a'16 aes'8 ges'16 f'8 es'8 
      | des'8 es'8 f'8 aes'8 des''8 aes'8 f'4 
      | f'8\glissando  g'4 es''4 r8 r4 
      | r8 g'8 a'4 f''8 r8 r4 
      | g''4 ges''4 f''4 e''4 
      | es''4 d''8 cis''4 b'8 ais'8 r8 
      | r4 \tuplet 3/2 {r8 c''8 cis''8~} \tuplet 3/2 {cis''8 b'8 a'8~} a'16 gis'8 fis'16~ 
      | fis'16 e'8 fis'16~ \tuplet 3/2 {fis'8 gis'8 b'8} a'8 ges'8 es'8 c'8~ 
      | \tuplet 3/2 {c'8 b8 d'8} fis'8 gis'8~ \tuplet 3/2 {gis'8 f'8 fis'8} g'8 f'8 
      | e'8 c'8 \tuplet 3/2 {a4 g8} c'8 d'8~ \tuplet 3/2 {d'8 e'8 g'8}\bar  ".."
    }
    >>
>>    
}
