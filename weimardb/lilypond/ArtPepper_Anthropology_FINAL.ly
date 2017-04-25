\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Anthropology"
  composer = "Art Pepper"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | bes1:6 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | s2 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | s2 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | s2 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2 g2:7 | c2:min7 f2:7 | bes2 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
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


      \tempo 4 = 219
      \set Score.currentBarNumber = #0
     
      | f'4 es'8. bes16 des'4 es'4 
      \bar "||" \mark \default bes4 bes4.^\markup{\left-align \small vib} r8 r4 
      | r1 
      | r2 d4 a8 c'8~ 
      | c'16 bes8 g16~ g8 bes8 des'4 c'8 bes8 
      | c'4.^\markup{\left-align \small vib} bes8 aes8 c'8 b8 a8 
      | bes8 fis8~ \tuplet 3/2 {fis8 g8 bes8} des'8. aes16 cis'8 d'8 
      | bes8 c'8 g8 bes4 bes8 r4 
      | r1 
      \bar "||" r8 f'8 d'8 c'8 \tuplet 3/2 {b4 g8} r4 
      | c'8. bes16~ bes16 c'16 bes16 g16 a8 f8 r4 
      | r2 d4 aes8 bes8 
      | fis8 g8 c'8 bes8 a8 c'8 es'4 
      | aes'4 g'8 ges'8 f'8 d'8 bes4 
      | es'4 \tuplet 3/2 {bes4 g8} des'4. bes8 
      | c'16 d'16 c'16 bes16 a8 bes4.^\markup{\left-align \small vib} r4 
      | r2. r8. d'16~ 
      \bar "||" d'8 fis'8 r2. 
      | c'4 e'8. c'16 d'2^\markup{\left-align \small vib} 
      | r2 b4 g'8. d'16 
      | f'8 g'8 r2. 
      | r2 e'8 f'8 g'8 a'8 
      | \tuplet 3/2 {bes'4 c''8} d''8 c''8 bes'8 g'8 r4 
      | r4 r8. g'16~ g'8 es'8 c'8 bes8 
      | a4 f'8 c'8 es'8. f'16 r4 
      \bar "||" r2 r8 cis'4 f'8 
      | \tuplet 3/2 {bes'4 f'8~} f'8. c'16 es'4 bes'4 
      | r1 
      | es'4 bes'4 e'4 bes'4~ 
      | bes'1 
      | aes'8 g'8 aes'8 g'8 f'8 es'8 c'8 cis'8 
      | d'8 bes8 aes8 bes8~^\markup{\left-align \small vib} bes4. r8 
      | r1 
      \bar "||" \mark \default r8 bes'8 d''8. es''16 \tuplet 3/2 {f''4 g''8} r4 
      | r1 
      | r4 r8 cis''8 \tuplet 3/2 {d''4 f''8} aes''8 g''8 
      | f''8 es''8 c''8 cis''8 d''8 bes'8 f'8 e'8 
      | d'16 es'16 g'8~ g'16 ges'8 e'16 f'8 des'4 f'8 
      | bes'4. g'16 es'16 c'16 des'8 aes'16 r4 
      | r2 r8. f'16~ f'8 e'8~ 
      | e'8 g'8 es'8. c'16 f'8 d'8 es'8 f'8 
      \bar "||" cis'8 d'8 \tuplet 3/2 {es'4 cis'8} d'8 bes8 f8 es8~^\markup{\left-align \small vib} 
      | es4. bes8 es8 e4 f8~^\markup{\left-align \small vib} 
      | f4. r8 r2 
      | r8 f16 es16~ \tuplet 3/2 {es8 g8 bes8~} bes8 des'8 a8 c'8 
      | a8 bes8 d'8 bes8 f'8 d'8 bes8 es'8~^\markup{\left-align \small vib} 
      | es'2 des'8 bes8 c'4 
      | \tuplet 3/2 {bes4 f8} a8 bes4.^\markup{\left-align \small vib} r4 
      | r2. r8 e'8~ 
      \bar "||" e'8 g'8 r2 r8. fis'16~ 
      | fis'8. a'16~ a'8. d''16~ d''2~ 
      | d''2 \tuplet 3/2 {b'4 d''8} g''8 ges''8 
      | f''4 \tuplet 3/2 {d''8 es''8 d''8} \tuplet 3/2 {c''4 b'8} r4 
      | r2 r8. d''16~ d''8 a''8~^\markup{\left-align \small vib} 
      | a''4. r8 r8. g''16~ g''8 bes''8~^\markup{\left-align \small vib} 
      | bes''4 r2. 
      | \tuplet 3/2 {g''8 a''8 g''8} \tuplet 3/2 {es''4 f''8} \tuplet 3/2 {bes''4 c'''8} r4 
      \bar "||" r2. r8 c'''8~ 
      | c'''8 d'''2..~^\markup{\left-align \small vib} 
      | d'''4. r8 r2 
      | bes''8 aes''8 bes''8 aes''8 f''8 g''16 f''16 e''8 g''8 
      | \tuplet 3/2 {f''8 e''8 d''8} bes'8 aes'4.^\markup{\left-align \small vib} c''8. bes'16~ 
      | bes'8 ges'8 r2. 
      | ges'8. bes'16~ bes'16 c''8 cis''16~ cis''8 d''16 es''16~ es''8 cis''8 
      | \tuplet 3/2 {d''4 bes'8} f'8 e'4 g'8 ges'4 
      \bar "||" \mark \default f'8 r8 r8. bes'16~ bes'8 f'8 r4 
      | r4 r8 c''4 a'8 r4 
      | r2 \tuplet 3/2 {r8 d''8 c''8} b'8 r8 
      | r4 r8 c''8~ \tuplet 3/2 {c''8 d''8 c''8} \tuplet 3/2 {a'8 c''8 es''8~} 
      | es''8 g''8 \tuplet 3/2 {ges''4 e''8} f''16 d''8 bes'16~ \tuplet 6/4 {bes'8 d''8. f''16~} 
      | f''8 d''8 es''8 c''8 bes'4 des''8 c''8 
      | \tuplet 3/2 {bes'4 f'8} \tuplet 3/2 {e'4 d'8} es'8 cis'8 \tuplet 3/2 {d'4 f'8} 
      | bes'4. f'8 \tuplet 3/2 {c''4 f'8} r4 
      \bar "||" r1 
      | r8 f''4 bes''4 d'''4.~ 
      | d'''2\glissando  bes''8 f''8 r4 
      | r4 r8 aes''8~ aes''16 g''16 ges''16 f''16~ f''4~ 
      | f''2 es''8 f''8 cis''8 d''8 
      | bes'8 f'8 e'8. d'16 es'8 cis'8 \tuplet 6/4 {d'4 f'16 bes'16~} 
      | bes'8 c''8 g'8 bes'8~^\markup{\left-align \small vib} bes'4. r8 
      | r2 r8 d''8~ d''8. fis''16~ 
      \bar "||" fis''8 g''16 gis''16 a''8 aes''16 g''16 fis''8 d''8 r4 
      | r2 r8 g''4 b''8 
      | f'''8 r8 r8 cis'''8~ cis'''8. d'''16~ d'''8. b''16~ 
      | b''4 g''4 \tuplet 3/2 {a''8 bes''8 a''8} g''8 bes''8~^\markup{\left-align \small vib} 
      | bes''4 r2 r8 ges''8 
      | gis''8 a''8~ a''16 aes''16 g''16 fis''16~ fis''8 g''4.~ 
      | g''2 \tuplet 3/2 {es''8 f''8 es''8} c''4 
      | g''8 bes''8 \tuplet 3/2 {g''4 gis''8} a''8 f''8 g''8 es''8 
      \bar "||" c''4 f''8 es''8 d''8 bes'8 f'8 e'8 
      | \tuplet 3/2 {d'8 es'8 g'8} ges'8 e'8 f'8 d'8 \tuplet 3/2 {es'4 cis'8} 
      | d'2^\markup{\left-align \small vib} bes'8 r8 r4 
      | r4 r8. es'16~ es'8 f'16 bes'16~ bes'4 
      | d''1\glissando  
      | es''4. c''8 \tuplet 3/2 {cis''4 d''8~} d''8 bes'8~ 
      | bes'8 bes'8~^\markup{\left-align \small vib} bes'4. r8 r4 
      | r2 r8. f''16~ f''8 g''8 
      \bar "||" \mark \default bes''8 c'''8 d'''2 r4 
      | r4 r8. g'''16~^\markup{\left-align \small vib} g'''4. r8 
      | r4 r8. f'''16~ f'''8 r8 r8. es'''16~ 
      | es'''4 des'''2.~ 
      | des'''2\glissando  \tuplet 3/2 {bes''4 aes''8~} aes''8 aes''8~^\markup{\left-align \small vib} 
      | aes''4 g''8 ges''8 f''8 e''8 es''8 g''8 
      | d''8 c''8 f''8 es''8 d''8 bes'8 f'8 e'8 
      | \tuplet 3/2 {d'8 es'8 g'8} ges'4 f'4 es'4 
      \bar "||" d'8 bes'4. r2 
      | r8. bes'16~ \tuplet 3/2 {bes'8 c''8 bes'8} aes'8 c''8 r4 
      | r4 r8 bes'4 d''8 r4 
      | r4 \tuplet 3/2 {r8 bes'8 es''8~} es''8 g''8 r4 
      | r4 r8. d''16~ d''8. bes''16~ bes''8 es''8~ 
      | es''8 bes''8~ \tuplet 3/2 {bes''8 es''8 e''8~} e''8 bes''4.~ 
      | bes''4.. gis''16~ gis''8 a''16 aes''16 f''8 es''8 
      | \tuplet 3/2 {d''4 bes'8~} bes'8 bes'4.^\markup{\left-align \small vib} r4 
      \bar "||" r4 r8 e''8 g''8 e''8 r4 
      | r8 fis''8 g''16 a''16 fis'''8~ fis'''16 cis'16 b16 a16 r4 
      | r2 g8 a8~ \tuplet 3/2 {a8 a8 c'8} 
      | d'8 bes8~ \tuplet 3/2 {bes8 b8 d'8} g'2~ 
      | g'2 e'8 g'8 bes'8 c''8 
      | d''8 c''8 d''8 c''8 bes'8 g'8 r4 
      | r2 es'4 bes'4 
      | f''8 d''8 es''8 f''8 aes''8 ges''8 f''8 es''8 
      \bar "||" d''8 bes'8 r4 r8. d''16~ d''8 es''8~ 
      | es''8 bes'8 r2 r8. e''16~ 
      | e''8. f''16~ f''8 e''8 f''8 e''4 es''8~ 
      | es''8 f''8~ f''8. aes''16~ \tuplet 3/2 {aes''8 g''8 aes''8~} aes''4~ 
      | aes''2\glissando  d'''8 g''16 f''16 es''8 f''8~^\markup{\left-align \small vib} 
      | f''4 es''8 c''16 bes'16~ bes'8 aes'8 r4 
      | r8. f'16 e'4 es'8 g'4 c'8 
      | f'8 d'8 es'8 f'16 aes'16~ aes'8 ges'8 f'8 es'8 
      \bar "||" \mark \default \tuplet 3/2 {d'4 bes'8~} bes'8 r8 r2\bar  ".."
    }
    >>
>>    
}
