\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bemsha Swing"
  composer = "Milt Jackson"
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
      
      | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj es2:7 | d2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 ges2:7 
      | f2:maj d2:min7 | des2:maj ges2:7 | f2:maj aes2:7 | g2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 g2:7 
      | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj es2:7 | d2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 ges2:7 
      | f2:maj d2:min7 | des2:maj ges2:7 | f2:maj aes2:7 | g2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 g2:7 
      | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj es2:7 | d2:7 des2:7 | c2:maj a2:min7 | aes2:7 des2:7 | c2:maj bes2:7 | aes2:7 ges2:7 
      | f2:maj d2:min7 | des2:maj ges2:7 | f2:maj aes2:7 | g2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 g2:7 
      | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj es2:7 | d2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 ges2:7 
      | f2:maj d2:min7 | des2:maj ges2:7 | f2:maj aes2:7 | g2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 g2:7 
      | c2:maj a2:min7 | aes2:7 des2:7 | c2:maj es2:7 | d2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 ges2:7 
      | f2:maj d2:min7 | des2:maj aes2:7 | f2:maj aes2:7 | g2:7 des2:7 | c2:maj a2:min7 | aes2:maj des2:7 | c2:maj bes2:7 | aes2:7 g2:7 
      | c2:maj a2:min7|
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


      \tempo 4 = 152
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 b'8 c''16 e''16 g''8 c'''4 
      | \tuplet 3/2 {a''8 bes''8 a''8} aes''8 f''8 es''8 c''8 bes'8 aes'8 
      | g'8 a'8 c''8 dis''8 e''16 es''16 d''8 \tuplet 3/2 {c''4 g'8} 
      | \tuplet 3/2 {a'8 ais'8 b'8} gis'8 f'8 g'8 f'8 d'8 es'8 
      | c'8 b'8 c''8 d''8 e''8 f''8 g''4 
      | \tuplet 3/2 {f''4 es''8} c''8 bes'8 aes'4 g'8 f'8 
      | e'8 g'8 a'8 c''4 r8 r4 
      | r2 r8 c''8 f''8 a''8 
      \bar "||" \tuplet 3/2 {bes''4 a''8} f''8 c''8 f''4. f''8~ 
      | f''16 g''16 aes''16 g''16 f''8 des''8 ais'4 c''8 bes'8 
      | a'4 d''8 e''8 f''8 c''8 a'4 
      | cis''8 d''8 bes'8 a'8 \tuplet 3/2 {aes'8 es''8 des''8} \tuplet 6/4 {c''8. ais'8 b'16~} 
      | b'8 r8 r4 c'8 d'8 e'8 f'8 
      | g'8 bes'8 aes'8 g'8 f'8 g'8 aes'8 bes'8 
      | fis'8 g'4 c'8~ c'16 f'8 e'16~ e'8 r8 
      | r4 r8 g'8 c''8 dis''8 f''8 g''8 
      \bar "||" \mark \default c'''4 \tuplet 3/2 {c'''4 g''8} f''8 e''8 c''4~ 
      | c''16 a''16 bes''8 aes''8 f''8 es''8 c''8 bes'8 ges'8~ 
      | ges'8 a'8 c''8 dis''8 \tuplet 3/2 {e''8 g''8 a''8} c'''4 
      | r4 r16 d'''16 b''16 d'''16 b''8 bes''8 a''8 f''8 
      | fis''8 g''4 g''8 ges''16 f''16 dis''8 c''8 d''16 dis''16~ 
      | dis''8 des''8 c''8 bes'8 aes'8 fis'8 g'8 f'8 
      | \tuplet 6/4 {e'8. g'8 a'16~} a'8 ais'8 c''8 cis''8 d''8 bes'8~ 
      | bes'4 c''8 b'8 ais'8 c''8 des''8 c''8 
      \bar "||" f''4 f''8 g''8 a''8 g''8 f''8 es''8 
      | cis''8 d''8 bes'8 a'8 gis'8 dis''8 \tuplet 3/2 {cis''4 b'8} 
      | c''4 f'8 a'8 g'8 r8 r4 
      | r8 f'8 \tuplet 3/2 {g'8 gis'8 ais'8} \tuplet 3/2 {b'8 c''8 b'8} bes'8 aes'8 
      | g'4 c''8 b'8 c''8 g'8 e'8 c'8 
      | f'4 \tuplet 3/2 {e'4 d'8} es'8. c'16~ c'16 b8 d'16~ 
      | d'8 g4 r8 r2 
      | \tuplet 3/2 {b'8 c''8 c''8} \tuplet 6/4 {c''8. c''8 c''16~} c''16 c''16 c''16 c''16~ c''8 c''8~ 
      \bar "||" \mark \default c''8 g'8 c''16 e''16 a''8 g''8 e''8 c''4 
      | \tuplet 6/4 {e''8 f''8. e''16~} e''16 f''16 e''16 f''16~ f''16 es''16 c''16 bes'16 aes'8. g'16~ 
      | g'4. c''8 e''8 g''8 b''8 c'''8~ 
      | c'''8 a''8 f''8 e''8 es''8 bes''16 aes''16 g''8 f''8 
      | e''8 g''8 \tuplet 6/4 {c'''8. b''8 c'''16~} c'''8 g''8 e''8 d''8~ 
      | d''16 bes''8 aes''16 bes''8 aes''8 f''8 c''8 bes'8 a'8 
      | gis'8 a'8 c''8 r8 r2 
      | \tuplet 3/2 {cis'''8 d'''8 es'''8} c'''8 bes''4 gis''8 fis''8 e''8 
      \bar "||" f''8 c''8 f''8 g''8 a''8 bes''8 c'''8 bes''8 
      | aes''4. f''8 fis''4. des''8 
      | \tuplet 3/2 {c''4 e''8} f''4 gis''16 a''8. \tuplet 3/2 {g''4 f''8~} 
      | f''4 \tuplet 3/2 {d''8 es''8 d''8} des''4. aes'8 
      | g'8 c''8 e''8 a''8 g''8 e''8 c''4 
      | \tuplet 6/4 {f''4~ f''16 e''16~} e''8 d''8 \tuplet 6/4 {dis''16 e''16 es''16 c''8 aes'16} g'8 f'8 
      | e'8 g'8 a'8. c''16~ c''8 r8 r4 
      | r4 r8 g'8 c''8 e''8 f''8 e''8 
      \bar "||" \mark \default g''4 e''8 d''8 c''4 a''8 aes''8 
      | g''8 ges''8 e''8 es''8 des''8 b'8 bes'8 aes'8 
      | g'8 a'8 c''8 dis''8 e''8 g''8 \tuplet 3/2 {a''4 c'''8} 
      | \tuplet 3/2 {d'''8 es'''8 d'''8} c'''8 ais''8 aes''8 fis''8 g''8 f''8 
      | e''8 g''8 b''8 c'''8 b''8 a''8 \tuplet 3/2 {a''8 bes''8 a''8} 
      | aes''8 f''8 es''8 c''8 bes'8 aes'8 g'8 f'8 
      | e'8 f'8 g'8 a'8 ais'8 c''8 \tuplet 3/2 {d''8 es''8 d''8} 
      | des''8 bes'8 c''8 des''8 dis''8 e''8 cis'''8 b''8 
      \bar "||" c'''8 a''8 f''8 c''8 bes''8 a''8 f''4 
      | f''4 \tuplet 3/2 {d''4 es''8~} es''8 cis''8 ais'8 c''8~ 
      | c''8 a'8 bes'16 c''16 d''8 \tuplet 3/2 {e''8 f''8 e''8} es''8 c''8 
      | gis'8 c''8 \tuplet 3/2 {dis''8 g''8 ais''8} aes''8 f''8 g''8 f''8 
      | \tuplet 3/2 {e''8 g''8 a''8} \tuplet 3/2 {c'''4 ais''8~} ais''8 g''16 a''16 g''8 f''8 
      | \tuplet 3/2 {e''8 es''8 d''8} c''8 bes'8 aes'8 aes'8 g'8 f'8 
      | e'8 g'8 a'8 c''4 r8 r4 
      | r8 g'8 c''8 e''8 f''8 e''8 f''8 e''8 
      \bar "||" \mark \default f''8 e''8 c''4 c''4 e''8 f''8~ 
      | f''8 f''8 es''8 c''8 bes'8 aes'8 r4 
      | g'4 r4 c''4 r4 
      | r2 r8 b'8 \tuplet 3/2 {c''8 e''8 a''8} 
      | g''4 a''4 c''8 dis''8 \tuplet 3/2 {e''4 c''8} 
      | des''8 c''8~ c''16 bes'8 aes'16~ aes'8 f'8 g'8 f'8 
      | e'8 g'8 a'8 c''4. c''8 b'8 
      | bes'16 d''16 f''8 a''8 aes''8 fis''8 e''8 dis''8 des''8 
      \bar "||" c''8 f''8 f''8 f''8 c''8 a'8 f'4 
      | b'8 c''8 bes'8 a'8 aes'8 r8 r4 
      | r8 f'8 g'8 a'8 bes'8 c''4 bes'16 a'16 
      | gis'8 c''8 \tuplet 3/2 {dis''8 g''8 gis''8} bes''4 aes''8 g''8~ 
      | g''8 a''8 c'''4 \tuplet 3/2 {a''8 bes''8 a''8} gis''8 f''8~ 
      | f''8 es''8 c''4 bes'8. aes'16~ aes'8 g'16 f'16 
      | e'4 r4 r8 g'16 c''16~ c''16 e''16 f''8 
      | dis''8 e''4 c''8 des''8 aes'8 g'8 f'8 
      \bar "||" \mark \default e'4.. c'16~ c'2\bar  ".."
    }
    >>
>>    
}
