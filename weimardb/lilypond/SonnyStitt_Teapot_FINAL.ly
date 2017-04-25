\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Teapot"
  composer = "Sonny Stitt"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | f2:7 c2:7 
      | f2:7 c2:7 | f1:7 | bes1:7 | s1 | bes2:min7 es2:7 | bes2:min7 es2:7 | aes1:6 | bes4:min7 es4:7 aes4:6 c4:7 
      | f2:7 c2:7 | f1:7 | bes1:7 | s1 | f2:min7 c2:7 | f1:min7 | c2:min7 f2:7 | bes4:min7 es4:7 aes4:6 c4:7 
      | f2:7 c2:7 | f1:7 | bes1:7 | s1 | bes2:min7 es2:7 | bes2:min7 es2:7 | aes1:6 | bes4:min7 es4:7 aes4:6 c4:7 
      | f2:7 c2:7 | f1:7 | bes1:7 | s1 | f2:min7 c2:7 | f1:min7 | c2:min7 f2:7 | bes4:min7 es4:7 aes4:6 c4:7|
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


      \tempo 4 = 168
      \set Score.currentBarNumber = #0
     
      | r2. r8. c''16~ 
      \bar "||" \mark \default \tuplet 6/4 {c''16 cis''16 d''8 des''16 c''16} d''16 des''16 c''8 a'8 c''8 g'4~ 
      | g'8 c'16 d'16 es'16 f'16 d'16 es'16 c'4 gis16\glissando  a16 r8 
      | r4 \tuplet 6/4 {f8 g16 c'8 es'16} g'16 e'16 f'16 g'16 aes'16 c'16 cis'16 d'16 
      | g'16 ges'16 f'16 e'16 es'16 c'16 aes16 f16 d'16 c'16 bes16 g16~ g16 f'16 g'8~ 
      | g'2~ \tuplet 3/2 {g'8 bes8 des'8} f'16 aes'16 g'16 f'16 
      | \tuplet 5/4 {e'16 f'16 aes'16 g'16 ges'16~} \tuplet 6/4 {ges'16 f'16 des'8 bes16 f16} aes16 f16 g16 b16 c'4~ 
      | c'8. es'16~ es'16 f'16 aes'16 bes'16~ \tuplet 6/4 {bes'8. a'8 bes'16~} bes'4~ 
      | bes'16 a'16 aes'16 es'16 g'8 f'4 g'8 f'16 e'16 des'16 bes16 
      \bar "||" a16 c'16 es'16 g'16 a16 des'16 f'16 aes'16 g'16 ges'16 f'16 e'16 \tuplet 3/2 {es'8 g8 a8} 
      | \tuplet 3/2 {d'8 c'8 bes8} \tuplet 6/4 {a8 bes16 c'16 d'16 es'16~} es'32 f'32 g'32 aes'32 b'32 c''32 cis''32 d''32~ d''8. b'16~ 
      | \tuplet 3/2 {b'8 aes'8 f'8~} f'8 r8 r4 r8. es'16 
      | f'16 es'16 c'16 d'16~ d'16 es'16 f'16 bes16~ bes8 r8 r4 
      | f16 aes16 c'16 aes16 f16 bes16 des'16 bes16 aes16 c'16 f'8 \tuplet 5/4 {e'16 f'16 g'16 aes'16 f'16~} 
      | f'8 c'8~ c'4. des'16 c'16 \tuplet 3/2 {bes8 g8 es8} 
      | r4 r8 bes'16 aes'16 \tuplet 3/2 {g'8 es'16 r8.} r4 
      | d'16 es'16 f'16 g'16 \tuplet 3/2 {aes'8 es'4~} es'8 r8 r4 
      \bar "||" \mark \default g16 a16 b16 g16 c'16 es'16 d'16 c'16 bes16 g8 bes16~ bes16 aes16 c'16 f'16 
      | \tuplet 6/4 {g'8 gis'16 a'16 bes'16 aes'16} \tuplet 6/4 {g'16 aes'16 f'8 fis'16 g'16} es'16 c'16 f'16 e'16 es'16 d'16 c'16 b32 bes32 
      | a8 g8 es16 g16 f16 es16 d16 f16 aes16 c'16 \tuplet 6/4 {g16 gis16 a16 bes8 g16} 
      | \tuplet 3/2 {aes8 c'8 es'8} g'16 e'16 f'8 bes'8 r8 r4 
      | r8. es''16~ \tuplet 3/2 {es''8 des''8 f'8} aes'16 c''16 bes'16 aes'16 g'16 e'16 f'16 aes'16 
      | g'16 ges'16 f'16 des'16 bes16 f16 aes16 f16 g16 b16 c'8 r4 
      | r4 r32 c'16. es'16 g'32 bes'32~ \tuplet 5/4 {bes'16 g'16 aes'16 g'16 ges'16} f'16 des'16 bes16 ges16 
      | es'4. g'16 f'16 \tuplet 6/4 {es'8 g8 a16 c'16~} \tuplet 6/4 {c'16 des'16 c'8 bes16 g16} 
      \bar "||" a16 bes16 c'16 d'16 \tuplet 6/4 {es'8 f'16 g'16 aes'16 b'16} c''16 d''8. r4 
      | r8 g'16 ges'16 f'16 e'16 es'16 g16 d'16 c'16 bes16 g16 \tuplet 6/4 {a16 g8 f16 es16 d16~} 
      | d16 f16 aes16 c'16 \tuplet 6/4 {g16 gis16 a16 bes8 g16} aes16 bes16 c'16 es'16 g'16 e'16 f'16 g'16 
      | \tuplet 6/4 {aes'16 c'8 cis'16 d'16 g'16~} \tuplet 6/4 {g'16 ges'16 f'16 es'8 d'16} r2 
      | r4 \tuplet 5/4 {c'8 d'16 f'16 aes'16} \tuplet 6/4 {g'8 f'16 e'16 g'16 bes'16} \tuplet 3/2 {des''8 c''8 g'8} 
      | bes'8 aes'8~ aes'8. bes'16~ \tuplet 6/4 {bes'16 aes'16 g'8 f'16 e'16~} e'16 des'16 c'8~ 
      | c'8. es'16 \tuplet 3/2 {des'8 c'8 bes8} \tuplet 5/4 {a16 c'16 es'16 f'16 ges'16} \tuplet 3/2 {f'8 es'8 c'8} 
      | \tuplet 5/4 {des'16 es'16 f'16 aes'16 c''16~} \tuplet 6/4 {c''16 des''16 bes'8 f'16 aes'16} es'8 r8 r4\bar  ".."
    }
    >>
>>    
}
