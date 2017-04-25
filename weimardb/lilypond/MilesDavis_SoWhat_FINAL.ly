\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "So What"
  composer = "Miles Davis"
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
      | d1:min 
      | d1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | d1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es1:min | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s4 d2.:min|
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


      \tempo 4 = 139
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 d''4. c''8 
      \bar "||" \mark \default d'4. r8 r2 
      | r8. d'16~ d'8.. a'32~ a'8 g'8~ g'8. a'16~ 
      | \tuplet 6/4 {a'16 d'4 d'16} r2. 
      | r8. d'16~ d'8 f'8 a'8 g'4 a'8 
      | d'8 d'8~ d'16 f'8 a'16~ a'8 g'4 a'8~ 
      | a'8 c''8~ c''8. b'16~ b'8 c''8~ \tuplet 6/4 {c''16 b'4 a'16~} 
      | a'4~ a'16 f'8 a'16~ a'16 g'8 a'16~ a'16 d'8 d'16 
      | r2 d''8. d''16~ d''16 d''8 d''16~ 
      \bar "||" d''8 r8 r2. 
      | r4 d''4 f''2 
      | \tuplet 3/2 {d''4 a'8} g'4. f'8 f'8 r8 
      | r1 
      | r4 r8. e'16~ \tuplet 6/4 {e'8 f'8. g'16~} g'16 a'8 cis''16~ 
      | cis''8 d''8~ \tuplet 6/4 {d''16 e''4 g''16~} g''8 e''8~ e''8. d''16~ 
      | \tuplet 6/4 {d''8 c''8. a'16~} a'8 g'8~ g'16 d'8 d'16 r4 
      | r1 
      \bar "||" r4 aes4~ aes16 es'8 cis'16 f'8 aes'8~ 
      | aes'16 fis'8 bes'16~ bes'16 c''8 cis''16 es''4 \tuplet 3/2 {c''4 bes'8~} 
      | bes'2 bes'4 aes'4 
      | r4 fis'4~ fis'16 f'8 aes'16~ aes'4~ 
      | aes'16 es'8 es'16~ es'8 r8 r2 
      | r8. aes16~ aes16 bes8 cis'16~ cis'16 es'8 f'16~ f'16 fis'8 aes'16~ 
      | aes'16 bes'8 cis''16 d''4. aes''4 d''8 
      | cis''8 c''8 \tuplet 3/2 {bes'4 aes'8} g'8 a'8~ a'16 cis''8 d''16~ 
      \bar "||" d''8 a'8 a'4 r2 
      | r2 r16 d''8 a'16~ a'16 d'8 f'16~ 
      | f'4 a'8 r8 r2 
      | r2 \tuplet 6/4 {r4 r16 d''16~} d''8 d''8~ 
      | d''4 r2. 
      | \tuplet 3/2 {d''8 d''4} f''2 \tuplet 3/2 {e''4 d''8~} 
      | d''8 a'8 a'4 r2 
      | r2 g''16 g''4. e''16~ 
      \bar "||" \mark \default e''1~ 
      | e''4 \tuplet 3/2 {e''4 c''8} e''4 g''4 
      | e''4.. c''16~ c''8 c''4.~ 
      | c''2 g'4.. e'16~ 
      | e'2 r2 
      | r4 c''4 e''4.. c''16~ 
      | c''16 e''8 g''16~ g''16 e''8 c''16~ c''4 a'4~ 
      | a'4 f'8. a'16~ a'2~ 
      \bar "||" a'16 d''8 aes'16~ aes'8 g'4 f'8 f'8 r8 
      | r2. d'16 f'8 a'16~ 
      | a'8 cis''16 d''16 a'4 \tuplet 3/2 {g'4 g'8} r4 
      | r1 
      | r4 r16 d'8 a'16~ a'8 g'8 \tuplet 6/4 {a'4~ a'16 d'16~} 
      | d'8 d'8 f'8 a'8~ \tuplet 6/4 {a'16 g'8. gis'16 a'16~} a'8. d'16~ 
      | d'16 c''8 b'16 c''8. b'16~ b'16 a'8 a'16~ a'4 
      | r2. aes''4~ 
      \bar "||" aes''4.. f''16~ f''8 cis''4.~ 
      | cis''4.. bes'16~ bes'8 aes'8 fis'4 
      | f'4~ \tuplet 6/4 {f'16 es'4 es'16~} es'4 cis'8 r8 
      | r2. r8. f'16~ 
      | f'16 es'8 fis'16~ fis'16 f'8 aes'16~ aes'8 fis'8~ fis'8. bes'16~ 
      | bes'16 aes'16 c''16 bes'16~ bes'4.. cis''16~ \tuplet 6/4 {cis''4~ cis''16 es''16~} 
      | es''8 c''8 aes'8 r8 r2 
      | r2 r16 d''8 e''16~ e''16 f''8 g''16~ 
      \bar "||" g''2 e''2~ 
      | e''2 c''4.. a'16~ 
      | a'16 c''8 e''16~ \tuplet 6/4 {e''16 g''4 e''16~} e''2 
      | c''4 \tuplet 3/2 {d''4 c''8~} c''8. b'16 a'4 
      | a'4. r8 r2 
      | r8. d'16~ d'16 f'8 a'16~ a'16 g'8 a'16 \tuplet 3/2 {cis''4 d''8~} 
      | d''8 e''4. c''4.. a'16~ 
      | a'4 \tuplet 3/2 {f'4 gis'8} a'4 d'4 
      | d'4 r2.\bar  ".."
    }
    >>
>>    
}
