\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bohemia After Dark"
  composer = "Nat Adderley"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      
      | d1:9- | d1:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- 
      | g1:min7 | s1 | s1 | c1:7 | s1 | s1 | s1 | s1 
      | a1:min5-7 | d1:7 | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- 
      | g1:min7 | s1 | s1 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:7 
      | g1:min7 | d2:7 g2:min7 | s1 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- 
      | g1:min7 | s1 | c1:7 | s1 | s1 | s1 | s1 | s1 
      | a1:min5-7 | d1:7 | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- 
      | g1:min7 | s1 | s1 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:7 
      | g1:min7 | d2:7 g2:min7 | s1 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- 
      | g1:min7 | s1 | c1:7 | s1 | s1 | s1 | s1 | s1 
      | a1:min5-7 | d1:7 | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9- 
      | g1:min7 | s1 | s1 | a2:min5-7 d2:9- | g1:min7 | a2:min5-7 d2:9-|
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


      \tempo 4 = 295
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r2 r16 c''8 d''16~ d''8 d''8~ 
      \bar "||" d''1~ 
      | d''2 c''8 d''4 f''8~ 
      | f''8 d''2..~ 
      | d''2 c''8 d''4 a''16 g''16~ 
      | g''8 f''2..~ 
      | f''2~ f''16 d''8 f''16~ f''8 d''8~ 
      | d''2. r4 
      | r1 
      | r8 e''4. e''2 
      | c''4 c''4 bes'4 c''4~ 
      | c''8 e''4. e''2 
      | g''4 g''4 e''4 g''4~ 
      | g''8 e''8 r4 e''2 
      | f''16 e''8 e''16 d''4 \tuplet 3/2 {c''8 d''4} c''4 
      | bes'8 c''8 bes'4 a'8 bes'8 a'4 
      | g'8 a'8 bes'8 g'8 f'8 g'16 f'16~ f'4~ 
      \bar "||" f'2~ f'8 d'8 r4 
      | f'4. a'8 r2 
      | r1 
      | r2 a'8 ges'8 f'16 g'16 a'8 
      | bes'16 c''8 cis''16~ cis''8 d''8 es''4 r4 
      | r4 \tuplet 3/2 {cis''8 d''4} es''8 cis''8 d''8 bes'8 
      | c''8 a'8 bes'4 g''8 g''8 r4 
      | r1 
      \bar "||" \mark \default r2 g''8 bes''4 des'''8 
      | e'''8. d'''16 \tuplet 3/2 {des'''8 bes''8 bes''8} a''8 g''16 g''16 \tuplet 3/2 {aes''8 bes''8 a''8} 
      | g''8 a''8 b''8 c'''8 r2 
      | r1 
      | r2. r8. des'''16 
      | \tuplet 3/2 {f'''8 ges'''4} aes'''4. g'''8 gis'''8 fis'''8~ 
      | fis'''8 aes'''8 ges'''8 aes'''8 \tuplet 3/2 {f'''8 ges'''4} d'''8 des'''8 
      | es'''8 c'''8 cis'''8 gis''16 b''16~ \tuplet 3/2 {b''8 g''8 f''8~} \tuplet 3/2 {f''8 e''8 es''8~} 
      \bar "||" \tuplet 3/2 {es''8 aes'8 bes'8~} bes'8 ges'8 bes'8 r8 r4 
      | bes'8 g'8 a'8 bes'8 \tuplet 3/2 {c''4 a'8} bes'8 c''8 
      | cis''8 d''8 es''8 cis''8 \tuplet 3/2 {d''8 bes'8 c''8~} c''8. bes'16~ 
      | bes'8 g'8 a'8 fis'8 g'8 f'8 \tuplet 3/2 {bes'4 g'8} 
      | a'8 bes'8~ bes'16 c''16 d''8 d''8 r8 r4 
      | r2 g''8 f''8 d''16 des''8 c''16~ 
      | c''16 d''16 bes'16 g'16~ \tuplet 3/2 {g'8 f'8 c''8~} c''8. bes'16~ bes'4 
      | c''4 bes'4 c''4 bes'4 
      \bar "||" es''16 f''16 e''4 d''8 c''4 d''4 
      | e''4. g'8~ g'4. r8 
      | r1 
      | r2 g''8 es''8 d''8 des''16 es''16~ 
      | \tuplet 3/2 {es''8 b'8 bes'8~} bes'8 d''8 \tuplet 3/2 {a'8 bes'8 a'8} g'8 f'8 
      | e'8 f'8 g'8 a'8 bes'8 c''16 des''16~ \tuplet 3/2 {des''8 aes'8 c''8} 
      | \tuplet 3/2 {des''8 a'8 bes'8~} bes'8 gis'8 a'16 fis'8 g'16~ g'16 a'8 bes'16~ 
      | bes'16 c''8 d''16~ d''8. cis''16 d''8. c''16 d''4 
      \bar "||" \tuplet 3/2 {c''8 d''4~} d''8 g'4 bes'4. 
      | bes'8 r8 r2. 
      | d''8. f''16~ f''4 d''4 f''4~ 
      | f''4. r8 r2 
      | r1 
      | r2 \tuplet 3/2 {f''4 f''8~} f''8 gis''8 
      | \tuplet 3/2 {a''4 a''8~} a''4\bendAfter #-4  r2 
      | r1 
      \bar "||" \mark \default r16 b''16 c'''16 b''16 a''8 f''8 \tuplet 3/2 {e''8 f''8 d''8} des''8 e''8 
      | d''4 d''4 d''4 e''4 
      | f''4. d''4. r4 
      | r1 
      | r8 g''16 f''16~ f''4 d''4 des''4 
      | c''4 bes'4 g'8 bes'8 c''8 des''8~ 
      | des''4 c''8. a'16 c''8. d''16 bes'8 r8 
      | r1 
      \bar "||" r8 bes'16 a'16 g'8. bes'16 c''4 des''4 
      | c''4 bes'4 cis''8 d''8 f''8 r8 
      | r4 \tuplet 3/2 {r8 g'8 bes'8} c''4 des''4 
      | c''4 bes'4 cis''8 d''8 fis''8 g''8~ 
      | g''8 es''16 f''16~ f''8 d''4 des''4 c''8~ 
      | c''8 bes'4 ges'8 cis''8 d''8 es''8 cis''8 
      | d''8 bes'8 c''8 a'8 \tuplet 3/2 {bes'4 gis'8} a'16 bes'16 aes'8 
      | fis'8 g'8 \tuplet 3/2 {a'4 f'8} \tuplet 3/2 {gis'8 a'4} g'4~ 
      \bar "||" g'2 r2 
      | r1 
      | r8 ges''16 f''16 es''16 d''16 des''16 c''16~ c''8 b'8 bes'8 d''8 
      | \tuplet 3/2 {a'8 bes'8 a'8} g'8 f'8 e'8 f'8 \tuplet 3/2 {ges'8 a'4} 
      | bes'8 c''16 cis''16 d''8 des''8 \tuplet 3/2 {c''8 bes'8 a'8} bes'8 a'8~ 
      | a'8 f'8 \tuplet 3/2 {e'8 f'4} g'8 e'8 f'8 e'16 a'16~ 
      | a'8 c''8 r2. 
      | r2 c''8 d''4 bes'8~ 
      \bar "||" bes'8 a'2..~ 
      | a'2 e''4. bes'8~ 
      | bes'8 a'8~ a'2 r4 
      | r4 r8. a'16 bes'16 a'8 g'16 a'8 bes'8 
      | a'8 des''8 r2 r8 cis''16 d''16 
      | des''8 c''8~ c''16 bes'8 aes'16~ aes'16 des''16 bes'8 g'4 
      | g'4 bes'4 c''4 bes'4 
      | c''4 bes'4 \tuplet 3/2 {c''8 bes'8 g'8~} g'8 g'8~ 
      \bar "||" \mark \default g'8. bes'16~ bes'8 des'16 g'16~ g'4 bes'4~ 
      | bes'2.. g'8~ 
      | g'4 g'4 f'4 g'4~ 
      | g'2. r4\bar  ".."
    }
    >>
>>    
}
