\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Out of Nowhere"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | s2. d4:7 
      | g1:maj | g1:maj | bes1:min7 | es1:7 | g1:maj | s1 | b1:min7 | e1:7 
      | a1:min7 | e1:7 | a1:min7 | s1 | es1:7 | s1 | a1:min7 | d1:7 
      | g1:maj | s1 | bes1:min7 | es1:7 | g1:maj | s1 | b1:min7 | e1:7 
      | a1:min7 | e1:7 | a1:min7 | c1:min6 | b2:min7 bes2:dim | a2:min7 d2:7 | g1:6 | a2:min7 d2:7 
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


      \tempo 4 = 68
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 12/8 {r8 g'16 fis'16 f'32 e'16 es'32} 
      \bar "||" \mark \default d'4~^\markup{\left-align \small vib} \tuplet 3/2 {d'8 e'8 fis'8} a'2^\markup{\left-align \small vib} 
      | r4 r16. g'32 aes'32 g'32 fis'32 g'32 a'16 g'16 fis'16 g'16 c'16 d'16 e'16 d'16 
      | f'16. bes16 c'16 des'32~^\markup{\left-align \small vib} des'4 r2 
      | \tuplet 9/8 {r16. bes32 des'32 f'32 aes'32 c''32 es''32} c''4~ \tuplet 5/4 {c''16 c''16 es''16 b'16 b'16} es''16 bes'8.~ 
      | \tuplet 9/8 {bes'16. cis'32 d'32 e'32 fis'32 g'32 a'32} fis'32 g'32 e'32 c'32 a32 d'32 fis32 g32 \tuplet 7/8 {c'32 b32 g32 e32 f32 a32 fis32} g32 a32 b32 c'32 d'32 b32 d'32 e'32 
      | fis'32 a'32 fis'32 g'32 b'32 d''32 f''32 g''32~ g''16 d''16 d''16 ais'32 b'32~ \tuplet 10/8 {b'32 b'16 fis'16\glissando  g'16. g'32 cis'32\glissando } \tuplet 3/2 {d'8 d'16 r8.} 
      | r4 r16 des''32 c''32 b'32 a'32 fis'32 cis'32 a'16 fis'16 r8 r4 
      | r8 a'16 fis'16~ fis'8 c''16 d''16 \tuplet 10/8 {c''32 b'16. a'16 gis'16 b'32 gis'32} f'16 e'16 es'16 d'16 
      | b16 c'16 gis16 a16 b16 c'16 d'16 e'16 \tuplet 6/4 {a'8. gis'8 a'16~} a'16 b'16 a'16. b'32~ 
      | \tuplet 6/4 {b'16 c''16 d''16 f'8.^\markup{\left-align \small vib}} r4 \tuplet 9/8 {r16. dis''32 e''32 f''32 e''32 es''32 d''32~} \tuplet 10/8 {d''32 des''32 c''32 b'32 a'32 gis'16 f'32 e'32 es'32~} 
      | es'32 d'32 b32 c'32 e'32 b32 gis32 a32 \tuplet 7/8 {b32 d'32 e'32 a'32 gis'32 b'32 d''32} f''32 e''32 b'32 d''32 b'32 c''32 e''32 b'32 \tuplet 6/4 {bes'16 a'8. gis'16 f'16} 
      | \tuplet 7/8 {e'32 es'32 d'32 b32 c'32 d'32 a32~^\markup{\left-align \small vib}} a8 r8 r8 fis'16 g'16~ \tuplet 6/4 {g'16 g'16\bendAfter #+4  a'16 g'8 g'16~} 
      | \tuplet 6/4 {g'16 g'16 aes'16\bendAfter #+4  bes'16 g'16 g'16} \tuplet 6/4 {g'8 g'16 g'16 g'16 g'16} \tuplet 6/4 {g'16 g'16 fis'16 e'16 es'16 es'16} es'16 es'16 bes16 bes16~ 
      | \tuplet 6/4 {bes16 ais16 b16 c'16 des'16 des'16} a16 c'16 bes8 r2 
      | \tuplet 10/8 {r8 a32 c'32 e'32 g'32 a'32 b'32} \tuplet 6/4 {d''16 b'16 c''16 d''16 c''16 b'16~} b'8. a'32 c''32 \tuplet 12/8 {e''32 g''16. e''32 c''32 a'16 g''16 e''32 c''32} 
      | a'4 r16 f''32 e''32 dis''32 g'32 ais'32 d''32 c''32 b'32 a'32 g'32 fis'32 g'32 ais'32 g'32~ \tuplet 6/4 {g'8 g'16 fis'16 e'16 es'16} 
      \bar "||" d'4~^\markup{\left-align \small vib} \tuplet 3/2 {d'8 e'8 fis'8} \tuplet 3/2 {g'8\bendAfter #+4  a'8 a'8} g'16 a'16 b'16 fis'16~^\markup{\left-align \small vib} 
      | fis'4. g'16 a'32 b'32~ \tuplet 3/2 {b'8 d''8 d''8} \tuplet 6/4 {b'16 d''8 e''8 f''16~} 
      | \tuplet 3/2 {f''8 bes'8 c''8} \tuplet 14/16 {des''32. es''32. d''64 c''32. bes'32 c''64 bes'64} a'16 c''16 bes'8^\markup{\left-align \small vib} r4 
      | r16. f'32 fis'32 g'32 aes'16 \tuplet 10/8 {f'16. des'16. bes16 fis'32 g'32} \tuplet 6/4 {fis'16 f'16 es'8 bes16 c'16~} c'16\glissando  d'16 c'16 a16~ 
      | \tuplet 13/16 {a32 g32. es16 d32. d'64~^\markup{\left-align \small vib}} d'4 r4 \tuplet 7/8 {r16. b32 d'32 des'32 c'32} 
      | b32 a32 g32 fis32 a32 c'32 e'32 dis'32 \tuplet 10/8 {c'32 d'32 c'32 b32 cis'32 fis'32 a'32 fis'32 g'32 a'32} \tuplet 6/4 {d''16 g''16 d''4~} d''8 b'8\bendAfter #+4  
      | \tuplet 6/4 {cis''8. b'16 fis'16 a'16~} a'32 gis'16. b32 d'16 e'32~ \tuplet 14/16 {e'32 dis'32. e'32.\glissando  f'32 f'32. f'64~} f'16 f'16 e'16 b16 
      | c'8 d'16 d'16 d'4~^\markup{\left-align \small vib} d'8~ d'32 d'32 es'32 d'32 \tuplet 3/2 {des'8 c'8 b8} 
      | gis16 a8.~ \tuplet 10/8 {a8 d'32 e'32 f'32 fis'32 f'32 e'32} dis'16 e'16 c''4^\markup{\left-align \small vib} r8 
      | r4 r16. a'32 b'32 d''32 c''32 b'32 a'32 aes'32 g'32 d'32 f'32 e'32 es'32 d'32 c'32 b32 a32 gis32 b32 d'32 f'32 e'32 
      | \tuplet 10/8 {b16 d'8^\markup{\left-align \small vib} b32 c'32 e'32 g'32} a'16 b'16 a'8^\markup{\left-align \small vib} r2 
      | r8 b'16 c''16~ \tuplet 12/8 {c''16 es''32\bendAfter #+4  f''8 es''16. fis'32 g'32} \tuplet 3/2 {bes'8 d''8 c''8} a'32 b'32 a'32 g'32 f'16 es'32 bes32 
      | \tuplet 6/4 {d'16 c'16 d'4~^\markup{\left-align \small vib}} \tuplet 10/8 {d'8 a'32 aes'32 g'32 fis'16 g'32~} g'16 e'16 fis'4^\markup{\left-align \small vib} r8 
      | r4 \tuplet 7/8 {r16 a32 c'32 e'16 a'32} b'32 d''32 des''32 c''32 b'32 a'32 aes'32 g'32 \tuplet 12/8 {fis'16 f'32 e'32 dis'16. c'32 d'32 es'32 d'32 c'32~} 
      | \tuplet 14/16 {c'64 b32 d'64 e'32 fis'64 a'32 fis'64 g'64 a'64 cis''64 d''64} \tuplet 6/4 {g''16 fis''16 d''16 r8.} r4 \tuplet 10/8 {r8 r32 fis''32 e''16 b'32 c''32~} 
      | \tuplet 6/4 {c''16\bendAfter #+4  d''8 des''16 c''16 b'16} \tuplet 12/8 {c''16. b'32 bes'32 a'16. b'16 bes'32 a'32} \tuplet 6/4 {aes'16 g'16 a'16 ais'16 g'8~} \tuplet 10/8 {g'8 f'16 e'32 dis'32 ais32 c'32} 
      \bar "||" \mark \default es'16 d'16 b8 r2.\bar  ".."
    }
    >>
>>    
}
