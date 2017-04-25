\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Six Cats and a Prince"
  composer = "Lester Young"
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
      
      | bes1:maj | bes1:maj | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | f1:7 
      | bes1:maj | s1 | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | s1 
      | bes1:7 | s1 | es1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes1:maj | s1 | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | f1:7 
      | bes1:maj | s1 | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | f1:7 
      | bes1:maj | s1 | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | s1 
      | bes1:7 | s1 | es1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes1:maj | s1 | b1:dim | s1 | c1:min7 | f1:7 | bes1:maj | f1:7|
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


      \tempo 4 = 220
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default g4 f4 g4 f8 g8~ 
      | g4. f8 g4. f8 
      | gis4. f8 gis8. f16~ f8 gis8~ 
      | gis4 f4 gis4 f4 
      | g4 r2 r8 g8 
      | ges8 bes8 \tuplet 3/2 {cis'4 d'8} es'8 e'8~ e'16 f'16 g'16 f'16 
      | cis'8. d'16~ d'4 bes8 g8 r4 
      | r8 f16 bes16~ bes8 bes4 a8 g4 
      \bar "||" c'4 \tuplet 3/2 {bes4 g8} ges8 f8 g4 
      | c'4. bes8 g8 fis8 g4 
      | aes4 r2 r8 bes8 
      | b4. d'4. b4 
      | c'4 b8. g16~ g2 
      | es4 ges4 r2 
      | \tuplet 3/2 {f4 bes8~} bes4 f2 
      | f8 bes8 r2 r8 g8 
      \bar "||" \tuplet 3/2 {aes4 c'8} d'8 g'8~ g'16 f'8 c'16~ c'16 aes8 fis16 
      | g4. aes8 c'8 es'8 f'8 r8 
      | r2 \tuplet 3/2 {fis4 g8~} \tuplet 3/2 {g8 bes8 d'8} 
      | \tuplet 3/2 {es'4 f'8~} f'8 g'8 f'16 d'8 es'16~ es'8 d'8~ 
      | \tuplet 6/4 {d'16 bes4 f16~} f8 f8~ \tuplet 6/4 {f16 g4 d'16~} d'8. a16 
      | d4 \tuplet 3/2 {e8 f8 a8~} a8 c'8~ c'8. g16~ 
      | g2 d16 es8 f16 \tuplet 3/2 {ges4 es8} 
      | f4. r8 r4 c'4\bendAfter #+4  
      \bar "||" des'8. c'16~ c'2 bes8. c'16~ 
      | c'8 d'8 r2 r8. e'16~ 
      | e'8. f'16~ f'4 \tuplet 3/2 {d'4 es'8} e'8 f'8 
      | \tuplet 6/4 {d'8. b8 gis16~} gis8 f8 d8. c16~ c8. es16~ 
      | es2 fis8 g4 f8~ 
      | f4 r2 r8 bes8~ 
      | bes2 bes4. bes8~ 
      | bes4 \tuplet 3/2 {g4 bes8} \tuplet 3/2 {cis'4 d'8} es'8 e'8 
      \bar "||" \mark \default \tuplet 3/2 {f'8 g'8 f'8} cis'16 d'8 es'16 e'8. f'16~ \tuplet 6/4 {f'8. aes'16 ges'16 f'16} 
      | cis'4 d'16 es'8 e'16~ e'16 f'8 ges'16 f'16 d'8 es'16~ 
      | es'16 e'8 f'16 r4 r8 d'8 es'8 e'16 f'16~ 
      | f'16 fis'16 g'16 aes'16~ aes'8. g'16 fis'16 g'16 ges'16 f'16 d'4 
      | es'2~ es'8. g16~ g8 ges8~ 
      | ges4. f8~ f4. bes8~ 
      | bes8 r8 r2 bes,4 
      | b,2.. bes,8~ 
      \bar "||" bes,8 bes4. g4 r4 
      | r8. f16 \tuplet 3/2 {g4 bes8} cis'8 d'8 es'8 e'8 
      | \tuplet 3/2 {fis'8 g'8 f'8} \tuplet 3/2 {d'4 b8~} b4. gis8 
      | e8 b,8~ b,2~ b,8 r8 
      | r4 r8 c8 \tuplet 3/2 {es4 bes8} \tuplet 3/2 {c'8 d'8 e'8} 
      | g'8 bes'8 b'16 c''8.~ c''4. g'8~ 
      | g'8. bes'16~ bes'4. g'4. 
      | r2. r8 d'8 
      \bar "||" es'8 e'16 f'16~ \tuplet 6/4 {f'8 fis'16 g'16 gis'16 a'16} bes'16 c''8.~ c''8 c'16 g'16 
      | \tuplet 3/2 {aes'4 bes'8~} bes'4 g'8. aes'16~ aes'4~ 
      | aes'16 d'16 es'16 e'16 f'8 fis'16 g'16~ g'2 
      | \tuplet 3/2 {d'8 es'8 e'8} f'4~ f'16 c'16 des'8 es'4 
      | d'8 r8 r4 r16 des16 es16 e16 f8 fis16 g16 
      | gis16 a8 d'16~ d'4 a8 des'4. 
      | \tuplet 3/2 {g8 c'4~} c'4~ c'16 ges8 c'16~ c'4~ 
      | \tuplet 3/2 {c'8 ges8 c'8~} c'4 f4. r8 
      \bar "||" r4 r8. f16 g8 c'8~ \tuplet 3/2 {c'8 g8 f8~} 
      | f16 g8 c'16~ c'8 g16 f16 g8 f8~ f16 g8 f16 
      | gis8 f8 gis8 f8~ f16 gis8 d'16~ d'16 gis8 f16~ 
      | f16 gis8 f16 gis8 d'8 gis8 f8 gis8. f16 
      | g4 r4 r8. g16~ g16 c8 d16 
      | es8 e8 \tuplet 3/2 {f8 ges4~} ges4~ ges16 f8 bes16~ 
      | bes4~ bes16 g8 a16~ a16 cis'8 d'16 es'8 e'8 
      | f'8 g'16 f'16~ \tuplet 3/2 {f'8 es'8 f'8} es'8 cis'16 d'16~ d'4\bar  ".."
    }
    >>
>>    
}
