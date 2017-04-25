\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Punjab"
  composer = "Kenny Dorham"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key d \major
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
      
      | d1:maj | d2:maj bes2:7 | b1:maj | aes1:maj | f1:min5-7 | bes1:7 | e1:maj11+.9 | s1 
      | s1 | s2 es2:7 | aes1:maj | g1:13.9 | ges1:13.9 | ces2:maj f2:7 | s1 | s1 
      | g2:maj a2:maj | b2:maj c2:maj11+.9 | d1:maj | s2 bes2:7 | b1:maj | aes1:maj | f1:min5-7 | bes1:7 
      | e1:maj | s1 | s1 | s4 es2:7 aes4:maj | s2. g4:13.9 | s2. ges4:13.9 | s4 ges2:7 ces4:maj | s4 f2:7 f4:9 
      | s1 | s2. g4:maj | s4 a2:maj b4:maj | s4 c2:maj11+.9 d4:maj | s1 | s4 bes2:7 b4:maj | s2. aes4:maj | s2. f4:min5-7 
      | s2. bes4:7 | s2. e4:maj11+.9 | s1 | s1 | s1 | s4 es2:7 aes4:maj | s2. g4:7 | s2. ges4:13.9 
      | s2. ces4:maj | s4 f2:7 f4:9 | s1 | s2. g4:maj | s4 a2:maj b4:maj | s4 c2:maj11+.9 d4:maj | s1 | s4 bes2:7 b4:maj 
      | s2. aes4:maj | s2. f4:min5-7 | s2. bes4:7 | s2. e4:maj11+.9 | s1 | s1 | s1 | s4 es2:7 aes4:maj 
      | s2. g4:13.9 | s2. ges4:13.9 | s2. ces4:maj | s4 f2.:7 | s1 | s2. g4:maj | s4 a2:maj b4:maj | s4 c2:maj11+.9 d4:maj|
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


      \tempo 4 = 155
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 r16 fis''8 cis''16~ cis''2~ 
      | cis''2. dis''8 ais'8~ 
      | ais'2... gis'16~ 
      | \tuplet 6/4 {gis'16 ais'4 gis'16} ais'4 gis'2~^\markup{\left-align \small vib} 
      | gis'8 r8 r2. 
      | r8. ais'16 dis''8 f''8 \tuplet 3/2 {fis''4 gis''8~} gis''16 ais''8 f''16 
      | gis''4 ais''16 fis''8 dis''16~ dis''4~ \tuplet 6/4 {dis''16 ais'4 gis'16~} 
      | gis'2 ais'16 gis'8 ais'16~ ais'4 
      | fis'16 gis'8. ais'2~^\markup{\left-align \small vib} ais'8 r8 
      \bar "||" r4 \tuplet 6/4 {r4 g''16 gis''16} ais''16 gis''8 g''16~ g''16 f''8 e''16~ 
      | e''16 dis''8 d''16~ d''16 cis''8 c''16~ c''8 b'8 cis''4 
      | dis''16 d''16 cis''16 ais'16 gis'8 g'8 fis'8 e'8 cis'8 d'8 
      | \tuplet 3/2 {dis'8 e'8 f'8} fis'8 gis'8 a'16 b'16 c''8 a'4 
      | g''16 f''16 d''8 c''8 a'8 g'4 \tuplet 6/4 {f'8. d'16 e'16 g'16} 
      | f'16 dis'8 g'16~ \tuplet 3/2 {g'8 ais'8 d''8} f''8 d''8 dis''8 f''8 
      | \tuplet 3/2 {d''4 b'8~} b'8 f''8~ f''16 e''8 cis''16 r4 
      | r1 
      \bar "||" \mark \default r2 e''8 e''8 fis''8 cis''8~ 
      | cis''8 b'8~ b'16 cis''8 b'16 r2 
      | r4 r8. cis''16~ cis''16 dis''8 cis''16~ cis''16 dis''8 ais'16~ 
      | ais'8 gis'8 ais'16 a'16\bendAfter #+4  ais'8~ ais'4~ \tuplet 5/4 {ais'16 gis'16 g'16 f'16 dis'16} 
      | b8 ais2..~^\markup{\left-align \small vib} 
      | ais2. r4 
      | r4 r8. ais''16~^\markup{\left-align \small vib} ais''2~ 
      | ais''4.. g''32 fis''32 \tuplet 6/4 {e''16 d''16 cis''8 b'16 ais'16} \tuplet 6/4 {gis'8 e'16 dis'16 cis'16 c'16} 
      | ais2 c'32 cis'16 dis'32 e'32 fis'32 g'32 a'32 \tuplet 6/4 {b'16 cis''8 dis''16 f''16 gis''16} 
      \bar "||" a''16 ais''8.~^\markup{\left-align \small vib} ais''2 r4 
      | r4 g''16 gis''16 ais''16 g''16~ g''16 gis''8 ais''16~ ais''16 g''16 fis''16\bendAfter #+4  g''16 
      | ais''16 f''8 dis''16~ dis''8 cis''4 b'8 r4 
      | r4 r16 dis''8 b'16~ b'16 gis'8 ais'16~ ais'16 cis''8 c''16 
      | b'8 cis''8 \tuplet 3/2 {gis'4 fis'8} r2 
      | \tuplet 6/4 {r16 c'16 d'16 dis'16 ais'8} \tuplet 6/4 {d''8. f''8 e''16~} e''16 dis''8 d''16~ \tuplet 3/2 {d''8 c''8 ais'8~} 
      | \tuplet 3/2 {ais'8 a'8 g'8} f'8 e'8 dis'8 d''4. 
      | \tuplet 3/2 {b'4 fis'8~} \tuplet 6/4 {fis'16 e''4 cis''16~^\markup{\left-align \small vib}} cis''2 
      \bar "||" \mark \default r1 
      | r4 r16 e''16 fis''8 \tuplet 6/4 {fis''4~ fis''16 cis''16~} cis''32 cis''16 d''32 cis''16 d''32 cis''32~ 
      | \tuplet 6/4 {cis''16 d''16 cis''16 d''16 cis''8} \tuplet 6/4 {d''16 cis''16 d''16 cis''16 d''16 cis''16} d''16 cis''8 cis''16 \tuplet 10/8 {cis''16 d''32 cis''32 d''32 cis''32 cis''16 d''32 cis''32} 
      | cis''32 d''32 cis''32 d''32 cis''32 d''32 cis''32 dis''32~ dis''4~ dis''8~ dis''32 ais'32 b'32 ais'32 \tuplet 5/4 {b'16 ais'16 b'16 ais'16 b'16} 
      | \tuplet 5/4 {ais'16 b'16 ais'16 b'16 ais'16} \tuplet 6/4 {b'16 ais'16 g'16 ais'16 b'16 ais'16} \tuplet 5/4 {g'16 gis'16 g'16 gis'16 g'16} \tuplet 7/8 {gis'32 g'32 fis'32 f'32 dis'32 e'32 dis'32~} 
      | \tuplet 6/4 {dis'8 e'16 dis'16 e'16 dis'16} \tuplet 6/4 {e'16 dis'8. e'16 dis'16} \tuplet 6/4 {e'16 dis'16 e'16 dis'16 e'16 dis'16} dis'4~^\markup{\left-align \small vib} 
      | dis'2 r2 
      | r4 dis'4~ \tuplet 6/4 {dis'16 e'16 fis'16 gis'16 a'8} \tuplet 6/4 {c''16 cis''16 dis''16 e''16 g''16 gis''16} 
      | \tuplet 6/4 {a''16 ais''16 b''16 cis'''16 dis'''16 e'''16} dis'''4~ \tuplet 5/4 {dis'''16 cis'''16 c'''16 a''16 fis''16} e''16 dis''16 d''16 dis''16~ 
      | dis''4~ dis''16 cis''16 b'16 gis'16 \tuplet 6/4 {g'16 fis'16 f'16 e'16 dis'8~^\markup{\left-align \small vib}} dis'4~ 
      \bar "||" dis'2~ dis'8 r8 r4 
      | r4 \tuplet 6/4 {f''16 gis''16 ais''8 gis''16 fis''16} g''16 gis''16 ais''16 a''16 \tuplet 3/2 {g''8 f''8 e''8} 
      | dis''8 d''8 cis''4 dis''8 ais'4.~ 
      | ais'8. gis'16 \tuplet 3/2 {ais'4 gis'8} dis'8. cis'16 \tuplet 3/2 {fis'4 gis'8~^\markup{\left-align \small vib}} 
      | gis'4. r8 r4 r8. d''16 
      | f''8 d''8 dis''8 b'8 r4 d''4 
      | dis''8. c''16~ c''4. d''8 \tuplet 3/2 {b'4 b'8~} 
      | b'8 d''8 cis''8. cis''16~ cis''8 e''8 \tuplet 3/2 {c''4 c''8} 
      \bar "||" \mark \default r1 
      | \tuplet 6/4 {r8 fis''16 g''16 fis''16 e''16~} e''32 f''32 e''16 dis''32 e''32 dis''32 e''32 f''32 e''32 dis''32 e''32 g''32 e''32 cis''16~ cis''4 
      | \tuplet 6/4 {d''16 cis''16 d''16 cis''16 d''16 cis''16} \tuplet 7/8 {cis''32 d''32 cis''32 cis''32 d''32 cis''32 cis''32} cis''16 cis''16 b'16 c''16 cis''4~ 
      | cis''8 ais'8 gis'8 ais'8 \tuplet 3/2 {gis'4 ais'8} gis'16 g'8 dis'16~ 
      | dis'2~ \tuplet 6/4 {dis'16 fis'8 g'16 ais'16 a'16~} \tuplet 6/4 {a'16 gis'16 ais'8 b'16 cis''16} 
      | \tuplet 3/2 {dis''8 b'16 r8.} r4 \tuplet 3/2 {gis'8 g'8 fis'8} e'16 f'16 r8 
      | r1 
      | r16 dis'16 e'16 fis'16~ fis'32 ais'16 b'32 c''32 d''32 dis''32 c''32~ c''4 \tuplet 3/2 {dis''4 dis''8~} 
      | \tuplet 7/8 {dis''32 dis''16. cis''32 b'32 a'32} \tuplet 6/4 {gis'8 fis'16 f'16 e'16 dis'16~} dis'2~ 
      | dis'2 \tuplet 3/2 {e'8 fis'4} gis'16 ais'8.~ 
      \bar "||" ais'4 gis'16 ais'8 gis'16 r2 
      | r4 f''16 gis''16 ais''8 a''8 gis''16 g''16 fis''16 f''8 e''16~ 
      | e''16 dis''8 d''16~ \tuplet 6/4 {d''16 b'4 cis''16~} cis''8. dis''16 \tuplet 6/4 {d''16 cis''16 ais'8. gis'16~} 
      | gis'16 fis'8 f'16~ \tuplet 6/4 {f'16 e'4 fis'16} \tuplet 3/2 {gis'4 b'8} r4 
      | r8. b'16 \tuplet 3/2 {c''4 a'8} r4 d''16 c''16 a'8~ 
      | a'4 \tuplet 3/2 {g'8 f'8 e'8~} e'16 dis'8 f'16 g'8. ais'16 
      | \tuplet 3/2 {d''4 c''8~} c''4~ c''16 a'8 cis''16 d''8 d''8 
      | \tuplet 3/2 {b'4 d''8} \tuplet 6/4 {e''4 e''16 cis''16~} cis''8 e''8 \tuplet 3/2 {fis''4 dis''8} 
      \bar "||" \mark \default r4 g''4 \tuplet 3/2 {e''4 b'8~^\markup{\left-align \small vib}} b'4~ 
      | b'2~ b'8 r8 r4\bar  ".."
    }
    >>
>>    
}
