\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "E.S.P."
  composer = "Miles Davis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \major
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
      
      | e1:13-.9+11+ | e1:13-.9+11+ | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | des1:11+.9 | g1:min7 | des2:min7 ges2:7 | f1:maj 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | des1:11+.9 | g1:min7 | des2:min7 ges2:7 | f1:maj 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | des1:11+.9 | g1:min7 | des2:min7 ges2:7 | f1:maj 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | des1:11+.9 | g1:min7 | des2:min7 ges2:7 | f1:maj 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | des1:11+.9 | g1:min7 | des2:min7 ges2:7 | f1:maj 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | d1:min9 | g1:7 | g1:min7 | ges1:7 
      | e1:13-.9+11+ | s1 | f1:maj | s1 | e1:13-.9+11+ | s1 | es1:maj11+.9 | s1 
      | d1:7 | es1:maj11+.9 | e1:7 | f2:maj es2:maj | des1:11+.9 | g1:min7 | des2:min7 ges2:7 | f1:maj 
      | e1:13-.9+11+ | s1 | f1:maj|
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


      \tempo 4 = 291
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 g'8 aes'4. g'8~ 
      | g'8.\glissando  fis'16~ fis'8 e'8 f'8. g'16~ g'4 
      | r2 f'4 g'4 
      | \tuplet 3/2 {fis'4\bendAfter #+4  g'8~} g'8 e'8 f'8 g'4 aes'8~ 
      | aes'8 e'4 g'4 fis'8\bendAfter #+4  g'8 e'8 
      | \tuplet 3/2 {f'4 g'8~} g'4. r8 r4 
      | r4 es'8 d'8 es'8 f'8 g'8 a'8 
      | bes'8 a'8 aes'8 bes'8 b'8 c''16 d''16~ d''8. d''16~ 
      | d''4. es''8~ es''2~ 
      | es''4 d''8 a'8 aes'8 r8 r4 
      | r4 e''2~ e''8. c''16 
      | bes'8 r8 r2. 
      | g'4 a'8 bes'8 \tuplet 3/2 {b'8 c''8 cis''8~} cis''16 d''8 e''16~ 
      | e''8 cis''8 d''8 c''8 b'8 a'8 g'8. a'16 
      | bes'8 b'8 a'8. g'16~ g'8 e'8 f'8 dis'8 
      | e'8 g'8 bes'8 c''16 cis''16~ cis''16 b'8 c''16~ c''8 b'8 
      \bar "||" bes'16 a'8 gis'16~ gis'8 e'8 r2 
      | r4 r8. d'16~ d'16 dis'8 e'16 f'4~ 
      | f'8 g'8\glissando  ges'8 e'8 f'8 g'8 b'8 a'8 
      | g'8 a'8 bes'8 gis'8 a'8 g'8 aes'8 bes'16 b'16~ 
      | \tuplet 3/2 {b'8 c''8 cis''8} d''8 dis''8~ dis''4. r8 
      | r1 
      | r8 aes'8~ aes'16 bes'8 b'16~ b'16 f''16 fis''16 g''16 aes''16 bes''16 c'''16 des'''16 
      | es'''4 r2 r8. cis'''16~ 
      | cis'''8\glissando  d'''8~ d'''2\glissando  dis'''4~ 
      | dis'''2. \tuplet 3/2 {e'''4\bendAfter #+4  es'''8~} 
      | es'''2 r2 
      | r2 d'''8 es'''4 des'''8 
      | des'''8 c'''8 a''8 g''16 e''16~ e''8. b''16~ b''8 g''8~ 
      | g''8. e''16~ e''16 d''8 e''16~ e''8 f''8 es''16 c''16 e''8 
      | d''8 c''8 cis''8 b'8 \tuplet 3/2 {c''8 bes'8 b'8~} b'8 a'8 
      | bes'8 gis'8 \tuplet 3/2 {a'8 g'8 aes'8~} aes'16 f'8 g'16~ g'8 e'8 
      \bar "||" \mark \default f'4~ f'16 d'8 dis'16~ dis'4 r4 
      | r8 g'8\glissando  fis'8 e'8 f'8 g'8 gis'16 bes'8 b'16~ 
      | b'16 c''8 cis''16 d''4 dis''4~ \tuplet 3/2 {dis''8 e''8 f''8~} 
      | f''8 r8 r4 g''8. fis''16\bendAfter #+4  g''8 r8 
      | r4 r8 e''8 dis''2 
      | gis'4 e'4 b4. g'8\glissando  
      | ges'4~ ges'16 d'8 f'16~ f'8 d'8 es'8 r8 
      | r1 
      | r8. es'16~ es'16 d'8 dis'16~ dis'16 f'8 g'16~ g'16 c''8 bes'16~ 
      | bes'16 gis'8 a'16~ a'8. e'16~ e'4. g'8\glissando  
      | \tuplet 3/2 {ges'8 e'8 f'8~} f'16 g'8 a'16~ a'8 bes'4.~ 
      | bes'4 des''8. ges'16~ ges'2\bendAfter #-4  
      | f'8 dis'8 e'8 d'8 \tuplet 3/2 {es'8 f'8 g'8~} \tuplet 3/2 {g'8 gis'8 a'8} 
      | bes'8 b'8~ b'16 dis''8 cis''16~ cis''16 d''8 dis''16~ dis''16 cis''8 d''16~ 
      | \tuplet 3/2 {d''8 c''8 b'8~} \tuplet 3/2 {b'8 a'8 bes'8~} bes'8 r8 r4 
      | r4 r8 d''8 d''4 d''8 d''8 
      \bar "||" d''8 dis''8 r2. 
      | r4 r8 a''8~ a''16 e''8 g''16~ g''8 e''8 
      | f''8 r8 r2. 
      | e''8 f''8 e''16 d''8 c''16~ c''8 b'8 \tuplet 3/2 {bes'8 a'8 aes'8~} 
      | aes'8 r8 r2. 
      | g'16 fis'16 g'16 f'16~ f'16 e'8 dis'16~ dis'16 f'8 cis'16~ cis'8 f'8 
      | dis'16 f'8 g'16~ g'8 a'8 bes'8 r8 r4 
      | r1 
      | r4 r8. a'16 g'8 f'8 dis'8 dis'8 
      | aes'8 r8 r2. 
      | r4 g'8 g'8 a'8 bes'16 b'16~ b'16 c''8 cis''16 
      | d''8 es''8~ es''16 c''8 des''16~ des''16 b'8 c''16~ c''8 r8 
      | r2 r8 a'8 bes'8 c''8 
      | d''8 f''16 e''16~ e''16 g''8 a''16~ a''8 aes''8 g''8 ges''8 
      | f''8 e''16 es''16 r2. 
      | r4 r8. d''16~ d''8 f''4 g''8~ 
      \bar "||" \mark \default g''1\bendAfter #-4  
      | dis''4 c''8 r8 r2 
      | r4 r8. g''16~ g''4 aes''8 e''8 
      | es''8. c''16 r2. 
      | r8. f'16~ f'8 d'8 dis'4. f'8 
      | \tuplet 3/2 {g'8 a'8 bes'8~} bes'16 a'8 gis'16~ gis'16 bes'8 b'16~ \tuplet 3/2 {b'8 c''8 cis''8~} 
      | cis''16 d''8 es''16~ es''16 c''8 des''16~ des''8 b'16 c''16~ c''8 b'8 
      | \tuplet 3/2 {bes'8 a'8 aes'8~} aes'16 f'8 g'16~ g'8 e'8 f'4 
      | g'4. gis'8~ gis'2 
      | e'4 f'4.. g'16~ g'8 gis'8~ 
      | gis'4 a'4 bes'4. b'8~ 
      | \tuplet 3/2 {b'8 bes'8 b'8} r2. 
      | r8. g'16~ g'8. g'16~ g'4 g'4 
      | g'8 a'8 gis'16 c''8 cis''16 d''4 e''8 cis''8 
      | \tuplet 3/2 {d''4 c''8} b'8 a'8 bes'8 c''8 des''8 bes'8 
      | r1 
      \bar "||" r16 e'8 g'16~ \tuplet 3/2 {g'8 a'8 bes'8~} bes'8 d''8 es''8 r8 
      | r4 r8 d''8\glissando  dis''4~ \tuplet 3/2 {dis''8 f''8 dis''8~} 
      | dis''4. des''8 c''8 b'8 bes'8 a'8 
      | aes'8 es'8 r2. 
      | r4 g'8 e'8 f'8 e'8 e'8 f'8 
      | cis'8 e'8 dis'8 f'8 g'8 a'8 \tuplet 3/2 {bes'4 gis'8} 
      | a'8 g'8 aes'8 bes'8 b'8 c''8 cis''8 d''8 
      | es''8 c''8 des''8 b'8 c''8 b'8 bes'8 b'8\glissando  
      | bes'8 r8 r4 r8 fis'8 b'8 c''8\glissando  
      | b'4. b'8 c''8. cis''16~ cis''4~ 
      | cis''8.\bendAfter #-4  d''16~ d''8 bes'8 dis''8 c''8 e''8 cis''8 
      | f''8 d''16 ges''16~ ges''4\bendAfter #-4  r2 
      | r1 
      | r2 r8. es''16 g''8 bes''8\glissando  
      | \tuplet 3/2 {c'''8 e'''4} dis'''4 r2 
      | r2. r8. c'''16~ 
      \bar "||" \mark \default c'''8 es'''4\glissando  d'''4. des'''4~ 
      | des'''2.. c'''8~ 
      | c'''8\bendAfter #+4  des'''8 c'''2. 
      | b''4. r8 r2 
      | bes''8\glissando  d'''8 es'''8 d'''8~ d'''4. des'''8~ 
      | des'''2.. c'''8~ 
      | c'''16 des'''8 c'''16~ c'''2 b''4 
      | r1 
      | r2 a''8 bes''8 b''8 a''8 
      | g''4 r4 f''8 r8 r4 
      | r4 r8 f''8~ f''16 aes''8 g''16~ \tuplet 3/2 {g''8 e''8 f''8~} 
      | \tuplet 3/2 {f''8 e''8 es''8~} es''8 c''8 des''8 b'8 \tuplet 3/2 {c''8 b'8 bes'8} 
      | a'4 g'8.\bendAfter #+4  fis'16~ fis'8 g'8~ g'8. g'16~ 
      | g'4 g'4 g'8 cis''16 b'16~ \tuplet 3/2 {b'8 c''8 cis''8~} 
      | \tuplet 3/2 {cis''8 d''8 e''8~} e''16 cis''8 d''16~ \tuplet 3/2 {d''8 c''8 b'8~} b'16 a'8 bes'16~ 
      | bes'16 c''8 a'16~ a'16 bes'16 bes'8 g'8\glissando  e'8 f'8 dis'8 
      \bar "||" e'8 d'8 \tuplet 3/2 {dis'8 f'4} \tuplet 3/2 {d'4 e'8~} e'16 f'8 g'16~ 
      | g'8 fis'16 bes'16~ \tuplet 3/2 {bes'8 gis'8 a'8~} a'16 g'8 gis'16~ gis'8 bes'8 
      | b'8 c''8 cis''8 d''8 es''8 c''8 des''8 b'8 
      | c''8 r8 r4 \tuplet 3/2 {f''4 g''8~^\markup{\left-align \small vib}} g''4~ 
      | g''4. f''16 e''16~ e''8 dis''8 c''8 r8 
      | r1 
      | r2 g'8 f'4 e'8 
      | dis'16 e'8 des'16~ des'8. es'16~ \tuplet 3/2 {es'8 f'8 g'8~} \tuplet 3/2 {g'8 f'8 a'8~} 
      | a'8\bendAfter #-4  r8 r4 r8 bes'4.~ 
      | bes'4.. b'16~ b'4.\glissando  bes'8~ 
      | bes'4 c''2 r4 
      | r1 
      | r8 f'8~ \tuplet 3/2 {f'8 e'8 f'8~} f'16 g'8 a'16~ a'16 bes'8 g'16~ 
      | g'16 a'8 bes'16~ bes'8 c''8 des''8 b'16 c''16~ c''16 bes'8 a'16~ 
      | \tuplet 3/2 {a'8 a'8 d''8} e''8 f''8~ f''16 b'8 a'16~ a'16 a'8 d''16~ 
      | d''16 bes'8 g'16 g'8 c''8~ c''16 a'8 g'16~ \tuplet 3/2 {g'8 e'8 aes'8~} 
      \bar "||" \mark \default aes'8\bendAfter #-4  g'8 r2 r8 gis'8~ 
      | gis'4\bendAfter #-4  f'4 g'4 f'8 r8 
      | r4 r8 g'4 aes'4 aes'8 
      | g'8\bendAfter #+4  aes'4 e'8 g'4 aes'8\bendAfter #-4  g'8 
      | r4 r8. g'16~ g'8 fis'4 g'8\glissando  
      | ges'4~ ges'16 f'8 g'16~ g'4 aes'8\bendAfter #-4  g'8 
      | r2 a'8 f'8 bes'8 g'8 
      | b'8 aes'8 \tuplet 3/2 {c''4 a'8} cis''8. d''16~ d''8 es''8~ 
      | es''2 aes'8 g'8 gis'8. e''16~ 
      | e''4. a'4 a'4. 
      | f''2 ges''4. f''16 e''16~ 
      | e''8 es''8 r2. 
      | r4 d'8 e'8 f'8 ges'16 e'16~ \tuplet 3/2 {e'8 f'8 d'8~} 
      | d'8 e'8 \tuplet 3/2 {fis'8 g'8 a'8~} a'8 bes'8 b'16 c''8 cis''16~ 
      | cis''8 d''8 es''8 c''8 des''8 b'8 c''8 b'8 
      | bes'8 a'8 \tuplet 3/2 {g'8 a'8 bes'8~} bes'8 a'16 cis''16~ cis''8 b'8 
      \bar "||" c''8 b'8 bes'8 a'8 gis'8 e'8 c'4 
      | r4 r8. g'16~ g'16 e'8 f'16~ f'16 g'8 gis'16~ 
      | gis'16 bes'8 g'16~ g'16 gis'8 a'16~ \tuplet 3/2 {a'8 bes'8 c''8} d''8 r8 
      | r4 r8 e''8 f''8 r8 r4 
      | r4 \tuplet 3/2 {r8 g''8 gis''8~} gis''16 e''8 g''16~ g''8 d''8 
      | f''8 bes'8 e''8 bes'8 e''8 gis'16 d''16 r4 
      | r4 r8 des''8\glissando  c''4~ \tuplet 3/2 {c''8 b'8 c''8~} 
      | c''16 bes'8 b'16~ b'16 a'8 bes'16~ bes'8 gis'8 \tuplet 3/2 {a'8 g'8 gis'8~} 
      | \tuplet 3/2 {gis'8 a'8 g'8~} \tuplet 3/2 {g'8 gis'8 a'8~} a'8 bes'8 r4 
      | r4 es''8 aes'8 r2 
      | aes'8 g'8 gis'8 bes'16 b'16~ b'16 c''8 cis''16~ cis''16 d''8 dis''16~ 
      | dis''8 e''8~ e''8. f''16~ f''8. fis''16~ fis''8 r8 
      | r1 
      | r1 
      | r1 
      | r2. r8 g''8 
      \bar "||" \mark \default aes''8 g''8 aes''8 g''8~ g''4. aes''8 
      | g''8 aes''8 g''2. 
      | f''4.\glissando  e'''8~ e'''4. d'''8 
      | des'''8 bes''8 a''8 g''8 f''8 e''8 es''8 r8 
      | r2 cis''8 b'8 \tuplet 3/2 {c''8 d''8 dis''8~} 
      | dis''4~ \tuplet 3/2 {dis''8 f''8 g''8} gis''8 b''8 \tuplet 3/2 {c'''8 d'''8 dis'''8~} 
      | dis'''4~ dis'''16 des'''8 c'''16~ c'''8 bes''8\glissando  \tuplet 3/2 {a''8 g''8 f''8~} 
      | \tuplet 3/2 {f''8 e''8 es''8} c''8 des''4 b'8 c''8 b'8~ 
      | b'8\glissando  bes'8~ bes'8. bes'16~ bes'16 f'8 b'16~ b'4~ 
      | b'8 c''4\glissando  b'4 c''8 des''8\glissando  c''8~ 
      | c''4~ \tuplet 3/2 {c''8 dis''8 bes'8~} bes'8 c''8 r4 
      | r1 
      | \tuplet 3/2 {r8 g'8 aes'8~} aes'16 bes'8 b'16 c''8 cis''8 d''8 e''8 
      | f''8 g''8 \tuplet 3/2 {a''4 g''8} ges''8 f''8 e''8 d''8 
      | des''8 c''8 bes'8 a'8 bes'8 g'8 a'8 bes'8 
      | c''8 cis''8~ cis''16 d''8 c''16 g'8 bes'8 r4 
      \bar "||" r4 r8. b'16~ b'8\bendAfter #+4  bes'16 b'16~ b'8 bes'8~ 
      | bes'2 bes'4. bes'8~ 
      | bes'2 aes'8. aes'16~ aes'4\bendAfter #-4  
      | r2 aes'4 aes'8 bes'8 
      | b'4. bes'8~ bes'2 
      | \tuplet 3/2 {bes'4\glissando  a'8~} a'8 bes'4. bes'4~ 
      | bes'4 r4 \tuplet 3/2 {aes'4 g'8~} g'4\bendAfter #-4  
      | r2. r8 d'8~ 
      | d'16 dis'8 e'16~ e'16 f'8 g'16~ g'16 a'8 bes'16~ bes'8 gis'8 
      | a'8 g'8 aes'16 bes'8 b'16~ \tuplet 3/2 {b'8 c''8 cis''8} d''8 es''8~ 
      | es''16 c''8 cis''16~ cis''16 b'8 c''16 b'8 bes'8~ bes'16 a'8 g'16~ 
      | \tuplet 3/2 {g'8 a'8 bes'8~} bes'8 c''8 d''16 f''8 e''16 f''4 
      | g''8 g''8 g''8 r8 r8. a''16~ a''8 aes''8~ 
      | aes''4. e''8\bendAfter #-4  des''8 a'8 b'8 aes'8 
      | bes'8 a'8 gis'8 dis'8 cis'8 bes8 r4 
      | r4 r8. g'16~ g'16 e'8 f'16~ f'16 g'8 a'16 
      \bar "||" \mark \default r2 gis'4. gis'8~ 
      | gis'4. e'8~ e'4. g'8\glissando  
      | ges'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
