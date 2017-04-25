\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul (Alternate Take)"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      
      | es2:min es4:min7+maj es4:min7 | aes1:7 | es2:min es4:min7+maj es4:min7 | aes1:7 | des1:/aes | f2:5+/aes g2:5+/aes | f1:min7/aes | e2:min7 a2:7 
      | aes1:sus4 | s1 | aes1:7 | b1:11+.9 | f2:5+/aes g2:5+/aes | f2:5+/aes g2:5+/aes | f2:5+/aes aes2:9- | des2 f4:13-.9- bes4:775+ 
      | es2:min es4:min7+maj es4:min7 | aes1:7 | es2:min es4:min7+maj es4:min7 | aes1:7 | des1:/aes | f2:5+/aes g2:5+/aes | f1:min7/aes | e2:min7 a2:7 
      | aes1:sus4 | s1 | aes1:7 | b1:11+.9 | f2:5+/aes g2:5+/aes | f2:5+/aes g2:5+/aes | f2:5+/aes aes2:9- | des2 e4:min7 a4:7 
      | d1:maj | e1:min7 | d1:/fis | g2:min7 c2:7 | d2:maj f2:7 | bes2:maj des2:7 | ges2:maj a2:7 | d1:maj 
      | d1:min5-7 | g1:9- | c1:maj | es1:7 | aes2:7 b2:7 | e2:maj g2:7 | c2:maj b2:7 | bes2:sus4 bes2:7 
      | es2:min es4:min7+maj es4:min7 | aes1:7 | es2:min es4:min7+maj es4:min7 | aes1:7 | des1:/aes | f2:5+/aes g2:5+/aes | f1:min7/aes | e2:min7 a2:7 
      | aes1:sus4 | s1 | aes1:7 | b1:11+.9 | f2:5+/aes g2:5+/aes | f2:5+/aes g2:5+/aes | f2:5+/aes aes2:9- | des2 f4:7 bes4:7 
      | es2:min es4:min7+maj es4:min7|
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


      \tempo 4 = 138
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8. es'16~ es'8 f'8 \tuplet 6/4 {es'4 e'16 f'16~} 
      | f'4. es'8~ es'16 f'8 es'16~ \tuplet 3/2 {es'8 ges'8\glissando  bes'8~} 
      | bes'8 bes'2.. 
      | r4 r8 a'8\glissando  c''4~ \tuplet 3/2 {c''8 aes'8 f'8} 
      | es'2 r4 \tuplet 3/2 {r8 aes'8 bes'8} 
      | aes'8 aes'16\glissando  a'16 aes'4 g'8. aes'16~ aes'8 b'8 
      | es''2^\markup{\left-align \small vib} r4 r16 des''16 c''16 bes'16 
      | a'2~ a'8 g'16 ges'16 e'16 es'8. 
      | des'16 es'8. bes4. r8 r4 
      | r16 c''16\glissando  des''8~ \tuplet 3/2 {des''8 b'8 bes'8~} bes'16 bes'8 ges'16~ \tuplet 3/2 {ges'8 ges'8 des''8~} 
      | des''16 es'16 f'8~ f'8. f'16~^\markup{\left-align \small vib} f'4~ \tuplet 6/4 {f'4 es'16 f'16} 
      | \tuplet 7/8 {aes'16 ges'32 es'16 des'32 b32~} b16 bes32 a16. c'32 b32 \tuplet 6/4 {aes8 b16 a16 g16 ges16} e16 es16 r8 
      | r4 r8 des'8 es'8. f'16~ f'8 ges'8\glissando  
      | aes'2~ aes'8. aes'16~ aes'8 aes'8 
      | aes'8 des''4. aes'8 es'8~ es'16 es'16 f'16 des'16~ 
      | des'8 r8 r4 \tuplet 3/2 {es'8 ges'4} f'16\glissando  ges'8. 
      \bar "||" es'2 f'4 es'8. f'16~ 
      | f'4. r8 r8. es'16 f'16 es'16 d'16 es'16\glissando  
      | \tuplet 3/2 {ges'8 bes'4~} bes'8 bes'8~^\markup{\left-align \small vib} \tuplet 6/4 {bes'4 ges'16 bes'16} bes'16\glissando  des''8.~ 
      | \tuplet 5/4 {des''8\glissando  bes'16 aes'16 ges'16} \tuplet 6/4 {a'8 ges'8 f'16 es'16~} \tuplet 6/4 {es'16 aes'16 ges'8 es'16 des'16} f'8 c'8 
      | r4 r8 aes'8~ aes'16 a'16\glissando  bes'8 \tuplet 6/4 {aes'4 aes'16 a'16~} 
      | a'8 aes'4 g'4 aes'4 es''16\glissando  f''16~ 
      | f''8 c''8 es''8 c''4 aes'8 c''16 aes'16 f'8 
      | r8. a16 \tuplet 7/8 {b32 des'16 d'32 e'32 ges'32 g'32} a'32 b'32 a'32 g'16 e'32 d'32 des'32 b16 a16 aes16 g16 
      | r4 \tuplet 6/4 {r8. es'8 des''16~} \tuplet 6/4 {des''8. des''8 c''16} b'16 bes'8 bes'16~ 
      | bes'4. ges'8 des''4\bendAfter #+4  c''16 des''16 e'16\glissando  f'16~^\markup{\left-align \small vib} 
      | f'4. r8 r8. ges'16 \tuplet 5/4 {aes'16 bes'16 des''16 d''16 b'16} 
      | a'8. aes'16 g'16 b'16 a'16 g'16 ges'16 a'16 f'16 e'16 \tuplet 6/4 {es'8 f'8 c'16 es'16} 
      | d'8 r8 r4 r8 des'8 \tuplet 3/2 {es'8 f'8 aes'8~} 
      | aes'4. aes'4 aes'4 des''8 
      | aes'4 \tuplet 3/2 {es'4 es'8~} \tuplet 6/4 {es'8 es'8. f'16~} f'8 des'8~ 
      | des'8 r8 r2. 
      \bar "||" r4 r8. d'16 \tuplet 3/2 {e'4 ges'8~} ges'8 g'8 
      | a'8. a'16~ a'2~ a'8 a'8~ 
      | a'16 b'16\glissando  d''8~ d''8. d''16~ d''8 d''8~ d''8. a'16~^\markup{\left-align \small vib} 
      | a'4. r8 r4 \tuplet 3/2 {r8 a'8 g'8} 
      | ges'16 a'8.~ a'4 \tuplet 3/2 {f'8 a'4~} a'4 
      | f'8 d'8~ \tuplet 3/2 {d'8 f'8 es'8~} es'8 es'4 des'8 
      | bes4.^\markup{\left-align \small vib} ges8 \tuplet 6/4 {a16\bendAfter #+4  bes16 a16 aes16 g16 b16} \tuplet 3/2 {a8 ges8 e8} 
      | ges4 \tuplet 3/2 {g8 e8 aes8} e16 a16 ges16 d16 c16 ges16 a8 
      | r4 r8 d'8 e'16 f'8. \tuplet 3/2 {g'4 aes'8~} 
      | \tuplet 6/4 {aes'8 g'8\glissando  aes'16 bes'16~^\markup{\left-align \small vib}} bes'4.. a'16 aes'16 f'16 es'8 
      | d'16 des'16 c'16 b16 \tuplet 6/4 {aes16 g8 a16 b16 d'16~} d'32 aes'16 g'8 g'32~ \tuplet 6/4 {g'16 b'8. g'16 e'16} 
      | d'16 c'8. bes16 es'16 des'16 bes16 \tuplet 6/4 {f16 aes8 f16 g16 c'16} a16 bes16 des'16 f'16 
      | \tuplet 6/4 {aes'16 es'8 f'16 g'16 aes'16} es'16 des'16 c'16 es'16 b8 a8 r4 
      | \tuplet 5/4 {r8 b16 e'16 aes'16} b'4. a'16 g'16~ \tuplet 6/4 {g'16 ges'16 f'8 g'16 a'16} 
      | b'16 d''16 des''16 b'16~ b'8 g'16 e'16 \tuplet 6/4 {c'4 des''16 b'16} \tuplet 3/2 {aes'4 ges'8} 
      | f'16 e'16 es'16 f'16 c'16 es'16 d'16 c'16 bes16 a16 aes16 b16 bes16 ges16 f16 es16 
      \bar "||" \mark \default aes16 ges16 es16 des16 \tuplet 3/2 {f8 des8 es8~} \tuplet 6/4 {es4 f'16 es'16} f'4~^\markup{\left-align \small vib} 
      | f'4 es'16 f'8. \tuplet 3/2 {es'4 aes'8} bes'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r4 r8 bes'8\glissando  c''4~ 
      | c''2~ c''8. aes'16 c''16 aes'16 c''16 aes'16~ 
      | aes'4~ \tuplet 3/2 {aes'8 f'8 es'8} f'16 es'4..~^\markup{\left-align \small vib} 
      | es'4 es'16 des'8. aes16 es'16 des'16 b16 \tuplet 6/4 {bes16 a8 des'16 b16 a16~} 
      | a16 aes16 f16 d16 f4 r4 r8 g16 a16 
      | b16 d'16 b16 g16 des'8. g'16 a'16 b'16 des'4. 
      | es'8 des'8 des''4~ des''16 b'16 bes'8 bes'4~^\markup{\left-align \small vib} 
      | bes'4 des''4\bendAfter #+4  c''16 des''8 es'16\glissando  f'4~ 
      | f'8 f'4.^\markup{\left-align \small vib} r2 
      | r8 f'16 es'16~ es'16 f'16 ges'8 f'8 des'4.~^\markup{\left-align \small vib} 
      | des'2~ \tuplet 3/2 {des'8 bes8 es'8} g'16 a8.~ 
      | a4~ a16 ges16 aes16 b16 g4~ g16 des16 es16 g16~ 
      | g8 des8 aes4. f4 r8 
      | r4 ges'4 f'16\bendAfter #+4  ges'8. es'4~^\markup{\left-align \small vib} 
      \bar "||" \mark \default es'2 r2\bar  ".."
    }
    >>
>>    
}
