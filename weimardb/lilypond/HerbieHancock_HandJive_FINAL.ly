\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Hand Jive"
  composer = "Herbie Hancock"
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
      
      | r1
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


      \tempo 4 = 262
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | c'4.. f'16~ f'2 
      | des'4. ges'8~ ges'2 
      | aes'4. es'8~ es'2~ 
      | es'4 d'4 g'4. c''8~ 
      | c''8 a'4. e'4 f'4~ 
      | f'8 e'4 d''4. c''4 
      | ges'4 r4 r8 f''8 es''8 des''8 
      | r2. r8 b'8~ 
      | \tuplet 3/2 {b'8 a'8 b'8~} b'8 r8 r4 r8. aes'16~ 
      | aes'8 ges'8 aes'4 r4 \tuplet 3/2 {des'4 b8} 
      | des'4 r2. 
      | r8 g8 aes4. bes8 c'8 r8 
      | r8 d'8 es'4~ es'16 f'8 ges'16~ ges'8 r8 
      | r4 r8 a'8~ a'16 ges'8 d'16 b8 r8 
      | r2. r8 b8~ 
      | b8. e'16~ e'8 ges'4 gis'4 a'8~ 
      | a'8 g'8 \tuplet 3/2 {e'4 b8} d'4 d'4 
      | r1 
      | c'4. f'8~ f'2~ 
      | f'8 bes4 es'8~ es'2 
      | b4 fis'2~ fis'8 g'8~ 
      | g'8 b4. ais8 b4 r8 
      | r1 
      | r8 g'8 a'8 b'4 a'8 g'8 f'8 
      | b'4 r2. 
      | r1 
      | r8 a'8 bes'8 c''8 d''8 e''8 d''8 c''8 
      | a'8 g'8 a'4 g'8 r8 r4 
      | r1 
      | r1 
      | r8 es''4 b'4 g'4 des''8~ 
      | des''8 a'8~ a'8. f'16 b'4~ b'16 aes'8 f'16 
      | a'4 \tuplet 3/2 {ges'8 d'8 ges'8~} ges'16 d'8 ges'16~ ges'16 d'8 b16 
      | \tuplet 3/2 {g'4 e'8} f'8 g'8~ \tuplet 3/2 {g'8 aes'8 ais'8} b'8 aes'8 
      | bes'8 g'8 \tuplet 3/2 {es'4 c'8} d'8 es'8 f'8 g'8 
      | aes'4 ais'16 b'8 c''16 \tuplet 3/2 {cis''8 d''8 es''8~} \tuplet 3/2 {es''8 f''8 ges''8} 
      | d''4 r2. 
      | r1 
      | r8 b''16 bes''16 aes''8 e''8 \tuplet 3/2 {es''4 des''8} c''8 b'8 
      | a'8 g'8 aes'8 b'4 r8 r8. b16 
      | g'4. e'8 ges'8 a'8 aes'8 fis'8 
      | g'8 a'8 b'4 d''4 b'4 
      | b'8 c''8~ c''4. aes'4 f'8~ 
      | f'8. f'16~ f'8 es'8 f'4 r4 
      | r4 r8 b8 es'8 b8 des'8 dis'8 
      | \tuplet 3/2 {e'4 ges'8~} ges'8 a'8 b'8 c''8 d''4 
      | es''4 r2 r8 e'8 
      | es''8 d''8 des''8 c''8 \tuplet 3/2 {bes'8 aes'4} g'8 ges'8~ 
      | ges'8 e'8 es'8 cis'8 d'8 e'4 g'8 
      | a'4 ges'8 e'16 d'16 aes'4 \tuplet 3/2 {e'8 d'8 b8} 
      | ges'4 d'8 des'16 b16 e'4 des'8 b16 a16 
      | c'4. bes8~ \tuplet 3/2 {bes8 a8 bes8} d'8 f'8 
      | a'8 c''8 g'8 bes'8 a'4 r4 
      | r2 r8 e'8 a'8 d''8 
      | a'4 d''8 g''8~ g''16 ges''8 e''16 c''4 
      | r2. bes''8 a''8 
      | aes''8 f''8 es''8 des''8 b'8 bes'4 des''8 
      | r2 r8 e'8 a'8 des''8~ 
      | des''16 ges'8 b'16 \tuplet 3/2 {e''4 b'8} e''8 b'8 e'8 r8 
      | r2 r8 e'8 a'8 des''8~ 
      | des''8 a''8 des'''8 e'''4 e'''8 des'''8 es'''8~ 
      | es'''4. d'''4. es'''4~ 
      | es'''8 des'''4. es'''4. c'''8~ 
      | c'''8 es'''8 b''4. ais''4 b''8 
      | a''4. gis''4 a''8 g''4~ 
      | g''8 es''4 es''8 \tuplet 3/2 {fis''4 g''8} f''4 
      | e''8 f''8 es''4 \tuplet 3/2 {d''4 es''8~} es''8 c''8 
      | r2 r8 d''16 des''16 c''8 b'8 
      | \tuplet 3/2 {bes'4 gis'8} a'8. g'16 aes'8 b'8 bes'8 aes'8 
      | g'8 ges'8 f'4 es'8 b4 es'8 
      | r1 
      | r1 
      | r2 r8 c'8 \tuplet 3/2 {d'8 e'8 g'8~} 
      | g'8 es'4 bes8 \tuplet 3/2 {f'4 d'8} bes4 
      | c'4 bes8 c'4 f'8 a'8 aes'8 
      | g'8 es'8 d'8 c'8 f'8 d'8 es'8 f'8 
      | g'8 aes'8 ais'8 b'8 cis''8 d''8 e''8 f''8 
      | r2 aes''4. d''8 
      | g''8 aes''8 g''8 ges''8 f''8 e''8 d''8 c''8 
      | \tuplet 3/2 {f''4 c''8} des''8 dis''8 e''8 ges''4 a''8 
      | b''8 c'''8 d'''4 e'''2~ 
      | e'''4 d'''8 e'''8 b''4. a''8~ 
      | a''8 b''8~ b''4. ges''4.~ 
      | ges''4 e''8 ges''8 b'4. e'8 
      | a'8 b'8 ges'8 b8 e'8 ges'8 b4 
      | r2 r8 bes8 c'8 f'8 
      | c'2~ c'8 es'8 aes'8 d'8~ 
      | d'4 ges'8 a'8 fis'8 g'8~ \tuplet 3/2 {g'8 a'8 b'8} 
      | d''8 b'8 a'8 g'8 des''8 b'8~ b'16 a'8 g'16 
      | bes'8 g'8 \tuplet 3/2 {aes'4 bes'8} r2 
      | r1 
      | r1 
      | r1 
      | r8 bes'4 bes''4 bes''4 aes''8 
      | bes''4 \tuplet 3/2 {aes''4 f''8} r2 
      | r4 r8 g''8~ g''4~ g''16 f''8 g''16~ 
      | g''16 f''8 d''16~ d''8 c''8 a'4 c''4 
      | r2 r8 a'8~ a'16 ais'8 b'16~ 
      | b'8 g'8 e'8 c'8 f'8 es'8 r4 
      | \tuplet 3/2 {r8 cis'8 d'8~} d'8 des'8 f'8 aes'8 \tuplet 3/2 {c''4 ais'8} 
      | b'8 g'8~ g'16 ges'8 e'16 a'8 fis'8 g'8 a'8 
      | ais'8 b'8~ b'16 d''8 ges''16 a''8 ges''8~ ges''16 d''8 b'16 
      | \tuplet 3/2 {ges''4 e''8~} \tuplet 3/2 {e''8 des''8 b'8~} b'16 ais'8 b'16~ b'8 r8 
      | r1 
      | r1 
      | r4 r8 es'8 des''4 a'4~ 
      | a'8. e'16 b'8. g'16~ g'4. e'16 a'16~ 
      | a'8 ges'8~ ges'4. e'8 \tuplet 3/2 {g'4 f'8~} 
      | f'4. bes8 f'8 es'4 b8 
      | d'4 e'8. b16 \tuplet 3/2 {ges'4 a'8~} a'8 e'8 
      | b'8. des''16~ des''8 des'8 \tuplet 3/2 {aes'4 ges'8~} ges'8 des'8 
      | a'8 d''8~ d''8. es'16~ es'4 g''4~ 
      | g''8 d''4 f''4 c''4 d''8 
      | c''8 a'8~ a'16 g'8 d'16 \tuplet 3/2 {a'4 d'8} g'8 r8 
      | r2 r8 e''8~ \tuplet 3/2 {e''8 g''8 b''8} 
      | d'''8 des'''8 c'''8 b''8 bes''8 aes''8 g''8 ges''8 
      | f''8 e''8 es''8 des''8 c''8 bes'8~ bes'16 a'8 g'16~ 
      | \tuplet 3/2 {g'8 bes'8 g'8} aes'8 bes'8~ bes'8. des''16~ des''16 es''8 ges''16~ 
      | ges''2 r2 
      | r1 
      | r4 r8 b'8 bes''4 g''8 es''8 
      | b'8 bes'8 a'8 g'8 \tuplet 3/2 {aes'4 c''8~} c''16 g'8 f'16 
      | \tuplet 3/2 {bes'4 aes'8~} aes'16 c''8 g'16~ g'16 es'8 c'16 f'8 cis'8 
      | d'8 ges'8 a'8 des''8 e''8 d''8 des''8 b'8 
      | bes'2~ bes'4~ bes'16 aes'8 bes'16~ 
      | bes'8 des'8~ des'4. r8 r4 
      | r8 e'4 fis'8 g'8 a'8~ a'16 b'8 d''16~ 
      | d''4 r2. 
      | es''4. c''8~ c''2~ 
      | c''8 r8 r8 d'8 d''8. b'16~ b'4~ 
      | b'4. es'8 des''8 bes'4.~ 
      | bes'4. a'4 c''4 r8 
      | r2 b'8 aes'8 r4 
      | r2. r8 es'8 
      | b'4 b'8 aes'8 b'8 des''8 b'8 aes'8 
      | b'4 r2. 
      | \tuplet 3/2 {r8 e'8 a'8~} a'8 c'16 ges'16 \tuplet 3/2 {a'4 b'8} a'8 f'8 
      | a'8 r8 r2. 
      | r1 
      | r1 
      | r1 
      | c'''8 b''8 a''8 g''8 f''8 d''8 c''8 bes'8 
      | a'8 bes'8 c''8 d''8 a'4. a'8~ 
      | a'8 c''4 e''4 g''4 ges''8~ 
      | ges''8 es''8 d''8 c''8~ c''16 b'8 aes'16~ aes'16 g'8 ges'16 
      | f'8 e'8 es'8. b16 cis'8 d'8~ d'16 b8 a'16~ 
      | a'8 ges'8 e'8 d'8 \tuplet 3/2 {ges'4 d'8} e'8 ges'8 
      | b'8 a'4 e'8 dis'8 e'8 ges'8 aes'8 
      | b'8 g'8 e'4 es'8 b8 des'8 es'8 
      | c'8 es'8 g'8 bes'8 f'8 aes'8 c''8 es''8 
      | f''4 d''8 f''8 d''8 bes'8 g'8 g'8 
      | a'8 d''8 ges''8 a''4 des''8 r4\bar  ".."
    }
    >>
>>    
}
