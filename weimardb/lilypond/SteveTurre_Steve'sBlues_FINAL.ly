\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Steve's Blues"
  composer = "Steve Turre"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key f \major
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
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | c1:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | a2:min7 d2:7 
      | g1:min7 | c1:7 | f1:7 | c1:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | a2:min7 d2:7 | g1:min7 | c1:7 | f1:7 | c1:7|
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


      \tempo 4 = 204
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 \tuplet 6/4 {r8. es'16 d'16 es'16} d'8. d'16 d'4 
      \bar "||" \mark \default d'16 d'16 d'16 f'16 f'4 \tuplet 3/2 {f'4 f'8~} f'8. f'16~ 
      | f'8. f'16~ f'4 f'4 aes4~ 
      | aes8 f'4 a4 f'4 b8~ 
      | b8 f'8 c'4 \tuplet 3/2 {f'4 d'8~} d'8 f'8~ 
      | f'8 f'8 \tuplet 3/2 {f'4 f'8} f'4 \tuplet 3/2 {f'4 f'8} 
      | f'8. f'16~ f'8 f'8 f'8 r8 r8. e'16~ 
      | e'8 g'8 r2 r8 e'8 
      | g'8 e'4 g'8 fis'8 d'8 \tuplet 3/2 {bes4 fis8} 
      | \tuplet 3/2 {g8 g4} g4 g8 r8 r8. f'16\bendAfter #-4  
      | g8 a8 bes8 d'8 aes8 b8 e'8 d'8 
      | c'8. a16 \tuplet 3/2 {bes4 c'8~^\markup{\left-align \small vib}} c'4 r4 
      | r4 c'16 d'16 dis'16 e'16 \tuplet 3/2 {f'8 e'8 d'8} \tuplet 3/2 {c'8 bes8 a8} 
      \bar "||" \mark \default g4 d'2 c'8 es'8~ 
      | es'16 des'16 bes16 a16 \tuplet 3/2 {g8 g8 e8} d8 g8 \tuplet 3/2 {c'4 f'8~} 
      | f'8 g'4 f'4 g'8 \tuplet 3/2 {f'4 e'8} 
      | ges'8 e'8 c'8 aes8~ aes16 es8 c16~ c16 d8 g16~ 
      | g8 c'8 d'4 \tuplet 3/2 {c'4 aes8} r4 
      | r2 r8 f'8 d'4 
      | bes4 bes4 \tuplet 3/2 {c'4 a8} r4 
      | r2 \tuplet 3/2 {a4 bes8} cis'8 dis'8 
      | e'4 f'4 \tuplet 3/2 {d'4 b8} r4 
      | r4 \tuplet 3/2 {c'4 d'8} e'8 f'8 \tuplet 3/2 {g'4 a'8~} 
      | a'4 es'4 \tuplet 3/2 {d'4 f'8} r4 
      | r4 d'8 e'8 f'8 g'8 g'4 
      \bar "||" \mark \default a'4 a'8\glissando  bes'8~^\markup{\left-align \small vib} bes'2~ 
      | bes'1~ 
      | bes'1~ 
      | bes'8 bes'8 \tuplet 3/2 {a'8 ges'8 des'8~} des'16 bes8 a16~ a16 f8 dis16~ 
      | \tuplet 6/4 {dis4 e16 f16~} f8. f16 bes4 aes8 r8 
      | r2. r16 e'16 f'8 
      | \tuplet 6/4 {fis'16 g'16\bendAfter #+4  aes'16 g'16 ges'16 f'16} e'8 r8 r8. e'16~ e'16 d'8 a16~ 
      | a8 e8~ e16 cis8 dis16~ dis16 gis8 dis'16 cis'4 
      | \tuplet 3/2 {cis'8 d'8 c'8} g8 d8~ d16 c8 d16 g8 c'8~ 
      | c'8 des'8 b8 ges8 des8 b,8 c4~ 
      | c8 d8 e8 f8 g8 a8~ a16 bes8 c'16~ 
      | c'8 b8 bes8 a8 g8 f8 e8 aes8~ 
      \bar "||" \mark \default aes8 d'8 c'8 bes8 a8 r8 r4 
      | r4 r8 b16 ges16 aes16 bes16 a8 bes8 cis'8 
      | d'8 e'8 f'8 g'8 a'8 c''4. 
      | bes'8 r8 r2. 
      | \tuplet 3/2 {r8 c''8 d''8~} d''8. c''16~ c''8. bes'16~ bes'8 gis'8~ 
      | gis'16 a'16 bes'8 a'16 bes'8 aes'16~ aes'8 f'4.~^\markup{\left-align \small vib} 
      | f'4. f'8 e'4 \tuplet 3/2 {a'4 f'8~} 
      | f'8 d'8 f'8 d'8~ d'16 dis'8 cis'16~ cis'8 gis8 
      | \tuplet 3/2 {f8 f8 g8} g4~ \tuplet 3/2 {g8 g8 aes8} \tuplet 3/2 {bes8 c'8 d'8} 
      | \tuplet 3/2 {e'8 f'16 r8.} r4 \tuplet 3/2 {e'8 f'8 e'8~} \tuplet 6/4 {e'16 d'8 e'8 d'16~} 
      | d'16 c'8 des'16 bes4 r8 d'16 g16~ \tuplet 3/2 {g8 gis8 a8} 
      | bes8 a8 bes8 f4 bes8 a8 f8 
      \bar "||" des8 bes,8 a,8 f8 r2\bar  ".."
    }
    >>
>>    
}
