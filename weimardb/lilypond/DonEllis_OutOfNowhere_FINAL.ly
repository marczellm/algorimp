\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Out of Nowhere"
  composer = "Don Ellis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \major
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
      | r1 | s1 | s1 
      | g1:maj | g1:maj | bes1:min7 | es1:7 | g1:maj | s1 | b1:min7 | e1:9- 
      | a1:min7 | e1:9- | a1:min7 | s1 | es1:7 | s1 | d1:7sus4 | d1:9- 
      | g1:maj | s1 | bes1:min7 | es1:7 | g1:maj | s1 | b1:min7 | e1:9- 
      | a1:min7 | e1:9- | a1:min7 | c1:min6 | b2:min7 bes2:dim | a2:min7 d2:7 | g1 | s1 
      | g1:maj|
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


      \tempo 4 = 152
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r2. \tuplet 6/4 {r4 g''16 aes''16} 
      | g''8 f''8 e''16 f''16 e''16 d''16 es''8 fis'16 es'16 aes'16 c''16 f''8 
      | \tuplet 6/4 {es''8. cis''8 d''16~} d''8 des''8 c''16 fis'16 es'16 des'16~ des'8. c'16~ 
      \bar "||" \mark \default c'8.\glissando  des'16~ des'8.\glissando  c'16 d'8. es'16~ es'8\bendAfter #-4  r8 
      | r4 r8. d'16 \tuplet 3/2 {e'4 f'8} g'8 a'8 
      | ais'8. bes'16 c''8. bes'16 des''8. es''16~ es''8\bendAfter #-4  r8 
      | r4 r8. bes'16 e''4 fis''8. d''16~ 
      | d''8. b'16~ b'8. g'16~ \tuplet 6/4 {g'8 e'8. a16~} a16 d'8 e'16~ 
      | \tuplet 6/4 {e'4 f'16 es'16} \tuplet 3/2 {d'4 e'8} g'8 a'8 \tuplet 3/2 {b'4 fis''8~} 
      | fis''8. b'16~ b'8. a'16~ a'8 ais'8 fis''4~ 
      | fis''8 a'8 \tuplet 3/2 {f'8 gis'4~} \tuplet 3/2 {gis'8 e''8 f''8~} f''16 e''8 d''16 
      \bar "||" r4 r8. f'16~ \tuplet 3/2 {f'8 b'8 c''8~} \tuplet 5/4 {c''16 b'8. gis'16~} 
      | gis'8\bendAfter #-4  r8 \tuplet 6/4 {r4 e'16 f'16~} \tuplet 6/4 {f'8 e'8. b16} d'8. gis16~ 
      | gis16 c'16 d'16 e'16 a'4 g'8 gis'8 \tuplet 6/4 {b'8 gis'8. a'16~} 
      | a'8 e''8 b'16 d''8 des''16~ des''16. c''16 cis''32 ais'32 g'32~ g'8 e'8 
      | cis'16 es'8.^\markup{\left-align \small vib} r2. 
      | r8. f'16~ f'16 es'8 f'16~ f'16 g'8 aes'16 bes'16 c''16 d''16 es''16 
      | f''16 fis''8 d''16~ d''16 b'8 a'16 gis'8 dis''8 f''16 e''8 f''16~ 
      | f''16 es''8 b'16 d''8 des''8 c''8 g8~ g8. des'16 
      \bar "||" e'16 cis'8 bes'16 a'8 d''8 cis''8 a'8~ a'16 f'16 d'16 ais16 
      | fis'4.. a'16~ a'8\bendAfter #-4  r8 r8. ais16 
      | c'16 es'16 aes'16 c''16~ c''8 g''8~ \tuplet 3/2 {g''8 d''8 f''8~} \tuplet 6/4 {f''4~ f''16 des''16~} 
      | des''16 es''8 c''16 des''8. bes'16~ bes'16 c''16 aes'16 bes'16 \tuplet 3/2 {fis'8 a'4} 
      | \tuplet 3/2 {g'8 e'8 fis'8~} fis'8 e'8 d'8 r8 r8. e''16~ 
      | e''8. d''16~ d''8. d'16~ \tuplet 6/4 {d'4~ d'16 e'16~} e'8. gis'16~ 
      | gis'8. fis''16~ \tuplet 6/4 {fis''4 g''16 gis''16~} gis''8 f''4 gis'8 
      | e''8 f'8~ f'16 gis'8 ais'16~ \tuplet 5/4 {ais'16 f'8. ais16~} \tuplet 3/2 {ais8 cis'8 e'8} 
      \bar "||" \tuplet 3/2 {bes'8 a'4} \tuplet 3/2 {a8 g8 a8~} a16 c'16 e'16 g'16 \tuplet 3/2 {b'4 d''8} 
      | c''4^\markup{\left-align \small vib} r4 r8. gis'16~ \tuplet 6/4 {gis'16 b'4\glissando  gis'16~} 
      | \tuplet 6/4 {gis'8 c''8 a'16 b'16~} b'16 c''8 d''16 e''4 \tuplet 6/4 {e''8 f''8.\glissando  dis''16~} 
      | dis''4\bendAfter #-4  r4 r8. e''16 f''8 e''8 
      | f''8 gis''8 fis''4.. a''16 f''4 
      | \tuplet 3/2 {d''8 e''4} a''8 r8 \tuplet 6/4 {r4 r16 ais'16} f''8\bendAfter #-4  es''8~ 
      | es''16 d''8 g''16~ g''4 d''4 a'16 cis''8 g'16 
      | c''8. f''16~ f''4 \tuplet 3/2 {f'8 cis''4} \tuplet 6/4 {e'16 b'4 b16} 
      \bar "||" \mark \default bes'8. a'16 r2.\bar  ".."
    }
    >>
>>    
}
