\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Agitation"
  composer = "Miles Davis"
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
      | r1 | s1 
      | g1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s2 aes2 | s2 des2 | aes1 | des2 aes2 | s2 des2 | aes2 des2 | s2 aes2 
      | des1 | c2:sus4 g2:sus4 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | aes1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | g1:sus4 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | aes1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | g1:sus4 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s2. aes4|
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


      \tempo 4 = 253
      \set Score.currentBarNumber = #-1
     
      \bar "||" \mark \default r2 bes'8 f'16 aes'16~ aes'8 f'16 g'16~ 
      | g'4~ g'16\bendAfter #-4  d'8 f'16~ f'16 d'8 es'16~ es'8 c'8 
      \bar "||" \mark \default r1 
      | r1 
      | r1 
      | r4 \tuplet 3/2 {r8 d''8 d''8} \tuplet 3/2 {d''8 d''8 d''8} \tuplet 3/2 {d''8 d''8 d''8} 
      | d''2 dis''4 c''8 r8 
      | r2 d''16 d''16 d''8 d''8 d''8~ 
      | d''8 dis''8 c''4 g'4\bendAfter #-4  d'8 dis'8 
      | r1 
      | r4 es'8 d'8 dis'16 f'8 g'16~ \tuplet 3/2 {g'8 a'8 bes'8} 
      \bar "||" a'8 gis'8~ gis'16 ais'8 b'16~ b'16 c''8 cis''16~ cis''8 d''8 
      | es''8 r8 r4 c''8 d''8 r4 
      | r1 
      | r2 r8 d''8 d''8. d''16~ 
      | d''8 d''4 d''4. es''4 
      | c''4 c''8 r8 r2 
      | r1 
      | r2 \tuplet 3/2 {r8 aes'8 g'8} aes'8 des''8 
      | c''8 d''8 dis''8 f''8 g''8 aes''8 g''8 fis''8 
      \bar "||" \mark \default \tuplet 3/2 {g''8 f''8 e''8} es''8 d''8 c''8 b'8 bes'8 a'8 
      | gis'8 dis'8 \tuplet 3/2 {c'8 fis8 a8} ais4 gis8 r8 
      | r1 
      | r2 g'4. g'8~ 
      | g'8 r8 r4 c''4 d''8 r8 
      | r2 c''4 dis''8 r8 
      | r2 g'4 g'4~ 
      | g'2 c''8 d''8 es''8 d''8 
      | r2 c''4 b'8 r8 
      | r2 r16 d''8 b'16~ \tuplet 3/2 {b'8 c''8 d''8} 
      | dis''8 ges''16 f''16 g''8 aes''8 g''2~ 
      | g''2~ g''16 gis''8 cis''16~ cis''8 b'8 
      | r2 r8 ais'8 g'8 gis'8 
      | \tuplet 3/2 {dis'8 b8 ais8} gis4 ais4 r4 
      | r2 \tuplet 3/2 {r8 g'8 e'8} f'8 e'8 
      | dis'8 fis'8 g'8 a'8 ais'8 gis'8 a'8 g'8 
      | gis'8 ais'8 b'8 c''8 cis''8 d''8 dis''8 f''8 
      | g''8 aes''8 g''8 e''8 f''8 e''8 dis''8 cis''8 
      | r2 d''8 r8 r4 
      | dis''8 r8 r8 c''8 r4 d''8 r8 
      | r8 dis''8 r4 c''8 r8 r8 d''8~ 
      | d''4 dis''2 c''4 
      | d''2~ d''16 dis''8 cis''16 b'4 
      | \tuplet 3/2 {a'8 bes'8 a'8} gis'8 r8 r4 ais'8 gis'8 
      | r2 ais'8 r8 r4 
      | r1 
      | f'4 \tuplet 3/2 {f'4 d'8} dis'8 fis'8~ fis'16 g'8 a'16~ 
      | \tuplet 3/2 {a'8 bes'8 a'8} gis'8 ais'8 b'8 cis''8 dis''8 f''8 
      \bar "||" g''8 aes''8 es''8 b'8 r2 
      | r2 r16 bes'8 bes'16 aes'8 bes'8 
      | des'8 f'8 e'8 fis'8 g'8 a'8 bes'8 a'8 
      | aes'8 ais'8 b'8 c''8 es''8 f''8 g''8 aes''8~ 
      | aes''2 g''8 des''16 b'16~ b'8 bes'8 
      | r2. r8 bes'8 
      | a'8 g'8 ais'8 b'8 des''8 e''8 f''8 a''8 
      | aes''8 g''4. ges''8 f''8 e''8 es''8 
      | des''8 c''8 a'8 bes'8 a'8 e'8 \tuplet 3/2 {d'8 b8 aes8~} 
      | aes8 r8 r4 r8 ges'8 \tuplet 3/2 {dis'8 e'8 fis'8~} 
      | fis'8 g'8 \tuplet 3/2 {a'8 bes'8 a'8} aes'8 ais'8 b'8 des''8 
      | es''8 f''8 g''8 aes''8 g''8 ges''8 \tuplet 3/2 {e''8 d''8 e''8} 
      \bar "||" \mark \default dis''8 cis''8 b'8 a'8 bes'8 a'8 gis'8 r8 
      | r1 
      | f''8 g''8~ g''2 \tuplet 3/2 {aes''4 g''8~} 
      | g''2 f''4 g''4 
      | gis''2 c''4. g''8~ 
      | g''4.. aes''16~ aes''8 g''8 fis''8 e''8 
      | r2. r8. dis''16~ 
      | dis''16 a''8 b'16 f''8 a'8 dis''8 gis'8 d''8 a'8 
      | c''4. ais'8 r4 r8 aes'8 
      | r2 g'8 r8 r8 fis'8 
      | r4 bes'8 r8 r8 a'4 d''8~ 
      | d''8 dis''8 f''4~ \tuplet 3/2 {f''8 g''8 aes''8} \tuplet 3/2 {g''8 g''8 ges''8~} 
      | \tuplet 3/2 {ges''8 f''8 e''8} dis''8 cis''8~ cis''16 b'8 a'16 bes'8 a'8 
      | gis'8 r8 r4 d''8 d''8 d''8 d''8 
      | d''8 dis''4 c''8 r2 
      | r2 d''8 d''8 d''8 d''8 
      \bar "||" d''8 es''8 r2. 
      | r4 \tuplet 3/2 {des''8 b'8 c''8} b'8 bes'8 a'8 aes'8 
      | es'8 f8 g8 aes8~ aes4. bes8 
      | gis8 a8 b8 des'8 f'2\bendAfter #-4  
      | d'16 es'8 f'16 g'4.\bendAfter #-4  r8 r8 f'8~ 
      | f'8. d'16 es'8 f'8 \tuplet 3/2 {g'4 a'8} bes'8 a'8 
      | aes'8 bes'8 d''8 des''16 es''16~ es''8 r8 r4 
      | r1 
      | r1 
      | r1 
      | d''8 d''8 d''8 d''8 \tuplet 3/2 {d''8 d''8 d''8} d''4 
      | es''1~ 
      | es''1~ 
      | es''1~ 
      \bar "||" \mark \default es''1~ 
      | es''1~ 
      | es''1~ 
      | es''1~ 
      | es''2. f''4 
      | dis''4 dis''4 es''4 d''4 
      | c''4. c''4 c''4 c''8~ 
      | c''2 c''4 ais'8 r8 
      | r2 ais'8 ais'4 ais'8~ 
      | ais'2 ais'4 aes'4 
      | g'2 g'4. g'8~ 
      | g'4 r2. 
      \bar "||" \mark \default r4 \tuplet 3/2 {g''4 f''8~} f''8. f''16~ f''8. c''16~ 
      | c''8 d''8 r4 dis''8. gis'16 f''8 r8 
      | r4 f''8. es''16~ es''8. d''16~ d''8 c''8 
      | r8. ais'16 r4 ais'4 e'16 gis'16 r8 
      \bar "||" r4 \tuplet 3/2 {r8 d''8 dis''8} f''8 g''8 aes''4~ 
      | aes''8. des'''16~ des'''4 r2 
      | r1 
      | r1 
      | r4 g''16 bes'16 f''16 g'16 \tuplet 5/4 {es''8 g'16 d''16 f'16} c''16 f'16 bes'16 es'16 
      | aes'16 b16 g'16 b16 f'16 bes16 es'16 g16 d'16 bes16 c'16 a16 bes16 ges16 aes8\bar  ".."
    }
    >>
>>    
}
