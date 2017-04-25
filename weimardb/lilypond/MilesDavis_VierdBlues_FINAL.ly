\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Vierd Blues"
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
      
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:9- 
      | c1:min | f1:7 | bes2:7 g2:9- | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:9- | c1:min | f1:7 | bes2:7 g2:9- | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | g1:9- 
      | c1:min | f1:7 | bes2:7 g2:9- | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | g1:9- | c1:min | f1:7 | bes2:7 g2:9- | c2:min7 f2:7|
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


      \tempo 4 = 115
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r16 b'16 c''8~ c''4~ \tuplet 6/4 {c''16 c''4 c''16} r4 
      | r2. r16 des''16 es''8~ 
      | \tuplet 6/4 {es''4~ es''16 c''16~} c''4 c''4.. f'16 
      | g'4 g'4 r2 
      | r4 des''4 bes'2 
      | \tuplet 3/2 {d''8 es''4} \tuplet 3/2 {des''4 bes'8~} bes'4 \tuplet 3/2 {bes'4 bes'8~} 
      | bes'8. f'16 aes'4 f'4^\markup{\left-align \small vib} r4 
      | r1 
      | r16 d''16 cis''16 d''16~ d''16 b'16 cis''16 d''16~ \tuplet 6/4 {d''16 b'16 cis''16 d''16 d''8~} \tuplet 6/4 {d''16 d''16 cis''16 d''16 d''8~} 
      | d''16 d''32 cis''32 d''32 d''16.~ \tuplet 6/4 {d''16 b'16 cis''16 d''16 d''8~} \tuplet 6/4 {d''16 d''16 cis''16 d''16 d''8~} \tuplet 6/4 {d''16 d''16 cis''16 d''16 d''8~} 
      | d''16 bes'32~ bes'8 g'32 aes'8 f'8 f'8^\markup{\left-align \small vib} r8 r4 
      | r2 ges'16 bes'8. bes'4 
      \bar "||" \mark \default bes'4^\markup{\left-align \small vib} r2. 
      | r4 \tuplet 3/2 {cis''8 d''4~} \tuplet 6/4 {d''16 bes'4 f'16} \tuplet 3/2 {a'4 aes'8} 
      | r1 
      | r2 \tuplet 3/2 {r8 d''8\glissando  es''8} des''8 bes'8~ 
      | bes'8 f'8~^\markup{\left-align \small vib} f'8. f'16 r2 
      | r2 r16 d'16 es'4.~ 
      | es'8. des'16~ des'16 es'16 f'8~ f'4. bes'8 
      | r2. \tuplet 3/2 {d''4 d''8~} 
      | d''8. c''16 r2. 
      | r4 d''4 d''4.. c''16~ 
      | c''8 bes'8~ bes'16 g'16 aes'8 f'4 r4 
      | r2. fis'16 g'8 fis'16 
      \bar "||" \mark \default \tuplet 7/8 {g'8~ g'32 fis'32 g'32~} g'8 fis'8 g'8. bes'16 r4 
      | r2 \tuplet 3/2 {r8 es'8 g'8~} g'8. fis'16 
      | \tuplet 3/2 {g'4 fis'8} g'8. fis'16 g'8. bes'16 r4 
      | r1 
      | r4 \tuplet 3/2 {b'8\glissando  c''4~^\markup{\left-align \small vib}} c''2~ 
      | c''4~ c''16 des''8 bes'16~ bes'8 f'8 \tuplet 3/2 {f'4 f'8~} 
      | f'4\glissando  a'16 bes'16 r8 r2 
      | r1 
      | r4 des''8 r8 r2 
      | bes'4 g'8\glissando  aes'8 f'4 \tuplet 3/2 {a'4 aes'8~^\markup{\left-align \small vib}} 
      | aes'2 aes'8 r8 r4 
      | r4 r8. f'16~ f'8 bes'8 bes'8. bes'16~ 
      \bar "||" \mark \default bes'2 bes'4 bes'4~ 
      | bes'4 bes'2 \tuplet 3/2 {bes'4 bes'8~} 
      | bes'4 bes'4 r2 
      | r1 
      | r16 es'8 bes'16~ bes'8 bes'8 bes'4 bes'4 
      | bes'4.. bes'16~ bes'8 bes'4 bes'8~ 
      | \tuplet 3/2 {bes'8 bes'8 a'8~} a'4 f'4^\markup{\left-align \small vib} r4 
      | r4 r8. f'16 aes'4 g'4 
      | fis'2^\markup{\left-align \small vib} r2 
      | r4 r16 g'16 aes'8~ aes'4~ aes'16 e'8 es'16~^\markup{\left-align \small vib} 
      | es'1 
      | r2 r16 e'16 f'8 es'8 r8\bar  ".."
    }
    >>
>>    
}
