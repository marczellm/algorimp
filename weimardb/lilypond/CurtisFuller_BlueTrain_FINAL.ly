\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Blue Train"
  composer = "Curtis Fuller"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key es \major
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
      
      | es4:7 r4 s4 s4 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | g2:min7 c2:7 
      | f1:min7 | bes1:7 | es1:7 | f2:min7 bes2:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | g2:min7 c2:7 | f1:min7 | bes1:7 | es1:7 | f2:min7 bes2:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | g2:min7 c2:7 
      | f1:min7 | bes1:7 | es1:7 | f2:min7 bes2:7 | es1:7 | aes1:7 | es1:7 | s1 
      | aes1:7 | s1 | es1:7 | g2:min7 c2:7 | f1:min7 | bes1:7 | es1:7 | f2:min7 bes2:7 
      | es1:7 | aes1:7 | es1:7 | s1 | aes1:7 | s1 | es1:7 | g2:min7 c2:7 
      | f1:min7 | bes1:7 | es1:7 | f2:min7 bes2:7 | es1:7|
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


      \tempo 4 = 132
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2. \tuplet 3/2 {bes8 des'4} 
      | es'4 \tuplet 3/2 {es'4 es'8} es'8 r8 r4 
      | r2 r8. bes16~ bes16 des'8 f'16~ 
      | f'8 es'8 es'4 des'4 f'8. e'16 
      | r4 r8. es'16~ es'8. des'16~ des'16 bes8 aes16 
      | g8 r8 r4 aes8 r8 r8 c'8 
      | bes4 \tuplet 3/2 {aes8 g8 f8} e4~ \tuplet 6/4 {e16 des'8 des'8 bes16~} 
      | bes8 aes8~ aes16 g16 aes16 e16~ e8 g4 es16 f16 
      | es8 d8~ d8. f16~ f16 aes8 c'16~ c'16 bes8 aes16 
      | g8. bes16 c'4 es'4 c'16 es'8.^\markup{\left-align \small vib} 
      | r2 r8. bes16 c'4~ 
      \bar "||" \mark \default \tuplet 7/8 {c'32 es'32~ es'8 c'32} es'4^\markup{\left-align \small vib} r2 
      | r8. ges'16 f'4 es'8. bes16~ bes16 des'8 des'16 
      | bes8 r8 r4 \tuplet 3/2 {r8 f'8 es'8} r4 
      | r2 r8. bes16~ bes8 des'8 
      | es'4~ es'8~ es'32 f'32 es'32 des'32~ \tuplet 5/4 {des'16 es'8. des'16} r4 
      | r8. ges'16 f'4~ f'16 es'8 bes16~ bes16 des'8 des'16 
      | bes8 r8 r4 es'4~ es'16 des'8 bes16~ 
      | bes8 bes8 r2 r8. a16~ 
      | a16 aes8 c'16 es'4 g'4 r4 
      | r8. aes'16 g'8 aes'16 g'16~ \tuplet 3/2 {g'8 aes'8 g'8} \tuplet 3/2 {aes'8 g'8 aes'8} 
      | \tuplet 3/2 {g'8 es'8 des'8} es'4 r2 
      | r4 r8 c''8~ c''8. bes'16~ bes'8. aes'16 
      \bar "||" \mark \default \tuplet 3/2 {g'4 f'8} es'8. c'16~ c'16 des'8 es'16~ es'16 f'8 des'16~ 
      | \tuplet 5/4 {des'16 c'16 es'16 c'16 bes16~} \tuplet 6/4 {bes16 a4 c'16} bes8 r8 r4 
      | r8 c'16 des'16 c'16 c'8 bes16~ \tuplet 3/2 {bes8 c'8 bes8~} bes16 c'16 des'16 es'16 
      | f'8 des'8 \tuplet 3/2 {c'4 bes8} a16 c'16 bes16 a16 aes16 f16 es16 des16 
      | \tuplet 6/4 {c4 cis16 d16} es8 r8 r4 r16 fis8\bendAfter #+4  g16 
      | \tuplet 6/4 {aes16 a8. bes16 b16} \tuplet 6/4 {c'4 cis'16 d'16} es'8. e'32 fis'32 g'8 r8 
      | r4 \tuplet 6/4 {r16 g'16 aes'8. g'16~} g'4 g'8 aes'16 g'16~ 
      | g'8. f'16~ \tuplet 6/4 {f'16 g'16 aes'8. g'16~} g'16 f'8 es'16 e'8 g'8 
      | f'8. e'16~ e'16 c'8 aes16 g8 f16 g16 aes16 c'16 c'8 
      | es'8 c'16 cis'16 \tuplet 3/2 {d'8 bes8 d'8} \tuplet 3/2 {c'8 aes8 c'8} bes8 es8 
      | \tuplet 6/4 {g16 aes16 bes16 g8.} r4 r8 g8 \tuplet 6/4 {e16 f16 g8 a16 bes16~} 
      | \tuplet 6/4 {bes16 c'8 es'16 c'16 cis'16} \tuplet 3/2 {d'8 bes16 r8.} r4 r8 bes16 des'16 
      \bar "||" \mark \default \tuplet 6/4 {es'4~ es'16 des'16} \tuplet 3/2 {es'8 des'16 r8.} r4 \tuplet 6/4 {r16 bes8 des'8 es'16~} 
      | es'8. des'16 \tuplet 3/2 {es'8 des'16 r8.} r4 \tuplet 3/2 {r8 bes8 des'8} 
      | es'8. des'16 \tuplet 3/2 {es'8 g'4} r4 \tuplet 3/2 {r8 bes8 des'8} 
      | \tuplet 6/4 {es'4~ es'16 des'16} es'8 d'8 r4 r8 es'8 
      | ges'8. aes'16 r2 \tuplet 3/2 {c'8 es'8 ges'8} 
      | \tuplet 5/4 {a'8 aes'16 a'16 aes'16} \tuplet 3/2 {a'8 aes'4} ges'8 es'8~ es'16 des'16 bes8 
      | aes4 \tuplet 5/4 {c'8 a16 bes16 a16} \tuplet 3/2 {g8 es16 r8.} r8. g16 
      | \tuplet 3/2 {aes8 c'4} bes8. aes16 g8. f16~ \tuplet 5/4 {f16 e16 f16 a16 d'16} 
      | c'4 aes4 e4 g16 e16 f16 es16 
      | \tuplet 5/4 {d8 e16 aes16 c'16} bes8. a16 aes16 c'16 es'16 fis'16 g'8 d'8 
      | \tuplet 3/2 {f'4 d'8~} d'8 bes8~ bes8. bes16 \tuplet 5/4 {aes8 b16 c'16 aes16~} 
      | \tuplet 6/4 {aes16 g8 es16 f16 es16} d8 aes8 c'8 bes16 a16 g16 a16 c'8 
      \bar "||" \mark \default es'8 r8 r2. 
      | r8 ges'8 es'4~ \tuplet 6/4 {es'16 des'8 es'16 des'16 bes16} des'4 
      | es'4.^\markup{\left-align \small vib} des'16 bes16~ bes16 a8 aes16~ \tuplet 5/4 {aes16 ges16 aes16 ges16 es16~} 
      | \tuplet 6/4 {es16 des4 des16~} des8 r8 r2 
      | r16 c'8 es'16~ es'16 bes16 aes8 aes4 aes4 
      | aes4 r4 b16 c'16 a8~ \tuplet 6/4 {a4~ a16 c'16~} 
      | c'8 bes8~ bes16 bes,16 es8 g16 aes16 g16 aes16~ \tuplet 9/8 {aes32 g8 aes32 g32 ges32 f32} 
      | e8 r8 \tuplet 6/4 {r4 r16 g16} aes8 g8 f16 e8 g16 
      | f4 \tuplet 3/2 {g8 aes4} bes16 c'8 es'16~ es'16 c'8 cis'16~ 
      | \tuplet 6/4 {cis'16 d'4 bes16} r4 r8. bes16 des'4 
      | es'4~ es'16 des'8 e'16 des'16 bes4. es'16~ 
      | es'4 des'8 bes8~ \tuplet 6/4 {bes8 a8. aes16~} \tuplet 6/4 {aes16 ges8 aes16 ges16 es16} 
      \bar "||" \mark \default des4 des4 r2\bar  ".."
    }
    >>
>>    
}
