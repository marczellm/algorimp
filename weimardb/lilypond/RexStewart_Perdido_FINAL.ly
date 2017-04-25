\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Perdido"
  composer = "Rex Stewart"
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
      | r1 
      | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | b1:dim 
      | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 
      | d1:7 | s1 | g1:9 | g1:775+ | c1:7 | s1 | f1:7 | f1:775+ 
      | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 
      | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | b1:dim 
      | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 
      | d1:7 | s1 | g1:9 | s1 | c1:7 | s1 | f1:7 | f1:775+ 
      | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 | c2:min7 f2:7 | c2:min7 f2:7 | bes1 | s1 
      | c1:min7|
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


      \tempo 4 = 178
      \set Score.currentBarNumber = #0
     
      | r2. \tuplet 3/2 {f'8 f'8 f'8~} 
      \bar "||" \mark \default f'8 d''8~ d''16 d''16\glissando  es''4 c''4 r8 
      | r2. \tuplet 3/2 {f'8 f'8 f'8} 
      | b'16\glissando  c''8.~ c''8 cis''16\glissando  d''16~ d''8 bes'4 r8 
      | r2. r8 d''8 
      | es''8. f''16\glissando  g''4 c''4 es''4 
      | \tuplet 3/2 {gis'8 a'4} c''4 f'4 g'4 
      | g'16 aes'8 bes'16~ bes'8 aes'8 f'4 f'4 
      | f'2.^\markup{\left-align \small vib} r4 
      \bar "||" r1 
      | e''8 f''8 bes''8 g''8 f''4 \tuplet 3/2 {cis''8 d''8 f''8} 
      | \tuplet 3/2 {cis''8\glissando  d''8 bes'8} c''4 b'16 c''16 c''8 g'4 
      | g'4^\markup{\left-align \small vib} r4 \tuplet 6/4 {r4 r16 f'16} \tuplet 3/2 {bes'8 c''8 d''8} 
      | fis'4. g'4^\markup{\left-align \small vib} r8 r4 
      | r8. es'16 g'4 gis'16 a'8. \tuplet 3/2 {d''4 f'8} 
      | c''8 bes'8 bes'4 bes'4^\markup{\left-align \small vib} r4 
      | r1 
      \bar "||" cis''16\glissando  d''8. r4 \tuplet 3/2 {gis'8 a'8 b'8~} b'8 e''8 
      | d''4. d''8 r2 
      | r4 d''4 d''4.^\markup{\left-align \small vib} e''8 
      | d''8 b'16 a'16~ a'8 g'4.^\markup{\left-align \small vib} e'8 g'16 bes'16 
      | \tuplet 3/2 {d''4 bes'8} c''8 a'8 bes'8 gis'8 a'16 bes'16 f'8 
      | g'4 \tuplet 3/2 {es'4 e'8~^\markup{\left-align \small vib}} e'4 r4 
      | \tuplet 6/4 {fis'16 g'16 aes'16 f'8 fis'16} g'8 gis'16 a'16 \tuplet 3/2 {f'8 fis'8 g'8} \tuplet 6/4 {aes'8. f'8 fis'16} 
      | g'8 r8 r2 \tuplet 6/4 {r4 f'16 f'16} 
      \bar "||" f'8 f'16 f'16 f'8 f'16 f'16\glissando  a'16 bes'16 c''8 \tuplet 6/4 {d''4 f'16 f'16~} 
      | \tuplet 6/4 {f'16 f'8. f'16 f'16} f'8 d''8 c''8 e'8 ges'4 
      | bes'8 c''8 d''8 f''8 \tuplet 3/2 {g''4 f''8} g''16 aes''16 g''16 f''16 
      | g''8 r8 r4 \tuplet 6/4 {r4 c'''16\bendAfter #+4  cis'''16~} cis'''8 d'''8 
      | f'''4 es''8 g'4 d''8 c''4 
      | \tuplet 3/2 {bes'8 g'8 d'8} r2. 
      | r8. bes''16~^\markup{\left-align \small vib} bes''2.~ 
      | bes''1~ 
      \bar "||" \mark \default bes''2 \tuplet 3/2 {g''4 des''8\glissando } es''8. c''16~^\markup{\left-align \small vib} 
      | c''4 r4 r8 bes''8 \tuplet 3/2 {a''4 c'''8} 
      | bes''4 cis''8 d''8 a''4 cis''8 d''8 
      | g''4..^\markup{\left-align \small vib} f''16~ f''8. f''16~ f''8 f''8~^\markup{\left-align \small vib} 
      | f''4 es''8 d''8 es''8 f''8 r4 
      | r8 cis''8 d''4 f''8 d''8 des''8 c''8~^\markup{\left-align \small vib} 
      | c''4 bes'8\bendAfter #-4  a'8 bes'4^\markup{\left-align \small vib} r4 
      | r8. gis''16~ gis''8 gis''4 gis''4 f''8\glissando  
      \bar "||" aes''8 aes''8 f''8 aes''8 g''4.^\markup{\left-align \small vib} ges''8~ 
      | ges''8 f''4 des''8 es''8 f''8 g''4 
      | bes''8 r8 r2. 
      | r4 r8 ges''8 gis''16\glissando  a''8 d''16 bes''4 
      | c'''16 bes''8.~^\markup{\left-align \small vib} bes''8 d'''4 r8 r4 
      | r4 r8 d''8 aes''8.\glissando  bes''16~^\markup{\left-align \small vib} bes''4~ 
      | bes''2. r4 
      | r1 
      \bar "||" d''2~^\markup{\left-align \small vib} d''8 d'''4 des'''8 
      | c'''4 b''4 bes''4 a''4 
      | \tuplet 3/2 {d''4 a''8} \tuplet 3/2 {a''4 b'8} a''2^\markup{\left-align \small vib} 
      | r1 
      | c''2 \tuplet 3/2 {g''8 c'''4~^\markup{\left-align \small vib}} \tuplet 6/4 {c'''8. b''8 bes''16~} 
      | bes''4 a''4 aes''4 g''4 
      | c''8 e''16 g''16 g''4 g''4^\markup{\left-align \small vib} r4 
      | r4 r8 aes'16 c''16\glissando  es''16 f''16 g''16\glissando  aes''16 \tuplet 3/2 {bes''4 d'''8~} 
      \bar "||" d'''8 d'''8\bendAfter #-4  r2 r8. cis''16 
      | \tuplet 3/2 {d''8 ges''8 a''8} b''8 d'''4 d'''4.^\markup{\left-align \small vib} 
      | bes''8^\markup{\left-align \small vib} r8 r2. 
      | f'''16 ges'''8.~ ges'''2\bendAfter #+4  des'''8. b''16~ 
      | b''8 a''16\glissando  b''16~^\markup{\left-align \small vib} b''4 r4 r8 ges''8 
      | \tuplet 3/2 {c'''8 b''8 bes''8} bes''4 bes''4 bes''8 bes''8~^\markup{\left-align \small vib} 
      | bes''2 bes''4 bes''4~^\markup{\left-align \small vib} 
      | bes''8 bes''8 r4 \tuplet 3/2 {bes''8 b''8 des'''8} b''4 
      \bar "||" \mark \default b''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
