\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Oleo (Solo 2)"
  composer = "Miles Davis"
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
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj 
      | s2 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | c2:min7 f2:7 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:maj es2:min6 | bes2:maj g2:7 | bes1:maj|
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


      \tempo 4 = 268
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2. r8 d''8 
      | c''4 d''4 c''2~ 
      | c''8 r8 r2. 
      | r8 f'4 g'8 bes'4 c''4 
      | bes'2 bes'4~ \tuplet 3/2 {bes'8 c''8 bes'8~} 
      | bes'8 bes'8~ bes'4. r8 r4 
      | r1 
      \bar "||" r8 cis''8 \tuplet 3/2 {d''4 cis''8} d''4. cis''8 
      | d''4. cis''8 d''4 \tuplet 3/2 {c''4 bes'8~} 
      | bes'8 f'8~ f'16 d'8 es'16 f'2^\markup{\left-align \small vib} 
      | r4 r8 d'8 es'8. g'16 bes'8 cis''8 
      | d''8 cis''8 d''4 bes'4 bes'4~ 
      | bes'8 r8 r4 \tuplet 3/2 {aes'4 ges'8} aes'8 f'8~ 
      | f'8 es'4 e8 d'8 r8 r4 
      | r2 des'16 es'16 e'16 f'16 g'8 gis'8 
      \bar "||" \tuplet 3/2 {a'8 bes'8 b'8} c''8 cis''8 d''4 e''4 
      | d''4~ \tuplet 3/2 {d''8 e''8 d''8~} \tuplet 3/2 {d''8 c''8 b'8~} b'8 a'8 
      | g'4 g'4 g'4 r4 
      | r1 
      | r8 e'8 bes'8 c''8 d''8 d''8 c''4 
      | d''8 d''8 c''4 \tuplet 3/2 {d''4 d''8} c''8 r8 
      | r8 d''8 c''4~ c''16 d''8 d''16 c''8 r8 
      | r8 d''8 \tuplet 3/2 {d''8 c''4~} \tuplet 3/2 {c''8 d''8 d''8} c''4~ 
      \bar "||" c''16 d''8 d''16 c''4 d''8 d''8 c''4 
      | d''8 d''8 c''8 r8 \tuplet 3/2 {r8 d''8 d''8~} d''8 c''8~ 
      | \tuplet 3/2 {c''8 cis''8 d''8~} d''8 c''8~ \tuplet 3/2 {c''8 d''8 d''8} c''4 
      | d''4 c''4 d''8 d''8 c''4 
      | d''8 d''8 c''4 d''4 c''8 f'8~^\markup{\left-align \small vib} 
      | f'2 r2 
      | r1 
      | r1 
      \bar "||" \mark \default r8 f'8 a'4 bes'8 c''8 d''8 bes'8 
      | c''4. bes'8 r2 
      | r1 
      | r1 
      | r8 d'8 a'4 bes'8 c''8 d''8 bes'16 c''16~ 
      | c''4 r2. 
      | r4 a'8 f'4 f'4.~ 
      | f'8 r8 r2. 
      \bar "||" r1 
      | r2 \tuplet 3/2 {bes''4^\markup{\left-align \small vib} d''8~} d''4~ 
      | d''2 \tuplet 3/2 {e''8 f''4~} f''8 cis''8 
      | d''4. a'8 bes'8 e'8 f'8 cis'8 
      | d'4. r8 r4 r8. a'16 
      | bes'4. cis''8 d''8 e''8 \tuplet 3/2 {f''4 cis''8} 
      | d''8 a'8 \tuplet 3/2 {bes'4 e'8} f'8 cis'8 d'8 e'8 
      | f'8 g'8 gis'8 a'8 bes'8 b'8 c''8 cis''8 
      \bar "||" d''4 e''4 d''4. c''8 
      | b'8 a'8 gis'8 b'8 a'8 g'8 fis'8 e'8 
      | f'4 f'4 f'8 r8 r4 
      | r1 
      | r4 r8. e'16~ e'2~ 
      | e'4. f'8~ f'2 
      | fis'2 g'4 r4 
      | r1 
      \bar "||" f'4 \tuplet 3/2 {d''4 c''8} bes'4 f''4 
      | d''4 bes''4. d''8 f''4 
      | \tuplet 3/2 {g''4 f''8} es''8 f''8 bes''4 g''4~ 
      | g''16 f''8 es''16 d''8 r8 r8 bes''4 g''8~ 
      | g''16 f''8 es''16 d''4 bes''4 g''4 
      | f''4 d''4. des''16\glissando  es''16~ es''4~ 
      | es''4 d''2 c''4~ 
      | c''4 bes'4 a'8 r8 r4\bar  ".."
    }
    >>
>>    
}
