\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "There Will Never Be Another You"
  composer = "Chet Baker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | s2 r2 | s1 | s1 | s1 | s1 
      | f1:maj | f1:maj | e1:min5-7 | a1:7 | d1:min7 | s1 | c1:min7 | f1:7 
      | bes1:maj | es1:11+.9 | f1:maj | d1:min7 | g1:7 | s1 | g1:min7 | c1:7 
      | f1:maj | s1 | e1:min5-7 | a1:7 | d1:min7 | s1 | c1:min7 | f1:7 
      | bes1:maj | es1:11+.9 | f1:maj | b2:min5-7 e2:7 | f2:maj bes2:7 | a2:min7 d2:7 | g2:min7 c2:7 | f2:maj c2:7 
      | r1|
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


      \tempo 4 = 169
      \set Score.currentBarNumber = #-4
     
      \bar "||" \mark \default r2 c''4 d''8 c''8 
      | e''8 c''8 d''8 c''8 \tuplet 6/4 {es''8. c''8 d''16~} d''8 c''8 
      | bes'8 f'16 d'16~ d'8 e'16 gis'16~ gis'8 a'16 gis'16~ \tuplet 3/2 {gis'8 a'8 aes'8} 
      | g'8 f'8 d'8 c'8 \tuplet 6/4 {f'4~ f'16 gis'16~} gis'8 a'8~ 
      | a'8 gis'8 a'8 c'8~ c'4. d'8 
      \bar "||" \mark \default c'4 d'4 \tuplet 6/4 {f'4~ f'16 g'16~} \tuplet 6/4 {g'4~ g'16 a'16~} 
      | a'8. c''16~ c''8 g'4.^\markup{\left-align \small vib} f'8 g'8~^\markup{\left-align \small vib} 
      | g'4 r2. 
      | r4 \tuplet 3/2 {g'8 a'8 c''8} a'4. g'8 
      | f'8 r8 r4 r8 g'8 a'8 c''8 
      | d''4 f''2 es''8 g''8~^\markup{\left-align \small vib} 
      | g''4 \tuplet 3/2 {f''4 es''8~} es''8. b'16 b'8 d''8~ 
      | d''16 cis''16 d''16 des''16 a'8 c''8~ c''16 b'8 c''16 \tuplet 3/2 {d''4 f'8~^\markup{\left-align \small vib}} 
      \bar "||" f'4 f'8 r8 r4 r8 es''8 
      | \tuplet 3/2 {des''4 f'8} aes'8 c''8 bes'4. c''8~ 
      | c''16 a'16 bes'16 a'16 g'8 f'8 e'8 d'8 des'8. f'16 
      | a'8 bes'8 a'8 g'8 \tuplet 3/2 {f'4 d'8~} d'4 
      | d'4..^\markup{\left-align \small vib} d'16~ d'8 r8 r4 
      | r8 d'8 e'8 f'8 a'4 a'4 
      | \tuplet 3/2 {a'4 aes'8} f'8 g'4.^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" c'16 d'8 e'16 f'4~ f'16 e'8 d'16 c'4 
      | d'4~ d'16 d'8 d'16~^\markup{\left-align \small vib} d'4.. d'16~ 
      | d'4. e'16 f'16 e'8 f'16 e'16 \tuplet 3/2 {d'4 e'8} 
      | cis'8. e'16 \tuplet 3/2 {g'4 a'8} bes'2~ 
      | bes'4 a'8. bes'16~ bes'8 a'8 c'4~^\markup{\left-align \small vib} 
      | c'8 d'4. a'4 aes'8. g'16~ 
      | g'4 r2. 
      | r4 r8 g'8~ g'16 f'8 g'16 f'4 
      \bar "||" \tuplet 3/2 {g'4 f'8} g'4 f'8 g'8 f'4 
      | \tuplet 3/2 {aes'4 f'8} aes'8 f'8~^\markup{\left-align \small vib} f'4.. g'16~ 
      | g'8. f'16~ f'16 g'8 f'16~ f'8 g'8 f'8. e''16~ 
      | e''4 \tuplet 6/4 {d''8 e''8. d''16~^\markup{\left-align \small vib}} d''4~ \tuplet 6/4 {d''4~ d''16 g''16~} 
      | g''8. e''16~ \tuplet 6/4 {e''4~ e''16 d''16~} \tuplet 6/4 {d''8 c''8. d''16~} d''16 e''8 f''16~ 
      | f''16 e''8 f''16 e''16 d''8 des''16 c''4 d'16 f'8 bes'16~ 
      | \tuplet 5/4 {bes'16 g'8. gis'16~} gis'16 a'8 g'16 f'4 d'4 
      | d'8 r8 r2 f'4 
      \bar "||" gis'8 a'8~ a'4. a'4 g'8~ 
      | g'16 f'8 d'16 r4 \tuplet 6/4 {r4 r16 f'16~} f'4 
      | c''2 c''4. a'8~ 
      | a'4 r2.\bar  ".."
    }
    >>
>>    
}
