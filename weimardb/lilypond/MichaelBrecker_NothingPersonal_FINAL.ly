\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Nothing Personal"
  composer = "Michael Brecker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \minor
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
      
      | g1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | c1:min7 | s1 | s1 | s1 | g1:min7 | s1 | s1 | s1 
      | es1:7 | s1 | d1:7 | s1 | g1:min7 | s1 | s1 | s1 
      | s1|
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


      \tempo 4 = 244
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. r8 a'8~ 
      | a'8 a'2.. 
      | d'2. e'8 f'8 
      | g'4. bes8 c'4 d'4 
      | e'4. c'4. r4 
      | r2. r8 f'8~ 
      | f'8 e'8~ e'8. c'16~ c'2 
      | r1 
      | r2. r8 g'8 
      | ges'4. c'8~ c'4. f'16 g'16 
      | ges'2. e'8 d'8 
      | c'4 d'8 e'8 ges'2~ 
      | ges'4. d'4. c'4~ 
      | c'2... g16~ 
      | g8 c'4. a4 c'4~ 
      | c'8 r8 r2. 
      | r1 
      | r8 des'8 c'8. des'16~ des'2~ 
      | des'4 r2 c'4~ 
      | c'4 b8 gis4 gis8 f4 
      | r2. r8. bes16 
      | aes8 b8 es'8 f'8 aes'8 bes'8 \tuplet 3/2 {b'4 aes'8} 
      | bes'8 aes'8 es'8 aes'4. g'8 ges'8 
      | f'8 e'8~ e'16 d'8 des'16 c'8 b8 bes8 c'8 
      \bar "||" \mark \default a4~ \tuplet 3/2 {a8 bes8 c'8} d'4~ \tuplet 6/4 {d'8 e'8 fis'16 g'16~} 
      | g'4~ g'16 a'16 bes'8 c''4~ \tuplet 5/4 {c''8 d''16 c''16 bes'16} 
      | a'2~ a'4~ a'16 g'16 f'16 e'16~ 
      | e'4 r2. 
      | r1 
      | g'8 es'8 aes'8 b'8 \tuplet 3/2 {a'4 f'8~} f'8 e'8 
      | \tuplet 3/2 {es'4 f'8} g'8 bes'8 f'8 des'8 aes4 
      | aes8 b8 bes8 es'4. d'8 des'8 
      | c'8 b8 bes8 c'8~ c'16 a8 fis16 \tuplet 3/2 {g4 c'8~} 
      | \tuplet 3/2 {c'8 a8 bes8} d'4 f'8 a'8 fis'16 g'8 a'16 
      | \tuplet 3/2 {bes'4 d'8} es'4 a'4 g'8 f'8 
      | e'4. d'4. c'8 bes8 
      | a4. a8~ a4~ \tuplet 3/2 {a8 bes8 c'8} 
      | \tuplet 5/4 {d'16 e'16 f'16 a'16 g'16} \tuplet 3/2 {ges'8 e'8 d'8} c'16 bes16 a8 r4 
      | r1 
      | r16 bes,8 des16 f8 c'8 des'8 es'8 f'8 g'8 
      | aes'8 bes'8 c''8 des''8 es''8 c''8 des''8 des''8~ 
      | \tuplet 3/2 {des''8 c''8 bes'8} a'8 c''8 bes'8 aes'8 g'8 g'8 
      | \tuplet 3/2 {ges'4 ges'8} f'8 f'16 e'16 \tuplet 3/2 {es'8 d'8 d'8} des'8 c'8 
      | b8 a8 bes8 gis8 a8 g8 fis8. g16~ 
      | g8 a8 bes4 c'8 d'8 e'4 
      | fis'8 g'8 a'4 bes'8 c''4 a'8~ 
      | a'8 g'8 d'8 c'8 r2 
      | r2 \tuplet 3/2 {g'8 gis'8 a'8~} a'4~ 
      \bar "||" \mark \default a'1 
      | des''4 ges'16 a'8 c''16~ c''8 bes'4 des''8 
      | c''4 f'16 b'8. bes'4 f'8. bes'16~ 
      | bes'16 a'8 a'16~ a'8. c''16 g'4 aes'8 g'16 ges'16 
      | b'16 a'8 ges'16~ ges'8 e'8 es'4 a'8 b'8 
      | bes'8 d'8 des'8 aes'8 es'8 des'8 aes4 
      | bes4 aes8 bes8~ bes16 b8 des'16~ des'16 es'8 f'16~ 
      | f'16 ges'8 bes'16 es''4. aes'8 des''8 r8 
      | r2. r8. cis''16\glissando  
      | d''4~ \tuplet 3/2 {d''8 c''8 bes'8} a'2~ 
      | a'2~ a'16 g'8 g'16~ g'16 a'8 a'16 
      | bes'8 bes'8 \tuplet 3/2 {c''4 c''8~} c''16 c''8 b'16 b'8 c''8 
      | b'8 b'8 bes'8 b'8 bes'8 bes'8 c''8 bes'8 
      | a'8 aes'8 g'8 b'8 bes'8 ges'8 f'8 e'8 
      | es'8 ges'8 a'8 b'8 bes'8 a'8 aes'8 g'8 
      | d'8 c'8~ c'16 a8 f16 g8 d8 \tuplet 3/2 {c4 f8} 
      | bes,4 es8 aes,4 r8 r4 
      | r2. b,8 es8 
      | fis8 bes8 c'16 es'8 f'16~ f'16 fis'8 gis'16 bes'8 c''8 
      | cis''8 d''8 c''8 cis''8 \tuplet 3/2 {bes'4 ges'8} \tuplet 3/2 {f'4 e'8} 
      | es'8 cis'8 d'8 c'8 bes8 c'8 \tuplet 3/2 {d'4 g'8} 
      | gis'8 a'8 \tuplet 3/2 {bes'4 gis'8} a'8 g'8 ges'8 a'8 
      | g'8 f'8 e'8 aes'8 ges'8 e'8 es'8 g'8 
      | f'8 es'8~ es'16 d'8 ges'16 e'8 d'8 des'8 f'8 
      \bar "||" \mark \default e'4. d'8 \tuplet 3/2 {c'8 bes4~} \tuplet 3/2 {bes8 c'8 d'8} 
      | \tuplet 3/2 {e'8 d'8 c'8} bes8 c'8 d'16 e'16 fis'8 g'16 a'16 bes'16 c''16~ 
      | c''1~ 
      | c''4. r8 r4 r8 d'8 
      | g'8 c''8 a'4 e'16 g'8 d'16~ d'16 c'8 g'16~ 
      | g'16 es'8 des'16~ des'8 aes8 f16 bes8 g16 aes8 bes8 
      | b8 des'8 es'8 bes'8 des''8 c''8 b'8 bes'8 
      | \tuplet 3/2 {aes'4 bes'8} b'8 des''8 bes'8 a'8 \tuplet 3/2 {aes'4 fis'8~} 
      | fis'16 g'8 a'16~ a'16 bes'8 c''16~ c''16 cis''8 d''16~ d''8 bes'8 
      | \tuplet 3/2 {g'8 b'8 c''8} a'4 f'16 a'8 bes'16~ bes'16 g'8 d'16~ 
      | d'16 gis'8 a'16~ a'16 f'8 d'16 gis'8 a'8 \tuplet 3/2 {f'4 d'8~} 
      | d'16 fis'8 g'16~ \tuplet 6/4 {g'16 e'4 c'16~} \tuplet 3/2 {c'8 f'8 ges'8} es'4 
      | e'8 f'8~ f'16 d'8 aes16~ aes16 es'8 e'16 des'8 r8 
      | r2 cis'8 d'8~ d'16 bes8 g16 
      | c'8 a8~ a16 ges8 f16 g8 fis8 \tuplet 3/2 {g4 c'8} 
      | a8 bes8 \tuplet 3/2 {d'4 f'8~} f'16 aes'8 bes'16 c''8 des''8~ 
      | des''16 es''8 c''16 aes'8 f'8 g'8. des'16~ des'8 bes8~ 
      | bes16 f'8 des'16~ des'8 aes8 \tuplet 3/2 {f8 g4} r4 
      | r4 es8 f16 fis16 \tuplet 3/2 {gis8 bes8 c'8} cis'16 es'16 f'16 fis'16 
      | \tuplet 3/2 {gis'8 bes'8 c''8} c''8 gis'8 \tuplet 3/2 {bes'8 c''8 c''8} \tuplet 3/2 {gis'8 bes'8 c''8} 
      | c''8 a'8 \tuplet 3/2 {bes'8 c''8 c''8} a'8 bes'16 c''16 c''8 a'8 
      | \tuplet 3/2 {bes'8 c''8 c''8} \tuplet 3/2 {a'8 bes'8 c''8} c''8 a'8 \tuplet 3/2 {bes'8 c''8 c''8} 
      | \tuplet 3/2 {a'8 bes'8 c''8} \tuplet 3/2 {c''8 a'8 bes'8} \tuplet 3/2 {des''8 c''8 a'8} bes'8 c''8 
      | \tuplet 3/2 {c''8 a'8 bes'8} \tuplet 3/2 {c''8 c''8 a'8} bes'8 c''16 c''16~ c''16 a'8 c''16~ 
      \bar "||" \mark \default c''2 d''4. c''8~ 
      | c''4 g'8 d'8 b8 c'8 f'8 r8 
      | r2 r16 bes'16\glissando  c''4.~^\markup{\left-align \small vib} 
      | c''4. c''8 a'8 f'8 c''8 c''8 
      | b'8 b'8 bes'8 bes'16 a'16~ a'8. a'16~ a'8 c''8 
      | \tuplet 3/2 {g'4 g'8} g'8 bes'8 a'8 aes'8 g'8 b'8 
      | bes'8 ges'8 f'8 e'8 es'8 f'4 b'8 
      | es''8 e''8 f''8 e''8 es''8 des''8 c''8 b'8 
      | a'8 a'8~ a'16 aes'8 fis'16 g'8 f'8 ges'8 e'8 
      | f'8 e'8 es'8 g'8 e'8 d'8 bes8 g8 
      | c'4 d'8 r8 r2 
      | r4 g16 a16 bes16 c'16 d'8 e'16 f'16 a'8 bes'8 
      | c''1~ 
      | c''8 a'16 e'16 d'16 c'16 d'16 e'16 a'8 c''4 bes'8 
      | c''4~^\markup{\left-align \small vib} \tuplet 3/2 {c''8 a'8 aes'8} \tuplet 3/2 {f'8 d'4} r4 
      | r2 r8 b,16 d16 \tuplet 3/2 {e8 aes8 bes8} 
      | des'16 es'16 f'16 g'16 bes'8 es''16 g''16 \tuplet 3/2 {aes''8 g''4~} g''8. es''16~ 
      | es''8 bes'8 g'8 es'4\bendAfter #-4  r8 r4 
      | r8 gis,4 es8 \tuplet 3/2 {cis4 es8} fis8 g16 bes16 
      | \tuplet 3/2 {c'8 es'8 f'8} \tuplet 3/2 {g'8 bes'8 c''8} \tuplet 3/2 {es''8 e''8 f''8~} f''4~ 
      | f''2 \tuplet 3/2 {d''8 c''8 bes'8} a'8 g'8 
      | f'8 e'8 d'2~ d'8 c'8 
      | bes8 a8 g4 r4 r8 f8 
      | e8 d8 c2 d8 e8 
      \bar "||" \mark \default d1~ 
      | d4. r8 r2\bar  ".."
    }
    >>
>>    
}
