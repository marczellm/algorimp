\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Society Red"
  composer = "Freddie Hubbard"
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
      
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:9- 
      | g1:min7 | c1:7 | a2:min7 d2:min7 | g2:min5-7 c2:7 | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:9- | g1:min7 | c1:7 | a2:min7 d2:min7 | g2:min5-7 c2:7 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:9- 
      | g1:min7 | c1:7 | a2:min7 d2:min7 | g2:min5-7 c4:9+ c4:9- | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:9- | g1:min7 | c1:7 | a2:min7 d2:min7 | g2:min5-7 c4:9+ c4:9- 
      | f1:7 | bes1:7 | f1:7 | s1 | bes1:7 | s1 | f1:7 | d1:9- 
      | g1:min7 | c1:7 | a2:min7 d2:min7 | g2:min5-7 c4:9+ c4:9- | f1:7 | bes1:7 | f1:7 | s1 
      | bes1:7 | s1 | f1:7 | d1:9- | g1:min7 | c1:7 | a2:min7 d2:min7 | g2:min5-7 c2:9+|
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


      \tempo 4 = 114
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8. f''16 
      | r2 \tuplet 3/2 {aes'4 f'8} aes'4 
      | f'4 f'4 \tuplet 3/2 {aes'8 f'8 aes'8} f'8. f'16~^\markup{\left-align \small vib} 
      | f'8 r8 r2. 
      | r8 aes''8~ aes''16 g''8 f''16~^\markup{\left-align \small vib} f''8. es''16~ es''16 d''8 c''16~ 
      | c''8. aes'16~ aes'16 g'8 f'16~^\markup{\left-align \small vib} f'4 r4 
      | f''8 r8 r8. f'16 aes'8. f'16 \tuplet 3/2 {aes'4 f'8} 
      | r1 
      | r8 d''16 f''16 \tuplet 3/2 {g''8 f''8 g''8} \tuplet 3/2 {f''8 g''8 f''8} aes''8 f''8~ 
      | f''8 d''16 f''16 \tuplet 3/2 {f''8 f''8 g''8~} g''16 f''16 g''16 f''16 \tuplet 3/2 {aes''8 f''8 g''8~} 
      | g''16 f''8 d''16 c''8 r8 r2 
      | r2 r8 es''4.~^\markup{\left-align \small vib} 
      \bar "||" \mark \default es''8. bes'32\glissando  b'32~ \tuplet 6/4 {b'16 bes'4 aes'16} bes'4^\markup{\left-align \small vib} aes'4 
      | b'4~ b'16 bes'16 aes'16 f'16 bes'4 \tuplet 3/2 {aes'4 es''8~} 
      | es''4~ es''16 b'16 bes'16 aes'16 \tuplet 3/2 {bes'4 aes'8} f'8. es'16 
      | f'4^\markup{\left-align \small vib} aes'8 r8 r2 
      | r8 aes''4 f''8~ f''8. b'16 \tuplet 3/2 {bes'8 aes'8 f'8} 
      | \tuplet 3/2 {bes'8 f'8 b'8} \tuplet 3/2 {f'8 aes'8 f'8} \tuplet 3/2 {b'8 f'8 bes'8} aes'8 f'8~ 
      | f'8. es''16~ es''8 r8 r8 b'8 bes'8 aes'8~ 
      | aes'4 \tuplet 3/2 {aes'8 f'8 aes'8} \tuplet 3/2 {f'8 b'8 f'8} \tuplet 3/2 {bes'8 f'8 aes'8~} 
      | aes'16 f'32~ f'8 f'32~ f'8 r8 r2 
      | r8. d'32 es'32~ es'4.. c'16 es'8 g'8~ 
      | g'8 f'4^\markup{\left-align \small vib} f''8 r2 
      | r1 
      \bar "||" \mark \default r8 b''16 b''16~ b''8 g''8~ g''32 aes''16 aes''16 f''16 aes''32~ aes''8 bes''8~ 
      | \tuplet 3/2 {bes''8 a''8\glissando  b''8} b''8 f''8 aes''16 aes''16 f''16 aes''16~ aes''8 bes''8~ 
      | bes''16 es''16 b''8 b''8 f''8 aes''16 aes''16 f''16 aes''16~ aes''8 bes''8~ 
      | bes''16 b'16 b''8 b''8 f''8 aes''16 aes''16 f''16 aes''16~ aes''8 bes''8~ 
      | bes''8 b''8 \tuplet 3/2 {bes''8 aes''8 f''8} aes''16 aes''16 f''16 aes''16 bes''4 
      | r16 d''16 b''8 bes''16 aes''16 g''16 f''16 aes''16 aes''16 f''16 aes''16 bes''4 
      | \tuplet 3/2 {r8 es''8 b''8} bes''16 aes''16 g''8 aes''16 aes''16 f''16 es''16~ \tuplet 6/4 {es''16 f''16\bendAfter #-4  es''16 b'16 bes'8~^\markup{\left-align \small vib}} 
      | \tuplet 6/4 {bes'8. aes'16 f'16 es'16} \tuplet 6/4 {c'16 bes16 aes16 ges16 aes8~^\markup{\left-align \small vib}} aes4 aes16 ges16 aes16 bes16 
      | \tuplet 5/4 {c'16 es'16 f'16 aes'16 bes'16~^\markup{\left-align \small vib}} bes'4 r2 
      | r4 r16 f''16 c''16 bes'16 b'16 bes'16 aes'16 f'16~ \tuplet 6/4 {f'16 bes'16 aes'8 f'16 es'16} 
      | f'4~^\markup{\left-align \small vib} f'16 aes'16\bendAfter #+4  g'16 gis'16 r2 
      | r2 r8. aes''16~ aes''16 g''8 f''16~^\markup{\left-align \small vib} 
      \bar "||" \mark \default f''8. es''16~ \tuplet 6/4 {es''8 d''8. c''16~} c''8. aes'16~ \tuplet 6/4 {aes'8 g'8. f'16~} 
      | f'8. es'16~ es'16 d'8 c'16~ c'8. c''16~ c''16 d''8 c''16~ 
      | c''8. g'16\bendAfter #+4  aes'16 g'8 f'16~ f'8. c'16~ \tuplet 5/4 {c'16 d'16 e'16 es'16 c'16} 
      | d'16\glissando  es'8. \tuplet 3/2 {d'4 des'8~} des'8 es''8~ es''16 d''8 c''16~ 
      | c''8. aes'16~ aes'16 g'8 f'16~ f'8 aes''8~ aes''16 g''8 f''16~ 
      | \tuplet 6/4 {f''4 d''16 es''16} d''8 c''8~ \tuplet 6/4 {c''4 g'16\bendAfter #+4  aes'16~} aes'16 g'8 f'16~^\markup{\left-align \small vib} 
      | f'1~ 
      | f'2~ \tuplet 6/4 {f'16 aes'4 f'16} aes'4 
      | f'8. f'16 r2. 
      | r8. es''16~ es''16 c''8 des''16~ des''16 c''8 aes'16~ aes'16 e'8 es'16~ 
      | es'4. cis'16 dis'16~ dis'16 c'8 f'16~^\markup{\left-align \small vib} f'8 r8 
      | r1 
      \bar "||" \mark \default r4 \tuplet 3/2 {c''8 es''8 g''8~} \tuplet 3/2 {g''8 c''8 es''8} g''4 
      | \tuplet 3/2 {b'8 d''8 g''8~} \tuplet 3/2 {g''8 c''8 es''8} g''4 \tuplet 3/2 {c''8 es''8 g''8~} 
      | g''8 c''16 es''16 g''4 \tuplet 3/2 {c''8 es''8 g''8} aes''16 g''8.~^\markup{\left-align \small vib} 
      | g''8 r8 r8 d''16 es''16 d''16 c''8 g''16~ g''8. aes''16 
      | g''2~^\markup{\left-align \small vib} g''8 f''8 \tuplet 3/2 {es''8 d''8 c''8~^\markup{\left-align \small vib}} 
      | c''8. bes'16~ \tuplet 6/4 {bes'8 aes'16 g'8 f'16~^\markup{\left-align \small vib}} f'4~ f'16 f'16 f'16 es'16 
      | f'4. f'16 es'16 f'4^\markup{\left-align \small vib} r4 
      | r1 
      | r16 f''16 a''16 g''16 \tuplet 5/4 {f''16 e''16 d''16 cis''16 d''16~} d''32 e''16 f''16 d''16 bes'32 a'8 g'8 
      | \tuplet 3/2 {es''8 c''8 des''8} c''8 a'16 bes'16 a'8 g'16 ges'16 e'16 es'16 des'16 c'16 
      | \tuplet 3/2 {bes8 g'8 e'8~} \tuplet 5/4 {e'16 f'16 g'16 a'16 c''16} a'16 bes'16 d''16 f''16 a''16 g''16 ges''16 e''16~ 
      | e''16 es''16 des''16 c''16 \tuplet 5/4 {b'16 bes'16 a'16 g'16 f'16} e'16 g'16 bes'16 bes'16 es''16 d''16 des''16 b'16 
      \bar "||" \mark \default \tuplet 6/4 {c''8 g''16 es''16 d''16 c''16} f''8 es''8 r2 
      | \tuplet 3/2 {r8 d''8 c''8} bes'16 a'16 aes'16 g'16 f'16 e'16 d'16 des'16 \tuplet 6/4 {c'8 bes8 g16 gis16} 
      | a8 f'4^\markup{\left-align \small vib} r8 r2 
      | r2 ges''16 aes''16 f''8~ \tuplet 6/4 {f''8. es''8 f''16~} 
      | f''8 d''8~^\markup{\left-align \small vib} d''8. c''16~ c''16 bes'8 a'16~ \tuplet 5/4 {a'16 aes'16 bes'16 aes'16 g'16} 
      | f'4 \tuplet 6/4 {d'16 es'8 f'16 es'16 c'16~} c'16 d'8 b'16 \tuplet 6/4 {c''4 bes'16 aes'16~} 
      | aes'8 f'4 f'8 f'4 f'4 
      | f'4 f'4 f'4 f'4~ 
      | f'16 bes'16 a'16 f'16~ f'16 c'8 bes16~ bes8 r8 r4 
      | r1 
      | r8 dis''8~ dis''8. es''16 d''8 d''8 des''8 des''8 
      | \tuplet 3/2 {c''4 c''8~} c''16 b'8 b'16 \tuplet 3/2 {bes'4 bes'8} aes'8 r8\bar  ".."
    }
    >>
>>    
}
