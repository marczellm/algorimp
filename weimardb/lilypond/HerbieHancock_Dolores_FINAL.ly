\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dolores"
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


      \tempo 4 = 282
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 \tuplet 3/2 {f'4 es'8~} \tuplet 3/2 {es'8 d'8 c'8} 
      | \tuplet 3/2 {es'4 b8} \tuplet 3/2 {d'4 b8} c'8 d'8 es'8 f'8 
      | ges'8 es'8 g'8 e'8 c'8 aes8 r4 
      | r2 \tuplet 3/2 {es'4 d'8} des'8 c'8 
      | bes8 aes8 g8 ges8 f8 r8 r4 
      | r1 
      | r16 a8 fis16 \tuplet 3/2 {g4 a8} bes8 c'8~ c'16 cis'8 d'16~ 
      | d'8 es'8~ es'16 d'8 c'16~ c'8 b8 d'4 
      | \tuplet 3/2 {c'4 bes8~} bes8 a8 c'4 \tuplet 3/2 {bes8 a8 g8} 
      | bes4.. a16~ a16 aes8 c'16~ c'8 g8 
      | bes8. ges16 a8 fis8 g8 a8 bes8 c'8 
      | des'8 f'8 \tuplet 3/2 {a'4 g'8} f'8 des'8 c'8 bes8 
      | a8 bes8 d'8 g'8 c'4 r4 
      | r2 f'4 e'16 d'8 c'16 
      | dis'8 e'8 es'8 des'8~ des'16 c'8 bes16~ bes8. g16~ 
      | g8 a4 aes8~ aes16 g8 a16~ \tuplet 3/2 {a8 bes8 c'8~} 
      | c'16 des'8 b16~ b16 c'8 a16~ a16 bes8 g16~ \tuplet 3/2 {g8 a8 aes8~} 
      | \tuplet 3/2 {aes8 g8 ges8~} \tuplet 3/2 {ges8 f8 e8} d4 es8 des8~ 
      | des8 des8~ des16 e8 aes16 \tuplet 3/2 {c'4 g8} aes8 bes8~ 
      | bes8 des'8~ des'16 es'8 f'16~ f'8 ges'8 r4 
      | r1 
      | r1 
      | r8. c'16~ \tuplet 3/2 {c'8 f'8 bes'8~} \tuplet 3/2 {bes'8 a'8 f'8} c'8 r8 
      | r4 b8 e'8 a'8 aes'8 es'8 d'8~ 
      | d'4 bes8 es'8 aes'8 g'8 aes'8 g'8 
      | es'8 d'8 des'8 c'8 b8 a8 \tuplet 3/2 {g8 bes4} 
      | r2 r8 a8 gis8 a8 
      | d'8 des'8 bes8 a8 bes8 a16 bes16 r4 
      | r1 
      | r8 a8~ \tuplet 3/2 {a8 ais8 b8} c'4. b16 bes16~ 
      | bes16 a8 aes16~ aes16 g8 ges16~ ges4 a4 
      | fis8 g8 a8 bes8 c'8 d'8 f'8 a'8~ 
      | a'8 a'4 a'8 bes'4. ges'8 
      | a'4 g'8 d'8 c'4. r8 
      | r2 r8 c'8~ \tuplet 3/2 {c'8 f'8 a'8} 
      | \tuplet 3/2 {d''4 a'8} c''4 f'8 a'8 bes4 
      | r2 r8 bes8 es'8 g'8 
      | c''8 bes'16 c''16~ \tuplet 3/2 {c''8 bes'8 ges'8} f'8 es'8~ \tuplet 3/2 {es'8 c'8 cis'8} 
      | d'8 a8 c'8 a8 bes8. d16 ges8 a8 
      | aes8 fis8 g8 a8 bes8 c'8~ c'16 cis'8 d'16 
      | \tuplet 3/2 {es'4 d'8~} d'16 des'8 c'16 e'8 es'8 d'4 
      | d'8 des'8 c'8 b8 \tuplet 3/2 {es'4 d'8} des'8 c'8~ 
      | c'16 c'8 b16~ b16 bes8 a16~ a16 d'8 des'16~ des'8 c'8 
      | b4~ b16 b8 bes16~ bes8 a8 aes8 c'8 
      | b8 bes8 a8 bes8 aes4 g8 b8 
      | \tuplet 3/2 {bes8 a8 aes8} \tuplet 3/2 {c'8 b8 bes8} \tuplet 3/2 {a8 cis'8 d'8} \tuplet 3/2 {des'8 c'8 b8} 
      | es'8 d'16 des'16 c'8 f'8 \tuplet 3/2 {e'8 es'8 d'8} ges'8 f'8 
      | e'16 d'16 a'4 r8 r4 r8 g'8 
      | a'8 g'8 ges'8 f'8 \tuplet 3/2 {e'4 d'8~} d'16 f'8 des'16~ 
      | des'8. des'16~ des'8 f'8 aes'8 c''8~ c''16 a'16 bes'8 
      | c''8 cis''8 d''8 es''8 d''8 des''8 c''8 bes'8 
      | aes'8 g'8 ges'8 f'8 e'8 es'8 a'8 d'8~ 
      | d'8 d'4 r8 r2 
      | r2 r8 c'8 d'8 c'8 
      | a8 g8 a8 g4 r8 r4 
      | r2 r16 d'8 des'16 c'8 b8 
      | bes8 d'8 a8 r8 r2 
      | \tuplet 3/2 {d'4 b8} c'8 d'8 es'8 f'8 ges'8 a'8 
      | d''8 des''8 c''8 aes'8~ \tuplet 3/2 {aes'8 g'8 f'8} es'8 r8 
      | r1 
      | d'8 b8 c'8 d'8 es'8 f'8 fis'8 g'8 
      | c''8 b'8 bes'8 aes'8 g'8 ges'8 f'8 e'8 
      | d'8 r8 r2. 
      | r2. d'8 des'8 
      | c'4~ c'16 e'8 es'16~ es'8 d'8 g'4 
      | ges'8 f'8 f'4 e'8 es'8 r4 
      | r8 d'4. f'4. c'8~ 
      | c'4. es'4 c'8 d'4~ 
      | d'8 bes8 c'4.. a16~ a4 
      | bes8. ges16~ ges16 a8 fis16~ fis8 g8 \tuplet 3/2 {a8 bes4} 
      | c'8 d'4 a'8 bes'8 a'16 aes'16~ aes'16 g'8 ges'16~ 
      | \tuplet 3/2 {ges'8 f'8 e'8~} \tuplet 3/2 {e'8 es'8 des'8} c'8 bes8 a8 g8 
      | ges8 aes8~ aes8. fis16 g8 a8 ais8 b8 
      | des'8 es'4 fis'8 \tuplet 3/2 {g'8 aes'8 des''8~} des''8 aes'8 
      | c''4~ c''16 a'8 f'16~ f'8 d'8 r4 
      | g'4~ \tuplet 3/2 {g'8 e'8 des'8} b8 r8 r8. f'16~ 
      | f'8 d'4 bes4 g8 r4 
      | bes8 a8 aes8 ais8 b8 c'8 cis'8 d'8~ 
      | d'8 f'8 a'8 g'8 f'8 des'8 c'8 bes8 
      | a8 bes8 d'4 r2 
      | r1 
      | r1 
      | r2 r16 g'8 c''16~ c''8 f''8~ 
      | f''8 r8 r4 \tuplet 3/2 {dis''4 e''8~} e''16 es''8 des''16~ 
      | \tuplet 3/2 {des''8 c''8 bes'8} a'8 g'8 aes'8 ges'8 f'8 es'8 
      | c'8 cis'8 d'8 des'8~ \tuplet 3/2 {des'8 c'8 b8~} b16 bes8 gis16 
      | a2 d'2 
      | bes4. es'8~ es'8. aes16~ aes8 r8 
      | r2 fis8 g8 r4 
      | r4 gis4 a8 ais8 b8 c'8 
      | cis'8 d'8 es'8 cis'8 d'8 des'8 c'8 b8 
      | bes8 aes8 g8 a8 bes8 c'8 d'8 f'8 
      | a'8 f'8~ f'16 d'8 c'16 bes'8 ges'8 es'8 b8~ 
      | b4 r2. 
      | r2 \tuplet 3/2 {c''4 a'8~} \tuplet 3/2 {a'8 f'8 d'8} 
      | d''4. a'8 g'8 e'8 r4 
      | r2 c''8. a'16 f'8 d'8 
      | bes'8 g'8~ \tuplet 3/2 {g'8 es'8 c'8} bes8 a8 \tuplet 3/2 {aes8 des'4} 
      | g8 f8 bes8 ges8 a8 fis8 \tuplet 3/2 {g8 a8 bes8~} 
      | bes8 c'8 des'8 f'8 a'8 g'8 \tuplet 3/2 {f'8 des'4} 
      | c'4 r2. 
      | r1 
      | d'1 
      | r4 r8. dis'16~ dis'8 e'8 f'8 r8 
      | r2 cis'8 d'8 es'4~ 
      | es'16 c'8 cis'16 d'4 b8 c'8 cis'8 r8 
      | r2 \tuplet 3/2 {d'4 b8} c'8 d'8~ 
      | d'16 es'8 f'16~ f'8 ges'4 d''8 es''8 d''16 des''16~ 
      | \tuplet 3/2 {des''8 c''8 bes'8~} \tuplet 3/2 {bes'8 a'8 g'8} bes'4 \tuplet 3/2 {d'8 a'4~} 
      | a'4 \tuplet 3/2 {a'4 bes'8} a'8 aes'8 g'8 ges'8 
      | f'8 e'8 es'8 des'8 c'8 bes8 a8 g8 
      | ges4 ges8 a8 g8 r8 r4 
      | r2 \tuplet 3/2 {bes4 ges8} a8 fis8 
      | g8 a8 bes8 c'8 d'8 f'8 a'8 r8 
      | r1 
      | bes'8 ges'16 a'16~ a'8 aes'8 g'8 f'8 es'8 cis'8 
      | d'4. c''8~ \tuplet 3/2 {c''8 d'8 c'8~} c'4~ 
      | c'8 bes'8~ bes'8. c'16 bes4 r4\bar  ".."
    }
    >>
>>    
}
