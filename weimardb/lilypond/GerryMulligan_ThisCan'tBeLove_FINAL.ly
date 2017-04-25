\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "This Can't Be Love"
  composer = "Gerry Mulligan"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      
      | aes1:6 | aes1:6 | des1:7 | s1 | aes1:maj | f1:min7 | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:maj | s1 
      | g1:min7 | c1:7 | f1:min7 | s1 | c1:min5-7 | f1:13-.9+11+ | bes1:7 | es1:7 
      | aes1:maj | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | bes2:min7 es2:7 
      | aes1:6 | s1 | des1:7 | s1 | aes1:maj | s1 | bes1:min7 | es1:7 
      | aes1:maj | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | s1 
      | g1:min7 | c1:7 | f1:min7 | s1 | c1:min5-7 | f1:13-.9+11+ | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | bes2:min7 es2:7 
      | aes1:6 | s1 | des1:7 | s1 | aes1:6 | f1:min7 | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | s1 
      | g1:min7 | c1:7 | f1:min7 | s1 | c1:min5-7 | f1:13-.9+11+ | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | bes2:min7 es2:7 
      | aes1:6 | s1 | des1:7 | s1 | aes1:6 | f1:min7 | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | s1 
      | g1:min7 | c1:7 | f1:min7 | s1 | c1:min5-7 | f1:13-.9+11+ | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | bes2:min7 es2:7 
      | aes1:6 | s1 | des1:7 | s1 | aes1:6 | f1:min7 | bes1:min7 | es2:7 s2 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | s1 
      | g1:min7 | c1:7 | f1:min7 | s1 | c1:min5-7 | f1:13-.9+11+ | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | bes2:min7 es2:7 
      | aes1:6 | s1 | des1:7 | s1 | aes1:6 | f1:min7 | bes1:min7 | es2:7 s2 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | s1 
      | g1:min7 | c1:7 | f1:min7 | s1 | c1:min5-7 | f1:13-.9+11+ | bes1:min7 | es1:7 
      | aes1:6 | s1 | des1:7 | s1 | c2:min7 f2:min7 | bes2:min7 es2:7 | aes1:6 | s1 
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


      \tempo 4 = 269
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r1 
      | r1 
      | r1 
      | c'4 des'4 \tuplet 3/2 {c'4 aes8} es4 
      | c'4.^\markup{\left-align \small vib} des'8 c'4 \tuplet 3/2 {aes4 bes8~} 
      | bes8 es'4. r2 
      | r4 es8 e8 f8 aes8 bes8 aes8 
      \bar "||" g8 aes8 b8 c'8 des'8 d'8 es'4 
      | des'16 c'16 bes8 ges8 es8 c'8 b8 bes8 a8 
      | aes8 ges8 f8 aes8 bes8 c'8 bes4 
      | c'4.^\markup{\left-align \small vib} bes8 aes8 e8 es4 
      | es2 g8\glissando  aes4. 
      | bes4 \tuplet 3/2 {es'4 d'8} des'8 bes8 \tuplet 3/2 {c'8 es'8 f'8} 
      | aes'4. aes'8 r2 
      | r4 aes8 aes8 ges'8 ges'8 f'8 f'8 
      \bar "||" e'8 e'8 des'4 c'2^\markup{\left-align \small vib} 
      | bes8 c'8 bes8 aes8 e8 des8 c8 d8~ 
      | d16 e8 fis16 g8 e8 f8 g8 aes8 bes8 
      | b8 c'8 des'8. b16 \tuplet 3/2 {c'4 aes8} g8 f8 
      | bes8. aes16 bes8 aes8 g8 f8 e'4 
      | g4 \tuplet 3/2 {f4 g8} a8 bes8~ bes16 c'8 a16 
      | bes8 c'8~ c'16 d'8 bes16 r2 
      | r4 bes8 c'8 \tuplet 3/2 {des'4 bes8} g8 f8 
      \bar "||" aes4. aes4. \tuplet 3/2 {aes4 bes8~} 
      | bes16 c'8 ges16~ ges4 aes8 bes8 c'8 aes8 
      | \tuplet 3/2 {bes8 c'8 bes8} aes4 \tuplet 3/2 {bes4 ges8} aes4 
      | b4. bes8~ bes16 aes8 e16 des4 
      | es4 aes4 c'4.^\markup{\left-align \small vib} r8 
      | r1 
      | r4 r8 c'4\glissando  des'4 c'8 
      | es'2^\markup{\left-align \small vib} c'8 des'4. 
      \bar "||" \mark \default c'4..^\markup{\left-align \small vib} aes16~ aes8 r8 r4 
      | r2 es'8 es'8 des'4 
      | b8\glissando  c'8 aes4 bes4 aes4~ 
      | aes8 r8 r4 r8 es'8~ \tuplet 3/2 {es'8 des'8 c'8~} 
      | c'8 aes8 f4 aes4 f4 
      | aes4 b8 es'8 f'8 e'8 es'8 des'8 
      | c'8 bes8 a8 bes8 c'8 a8 bes8 c'8 
      | des'8 bes8 aes8 es8 f8 g8 aes8 bes8 
      \bar "||" b8 c'8 des'8 d'8 es'4 \tuplet 3/2 {b8 des'8 bes8} 
      | c'8 bes8~ bes16 aes8 ges16~ ges16 es8 c16~ c4 
      | bes,2 des4. d8\glissando  
      | f4 aes4 bes4 aes4 
      | bes8\glissando  c'4 f'4.\bendAfter #-4  r4 
      | r2. aes'8 aes'8 
      | g'8 g'8 f'8 f'8 es'4\glissando  a8 r8 
      | r1 
      \bar "||" aes8 c'8 e'4 ges'8 e'8 ges'8 e'8~ 
      | e'16 es'8 d'16~ d'16 es'8 des'16~ des'16 c'8 bes16 c'4 
      | b4. c'8~^\markup{\left-align \small vib} c'2 
      | r4 r16 b8 c'16~ c'16 f'8 c'16~ \tuplet 3/2 {c'8 aes8 f8~} 
      | f8 b4. c'4 e'4 
      | es'4.^\markup{\left-align \small vib} c'8 a8. f16 r4 
      | r4 d'8 c'8 bes8 aes8 f8 es8 
      | des'8 c'8 bes8 aes8 g8 f8 es8 des8 
      \bar "||" c8. es16~ es4 aes4 bes4 
      | b8 c'8 des'8 d'8 es'8 c'8 aes8 e8 
      | f4. aes8 r2 
      | r8. bes16\glissando  b4 \tuplet 3/2 {bes8 bes8 aes8~} aes16 aes8 bes16\glissando  
      | b8 b8 bes8 bes8 aes4 d'8 d'8 
      | des'8 des'8 b8 b8 bes8 bes8 aes8 aes8 
      | ges4 aes4 ges4 aes4~ 
      | aes4.\glissando  b8\glissando  c'4 f'4 
      \bar "||" \mark \default es'4. g8~ g16 aes8 des'16~ des'8 c'8 
      | r4 r8 bes8\glissando  c'4 f'4 
      | es'4 b4 es'8 b8 aes8 f8~ 
      | f4 r2 b8 c'8 
      | f'8 e'8 f'8 e'8 es'8 g8 aes8. des'16~ 
      | des'8 c'8 bes8 aes8 a8 ges8 f8 es8 
      | des8 f,8 aes,8. b16~ b8 c'8 des'8 d'8 
      | es'8 aes8 des'8 bes8 c'8 aes8 bes8. g16 
      \bar "||" aes2~ \tuplet 6/4 {aes8. c'16 des'16 es'16} \tuplet 3/2 {f'4 es'8} 
      | ges'4\glissando  \tuplet 3/2 {f'4 es'8~} es'8 aes8 bes8 aes16 b16~ 
      | b4 bes8 aes4 des4. 
      | r2 r8 d8~ \tuplet 3/2 {d8 f8 aes8~} 
      | aes8 b8 bes8 aes8 a8 ges8 f8 es8 
      | \tuplet 3/2 {des4 f8~} f16 aes8 b16~ b16 c'8 es'16 f'4\glissando  
      | \tuplet 3/2 {aes'4 f'8} aes'2 r4 
      | r4 aes'2.~ 
      \bar "||" aes'4 e'4. c'4 aes8~^\markup{\left-align \small vib} 
      | aes4. g'16 aes'16~ aes'4 f'8 d'8 
      | c'4 aes2.\glissando  
      | aes'4 f'4 c'4 aes4 
      | c'8 e'8 aes'4 e'8 c'8 aes8 r8 
      | r8. aes16 \tuplet 3/2 {bes8 c'8 es'8} aes'4 f'4 
      | aes4. f'8 d'8 bes8 r4 
      | r4 des'8 c'8 bes8 aes8 g8 aes8 
      \bar "||" \tuplet 3/2 {bes4 g8} \tuplet 3/2 {aes8 c'8 es'8} g'8 aes'4 r8 
      | r4 d'8 es'4 b8 c'4 
      | aes4 aes4 \tuplet 3/2 {aes4 bes8} b8 f8 
      | r2 r8. ges16~ \tuplet 3/2 {ges8 aes8 b8} 
      | es'8 des'8 c'8 bes8 a8 bes8 c'8 a8 
      | bes8 c'8 des'8 e'8 f'8 es'8 aes'4 
      | es'4. es'8 r2 
      | r4 r8 e'8\glissando  f'8. f'16~ f'4 
      \bar "||" \mark \default f'8 r8 r4 f'4. f'16\glissando  ges'16~ 
      | ges'8 ges'8 f'4 d'16 es'8. aes4 
      | \tuplet 3/2 {bes8\glissando  b4} bes4 aes4. r8 
      | r4 r8 e'8\glissando  f'8 f'4. 
      | f'4 f'4 f'4 f'4 
      | aes'4. f'8~ f'16 es'8 b16 aes4 
      | b4. bes4.\bendAfter #-4  r4 
      | r2 r8 f'4 es'8 
      \bar "||" f'8\glissando  ges'8 f'8 es'8~ es'16 aes8 bes16~ bes8 aes16 bes16~ 
      | bes8\glissando  b16 bes16~ bes8 aes8~ \tuplet 3/2 {aes8 es8 f8~} f8 es8 
      | ges4 f4 es4 f4 
      | aes4 bes4 b8 bes8 aes4 
      | \tuplet 3/2 {fis8 g8 aes8~} aes8 aes8 bes8 aes8 a8 bes16 c'16~ 
      | c'8 a8 bes8 bes8 \tuplet 3/2 {des'4 es'8} \tuplet 5/4 {f'8. g'16\glissando  aes'16~} 
      | aes'4~ aes'16 g'8 aes'16~^\markup{\left-align \small vib} aes'2 
      | r2 g'4 f'4 
      \bar "||" \tuplet 3/2 {es'4\glissando  e'8} g'8 c'4 r8 r4 
      | c'8 e'8 es'8 c'8 \tuplet 3/2 {f4 g8} aes8 bes8 
      | c'8 bes8 c'8 bes8 aes8 g8 f4 
      | g8. e16 f8 g8 aes8 bes8 bes8 b8 
      | c'8 des'8 c'8 b8 bes8 aes8 e8 r8 
      | r4 \tuplet 3/2 {g4 e8} \tuplet 3/2 {f4 g8} a8 r8 
      | r4 g8 aes8 bes8 b8 c'8 b8 
      | bes8 a8 aes8 f8 \tuplet 3/2 {des4 bes,8\glissando } b,4~ 
      \bar "||" b,8. c16~ c4 b,4 c4 
      | f8 d8 es8 f8 ges8 aes8 c'4~ 
      | c'4\glissando  aes4 bes4 \tuplet 3/2 {aes4 f8~^\markup{\left-align \small vib}} 
      | f4. r8 r4 r8 bes8\glissando  
      | c'2 r2 
      | r4 c'8 des'8 \tuplet 3/2 {d'4 es'8~} es'8 aes'8~ 
      | aes'8 aes'8 r2. 
      | r8 c'4 des'8 d'4 es'4 
      \bar "||" \mark \default aes4. c'8 des'4 d'8. es'16~ 
      | es'8 aes'4. es'4 des'4 
      | \tuplet 3/2 {b8 c'8 b8} aes4 b4 \tuplet 3/2 {des'4 es'8~} 
      | es'8 aes4 es'8 des'8 b8 aes8 f8 
      | aes4 aes4 aes8 bes8 b8 c'8 
      | f'8 e'8 es'8 c'8 a8 ges8 des'8 c'8 
      | bes8 aes8 g8 f8 es8 r8 r4 
      | r4 e8 d8 des8 b,8 c8 es8 
      \bar "||" f8 aes8 f4 aes4. b8 
      | c'8 f'8 c'4 f'4.^\markup{\left-align \small vib} b8~ 
      | b8 b4 aes8 \tuplet 3/2 {bes8 c'8 b8} aes4 
      | bes8. aes16~ aes8 bes4 aes8 f8 r8 
      | r4 es8 f8 g8 aes8 a8 bes8 
      | c'8 a8 bes8 c'8 des'8 es'8 f'8 g'8 
      | aes'8 g'8 aes'8 g'8 ges'16 f'8 es'16 r4 
      | r2. r8 es'8~ 
      \bar "||" es'16 e'8 c'16 d'4 \tuplet 3/2 {e'4 c'8} d'8 c'8 
      | d'8 c'8 bes8 aes16 ges16 f8 r8 r4 
      | r8 c'8 d'8 c'8 f'8 r8 r8 c'8 
      | \tuplet 3/2 {d'8 c'8 aes8~} aes8 f8 r2 
      | r8 c'8 d'8 c'8 e'8 d'8 c'8 des'8 
      | es'8. des'16 c'8 bes8~ bes16 a8 bes16 \tuplet 3/2 {c'4 aes8} 
      | bes8 c'8 d'4 aes8 bes8 \tuplet 3/2 {c'4 g8} 
      | aes8 bes8 b8 c'8 des'8 bes8 \tuplet 3/2 {g4 es8} 
      \bar "||" f4 aes4 c'4 f'4 
      | ges'8. f'16~ f'8 es'4 aes8 bes8 aes8 
      | b8 c'8 des'8 d'8 es'8 b8 aes16 f8 bes16~ 
      | bes8 aes4 bes8~ bes16 aes8 f16~ f8. aes16~ 
      | aes8. es'16~ es'4 aes2^\markup{\left-align \small vib} 
      | r4 r8 f'8 es'8. f'16~ f'8 es'8~ 
      | es'8 aes4\bendAfter #-4  r8 r2 
      | r4 r8 e'16 f'16~ f'4 aes'8. c'16~^\markup{\left-align \small vib} 
      \bar "||" \mark \default c'4. e'8\glissando  f'4 aes'4 
      | c'4. e'8\glissando  f'8. aes'16~ aes'8 b8~ 
      | b8 b4\bendAfter #-4  r8 r2 
      | r4 \tuplet 3/2 {r8 es'8\glissando  f'8~} f'8. aes'16~ aes'8. c'16~^\markup{\left-align \small vib} 
      | c'4. e'8\glissando  f'8. aes'16~ aes'4 
      | \tuplet 3/2 {b4\glissando  c'8~} c'8 e'8\glissando  f'4 aes'8 aes'8~ 
      | aes'8 des'4\bendAfter #-4  r8 r2 
      | r4 r8 es'8\glissando  f'4 \tuplet 3/2 {aes'4 f'8~} 
      \bar "||" f'8 c'8 f'8 c'8 aes4 c'8 aes8 
      | ges8 aes8 bes8 c'8 f'8 c'8 e'8 es'8 
      | d'8 des'8 c'8 bes8 aes8 f8 aes8 b8 
      | es'4 b8 es'8 d'8 b8 aes8 f8 
      | des'8 c'8 \tuplet 3/2 {bes4 aes8} \tuplet 3/2 {a4 ges8} f8 es8 
      | des8 c8 bes,8 a,8 aes,4 a,8 g,8 
      | aes,8 bes,8 b,8 c16 des16~ des8 b,8 c8 es8 
      | f8 aes8 \tuplet 3/2 {a8 bes8 b8~} b16 c'16 d'16 e'16~ e'4 
      \bar "||" f'8 r8 r2. 
      | \tuplet 3/2 {e'4 f'8} g'4 c'4 c'4 
      | c'4 bes8 aes4 f4.\bendAfter #-4  
      | r2. \tuplet 3/2 {f8 aes8 c'8} 
      | f'4 c'8 e'4 c'8 aes8 f8 
      | es'4 c'8 d'8~ \tuplet 3/2 {d'8 c'8 a8~} a8 f8 
      | des'8. a16~ a8 ges8 r4 c'8 aes8 
      | f4 b8 g8 es8 des8 bes,8 b,8 
      \bar "||" c4 es4 f4 aes4 
      | b8 c'8 des'8 d'8 es'8 c'16 a16~ a16 ges8 e16 
      | f2 es'4 des'8 es'8~ 
      | es'8 des'4.^\markup{\left-align \small vib} r2 
      | b8 des'8 \tuplet 3/2 {es'8\glissando  f'8 e'8} es'8 r8 r4 
      | r4 b8 c'8 f'8 e'8 es'4 
      | b8 c'8 b8 c'8 f'8 e'8 es'8 c'8 
      | aes8 f8 des'8 c'8 bes8 aes8 g8 f8 
      \bar "||" \mark \default es4 r2.\bar  ".."
    }
    >>
>>    
}
