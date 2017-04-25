\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Trane's Blues"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      
      | bes4:7 r4 s4 s4 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | c2:min5-7 f2:9- | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | d2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7 | es1:7 | bes1:7 | s1 
      | es1:7 | s1 | bes1:7 | d2:min7 g2:7 | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 
      | bes1:7 | es1:7 | bes1:7 | s1 | es1:7 | s1 | bes1:7 | f2:min7 g2:7 
      | c1:min7 | f1:7 | bes1:7 | c2:min7 f2:7 | bes1:7|
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


      \tempo 4 = 165
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r1 
      | r1 
      | \tuplet 6/4 {r16 d'8 c'8 bes16~} bes16 es'16 f'16 g'16 f'2 
      | bes'4. b8 es'2~ 
      | es'8 g'8 bes'2 r4 
      | r1 
      | r16 bes'8 a'16~ a'8. des''16~ des''8 b'4 fis'8~ 
      | fis'8 e'8 r2. 
      | r8. aes'16 g'8 ges'8~ ges'16 f'8 es'16~ es'16 d'8 c'16 
      | bes8 r8 r8 aes'8~ \tuplet 3/2 {aes'8 fis'8 g'8~} g'16 e'8 c'16~ 
      | c'16 b8 des'16~ des'16 es'8 ges'16~ ges'8 f'4. 
      \bar "||" \mark \default f'4 c'4 bes2~ 
      | bes16 fis'16 g'4 bes4 c'8 des'8 r8 
      | r2. r8 es'8~ 
      | es'16 g'8 f'16~ f'16 es'8 c'16 aes4 d'8 c'8 
      | \tuplet 3/2 {bes4 aes'8~} aes'16 g'8 f'16~ f'16 es'8 bes16 c'8 es'8 
      | r4 r8. a'16 \tuplet 6/4 {bes'4~ bes'16 a'16~} a'8. g'16~ 
      | g'16 f'8 c'16~ \tuplet 6/4 {c'16 es'4 f'16} \tuplet 3/2 {es'8 d'4} r4 
      | r8. d'16~ \tuplet 6/4 {d'4 d'16 des'16~} des'16 c'16 b8 \tuplet 3/2 {gis8 bes8 es'8} 
      | g'16 ges'8 d'16~ \tuplet 6/4 {d'8 f'8 f'16 es'16} c'8 r8 r4 
      | r2 r16 f'8 es'16 des'16 a8 ges16~ 
      | ges8 es'8 d'8 c'8 bes4~ bes16 bes8 b16~ 
      | b8. ges16~ \tuplet 5/4 {ges16 es'16 e'16 es'16 des'16} b8 r8 r4 
      \bar "||" \mark \default bes4 \tuplet 3/2 {cis'8 d'4~} d'2 
      | es'8 r8 r2. 
      | r8. d'16~ d'8 d'8~ \tuplet 6/4 {d'16 es'8. e'16 es'16} d'4 
      | e'4 des'8 b8 f'8 bes8 r4 
      | r4 r8 bes8 g'8 g'8~ \tuplet 6/4 {g'16 es'4 g'16~} 
      | g'16 aes'8 f'16~ f'16 gis'16 a'16 aes'16 ges'8 bes'4. 
      | bes'4 bes'8 b'8 bes'16 a'8. g'8 f'8~ 
      | f'4. f'8 \tuplet 3/2 {a'4 g'8~} g'8. g'16 
      | bes'8 r8 r2. 
      | r16 b'16 bes'8 bes'8 ges'8 f'8 es'8~ es'16 d'8 c'16~ 
      | c'16 bes8 bes'16~ bes'8 r8 r2 
      | r2 f'8. g'16 bes'4 
      \bar "||" \mark \default b'8 d''8~ d''8. c''16 d''4 es''4 
      | c''4 c''2 c''8 es''8 
      | d''8 c''8 bes'8 a'8 aes'8 des''8 c''16 aes'8 g'16 
      | ges'8 r8 r8 ges'8 b'8 ges'8 e'4~ 
      | \tuplet 5/4 {e'16 g'16 aes'16 g'16 f'16} des'8 r8 r2 
      | r8 c'8 \tuplet 3/2 {bes4 ges8~} \tuplet 3/2 {ges8 f8 es'8~} \tuplet 3/2 {es'8 d'8 c'8} 
      | bes4~ bes16 d'8 es'16~ es'8 d'4 bes8~ 
      | bes16 cis'16 d'16 es'16 d'16 e'16 fis'16 g'16~ \tuplet 6/4 {g'4 g'16 f'16} b4 
      | c'4 r4 r8. g'16~ \tuplet 3/2 {g'8 es'8 c'8} 
      | \tuplet 3/2 {g8 b4} ges16 bes8. g'8 r8 r4 
      | r1 
      | a'8 g'8 \tuplet 3/2 {f'4 e'8} es'8 bes8 f'8 es'8 
      \bar "||" \mark \default d'8 f'8 d'8 c'8 bes4~ \tuplet 3/2 {bes8 c'8 es'8} 
      | \tuplet 3/2 {f'8 es'4~} es'8 f'16 g'16 f'8 r8 r4 
      | r4 r8. f'16 e'8 aes'8 g'8 f'8 
      | es'8 c'8 g'4 cis'16 d'8. bes4 
      | \tuplet 3/2 {d'8 es'4~} es'4.. es'16~ es'16 f'8 des'16~ 
      | des'8 c'4. c'4. c'8~ 
      | c'8. c'16 r2. 
      | r2 r16 aes8 g16~ g4 
      | es'4 b8 d'8 c'8 d'8 es'8 f'8~ 
      | f'16 c'8 es'16~ es'16 d'8 c'16 f'8 des'8 a4 
      | bes2 \tuplet 3/2 {bes4 g8} r4 
      | r2. \tuplet 6/4 {r4 r16 e'16~} 
      \bar "||" \mark \default e'16 f'16 ges'16 aes'16 bes'2.~ 
      | bes'16 es'8 f'16 g'8. a'16~ a'8 r8 r4 
      | r1 
      | bes'8 a'8 aes'8 es''8 \tuplet 3/2 {g'4 f'8~} f'4 
      | aes'16 bes'8. g'8 es'8 des'8 es'4 g'16 bes'16 
      | \tuplet 6/4 {c''16 d''8 des''16 c''16 bes'16~} bes'16 aes'16 aes'16 g'16~ g'16 f'16 f'16 des'16 bes4~ 
      | bes16 cis'16 d'16 es'16~ \tuplet 6/4 {es'16 f'16 fis'8 g'16 aes'16} g'8 ges'8 f'8 es'8 
      | d'8 f'8 bes'2~ bes'8. aes'16 
      | g'8 es'8 r2. 
      | \tuplet 3/2 {cis''8 d''8 es''8} \tuplet 3/2 {des''8 c''8 bes'8} \tuplet 3/2 {a'4 g'8} f'8 es'8 
      | d'8 r8 r8. d''16~ \tuplet 3/2 {d''8 es''8 b'8} aes'8 f'8 
      | e'8 d''8 \tuplet 6/4 {c''16 bes'8 g'16 f'16 es'16~} es'4 es'8 a'16 c''16 
      \bar "||" \mark \default bes'4. f'8 aes'8 g'16 f'16~ f'8 r8 
      | r8. es'16~ \tuplet 3/2 {es'8 g'8 a'8} bes'8 des''8 es'8 r8 
      | \tuplet 6/4 {r4 r16 e'16~} e'16 f'16 aes'16 c''16 bes'8 a'8 aes'8 g'8~ 
      | g'16 f'8 f'16 ges'4. ges'8 d'8 bes8 
      | es'4 r4 r8 f'8 r4 
      | r1 
      | r8 c'8 d'8 es'8 f'8 g'8 a'8 bes'8 
      | bes'8 b'8~ b'16 aes'8 ges'16~ ges'16 e'8 es'16 cis'8 r8 
      | r8 bes'8 g'8 f'8 es'8 d'8 des'8 r8 
      | r8. es'16~ es'8. aes'16~ aes'16 f'8 ges'16~ \tuplet 3/2 {ges'8 f'8 es'8} 
      | cis'8 d'8 bes8 g8 bes4 r4 
      | r2 \tuplet 6/4 {r16 es'8 des'8 bes16~} bes8 r8 
      \bar "||" \mark \default r2 d'8 r8 r4\bar  ".."
    }
    >>
>>    
}
