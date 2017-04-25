\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Don't Blame Me"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      | s4 r2. 
      | c2:6 f4:min7 bes4:7 | e2:min7 a2:7 | d2:min7 g2:7 | c2:maj a2:min7 | d2:min7 g2:7 | e2:min5-7 a2:7 | d2:min7 g2:7 | c4:6 a4:7 d4:min7 g4:7 
      | c2:6 f4:min7 bes4:7 | e2:min7 a2:7 | d2:min7 g2:7 | c2:maj a2:min7 | d2:min7 g2:7 | e2:min5-7 a2:7 | d2:min7 g2:7 | c2:6 g4:min7 c4:7 
      | f1:maj | e1:7 | a1:min7 | s1 | d1:7 | s1 | d2:min7 aes2:7 | g1:7 
      | c2:6 f4:min7 bes4:7 | a1:7 | d2:min7 g2:7 | c2:maj a2:min7 | d2:min7 g2:7 | e2:min5-7 a2:7 | d2:min7 g2:7 | c4:6 a4:7 d4:min7 g4:7 
      | c2:6 f2:min7|
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


      \tempo 4 = 64
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 aes'32 f'32 es'32 d'32 
      \bar "||" \mark \default cis'16 b16 c'8~^\markup{\left-align \small vib} \tuplet 6/4 {c'8 dis'16\glissando  e'16 f'8} g'16 a'16 bes'8~^\markup{\left-align \small vib} bes'8. c''16 
      | a'4.^\markup{\left-align \small vib} r8 r4 \tuplet 15/16 {r8 r64 g'32 aes'32. g'64~} 
      | g'16 ges'16 f'8~^\markup{\left-align \small vib} \tuplet 9/8 {f'16. e''32 d''32 c''32 a'32 f'32 d'32} \tuplet 7/8 {a32 c'32 a32 b32 e'32 dis'32 b32} \tuplet 10/8 {gis32 fis32 g16. f32 e32 g32 b32 d'32~} 
      | d'16 b16 d'16 b16 \tuplet 6/4 {g'16 aes'16 g'16 d'16 b16 g16} \tuplet 3/2 {cis'8 g'4~^\markup{\left-align \small vib}} g'8 r8 
      | r4 \tuplet 10/8 {r16 des'32 f'32 a'32 c''32 e''32 d''32 c''32 a'32} \tuplet 6/4 {f'16 d'16 c'16 a16 f16 a16} b8^\markup{\left-align \small vib} r8 
      | r4 r16. d'32\glissando  e'32 fis'32 g'32 e'32 \tuplet 10/8 {d'16 cis'32 e'32 g'16 a'32 ais'32 gis'32 a'32} \tuplet 9/8 {f''16 e''32 d''32 cis''32 e'32 g'32 bes'32 a'32} 
      | bes'16 g'8. ges'16 ges'32 a'32 c''32 e''32 d''16~^\markup{\left-align \small vib} \tuplet 14/16 {d''8~ d''64 f'32 a'64 c''64 e''64} dis''16 b'32 a'32 g'32 f'32 d''16~ 
      | \tuplet 7/8 {d''16. e'32 g'32 b'32 d''32} \tuplet 6/4 {b'8. cis''16 ais'16 fis'16} dis'32 b'32 a'32 f'32 des'32 c'32 bes'32 a'32 \tuplet 12/8 {gis'16 f'16 dis'32 c'32 g'16 f'32 d'16 a32~} 
      \bar "||" a32 cis'32 dis'32 gis32 fis32 g32 a32 b32 \tuplet 10/8 {c'32 d'32 c'16 b32 c'16 e'32 f'32 fis'32} g'4~^\markup{\left-align \small vib} g'16 a32 bes32 d'32 f'32 g'32 e'32 
      | d'32 cis'32 e'32 g'32 a'32 bes'32 a'16~^\markup{\left-align \small vib} a'8 r8 r4 \tuplet 5/4 {r8 fis'16\glissando  aes'16 g'16} 
      | ges'16 f'8.~ \tuplet 7/8 {f'16 d''32 c''32 a'32 f'32 d'32} a16 b'4.^\markup{\left-align \small vib} \tuplet 12/8 {a'16 aes'32} 
      | g'4~^\markup{\left-align \small vib} g'16. e'32 d'32 c'32 b32 a32 \tuplet 6/4 {g16 fis16 d'16\glissando  dis'4.^\markup{\left-align \small vib}} ais'16 fis'16 
      | gis'16\glissando  a'8.~^\markup{\left-align \small vib} \tuplet 6/4 {a'4 d''16 c''16} \tuplet 10/8 {d''32 c''32 a'32 g'32 g'32 f'16 d'32 a32 c'32} \tuplet 6/4 {a16 b16 e'16 b16 g8^\markup{\left-align \small vib}} 
      | r4 \tuplet 7/8 {r16 dis'32 e'32 fis'32 g'32 e'32} d'32 cis'32 e'32 g'32 a'32 ais'32 gis'32 a'32~ \tuplet 10/8 {a'8 f''32 e''32 d''32 cis''32 bes'32 a'32} 
      | g'16 ges'16 a'32 b'32 e''32 b'32 r4 \tuplet 10/8 {r8 d''16 c''32 d''32 c''32 a'32} \tuplet 6/4 {g'16 f'16 d'16 a16 e'16 g16} 
      | ges32 f32 b32 d'32 b32 d'32 c'16 ais32 c'32 d'32 e'32 a'32 g'16.~^\markup{\left-align \small vib} \tuplet 10/8 {g'8 d'32 des'32 f'32 g'32 f'32 d'32} \tuplet 6/4 {e'8. c''8 c'16~} 
      \bar "||" \tuplet 6/4 {c'16 g'16\glissando  gis'16 a'8 gis'16} a'4.^\markup{\left-align \small vib} r8 r4 
      | r32 c'32 des'32 c'32 b32 c'32 d'32 c'32 \tuplet 10/8 {b16 c'32 ais'16 b'16 ais'16 b'32~^\markup{\left-align \small vib}} \tuplet 6/4 {b'4~ b'16 fis'16~} fis'32 a'32 bes'32 a'32 fis'32 gis'16. 
      | r4 r16 b'16 cis''16 d''16 \tuplet 7/8 {c''32 b'32 a'32 g'32 b32 d'32 f'32\bendAfter #-4 } e'16 c''16. b'32 a'32 gis'32~ 
      | gis'8 b16 d'16 f'16 e'16 d'16 b16 \tuplet 7/8 {b32 c'32 d'32 b32 c'32 e'32 a32} r4 
      | \tuplet 10/8 {r16. a32 b32 cis'32 e'16 cis'32 d'32~} \tuplet 10/8 {d'32 e'32 fis'32 g'16 a'32 b'32 c''32 b'32 a'32} \tuplet 7/8 {g'32 fis'32 d'32 des'32 c'32 e'32 b32} \tuplet 12/8 {a32 g32 d'32 b16 d'32 e'32 fis'32 g'32 a'32 ais'32 c''32} 
      | \tuplet 6/4 {b'16 a'16 g'16 fis'8.~} \tuplet 9/8 {fis'16. d''32 cis''32 des''32 c''32 e''32 b'32} bes'16 a'8.^\markup{\left-align \small vib} r4 
      | r8 d'8 f'16 a'16 c''16 g''16~ \tuplet 14/16 {g''32 f''32. es''16 c''32 des''32 es''64} \tuplet 6/4 {des''16 c''16 bes'16 a'8 aes'16} 
      | f'16 dis'32 ais16 cis'32 d'32 cis'32 gis16 b16 c'32 dis'16 ais'32~^\markup{\left-align \small vib} \tuplet 12/8 {ais'8. gis'16 dis'32 c'32 aes32 g32} g'16 f'16 d'16 aes16 
      \bar "||" g4~^\markup{\left-align \small vib} \tuplet 6/4 {g8 d'16\glissando  e'16 f'16 fis'16} g'16 a'16 bes'8~^\markup{\left-align \small vib} \tuplet 12/8 {bes'4~ bes'16 c''32 bes'32} 
      | a'4 dis'16\glissando  e'8.~^\markup{\left-align \small vib} \tuplet 6/4 {e'8. f'16 e'16 d'16} \tuplet 6/4 {c'16\glissando  cis'8^\markup{\left-align \small vib} e'16 g'16 bes'16~^\markup{\left-align \small vib}} 
      | \tuplet 10/8 {bes'8 a'32 e'32 g'16 ges'32 f'32} e'32 d'32 des'32 e'32 es'32 d'16.~^\markup{\left-align \small vib} d'4 \tuplet 6/4 {d''16 c''16 bes'16 a'16 gis'16 f'16} 
      | g'4 \tuplet 7/8 {r16 d'32 b32 c'32 d'32 e'32} \tuplet 6/4 {g'16\glissando  gis'16 e'16 c'16 d'8~^\markup{\left-align \small vib}} d'16. f'32 fis'32 dis'32 ais32 b32 
      | cis'16 aes8. gis32 a32 b32 des'32 e'32 g'16.~^\markup{\left-align \small vib} g'16 e'32 f'32 c'32 a32 f32 e'32 \tuplet 9/8 {d'16.^\markup{\left-align \small vib} c'32 a32 b32 gis'32 f'32 fis'32} 
      | g'4~ \tuplet 12/8 {g'16 d'32\glissando  e'16. g'16. a'16 bes'32~} \tuplet 6/4 {bes'16 c''16 d''16 e''16 f''16 g''16~} \tuplet 12/8 {g''32 e''16 d''16 cis''32 e''16 ais'16 gis'32 a'32~^\markup{\left-align \small vib}} 
      | a'4~ a'16 bes'32 c''32 b'32 a'32 gis'16 \tuplet 6/4 {a'8 c''16 a'16 f'16 d'16} dis'16 b'8^\markup{\left-align \small vib} a'16 
      | aes'16 g'16 c'16 c'16 dis'16 f'16 e'16 c'16~ c'16 d'16 es'16 c'16~ c'32 d'16 c'32 ais32 b32 ais32 aes32 
      \bar "||" \mark \default g4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
