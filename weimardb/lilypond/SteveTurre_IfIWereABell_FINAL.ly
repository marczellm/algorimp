\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "If I Were a Bell"
  composer = "Steve Turre"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      
      | g1:9 | c2:13sus4.9 c2:13.9 | f1:maj | s1 | a1:min7 | d1:7 | g1:7 | g2:min7 c2:13.9 
      | f2:6 f2:7/a | bes2:6 c2:13.9 | f1:6 | e2:min7 a2:7 | d2:min7 d2:min7/c | bes2:min7 e2:7 | a2:maj bes2:7 | a2:maj d2:7 
      | g1:9 | c2:13sus4.9 c2:13.9 | f1:maj | s1 | a1:min7 | d1:7 | g1:7 | g2:min7 c2:7 
      | f2:6 f2:7/a | bes2 b2:dim | f2:6/c bes2:13.9 | a2:min7 d2:7 | g1:min7 | c1:13.9 | f1:6 | s1 
      | g1:9 | c2:13sus4.9 c2:13.9 | f1:maj | s1 | a1:min7 | d1:7 | g1:7 | g2:min7 c2:7 
      | f2:6 f2:7/a | bes2:6 c2:13.9 | f1:6 | e2:min7 a2:7 | d2:min7 d2:min7/c | b2:min7 e2:7 | a2:maj bes2:7 | a2:maj d2:7 
      | g1:9 | c2:13sus4.9 c2:13.9 | f1:maj | s1 | a1:min7 | d1:7 | g1:7 | g2:min7 c2:7 
      | f2:6 f2:7/a | bes2 b2:dim | f2:6/c bes2:13.9 | a2:min7 d2:7 | g1:min7 | c1:13.9 | f1:6|
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


      \tempo 4 = 257
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 e'8. f'16~ f'8. cis'16~ cis'8\glissando  d'8~ 
      | d'2 c'4. a8 
      | f4 d4 c4. r8 
      | r2 e8 fis8~ fis16 g8 a16~ 
      | a8 c'8 c'8 a8 bes8 g8 a8 g8 
      | \tuplet 3/2 {fis4 bes8} c'8 dis'8 c'8 cis'8 d'8 a8 
      | c'4 c'4~ c'16 c'8 c'16~ c'8 d'8 
      | \tuplet 3/2 {e'8 f'4~} f'8 f8 bes4 bes8. g16~ 
      \bar "||" g8. ges'16~ ges'4 f'4 d'4 
      | f'4. gis'8\glissando  a'8 bes'8 r4 
      | r4 r8 a'8 bes'2~ 
      | bes'1~ 
      | bes'4 a'4 g'8 r8 r4 
      | \tuplet 3/2 {f'4 e'8~} e'8 e'8~ e'4. d'8 
      | cis'8 e'8 b8 e8 a8 c'8 des'8 f'8 
      | c'4 r4 c'8 d'8 e'8 g'8 
      \bar "||" fis'8 d'8 f'8 d'8 bes8 f8 e'8 es'8 
      | d'8 des'8 c'8 a16 bes16~ \tuplet 3/2 {bes8 des'8 bes8~} bes8 g8 
      | f2 e8 g8 a8 des'8 
      | e'8 e'16 d'16~ d'16 des'8 c'16~ c'16 a8 bes16~ \tuplet 3/2 {bes8 des'8 c'8} 
      | a4 fis8 a8 c'8 f'8 c'8 cis'8 
      | d'8 bes8 a8 c'4. r4 
      | r4 c''8. bes'16~ bes'8 d'8 fis'8. b'16~ 
      | b'8 g'4 f'8 e'8 d'8 c'8 bes8 
      \bar "||" \tuplet 3/2 {a4 c'8} e'8 g'4 g'4 f'8~ 
      | f'8 d'4 f'8 b4 d'8 b8 
      | c'8 a8 f4 gis8\glissando  a8 bes4~ 
      | bes4 \tuplet 3/2 {gis4 fis8~} fis8 e'4 cis'8 
      | d'8 bes8 bes8 bes8 bes8 bes8 bes8 a8 
      | b8 c'8 b8 c'8 r2 
      | r2 c'16 d'8 f'16~ f'8\bendAfter #-4  e'8 
      | r1 
      \bar "||" \mark \default c''16 cis''16 d''4. c''8 r8 r4 
      | r2 bes'8. a'16~ a'8 f'8~ 
      | f'8 c'8 c'4 c'8. c'16~ c'8\bendAfter #-4  b8 
      | r2. d'16 dis'8. 
      | \tuplet 3/2 {e'8 f'4~} f'4 d'8 cis'8 r4 
      | r4 \tuplet 3/2 {d'4 gis'8~} gis'4 f'4 
      | f'4 f'4~ f'16 b16 c'8\bendAfter #-4  b16 bes16 r8 
      | r4 r8 b8 \tuplet 3/2 {bes4 b8} aes4 
      \bar "||" f4~ f16 f8\bendAfter #-4  e16 r2 
      | r8. cis'16 d'8 c'8 bes4 gis4 
      | a4 f'4 d'4 r4 
      | r4 r8 g'8~ g'2~ 
      | g'4 f'4 e'4 d'8. e'16~ 
      | e'4 d'4~ d'16 b8 cis'16~ cis'4~ 
      | \tuplet 3/2 {cis'8 e'8 fis'8~} fis'8 gis'8~ \tuplet 3/2 {gis'8 ges'8 e'8~} \tuplet 3/2 {e'8 des'8 b8~} 
      | b4 f4 \tuplet 3/2 {c'8 d'8 c'8} gis8 r8 
      \bar "||" r4 r8 f8 bes8 fis8 bes8 d'16 cis'16 
      | b8 g8 b8 es'8 c'8 a8 \tuplet 3/2 {e4 d8} 
      | c8 d8 e8 a8 g8 e8 f8 g8 
      | a8 c'8 a8 a8 bes8 g8 a8 bes8 
      | bes8 c'8 cis'8 d'8 dis'8 f'8 e'8 f'8 
      | ges'4. f'4 d'4 b8 
      | d'4 b8 a8 g8 r8 r4 
      | gis8. des'16~ des'8 e'4 d'4 c'8~ 
      \bar "||" c'8 a4 des'8 f'8 d'8 r4 
      | r8 f'4 es'8 f'8 d'8 r4 
      | r8 f'4 d'8 \tuplet 3/2 {f'4 es'8~} es'8 c''8~ 
      | c''8 a'4 bes8 \tuplet 3/2 {f'4 d'8} r4 
      | r8. f'16~ f'8 a'8 c''8 bes'8 c''8 c''8 
      | bes'16 b'16 c''8~ c''2 b'8 bes'8~ 
      | bes'8. aes'16~ aes'8 f'8~ f'8. es'16~ es'8. c'16~ 
      | c'8 bes8 b8 f'8 c'4 a8 f8\bar  ".."
    }
    >>
>>    
}
