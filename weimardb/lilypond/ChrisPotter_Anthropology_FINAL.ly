\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Anthropology"
  composer = "Chris Potter"
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
      | s2 r2 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | s2 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | s2 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | s2 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | d2:min7 g2:7 | c2:min7 f2:7 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:6 g2:7 | c2:min7 f2:7 | bes2:6 g2:min7 | c2:min7 f2:7 | f2:min7 bes2:7 | es2:7 aes2:7 | c2:min7 f2:7 | bes1:6 
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


      \tempo 4 = 245
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 bes8~ 
      \bar "||" \mark \default bes8 d'4 f'8 r2 
      | es'4 g'4 bes'8 r8 r4 
      | r2 \tuplet 3/2 {f'4 g'8} r4 
      | \tuplet 3/2 {es'4 f'8} r4 \tuplet 3/2 {des'4 es'8} r4 
      | r1 
      | r4 a'8 aes'8 \tuplet 3/2 {g'8 ges'8 des'8} a8 ges8 
      | f4.. g16~ g8 r8 r4 
      | r16 fis16\glissando  g8 \tuplet 3/2 {c'4 a8~} a8 g8 f4 
      \bar "||" r1 
      | r2 \tuplet 3/2 {aes4 g8} aes8 g16 f16~ 
      | f8 es8 d8 c8 bes,8 b,4 ges16 aes16 
      | g8 es8 d4 ges8 e8 f8 d8 
      | bes,4 \tuplet 3/2 {d4 aes,8~} aes,4 r4 
      | r1 
      | r2 r8 f8 bes8 d'8 
      | es'8 d'8 es'8 f'8 \tuplet 3/2 {cis'8\glissando  d'4~} d'8 c'8~ 
      \bar "||" c'8. d'16~ d'8 c'8 d'4 c'8 r8 
      | r1 
      | r2 r8. c'16 b8 es'8 
      | e'8 gis'8 \tuplet 3/2 {a'4 aes'8} g'8 ges'8 f'8 e'8 
      | d'8 des'8 c'8 b8 bes8 d'8 a8 f8 
      | c'8 a8 \tuplet 3/2 {bes8 d'8 ges'8} a'8 fis'8 g'8 a'8 
      | \tuplet 3/2 {bes'8 c''8 bes'8} a'8 aes'8 g'8 es'8 b8 aes8 
      | \tuplet 3/2 {f'8 e'8 des'8} \tuplet 3/2 {a4 g8} aes4.^\markup{\left-align \small vib} ges8 
      \bar "||" f8 es8 \tuplet 3/2 {d4 c8} b,8 bes8 g4 
      | r1 
      | r8 e16 f16 a8 c'8 e'8 des'8 aes8 e8 
      | es8 f8 g8 bes8 ges'8 des'8 a4 
      | ges16 aes8 c'16 es'8 g'8 bes'8 d'8~ \tuplet 3/2 {d'8 ges'8 a'8~} 
      | a'16 des''8 des'16 e'8 aes'8 \tuplet 3/2 {b'4 aes'8} bes'8 ges'8~ 
      | ges'16 es'8 c'16 f'8 a'8 aes'8 e'8~ e'16 b8 aes16 
      | bes8 g8 \tuplet 3/2 {gis4 a8} des'8 e'8 \tuplet 3/2 {aes'8 g'8 ges'8} 
      \bar "||" \mark \default f'8 es'8 d'8 c'8 bes8 c'8 d'8 g'8 
      | c'8 d'8 \tuplet 3/2 {es'4 g'8} c''8 f'4 r8 
      | r1 
      | r8 d''8 \tuplet 3/2 {c''8 g'8 bes'8} a'8 ges'8 f'8 es'8 
      | d'8 e'8 ges'8 a'8 e''8 d''8 r4 
      | r2 f''8 e''8 es''8 d''8 
      | des''8 a'8 ges'8 e'8 \tuplet 3/2 {b'8 cis''8 b'8} g'8 b'8 
      | bes'8 g'8 es'4 \tuplet 3/2 {a'8 b'8 a'8} ges'8 a'8 
      \bar "||" aes'8 f'8 r4 g'8 r8 r4 
      | g'8 a'8 bes'8 c''8\glissando  gis'8 a'8 f'8 c''16 d''16~ 
      | d''4 f'4 g'4 r4 
      | r1 
      | r2. r8 f'8 
      | \tuplet 3/2 {aes'4 f'8~} f'4 r2 
      | r4 \tuplet 3/2 {a'8\glissando  c''4~^\markup{\left-align \small vib}} c''4 aes'8 f'8\glissando  
      | aes'4 \tuplet 3/2 {f'4 d'8~} d'4\bendAfter #-4  r4 
      \bar "||" r2 r8 e''4 g''8 
      | \tuplet 3/2 {gis''8 e''8 c''8} gis'4 \tuplet 3/2 {a'8 bes'8 c''8} d''8 des''16 c''16~ 
      | \tuplet 3/2 {c''8 b'8 bes'8} \tuplet 3/2 {a'4 aes'8~} aes'8 g'16 ges'16 f'8 a'8 
      | e'8. cis'16 d'8 e'8 f'8 g'8 aes'8 g'8 
      | \tuplet 3/2 {aes'8 g'8 d'8} \tuplet 3/2 {bes4 g8} \tuplet 3/2 {c'4 a8} bes8 d'16 ges'16 
      | a'8 c''4 fis'8 r2 
      | r4 \tuplet 3/2 {g'8 b'8 d''8} des''8 a'8 ges'16 aes'16 b'8 
      | e'8 ges'8 a'8 aes'8 \tuplet 3/2 {es'8 e'8 g'8} ges'8 e'8 
      \bar "||" f'8 es'8~ \tuplet 3/2 {es'8 d'8 c'8} b8 gis'8 \tuplet 3/2 {bes'8 g'8 d'8} 
      | f'8 es'8 bes4 d'8 d'8 a8 c'8~ 
      | c'8 bes4 f8 \tuplet 3/2 {a4 g8} r4 
      | r2. r8. e16 
      | ges8 gis8~ gis16 a8 b16 des'8 es'8 e'8 fis'8 
      | \tuplet 3/2 {g'4 es'8} bes8 ges8 des'8 c'8 b8 a8 
      | aes8 ges8 f8 e8 es8 e8 ges8 gis8 
      | a8 g8 aes8 bes8 b16 des'8 es'16~ es'8 e'8 
      \bar "||" \mark \default ges'8 gis'8 a'8 b'8 cis''4^\markup{\left-align \small vib} f'8 fis'8 
      | bes'8 g'8 gis'8 a'4 e'8 aes'8 ges'8 
      | f'8 es'8 d'8 des'8 b8 r8 r8 c'8~ 
      | c'8 es'8 des'8 r8 r8 e'8~ e'16 g'8 ges'16 
      | r4 r8 aes'4 b'4 a'8~ 
      | \tuplet 3/2 {a'8 ges'8 b'8~} b'8 g'8 d''8. des''16 r4 
      | r2 a'8 c''8 b'8 aes'8 
      | g'8 bes'4 gis'8 a'4 e'8 aes'16 g'16 
      \bar "||" ges'8 es'8 bes8 ges8 \tuplet 3/2 {b8 cis'8 es'8} f'16 g'16 a'16 e'16~ 
      | \tuplet 3/2 {e'8 ges'8 a'8~} a'8 b'8 gis'8 a'8 des''8 es''8~ 
      | es''4 des''8 es''4. des''8 b'8~ 
      | b'8. a'16~ a'8 b'4. r4 
      | r8 a'8 \tuplet 3/2 {aes'4 ges'8} \tuplet 3/2 {aes'4 ges'8} e'8 d'8 
      | e'4. d'8 des'8 b8 r4 
      | r2 r8 b,8 \tuplet 3/2 {d8 ges8 a8} 
      | f8 ges8 bes8 des'8 es'8 ges'8 aes'8 aes'8 
      \bar "||" b'16 c''16 d''16 c''16~ c''16 b'16 a'8 gis'8 a'16 b'16~ b'16 c''8 a'16~ 
      | \tuplet 5/4 {a'16 gis'16 gis'16 es'16 e'16~} e'16 g'8 fis'16~ fis'8. d''16\glissando  e''4 
      | r2 a''2~^\markup{\left-align \small vib} 
      | a''8 r8 r4 \tuplet 3/2 {es'''4 c'''8~} c'''8 r8 
      | r1 
      | r8 bes''8 r2 r8 g''8~ 
      | g''8 es''4.\bendAfter #-4  d''8 c''8 g'4 
      | bes'4 a'8 c''8 f''4 r4 
      \bar "||" r4 bes''4 g''4 es''8 c''8~ 
      | c''8 f''8 d''8 bes'8 g'4 c''8 a'8 
      | f'8 g'8 a'8 d''8 b'8 aes'8 e'8 des'8 
      | ges'8 es'8 b8 gis4 a8 des'8 es'8 
      | \tuplet 3/2 {ges'4 aes'8} f'4. bes'8 r4 
      | r2 e'8 ges'8 es'8 aes'8 
      | d'8 e'8 des'8 ges'8 c'8 d'8 es'8 f'8 
      | ges'8 aes'8 ges'8 b'4 a'8 aes'8 ges'8 
      \bar "||" \mark \default f'8 g'8 e'8 f'8 bes'8 gis'8 e'8 cis'8 
      | es'8 f'8 es'8 aes'4 f'8 des'4 
      | des'4 es'8 des'8 ges'8 es'8~ es'16 bes8 ges16 
      | b8 c'8 b8 f'8 r2 
      | r8. a,16 des16 e16 ges16 a16 \tuplet 3/2 {aes4 ges8~} \tuplet 3/2 {ges8 f8 e8} 
      | es8 f8 g16 bes8 des'16 ges'8 des'8 gis16 a16 aes16 ges16 
      | f8 g4 bes4. g4 
      | r1 
      \bar "||" r8 des8 ges8 bes8 b8 cis'8 es'8 fis'8 
      | \tuplet 3/2 {e'4 b8} aes4 e16 a8 cis'16 d'8 ges'8~ 
      | ges'16 a'8 ges'16~ ges'16 d'8 c'16~ \tuplet 3/2 {c'8 b8 d'8~} d'16 f'8 aes'16~ 
      | \tuplet 3/2 {aes'8 fis'8 g'8~} g'16 e'8 c'16 ges'4 e'16 f'8 d'16~ 
      | d'16 bes8 f16 aes'4~ \tuplet 3/2 {aes'8 g8 bes8} c'8 des'8 
      | bes8 ges8~ ges16 es8 c16 des4.^\markup{\left-align \small vib} a8 
      | g16 f8 c16 es8 f4 d8 r4 
      | r2 r8. b16 c'8 d'8~ 
      \bar "||" d'8 e'8~ e'8. fis'16~ fis'8 g'4. 
      | gis'8.\glissando  a'16~ a'8 b'8~ b'8.\glissando  c''16~ c''8.\glissando  cis''16~ 
      | cis''2 a'4. e'8~ 
      | e'8 r8 r2. 
      | b'16 des''8.~ des''4 bes'2 
      | ges'2 bes'4 des''4 
      | des''2 a'4. es''8~ 
      | es''4. des''8 \tuplet 3/2 {a'4 aes'8} ges'8 e'8 
      \bar "||" f'8 g'8 bes'8 c''8 d''4\glissando  r4 
      | r2 f''8 e''8 f''8 g''8~ 
      | g''16 f''16 es''8 d''8 c''8 b'8 aes'8 g'8 f'8 
      | es'8 f'4 bes'8 \tuplet 3/2 {d''4 f'8} \tuplet 3/2 {g'4 aes'8~^\markup{\left-align \small vib}} 
      | aes'8 aes'8 g'8 ges'8 f'4. des'8~ 
      | des'4~ des'16 c'8 b16 bes8 r8 r4 
      | r8. f16 bes8 d'8 es'8 d'8 \tuplet 3/2 {bes4 f8} 
      | c'4 c'2 bes8 g8~ 
      \bar "||" \mark \default g8 r8 r2.\bar  ".."
    }
    >>
>>    
}
