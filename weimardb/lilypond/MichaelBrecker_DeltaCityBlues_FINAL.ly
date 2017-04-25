\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Delta City Blues"
  composer = "Michael Brecker"
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
      | f1:7 | s1 
      | bes1:7 | bes1:7 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | c1:min7 | s1 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | c1:min7 | s1 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | c1:min7 | s1 | f1:7 | s1 | bes1:7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:7 | s1 | s1 | s1 | bes1:7 | s1 | s1 | s1 
      | c1:min7 | s1 | f1:7 | s1 | bes1:7 | s1 | s1|
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
      \set Score.currentBarNumber = #-1
     
      | r4 r8. a16~ a8 g8 f8 e8 
      | es8 f8 \tuplet 3/2 {g8 bes8 d'8} f'8 des'16 a16~ \tuplet 3/2 {a8 aes8 bes8~} 
      \bar "||" \mark \default bes2 a8\glissando  b4.\bendAfter #-4  
      | bes8 r8 r2. 
      | r4 r8. b16~ b8 des'4 es'8 
      | e'2 e'8. ges'16~ ges'8 gis'8~ 
      | gis'8 a'2..~ 
      | a'4.. ges'16~ ges'4.\bendAfter #-4  f'8 
      | r1 
      | r1 
      | r4 r8 g8~ g16 a8 c'16~ c'8 des'8 
      | \tuplet 3/2 {es'4 f'8~} f'8 g'8 \tuplet 3/2 {a'4 bes'8~} bes'8\glissando  c''8~ 
      | c''1~ 
      | c''4 f'8 r8 r2 
      | r1 
      | r2 b8 des'8 es'8 ges'8~ 
      | ges'16 gis'8 a'16~ a'16 b'8 des''16~ des''8 es''4.~ 
      | es''4 des''8 b'8 aes'2~ 
      | aes'2 ges'8 es'8 b8. aes16~ 
      | aes8 des'8 \tuplet 3/2 {e'4 es'8~} es'4\bendAfter #-4  d'8 r8 
      | r2 r16 e'8 des'16 a8 ges8 
      | es'8 des'8 b8 a8 aes8 ges8~ ges16 e8 d16 
      | c2 aes,2 
      | r1 
      | r2 b8 bes8 a8 ges8 
      | f8 e8 es8 ges8 a8 d'8 es'8 des'8 
      \bar "||" \mark \default b8 a8 aes8 ges8~ ges16 f16 e16 es16~ es8 f8 
      | e4 des4 e4 des4 
      | e4 \tuplet 3/2 {des4 f8~} f4. des8 
      | \tuplet 3/2 {g4 des8} aes8 e8 \tuplet 3/2 {bes4 ges8} \tuplet 3/2 {b4 aes8} 
      | des'8 bes8 d'8 b8 e'8 des'8 f'8 d'8 
      | g'8 e'8 aes'8 b'8 r2 
      | r4 r8 des''8 b'8 aes'8 ges'8 e'8 
      | d'8 b8 \tuplet 3/2 {bes4 aes8} ges8 d8 des8 b,8 
      | bes,8 bes8 r2. 
      | r8 a8 des'16 f'8 a'16 c''8 es''8 f''4~ 
      | f''4 es''8 des''8 c''8 bes'8 a'8 g'8 
      | f'8 e'8 es'8 des'8 a8 ges8 f8 e8~ 
      | \tuplet 3/2 {e8 es8 f8} d8 f8 bes8 d'8 \tuplet 3/2 {es'4 c'8} 
      | aes8 f8 bes8 g8 aes8 bes8 b8 gis8 
      | a8 b8 c'8 d'8 es'8 c'8 e'8. f'16~ 
      | f'8 ges'8\bendAfter #-4  r2. 
      | r2 aes'8. e'16~ e'8 des'8 
      | bes4 des'8 e'4.\bendAfter #-4  r4 
      | r2 a'8 des''8 b'8 a'8 
      | aes'8 ges'8 f'8 e'8 es'8 f'8 \tuplet 3/2 {ges'4 e'8} 
      | f'8 e'8 es'8 g'8 e'8 c'8 aes8 e8 
      | a4.^\markup{\left-align \small vib} g8 e8 c8 r4 
      | r1 
      | r2. f'8 aes'8 
      \bar "||" \mark \default bes'1 
      | bes'4 bes'2~ bes'8 aes'8~ 
      | aes'8 bes'8 c''8 bes'8~^\markup{\left-align \small vib} bes'2 
      | aes'8 f'8 es'8 r8 r2 
      | r2 \tuplet 3/2 {c'4 f'8} g'8 bes'8 
      | c''8 es''8 d''8 c''8 bes'8 aes'8 aes'8 g'8 
      | ges'8 d'8 b8 aes8 \tuplet 3/2 {bes4 g8} a8 ges8 
      | aes8 b8 d'8 ges'8 cis'8 d'8 ges'8 a'8 
      | des''8 c''8 b'8 gis'8 a'8 aes'8 g'8 fis'16 g'16 
      | ges'4 f'8 e'8 es'8 d'8 des'8 f'8 
      | c'8 des'8 bes8 g8 e'8 d'8 b8 bes8 
      | a8 ges8 f8 e8 es8 b,8 r4 
      | r2. f'8 e'8 
      | es'8 c'8 a4 \tuplet 3/2 {ges8 b8 ges8} aes8 b8 
      | des'8 es'8 e'8 ges'8 gis'8 a'8 b'8. aes'16 
      | gis'8\glissando  a'8 aes'8 ges'4 r8 r4 
      | r8. f'16~ f'8 e'8 es'8 c'8 a8 f16 d'16~ 
      | d'16 c'8 b16~ \tuplet 3/2 {b8 bes8 a8~} \tuplet 3/2 {a8 b8 des'8~} des'8 es'8 
      | f'8 ges'8 aes'8 b'8 \tuplet 3/2 {des''4 es''8~} es''8\bendAfter #+4  e''8 
      | es''8 des''8 b'8 a'8 aes'8 ges'16 f'16~ f'8 e'8 
      | es'8 f'8 g'8 a'8 bes'8 ges'8 aes'8 bes'8 
      | b'8 bes'8 des''8 bes'8 b'8 a'8 aes'8 g'8 
      | ges'8 b'4\bendAfter #-4  ges'8 f'8 e'8 es'8 g'8 
      | d'8 c'16 a16~ \tuplet 3/2 {a8 f8 g8~} g16 es8 b,16~ b,16 es8 aes,16~ 
      \bar "||" \mark \default aes,4 r2. 
      | r8 aes,8 es8 aes8 e4 aes8 b8 
      | ges4 bes8 des'8 aes4 b8 es'8 
      | \tuplet 3/2 {bes4 des'8~} des'8 ges'8 b4 e'8 aes'8 
      | des'8 ges'8 bes'8 ges'8 e'8 aes'8 b'8 aes'8 
      | bes'8 aes'8 aes'8 g'8 ges'8 d'8 bes8 ges8 
      | bes8 ges8 aes4 r2 
      | g'16 a'16\glissando  c''16 es''16~ \tuplet 3/2 {es''8 des''8 b'8} bes'8 aes'8 g'8 ges'8 
      | f'8 e'8 es'8 d'8 cis'8 d'8 f'8 e'8 
      | es'8 r8 r2. 
      | \tuplet 6/4 {r4 des''16 e''16~} e''8 es''8 \tuplet 3/2 {d''4 c''8~} \tuplet 3/2 {c''8 bes'8 a'8~} 
      | a'16 g'8 f'16 e'8 es'8~ \tuplet 3/2 {es'8 c'8 g'8~} g'8 ges'8 
      | f'8 e'16 es'16~ es'8 ges'16 d'16~ d'8 c'8 a8 ges8 
      | bes4 b4 c'8 des'8 r4 
      | r2 ges'8 f'8 f'8 es'8 
      | d'8 c'8 \tuplet 3/2 {b8 aes'8 ges'8~} ges'16 c'8 d'16~ d'16 f'8 d'16 
      | es'4. bes'8 c''8 des''8 bes'8 g'8 
      | b'8 c''8 a'8. bes'16~ bes'16 b'8 aes'16~ aes'8 e'8 
      | a'8 bes'8 \tuplet 3/2 {g'4 e'8} gis'8 a'8 f'4 
      | d'16 fis'16 g'8 es'8. des'16 f'8 e'8 es'8 f'8 
      | c'8 es'8 d'8 c'8 bes8 f4. 
      | a'8 g'8 f'8 e'8 es'8 f'8 \tuplet 3/2 {g'4 des''8~} 
      | des''16 f''8 e''16 es''8 d''8 c''8 bes'8 a'8 g'8 
      | \tuplet 3/2 {f'8 e'8 es'8~} es'8 ges'8 d'8 des'8 aes4 
      \bar "||" \mark \default f16 bes8.~ bes2 \tuplet 3/2 {aes8 bes4\bendAfter #-4 }\bar  ".."
    }
    >>
>>    
}
