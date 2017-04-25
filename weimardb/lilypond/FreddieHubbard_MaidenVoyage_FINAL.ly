\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Maiden Voyage"
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
      
      | d1:7sus4 | d1:7sus4 | s1 | s1 | f1:7sus4 | s1 | s1 | s1 
      | d1:7sus4 | s1 | s1 | s1 | f1:7sus4 | s1 | s1 | s1 
      | es1:7sus4 | s1 | s1 | s1 | des1:7sus4 | s1 | s1 | s1 
      | d1:7sus4 | s1 | s1 | s1 | f1:7sus4 | s1 | s1 | s1 
      | d1:7sus4 | s1 | s1 | s1 | f1:7sus4 | s1 | s1 | s1 
      | d1:7sus4 | s1 | s1 | s1 | f1:7sus4 | s1 | s1 | s1 
      | es1:7sus4 | s1 | s1 | s1 | des1:7sus4 | s1 | s1 | s1 
      | d1:7sus4 | s1 | s1 | s1 | f1:7sus4 | s1 | s1 | s1 
      | d1:7sus4|
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


      \tempo 4 = 126
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2. r8 d'8 
      | e'8 d'8 a'8 b'8~ b'32 d'8. e'32~ e'8 d'8 
      | g'1~^\markup{\left-align \small vib} 
      | g'1~ 
      | g'2.~ \tuplet 5/4 {g'16 g'16 a'16 c''16 d''16} 
      | c''16 a'16 g'8~ \tuplet 6/4 {g'8. ges'16 f'16 e'16} \tuplet 3/2 {d'8 c'4~} c'4 
      | r1 
      \bar "||" d''8.. e''32~ e''8 d''8~ \tuplet 6/4 {d''8 e''8. d''16~} d''8 e''8 
      | d''8 b''8 \tuplet 3/2 {a''4 a''8~^\markup{\left-align \small vib}} a''2~ 
      | a''4 r4 r8. d''16~ \tuplet 3/2 {d''8 e''8 d''8} 
      | b''8 a''8~ a''16 a''8 c''16~ c''16 c''8 d''16~ \tuplet 3/2 {d''8 d''8 c''8} 
      | g''8 f''8 f''2.~^\markup{\left-align \small vib} 
      | f''2.~ \tuplet 6/4 {f''8 d''16 c''16 bes'16 a'16} 
      | \tuplet 3/2 {g'4\glissando  aes'8} \tuplet 3/2 {g'8 f'8 es'8} \tuplet 3/2 {d'8 es'8 c'8~} c'4~ 
      | c'4 r2. 
      \bar "||" r8 f'4. \tuplet 3/2 {aes'4 f'8} aes'4 
      | c''2~^\markup{\left-align \small vib} c''8 c''8 des''8 es''8 
      | f''4 ais'2.~^\markup{\left-align \small vib} 
      | ais'1 
      | b'4 ais'4 b'8. b'16 ais'4 
      | b'8. b'16 bes'8. aes'16~ aes'8.. ais'32~ ais'8 b'8~ 
      | b'4. aes'16 f'16~ f'16 bes'16 aes'16 es'16 des'8 dis'8~ 
      | dis'8 r8 r2. 
      \bar "||" r8 e'4 e'8 e'2~ 
      | e'2.. f'16 g'16 
      | a'2~ a'16 g'16 f'16 e'16~^\markup{\left-align \small vib} e'4~ 
      | e'2~ e'8 r8 r4 
      | r8 es'16 d'16 c'8 c'16 d'16 es'16 f'16 g'16 a'16 bes'16 c''16 d''16 es''16~ 
      | es''16 f''8 d''16~ d''8 d''8~ d''4. c''16 bes'16~ 
      | \tuplet 6/4 {bes'8 d''16 c''16 bes'16 aes'16} g'2 r4 
      | r2. \tuplet 3/2 {r8 e''8 g''8} 
      \bar "||" \mark \default b''16 e''8 g''16~ g''16 b''8 e''16 a''4 b''8 b''8 
      | c'''8 b''8 g''16 a''8 b''16~ \tuplet 3/2 {b''8 b''8 c'''8} b''16 b''16 g''8 
      | b''8 b''16 c'''16~ \tuplet 6/4 {c'''16 b''16 g''8. b''16~} \tuplet 3/2 {b''8 c'''8 b''8~} b''16 g''8 f''16 
      | \tuplet 6/4 {a''16 b''16 cis'''16 d'''8 c'''16} c'''16 b''16 a''16 g''16 fis''16 cis''16 d''16 des''16 c''16 bes'16 a'16 g'16 
      | f'16 e'16 es'16 d'16 c'16 es'16 g'16 a'16 \tuplet 6/4 {des''16 es''16 f''8 c''16 d''16} es''32 f''16 c''16 d''32 es''32 f''32~ 
      | \tuplet 5/4 {f''8 c''16 d''16 es''16} \tuplet 6/4 {d''16 es''16 f''8 es''16 d''16} es''16 c''16 d''16 f''16 g''16 f''32 es''16 f''32 es''32 d''32~ 
      | d''32 es''16 des''32 c''32 d''32 c''32 bes'32 \tuplet 7/8 {c''32 bes'32 a'32 g'32 es'32 d'32 c'32} bes16 a16 g8 r4 
      | \tuplet 7/8 {r32 g''32 aes''32 g''32 ges''32 dis''32 e''32} es''16 d''16 c''16 bes'16 a'16 g'16 f'16 e'16 es'16 d'16 c'16 bes16 
      \bar "||" a8 a8~ \tuplet 5/4 {a16 a16 c'16 cis'16 d'16} e'16 fis'16 g'16 a'16 b'16 c''16 cis''16 d''16 
      | \tuplet 3/2 {b'4 gis'8} \tuplet 3/2 {a'8 gis'8 a'8~} a'8 dis'8 e'8 cis'8 
      | d'8 e'4.^\markup{\left-align \small vib} r2 
      | r8 gis'16 a'16 fis'8. e'16 c'16 d'16 cis'16 d'16 a8 r8 
      | r4 des'16 es'16 g'16 bes'16 d''16 dis''16 e''16 f''16~ f''8 d''32 dis''32 e''32 f''32~ 
      | \tuplet 6/4 {f''16 c''16 d''16 es''16 bes'16 c''16} d''16 g'16 a'16 bes'16 es'32 f'32 g'8 c'32 d'32~ \tuplet 6/4 {d'16 es'16 d'16 es'16 f'16 es'16} 
      | \tuplet 6/4 {f'16 g'16 f'16 g'16 a'16 g'16} a'32 bes'32 a'32 bes'32 c''32 bes'32 c''32 d''32~ \tuplet 6/4 {d''16 c''16 e''16 d''16 es''16 f''16} \tuplet 6/4 {g''16 f''16 d''16 ges''16 d''16 es''16} 
      | \tuplet 7/8 {d''32 c''32 bes'32 a'32 g'32 f'32 e'32} es'32 d'32 c'32 bes32 gis32 a32 bes32 c'32 d'32 dis'32 e'32 g'32 aes'32 bes'32 c''16 a'32 c''16 bes'32 aes'32 g'32 f'32 e'32 
      \bar "||" \tuplet 9/8 {d'16 des'32 c'32 bes32 c'32 des'32 es'32 f'32} \tuplet 6/4 {g'16 aes'16 bes'16 c''16 a'16 c''16} bes'32 aes'32 g'32 f'32 es'16 des'32 c'32 bes32 c'32 des'32 es'32 f'32 g'16 aes'32 
      | \tuplet 10/8 {bes'32 c''32 a'16 c''16 bes'32 aes'32 g'32 f'32} \tuplet 6/4 {es'16 des'16 c'16 bes16 a8} r4 r8 c'16 des'16 
      | \tuplet 6/4 {es'16 f'16 g'16 bes'16 c''16 aes'16~} \tuplet 12/8 {aes'32 bes'16 aes'32 g'32 f'16 es'32 d'32 des'32 c'32 bes32} \tuplet 7/8 {a32 bes32 c'32 es'32 f'32 ges'32 aes'32} \tuplet 10/8 {bes'16 c''16 a'32 es''16 c''32 bes'32 aes'32} 
      | \tuplet 6/4 {g'16 f'16 es'16 d'16 des'8} \tuplet 7/8 {bes32 c'32 des'32 es'32 f'32 g'32 aes'32} \tuplet 6/4 {bes'16 c''16 a'16 c''16 bes'16 aes'16} g'32 f'16 e'32 d'32 des'32 dis'32 e'32 
      | \tuplet 10/8 {ges'32 gis'32 a'32 b'32 a'32 aes'32 ges'32 f'32 es'32 a'32} \tuplet 7/8 {g'32 a'32 es''32 des''32 b'32 bes'32 aes'32} \tuplet 6/4 {g'16 ges'16 f'16 dis'16 e'16 es'16} \tuplet 7/8 {f'32 ges'32 aes'32 ais'32 b'32 c''32 es''32} 
      | c''32 es''32 des''32 b'32 a'32 aes'32 ges'32 e'32 \tuplet 6/4 {es'16 des'16 c'8 e'16 ges'16} \tuplet 6/4 {aes'16 ais'16 b'16 cis''16 d''16 c''16} d''32 des''32 b'32 bes'32 aes'32 g'32 ges'32 e'32~ 
      | \tuplet 7/8 {e'32 es'32 des'32 dis'32 e'32 ges'32 aes'32} ais'32 b'32 c''16 es''32 d''32 c''32 b'32 \tuplet 7/8 {bes'32 aes'32 g'32 ges'32 e'32 es'32 d'32} des'16 c'16 b16 a16 
      | r4 r8 e'16 d'16 c'16 d'16 e'4.~^\markup{\left-align \small vib} 
      \bar "||" e'1~ 
      | e'4 r2. 
      | r8 g'4 g'8~ g'16 g'16 fis'8 e'16 fis'16 g'8~^\markup{\left-align \small vib} 
      | g'2... a'16~ 
      | a'8 bes'8 a'8 g'8 a'8 bes'4.~^\markup{\left-align \small vib} 
      | bes'2.. r8 
      | r1 
      | r8 d''8~ d''2~ d''8.. b'32~ 
      \bar "||" \mark \default b'8 e'8 r2.\bar  ".."
    }
    >>
>>    
}
