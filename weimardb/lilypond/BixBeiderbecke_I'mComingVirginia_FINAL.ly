\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I'm Coming Virginia"
  composer = "Bix Beiderbecke"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
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
      | c4:7 g4:min7 es4:dim c4:7 
      | f2 aes2:dim | f4:6 bes4:maj a4:min7 d4:min7 | d2:7 g2:7 | c2:7 f2:7 | bes2 a2:7 | g2:7 c2:7 | f2:7 g2:min7 | c4:7 g4:min7 es4:dim c4:7 
      | f2 aes2:dim | f1 | a1:min | s1 | b2:min5-7 e2:7 | a2:min5-7 d2:7 | ges2:maj c2:7 | f2:7 f2 
      | bes2:6 g2:min7 | s2 d2:min | d1:min6 | c2 d2:7 | g1:min7 | g2:7 c2:7 | f2:7 g2:min7 | f1 
      | s2 aes2:dim | f4:6 bes4:maj a4:min7 d4:min7 | d2:7 g2:7 | c2:7 f2:7 | bes2 a2:7 | g2:7 c2:7 | f2:7 g2:min7 | c4:7 g4:min7 es4:dim c4:7 
      | f2:7 aes2:dim | f1 | a1:min | s1 | b2:min5-7 e2:7 | a2:min5-7 d2:7 | ges2:maj c2:7 | f2:7 f2 
      | bes2:6 g2:min7 | s2 d2:min | d1:min6 | c2:7 d2:7 | g2:min7 a4:7 aes4:7 | g2:7 bes2:7 | f1:7|
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


      \tempo 4 = 132
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 c''8. d''16~ d''4 \tuplet 3/2 {c''8 d''8 f''8~^\markup{\left-align \small vib}} 
      \bar "||" \mark \default f''2 aes'2 
      | r4 c''8 d''8 c''8 gis'4 a'8 
      | a'1~^\markup{\left-align \small vib} 
      | a'8 a'8 \tuplet 3/2 {b'8\glissando  c''8 d''8} c''4~ c''16 g'16 aes'8~ 
      | aes'8 f'4 f'8 f'4.^\markup{\left-align \small vib} r8 
      | r4 a'8 bes'8 b'8 c''8~ c''16 c'16 d'16 f'16~^\markup{\left-align \small vib} 
      | f'2. r4 
      | r8.. c''32~ c''8. d''16~^\markup{\left-align \small vib} d''8. d''16~ d''8 c''8~ 
      \bar "||" c''32 f''8. f''32~ \tuplet 6/4 {f''4~ f''16 f''16~^\markup{\left-align \small vib}} f''2~ 
      | f''4 c''8 cis''8 d''8 c''8 a'8 c''8 
      | e''4 e'4 fis'4. gis'8 
      | b'8 a'8 c''8 e'8 b'4^\markup{\left-align \small vib} \tuplet 3/2 {a'4 d''8~} 
      | d''8. d''16~ d''8 d''8 d''8 r8 r4 
      | \tuplet 3/2 {c''4 a'8} c''8 a'8 c''4 \tuplet 3/2 {a'4 bes'8~} 
      | bes'8 f''4 a'16 a'16^\markup{\left-align \small vib} r2 
      | r8 gis'8\bendAfter #+4  a'2~ a'8 f'8 
      \bar "||" aes'8. g'16~ g'8 g'4.^\markup{\left-align \small vib} r4 
      | f'4 bes16 des'8 f'16 a'8 f'8 a'8 f'8 
      | g'8. g'16~ g'8 g'8~^\markup{\left-align \small vib} g'4. r8 
      | r4 a''8 f''8 es''8 d''8 c''8 f''8 
      | aes'8 d''4.^\markup{\left-align \small vib} \tuplet 3/2 {f'4 c'8~} c'4 
      | d''8 a'8~ a'16 bes'16 b'16 c''16~ c''8 c'8 d'8 a'8~^\markup{\left-align \small vib} 
      | a'2 f'8 d'8 f'4 
      | d'8 f'4^\markup{\left-align \small vib} r8 r4 c''8 d''8 
      \bar "||" \mark \default f''4 d''8 f''8 d''4 r4 
      | r4 \tuplet 3/2 {c''4 cis''8~} cis''8 d''8 c''8 f'8 
      | a'4 a'4 a'2^\markup{\left-align \small vib} 
      | \tuplet 3/2 {c''4 c''8~^\markup{\left-align \small vib}} c''8 c''8 d''8 c''8 d''8 f'8 
      | a'8 f'8 d'8 bes8 f'2~^\markup{\left-align \small vib} 
      | f'4 gis'8 a'8 g'4~^\markup{\left-align \small vib} \tuplet 3/2 {g'8 f'8 d'8} 
      | f'2^\markup{\left-align \small vib} r2 
      | r4 \tuplet 3/2 {f''8 ges''8 f''8} aes''8 g''8 f''8 d''8 
      \bar "||" \tuplet 3/2 {f''4 f''8~} f''8 f''4^\markup{\left-align \small vib} c''8 d''8 gis'8 
      | a'4 c''4. f'16 a'16~ \tuplet 5/4 {a'8 c''8 e''16~} 
      | e''8 a'8 b'4 c''2^\markup{\left-align \small vib} 
      | r4 a'2^\markup{\left-align \small vib} b'8 c''8~ 
      | c''16 d''32~ d''8 d''32~ d''8 d''4.^\markup{\left-align \small vib} \tuplet 6/4 {r4 r16 c''16~} 
      | c''8 es''8 d''8 c''8 a'16 c''8.~^\markup{\left-align \small vib} \tuplet 6/4 {c''4~ c''16 bes'16~} 
      | bes'8 f''8 des''8 bes'8 g'8 a'8 c''8 a'8 
      | aes'8. g'16~ g'8 g'4.^\markup{\left-align \small vib} \tuplet 3/2 {a'4 f'8} 
      \bar "||" g'8. g'16~ g'8 g'4.^\markup{\left-align \small vib} r4 
      | r8 f'8 gis'8 a'8 gis'8 a'8 gis'16 a'16 gis'16 a'16 
      | es'16 g'8 g'16 g'4.^\markup{\left-align \small vib} r8 r4 
      | r8 a''8 f''8 es''8 d''4^\markup{\left-align \small vib} c''8 d''8 
      | f''4^\markup{\left-align \small vib} d''8 aes'8 g'8 f'8 g'4 
      | g'8 gis'16 bes'16 b'16 c''16 d''16 c''16~^\markup{\left-align \small vib} c''4 c'8 d'8 
      | f'2 r2 
      | a'2 c''8 r8 r4\bar  ".."
    }
    >>
>>    
}
