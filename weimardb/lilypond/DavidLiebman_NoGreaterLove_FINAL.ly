\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "No Greater Love"
  composer = "David Liebman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | bes1:maj | es1:7 | aes1:7 | g1:7 | c1:7 | s1 | c1:min7 | f1:7 
      | bes1:maj | es1:7 | aes1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:6 | s1 
      | a2:min5-7 d2:7 | g1:min6 | s2 d2:7 | g1:min6 | a2:min5-7 d2:7 | g1:min7 | c1:7 | f1:7 
      | bes1:maj | es1:7 | aes1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:6 | f1:7 
      | bes1:maj | es1:7 | aes1:7 | g1:7 | c1:7 | s1 | c1:min7 | f1:7 
      | bes1:maj | es1:7 | aes1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:6 | s1 
      | a2:min5-7 d2:7 | g1:min6 | a2:min5-7 d2:7 | g1:min6 | a2:min5-7 d2:7 | g1:min7 | c1:7 | f1:7 
      | bes1:maj | es1:7 | aes1:7 | g1:7 | c1:7 | c2:min7 f2:7 | bes1:6|
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


      \tempo 4 = 209
      \set Score.currentBarNumber = #0
     
      | r4 r8 aes8 des'8 des'8 ges'8 ges'8 
      \bar "||" \mark \default e'4 aes4 r2 
      | r8 g8~ g16 aes8 b16~ b16 des'8 e'16 \tuplet 3/2 {ges'4 e'8} 
      | es'8. bes16~ bes8 r8 r2 
      | r1 
      | gis16 a16 bes16 des'16 \tuplet 6/4 {e'16 f'16 e'4~} \tuplet 5/4 {e'16 a'16 es'16 des'16 bes16} e'16 f'16 ges'16 es'16 
      | b4 \tuplet 5/4 {ges16 aes16 bes16 b16 c'16} des'16 bes16 ges16 e16 des16 e8. 
      | r1 
      | r1 
      \bar "||" r2. a'8 bes'8 
      | c''8 bes'8~ bes'16 a'8 g'16~ g'8 ges'8~ \tuplet 3/2 {ges'8 e'8 es'8~} 
      | es'8 e'8 d'4. des'8 c'4~ 
      | \tuplet 3/2 {c'8 b8 bes8~} bes4 aes8 g4 aes8 
      | g8\bendAfter #-4  r8 r2. 
      | r1 
      | r1 
      | r1 
      \bar "||" r2 r8 d8 fis16 c'8 d'16~^\markup{\left-align \small vib} 
      | d'2 r2 
      | r4 \tuplet 3/2 {r8 d8 es8} f4 a8. bes16 
      | c'8 d'8 es'8 f'16 ges'16~ ges'4 r4 
      | r4 ges8 a8 bes8 c'8 d'8 es'8 
      | f'8 fis'16 g'16~ g'8 aes'4.^\markup{\left-align \small vib} r4 
      | r2. aes8 bes16 b16~ 
      | \tuplet 3/2 {b8 es'8 ges'8~} \tuplet 3/2 {ges'8 aes'8 bes'8~^\markup{\left-align \small vib}} bes'2~ 
      \bar "||" bes'16 a8 bes16 c'8 d'8 f'8 g'4 a'8 
      | b'16\glissando  c''8.~ c''8 des''8 bes'8. ges'16~ ges'8 f'8~^\markup{\left-align \small vib} 
      | f'4. r8 r2 
      | r1 
      | r4 gis'16\glissando  a'8 aes'16~ aes'8 g'8 g''16\glissando  gis''16 a''8 
      | aes''4. r8 r2 
      | r4 aes'8 g'8 ges'8. es''16~ es''8\glissando  g''8 
      | e''2 r2 
      \bar "||" \mark \default r2 \tuplet 3/2 {bes4 d''8} des''8 r8 
      | r4 r16 es'16 f'16 c''16 \tuplet 3/2 {g'8 a'8 bes'8~} bes'8 f'8 
      | r2 r8 aes,8 \tuplet 3/2 {es8 e8 f8} 
      | a16 bes16 e'16 a'16~ \tuplet 6/4 {a'16 e'8 a'16 c''16 des''16~} des''8 c''16 a'16 \tuplet 5/4 {fis'8 cis'16 b16 a16} 
      | d16 c8 d16 g16 gis16 a16 d'16 f'16 g'16 a'16 bes'16 c''16 d''16 c''16 b'16 
      | \tuplet 3/2 {bes'8 a'8 ges'8~} ges'8 f'16 d'16 \tuplet 3/2 {des'4 a8} \tuplet 3/2 {ges8 ges8 f8} 
      | r1 
      | r1 
      \bar "||" \tuplet 3/2 {c'8 d'8 f'8} a'16 bes'16 f'16 d'16 \tuplet 6/4 {bes8 es'8 f'16 g'16~} g'16 es'16 f'16 c'16~ 
      | c'16 d'16 e'16 g'16 \tuplet 3/2 {a'8 d'8 bes8} \tuplet 6/4 {d'8 es'8 cis'16\glissando  d'16} b8 f8 
      | a8 e8 \tuplet 3/2 {aes8 bes8 es'8~} \tuplet 3/2 {es'8 bes'8 aes'8~} \tuplet 6/4 {aes'16 g'8. c'16 es'16~} 
      | \tuplet 6/4 {es'16 g'16 fis'16 e'8 d'16} b4 d'8 es'16 c'16 d'16 b16 d16 c16 
      | a'16 fis16 g16 a16 bes16 c'16 d'16 es'16 c'16 f'16 g'16 aes'16~ aes'16 bes'16 d''16 des''16 
      | c''8 r8 r8 b8 ges'8 g8 des'16 bes16 a16 g16 
      | es16 cis16 r8 r2. 
      | r1 
      \bar "||" r2 d8 fis8 a8 c'8 
      | bes8 d'8 ges'8 a'8 g'8 aes'8~ \tuplet 3/2 {aes'8 ges'8 c'8} 
      | es'8 bes8 ges4 \tuplet 3/2 {aes4 bes8} c'8 es'8 
      | bes8 bes,16 gis,16~ gis,16 a,16 gis,16 a,16 \tuplet 6/4 {gis,16 a,16 gis,8 a,16 gis,16} a,16 aes,16 bes,16 c16 
      | aes16 g16 aes16 g16 aes16 g16 aes8 \tuplet 6/4 {es'8 d'8 es'16 d'16} es'16 d'16 es'16 f'16 
      | \tuplet 5/4 {a'16 gis'16 a'16 gis'16 a'16} \tuplet 5/4 {aes'16 g'16 aes'16 g'16 es'16} f'16 es'16 f'16 es'16 r4 
      | r2 d'16 b16 d'16 b16 aes'4 
      | e'4 des''8 b'16 des''16~ \tuplet 6/4 {des''16 cis'8 d'16 cis'16 d'16} des'4 
      \bar "||" r2 a'8 bes'8 c''8 bes'8~ 
      | \tuplet 3/2 {bes'8 a'8 g'8} \tuplet 3/2 {d'8 e'8 f'8} \tuplet 3/2 {e'8 es'8 a8} d'8 e'16 a'16~ 
      | \tuplet 3/2 {a'8 f'8 d'8} bes8 b8 \tuplet 3/2 {aes'8 ges'8 des'8~} \tuplet 6/4 {des'16 bes16 d'16 es'8 b16} 
      | \tuplet 3/2 {g8 es8 gis8} bes16 cis'16 d'16 f'16~ \tuplet 6/4 {f'16 d'16 es'8 f'16 g'16} \tuplet 3/2 {bes'8 d''8 d''8~} 
      | \tuplet 5/4 {d''16 d''8 c''16 bes'16~} \tuplet 6/4 {bes'16 bes'8. g'16 es'16} d'16 c'16 c'8 bes8 bes8 
      | g8 g8 ges8 ges8 f4 e4~ 
      | e4. r8 r2\bar  ".."
    }
    >>
>>    
}
