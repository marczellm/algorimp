\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Nature Boy"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key e \minor
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
       r4  s4 
       s4  s4  s4  s4  s4  s4  s4  s4 
       e4:min7|
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


      \tempo 4 = 186
      \set Score.currentBarNumber = #-9
     
      \bar "||" \mark \default dis'4~ 
       dis'4~ 
       dis'4~ 
       dis'4~ 
      \bar "!" \tuplet 6/4 {dis'8 e'8\glissando  f'16 fis'16~} 
       fis'4~ 
       fis'4~ 
       fis'4~ 
      \bar "!" fis'4~ 
       fis'8 e'8~^\markup{\left-align \small vib} 
      \bar "||" \mark \default e'4~ 
       e'4~ 
      \bar "!" e'4~ 
       e'4~ 
       e'4~ 
       e'4~ 
      \bar "!" e'4~ 
       e'4~ 
       e'4~ 
       e'4 
      \bar "!" r4 
       r4 
       r4 
       b'8 a'8~ 
      \bar "!" a'16 ais'16\bendAfter #+4  b'8~ 
       b'4~ 
       b'4~ 
       b'4~ 
      \bar "!" b'4~ 
       b'16 a'8 g'16~ 
       g'16 ais'16\bendAfter #+4  b'8~ 
       b'4~ 
      \bar "!" b'4~ 
       b'4~ 
       b'4~ 
       b'4~ 
      \bar "!" b'4 
       r4 
       r4 
       r16 a'8 g'16~ 
      \bar "!" g'8 a'16\bendAfter #+4  b'16~ 
       b'4~ 
       b'4~ 
       b'4~ 
      \bar "!" b'4~ 
       b'4~ 
       b'4~ 
       b'4~ 
      \bar "!" \tuplet 6/4 {b'4~ b'16 a'16~} 
       a'8 g'8~ 
       g'16 e'8 g'16~ 
       g'8 e'8~ 
      \bar "!" e'4~ 
       e'4~ 
       e'4~ 
       e'4~ 
      \bar "!" e'4~ 
       e'8 r8 
       r4 
       d'4~ 
      \bar "!" d'8 b8~ 
       b4~ 
       b4~ 
       b4~ 
      \bar "!" b4~ 
       b8 r8 
       r4 
       r16 a8 g16~ 
      \bar "!" g8 a8~ 
       a8 g8~ 
       \tuplet 3/2 {g8 e8 g8} 
       e4~ 
      \bar "!" e4 
       g4~ 
       g4~ 
       g8 r8 
      \bar "!" r4 
       g8 e8 
       g4~ 
       g4~ 
      \bar "!" g4~ 
       g16 e8 a16~ 
       \tuplet 3/2 {a8 b8 a8~} 
       a4~ 
      \bar "!" a4~ 
       a8 r8 
       r4 
       b8 d'8 
      \bar "!" g'8 e'8 
       \tuplet 3/2 {a'4 g'8~} 
       \tuplet 3/2 {g'8 e'8 g'8~} 
       g'8 e'8~ 
      \bar "!" e'8 e'8~ 
       e'8 e'8~ 
       e'4~ 
       e'4~ 
      \bar "!" e'4~ 
       e'8 r8 
       r4 
       \tuplet 6/4 {r8. g'8\bendAfter #+4  gis'16} 
      \bar "!" a'4~ 
       a'4~ 
       a'4~ 
       a'4~ 
      \bar "!" a'4~ 
       a'8 r8 
       r4 
       a'8 g'8 
      \bar "!" e'8 g'8 
       \tuplet 3/2 {e'8 g'4} 
       gis'16 a'8. 
       a'4 
      \bar "!" a'4 
       g'8 gis'16 a'16~ 
       a'4~ 
       a'4~ 
      \bar "!" a'4~ 
       a'8 r8 
       r4 
       r8 a'8 
      \bar "!" \tuplet 3/2 {g'8 e'8 g'8~} 
       \tuplet 3/2 {g'8 e'8 g'8~} 
       g'16 gis'16\bendAfter #+4  a'8~ 
       a'4~ 
      \bar "!" a'4~ 
       a'4~ 
       a'4 
       r4 
      \bar "!" r4 
       r8 a'8 
       \tuplet 3/2 {g'8 e'8 g'8} 
       e'8 g'8~ 
      \bar "!" g'16 gis'16 a'16 g'16~ 
       \tuplet 5/4 {g'8 gis'16 a'16 b'16} 
       a'4~ 
       a'4~ 
      \bar "!" a'4~ 
       a'4~ 
       a'8 r8 
       r4 
      \bar "!" r4 
       a'8 g'8 
       a'16\bendAfter #+4  b'8.~ 
       b'4~ 
      \bar "!" b'4~ 
       b'4~ 
       b'4 
       r4 
      \bar "!" r8 a'16 g'16~ 
       \tuplet 3/2 {g'8 a'8 b'8~} 
       \tuplet 6/4 {b'8. b'16 c''16 d''16~} 
       d''4~ 
      \bar "!" d''4~ 
       d''8 b'8~ 
       b'4~ 
       b'4~ 
      \bar "!" b'4 
       r4 
       r4 
       \tuplet 3/2 {a'8 b'8 e'8} 
      \bar "!" g'8 a'8 
       b'8 d''8~ 
       d''16 d''8 b'16~ 
       b'8 r8 
      \bar "!" r8 a'16 b'16 
       e'8 g'8 
       a'8 b'8 
       d''8. d''16~ 
      \bar "!" d''8 a'8 
       r4 
       \tuplet 3/2 {a'8 b'8 e'8} 
       g'8 a'8 
      \bar "!" b'8 d''8 
       d''8 b'8 
       r4 
       \tuplet 3/2 {a'8 b'8 e'8} 
      \bar "!" \tuplet 3/2 {g'8 g'8 a'8~} 
       \tuplet 3/2 {a'8 b'8 d''8} 
       g''4 
       d''8. b'16~ 
      \bar "!" b'8 a'16 b'16~ 
       b'4~ 
       b'16 a'16 b'16 e'16~ 
       \tuplet 3/2 {e'8 g'8 a'8} 
      \bar "!" b'8 d''8 
       g''8. d''16~ 
       \tuplet 3/2 {d''8 b'8 a'8} 
       b'4~ 
      \bar "!" b'8 a'16 b'16~ 
       \tuplet 6/4 {b'8. g'8 a'16~} 
       a'16 b'16 d''8~ 
       d''8. b'16~ 
      \bar "!" \tuplet 6/4 {b'4 fis''16 g''16~} 
       g''4 
       d''8 b'8~ 
       b'4~ 
      \bar "!" b'8 r8 
       r8 b'8 
       a'8 e'16 g'16~ 
       g'8 a'8 
      \bar "!" dis'8 g'8 
       \tuplet 6/4 {cis'4~ cis'16 fis'16~} 
       \tuplet 3/2 {fis'8 dis'8 b8} 
       a8 b16 dis16 
      \bar "!" cis8 a8 
       f8 dis8~ 
       dis8 r8 
       r4 
      \bar "!" \tuplet 3/2 {a8 g8 a8} 
       \tuplet 3/2 {b8 cis'8 b8} 
       cis'16 dis'16 fis'16 dis'16~ 
       dis'4 
      \bar "!" g'16 a'16 b'16 cis''16 
       a'8 r8 
       r4 
       r16 g'16\bendAfter #+4  gis'16 a'16~ 
      \bar "!" a'4~ 
       \tuplet 5/4 {a'8 g'16 dis'16 g'16} 
       \tuplet 3/2 {dis'8 cis'8 g8} 
       \tuplet 6/4 {dis'16 b8 g8 dis16~} 
      \bar "!" dis16 a16 f16 cis16 
       \tuplet 3/2 {dis8 fis8 dis8~} 
       dis4 
       dis8 g8 
      \bar "!" a8 r8 
       r8 a8 
       dis'8 b8~ 
       b4~ 
      \bar "!" \tuplet 3/2 {b8 b8 dis'8} 
       g'4~ 
       \tuplet 3/2 {g'8 f'8 cis'8} 
       \tuplet 3/2 {f'8 dis'8 b8~} 
      \bar "!" b4 
       a8 f16 dis16~ 
       dis16 g16 cis16 dis16 
       f8 dis8 
      \bar "!" g8 r8 
       r8 g8 
       f8 a8~ 
       a4 
      \bar "!" \tuplet 3/2 {g8 dis8 g8} 
       f8 r8 
       r4 
       \tuplet 3/2 {a8 d'8 f'8} 
      \bar "!" \tuplet 3/2 {a8 dis'8 b8} 
       \tuplet 3/2 {dis'8 g'8 a'8} 
       ais'16 ais'16 g'16 a'16 
       \tuplet 3/2 {b'8 d''8 a'8~} 
      \bar "!" a'8 r8 
       r8 a'8 
       g'8 dis'8\glissando  
       fis'16 g'8.~ 
      \bar "!" g'4~ 
       g'8 e'8 
       b8 r8 
       r8 b8 
      \bar "!" \tuplet 3/2 {a8 fis8 b8} 
       f8. e16 
       g8 r8 
       r8 g8~ 
      \bar "!" g16 c'16 e'16 g'16~ 
       g'8 g'16 dis'16~ 
       dis'8 cis'16 fis'16 
       \tuplet 3/2 {dis'8 ais16 r8.} 
      \bar "!" \tuplet 6/4 {r4 r16 ais16~} 
       ais16 c'16 dis'16 g'16 
       \tuplet 3/2 {dis'8 gis'8 c''8} 
       a'8 r8 
      \bar "!" r8 b'8 
       \tuplet 6/4 {a'8 fis'16 a'16 fis'16\glissando  dis'16~} 
       dis'16 cis'16 fis'16 dis'16 
       \tuplet 3/2 {b8 a8 fis8} 
      \bar "!" b16 a8.~ 
       a8 r8 
       r4 
       a8 g8 
      \bar "!" \tuplet 3/2 {e8 a8 g8} 
       \tuplet 3/2 {dis8 cis8 dis8~} 
       dis4 
       \tuplet 3/2 {gis8 ais8 f8} 
      \bar "!" \tuplet 3/2 {es8 d8 f8} 
       \tuplet 3/2 {d8 f8 ais8} 
       \tuplet 6/4 {cis'16 fis16 ais8 c'16 d'16~} 
       d'16 g'16 dis'16 cis'16 
      \bar "!" b16 gis16 fis16 gis16 
       \tuplet 3/2 {b8 dis'8 ais8} 
       r4 
       r16 ais16 cis'16 fis'16~ 
      \bar "!" fis'16 e'16 cis'16 e'16 
       \tuplet 3/2 {g'8 e'8 g'8} 
       \tuplet 3/2 {b'8 cis''4~} 
       \tuplet 6/4 {cis''4~ cis''16 b'16~} 
      \bar "!" b'16 cis''8 a'16 
       fis'8 d'8~ 
       d'8 a'8 
       \tuplet 3/2 {b'8 cis''4} 
      \bar "!" \tuplet 6/4 {b'8 a'8 f'16 d'16~} 
       \tuplet 6/4 {d'16 f'8 a'16 b'16 cis''16~} 
       cis''8 b'16 a'16 
       f'16 d'8.~ 
      \bar "!" d'8 a'16 b'16~ 
       b'16 gis'16 ais'16 c''16 
       a'16 c''16 a'16 b'16~ 
       b'16 cis''16 b'16 a'16 
      \bar "!" fis'16 d'8.~ 
       d'8 a'8 
       \tuplet 3/2 {b'8 gis'8 f'8} 
       a'16 b'16 cis''8~ 
      \bar "!" cis''8 b'8 
       \tuplet 3/2 {cis''4 a'8} 
       f'16 es'16 d'8~ 
       d'8 a'8 
      \bar "!" \tuplet 3/2 {ais'8 gis'8 f'8} 
       a'16 b'16 cis''8 
       a'4 
       c''16 cis''16 b'16 a'16 
      \bar "!" g'16 f'16 d'8~ 
       d'4 
       \tuplet 6/4 {a'16 b'8 g'8 f'16~} 
       f'4~ 
      \bar "!" \tuplet 3/2 {f'8 a'8 b'8} 
       \tuplet 3/2 {cis''4 b'8} 
       \tuplet 3/2 {a'8 e'8 a'8} 
       dis'8. g'16~ 
      \bar "!" g'16 f'16 d'16 ais16 
       f'8. dis'16 
       b8 gis8 
       r4 
      \bar "!" r16 b8 dis'16~ 
       \tuplet 6/4 {dis'8 cis'8 b16 gis16} 
       f8 gis16 b16 
       dis'16 cis'16 ais16 fis16 
      \bar "!" r4 
       \tuplet 3/2 {r8 gis8 ais8} 
       cis'8. b16 
       \tuplet 6/4 {a16 aes16 g16 e16 g16 a16} 
      \bar "!" \tuplet 3/2 {b8 a8 f8} 
       \tuplet 3/2 {d8 g8 f8} 
       r4 
       \tuplet 6/4 {r8 a8. g16} 
      \bar "!" dis8 g8~ 
       g16 b16 dis'16 b16 
       g16 a16 b16 c'16 
       dis'16\glissando  gis'16 a'8 
      \bar "!" \tuplet 5/4 {a'8 g'16 aes'16 g'16} 
       \tuplet 3/2 {dis'8 c'8 gis8} 
       \tuplet 3/2 {dis'8 ais4} 
       r4 
      \bar "!" r8 ais8~ 
       ais8. g16~ 
       \tuplet 3/2 {g8 gis8 dis8} 
       \tuplet 3/2 {c8 g8 gis8} 
      \bar "!" r4 
       r16 gis16 ais16 c'16 
       \tuplet 3/2 {dis'8 b8 bes8} 
       a16 b16 cis'16 dis'16 
      \bar "!" e'16 fis'16 gis'16 ais'16 
       ais'16 fis'16 gis'16 ais'16 
       \tuplet 6/4 {gis'8 f'8 dis'16 g'16} 
       es'16 d'16 b16 a16 
      \bar "!" \tuplet 3/2 {f8 g8 b8} 
       \tuplet 6/4 {dis'16 f'16 g'16 b'16 dis''8} 
       b'8 g''8 
       dis''8 c''8 
      \bar "!" r4 
       r4 
       c''8 b'8 
       dis''4 
      \bar "!" b'8 a'8~ 
       a'4~ 
       a'4~ 
       a'16 g'16 dis'16 a'16 
      \bar "!" bes'16 a'16 ais'16 dis'16~ 
       dis'16 b16 ais16 b16 
       a16 aes16 g16 b16 
       \tuplet 5/4 {dis16 g16 b16 dis16 c16~} 
      \bar "!" c8 dis16 a,16~ 
       a,4 
       r4 
       r8 b,8 
      \bar "!" dis16 f16 dis16 f16 
       r4 
       r16 g16 a16 c'16 
       dis'16 b8.~ 
      \bar "!" \tuplet 3/2 {b8 b8 dis'8} 
       \tuplet 3/2 {g'8 c'4~} 
       c'8 c'16 es'16 
       d'8. d'16 
      \bar "!" f'8 dis'8~ 
       \tuplet 3/2 {dis'8 dis'8 g'8} 
       f'8. f'16 
       a'8 g'8~ 
      \bar "!" \tuplet 3/2 {g'8 g'8 b'8} 
       a'4~ 
       a'16 a'16 c''16 b'16~ 
       b'4 
      \bar "!" \tuplet 6/4 {b'16 c''16 d''16 dis''16 g''8~} 
       g''8 g''8 
       dis''8 b'8~ 
       b'8 b'8 
      \bar "!" cis''16 dis''16 a'8~ 
       a'4 
       g'8 dis'16 g'16 
       dis'4 
      \bar "!" r8 ais'16 c''16 
       d'4~ 
       d'8. b16 
       g8 a8~ 
      \bar "!" a4 
       a8 c'8 
       b4 
       \tuplet 3/2 {b8 cis'8 e'8} 
      \bar "!" dis'4~ 
       \tuplet 3/2 {dis'8 dis'8 f'8} 
       \tuplet 3/2 {g'8 a'4~} 
       a'8 a'8 
      \bar "!" \tuplet 3/2 {b'4 b'8~} 
       b'4 
       c''4 
       r4 
      \bar "!" r8 c''8 
       b'8. b'16~ 
       b'16 dis''8 fis''16 
       g''4~ 
      \bar "!" g''4 
       c''8 b'8~ 
       \tuplet 3/2 {b'8 b'8 dis''8~} 
       dis''8 g''16 gis''16 
      \bar "!" a''16 bes''8. 
       a''8. g''16 
       aes''4~ 
       aes''8 g''8~ 
      \bar "!" g''4~ 
       \tuplet 6/4 {g''8 es''8 d''16 b'16~} 
       \tuplet 3/2 {b'8 b'8 bes'8~} 
       \tuplet 6/4 {bes'16 a'4 e''16\glissando } 
      \bar "!" f''4 
       dis''4 
       r4 
       \tuplet 3/2 {r8 b'8 a'8} 
      \bar "!" b'8 dis''8 
       a'8 b'8 
       \tuplet 3/2 {e'8\glissando  f'4~} 
       f'4 
      \bar "!" \tuplet 3/2 {dis'8 b8 a8~} 
       a16 b16 cis'16 dis'16 
       f'16 a'16 b'16 cis''16 
       r4 
      \bar "!" \tuplet 6/4 {r8. b'8 a'16~} 
       a'8 dis''16\glissando  e''16 
       f''8. dis''16~ 
       dis''4~ 
      \bar "!" dis''16 b'16 a'16 b'16 
       dis'8 f'8~ 
       f'8. dis'16 
       b8 a8 
      \bar "!" r8. b16~ 
       b16 g'16 bes'8~ 
       bes'4 
       \tuplet 3/2 {a'8 ais'8 g'8} 
      \bar "!" \tuplet 3/2 {e'8 g'8 c''8~} 
       c''4 
       bes'4~ 
       bes'4 
      \bar "!" a'8\glissando  aes'8 
       g'16 e'16 g'16 c''16~ 
       c''8 c''8~ 
       c''8 ais'8~ 
      \bar "!" ais'4 
       \tuplet 3/2 {e8 g8 dis8} 
       cis16 dis16 g16 e16 
       fis16 gis16 ais16 d'16 
      \bar "!" \tuplet 5/4 {cis'16 b16 bes16 a16 aes16} 
       g4 
       \tuplet 6/4 {r8 cis'16 dis'8 e'16} 
       \tuplet 3/2 {fis'8 cis'8 dis'8} 
      \bar "!" \tuplet 3/2 {g'8 c''4~} 
       c''8 c''8 
       ais'4 
       r4 
      \bar "!" r8 c''8 
       dis''8 dis''8 
       cis''4~ 
       cis''4 
      \bar "!" a'16 bes'16 a'16 g'16 
       \tuplet 6/4 {aes'16 g'16 c''8. dis''16~} 
       dis''16 cis''16 g''8~ 
       g''8 r8 
      \bar "!" r8 a'8 
       c''8 a'8~ 
       \tuplet 5/4 {a'8 g''16\glissando  gis''16 a''16~} 
       a''4 
      \bar "!" g''4 
       \tuplet 3/2 {f''4 d''8~} 
       d''16 c''16 a'8~ 
       a'4~ 
      \bar "!" a'8. a'16 
       b'8 g'8~ 
       g'4~ 
       g'4~ 
      \bar "!" \tuplet 6/4 {g'8 dis'8 g'16 fis'16~} 
       \tuplet 6/4 {fis'16 cis'8 b8 a16~} 
       a16 b16 bes16 a16 
       \tuplet 3/2 {b8 dis'8 fis'8} 
      \bar "!" \tuplet 3/2 {a'8 b'8 d''8~} 
       d''8 d''8~ 
       \tuplet 6/4 {d''16 c''4 dis''16\glissando } 
       e''16 f''8. 
      \bar "!" es''4~ 
       es''8 r8 
       r8 d''16 cis''16 
       b'16 a'16 gis'8~ 
      \bar "!" gis'8 fis'16 f'32 gis'32~ 
       gis'16 fis'16. f'32 e'32 dis'32~ 
       dis'16 f'16 d'16 cis'16~ 
       cis'16 dis'16 b16 a16 
      \bar "!" r4 
       r8 b8 
       \tuplet 3/2 {a8 fis8 a8} 
       \tuplet 3/2 {g8 e8 b,8} 
      \bar "!" \tuplet 3/2 {fis8 cis8 dis8} 
       f16 g16 r8 
       r4 
       ais4~ 
      \bar "!" ais8 g16 gis16~ 
       \tuplet 6/4 {gis16 ais8 c'16 d'16 c'16} 
       gis16 a16 c'16 dis'16 
       \tuplet 3/2 {aes'8 g'8 f'8} 
      \bar "!" g'16 fis'16 dis'16 cis'16 
       \tuplet 6/4 {b8 bes8 a16 b16~} 
       \tuplet 6/4 {b16 cis'16 dis'8 fis'16 a'16} 
       c''8 a'8 
      \bar "!" b'8 ais'8 
       r4 
       \tuplet 6/4 {r8. b'8 a'16} 
       bes'4~ 
      \bar "!" bes'16 a'16 g'16 d'16~ 
       \tuplet 5/4 {d'16 g'8 fis'16 cis'16~} 
       \tuplet 3/2 {cis'8 dis'8 b8} 
       \tuplet 6/4 {a8 fis8 b16 a16~} 
      \bar "!" a4~ 
       a4~ 
       a8 r8 
       r4 
      \bar "!" r8 a'8 
       g'8 gis'16\glissando  a'16~ 
       a'8 gis'16\glissando  a'16~ 
       a'4~ 
      \bar "!" a'16 e'8 g'16~ 
       g'4 
       a'8 g'16 e'16 
       g'8 a'8~ 
      \bar "!" a'8 a'8 
       b'8 b'8 
       \tuplet 3/2 {cis''4 gis'8~} 
       gis'4 
      \bar "!" b'8 g'8 
       gis'16 dis'8.~ 
       dis'16 b'8 ais'16~ 
       ais'16 fis'16 f'16 gis'16 
      \bar "!" dis'16 cis'16 gis16 dis'16 
       \tuplet 3/2 {b8 aes8 g8} 
       \tuplet 3/2 {b8 dis16 r8.} 
       r4 
      \bar "!" \tuplet 3/2 {b8 fis8 b8} 
       gis4 
       \tuplet 6/4 {f8. d16 dis16 f16} 
       e8 r8 
      \bar "!" r4 
       r16 dis16 f16 c16 
       dis8 f16 dis16 
       f8 gis8 
      \bar "!" \tuplet 6/4 {b8 dis'8 cis'16 ais16} 
       fis8 gis8~ 
       gis16 ais16 cis'16 dis'16 
       f'4~ 
      \bar "!" f'8 cis'16 dis'16 
       \tuplet 3/2 {f'8 fis'8 cis'8} 
       r4 
       r16 fis'8 dis'16~ 
      \bar "!" \tuplet 3/2 {dis'8 fis'8 g'8} 
       \tuplet 3/2 {e'4 g'8} 
       a'4~ 
       a'4 
      \bar "!" \tuplet 3/2 {fis'8 d'8 fis'8} 
       a'8 ais'8 
       r4 
       r4 
      \bar "!" \tuplet 3/2 {ais'8 c''8 a'8~} 
       a'16 ais'16 c''16 gis'16 
       ais'4 
       fis'8 g'8 
      \bar "!" \tuplet 3/2 {fis'8 ais'8 b'8~} 
       b'8 g'8 
       \tuplet 3/2 {e'8 g'8 b'8} 
       cis''8 a'8 
      \bar "!" fis'4 
       a'8 cis''8~ 
       \tuplet 6/4 {cis''16 d''4 a'16~} 
       \tuplet 6/4 {a'8 g'16 dis'8 g'16~} 
      \bar "!" g'16 a'16 c''16 d''16~ 
       \tuplet 3/2 {d''8 a'8 g'8} 
       f'8 d'8 
       r4 
      \bar "!" a'8 c''8 
       \tuplet 3/2 {d''4 dis''8} 
       b'8 gis'16 f'16~ 
       f'8 gis'8 
      \bar "!" b'8 cis''8 
       dis''8. gis''16~ 
       gis''8. cis''16 
       ais'8 r8 
      \bar "!" r4 
       ais'8 cis''8 
       e''4 
       cis''8 a'8 
      \bar "!" b'8 cis''8~ 
       cis''8 cis''8 
       a'8 fis'8 
       \tuplet 3/2 {a'4 c''8~} 
      \bar "!" \tuplet 3/2 {c''8 d''8 a'8} 
       g'8 dis'16 g'16~ 
       g'16 a'16 c''16 a'16 
       g'8 f'16 d'16 
      \bar "!" r4 
       \tuplet 3/2 {r8 c''8 a'8~} 
       a'8 b'8~ 
       b'16 gis'16 fis'16 dis'16~ 
      \bar "!" dis'16 cis'16 dis'16 f'16 
       gis'16 b'16 ais'8 
       gis'8 ais'8~ 
       ais'16 f'16 dis'8 
      \bar "!" r4 
       bes'8 a'8 
       a'8 g'8 
       \tuplet 3/2 {e'8 g'8 dis'8~} 
      \bar "!" dis'8 g'8 
       a'8 b'16 a'16~ 
       a'4 
       \tuplet 3/2 {fis'8 d'8 b8} 
      \bar "!" r4 
       \tuplet 3/2 {a'8 g'8 dis'8} 
       \tuplet 3/2 {a'8 g'8 dis'8~} 
       \tuplet 5/4 {dis'16 g'8. f'16~} 
      \bar "!" f'8 d'8~ 
       d'8. fis'16 
       \tuplet 3/2 {dis'4 fis'8~} 
       \tuplet 3/2 {fis'8 f'8 dis'8} 
      \bar "!" \tuplet 3/2 {gis'8 f'8 cis'8} 
       \tuplet 3/2 {b8 dis'8 ais8~} 
       ais8 r8 
       r8 b16 e'16~ 
      \bar "!" e'8 b8~ 
       \tuplet 3/2 {b8 g8 cis'8} 
       \tuplet 3/2 {b8 a8 fis8} 
       \tuplet 3/2 {b8 a4~} 
      \bar "!" a8 a8 
       \tuplet 3/2 {g8 dis8 g8} 
       \tuplet 3/2 {dis8 f4~} 
       f8 a8 
      \bar "!" \tuplet 3/2 {ais8 c'8 d'8} 
       \tuplet 3/2 {g'8 d'4} 
       \tuplet 3/2 {ais8 dis'8 cis'8} 
       \tuplet 3/2 {b8 gis8 f8} 
      \bar "!" \tuplet 3/2 {gis8 b8 dis'8} 
       ais8 r8 
       r8 ais8 
       \tuplet 3/2 {cis'8 e'8 b8} 
      \bar "!" bes16 a16 aes16 g16 
       \tuplet 3/2 {a8 ais8 d'8} 
       dis'16 f'16 g'16 c''16 
       bes'8 r8 
      \bar "!" r8. a'16~ 
       \tuplet 3/2 {a'8 g'8 e'8} 
       g'8 f'16 cis'16 
       fis'8 d'8 
      \bar "!" b16 a16 a8~ 
       a8.\bendAfter #+4  f16~ 
       f16 d16 f16 a16~ 
       \tuplet 6/4 {a16 b8 cis'16 dis'16 fis'16} 
      \bar "!" a'16 b'16 d''8 
       a'8 r8 
       \tuplet 3/2 {r8 d''8 a'8~} 
       \tuplet 3/2 {a'8 d''8 a'8} 
      \bar "!" d''8 a'8~ 
       a'16 fis''16 g''8~ 
       g''8 b''16 a'16~ 
       a'16 d''16 a'8 
      \bar "!" d''16 ais'8 g''16~ 
       g''8 d''8~ 
       d''8. a'16~ 
       \tuplet 3/2 {a'8 d''8 a'8~} 
      \bar "!" a'16 fis''16 g''16 b''16 
       \tuplet 6/4 {g''8. a''16 b''16 cis''16~} 
       cis''16 ais'8 d''16 
       cis''16 g''8. 
      \bar "!" fis''16 g''16 gis''16 a''16 
       ais''4 
       r8 a,8 
       \tuplet 5/4 {e8 cis16 d16\bendAfter #+4  dis16~} 
      \bar "!" dis4~ 
       dis8 a'8 
       \tuplet 3/2 {d''8 g''4~} 
       \tuplet 7/8 {g''32 g''8 gis''32 a''32~} 
      \bar "!" a''8 a,8~ 
       \tuplet 3/2 {a,8 e8 dis8~} 
       dis4 
       a'8 d''8 
      \bar "!" g''8 a''8~ 
       a''8 a,8 
       e16 dis8 g16~ 
       g16 cis8 dis16~ 
      \bar "!" dis4 
       a'16 d''8 g''16~ 
       g''16 a''8 a,16~ 
       \tuplet 3/2 {a,8 e8 dis8} 
      \bar "!" \tuplet 6/4 {fis8. ais8 d'16~} 
       \tuplet 5/4 {d'16 dis'16 gis'16 a'16 cis''16} 
       g''4~ 
       g''8. a'16 
      \bar "!" d''8 g''8~ 
       \tuplet 6/4 {g''16 a''16 ais''8. a,16~} 
       \tuplet 3/2 {a,8 e8 dis8} 
       ais'16 b'16 c''16 cis''16 
      \bar "!" d''8 g''16 gis''16~ 
       gis''8 gis''8 
       cis''4 
       r4 
      \bar "!" \tuplet 3/2 {r8 g''8 a''8} 
       cis''4 
       a''4~ 
       a''4~ 
      \bar "!" a''8. g''16~ 
       g''4~ 
       g''4~ 
       g''8 e''8~ 
      \bar "!" e''4 
       b'4~ 
       b'4~ 
       b'4~ 
      \bar "!" b'4~ 
       b'4~ 
       b'8 a'8 
       f'8 b'16 a'16 
      \bar "!" f'16 b'16 a'16 f'16 
       \tuplet 6/4 {b'16 a'8 f'8 b'16} 
       a'8 f'8 
       r4 
      \bar "!" r8 b'8 
       d''4~ 
       d''4 
       c''16\bendAfter #-4  b'16 a'16 bes'16 
      \bar "!" a'16 f'16 dis'16 fis'16 
       dis'16 bes16 a16 f16 
       bes16 a16 f16 cis16 
       \tuplet 3/2 {dis8 f8 dis8~} 
      \bar "!" dis8 b,8 
       \tuplet 3/2 {b,8 dis8 a,8~} 
       a,8 r8 
       r8. g16 
      \bar "!" \tuplet 6/4 {a8 b8 cis'16 d'16} 
       \tuplet 3/2 {dis'8 f'8 g'8} 
       \tuplet 6/4 {gis'16 a'16 b'16 c''8 a'16~} 
       a'8 d''8 
      \bar "!" a'4 
       a'4 
       a'4 
       a'4~ 
      \bar "!" a'4~ 
       a'4 
       r4 
       r8 g'8 
      \bar "!" e'16 a'8 g'16~ 
       g'16 a'8 g'16~ 
       g'16 gis'16 a'8~ 
       a'16 gis'16 a'8~ 
      \bar "!" a'4~ 
       a'4~ 
       a'4~ 
       \tuplet 3/2 {a'8 gis'8 a'8~} 
      \bar "!" a'8 a'8~ 
       a'4 
       e'4~ 
       e'4~ 
      \bar "!" e'4~ 
       e'4 
       r4 
       r8 a'8\glissando  
      \bar "!" b'4~ 
       b'4~ 
       b'4~ 
       b'4~ 
      \bar "!" b'4~ 
       b'4~ 
       b'8 r8\bar  ".."
    }
    >>
>>    
}
