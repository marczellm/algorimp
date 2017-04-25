\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Orbits"
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


      \tempo 4 = 265
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 a4. d'4 a4 
      | aes1 
      | g4 \tuplet 3/2 {fis8 g8 a8~} \tuplet 3/2 {a8 bes8 c'8} cis'8 d'8 
      | g'4. d'8~ d'8. des'16~ des'8 r8 
      | r2 c'4. b8 
      | bes8 a8 aes8 r8 r2 
      | r4 g4 f8 g8 gis8 a8 
      | bes8 c'8 es'4 d'4~ d'16 des'8 b16 
      | r2 r8 c'8 a16 bes8. 
      | r4 a8 g8 aes8 fis8 g8 ges8 
      | \tuplet 3/2 {f4 e8~} e8 d8 \tuplet 3/2 {es4 c8~} \tuplet 3/2 {c8 des8 dis8} 
      | e8 fis8 g8 a8 bes16 c'8 des'16~ des'4 
      | c'4. g4 bes4 a8 
      | aes8 bes8 c'4 \tuplet 3/2 {g4 aes8} bes4~ 
      | bes16 f8 g16~ g8 aes8 e4 f16 g8 f16~ 
      | f4 r2. 
      | r8 c8 es8 g8 d4 gis8 a8 
      | bes4. aes8 r2 
      | r2 \tuplet 3/2 {bes4 g8~} \tuplet 3/2 {g8 aes8 ais8} 
      | b8 des'8~ \tuplet 3/2 {des'8 dis'8 e'8} f'8 g'8 \tuplet 3/2 {aes'4 e'8} 
      | g'8. e'16 f'8 g'8~ \tuplet 3/2 {g'8 aes'8 ais'8} b'8 c''8 
      | cis''8 d''8~ \tuplet 3/2 {d''8 des''8 c''8} \tuplet 3/2 {b'8 bes'4} a'8 aes'8 
      | \tuplet 3/2 {g'8 ges'4} f'8 e'16 es'16~ es'8 aes'16 d'16~ d'8. d'16~ 
      | d'4 d'8 c'8 des'8 e'8 es'8 des'8 
      | c'8 bes8~ \tuplet 3/2 {bes8 a8 g8~} g16 aes8 e16 ges8 a8 
      | aes8 ges8 f8 ges8~ ges16 gis8 a16 bes8 c'8 
      | d'8 es'4 b8 \tuplet 3/2 {d'4 des'8~} \tuplet 3/2 {des'8 c'8 b8} 
      | bes8 aes8 g8 ges8 f8 e8 es4 
      | \tuplet 3/2 {es4 aes8~} aes8 e8 e8 aes8 f4~ 
      | f16 f8 a16 ges4 ges8 bes8 g8 b8~ 
      | b8 aes4 c'8~ c'8. aes16 b4~ 
      | b8 gis8 a16 ais8 b16~ b16 c'8 cis'16 d'4~ 
      | d'8 es'8~ es'4. d'4 cis'8~ 
      | cis'4 r2. 
      | d'4 d'8 c'8 des'8 b8 c'8 b8 
      | bes8 r8 r8 g'4 fis'8 g'4~ 
      | g'4 ges'4 f'4. es'8~ 
      | es'8 es'8 cis'8 r8 r2 
      | r4 \tuplet 3/2 {d'4 c'8} des'8 dis'8 e'8 fis'8 
      | g'8 a'8 bes'8 c''8 \tuplet 3/2 {des''4 bes'8} c''8 g'8~ 
      | g'16 e'8 c'16 bes'8 c'8 f'8 bes'8 a'8 ges'8 
      | f'8 es'8 d'8 c'8 b8 bes8 r4 
      | r2 r16 a8 g16~ \tuplet 3/2 {g8 aes8 b8} 
      | bes8 aes8 g8 ges8~ \tuplet 3/2 {ges8 f8 e8~} e8 d8~ 
      | d8 ges8 \tuplet 3/2 {es8 es8 g8~} g16 ges8 es16~ es16 dis8 e16~ 
      | e16 g8 aes16~ \tuplet 3/2 {aes8 e8 f8~} f8 gis8 a8 f16 ges16~ 
      | ges16 a8 bes16~ bes8 ges8 r2 
      | b4 \tuplet 3/2 {g8 aes8 b8} c'8 des'8 r4 
      | r8 a4 c'8 bes8 c'8~ c'16 cis'8 d'16 
      | f'8 d'8~ \tuplet 3/2 {d'8 bes8 g8} c'4 bes8 c'8 
      | des'8 dis'8 e'8 ges'8~ ges'16 a'16 des''8~ des''16 a'16 c''8 
      | b'8 bes'8 aes'8 r8 r2 
      | r1 
      | dis''8 e''8 f''8 aes''8 f''8 es''8 d''8 des''8 
      | c''8 b'8 bes'8 aes'8 g'8 ges'8 f'8 e'8 
      | es'8 b8 \tuplet 3/2 {d'4 b8} c'8 d'8~ \tuplet 3/2 {d'8 es'8 f'8~} 
      | f'16 ges'8 es'16 f'8 d'8~ d'16 bes8 g16 es'8 c'8~ 
      | c'8 des'4 bes8 \tuplet 3/2 {c'4 a8} bes4 
      | g4 aes4 g8. es16 ges8 d8~ 
      | d8 f4 es4 c8 r4 
      | r4 r16 d8 b,16 c8 d8 es8 f8~ 
      | f16 fis8 g16 c'8 b8 bes8 aes8 g8 ges8~ 
      | \tuplet 3/2 {ges8 f8 es8~} es8 d8 r2 
      | r1 
      | d4 ges8 bes8 es8. g16~ \tuplet 3/2 {g8 b8 e8~} 
      | e8 aes8 c'8 f8~ f16 a8 des'16~ des'8 ges8~ 
      | \tuplet 3/2 {ges8 bes8 d'8} g4 b8 es'8 aes8 c'8 
      | \tuplet 3/2 {e'4 a8} des'8 f'8 \tuplet 3/2 {bes4 d'8} fis'4 
      | g'4 es'8 b8 aes'8 e'8 c'8 a'8 
      | aes'8 ges'8 f'8 es'4 r8 r4 
      | r4 d'8 c'8 \tuplet 3/2 {des'8 e'4} es'8 des'8 
      | c'8 des'4 aes'8 c''4 b'8 g'8 
      | e'8 c'8 bes'8 d'8 ges'8 bes'8 a'8 ges'8 
      | f'8 e'8~ e'16 d'8 c'16 es'4 bes8 es'8 
      | d'8 des'8 c'8 bes8 a8 g8 ges8 a8 
      | aes8 fis8 g8 a8 bes8 c'8 d'8 f'8 
      | a'8 f'8 d'8 c'8 aes'8 e'8 des'8 b8 
      | ais8 b8 bes4~ bes16 a8 bes16 a4 
      | gis8 a8 aes4~ \tuplet 3/2 {aes8 g8 aes8} g8 ges8~ 
      | ges1 
      | ges4. ges8~ ges8. bes16~ bes8 f8~ 
      | f1 
      | ges4. ges8~ ges8. bes16~ bes8 f8~ 
      | f1 
      | ges4. ges8~ ges8. bes16~ bes8 d'8~ 
      | d'1 
      | ges4. ges4. bes8 f8~ 
      | f1\bar  ".."
    }
    >>
>>    
}
