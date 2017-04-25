\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "How Deep Is the Ocean"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \minor
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
      | s4 r4 s2 
      | c1:min7 | b1:dim7 | es1:6/bes | a2:min5-7 d2:7 | g1:min7 | a2:min5-7 d2:9- | g2:min7 ges2:7 | f2:min7 bes2:7 
      | bes1:min7 | es1:7 | es1:min7 | aes1:7 | b1:7 | s1 | bes2:7 s2 | d2:min5-7 g2:9- 
      | c1:min7 | b1:dim7 | es1:6/bes | a2:min5-7 d2:7 | g1:min7 | a2:min5-7 d2:7 | g2:min7 ges2:7 | f2:min7 bes2:7 
      | bes1:min7 | g2:min5-7 c2:9- | f1:min7 | des1:7 | es2:/bes g2:7/b | c2:min7 f2:7 | f2:min7 bes2:7 | es2:9 d4:min5-7 g4:7|
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


      \tempo 4 = 72
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 \tuplet 10/8 {r16 aes'16 g'32 f'32 es'32 d'32 c'32 b32~^\markup{\left-align \small vib}} \tuplet 6/4 {b4 g'16 es'16~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default es'4~ es'16 g16 a16 b16 \tuplet 6/4 {d'8 c'16 bes16\glissando  b16 c'16} d'16 es'16 f'16 es'16\glissando  
      | fis'16 g'16 g'8~^\markup{\left-align \small vib} g'4~ g'16 f'16 e'16 es'16~^\markup{\left-align \small vib} \tuplet 7/8 {es'16 cis'32 b32 cis'32 b32 a32} 
      | bes4~^\markup{\left-align \small vib} bes16 d'16\glissando  es'16 es'16 es'4.^\markup{\left-align \small vib} d'16 es'16 
      | g'4.^\markup{\left-align \small vib} r8 \tuplet 7/8 {r16 e''32 cis''32 b'32 a'32 g'32} \tuplet 3/2 {fis'8 es'8 c'8} 
      | bes4~^\markup{\left-align \small vib} \tuplet 6/4 {bes8 cis'16\glissando  d'16 g'16 a'16~} a'16 bes'16 bes'16 bes'16~ bes'16 bes'16 a'16 bes'16 
      | b'16 c''16 c''8~^\markup{\left-align \small vib} c''4~ \tuplet 11/8 {c''8 es'32\glissando  e'16 g'32 a'32 g'32 ges'32~} ges'32 e'16. a32 c'16 es'32 
      | d'4~^\markup{\left-align \small vib} \tuplet 5/4 {d'8 a'16 bes'16 bes'16} bes'4~^\markup{\left-align \small vib} bes'16. a'16 bes'16 c''32~^\markup{\left-align \small vib} 
      | c''4. r8 r4 r8 bes'16 a'16 
      \bar "||" bes'16 c''16\glissando  es''8~^\markup{\left-align \small vib} es''2~ es''8 es''16 es''16~ 
      | es''32 es''16 des''32 b'32 bes'16 bes'32 bes'4^\markup{\left-align \small vib} r4 \tuplet 5/4 {r8 des'16 es'16 f'16} 
      | ges'16 aes'16 bes'16 aes'16 ges'16. f'16 es'16 bes32 c'16\glissando  d'16 bes'16 c'16\glissando  des'8. bes16 
      | des'32 es'32 des'32 bes32 c'16 aes'16~^\markup{\left-align \small vib} aes'8 ges'32 f'32 es'32 bes32~ bes32 c'32\glissando  des'16 c'16. c'32 r4 
      | \tuplet 6/4 {r4 f'16\glissando  fis'16~} \tuplet 3/2 {fis'8 es'8 es'8} es'2~^\markup{\left-align \small vib} 
      | \tuplet 5/4 {es'8 aes16\glissando  a16 c'16} aes'4.^\markup{\left-align \small vib} fis'16 es'16 \tuplet 10/8 {f'32 ges'32 f'16 es'16 d'16. es'32~} 
      | es'16 f'16\glissando  ges'8~ ges'16 es'16 f'16 f'16 f'4~^\markup{\left-align \small vib} \tuplet 12/8 {f'8 es'16 f'32 ges'16 f'32 es'32 f'32~^\markup{\left-align \small vib}} 
      | f'4 r4 r16. fis'32 g'32\glissando  aes'32 g'32 f'32 es'32 d'32 c'32 b16 f'32 aes'32 g'32 
      \bar "||" f'16 es'16 r8 r8 g32 a32 b32 c'32 d'16 es'16 f'16 g'16 a'16 d''16 b'16\glissando  c''16 
      | \tuplet 3/2 {fis''8 e''8 b'8} cis''8 b'16 fis'16~ \tuplet 12/8 {fis'32 a'32 bes'32~ bes'8 fis'32 es'16. bes32} \tuplet 5/4 {b8 bes'16 aes'16 g'16} 
      | es'4~^\markup{\left-align \small vib} \tuplet 12/8 {es'8 g16 aes32 a32 bes16. c'32~} \tuplet 6/4 {c'16 d'16 es'16 e'16 f'16 c'16~} \tuplet 6/4 {c'16 d'16 es'8 f'16 g'16} 
      | es'16 fis'16\glissando  g'16 g'16 g'8^\markup{\left-align \small vib} r8 \tuplet 10/8 {r8. a'32 g'32 fis'32 a'32~} a'32 e'32 a32 c'32 es'32 c'32 cis'32 es'32 
      | \tuplet 10/8 {a16 c'32 bes32 a16 bes32 d'32 g'32 a'32~} \tuplet 10/8 {a'32 b'32 des''32 a'32 b'32 c''32 b'32 a'32 aes'16~} \tuplet 10/8 {aes'4 a'32\glissando  bes'32~} bes'16 bes'16 a'16 bes'16 
      | b'16 c''16 c''8~^\markup{\left-align \small vib} c''4~ \tuplet 10/8 {c''16. d'32 e'16 g'32 a'32 g'32 fis'32} e'16 a16 c'16 es'16 
      | d'8 bes8 r4 r16 a'16\glissando  bes'16 bes'16 bes'16 a'16 bes'16 c''16~ 
      | c''8 aes'16 f'16~ f'32 es'32\glissando  e'16 c''16. es'32~ \tuplet 3/2 {es'8 cis'8 d'8} d'8^\markup{\left-align \small vib} r8 
      \bar "||" r4 \tuplet 3/2 {bes'8 c''8\glissando  es''8} es''4.^\markup{\left-align \small vib} des''8 
      | c''16\glissando  des''16 c''16 c''16~^\markup{\left-align \small vib} c''4~ c''32 g'32 aes'64 c''64 des''64 c''64 bes'64 aes'64 g'32 f'64 e'64 des'64 bes64 a32 aes32 g32 f32 e8~ 
      | e8 aes'16 bes'16 \tuplet 10/8 {aes'8. aes'16. aes'32~^\markup{\left-align \small vib}} aes'4. g'8 
      | g'16\glissando  aes'16 g'16 f'16~ \tuplet 6/4 {f'16 es'8 bes8 b16~} b16 des'8 b16 bes16 aes8.^\markup{\left-align \small vib} 
      | r4 \tuplet 7/8 {r16 bes32 c'32 es'32 fis'32\glissando  g'32} g'4~^\markup{\left-align \small vib} \tuplet 10/8 {g'8 f'16 es'16 d'32 es'32~} 
      | es'32 f'32 g'32 es'32 fis'32\glissando  g'16 g'32~^\markup{\left-align \small vib} g'4~ \tuplet 12/8 {g'8 d''32 des''16 b'16 g'32 es'32 c'32~} c'32 g'32 ges'32 f'32 e'32 es'32 d'32 c'32 
      | b32 b32 bes32 a32 aes32 c'32 g'32 f'32~ \tuplet 12/8 {f'8.. c'16 es'32 e'32 f'32} f'4~^\markup{\left-align \small vib} \tuplet 6/4 {f'8 es'16 d'16 es'16 d'16} 
      | f'16 es'8.^\markup{\left-align \small vib} r2 \tuplet 10/8 {r32 cis'32\glissando  d'16 c'16 b32 c'32 b32 aes32}\bar  ".."
    }
    >>
>>    
}
