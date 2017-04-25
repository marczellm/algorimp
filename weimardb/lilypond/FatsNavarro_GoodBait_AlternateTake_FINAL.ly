\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Good Bait (Alternate Take)"
  composer = "Fats Navarro"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | r1 
      | bes2:6 g2:7 | c2:min7 f4:7 f4:7/es | d2:min7 g2:7 | c2:min7 f2:7 | bes2:maj bes2:7/d | es2:maj e2:dim | d4:min7/f g4:7 c4:min7 f4:7 | bes2:6 f2:7 
      | bes2:6 g2:7 | c2:min7 f4:7 f4:7/es | d2:min7 g2:7 | c2:min7 f2:7 | bes2:maj bes2:7/d | es2:maj e2:dim | d4:min7/f g4:7 c4:min7 f4:7 | bes2:maj bes2:775+ 
      | es2:6 c2:7 | f2:min7 bes4:7 bes4:7/aes | g2:min7 c2:7 | f2:min7 bes2:7 | es2:maj es2:7/g | aes2:maj a2:dim | g4:min7 c4:7 f4:min7 bes4:7 | es2:6 f2:9 
      | bes2:6 g2:7 | c2:min7 f4:7 f4:7/es | d2:min7 g2:7 | c2:min7 f2:7 | bes2:maj bes2:7/d | es2:maj e2:dim | d4:min7/f g4:7 c4:min7 f4:7 | bes1:6|
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


      \tempo 4 = 146
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 f'8 g'8 a'4 
      \bar "||" \mark \default bes'4 f''8 f''8 e''4 f''8. c''16 
      | d''8. bes'16~ bes'8 bes'8 a'16 f'8 g'16 a'4 
      | bes'4. f''8 e''4 \tuplet 3/2 {f''4 cis''8~} 
      | cis''16 d''8 bes'16~ \tuplet 6/4 {bes'16 g'16 aes'16 g'16 f'8} f'8 a'8~ \tuplet 6/4 {a'16 c''16 des''16 b'16 a'8~} 
      | a'16 bes'8 g'16 aes'8 bes'4 r8 r4 
      | r2 fis'8 g'8 bes'8 d''8~ 
      | \tuplet 6/4 {d''16 e''16 f''8 e''16 f''16} \tuplet 3/2 {e''8 f''8 es''8~} es''16 des''16 c''16 bes'16~ bes'16 aes'8 f'16~ 
      | f'4 r2. 
      \bar "||" r4 \tuplet 6/4 {r8. c'''16 b''16 a''16~} \tuplet 6/4 {a''16 f''16 es''8 cis''16 d''16~} d''16 bes'16 g'16 f'16 
      | \tuplet 6/4 {cis''16 d''16 c''16 bes'16 a'8} bes'16 a'16 g'16 ges'16 f'16 d'16 es'16 f'16 \tuplet 6/4 {g'8 es'16 des'16 b16 c'16} 
      | f'16 d'16 es'16 f'16 g'16 bes'16 d''16 des''16 c''16 bes'16 a'16 c''16 es''16 g''16 ges''16 f''16~ 
      | f''16 d''16 es''16 g'16 aes'16 d''16 c''16 bes'16 \tuplet 5/4 {a'8 c''16 es''16 g''16} ges''16 e''16 f''16 es''16 
      | d''16 c''16 b'16 a'16 \tuplet 3/2 {bes'8 aes'16 r8.} r2 
      | r8 fis'8 \tuplet 3/2 {g'8 bes'8 d''8} f''8 es''8 c''8 cis''8 
      | d''8 bes'8 g'8 ges'8 f'8 a'8 \tuplet 6/4 {c''16 d''16 c''16 b'8.} 
      | bes'8 a'8 aes'8 es''8~ es''16 g''16 ges''16 f''16 e''8 bes'8 
      \bar "||" es''8 r8 r4 r16 bes''8 a''16 aes''16 g''16 f''16 es''16~ 
      | es''16 d''8 des''16 c''16 des''16 c''16 b'16 bes'8 aes'8 f'8 fis'8 
      | g'8 f'8 d'8 es'8~ es'16 e'8 des''16~ des''16 bes'8 b'16~ 
      | b'16 c''8 aes'16~ \tuplet 3/2 {aes'8 f'8 es'8} d'8 b'8~ \tuplet 3/2 {b'8 gis'8 a'8} 
      | \tuplet 3/2 {bes'4 g'8~} g'4 r2 
      | r4 r8 fis''8 g''8. d''16~ d''8 f''8~ 
      | f''16 es''8 d''16~ \tuplet 6/4 {d''16 c''16 d''16 c''16 b'8} bes'8 aes'8~ aes'16 f'8 fis'16~ 
      | fis'16 g'8 f'16~ \tuplet 6/4 {f'16 es'16 e'16 es'16 d'8~} d'16 es'8 e''16~ \tuplet 5/4 {e''16 cis''16 d''16 des''16 b'16~} 
      \bar "||" b'16 c''8 bes'16~ \tuplet 3/2 {bes'8 a'8 bes'8~} bes'8 d''8 \tuplet 3/2 {f''4 d''8~} 
      | d''16 es''8 g'16~ g'16 bes'8 d''16~ d''8 des''8 a'8 f'8~ 
      | \tuplet 6/4 {f'16 c''8. a'16 f'16} e'16 d'8 des'16~ des'8 r8 r4 
      | r8 c'16 d'16 es'16 f'16 g'16 bes'16 \tuplet 5/4 {des''16 a'16 c''16 bes'16 a'16~} a'16 c''16 es''16 g''16~ 
      | g''8 f''8 r2. 
      | r2 bes''8 bes''8 \tuplet 3/2 {aes''8 g''8 ges''8~} 
      | ges''16 f''8 a'16 bes'8 es''8~ es''16 d''8 bes'16~ bes'16 g'8 f'16 
      | \tuplet 3/2 {b'8 c''8 bes'8} a'8 bes'8 \tuplet 3/2 {d''4 f''8~} f''8 r8\bar  ".."
    }
    >>
>>    
}
