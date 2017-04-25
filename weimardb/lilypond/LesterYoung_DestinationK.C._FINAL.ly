\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Destination K.C."
  composer = "Lester Young"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | c1 | c1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | s1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | aes1:7 | g1:7 
      | c1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | s1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | s1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1 
      | c1:7 | s1 | f1:7 | s1 | bes1:7 | s1 | aes1:7 | g1:7 
      | c1 | s1 | g1:7 | c1 | s1 | s1 | g1:7 | c1|
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


      \tempo 4 = 246
      \set Score.currentBarNumber = #0
     
      | r2. g4 
      \bar "||" \mark \default c'2 r2 
      | g4 \tuplet 3/2 {c'4 d'8} dis'8 f'16 es'16 d'4 
      | g2 r2 
      | r2 r8 dis'4 dis'8~ 
      | dis'8 e'8 f'8. fis'4. fis'16 g'8~ 
      | g'4. f'8 dis'8 e'4. 
      | c'8 g8 \tuplet 3/2 {a8 g8 f8} e4 g8 fis8 
      | \tuplet 3/2 {g4 c'8~} c'4 r2 
      \bar "||" r8 g8 a8 d'8 c'4.. gis16 
      | a8 d'8 c'8 r8 r8 g8 a8. dis'16~ 
      | dis'4 r4 r8 g8 a4 
      | c'4 d'4 es'4. d'8 
      | c'8 g8 dis8 e8 f8 g4 g8~ 
      | g4. e8 \tuplet 3/2 {f8 g8 f8} dis8 e8 
      | \tuplet 3/2 {g4 c'8~} c'4 a8 r8 r4 
      | r2. r8 e8 
      \bar "||" g8 bes8 d'8 dis'8 \tuplet 3/2 {e'8 ges'8 f'8} e'8 d'8 
      | bes8 g8 d2~ d8 e8 
      | g8 e8 f4 \tuplet 3/2 {d4 e8} f4 
      | \tuplet 3/2 {a4 c'8~} c'4 f'4 r4 
      | r4 r8 es'8 f'2 
      | bes'4. f'8 d'8 bes8 f8. es16~ 
      | es8 aes4 g8 aes4 dis8 e8 
      | g1~ 
      \bar "||" g2 c'8 r8 r4 
      | r4 r8 c'8~ c'4. c'8~ 
      | c'4. a8 d'4 b4 
      | c'4. b4. c'4~ 
      | c'4. a8 b4 \tuplet 3/2 {g4 a8~} 
      | a4. g8 ais4 g8 gis8~ 
      | gis4 e4 g2 
      | r2. dis'8 e'8 
      \bar "||" \mark \default f'8 fis'8 g'4. r8 r4 
      | r4 \tuplet 3/2 {r8 d'8 dis'8} e'4 \tuplet 3/2 {f'8 fis'8 g'8~} 
      | g'4~ g'16 aes'8 g'16~ g'4. fis'8 
      | g'4. f'8 dis'8 e'4. 
      | c'8 g8 dis8 e8 f4 g4~ 
      | g4. e8 \tuplet 3/2 {f8 e8 es8~} es16 d8 g16~ 
      | g8 c'8 c'2 r4 
      | r1 
      \bar "||" d''8 dis''2..~ 
      | dis''4. c''8~ c''2~ 
      | c''4. ais'8~ ais'2 
      | g'4. f'8 dis'4. c'8~ 
      | c'4. ais8 g8 f8 e16 f8 f16~ 
      | f8 fis8 g4. e8~ e16 f8 e16~ 
      | e8 f8 g8 c'8 r2 
      | r2 c'8 dis'8 e'16 g'16 gis'16 ais'16~ 
      \bar "||" ais'16 b'16 c''4 bes'8~ bes'4. d'8 
      | \tuplet 3/2 {dis'8 e'8 a'8} b'16 c''8 a'16~ a'4. e'8 
      | g'8 e'8 f'8 f'8 d'8 e'8 f'8 g'8 
      | e'2 f'4 r4 
      | r4 \tuplet 3/2 {bes,4 f8~} f16 ais8 b16~ b8 bes8~ 
      | bes4. des8 f4 aes8 r8 
      | r4 aes,8 c16 d16 es8 f8 fis16 g16 aes8~ 
      | aes8 d4 g8~ g4.. a16~ 
      \bar "||" a4. g8 d'4 r4 
      | d'4. c'8 d'4. c'8 
      | e'8. dis'16~ dis'16 e'8 dis'16 \tuplet 3/2 {c'4 a8} f8 e8 
      | g4. e8 f4. f8 
      | g8 c'8 r2 r8 c'8~ 
      | c'4. a8 c'8 d'8 \tuplet 3/2 {dis'8 fis'8 es'8} 
      | d'8 c'8 g8 f8 e8 f8 fis4 
      | g4 c'8. c'16~ c'8. g16 r4\bar  ".."
    }
    >>
>>    
}
