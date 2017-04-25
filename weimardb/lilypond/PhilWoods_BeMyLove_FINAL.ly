\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Be My Love"
  composer = "Phil Woods"
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
      | r1 | s1 
      | f1:maj | f1:maj | e1:min5-7 | a1:9- | d1:min7 | b1:min5-7 | e1:7 | a1:7 
      | d1:7 | g1:min7 | aes1:dim7 | a1:min7 | d1:min7 | g1:7 | g1:min7 | c1:7 
      | f1:maj | s1 | e1:min5-7 | a1:9- | d1:min7 | b1:min5-7 | e1:7 | a1:7 
      | d1:7 | g1:min7 | aes2:dim7 a2:min7 | d1:min7 | g1:min7 | c1:7 | es1:7 | d1:7 
      | g1:min7 | c1:7 | f1:maj | g2:min7 c2:7 | f1:maj | s1 | e1:min5-7 | a1:9- 
      | d1:min7 | b1:min5-7 | e1:7 | a1:7 | d1:7 | g1:min7 | aes1:dim7 | a1:min7 
      | d1:min7 | g1:7 | g1:min7 | c1:7 | f1:maj | s1 | e1:min5-7 | a1:9- 
      | d1:min7 | b1:min5-7 | e1:7 | a1:7 | d1:7 | g1:min7 | aes2:dim7 a2:min7 | d1:min7 
      | g1:min7 | c1:7 | es1:7 | d1:7 | g1:min7 | c1:7 | f1:maj | g2:min7 c2:7 
      | f1:maj | s1 | e1:min5-7 | a1:9- | d1:min7 | b1:min5-7 | e1:7 | a1:7 
      | d1:7 | g1:min7 | aes1:dim7 | a1:min7 | d1:min7 | g1:7 | g1:min7 | c1:7 
      | f1:maj | s1 | e1:min5-7 | a1:9- | d1:min7 | b1:min5-7 | e1:7 | a1:7 
      | d1:7 | g1:min7 | aes2:dim7 a2:min7 | d1:min7 | g1:min7 | c1:7 | es1:7 | d1:7 
      | g1:min7 | c1:7 | f1:maj | g2:min7 c2:7 | f1:maj|
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


      \tempo 4 = 218
      \set Score.currentBarNumber = #-1
     
      | \tuplet 6/4 {r8. g8 bes16~} bes8 g8 aes8 bes8 b8 es'8 
      | \tuplet 3/2 {a'4 g'8} f'8 c'8 e'8 des'8 c'8 bes8 
      \bar "||" \mark \default a8 c'8 d'8 c'8 g'8 e'8 f'8 g'8 
      | gis'8 a'8 bes'8 b'8 c''8 b'8 bes'8 a'8 
      | g'8 f'8 e'8 d'8 des'8 e'8~ \tuplet 3/2 {e'8 g'8 a'8~} 
      | a'16 c''16 d''16 c''16 bes'8 c''16 bes'16 \tuplet 3/2 {a'4 f'8} \tuplet 3/2 {des'4 a8} 
      | \tuplet 3/2 {e'4 a8} \tuplet 3/2 {d'4 e'8} f'4 e'8 es'8 
      | d'8 a8 r2 bes8 a8 
      | gis8 bes8 c'8 e'8 g'4 a8 aes8 
      | g8 a8 b8 d'8 fis'4 c'8 bes8 
      \bar "||" a8 g8 e4 c'8 es'8 d'8 c'8 
      | bes8 c'8 d'4 \tuplet 3/2 {a'4 fis'8} g'8 a'8 
      | bes'16\glissando  b'8 g'16 aes'8 f'8 \tuplet 3/2 {d'4 b8} r4 
      | r4 r8 c'8 \tuplet 3/2 {des'8 c'8 b8} bes8 a8 
      | \tuplet 3/2 {g4 a8} b8 c'8 e'8 cis'8 d'8 e'8 
      | f'8 g'8 e'8 es'8 d'8 e'8 f'8 g'8 
      | a'8. c'16 b8 a8 bes8 g'8 \tuplet 3/2 {e'4 c'8} 
      | f'8 d'8 bes8 g4 e'8 d'8 des'8 
      \bar "||" \tuplet 3/2 {c'4 d'8} f'4 a'4 d''8. cis''16\glissando  
      | d''4~ \tuplet 5/4 {d''16 c''8 des''16 c''16} a'8 f'8 d'8 c'8 
      | g'8 r8 r4 r8 g'16 ges'16 e'8 d'8 
      | des'8 e'8 g'8 a'8 c''8 b'8 bes'8 gis'8 
      | a'8 f'8 des'4 \tuplet 3/2 {g'8\glissando  aes'4} \tuplet 3/2 {g'4 ges'8} 
      | f'8 d'8 r4 r8. f'16 bes'8 a'8 
      | gis'8 c''8 g'8 f'8 e'8 d'8 b8 c'8 
      | cis'8 e'8 g'8 a'8 \tuplet 3/2 {bes'8 c''8 bes'8} a'8 g'8 
      \bar "||" fis'4 c'8 es'8 \tuplet 3/2 {d'4 c'8} d'4~ 
      | d'8 c'8~ c'16 des'16 c'16 a16 bes4 \tuplet 3/2 {f'4 aes'8~} 
      | aes'16\glissando  g'8 f'16 g'4. e'4^\markup{\left-align \small vib} c'8 
      | d'4. a8 bes8 b8 c'8 b8 
      | bes8 a8 \tuplet 3/2 {g8 f4} e8 g8 bes8 d'8~ 
      | d'8 a8 c'8 bes8 a8 c'8 d'8 c'8 
      | d'16\glissando  es'8. c'8 d'4.^\markup{\left-align \small vib} r4 
      | r2 d'4 bes'8 bes'8 
      | b'8 bes'8~^\markup{\left-align \small vib} bes'2~ bes'8 bes'8 
      | b'8 bes'8~ \tuplet 3/2 {bes'8 aes'8 f'8} \tuplet 3/2 {es'8 des'8 c'8} b8 d'8 
      | c'8 b8 bes8 gis8 a8 bes8 e'8 g'8 
      | r2 r8 c'8 \tuplet 3/2 {d'4 e'8~} 
      \bar "||" \mark \default e'8 g'8 \tuplet 3/2 {f'4 e'8~} e'8 c'8 d'8 e'8~ 
      | e'8 g'8 \tuplet 3/2 {f'4 e'8~} e'8 c'8 \tuplet 3/2 {d'4 dis'8} 
      | e'4^\markup{\left-align \small vib} b4 es'4 b4 
      | d'4 b8 c'8 des'8 bes'8 a'8 g'8 
      | f'8 des'8 a8 f8 \tuplet 3/2 {e'4 cis'8} d'8 f'8 
      | r2 r8 f'8 \tuplet 3/2 {g'8 c''8 es''8} 
      | d''8 c''8 bes'8 a'8 aes'8 r8 r4 
      | r8 g'8~ g'16 aes'16 g'16 f'16 e'8 d'8 \tuplet 3/2 {cis'4 bes8} 
      \bar "||" a8 g8 fis8 a8 c'8 dis'8 c'8 cis'8 
      | d'8 bes8 a8 g8 c'8 bes8 a8 bes8 
      | b8. d'16 \tuplet 3/2 {f'4\glissando  fis'8} g'4 ges'4 
      | \tuplet 3/2 {f'4 d'8} r2 \tuplet 3/2 {fis'8\glissando  g'4~} 
      | g'8. f'16~ f'4 dis'16\glissando  e'8. d'4 
      | c'4 b4 gis16\glissando  a8. g8 r8 
      | r8. a16 g16 f8 g16 bes8 d'8 a8 g8 
      | c'8 b8 bes8 c'8 g8 gis8 a8 c'8 
      \bar "||" \tuplet 3/2 {d'4 c'8} f'4 g'8. a'16~ a'8 b'16\glissando  c''16~ 
      | c''4 \tuplet 3/2 {a'4 c'8~} c'2~ 
      | c'8 a'8 bes'8 a'8 g'8 f'8 e'8 d'8 
      | des'8 e'8 g'8. bes'16 c''8 d''16 c''16 bes'8 c''16 bes'16 
      | \tuplet 3/2 {a'4 f'8} des'4 e'8. cis'16 \tuplet 3/2 {d'4 f'8~} 
      | f'8 r8 r4 \tuplet 3/2 {r8 bes'8 a'8} gis'8 c''8~ 
      | \tuplet 3/2 {c''8 g'8 ges'8} f'8 bes4 a'16 aes'16 g'8 b'8~ 
      | b'8 fis'8 e'8 a8 r4 \tuplet 6/4 {r8. c'16 b16 bes16~} 
      \bar "||" bes8 a16 g16~ g8 f8 fis8 dis'8 c'8 cis'8 
      | d'8 bes8 a8 g8 c'8 bes8 b8 cis'8 
      | d'8 e'8 f'8 g'8 gis'8 a'8 bes'8 b'8 
      | \tuplet 3/2 {c''4 d'8} r2 r8. g'16~ 
      | g'8 bes'8 d''8 ges'8~ \tuplet 3/2 {ges'8 bes'8 d''8} \tuplet 3/2 {f'4 bes'8} 
      | \tuplet 3/2 {d''4 d'8} \tuplet 3/2 {e'8 aes'8 d''8} \tuplet 3/2 {a'4 g'8} c''4 
      | a'4 \tuplet 3/2 {e''4 aes'8~} aes'8 e''8 g'4 
      | \tuplet 3/2 {e''4 fis'8~} fis'16 c''16 e''8 b'8 a'8 d''4 
      | g'4 d''8 ges'8~ ges'16 bes'16 d''8 f'4 
      | \tuplet 3/2 {d''4 e'8~} e'16 g'16 d''16 a'16~ a'8. g'16 c''8 bes'8 
      | \tuplet 3/2 {a'4 f'8} d'8 c'8 g'8. d'16~ d'8 r8 
      | r8. bes'16 c''2.~ 
      \bar "||" \mark \default c''8 b'16 bes'16 a'8 f'8 d'8 c'8 \tuplet 3/2 {g'4 d'8~} 
      | d'8 bes'8\glissando  b'2.~ 
      | b'8 a'16 aes'16 g'8 e'8 d'8 b8 c'8 des'8 
      | r4 r8 a8 b8 des'8 \tuplet 3/2 {e'4 cis'8} 
      | d'8 e'8~ e'16 f'8 g'16 \tuplet 3/2 {a'4 f'8} des'4 
      | e'8. cis'16 \tuplet 3/2 {d'4 f'8} r4 r8 a'8 
      | bes'8 a'8 gis'8 c''8 g'8 f'8 e'8 d'8 
      | \tuplet 3/2 {cis'4 bes8} a8 g8 fis8 a8 c'8 es'8 
      \bar "||" d'8 bes8 a8 g8 c'8. a16 bes8 f'8~^\markup{\left-align \small vib} 
      | f'4. r8 r4 r8 bes8 
      | b4 f'4 aes'4. b8 
      | c'4 g'4 a'4. c'8 
      | d'8 f'8 a'4 c''4 a'4 
      | c'8 f'8 a'8. bes'16 b'8 c''16 b'16 a'8 aes'8 
      | g'8 ges'8 f'8 des'8 bes8 g8 c'8. bes16 
      | a4 \tuplet 3/2 {d'4 f'8} \tuplet 3/2 {a'4 b'8} \tuplet 3/2 {c''8 d''8 dis''8\glissando } 
      \bar "||" e''2.^\markup{\left-align \small vib} \tuplet 3/2 {d''4 des''8} 
      | c''8 a'8 r2 r8 a'8 
      | bes'8 a'8 gis'8 a'8 bes'8 a'8 gis'8 a'8 
      | bes'8 a'8 gis'8 a'8 bes'8 a'8~ \tuplet 3/2 {a'8 g'8 ges'8} 
      | f'8 des'8~ \tuplet 3/2 {des'8 a8 des'8} \tuplet 3/2 {e'4 cis'8} d'8 e'8 
      | f'8 g'16 f'16 e'8 es'8 d'8 a8 r4 
      | r8 a8 gis8 fis'8\glissando  g'8 aes'16 g'16 f'8 r8 
      | \tuplet 6/4 {r4 a16 aes16} g8 f'8\glissando  fis'4 e'8 r8 
      \bar "||" r8 a8 c'8 b8 bes8 a8 g8 fis16 a16~ 
      | a4~ \tuplet 6/4 {a16 g8. c'16 d'16~^\markup{\left-align \small vib}} d'4 r4 
      | r8 g8 b8 d'8 \tuplet 3/2 {g'4 e'8} \tuplet 3/2 {f'4 c''8~^\markup{\left-align \small vib}} 
      | c''4. r8 r4 r8 a'8 
      | bes'8 a'16 g'16 ges'8 a'8 g'8 a'8 bes'8 a'16 g'16 
      | ges'8 a'8 g'8 a'8 \tuplet 5/4 {bes'8 a'16 g'16 ges'16~} ges'8 a'8 
      | c''8 b'16 bes'16 a'8 bes'8 a'8 aes'16 g'16 ges'8 r8 
      | r8. bes16 c'8 es'8 d'8 des'8 c'8 b8 
      | \tuplet 3/2 {bes4 c'8} d'4 \tuplet 3/2 {a'4 c''8} d''8.\glissando  es''16~ 
      | es''4 d''8 des''8 c''8 aes'8 e'8 d'8 
      | \tuplet 3/2 {g'4 e'8} \tuplet 3/2 {f'4 g'8} a'8 c'8 r4 
      | r8 c'8 \tuplet 3/2 {d'8 c'8 b8} bes8 g'8 \tuplet 3/2 {e'4 c'8} 
      \bar "||" \mark \default f'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
