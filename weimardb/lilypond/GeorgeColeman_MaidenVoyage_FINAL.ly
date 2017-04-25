\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Maiden Voyage"
  composer = "George Coleman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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


      \tempo 4 = 125
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 d'8 \tuplet 3/2 {c'8 b8 c'8} \tuplet 3/2 {e'8 g'4} 
      | a'8. d''16~ d''4 \tuplet 3/2 {c''8 b'8 g'8~} g'4 
      | \tuplet 3/2 {a'8 g'8 d'8~} d'2~ d'16 g'16 d'16 c'16~ 
      | c'2.~ \tuplet 3/2 {c'8 d'8 dis'8} 
      | e'16\glissando  f'8.~ f'8 es'16 d'16 c'2~ 
      | c'8 r8 r2. 
      | r16 c'16 f'16 bes'16~ bes'4.. c''16 f'4~ 
      | f'4. bes'16 f'16 aes'16\glissando  bes'8.~ bes'16\glissando  a'8 f'16~ 
      \bar "||" f'16 d'16 c'8~ c'2 r4 
      | r2. d16 b16 c'16 e'16 
      | \tuplet 6/4 {g'16 b'16 d''4~} d''4 c''16 b'16 a'4.~ 
      | a'4. b'16 a'16 g'16 fis'16 e'16 d'16 c'16 b16 a16 g16 
      | f2.~ \tuplet 6/4 {f8 bes8 f16 c'16~} 
      | c'8 f'8 r4 r16. bes16. f32 c'32~ c'8 f'8 
      | bes'8 r8 r8 bes16 f16 c'8 f'8 r4 
      | r4 \tuplet 5/4 {des'16 e'16 d'16 b16 g16} \tuplet 6/4 {ges16 a16 ges16 aes8 b16} \tuplet 3/2 {des'8 ges'8 e'8} 
      \bar "||" d'16 es'16 des'8~ des'32 c'16 cis'32 d'32 es'16 c'32 des'16 es'16 f'16 aes'16 c''16 des''16 c''16 b'16 
      | bes'16 aes'16 g'16 f'16 es'16 des'16 bes16 f16 c'16 des'16 c'16 b16 \tuplet 3/2 {bes8 f8 aes8} 
      | g16 f16 es16 d32 des32~ des16 es16 f16 aes32 c'32~ c'8 a8 bes8. c'16 
      | des'16 es'16 f'16 g'16 \tuplet 6/4 {aes'8 bes'16 c''16 des''16 c''16~} \tuplet 6/4 {c''4 aes'16 bes'16} r4 
      | r2. r8 d''16 es''16~ 
      | es''4.. des''16~^\markup{\left-align \small vib} des''4. b'8 
      | bes'16 aes'16 ges'16 f'16 \tuplet 6/4 {e'16 f'16 ges'16 aes'8 e'16} \tuplet 3/2 {es'8 des'8 es'8} des'16 b16 bes16 aes16 
      | ges8. dis16 e4 \tuplet 6/4 {r8 aes16 b8 aes16} \tuplet 3/2 {es'8 des'16 r8.} 
      \bar "||" r2. a'16\glissando  b'16 d''16 c''16 
      | \tuplet 6/4 {b'8 a'8 gis'16 b'16} a'16 g'16 fis'16 e'16 d'16 des'16 c'16 e'16 b4~ 
      | b16 g16 f16 c16~ c16 e16 g16 b16 dis'32 g'32 b'32 d''32 b'16 g'32 e'32 b16 g16 e16 c16~ 
      | c8 r8 r2. 
      | r2 c'8. f'16~ f'8. g'16 
      | r4 r8. bes'16 c''16 f'16 r8 \tuplet 6/4 {r8. f'16 bes'16 f'16} 
      | c'4 \tuplet 7/8 {c'32 f'32 bes'32 f'32 bes32 g32 f32} c4~ \tuplet 6/4 {c16 f16 bes16 es'16 bes'16 f'16~} 
      | f'1 
      \bar "||" \mark \default d'1\bar  ".."
    }
    >>
>>    
}
