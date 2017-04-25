\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "On Green Dolphin Street"
  composer = "Eric Dolphy"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
    \key es \major
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
      | f2:min7 bes2:7 | es1:maj | s1 
      | es1:maj | es1:maj | es1:min7 | s1 | f1:7/es | s2 e2:/es | es1:maj | s1 
      | f1:min7 | bes1:7 | es1:maj | s1 | aes1:min7 | d1:7 | ges1:maj | s1 
      | es1:maj | s1 | es1:min7 | s1 | f1:7/es | s2 e2:/es | es1:maj | s1 
      | f2:min7 f2:min/es | d2:min5-7 g2:9- | c2:min7 c2:min/bes | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 
      | es1:maj | s1 | es1:min7 | s1 | f1:7/es | s2 e2:/es | es1:maj | s1 
      | f1:min7 | bes1:7 | es1:maj | s1 | aes1:min7 | des1:7 | ges1:maj | f2:min7 bes2:7 
      | es1:maj | s1 | es1:min7 | s1 | f1:7/es | s2 e2:/es | es1:maj | s1 
      | f2:min7 f2:min/es | d2:min5-7 g2:9- | c2:min7 c2:min/bes | a2:min5-7 d2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 
      | es1:maj|
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


      \tempo 4 = 173
      \set Score.currentBarNumber = #-2
     
      \bar "||" \mark \default r4 g''2. 
      | es''16\glissando  f''8.~ f''4 e''8 d''16 des''16 c''8 b'8 
      | bes'8 g'8 \tuplet 3/2 {aes'8 bes'8 aes'8~} aes'16 g'16 a'16 ges'16~ \tuplet 3/2 {ges'8 d'8 f'8} 
      \bar "||" \mark \default es'8 g8 \tuplet 3/2 {aes4 bes8~^\markup{\left-align \small vib}} bes4. r8 
      | r8 g8 bes16 d'16 f'8 d'8 es'8 f'8 g'8 
      | \tuplet 3/2 {bes'4 des''8~} des''8 b'8 aes'2~^\markup{\left-align \small vib} 
      | aes'2~ aes'8 r8 r4 
      | r8 a'16 bes'16 b'16 c''16 b'16 bes'16 a'16 bes'16 b'16 c''16 \tuplet 5/4 {b'16 bes'16 a'16 bes'16 a'16} 
      | aes'4 aes'16 a'16 bes'16 a'16~ a'8. g'16 d'8 f'8 
      | es'8 bes8 \tuplet 3/2 {g4 aes8} bes4. r8 
      | r2 r8. bes'16 es''8 r8 
      \bar "||" r2 \tuplet 3/2 {d''4 es''8} d''8 e''8~ 
      | \tuplet 3/2 {e''8 bes'8 g'8~} g'16 aes'16 bes'16 aes'16 g'8 a'16 g'16 f'16 d'8 f'16 
      | es'8 g8 aes8 bes8 \tuplet 6/4 {g8. aes16 bes16 d'16} f'8 d'8 
      | es'8 f'16 g'16 \tuplet 3/2 {bes'4 c''8} \tuplet 3/2 {des''4 c''8} \tuplet 3/2 {bes'4 g'8} 
      | aes'8 r8 r4 \tuplet 3/2 {aes'8 bes'8 g'8} \tuplet 3/2 {ges'8 f'8 es'8} 
      | cis'8 r8 r2. 
      | r8 f8 \tuplet 3/2 {g8 bes8 des'8} f'8 es'8 des'8 c'8 
      | g8. es'16~ es'16 g'8 bes'16 aes'4 es'8 f'8~ 
      \bar "||" f'8 es'8 g8 aes8 bes4. r8 
      | r2. r8 bes'8 
      | \tuplet 6/4 {g'16 es'16 e'8 ges'16 aes'16} bes'2 aes'8. aes'16~ 
      | aes'8 aes'8 \tuplet 3/2 {ges'4 ges'8~} ges'16 ges'16 f'4.~ 
      | f'8 c'16 es'16 \tuplet 3/2 {g'8 bes'8 g'8} a'16 g'16 f'16 es'16 d'8 f'8 
      | d'16 es'16 ges'16 a'16 b'16 cis''16 d''16 e''16 \tuplet 5/4 {es''16 d''16 cis''16 b'16 a'16} g'8 bes'8 
      | aes'8 r8 r4 aes'16 a'16 bes'16 a'16~ \tuplet 6/4 {a'16 g'16 es'8 d'16 es'16~} 
      | es'16 f'16 d'16 es'16~ es'16 d'16 c'16 a16 \tuplet 3/2 {g8 f8 es8} bes,32 f16 d16. b,32 ges,32~ 
      \bar "||" ges,16 bes,16 es16 des16 bes,16 d16 des16 bes,16 \tuplet 3/2 {g,8 f,8 g,8} bes,16 es16 g8 
      | \tuplet 6/4 {ges8 bes8 es'16 e'16} f'8 d'16 e'16 \tuplet 6/4 {g'16 a'16 b'16 c''16 des''8} a'8 aes'8~ 
      | aes'4 \tuplet 5/4 {aes'8 c'16 es'16 g'16} f'16 es'16 d'16 es'16 \tuplet 6/4 {f'8 es'16 d'16 c'16 b16} 
      | g8 f16 es16 des16 c16 bes,16 g,16 \tuplet 5/4 {fis,8 d16 f16 e16~} \tuplet 6/4 {e16 bes8 d'16 f'16 g'16} 
      | f'8 r8 \tuplet 6/4 {r8. bes'16 a'16 g'16} \tuplet 3/2 {d'8 f'8 es'8} \tuplet 6/4 {e'16 ges'16 bes'16 c''8 b'16~} 
      | b'8 bes'8 aes'8.\bendAfter #-4  c'16 es'8 g'8 f'16 ges'16 f'16 es'16~ 
      | \tuplet 6/4 {es'16 d'8 es'16 d'16 es'16} f'8. d'16 \tuplet 3/2 {es'4 bes'8~} bes'8\bendAfter #-4  r8 
      | r4 bes'2.~ 
      \bar "||" \mark \default bes'2.. r8 
      | r4 \tuplet 3/2 {d''8 g''8 d''8} d''8 c''8 \tuplet 3/2 {bes'4 g'8} 
      | \tuplet 3/2 {aes'8 bes'8 aes'8} g'8 bes'16 g'16 f'16 es'8 f'16~ f'16 f'8 es'16 
      | ges'8. es'16 \tuplet 3/2 {f'4 aes'8~} aes'8\bendAfter #-4  r8 r4 
      | r4 a'8 bes'8~ \tuplet 5/4 {bes'16 a'16 bes'16 a'16 g'16} f'8. e'16~ 
      | e'16 es'8 f'16 es'8 b8\glissando  \tuplet 3/2 {c'4 aes8} \tuplet 5/4 {g8. f16 es16~} 
      | es8 d8 f8. d16 es8. bes16~^\markup{\left-align \small vib} bes4 
      | r1 
      \bar "||" bes'8. g'16 aes'8 bes'8 \tuplet 3/2 {fis'8\glissando  g'4} g'8 r8 
      | r4 r8 bes'8 \tuplet 3/2 {aes'8 g'4} f'8 d'8 
      | es'8 f'16 es'16 \tuplet 3/2 {d'4 c'8~} \tuplet 3/2 {c'8 bes8 g8} g8 f8 
      | \tuplet 3/2 {es8 d4} f8 d8 es8 f8 g8. g16 
      | \tuplet 3/2 {bes4 g8} \tuplet 3/2 {bes8 d'8 f'8} \tuplet 3/2 {d'4 es'8} e'8 g'8 
      | bes'8 c''16\glissando  des''16 c''8 bes'8 aes'8. bes'16~ bes'8 ges'8 
      | r2 \tuplet 3/2 {c''8 des''8 e'8} f'8 g'8 
      | \tuplet 3/2 {aes'8 a'8 aes'8} \tuplet 6/4 {g'8 a'16 aes'16 g'16 f'16} d'4 f'8 r8 
      \bar "||" r2 \tuplet 3/2 {g'8 bes'4~} bes'16 g'16 bes'8~ 
      | bes'16 g'16 a'16 bes'16 g'8 bes'8 g'8 bes'8 \tuplet 3/2 {g'8 bes'4~} 
      | bes'16 g'8 g'16 bes'8 c''4. c''16 cis''16 d''16 e''16 
      | \tuplet 6/4 {d''16 des''16 c''16 d''16 e''8~} e''8 b'8 \tuplet 6/4 {c''16 d''16 es''8 d''16 des''16} c''4~ 
      | c''16 c''16 d''16 es''16 \tuplet 6/4 {e''16 es''16 d''16 des''16 b'8} bes'16 a'16 g'16 a'16 \tuplet 5/4 {bes'16 aes'16 g'16 a'16 aes'16} 
      | \tuplet 6/4 {g'16 f'16 d'8 es'16 f'16~} \tuplet 6/4 {f'16 es'8 d'16 c'16 b16} \tuplet 3/2 {g8 f8 es8} \tuplet 6/4 {d16 f16 d16 es8 e16} 
      | d16 c16 bes,16 a,16 g,8 bes,16 g,16 \tuplet 3/2 {aes,8 b,8 des8} \tuplet 3/2 {es8 f16 r8.} 
      | \tuplet 6/4 {r4 des16 es16~} es16 d16 des16 c16 g,16 g,8 bes,16 f,16 g,16 a,16 bes,16 
      \bar "||" c16 es16 cis16 d16 \tuplet 5/4 {des16 c16 b,16 aes,16 g,16~} \tuplet 6/4 {g,16 a,8 g,16 bes,16 des16} e16 ges16 bes16 ges16 
      | \tuplet 6/4 {bes16 d'16 es'8 e'16 g'16} f'16 d'16 es'32 f'32 g'32 aes'32~ aes'16 ges'16 f'16 es'16 d'8 f'16 d'16 
      | \tuplet 6/4 {e'16 g'16 e'16 es'16 d'16 c'16} bes16 aes16 g16 f16 \tuplet 6/4 {es16 d8 c16 bes,16 aes,16} \tuplet 6/4 {g,8 f,16 c16 es16 ges16~} 
      | ges16 bes16 c'32 e'32 g'32 a'32 b'16 des''16 es''4. \tuplet 3/2 {d''8 cis''8 bes'8} 
      | g'4 \tuplet 3/2 {bes'4\bendAfter #-4  g'8~} \tuplet 3/2 {g'8 aes'8 bes'8} \tuplet 6/4 {aes'8 g'8 a'16 g'16} 
      | d'4 f'4~ f'16 d'8 es'16 g'8 bes'8 
      | d''8 c''16 a'16 es'4 f'8 r8 r8 bes'16 g'16 
      | \tuplet 6/4 {d'4 d'16 e'16} \tuplet 3/2 {f'4 d'8} es'8 f'8 es'16 d'8 c'16 
      \bar "||" bes8 r8 r2.\bar  ".."
    }
    >>
>>    
}
