\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Johnny Come Lately"
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \minor
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
      
      | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- 
      | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min f2:min | es2:maj f2:min | g2:min f2:min | es2:maj f2:min | g2:min c2:7 | f2:min bes2:7 | a2:9- d2:9- 
      | g1:min | es2:7 d2:9- | g1:min | es2:7 d2:9- | g1:min | es2:7 d2:9- | g1:min6 | es2:7 d2:9- 
      | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- 
      | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | f2:min7 bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:min7 c2:7 | f2:min7 bes2:7 | a2:9- d2:9- 
      | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- 
      | g1:min6 | es2:7 d2:9- | g1:min | es2:7 d2:9- | g1:min | es2:7 d2:9- | g1:min | es2:7 d2:9- 
      | g1:min | es2:7 d2:9- | g1:min | es2:7 d2:9- | g1:min | es2:7 d2:9- | g1:min | f2:min bes2:7 
      | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:min7 f2:min7 | es2:maj f2:min7 | g2:min7 c2:7 | f2:min7 bes2:7 | a2:9- d2:9- 
      | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- | g1:min6 | es2:7 d2:9- 
      | r1|
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


      \tempo 4 = 248
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 a'16 bes'8.~ \tuplet 3/2 {bes'8 c''8 bes'8} 
      | a'8 bes'8~ \tuplet 3/2 {bes'8 c''8 bes'8} \tuplet 3/2 {a'8 bes'4~} \tuplet 3/2 {bes'8 c''8 bes'8} 
      | \tuplet 3/2 {a'8 bes'4~} \tuplet 3/2 {bes'8 c''8 bes'8} a'8 bes'8~ \tuplet 3/2 {bes'8 c''8 a'8} 
      | bes'16 c''16 bes'8 g'2~ \tuplet 3/2 {g'8 a'8 g'8} 
      | fis'8 g'8~ \tuplet 3/2 {g'8 a'8 g'8} \tuplet 3/2 {fis'8 g'4~} g'16 a'16 g'16 ges'16~ 
      | ges'16 a'16 g'16 f'16 es'8 d'8~ d'4. c'8 
      | d'16 es'16 d'16 c'16 \tuplet 6/4 {d'16 es'16 d'8 c'8} \tuplet 3/2 {es'8 d'8 c'8} es'16 d'16 c'8 
      \bar "||" bes8 g8 f8 g4 r8 r4 
      | r1 
      | r8 g8 f8 bes8 g8 c'8 \tuplet 3/2 {bes4 g8} 
      | \tuplet 3/2 {d'4 c'8~} c'16 es'8 c'16~ c'16 ges'8 d'16~ d'16 g'8 e'16 
      | a'8 fis'8 g'8 bes'8 g'8 d'8 bes8 g8 
      | c'8 es'8 d'8 des'8~ \tuplet 3/2 {des'8 c'8 bes8} a8. fis16 
      | g4. d8 f8 d8 r4 
      | \tuplet 5/4 {r8 bes16 aes16 g16} f8 g8 aes8. bes16 c'8 d'8 
      \bar "||" es'8 f'8~ \tuplet 3/2 {f'8 g'8 aes'8} bes'8 g'8 aes'8 bes'8 
      | a'16 g'8 es'16~ es'16 bes8 g16~ g16 c'16 d'16 es'16~ \tuplet 3/2 {es'8 e'8 f'8} 
      | f'8 ges'4 d'8 f'8 es'8 bes8 g8 
      | c'8 des'8 b8 ges8 bes4 ges8 a8~ 
      | a4. ges8 \tuplet 3/2 {bes4 g8~} g8 r8 
      | r2 aes8 ges8 f8 r8 
      | r2 r16 a'16 aes'16 c''16~ c''16 bes'16 g'16 ges'16 
      | aes'16 ges'16 es'16 des'16 ges'8 e'8 bes8 f16 fis16 g16 a16 bes16 c'16 
      \bar "||" e'16 aes'16 g'16 d'16~ d'16 bes8 e'16~ \tuplet 6/4 {e'16 c'8 bes16 a16 g16} f16 es16 des16 b,16 
      | bes,16 aes,8.~ aes,8 g8 aes4. fis8 
      | g8 d8 c8. d16~ d4. r8 
      | r4 r8. bes'16 c''2~ 
      | c''4 bes'8 c''8 bes'4 \tuplet 3/2 {g'4 bes'8} 
      | g'4 f'8 g'8 f'8. d'16~ d'8 a8 
      | c'8 d'8 es'8 c'8 f'8. bes16~ bes8 r8 
      | r2 r8 cis''8 d''4~ 
      \bar "||" \mark \default d''4~ \tuplet 3/2 {d''8 bes'8 g'8} ges'4 r4 
      | a'8 g'8 \tuplet 3/2 {d'8 bes8 g8} c'4 d'8 es'8 
      | c'16 d'8.~ d'8 g'8 ges'16 f'8 des'16~ des'16 bes8 es'16~ 
      | es'16 des'8 aes16~ aes8 ges8~ ges16 bes8 ges16 des8 a,8 
      | aes4. g8 ges4 aes8 ges8 
      | \tuplet 3/2 {bes4 b8} e'8 ges'8 bes'8 des''8 b'8 g'16 aes'16 
      | g'8 ges'8 \tuplet 3/2 {des'4 b8} es'8 des'8 aes8 ges8 
      | bes8 ges8 es16 c8 aes16~ aes8 ges16 es16~ es8 aes,8~ 
      \bar "||" aes,4 r2 r8 gis'16 a'16~ 
      | a'4~ a'16 g'16 f'16 e'16 \tuplet 6/4 {d'8 e'16 fis'16 g'16 a'16} \tuplet 3/2 {ges'8 f'8 e'8} 
      | \tuplet 5/4 {d'16 e'16 fis'16 g'16 a'16~} a'16 g'16 f'16 e'16 d'16 e'16 f'16 g'16 a'16 g'16 f'16 e'16 
      | \tuplet 6/4 {es'8 e'16 f'16 g'16 a'16~} a'16 g'16 f'16 e'16~ \tuplet 6/4 {e'16 f'8 fis'16 g'16 a'16~} a'16 bes'16 aes'16 g'16 
      | \tuplet 6/4 {e'8 d'16 e'16 f'16 g'16} a'16 g'16 ges'16 e'16 \tuplet 6/4 {d'8 e'16 f'16 g'16 a'16~} a'16 g'16 f'16 e'16 
      | \tuplet 5/4 {d'16 e'16 f'16 g'16 a'16} \tuplet 3/2 {g'8 f'8 e'8} d'16 e'16 g'16 a'16~ a'16 g'16 f'16 e'16 
      | d'8 g'8 aes4 r4 r8 g8~ 
      | g8. g16 aes8 bes8 c'8 d'8 es'8 f'8 
      \bar "||" fis'16 g'8. d'8 f'8 es'4 bes8 g8 
      | cis'8 d'8 aes8 g8 c'8 bes8 g8 f8~ 
      | f8 ges4. e16 f8 es16~ es8 r8 
      | r2 b'8 c''4 bes'8~ 
      | bes'4 g'8. es'16 aes'4. bes'8 
      | g'8 d'8 bes4 \tuplet 3/2 {es'4 c'8~} c'8 f'8 
      | r4 r8 g'8~ \tuplet 3/2 {g'8 ges'8 f'8} \tuplet 3/2 {ges'8 f'8 e'8} 
      | es'8 d'8 des'8 b8 bes16 aes8 ges16 bes4 
      \bar "||" a8 r8 r8. bes16 g8 des'8 b4 
      | \tuplet 3/2 {es'4 c'8~} c'8 e'8 des'8 f'8 d'8 ges'8~ 
      | \tuplet 3/2 {ges'8 es'8 ges'8} e'8 g'8 ges'8 aes'8 f'8 ges'8 
      | a'4 bes'16\bendAfter #+4  a'16 bes'8 a'8 e'8 des'4 
      | f'8 e'16 c'16 a8 r8 r4 r8 gis'8 
      | a'4 g'8 f'8 d'4 c'8 bes8~ 
      | bes4 \tuplet 3/2 {g4 f8} a8 fis8 g8 a8 
      | bes8 c'16 d'16 \tuplet 3/2 {e'8 f'8 d'8} a'4. g'8~ 
      \bar "||" \mark \default g'1~ 
      | g'2~ g'16 f'8 d'16 r4 
      | r1 
      | r16 aes'8 g'16 aes'8 g'8 f'8 d'8 bes8 g8 
      | \tuplet 3/2 {c'4 d'8} es'4 d'8. bes16~ bes8. g16 
      | c'8 es'4. d'8 bes8 \tuplet 3/2 {g4 a8~} 
      | a4. g8 a4. g8 
      | a4. g8 \tuplet 3/2 {a4 g8} \tuplet 3/2 {e4 d8~} 
      \bar "||" d8 r8 r4 r8 a8 g8 bes8~ 
      | bes4 \tuplet 3/2 {g4 f8~} f16 aes'8 e'16~ e'8 r8 
      | r2 \tuplet 3/2 {r8 a,8 bes,8~} bes,16 cis16 d8 
      | f16 a8 bes16~ bes16 d'8 f'16 \tuplet 3/2 {a'4 c''8} des''4 
      | r2 f''4 r4 
      | r16 d''8 bes'16 g'8 d'4 f'8~ f'8. d'16~ 
      | d'16 e'16 f'8~ f'8. d'16~ d'16 e'16 f'16 g'16 aes'8 g'8 
      | f'8 es'8 d'8 c'8 bes8 r8 r8 a8 
      \bar "||" aes4 bes8 g8~ g2~ 
      | g16 f8 es16 d8 e8 g8. f16 \tuplet 3/2 {e4 f8} 
      | aes8 g8 ges4 aes16 c'4.. 
      | bes8 g8 d4 aes8 g8 r4 
      | r2. r8. bes'16 
      | d''4 \tuplet 3/2 {aes'4 c''8} ges'4~ ges'16 bes'8 g'16 
      | aes'4~ \tuplet 3/2 {aes'8 e'8 aes'8} es'8 ges'8 ges'8 d'8 
      | b8 aes8 e'8 es'8 \tuplet 3/2 {bes4 ges8} d'8 des'8 
      \bar "||" a4 des'8 c'8 \tuplet 3/2 {aes4 ges8~} ges8 bes8 
      | \tuplet 3/2 {ges8 a4~} a8. a16~ a8 g8 bes4 
      | des'4 b8 aes8 e'4. a'8 
      | b'4 \tuplet 3/2 {bes'8 b'8 aes'8} e'8 g'8 f'8 des'8 
      | b8 aes8 es'8 bes8 ges8 d8 \tuplet 3/2 {a4 fis8} 
      | g8 r8 r4 fis'8 g'4.~ 
      | g'8 g'8 ges'8 ges'8 f'8 f'8 es'8 es'8 
      | \tuplet 3/2 {d'4 d'8} c'8 c'8 bes4. a8~ 
      \bar "||" a4 r2.\bar  ".."
    }
    >>
>>    
}
