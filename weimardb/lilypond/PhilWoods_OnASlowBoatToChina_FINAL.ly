\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "On a Slow Boat to China"
  composer = "Phil Woods"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | f1:7 | bes1:maj | s1 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:dim7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | e2:min5-7 a2:9- | bes2:maj aes2:11.9 | g1:7 | c1:7 | s1 | c1:min7 | f1:9 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:dim7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | aes1:11+.9 | bes1:maj | d2:min5-7 g2:7 | c1:7 | f1:7 | bes1:maj | c2:min7 f2:7 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:dim7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | e2:min5-7 a2:9- | bes2:maj aes2:11+.9 | g1:7 | c1:7 | s1 | c1:min7 | f1:9 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:dim7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | aes1:11+.9 | bes1:maj | d2:min5-7 g2:7 | c1:7 | f1:7 | bes1:maj | c2:min7 f2:7 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:dim7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min7 g2:7 
      | c1:min7 | e2:min5-7 a2:9- | bes2:maj aes2:11+.9 | g1:7 | c1:7 | s1 | c1:min7 | f1:9 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:min5-7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | aes1:11+.9 | bes1:maj | d2:min5-7 g2:7 | c1:7 | f1:7 | bes1:maj | c2:min7 f2:7 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:dim7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | e2:min5-7 a2:9- | bes2:maj aes2:11+.9 | g1:7 | c1:7 | s1 | c1:min7 | f1:9 
      | bes1:maj | b2:dim7 g2:7 | c1:min7 | des1:dim7 | bes1:maj | a2:min5-7 d2:9- | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | aes1:11+.9 | bes1:maj | d2:min5-7 g2:7 | c1:7 | f1:7 | bes1:maj | f2:min7 c2:7 
      | bes1:maj|
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
      \set Score.currentBarNumber = #-2
     
      | r2. aes'8 g'8~ 
      | g'16 ges'8 e'16 \tuplet 3/2 {f'4 e'8} es'4 g'8 ges'8 
      | f'8 es'8 c'8 bes8 a8 ges'8 es'8 e'8 
      \bar "||" \mark \default f'8 d'8~ d'16 bes8 g16 c'8 bes8 a8 bes8~ 
      | \tuplet 3/2 {bes8 b8 c'8} cis'8 d'8 r4 r8. b16 
      | c'8 d'8 es'4 g'8 es'8 \tuplet 3/2 {c'4 bes8~} 
      | bes8. bes16~ bes16 cis'8 a'16 a'8 aes'8 g'8 ges'8 
      | f'8 d'8~ \tuplet 3/2 {d'8 bes8 g8} c'8 b8~ b16 bes8 a16 
      | g8 f8 r4 c'8 es'8~ \tuplet 3/2 {es'8 c'8 cis'8} 
      | d'8 des'8 c'8 b8 bes8 aes4 fis8 
      | g8 bes8 b8 cis'8~ cis'16 d'8 es'16~ \tuplet 3/2 {es'8 e'8 f'8~} 
      | \tuplet 3/2 {f'8 fis'8 g'8} \tuplet 3/2 {g'8 es'8 c'8} bes4~ bes16 f'8 ges'16 
      | es'8 c'8 r4 \tuplet 3/2 {e'4 f'8} d'8 bes8 
      | r4 e'8 f'8 d'8 bes8 r4 
      | \tuplet 3/2 {fis'4 g'8} es'8 d'8 c'8 bes8 b8 d'8~ 
      | d'8 d'8 e'8 g'8 \tuplet 3/2 {d''8 c''8 b'8} bes'8 a'8 
      | g'8 ges'8 f'8 e'8 es'8 g8 bes8 d'8 
      | c'8 b8 bes8 gis8 \tuplet 3/2 {a4 c'8} es'8 fis'8 
      | g'8 es'8 c'8 bes8 a8 ges'8~ \tuplet 3/2 {ges'8 es'8 e'8} 
      \bar "||" f'8 d'8~ \tuplet 3/2 {d'8 bes8 g8} c'8 bes8 a8 bes8 
      | d'8 f'8 g'8 g'8\glissando  gis'8 f'8 e'8 g'8 
      | f'8 r8 r4 r8 b8 c'8 d'8 
      | r4 r8 c'8 cis'8 e'8 r4 
      | r8 cis'8 d'4 f'8 r8 r8 cis'8 
      | d'8 ges'8~ ges'8. b16 c'4 g'8 r8 
      | r8 a8 \tuplet 3/2 {bes4 b8} c'8 r8 r8. b16 
      | \tuplet 3/2 {bes4 aes8~} aes4 g8 r8 r4 
      | g4 d'8 f'8 d'8 es'8 f'16 fis'8 g'16 
      | \tuplet 3/2 {g'8\glissando  gis'8 a'8} bes'8 ges'8 es'4 \tuplet 3/2 {f'4 es'8~} 
      | \tuplet 3/2 {es'8 c'8 cis'8} d'8 bes8 g4 c'8 bes8~ 
      | bes16 a8 bes16 b4 \tuplet 3/2 {f'4 aes'8} g'8 f'8 
      | e'8 g'8 bes'8 d''8 a'8 g'8 c''8 b'8~ 
      | \tuplet 3/2 {b'8 bes'8 g'8} \tuplet 3/2 {es'4 c'8} des'4 a'8 g'8 
      | f'8 d'8 bes8 g8 c'8 bes4. 
      | d'8 f'8 r2 r8 aes'8~ 
      \bar "||" \mark \default aes'8\glissando  bes'4 bes'8 bes'16 bes'8.~ bes'16 bes'16 bes'16 bes'16~ 
      | bes'8 g'8~ \tuplet 6/4 {g'16\glissando  gis'8. b'16 gis'16} \tuplet 3/2 {f'4 d'8~} d'16 bes8 g16 
      | c'4.^\markup{\left-align \small vib} es'8 r4 r8 c'8\bendAfter #+4  
      | \tuplet 3/2 {b4 cis'8~} cis'8 e'4 cis'8 d'8 es'8 
      | e'8 f'8 d'8 bes4. \tuplet 3/2 {c'4 b8~} 
      | \tuplet 3/2 {b8 bes8 a8} g8 f4 es'8~ \tuplet 3/2 {es'8 c'8 cis'8} 
      | d'8 r8 r4 bes8 c'8 es'8 fis'8 
      | g'8 bes'8 \tuplet 3/2 {c''4 c''8~} c''8\glissando  des''8~ des''16 c''8 b'16~ 
      | b'16 bes'8 g'16 es'4 \tuplet 3/2 {b'8\glissando  c''8 des''8~} des''16 c''8 b'16 
      | bes'8 b'4\glissando  des''8 c''8 b'8 bes'8 g'8 
      | es'4 b'8\glissando  des''8 c''8 b'8 bes'8 b'8\glissando  
      | c''8 des''8 c''8 bes'8 b'8 g'8 e'4 
      | g'8 aes'16 g'16 f'4 e'4 bes8 d'8 
      | a8 g8 \tuplet 3/2 {c'4 b8} bes8 r8 r4 
      | r8 fis'8~ fis'16 g'8 es'16~ es'16 c'8 bes16~ \tuplet 3/2 {bes8 g8 gis8} 
      | a4 es'8 f'8~ f'16 ges'8 es'16~ \tuplet 6/4 {es'16 c'4 a16~} 
      \bar "||" a16 c'8 bes16~ bes4 d'4 g'8 g'16 aes'16~ 
      | aes'8 g'4 ges'8 \tuplet 3/2 {f'4 cis''8\glissando } d''8 c''8 
      | r2 r8. c''16~ c''16 d''16 c''16 b'16~ 
      | b'16 bes'8 g'16~ g'16 es'8 c'16~ c'8 cis'8~ cis'16 a'8 g'16~ 
      | g'16 f'8 d'16~ d'8 bes16 g16 c'8 b8 bes8 a8 
      | g8 f8 ges8 gis8 a8 b8 c'8 d'8 
      | es'8 f'8~ f'16 fis'8 g'16~ \tuplet 6/4 {g'16 g'16\glissando  aes'8 gis'16 a'16~} a'16 bes'8 b'16 
      | c''16 d''16 c''16 b'16~ \tuplet 3/2 {b'8 bes'8 g'8} es'4 \tuplet 3/2 {f'4 e'8} 
      | es'8 f'8~ f'8. bes'16 d''8 es''8 c''8 b'8 
      | bes'8 ges'8 es'4~ es'16 aes'8 g'16 ges'8 a8 
      | \tuplet 3/2 {bes4 es'8~} es'8. cis'16 d'8 des'8 c'8 b8 
      | \tuplet 3/2 {bes4 aes'8~} aes'8 d'8 g'8 r8 r4 
      | g'4 bes'16 c''8 c''16~ c''4\glissando  des''4~^\markup{\left-align \small vib} 
      | des''2 des''4 c''8 des''16 c''16 
      | bes'8 g'8 r4 g'4 f'8 r8 
      | r2 r8 f'8 g'8 a'8 
      \bar "||" \mark \default bes'8 d'8 es'8 e'8 f'8. bes16~ bes16 c'16 cis'8 
      | d'8 des'8 c'8 bes8 b8 gis'4 fis'8 
      | g'8 es'8 c'8 bes8 d'8 b8 \tuplet 3/2 {c'4 des'8~} 
      | des'8 e'4 g'4 b'8 c''16 des''16 c''16 b'16 
      | bes'8 a'8~ \tuplet 3/2 {a'8 g'8 ges'8} f'8 d'8 bes8 a8 
      | g8 f8 ges4 c'8 es'8~ \tuplet 3/2 {es'8 c'8 cis'8} 
      | d'8 es'8 r4 r8 d'8 es'8 g'16 bes'16 
      | cis''8\glissando  d''8 es''8. c''16~ c''8 r8 r8. bes'16~ 
      | bes'8\glissando  c''8 \tuplet 3/2 {d''4 bes'8~} bes'8 a'8 bes'4~ 
      | bes'4 c''8 aes'4. aes'8. bes'16 
      | ges'8 aes'8~ aes'16 f'8 ges'16~ ges'16 es'8 f'16~ \tuplet 3/2 {f'8 d'8 es'8~} 
      | es'4 \tuplet 3/2 {b4 cis'8~} cis'16\glissando  d'8 c'16 b8 gis8~ 
      | gis8. f16 e4~ e16 bes8 d'16~ \tuplet 3/2 {d'8 a8 bes8} 
      | c'8 bes4 bes8 d'4 a'8 aes'8~ 
      | aes'16 g'8 es'16 \tuplet 3/2 {c'4 a8} b8 a8 bes4 
      | a8 f'8 r2 \tuplet 3/2 {f'4 fis'8} 
      \bar "||" g'4 g'8 gis'8 a'4~ a'16 a'8 aes'16~ 
      | aes'8 g'8~ g'16 g'8 gis'16~ gis'16 a'8 aes'16 g'4~ 
      | g'16 fis'16 g'8~ g'16 g'8 gis'16~ gis'8 a'8~ \tuplet 3/2 {a'8 gis'8\glissando  a'8~} 
      | a'2 aes'16 g'8 e'16 cis'8 a8 
      | c'8 bes8 a8 bes8 d'4 bes'8 a'8 
      | aes'8 g'8 ges'8 d'8 c'8 b8 bes8 aes8 
      | g8 bes8 d'8 f'8 r2 
      | r2 r8 fis'8 g'8 d''8 
      | f''8 e''8 es''8 f'8 e'8 f'8 d''8 des''8 
      | c''8 b'8 bes'8 ges'8 es'4 aes'8 g'8 
      | ges'8\bendAfter #-4  f'8 r4 r8. cis'16 d'8 ges'8 
      | fis'8\bendAfter #+4  g'8 ges'16 d'8 g'16~ g'8 aes'8 g'16 f'8. 
      | e'4 bes8 d'8 r2 
      | c'8 d'8 es'8 e'8 f'8 cis'8 d'8 f'8 
      | \tuplet 3/2 {des'8 c'8 bes8} g4~ g16 c'8 b16 bes8 gis8 
      | \tuplet 3/2 {a4 c'8} es'8 fis'8 g'8 es'8 \tuplet 3/2 {c'4 bes8} 
      \bar "||" \mark \default c'8 r8 r8. bes16~ bes8 c'8~ c'8. bes16~ 
      | bes16 c'16 des'16 c'16 bes16 c'8 des'16~ des'8. c'16~ \tuplet 3/2 {c'8 cis'8 bes8} 
      | c'4. bes8 c'8 r8 r8 bes8 
      | c'16 des'16 c'16 bes16 \tuplet 3/2 {bes8\glissando  c'8 cis'8~} cis'8 bes8~ bes16 c'16 bes16 g16 
      | c'8 bes4. d'4 bes'8 a'8 
      | aes'8 c''8 es''8 f''8\glissando  ges''8 des''16 b'16 aes'8 fis'8 
      | g'4 d''8 f''4.^\markup{\left-align \small vib} es''8. f'16~ 
      | f'8 d''4 bes'8~ bes'16 c''8 g'16 es'4 
      | a'8 bes'4 g'4 es'8 c'8. a'16\glissando  
      | bes'4. g'4 e'8 c'8 bes8 
      | \tuplet 3/2 {a'8\glissando  bes'4~} bes'8 f'8 r2 
      | r8 d'8 f'8 g'8 aes'8 r8 r4 
      | g'8 aes'8 g'16 f'8 c'16 \tuplet 3/2 {e'4 g8} bes8 d'8 
      | r4 c'8 b8~ b16 bes8 c'16 g8 gis8 
      | a8 c'8 es'8 fis'8 g'8 es'8 c'8. bes16 
      | a8 c'8 es'8 g'8 \tuplet 3/2 {aes'4 g'8} ges'8 e'8~ 
      \bar "||" e'16 f'8 d'16~ d'16 bes8 g16 c'8 bes8~ bes16 a8 bes16~ 
      | \tuplet 3/2 {bes8 b8 cis'8} d'8 e'8 f'8 gis'8~ gis'8. fis'16 
      | \tuplet 3/2 {g'4 es'8} r4 d'8 b8 c'8 r8 
      | r8. c'16~ \tuplet 3/2 {c'8 e'8 g'8} bes'16 b'16 c''16 d''16 cis''16 bes'8 f'16 
      | r2 r8 c''8~ c''16 d''16 c''16 bes'16 
      | ges'8 r8 r8 b'8\glissando  c''16 d''16 c''16 bes'16 g'8 r8 
      | r8 c''8~ c''16 d''16 c''16 b'16 bes'8 g'8 \tuplet 3/2 {es'4 c'8} 
      | d'8 des'8~ des'16 c'8 bes16~ \tuplet 3/2 {bes8 b8 gis'8~} \tuplet 3/2 {gis'8 f'8 fis'8} 
      | g'8 es'8 d'4 f'8 e'8 es'8 f'8~ 
      | f'16 ges'8 bes'16 des''4 \tuplet 6/4 {bes'16 c''8. des''16 c''16} bes'8 a'8 
      | g'8 ges'8~ \tuplet 6/4 {ges'16 f'8. cis'16\glissando  d'16} \tuplet 3/2 {bes4 g8} c'8 bes8 
      | a8 bes8 des'4 aes'4 g'8 fis'8 
      | g'4 bes'4 g'4 fis'16 g'8 cis'16 
      | \tuplet 3/2 {d'4 f'8~} f'8 d'8~ \tuplet 3/2 {d'8 c'8 bes8} a8 g8~ 
      | \tuplet 3/2 {g8 a8\glissando  bes8} d'4 bes4~ \tuplet 3/2 {bes8 a8 c'8~} 
      | c'8 d'8 es'8 g'4 des'8 a'8 g'8 
      \bar "||" f'8 d'8 r2.\bar  ".."
    }
    >>
>>    
}
