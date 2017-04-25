\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tenor Madness"
  composer = "Sonny Rollins"
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
      
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | s1 | s1 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | s1 
      | s1 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | s1 
      | c1:min7 | f1:7 | bes1:7 | s1 | s1 | es1:7 | bes1:7 | s1 
      | es1:7 | aes1:7 | bes1:7 | s1 | c1:min7 | f1:7 | bes1:7 | s1 
      | s1 | es1:7 | bes1:7 | s1 | es1:7 | bes1:7 | s1 | s1 
      | c1:min7 | f1:dim | bes1:7 | s1 | s1 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | s1 
      | s1 | es2:7 es2:min7 | bes1:7 | f2:min7 bes2:7 | es1:7 | es1:min7 | d1:min7 | cis1:min7 
      | c1:min7 | f1:7 | bes1:7 | s2 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | s1 | c1:min7 | f1:7 | bes2:7 g2:7 | c2:min7 f2:7 
      | bes1|
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


      \tempo 4 = 176
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 d'8 d'8 bes4 
      | d'4 bes2. 
      | \tuplet 3/2 {d'4 bes8~} bes8 bes8 \tuplet 3/2 {d'4 bes8} bes8 bes8 
      | r2 r8 f8 \tuplet 3/2 {bes4 des'8~} 
      | des'8 des'8 bes8 r8 r2 
      | f'2~ \tuplet 3/2 {f'8 e'8 es'8} des'16 bes8. 
      | d'4 bes4 r2 
      | r4 r8 a8 bes8 d'8 f'8 g'8 
      | a'8 bes'8 g'8 es'8 d'8 c'8 f'8 d'8 
      | es'8 bes8 \tuplet 3/2 {g4 f8} des'4 a8 f8 
      | \tuplet 3/2 {c'4 a8} f8 d8 g8 g8 r4 
      | r4 r8. f16 bes,4 bes4 
      \bar "||" \mark \default d'16 f'8 f'16 \tuplet 3/2 {f'4 d'8~} d'8 bes4 g'8~ 
      | g'8 es'8 \tuplet 3/2 {es'4 c'8~} c'8 a8 f8 r8 
      | r2 r8. aes16~ aes16 b8 d'16~ 
      | d'16 g'8 d'16 f'8 ges'8~ \tuplet 6/4 {ges'16 d'8. d'16 b16~} b16 bes8 aes16 
      | g4 bes8 des'8 f'8 des'8 es'4 
      | des'8 bes8~ bes16 f8 e16~ \tuplet 3/2 {e8 e8 f8~} \tuplet 3/2 {f8 g8 e8~} 
      | \tuplet 5/4 {e16 f8. d16~} d8 r8 r2 
      | r8 gis4 bes'4 gis'4 bes'8 
      | g'4 f'8. g'16~ g'4. r8 
      | r8. ges16~ ges8. aes'16~ aes'8 ges'8~ ges'8. aes'16~ 
      | aes'8 f'4 es'8 f'8 r8 r4 
      | r2. r8. c'16~ 
      \bar "||" \mark \default \tuplet 5/4 {c'16 f'8 f'16 bes'16} c''8 bes'8~ bes'16 g'8 f'16~ f'8 c'8 
      | r4 r8. bes16~ bes8 g8~ g8. f16~ 
      | f8 c8 c4 r2 
      | aes,16 g8 f16 c4 es16 d8 des'16 b8 ges8 
      | bes4 g8 r8 r2 
      | r2. r8. bes'16~ 
      | bes'8. bes'16~ bes'8 bes'8~ \tuplet 6/4 {bes'8 bes'8. bes'16~} bes'8 bes'8~ 
      | bes'16 a'8 c''16~ c''8 a'8 g'8. g'16~ g'8 f'8~ 
      | f'8 bes'8~ bes'2 bes'4 
      | a'4 a'4 es'4 g'4~ 
      | \tuplet 6/4 {g'16 f'4 f'16} r2 r8 d'8~ 
      | d'16 f'8 d'16~ d'16 es'8 f'16 d'4 g8 f8 
      \bar "||" \mark \default c'8 aes8 r4 r8. fis16~ \tuplet 5/4 {fis16 g16 d'16 f'16 f'16} 
      | es'8 bes4 bes8~ bes16 e'8 f'16 g'8 e'8 
      | f'8 d'8~ d'16 es'8 es'16 d'8 r8 r4 
      | r2. r8. g'16~ 
      | g'8 bes'4 g'8 c''4 bes'4 
      | ges'4 d''8 c''8 bes'8 ges'8 \tuplet 3/2 {f'4 es'8} 
      | d'8 g'8 bes'8 g'8 c''4 \tuplet 3/2 {bes'4 f'8~} 
      | f'8 e'4 bes'4 c''8 bes'8. e'16~ 
      | e'8 es'4 r8 r2 
      | r16 d''8 c''16~ c''16 bes'8 g'16~ g'16 a'8 g'16~ g'16 f'8 es'16~ 
      | es'16 d'8 c'16~ c'16 bes8 f16~ f8 a8 bes8 r8 
      | r2 r8 bes8 es'8 g'8~ 
      \bar "||" \mark \default g'8. aes'16~ aes'4 r4 r8 g'8 
      | r4 r8 e'8 \tuplet 3/2 {f'4 d'8} es'8 cis'8~ 
      | cis'16 d'16 d'16 bes16~ bes16 c'8 a16~ a16 bes8 g16 aes8 e8 
      | g8 es8 \tuplet 3/2 {f4 d8~} d16 es8 cis16~ \tuplet 6/4 {cis16 d16 d8. d16~} 
      | d8 des8 r2. 
      | r8 des'8 fis'16 g'16 bes'16 c''16~ c''8 des''4.~ 
      | des''8 des''8 r2 r8 a'8 
      | bes'8. g'16 aes'8 f'8 \tuplet 3/2 {g'4 e'8} \tuplet 3/2 {f'8 g'8 e'8~} 
      | e'8 e'16 d'16 es'8. c'16 d'4 b8 c'8 
      | g16 bes8 g16~ \tuplet 6/4 {g8 a8. f16~} f16 g8 es16 r4 
      | r2 r8. bes16~ bes16 cis'16 d'16 g'16~ 
      | g'8 aes'4. e'8 g'8~ g'16 f'8 es'16~ 
      \bar "||" \mark \default es'16 cis'8 d'16~ \tuplet 3/2 {d'8 bes8 a8} aes8. bes16~ bes16 g'8 f'16~ 
      | \tuplet 3/2 {f'8 es'8 a8} \tuplet 3/2 {bes4 c'8~} c'16 des'8 bes16 c'8 a8~ 
      | a16 bes8 f16 d8 es8 f8 r8 r4 
      | r4 r8 bes8 g4 bes4 
      | des'4 g4 bes8 r8 r4 
      | r2. r8 bes8~ 
      | bes8 f'8 r4 bes4 f'4~ 
      | f'16 es'8 es'16 d'8 c'8~ c'16 b8 aes16~ \tuplet 3/2 {aes8 g8 f8~} 
      | \tuplet 6/4 {f16 es4 f16} g8 bes8 d'8 f'8 \tuplet 3/2 {es'4 bes8} 
      | d'4 d'8 es'8 d'8 bes8 \tuplet 3/2 {f4 es8} 
      | d8 r8 r2 r8. a16 
      | bes16 d'16 f'16 g'16~ g'4 aes'4~ \tuplet 6/4 {aes'16 g'8 ges'8 e'16~} 
      \bar "||" \mark \default e'16 g'8 f'16 r2. 
      | \tuplet 6/4 {r16 g'4 bes'16} \tuplet 3/2 {c''4 bes'8} ges'8 ges'8 \tuplet 3/2 {f'4 es'8} 
      | d'8. bes16 r4 r8. f'16 \tuplet 3/2 {g'8 bes'8 c''8} 
      | d''4~ d''16 d''8 c''16~ c''16 bes'8 a'16~ \tuplet 3/2 {a'8 aes'8 bes'8} 
      | g'4 des'8 r8 r2 
      | r8 c''8 \tuplet 3/2 {bes'4 ges'8~} \tuplet 6/4 {ges'8 f'8. es'16} r4 
      | r4 c''4 a'8 f'8 d'4~ 
      | d'16 bes'8 b'16~ \tuplet 6/4 {b'16 gis'4 e'16~} e'16 e'16 d'8 r4 
      | \tuplet 3/2 {r8 bes'8 bes'8~} bes'16 g'8 es'16~ es'16 c'8 es'16~ es'16 g'8 bes'16~ 
      | \tuplet 3/2 {bes'8 g'8 aes'8~} aes'16 ges'8 des'16~ des'16 a8 ges16 r4 
      | r2 r8 bes8 d'8 f'8 
      | a'8 g'8 a'8 g'8 \tuplet 3/2 {aes'4 ges'8~} ges'16 des'16 des'16 es'16 
      \bar "||" \mark \default f'8 a8 \tuplet 3/2 {bes4 d'8} es'8 d'8~ \tuplet 3/2 {d'8 bes8 g8} 
      | bes4 es'4. es'8 \tuplet 3/2 {d'4 bes8} 
      | \tuplet 3/2 {es'4 d'8~} d'16 bes8 aes16 bes4 bes8 r8 
      | r1 
      | r2 \tuplet 3/2 {r8 bes8 des'8} \tuplet 3/2 {es'8 f'4~} 
      | f'16 e'8 des'16~ des'16 bes16 bes16 e'16~ \tuplet 3/2 {e'8 f'8 e'8} \tuplet 3/2 {des'8 bes16 r8.} 
      | r4 r8 f8~ f16 aes8 b16~ b8 c'8~ 
      | c'4 c'8. c'16 bes16 a16 g8 f4 
      | r2 r8 g8 \tuplet 5/4 {b16 es'8. f'16} 
      | \tuplet 6/4 {g'16 bes'8 a'8 g'16~} \tuplet 3/2 {g'8 a'8 fis'8} g'16 es'16 cis'16 d'16 \tuplet 3/2 {f'8 e'8 es'8} 
      | \tuplet 3/2 {d'8 f'8 c'8} a16 bes16 cis'16 d'16 \tuplet 5/4 {g'8 ges'16 f'16 es'16} \tuplet 6/4 {d'8 b16 g16 e16 c'16} 
      | b8 c'8 es'16 d'8 c'16 b16 bes16 a16 g16 gis16 a16 fis16 g16 
      | es16 d16 r8 r2.\bar  ".."
    }
    >>
>>    
}
