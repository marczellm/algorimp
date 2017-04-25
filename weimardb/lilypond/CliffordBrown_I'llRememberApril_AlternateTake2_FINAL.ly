\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I'll Remember April (Alternate Take 2)"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key g \major
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
      | r1 | s1 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | g1:min7 | c1:min7 | f1:7 | bes1:maj | bes1:6 
      | a1:min7 | d1:7 | g1:maj | g1:6 | fis1:min7 | b1:7 | e1:maj | a2:min7 d2:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | s1 | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
      | c1:min7 | f1:7 | bes1:maj | g1:min7 | c1:min7 | f1:7 | bes1:maj | bes1:6 
      | a1:min7 | d1:7 | g1:maj | g1:6 | fis1:min7 | b1:7 | e1:maj | a2:min7 d2:7 
      | g1:maj | g1:6 | g1:maj | g1:6 | g1:min7 | g1:min6 | g1:min7 | g1:min6 
      | a1:min5-7 | d1:7 | b1:min5-7 | e1:7 | a1:min7 | d1:7 | g1:maj | s1 
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


      \tempo 4 = 292
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2 fis'8 g'16 b'16~ b'16 d''8 fis''16~ 
      | fis''8 g''8 fis''8 e''8 d''8 b'8 \tuplet 3/2 {c''8 d''8 c''8} 
      \bar "||" \mark \default b'8 a'8 gis'16 fis'8 g'16~ g'8 a'8 b'8 c''16 d''16~ 
      | d''8 c''8 b'8 a'8 gis'8 fis'8 g'8 a'8 
      | b'8 c''8 d''8 e''8 fis''4 a''8 fis''8 
      | g''4 d''4 c''4 a'4 
      | bes'4 fis'4 a'4 fis'4 
      | g'8 r8 r4 r8 d'4 c'8 
      | bes8. g16~ g8. g16~^\markup{\left-align \small vib} g2 
      | r1 
      | r4 b'8 c''8 aes'8 b'8 a'8 g'8 
      | fis'8 r8 r4 aes''8 g''16 es''16 d''8 c''16 b'16~ 
      | b'8. b'16~ b'8 r8 r4 r8 f''8~ 
      | f''16 e''16 es''16 d''16~ \tuplet 3/2 {d''8 c''8 b'8~} \tuplet 3/2 {b'8 a'8 gis'8~} gis'8 b'8 
      | a'8 e'8 a'8 b'8 c''8 d''8 dis''8 e''8 
      | \tuplet 3/2 {g''4 e''8} fis''8 e''8 d''8 c''8 b'8 a'8 
      | \tuplet 3/2 {gis'4 f'8} g'8 a'8 b'8 c''8 d''8. e''16~ 
      | e''16 fis''8 g''16~ g''16 a''8 fis''16 g''8 e''8 f''8 d''8 
      \bar "||" \tuplet 3/2 {es''4 f'8} \tuplet 3/2 {b'4 d''8} c''8 bes'8 a'8 g'8 
      | f'8 e'8 es'16 f'8 es'16 d'8 c'8 b8 a8~ 
      | a16 bes8 c'16 d'8 es'8 f'4 bes4 
      | r2 d'4 \tuplet 3/2 {f'4 aes'8} 
      | g'8 es'8 c'8 a8 bes8 r8 r4 
      | r4 r8 a8 bes4 es'16 fis'8 f'16 
      | d'4 bes8 es'8 d'4 f4~ 
      | f4 r2. 
      | r2 ais'8 d''8 d''8 d''8 
      | cis''8 d''8 d''8 d''8 cis''8 d''8 d''8 d''8 
      | cis''8 d''8 r2. 
      | r4 c''8 cis''16 e''16~ \tuplet 3/2 {e''8 cis''8 d''8~} d''8 c''8 
      | b'8 a'8 g'8 fis'8 \tuplet 3/2 {e'8 d'8 dis'8~} \tuplet 3/2 {dis'8 fis'8 a'8~} 
      | a'16 c''8 a'16~ a'16 ais'8 b'16~ \tuplet 3/2 {b'8 a'8 fis'8} f'8 gis'8~ 
      | \tuplet 3/2 {gis'8 fis'8 g'8~} g'8 e'8 \tuplet 3/2 {fis'8 g'8 a'8} \tuplet 3/2 {b'8 c''8 d''8} 
      | r4 r8 c''16 des''16 c''8 b'8~ \tuplet 3/2 {b'8 a'8 fis'8~} 
      \bar "||" fis'8. a'16~ a'8 fis'8 e'2^\markup{\left-align \small vib} 
      | r2. d''8. fis''16~ 
      | fis''8 g''4 r8 r2 
      | r4 r8. a''16~ a''16 aes''16 g''4 e''8 
      | d''8 des''8 c''8 b'8 bes'8 a'8 g'8 fis'8 
      | a'8 fis'16 g'16~ g'8 d'8 c'8 b8 \tuplet 3/2 {bes8 gis8 a8~} 
      | a16 fis8 g16~ g16 a8 bes16~ \tuplet 3/2 {bes8 c'8 d'8~} d'8 e'8 
      | \tuplet 3/2 {a'8 g'8 e'8} a'8 g'4 g'8 es'8^\markup{\left-align \small vib} r8 
      | r2 c'8 d'8 es'8 f'8 
      | \tuplet 3/2 {g'8 es'8 d'8~} d'16 c'8 f'16~ f'8 es'8 d'8 c'8 
      | b8 r8 r2. 
      | \tuplet 3/2 {d''8 des''8 c''8} b'8 a'8 gis'8 b'16 d''16~ \tuplet 3/2 {d''8 e''8 f''8} 
      | r4 r8. f''16~ \tuplet 3/2 {f''8 e''8 d''8~} d''16 des''8 c''16~ 
      | c''8 dis'8 \tuplet 3/2 {e'8 g'8 b'8~} b'16 a'8 fis'16~ fis'8 dis'16 g'16~ 
      | g'8 d'8 r2. 
      | r2 a''4 a''8 a''8 
      \bar "||" \mark \default a''4 a''8 a''8 a''4 \tuplet 3/2 {a''8 a''8 a''8~} 
      | a''4 a''8 a''8 a''8. a''16 a''8 a''8~ 
      | a''8 g''8 r4 fis''4 \tuplet 3/2 {e''4 d''8~} 
      | d''8 d''8 a'8 g'8 a'8 g'4 g'8 
      | d'4 d'8 e'4 e'8 bes4 
      | \tuplet 3/2 {bes4 a8~} a8 a4 g8 r4 
      | r2. a'8 bes'8 
      | a'8 g'8 fis'4 a'8 fis'8 g'8 a'8 
      | bes'8 c''4 fis'8 r2 
      | r8 dis'8 \tuplet 3/2 {e'8 g'8 fis'8~} fis'16 a'8 c''16~ c''8 d''8 
      | f''16 e''16 es''16 d''16~ d''16 c''8 b'16~ b'16 a'8 gis'16~ gis'16 cis'8 d'16 
      | f'8 d'8 dis'8 e'8~ e'16 gis'8 b'16~ \tuplet 3/2 {b'8 g'8 a'8~} 
      | \tuplet 3/2 {a'8 b'8 c''8~} c''16 d''8 dis''16~ dis''16 e''8 g''16~ \tuplet 3/2 {g''8 e''8 fis''8~} 
      | \tuplet 3/2 {fis''8 e''8 d''8~} d''16 c''8 b'16~ \tuplet 3/2 {b'8 a'8 gis'8~} gis'8 f'8 
      | fis'8 a'8 \tuplet 3/2 {b'8 c''8 d''8~} d''16 e''8 fis''16~ fis''8 g''8 
      | a''8. a''16~ a''8 g''4 g''8 f''8 e''16 dis''16~ 
      \bar "||" dis''8 g'8 b'8 d''8 c''8 bes'8 a'16 g'8 f'16~ 
      | f'8 e'8 es'16 f'16 es'16 d'16~ d'16 c'8 b16 a4 
      | bes8 c'8 d'8 es'16 f'16~ \tuplet 3/2 {f'8 es'8 d'8} c'4 
      | d'8 f'8 g'8 aes'8 bes'8 aes'8 g'8 f'16 es'16 
      | r2 r8. cis''16~ cis''16 d''8 es''16~ 
      | \tuplet 3/2 {es''8 f''8 g''8~} \tuplet 3/2 {g''8 e''8 f''8~} f''16 es''8 d''16 c''8 b'8~ 
      | b'16 c''8 bes'16~ bes'8 r8 r2 
      | r4 g'8 g'8 \tuplet 3/2 {bes'8 c''8 d''8~} \tuplet 3/2 {d''8 dis''8 e''8} 
      | \tuplet 3/2 {f''8 fis''8 g''8~} g''8 e''8 fis''8 r8 r4 
      | r8. fis''16~ fis''8 e''8 d''8 r8 r4 
      | r8. d''16~ d''8 c''8 b'8 a'8 gis'8 fis'8 
      | g'8 a'8 b'8 c''16 d''16~ \tuplet 3/2 {d''8 e''8 fis''8~} fis''16 g''8 a''16~ 
      | a''16 g''8 fis''16 e''4 \tuplet 3/2 {cis''8 d''8 dis''8~} \tuplet 3/2 {dis''8 cis''8 b'8} 
      | a'8 g'8 fis'8 e'8 d'8 dis'4.~ 
      | dis'8. fis'16~ \tuplet 3/2 {fis'8 dis'8 e'8} fis'8 gis'8 a'16 b'16 c''16 d''16~ 
      | d''8 dis'8 f'8 g'8 fis'16 e'8 dis'16~ \tuplet 3/2 {dis'8 cis'8 d'8~} 
      \bar "||" d'16 e'8 fis'16~ fis'16 g'8 a'16~ a'8 fis'8 g'8 a'8 
      | \tuplet 3/2 {b'8 c''8 cis''8} \tuplet 6/4 {d''4 b'16 b'16} c''8 d''8 e''8 fis''8 
      | f''8 f''8 r2. 
      | r2 fis''16 g''4.. 
      | cis''8 d''4. b'8 c''4. 
      | a'8 bes'4. a'4~ a'16 fis'8 g'16~ 
      | g'8 d'4. d'2~ 
      | d'8 r8 r2. 
      | r8. dis'16 e'2 \tuplet 3/2 {g'8 e'8 fis'8~} 
      | fis'16 a'8 c''16~ \tuplet 3/2 {c''8 d''8 f''8~} f''16 e''16 es''16 d''16~ d''16 c''8 b'16~ 
      | b'8 b'4 d''4 d''4 d''8~ 
      | d''8 c''8 b'8 a'16 gis'16~ gis'8. b'16~ \tuplet 3/2 {b'8 gis'8 a'8~} 
      | \tuplet 3/2 {a'8 b'8 c''8~} c''16 d''8 e''16~ e''4 g''8. fis''16~ 
      | fis''8 e''8 d''8 c''16 b'16~ b'8 a'8 gis'8 fis'8 
      | g'8 a'16 b'16~ b'8 g'8 a'8 b'8 \tuplet 3/2 {c''4 a'8} 
      | b'8 c''8 d''8 b'8 c''8 d''8 e''8 fis''16 g''16~ 
      \bar "||" \mark \default g''8 g'8 r2.\bar  ".."
    }
    >>
>>    
}
