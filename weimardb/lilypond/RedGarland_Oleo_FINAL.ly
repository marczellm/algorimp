\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Oleo"
  composer = "Red Garland"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj es2:min6 | bes2:maj f2:7 | b1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj es2:min6 | bes2:maj f2:7 | bes1:maj 
      | s2 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj es2:min6 | bes2:maj f2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:maj es2:min6 | bes2:maj f2:7 | bes1:maj 
      | s2 g2:7 | c2:min7 f2:7|
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
     
      \bar "||" \mark \default r2 c8 a,8 bes,8 c8 
      | cis8 d8 es8 e8 f8 es8 c8 cis8 
      | d8 c8 b,4 aes8 g8~ g16 f8 d16 
      | es4 g8 bes8 \tuplet 3/2 {d'4 des'8~} \tuplet 3/2 {des'8 c'8 bes8~} 
      | bes8 g8 aes8 c8 es8 g8~ g16 ges8 d16 
      | f8 d8~ d16 es8 f16 ges8 aes8~ aes16 bes8 ges16~ 
      | ges16 f8 es16~ es16 c8 cis16 d8 f8 e8 d8 
      | es8 f8 g8 bes8 d'8 c'8~ \tuplet 3/2 {c'8 a8 f8} 
      \bar "||" bes4 f8 g8 f4 d'4 
      | f8 g8 f4 es'4 \tuplet 3/2 {f4 g8} 
      | f4 e'4 \tuplet 3/2 {f4 g8~} g8 f8 
      | es'2~ es'4~ es'16 d'8 des'16~ 
      | \tuplet 3/2 {des'8 c'8 bes8~} bes16 a8 g16 aes8 a'4 d'8 
      | \tuplet 3/2 {f'4 d'8} es'8 f'8 ges'8 d'8 \tuplet 3/2 {f'4 es'8} 
      | d'8 c'8 bes8 a8 bes8 c'8 cis'8 d'8 
      | g'8 ges'8 f'8 es'8 d'8 c'8 bes8 a8 
      \bar "||" g8 ges8 f8 a,8 c8 es8 c8 cis8 
      | d8 c8 a,8 bes,8 b,4 \tuplet 3/2 {g,4 f,8} 
      | r2. r16 c,8 cis,16~ 
      | cis,16 d,8 b,16~ b,16 c8 a,16 b,8 d,8 f,8 gis,8~ 
      | gis,8 fis,8 g,8 f,8 \tuplet 3/2 {e,4 d8~} d8 a,8 
      | c8 r8 r4 \tuplet 3/2 {a4 fis8} g8 a8 
      | bes8 g8 es8 c8 d4. c8 
      | b,8 a,8 bes,8 ges4 e8 f8 es8 
      \bar "||" r4 \tuplet 3/2 {d4 bes,8} a,8 aes,8 g,8 fis,8 
      | g,8 bes,8 g,8. c'16~ c'8 bes8 a8 g8 
      | f8 es8 c8 cis8 d8. b,16~ b,8 f8 
      | e8 d8 es8 g,8 bes,8 d4. 
      | c8 g,8 \tuplet 3/2 {aes,8 c8 es8} g4 bes4 
      | r2 ges4 bes8. ges16~ 
      | ges16 f8 es16~ es16 c8 cis16 \tuplet 3/2 {d4 f8~} f8 r8 
      | r2. f4 
      \bar "||" \mark \default bes4 a8 c'8~ c'8. bes16~ bes4 
      | \tuplet 3/2 {f4 g8} f16 e8 g16~ g8 f4 es8~ 
      | es16 c8 cis16~ cis16 d8 c16 b,8 aes8~ aes16 g8 d16 
      | f8 d8 \tuplet 3/2 {es8 g8 bes8} \tuplet 3/2 {d'4 des'8} c'8 bes8~ 
      | \tuplet 3/2 {bes8 a8 g8} aes8 c'8~ c'16 g8 f16 \tuplet 3/2 {bes4 aes8~} 
      | aes8 fis8 \tuplet 3/2 {g4 f8} e8 g8 bes8 cis'8 
      | d'8 f4. g4 r4 
      | r2. r8 cis'8 
      \bar "||" d'8 f'8~ f'16 c'8 des'16 \tuplet 3/2 {e'4 b8} c'8 es'8~ 
      | \tuplet 3/2 {es'8 bes8 b8} d'4 \tuplet 3/2 {a8 bes8 des'8~} \tuplet 3/2 {des'8 gis8 a8} 
      | c'8 r8 r4 \tuplet 3/2 {b4 a8} bes8 g8 
      | es4 ges8 aes16 ges16 f8 es8 d8 c8 
      | bes,8 g,8 aes,8 bes,8~ bes,16 c8 d16~ d16 g8 d16 
      | f8 d8 es8 f8 ges4 f8 es8 
      | d8 c8 bes,8 a,8 bes,8 c8 d8 es8 
      | f8 c8 es8 c8 bes,8 b,16 d16~ d8 ges16 a16 
      \bar "||" \tuplet 3/2 {d'4 b8} r2. 
      | \tuplet 3/2 {d'4 a8~} a8 fis8 d4 r4 
      | r4 cis8 d8 f8 a8 c'8 bes8 
      | b8 d8 f8 gis8 f8 fis8 \tuplet 3/2 {g4 f8} 
      | d8 es8 e4 \tuplet 3/2 {c4 a,8~} a,4 
      | a8 aes8 g16 ges8 d16~ d4 des8 es8 
      | des16 c8 bes,16~ \tuplet 3/2 {bes,8 g,8 gis,8} a,4 \tuplet 3/2 {f,4 es,8~} 
      | es,8 es,4 bes,8 d4 c4 
      \bar "||" bes,4 f,4 g,4 a,4 
      | bes,4 c4 d4 es4 
      | f4 f8 d8~ d2 
      | es4 es8 c8~ c2 
      | d4 d8 bes,8~ bes,4. r8 
      | r4 bes,4 r4 bes,4 
      | f,4 a,4 a,4 a,8. bes,16~ 
      | bes,4 c4 d4 es4 
      \bar "||" \mark \default f4 r4 g,2~ 
      | g,1\bar  ".."
    }
    >>
>>    
}
