\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Agitation"
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
      
      | r1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | des1:/aes | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | r1|
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


      \tempo 4 = 294
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 \tuplet 3/2 {r8 c'8 es'8} g'2~ 
      | g'8 r8 r2 r8 es'8 
      | f'8 d'8 r2. 
      | r2. r8 d'8 
      | es'4 cis'8 d'8 \tuplet 3/2 {es'4 fis'8} g'8 a'8 
      | bes'4 r2. 
      | es'4. es'4. f''8 e''8 
      | es''8 b'8~ b'16 bes'8 a'16~ \tuplet 3/2 {a'8 aes'8 b'8~} b'8 r8 
      | r1 
      | r2 b'8 a'8 g'8 d'8 
      | ges'8 es'8 f'8 es'8 d'8 c'8 b8 d'8 
      | des'8 b8 c'8. aes16 g8 aes8 ais8 b8 
      | r2. r8 es8 
      | g8 aes8 ais8 b8 r2 
      | r4 \tuplet 3/2 {r8 g8 a8} bes8 c'8 des'4 
      | r2 r8 d8~ d16 g8 aes16~ 
      | aes16 ais8 b16~ b8 r8 r2 
      | r8 g8 a16 bes8 c'16 des'8 r8 r4 
      | r2 r8 g8 \tuplet 3/2 {aes8 ais8 b8~} 
      | b8 r8 r2 r8 g8 
      | a8 bes8 c'8 des'4 r8 r4 
      | r4 \tuplet 3/2 {r8 es8 g8~} \tuplet 3/2 {g8 aes8 ais8} b4 
      | r1 
      | \tuplet 3/2 {a8 bes8 c'8~} c'8 des'8 r2 
      | r4 r8 es8 g8 aes8 ais8 b8~ 
      \bar "||" b8 bes8 g8 aes8 ais8 b8 cis'8 d'8 
      | f'4. c'8 f'4~ \tuplet 3/2 {f'8 c'8 es'8~} 
      | es'4 f'4 r2 
      | r4 r8 bes8 g'4 f'8 es'8~ 
      | es'8 r8 r2 r8 bes8 
      | g'8. c'16 \tuplet 3/2 {f'4 c'8} \tuplet 3/2 {es'4 aes8} \tuplet 3/2 {d'4 b8} 
      | c'8 d'8 es'8 f'8 g'8 b'16 d''16~ d''8 c''8 
      | r4 r8 d'16 f''16~ \tuplet 6/4 {f''4 c''16 es''16~} es''4 
      | r4 r8 es'8 d''4~ \tuplet 3/2 {d''8 es'8 c''8} 
      | des''4. bes'4 aes'8 g'8 f'8 
      | aes'4 e'8 aes'8 g'8 ges'4 e'8 
      | d'8 c'16 es'16~ es'8 r8 r2 
      | r4 r8 bes4 a8 d'8. g'16~ 
      | g'8 c''8 es''8 g''8 \tuplet 3/2 {cis''8 d''8 f''8~} f''8 e''8 
      | es''4~ es''16 ais'16 b'8~ b'8. bes'16~ bes'8 d'8 
      | \tuplet 3/2 {g'8 bes'4} r2. 
      \bar "||" \mark \default r4 r8 g'4 a'4. 
      | g'2 d'4. f'8~ 
      | f'4. d'8 es'4 r4 
      | r2. r8. bes16 
      | d'4. des'8 c'8 d'4 es'8 
      | \tuplet 3/2 {f'8 g'8 b'8} \tuplet 3/2 {d''4 b'8} c''8 d''8 es''8 f''8~ 
      | f''16 fis''8 g''16 bes''8 a''8 aes''8 ges''4 es''8~ 
      | es''8 d''8 es''4 r2 
      | r1 
      | r1 
      | r4 \tuplet 3/2 {fis''4 g''8} es'''8 f''8 ges''8 d'''16 e''16~ 
      | e''8 f''8 des'''8 dis''8 e''16 c'''8 d''16~ d''4 
      | r2 r16 b''16 bes''16 aes''16~ aes''16 g''8 ges''16~ 
      | ges''8 r8 r4 r8 f''4 d''16 es''16 
      | f''8 es''8 d''8 c''8 b'8 d''8 des''8 b'8 
      | c''2 aes'4 g'8 ges'8~ 
      | ges'8 e'8 es'4~ es'16 b16 d'8~ d'16 des'8 b16 
      | c'8 aes4 aes4. g'4 
      | f'8 g'8~ g'16 gis'8 a'16 \tuplet 3/2 {bes'4 a'8~} a'16 aes'8 g'16~ 
      | g'8 gis'8 a'8 bes'8 a'8 aes'8 g'8 gis'8 
      | \tuplet 3/2 {a'8 bes'4} \tuplet 3/2 {a'8 aes'8 g'8} gis'8 a'8 bes'8 a'8 
      | aes'16 g'8 gis'16~ \tuplet 3/2 {gis'8 a'8 bes'8~} bes'8 a'8 aes'8 g'8 
      | gis'8 a'8 bes'8 a'8 aes'8 g'8 gis'8 a'8 
      | bes'8 a'8 aes'8 g'8 gis'8 a'8 bes'8 a'8 
      | aes'4 g'4. bes'4. 
      | es''4. aes''4. des'''4~ 
      | des'''8 aes''4. g'''4 ges'''4 
      | f'''8 e'''8 r2. 
      | r2 \tuplet 3/2 {f'''4 e'''8~} \tuplet 3/2 {e'''8 es'''8 b''8~} 
      | b''16 bes''8 aes''16~ \tuplet 3/2 {aes''8 g''8 ges''8~} ges''16 f''8 es''16 ges''4~ 
      | ges''8. d''16 r2. 
      | r4 f''4. d''4 b'8 
      | g'8. a'16~ a'8 r8 r2 
      | r4 r8 d''8 b'4 g'8 d'8 
      | e'8 r8 r2 d'8 b'8~ 
      | b'8 g'8 d'8 b8 c'8 r8 r4 
      | r4 r8 a'8 \tuplet 3/2 {f'4 d'8~} d'8 a8 
      | b8 r8 r2 r8 g'8~ 
      | g'16 d'8 b16~ b16 g8 a16~ a4 r4 
      | r4 r8 f'4 d'8~ d'16 a8 f16 
      | g1 
      | es'4 c'8 g8 es8 f4.~ 
      | f2. r4\bar  ".."
    }
    >>
>>    
}
