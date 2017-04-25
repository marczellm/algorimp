\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Nothing Personal"
  composer = "Pat Metheny"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \minor
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
      | r1 | s1 
      | g1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min | s1 | s1 | s1 
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


      \tempo 4 = 242
      \set Score.currentBarNumber = #-1
     
      | r2 g8 a8 bes8 c'8 
      | d'8 d'8 c'8 aes8 bes4 c'4 
      \bar "||" \mark \default gis8\glissando  a4. a4. g8 
      | \tuplet 3/2 {a4 g8~} g16 e8 d16~ d4 f8 r8 
      | r2 g8 g8 f4 
      | g4 e4 c4 a,4\bendAfter #-4  
      | r4 r8 a,4 c8 e4 
      | e4 f4 d4 bes,8 r8 
      | r4 \tuplet 3/2 {r8 a,8 bes,8~} \tuplet 3/2 {bes,8 d8 f8~} f8 aes8 
      | g8 r8 r4 b,4 \tuplet 3/2 {d4\glissando  des8} 
      | r4 r8 c4 es4.\bendAfter #-4  
      | f4 f4 g4 bes4\bendAfter #-4  
      | r2 g8 bes8 c'8 cis'8 
      | d'8 des'8 \tuplet 3/2 {c'4 aes8} bes4 g4~ 
      | g8\bendAfter #-4  d4\bendAfter #-4  f4 g4 d16 f16~ 
      | f8. g16~ g4 d8 f4 g8~ 
      | g8 d8\glissando  des4 f8. g16~ g4 
      | d4 f8. g16~ g8 des4 f8~ 
      | f8 g8\glissando  ges8 des8 f4 g4 
      | des4 f4 c'8 bes8 c'4 
      | r4 r8. c'16~ c'4. bes8 
      | \tuplet 3/2 {cis'4 bes8} g8 f8 d8 des8 c4 
      | bes,8 c4 d8\glissando  des8 f8\glissando  e8 g8\glissando  
      | ges8 bes4 c'8\glissando  b8 d'4 f'8\glissando  
      | e'8 g'4 bes'4 c''4 cis''8\glissando  
      | d''8 f''8~ f''8. fis''16~ \tuplet 6/4 {fis''16\glissando  g''4 f''16~} f''4 
      \bar "||" \mark \default r4 d''8 c''8 bes'4 r4 
      | \tuplet 3/2 {bes'4 c''8} d''4 a'8\glissando  gis'8 r4 
      | a'4 a'8 bes'8~ \tuplet 3/2 {bes'8 a'8 g'8} f'8 d'8 
      | c'4 d'4 bes8\glissando  a8 r4 
      | r16 a8 bes16~ \tuplet 3/2 {bes8 c'8 d'8} es'8 e'8 f'8 e'8 
      | es'8 b8 d'8 c'4 bes8 b8 d'8~ 
      | \tuplet 3/2 {d'8 b8 es'8~} es'8 d'8 \tuplet 3/2 {bes8 des'8 b8~} b8 aes8 
      | fis16 g8. \tuplet 3/2 {es8 ges4} d16 f8 des16 e8 es8~ 
      | es8 g4 bes4 c'4 d'8~ 
      | d'16 cis'8 d'16 c'8 bes8 c'8 c'8 bes4 
      | \tuplet 3/2 {cis'8\glissando  d'4} g8 bes4 c'4 g8 
      | ges8 r8 r8. d16~ d8 f8 g8 bes8 
      | c'8 cis'8 d'8 des'8 c'8 aes8 \tuplet 3/2 {b4 g8} 
      | bes8 g8 f8 d8 des4 f8 des8 
      | g4 bes4 cis'8\glissando  d'8 f'4 
      | g'4 bes'4 \tuplet 3/2 {c''8\glissando  d''4} bes'4 
      | a'8 r8 r8 g'8 f'8 es'8 des'8 bes8 
      | aes8 e8 g8 a8 bes8 c'8 des'8 f'8 
      | e'8 cis'8 es'8 c'8 a8 g8 fis8 es'8~ 
      | es'8 cis'8 d'8 des'8 c'8 gis8 b8 g8 
      | bes8 c'8 d'8. c'16~ c'8 d'8 f'8 d'8~ 
      | d'8 f'8 g'8 des'4 g'8 \tuplet 3/2 {bes'4 g'8~} 
      | g'8 bes'8 c''8. bes'16~ bes'8 c''8~ \tuplet 3/2 {c''8 cis''8 d''8~} 
      | d''8 f''4 f''8 fis''16\glissando  g''8. f''4~ 
      \bar "||" \mark \default f''4\bendAfter #-4  d''4 d''4 d''8 d''8~ 
      | d''8. d''16~ d''8 d''8~ d''16 c''16\glissando  des''16 es''16 d''4 
      | r4 \tuplet 3/2 {d''4 d''8~} d''8. d''16~ d''8 d''8~ 
      | d''8 d''4 d''8 c''8\glissando  d''4 d''8 
      | c''8\glissando  d''4 d''4 d''8 c''8\glissando  d''8~ 
      | d''8 c''8\glissando  d''8. d''16~ d''8 c''8\glissando  d''4~ 
      | d''8 d''4 d''4 d''8~ d''16 fis''16\glissando  g''8~ 
      | g''8 aes''4 g''4 f''4 f''8~ 
      | f''4 es''4 es''8. d''16~ d''8 c''8 
      | b'4 r4 bes'8 g'8 a'8 c''8 
      | a'8 aes'8 g'8 aes'8 ges'8 f'8 d'8 c'8 
      | a8 f8 aes8 bes16 b16~ b16 des'8 es'16~ es'8 ges'8 
      | bes'8 b'8 c''8 b'8 bes'8 a'8 aes'8 g'8 
      | ges'8 es'8 f'8 e'8 des'8 b8 aes8 e8 
      | g8 a8 \tuplet 3/2 {bes8 c'8 des'8~} des'16 f'8 gis'16~ gis'8 a'8 
      | bes'8 a'8~ a'16 aes'16 g'8 ges'8 f'8 e'8 des'8 
      | \tuplet 3/2 {es'4 a8} c'8 es'8 e'8 bes8 des'8 e'8~ 
      | e'16 f'8 b16~ b16 d'8 f'16 ges'8 c'8 es'8 ges'8 
      | \tuplet 3/2 {a'4 g'8~} g'16 a'8 a'16~ a'8 g'8 e'16 fis'8 es'16~ 
      | es'16 d'8 bes16~ bes16 a8 g16 fis8 es8 d8 c8 
      | bes,4 c8 d4 f4 r8 
      | r8 bes4 c'4 d'4 f'8~ 
      | f'8 g'8 a'8 bes'4 c'4 c'8\glissando  
      | b8 r8 r4 c'16 des'16 c'8 f4 
      \bar "||" \mark \default g4. bes4. r4\bar  ".."
    }
    >>
>>    
}
