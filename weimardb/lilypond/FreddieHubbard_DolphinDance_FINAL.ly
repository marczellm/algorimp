\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Dolphin Dance"
  composer = "Freddie Hubbard"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | c1:min7 | aes1:11+.9 | c1:min7 | a2:min7 d2:7 | g1:maj | aes1:min7 | f1:min11.9 | s1 
      | c1:min7 | s1 | a1:min11.9 | d1:13.9 | g1:maj | g1:13.9 | a1 | es1:min5-7 
      | f1:13.9 | f1:13.9- | f1:13.9 | e2:min9 a2:13.9 | es1:11+.9 | a2:min7 d2:13.9 | b1:min7 | e2:13.9 d2:min7 
      | cis1:min7 | fis1:13.9 | d1:min7 | c1:min7 | d1:min7 | c1:min7 | des1:maj | bes1:13.9- 
      | c1:9+ | g1:9+ | c1:min7 | aes1:11+.9 | c1:min7 | a2:min7 d2:7 | g1:maj | aes1:min7 
      | f1:min7 | s1 | c1:min7 | s1 | a1:min11.9 | d1:13.9 | g1:maj | g1:13.9 
      | a1 | es1:min5-7 | f1:13.9 | f1:13.9- | f1:13.9 | e2:min9 d2:min7 | cis1:min7 | fis1:13.9 
      | d1:maj | c1:maj | d1:maj | c1:maj | des1:maj | bes1:13.9- | c1:9+ | g1:9+|
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


      \tempo 4 = 119
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 \tuplet 3/2 {r8 d'8 es'8} f'16 g'8. g'4 
      | r4 \tuplet 6/4 {r16 aes''16 bes''16 g''16 f''8} es''16 d''16 c''16 b'16 aes'16 g'16 f'16 es'16 
      | d'8 c'8 c'4 d'4 es'4 
      | d'4~^\markup{\left-align \small vib} d'8~ d'32 a'32 bes'32 a'32 \tuplet 6/4 {g'8 fis'8 a16 c'16} d'16 f'8 dis'16 
      | \tuplet 6/4 {f'8 cis'8. d'16~^\markup{\left-align \small vib}} d'4 r2 
      | r16 f''16 ges''16 f''16 es''16 des''16 c''16 b'16 bes'16 aes'16 f'16 des'16 bes8 es'8~ 
      | es'8\glissando  des''8 b'16 c''16 aes'16 f'16~ \tuplet 6/4 {f'16 bes'4 g'16} aes'8 f'8 
      | r1 
      | r8. g''16~ g''8 g''4 g''4 g''8 
      | g''4. g''8 g''4 g''4~ 
      | g''16 g''16 f''16 es''16 d''8 c''8~^\markup{\left-align \small vib} c''4~ \tuplet 6/4 {c''8 bes'16 a'16 g'16 fis'16} 
      | es''8 d''8 fis'8 r8 r2 
      \bar "||" d'4 a'4 a'4 a'4 
      | a'4 a'4 a'4 a'4~ 
      | a'16 a'16 b'16 aes'16~^\markup{\left-align \small vib} aes'2.~ 
      | aes'2~ aes'16 g'16 f'16 es'16 d'16 c'16 d'16 dis'16 
      | f'16 g'16 es'16 c'16 f'16 es'16 f'16 g'16 bes'16 d''16 bes'16 g'16 es'16 c''16 c''8 
      | r2. ges'8 f'16 g'16 
      | \tuplet 3/2 {f'8 g'8 c'8} es'4^\markup{\left-align \small vib} r2 
      | r1 
      | r8. f''16~ f''16 des''8 c''16~ c''4 bes'4~ 
      | bes'16 e''8 c''16~ \tuplet 6/4 {c''16 a'4 e'16~} e'16 g'8 e'16 fis'8 d''8~ 
      | d''16. d''16 e''16 d''32~ d''8 b'8~^\markup{\left-align \small vib} b'4~ \tuplet 5/4 {b'16 a'16 bes'16 a'16 fis'16} 
      | a'8 gis'4 b16 d'16 \tuplet 3/2 {e'8 f'4} e'4 
      | \tuplet 6/4 {d'8 e'8. a'16~^\markup{\left-align \small vib}} a'8 r8 r2 
      | r4 r8 r32 fis''16 gis''32~ \tuplet 6/4 {gis''16 ais''8 gis''16 ges''16 f''16~} f''16 e''16 es''16 d''16 
      | cis''16 b'16 g'16 d'16~ \tuplet 6/4 {d'16 a'16 bes'16 a'16 ges'16 d'16} b16 aes'16 e'16 des'16 a16 ges'8.^\markup{\left-align \small vib} 
      | r2 r8 d''16 d''16 d''8 d''16 d''16~ 
      | d''16 d''16 d''16 b'16 a'2~^\markup{\left-align \small vib} a'8. ges'16~ 
      | ges'16 d'16 e'4^\markup{\left-align \small vib} r8 r2 
      \bar "||" r8. bes16 c'16 des'16 es'16 f'16 g'16 aes'16 bes'16 c''16 aes'16 bes'16 g'16 es'16~ 
      | es'16 bes'8 bes'16~ bes'16 bes'8 bes'16~ \tuplet 3/2 {bes'8 ais'8 b'8} bes'4 
      | \tuplet 6/4 {g'8 bes'8 g'16 es'16~} es'16 bes16 bes'16 g'16~ g'16 es'16 bes16 bes'16 \tuplet 3/2 {g'8 es'8 bes8} 
      | \tuplet 3/2 {ais'8 g'8 dis'8} ais16 ais'16 g'16 dis'16~ dis'16 ais16 ais'16 g'16 dis'8 f'8~^\markup{\left-align \small vib} 
      \bar "||" \mark \default f'4~ f'16 es'8 c'32 es'32 f'8 r8 r4 
      | r2 \tuplet 6/4 {r16 f''16 e''16 es''16 d''16 a'16} \tuplet 3/2 {bes'8 aes'8 g'8} 
      | ges'16 f'16 es'16 d'16 \tuplet 7/8 {des'16. e'32 ges'32 aes'32 g'32} \tuplet 3/2 {d'8 f'8 es'8} c'4 
      | r2 es''4~ \tuplet 6/4 {es''4\glissando  d''16 c''16~} 
      | c''16 b'8 d'16~ d'16 e'8 fis'16~ fis'16 g'8 a'16~ a'16 b'8 cis''16~^\markup{\left-align \small vib} 
      | cis''4~ \tuplet 5/4 {cis''8. bes'16 aes'16} bes'4^\markup{\left-align \small vib} r4 
      | r16 c''16. g'16 g'32~ g'16 g'8 g'16~ g'8 g'8 \tuplet 3/2 {aes'8 bes'8 f'8~^\markup{\left-align \small vib}} 
      | f'8 r8 r2. 
      | g''16\glissando  c'''8. r2 \tuplet 6/4 {r8. g''16 ges''16 f''16} 
      | \tuplet 3/2 {es''8 f''8 g''8~} g''8 c''16 d''16 \tuplet 3/2 {es''8 d''8 c''8} \tuplet 3/2 {g'8 es'8 d'8} 
      | r4 d''4 d''4 d''4 
      | d''8. c''16~ c''16 g'8 es'16 d'4~ \tuplet 6/4 {d'16 ais'16 b'16 c''8 b'16~^\markup{\left-align \small vib}} 
      \bar "||" b'4~ \tuplet 6/4 {b'4~ b'16 d'16~} d'16 a'16 fis'16 d'16 e'16 f'16 g'16 b'16 
      | c''16 b'16 a'16 g'16 ges'16 f'8. e'4~ \tuplet 6/4 {e'4~ e'16 c'16} 
      | d'8 e'8~^\markup{\left-align \small vib} e'2 cis'8 e'16 a'16~ 
      | a'16 g'16 dis'16 c'16~ c'4 r2 
      | \tuplet 7/8 {ges'32 es'32 c'32 d'32 es'32 a'32 g'32} d'32 c'32 g'32 a'32 bes'32 a'16. r2 
      | r2. r16 ges''16 f''16 es''16 
      | f''8 f'16 f'16~ f'16 f'16 f'16 f'16 \tuplet 3/2 {f'8 f'8 f'8} \tuplet 3/2 {f'8 f'8 f'8~} 
      | f'16 f'16 dis'16 f'16 \tuplet 3/2 {g'8 bes'8 a'8} \tuplet 3/2 {g'8 e'8 ges'8~} \tuplet 3/2 {ges'8 des''8 des''8} 
      | des''2~ des''16 c''8 a'16 f'4~ 
      | \tuplet 6/4 {f'16 a'16 bes'16 a'8 fis'16} d'4. es'8 d'8 cis'8~^\markup{\left-align \small vib} 
      | cis'4. e'8 r2 
      | r2 r8 fis''4 fis''8 
      | fis''4. dis''16 e''16 dis''4\glissando  cis''4 
      | des''4~ \tuplet 6/4 {des''16\glissando  c''16 b'8. fis'16~} fis'8 r8 r4 
      \bar "||" r8 e''16 d''16~ d''16 e''16. d''16 e''32~ \tuplet 3/2 {e''8 d''8 e''8} \tuplet 3/2 {d''8 e''8 d''8} 
      | \tuplet 3/2 {e''8 d''8 e''8} \tuplet 3/2 {d''8 e''8 d''8} e''8 f''16 e''16 d''4^\markup{\left-align \small vib} 
      | r4 \tuplet 6/4 {r8 b'16 aes'16 des''16 des''16~^\markup{\left-align \small vib}} des''2 
      | b'8 a'2..^\markup{\left-align \small vib} 
      | ges'16 f'8. dis'2^\markup{\left-align \small vib} r4\bar  ".."
    }
    >>
>>    
}
