\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cabin Fever"
  composer = "Pat Metheny"
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
      
      | bes2:7 r2 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | s1 | s1 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | s1 
      | s1 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:7 
      | c1:min7 | f1:7 | bes1:7 | f1:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:7 | c1:min7 | f1:7 | bes1:7 | f1:7 
      | bes1:7 | es1:7|
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


      \tempo 4 = 308
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r4 r8. es'16~ es'8 es'8 des'4 
      | cis'8\glissando  d'4. cis'8\glissando  d'8 r4 
      | \tuplet 3/2 {bes4 f8~} f8 es4 d4 cis8 
      | r1 
      | r4 r8. e'16 es'8 des'8 bes4 
      | aes4 bes8 a8 cis'4\glissando  d'8 es'8 
      | r1 
      \bar "||" \mark \default r2. r8. aes'16~ 
      | aes'8 bes'8 \tuplet 3/2 {c''8 cis''8 d''8~} d''8 c''8 des''8 c''8 
      | b'8 bes'8 a'8 aes'8 g'4 fis'8 g'8 
      | f'8 d'8 des'8 b8 bes8 a8 aes4 
      | g4 es'4 \tuplet 3/2 {ges4 f8~} f8\glissando  ges8 
      | a4 d'4 f4\glissando  \tuplet 3/2 {e8 f4} 
      | r4 r8 bes4 des'8 des'4~ 
      | des'8 bes8 \tuplet 3/2 {a4 g8} ges8 f8 e4 
      | es4. f4 ges8 gis4 
      | a4. b8 cis'4. d'8~ 
      | d'8 es'8 ges'4 es'8 d'8 des'8. c'16~ 
      | c'8 a8 aes8 ges8 f8 e8 es4 
      \bar "||" \mark \default d4 e4 a4 cis'4 
      | d'4. b4 ges'4 e'8~ 
      | e'8 c'8 r2. 
      | b4 des'4 es'4. e'8~ 
      | e'8 ges'4 gis'4 a'4 f'8 
      | c'8 r8 r2. 
      | b4 des'4 es'4. ges'8~ 
      | ges'16 gis'8 bes'16~ bes'4 \tuplet 3/2 {c''8 cis''8 d''8~} d''8 des''8 
      | c''8 b'8 bes'8 a'8 aes'8 fis'8 g'8. ges'16~ 
      | ges'8 r8 r4 r8 des'8 e'8 f'8~ 
      | f'16 e'8 es'16~ es'8 d'8~ d'16 f8 g16 a8 c'8~ 
      | c'8 bes8 \tuplet 3/2 {d'4 c'8~} c'8 e'8 es'8 b8 
      \bar "||" \mark \default d'8. bes16 \tuplet 3/2 {des'4 a8} c'8 f'8 f'4~ 
      | f'16 g8 a16 c'4. r8 r8 f8 
      | ges8 bes8~ bes8. e16~ e8 a4 des8 
      | ges4~ ges16 b16 b8 aes4 des'8 des'8 
      | b4 \tuplet 3/2 {e'8 e'4} des'4 ges'16 ges'8. 
      | es'8. aes'16~ aes'4. f'8 bes'4~ 
      | bes'8 d'4 g'4. e'8. b16~ 
      | b4 fis4 e4 a4 
      | r2. r8. ges'16~ 
      | ges'8 es'8 des'8 a8 c'8 a8 aes8 ges8 
      | f8 es8 d4 f4 bes4 
      | r2. r8 e'8~ 
      \bar "||" \mark \default e'8 b8 aes8 g8 bes8 d'8 f'4 
      | e'8 aes'8 b'4 d''8 es''8 \tuplet 3/2 {f''4 es''8~} 
      | es''8 des''4 c''8 b'8 bes'8 a'4 
      | aes'4 g'8 bes'8~ \tuplet 3/2 {bes'8 aes'8 f'8~} \tuplet 3/2 {f'8\glissando  e'8 b8\glissando } 
      | \tuplet 3/2 {bes8 des'8 es'8} f'4 fis'4 g'8 aes'8~ 
      | aes'8 b'4 aes'8 ges'8 e'8 d'8 b8 
      | a8 f8 aes8 es8 \tuplet 3/2 {d8\glissando  g4~} g8 r8 
      | r1 
      | r8 d'4 es'4 g'4 bes'8~ 
      | bes'8 cis''4 d''8 es''4. d''8 
      | des''8 bes'8 aes'8 f'8 e'8 c'8 es'4 
      | des'4 r2. 
      \bar "||" \mark \default r8 ges8 bes8 des'8 es'8 f'8 ges'8 aes'8 
      | g'8 bes'4 a'8 \tuplet 3/2 {aes'4 f'8~} \tuplet 3/2 {f'8 e'8 es'8~} 
      | es'8 des'8~ \tuplet 3/2 {des'8 c'8 aes8} \tuplet 3/2 {b4 g8} bes4 
      | fis''8 g''8 r4 f''4. bes'8~ 
      | bes'8 bes'4. bes'4 bes'4 
      | a''4 bes''4 aes''4. f''8 
      | e''8 des''8 bes'8 aes'8 \tuplet 3/2 {f'4 e'8} es'8 e'8 
      | \tuplet 3/2 {cis'4 d'8} \tuplet 3/2 {bes'4 g'8~} g'8 b8 r4 
      | r4 d'8 b8 d'4 es'8. bes'16~ 
      | bes'8 g'8 a'8 f''8 e''8 des''8 \tuplet 3/2 {es''4 c''8} 
      | bes'8 aes'8~ aes'16 ges'8 d'16 f'4 e'4 
      | es'4 e'8 r8 r4 r8 e'8~ 
      \bar "||" \mark \default e'8 ges'8 aes'8 fis'16 g'16~ g'8 f'8 es'8 b8 
      | d'8 e'8 fis'8 g'8 a'16 bes'8 b'16~ b'8 c''8 
      | \tuplet 3/2 {des''8 c''4} b'8 a'8 aes'8 g'8 ges'8 es'8 
      | f'8 d'8 des'8 b8 bes16 a8. aes8. g16 
      | bes8 es'8 r4 c8 des8 e8 des8 
      | \tuplet 3/2 {es8 g4} bes8 des'8 c'8 aes8 b4 
      | f4 aes8 c'8 es'8 f'8 fis'8 g'8 
      | gis'8 a'4 a'8 aes'8 g'8 ges'8 f'8 
      | e'8 des'8 es'8 c'8 d'8 b8 bes8 aes8 
      | g8 ges8 \tuplet 3/2 {f4 e'8~} e'8 cis'8 d'8 b8 
      | \tuplet 3/2 {c'4 b8~} b16\glissando  bes8 ges16 a4~ a16 bes8 a16~ 
      | a8 r8 r2 r8 b8~ 
      \bar "||" \mark \default b8 e'8 aes'4. bes'4 f'8 
      | d'4 d'4 g'4 b'4 
      | des''4 a'4 e'8. es'16~ es'8 aes'8~ 
      | aes'8 c''4 des''4 es''8 \tuplet 3/2 {e''4 des''8} 
      | es''4 d''4 r4 r8. des''16~ 
      | des''8 bes'8 aes'8 fis'16 g'16~ g'8 f'8 es'8 b8 
      | d'8 bes16 des'16~ des'8 aes'4 fis''4 g''8 
      | r1 
      | r2 \tuplet 3/2 {e''8 es''8 des''8} bes'8 g'8 
      | des''2 bes'4. aes'8 
      | f'8 es'8 r4 f'8\glissando  es'8 \tuplet 3/2 {des'8 bes8 aes8} 
      | f8 e8~ e16 es8 bes,16 cis8 d4 bes8~ 
      \bar "||" \mark \default bes1~ 
      | bes4 r2.\bar  ".."
    }
    >>
>>    
}
