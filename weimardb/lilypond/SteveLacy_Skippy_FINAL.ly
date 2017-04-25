\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Skippy"
  composer = "Steve Lacy"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key aes \major
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
      
      | d2:7 g2:7 | c2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes1:7 | g1:7 
      | ges2:7 f2:7 | e2:7 es2:7 | aes2:7 g2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | fis2:7 b2:7 | e2:7 a2:7 
      | d2:7 g2:7 | c2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges1:7 
      | des4:7 c4:7 b4:7 bes4:7 | a4:7 aes4:7 g4:7 ges4:7 | b4:7 bes4:7 a4:7 aes4:7 | g4:7 ges4:7 f4:7 e4:7 | bes2:min7 es2:7 | bes2:min7 es2:7 | bes2:min7 es2:7 | aes1 
      | d2:7 g2:7 | c2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes1:7 | g1:7 
      | ges2:7 f2:7 | e2:7 es2:7 | aes2:7 g2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | fis2:7 b2:7 | e2:7 a2:7 
      | d2:7 g2:7 | c2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges1:7 
      | des4:7 c4:7 b4:7 bes4:7 | a4:7 aes4:7 g4:7 ges4:7 | b4:7 bes4:7 a4:7 aes4:7 | g4:7 ges4:7 f4:7 e4:7 | bes2:min7 es2:7 | bes2:min7 es2:7 | bes2:min7 es2:7 | aes1 
      | d2:7 g2:7 | c2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes1:7 | g1:7 
      | ges2:7 f2:7 | e2:7 es2:7 | aes2:7 g2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | fis2:7 b2:7 | e2:7 a2:7 
      | d2:7 g2:7 | c2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges2:7 f2:7 | bes2:7 a2:7 | aes2:7 des2:7 | ges1:7 
      | des4:7 c4:7 b4:7 bes4:7 | a4:7 aes4:7 g4:7 ges4:7 | b4:7 bes4:7 a4:7 aes4:7 | g4:7 ges4:7 f4:7 e4:7 | bes2:min7 es2:7 | bes2:min7 es2:7 | bes2:min7 es2:7 | aes1 
      | d2:7 g2:7|
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


      \tempo 4 = 267
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default e''8 fis''8 aes''4 bes''4 g''4 
      | es''4 aes''8 aes''4 r8 r8. g''16~ 
      | g''4 f''8 es''8 r2 
      | f''4 es''8 f''8 es''8 d''8 des''8 b'8 
      | bes'8 fis'8 e'8 r8 r4 aes'8\glissando  a'8~ 
      | a'8. f'16~ f'2. 
      | aes'2 \tuplet 3/2 {es'4 f'8} g'8 aes'8 
      | g'8 f'8 es'8 d'8 des'8 r8 r4 
      | es''8 f''8 g''8 aes''8 ges''8 r8 r4 
      | f''4. e''4. es''8 r8 
      | r4 g''4 r2 
      | fis''8 e''8 es''8 des''8 \tuplet 3/2 {c''4 a'8} f'8 es'8 
      | d'8 f'8 aes'8 c''8 des''8 e''8 g''8 b''8 
      | bes''8 ges''8 es''8 c''8 b'8 a'8 g'8 f'8 
      | \tuplet 3/2 {e'4 des'8} \tuplet 3/2 {e'4 fis'8~} fis'4 es'4~ 
      | es'4 d'4 des'4.. c'16~ 
      \bar "||" c'4~ c'16 d'8 fis'16~ fis'8 a'8 fis'16 g'8 b'16 
      | d''8 c''8 e''8 g''8 bes''8 a''8 g''8 f''8 
      | e''8 es''8 d''8 des''8 d''8 es''8 des''8 es''8 
      | c''8 r8 r4 b'8 a'8 g'8 f'8 
      | ges'8 e'8 es'8 des'8 c'8 d'16 es'16~ es'8 f'8 
      | bes8 c'8 d'8 f'8 es'8 f'8 g'8 bes'8 
      | aes'8 bes'8 c''8 es''8 f''8 g''8 f''8 ges''8~ 
      | ges''8 r8 r2. 
      | \tuplet 3/2 {b''4 f''8} e''8 bes''8 a''8 es''8 d''8 aes''8 
      | g''8 des''8 c''8 ges''8 f''8 b'8 bes'8 f'16 e'16~ 
      | e'16 es'8 d'16~ d'8 r8 r8. e'16 f'8 g'8 
      | aes'16 bes'16 b'16 es''16 f''8 g''8 \tuplet 3/2 {aes''8 bes''8 b''8~} b''4~ 
      | b''2 g''4 \tuplet 3/2 {b''4 g''8~} 
      | g''8 b''8 g''4 b''4 g''8 b''8~ 
      | b''4 g''4 b''4 g''4 
      | aes''4 r2 r8. e''16 
      \bar "||" \mark \default fis''8 aes''8~ aes''16 c'''8 bes''16~ bes''8 g''8 es''8 b'8 
      | \tuplet 3/2 {d''8 e''8 ges''8~} ges''16 bes''8 aes''16~ aes''8 ges''8 des''8 a'8 
      | c''8 d''16 e''16~ e''8 aes''8 ges''8 es''8 b'8 g'8 
      | bes'8 c''8 d''8 ges''8 e''8 des''8 a'8 ges'8 
      | aes'8 bes'8 c''8 e''8 d''8 b'8 g'8 es'8 
      | ges'8 aes'8 bes'8 c''8 \tuplet 3/2 {bes'4 a'8} f'8 des'8~ 
      | des'8 c'8~ c'4. des'8 es'8 f'16 g'16~ 
      | \tuplet 3/2 {g'8 a'8 des''8~^\markup{\left-align \small vib}} des''2 r4 
      | bes'8 e''8 aes''8 bes''8 a''8 g''8 es''8 a'8 
      | c''8 d''8 \tuplet 6/4 {fis''8 g''16 aes''16 b''16 c'''16} des'''16 d'''8 des'''16~ \tuplet 3/2 {des'''8 c'''8 b''8} 
      | a''16 g''8 ges''16 e''8 es''8 d''16 des''16 c''16 b'16 a'8 aes'8 
      | \tuplet 3/2 {ges'8 f'4} r2. 
      | \tuplet 3/2 {des'8 es'8 f'8~} f'8 a'8 \tuplet 6/4 {b'16 des''8 d''16 es''16 f''16} fis''4~ 
      | fis''8 r8 r2 r8. a'16 
      | bes'8. des''16 e''8\glissando  aes''4 des'''8\glissando  a''16 fis''8 es''16 
      | aes'8 b'8 d''8 fis''8 \tuplet 3/2 {b''4 g''8} e''8 des''8 
      \bar "||" fis'8. a'16~ a'16 des''8 e''16~ e''16 a''8 f''16 d''8 b'8~ 
      | b'16 e'8 g'16~ g'16 bes'8 d''16~ d''16 g''8 es''16~ \tuplet 3/2 {es''8 c''8 a'8~} 
      | a'16 d'8 f'16 a'8 c''8 f''8 des''8 bes'8 g'16 c'16~ 
      | c'8 e'8 ges'8 bes'8 es''8 f''8 es''8 d''8 
      | des''8 b'8 bes'8 g'8 aes'8 g'8 ges'8 e'8 
      | f'8 e'8 es'8 d'8 des'8 es'8 r4 
      | r4 d'8 f'8 es'8 f'8 g'8 bes'8 
      | g'8 aes'8 bes'8 c''8 es''8 f''8 \tuplet 3/2 {g''4 aes''8~} 
      | aes''4 g''8 f''8 r2 
      | r1 
      | fis''4 es''8 d''8 f''8 e''8 des''8 c''8 
      | es''8 d''8 b'8 bes'8 des''8 c''8~ c''16 a'8 aes'16~ 
      | aes'16 b'8 g'16~ g'8 r8 r4 r16 es'16 f'16 g'16 
      | f'4.. es'16~ es'2 
      | es''16 f''16 g''8 \tuplet 3/2 {es''8 f''8 g''8} es''16 f''16 g''8 es''16 f''16 g''8 
      | es''16 f''16 g''8 es''16 f''16 g''8 es''16 f''16 g''8 es''16 f''16 g''8 
      \bar "||" \mark \default ges''4 d''4 b'4 g'4 
      | bes'4 \tuplet 3/2 {e''4 es''8~} es''8 a'4. 
      | aes'4 es''4 c''4 es''4 
      | aes'2 des''8 es''8 f''8 ges''8~ 
      | ges''4 \tuplet 3/2 {e''8 es''8 des''8} f''4 \tuplet 3/2 {es''8 d''8 des''8} 
      | e''4 \tuplet 3/2 {d''8 des''8 b'8} es''4 \tuplet 3/2 {des''8 c''8 bes'8} 
      | es''8 r8 r2. 
      | r8 b''8 r2. 
      | fis''4 \tuplet 3/2 {e''8 es''8 des''8} f''4 \tuplet 3/2 {es''8 d''8 des''8} 
      | e''4 \tuplet 3/2 {d''8 des''8 b'8} es''4 \tuplet 3/2 {des''8 c''4} 
      | \tuplet 3/2 {b'8 aes''4} \tuplet 3/2 {ges''8 f''8 es''8} g''4 \tuplet 3/2 {f''8 e''8 es''8} 
      | fis''4 \tuplet 3/2 {e''8 es''8 des''8} f''4 \tuplet 3/2 {es''8 d''8 des''8} 
      | bes''4 \tuplet 3/2 {aes''8 g''8 f''8} a''4 \tuplet 3/2 {g''8 fis''8 e''8} 
      | aes''8. ges''16~ ges''16 f''16 es''8 g''8. f''16 e''8 es''8 
      | ges''4 \tuplet 3/2 {f''8 es''8 des''8} b'8 b''4. 
      | e''4~ e''16 d''8 des''16 r2 
      \bar "||" d''8 fis''8 a''8 g''8 f''8 e''8 d''8 c''8 
      | bes'8 r8 r2 r8. a'16\glissando  
      | \tuplet 3/2 {bes'4 c''8} \tuplet 3/2 {d''4 f''8~} \tuplet 3/2 {f''8 es''8 f''8} g''8 bes''8 
      | aes''8 g''8 f''8 e''8 es''8 d''8 des''8 b'8 
      | bes'8 fis'8 e'8 c'8 es'4.. bes16~ 
      | bes8 c'8 d'8 f'8 \tuplet 3/2 {es'4 f'8} g'8 bes'8~ 
      | bes'16 g'8 aes'16 bes'8 des''8 es''8 f''8 g''8 aes''8~ 
      | aes''8 fis''8 r2. 
      | a''8 b''8~ b''16 aes''8 f''16 g''8 a''8 ges''8 es''8 
      | f''8 g''8 e''8 des''8 es''8 f''8 d''8 b'8 
      | des''8 es''8 d''8 b'8 es''8 f''16 e''16~ e''8 des''8 
      | f''8 g''8 fis''8 es''8 g''8 a''8 g''16 f''8. 
      | r2 \tuplet 3/2 {f''8 g''8 a''8} b''8 a''16 g''16 
      | \tuplet 3/2 {f''8 es''8 des''8} b'8 a'16 g'16 \tuplet 3/2 {f'8 es'8 des'8~} des'4~ 
      | des'2 es'4 des'4 
      | aes'1^\markup{\left-align \small vib} 
      \bar "||" \mark \default c''4 r2.\bar  ".."
    }
    >>
>>    
}
