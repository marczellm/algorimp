\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Who's it"
  composer = "Kid Ory"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "bass"
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
      
      | c1 | a1:7 | d1:7 | s1 | g1:7 | s1 | c1 | g1:7 
      | c1 | s1 | g1 | s1 | a1:min | d1:7 | g1:7 | s1 
      | c1 | a1:7 | d1:7 | s1 | d1:min6 | e1:7 | a1:min | c1:7 
      | f1 | s1 | c1 | a1:7 | d1:min7 | g1:7 | c1|
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


      \tempo 4 = 212
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default e8. f16~ f8. fis16~ fis8. g16~ g8 f'8~^\markup{\left-align \small vib} 
      | f'2 e'4. a8~^\markup{\left-align \small vib} 
      | a1~ 
      | a4. r8 r2 
      | f4 g4 \tuplet 3/2 {gis4 a8~} a8 c'8~ 
      | c'8 e'4 d'8~ d'4~ d'16\bendAfter #-4  b8 g16~^\markup{\left-align \small vib} 
      | g1~ 
      | g8 r8 r2. 
      | r4 e4 f4 \tuplet 3/2 {g8 g8 g8} 
      | \tuplet 3/2 {g8 g4~} g8 a8~^\markup{\left-align \small vib} a2 
      | b4 c'4 \tuplet 3/2 {cis'4 d'8~} d'8 fis'8~ 
      | fis'4 e'4.^\markup{\left-align \small vib} r8 r4 
      | \tuplet 3/2 {c'4 e'8~} e'8 c'8~ c'8. e16~ e4 
      | b4. a4.^\markup{\left-align \small vib} r4 
      | r4 e'4..\glissando  es'16~ es'8 d'8~^\markup{\left-align \small vib} 
      | d'2. r4 
      \bar "||" e4 f4 fis8 g4 f'8~^\markup{\left-align \small vib} 
      | f'2 e'4. gis8\glissando  
      | a1~^\markup{\left-align \small vib} 
      | a8 r8 r2. 
      | f4 fis4 g8 aes4 c'8~ 
      | c'8 e'4 d'4. c'8 c'8~^\markup{\left-align \small vib} 
      | c'2.. r8 
      | r1 
      | d'4 c'4 e'4 c'4 
      | d'8 c'8 e'8 c'4. r4 
      | \tuplet 6/4 {r4 r16 b16~} b8. a16~ a8 g4. 
      | b4 a8. g16~ g4 r4 
      | e4 f4 \tuplet 3/2 {fis4 g8~} g8 f'8~^\markup{\left-align \small vib} 
      | f'2 e'4. c'8~^\markup{\left-align \small vib} 
      | c'1~ 
      | c'8 e'8 dis'8 c'8 a8 g8 e8 d8 
      | c4 r2.\bar  ".."
    }
    >>
>>    
}
