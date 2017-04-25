\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Down Under"
  composer = "Freddie Hubbard"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key fis \minor
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
      
      | ges1:min7 | aes2:min5-7 des2:7 | ges1:min7 | s1 | g1:7 | s1 | ges1:min7 | e2:min7 a2:7 
      | d1:7 | des1:7 | ges1:min7 | des1:7 | ges1:min7 | aes2:min5-7 des2:7 | ges1:min7 | s1 
      | g1:7 | s1 | ges1:min7 | e2:min7 a2:7 | d1:7 | des1:7 | ges1:min7 | des1:7 
      | ges1:min7|
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
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | \tuplet 6/4 {r4 r16 cis'16~} cis'8 e'8 es'4 gis'8. gis'16~ 
      | gis'8 gis'8~^\markup{\left-align \small vib} gis'2 fis'4 
      | cis'2 r2 
      | r8 a'16 b'16 cis''4~ \tuplet 6/4 {cis''4~ cis''16 d''16} e''16 f''16 a''8~ 
      | \tuplet 6/4 {a''8 g''16 f''16 e''16 f''16} cis''8. d''16 \tuplet 6/4 {cis''4 d''16 cis''16~} \tuplet 3/2 {cis''8 e''8 dis''8} 
      | \tuplet 3/2 {e''8 cis''4} \tuplet 3/2 {fis'4 a'8~^\markup{\left-align \small vib}} a'4 r4 
      | r4 r8 e''8 \tuplet 3/2 {g''8 a''4~} a''8 g''8~ 
      | g''16 f''8 e''16~ e''16 d''8 c''16~ c''16 b'8 a'16~ a'16 g'8 fis'16~ 
      | fis'8 f'8~ f'8. fis'16 \tuplet 3/2 {gis'8 a'4~} a'8 b'8 
      | cis''8 a'8 a'4.^\markup{\left-align \small vib} r8 r4 
      | r4 r8. cis''16~ cis''16 e''8 e''16 gis''8 b''8~^\markup{\left-align \small vib} 
      \bar "||" \mark \default b''1~ 
      | b''8 r8 r8. cis''16 e''8 fis''8 \tuplet 3/2 {gis''4 b''8~^\markup{\left-align \small vib}} 
      | b''2~ b''8 r8 r4 
      | r4 r8 a''4. d'''8 cis'''16 e'''16~ 
      | e'''2.. r8 
      | r4 r8. a'16~^\markup{\left-align \small vib} a'4~ \tuplet 6/4 {a'16 cis''8. fis''16 a''16~} 
      | a''16 b''8 b''16~ b''16 gis''8 gis''16 e''8 d''8 cis''8 b'8~ 
      | \tuplet 5/4 {b'16 a'8. f'16~} f'16 cis'8 a16~ \tuplet 6/4 {a8 e'16 f'16 e'16 cis'16~} cis'16 d'8 f'16~ 
      | f'16 a'16 a'16 e''16 g''16 e''16 f''16 d''16 cis''8 e''8 \tuplet 3/2 {d''4 a'8~^\markup{\left-align \small vib}} 
      | a'8 r8 r2. 
      | r8 fis''8~ \tuplet 6/4 {fis''16 e''4 cis''16~} cis''8. c''16~ c''16 b'8 a'16~^\markup{\left-align \small vib} 
      | a'4~ \tuplet 5/4 {a'16 fis'16 e'16 fis'16 e'16} cis'4 b4 
      \bar "||" \mark \default a2~^\markup{\left-align \small vib} a8 r8 r4\bar  ".."
    }
    >>
>>    
}
