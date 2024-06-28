\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "万水千山总是情"
  subtitle = " "
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a5")
}

global = {
  \numericTimeSignature
  \time 4/4
  %\tempo 4=100
}

melody = {
  \key c \major
  \transpose  c c   {
  
  c''4. a'8 c''4 c''8 d''8 | %{ bar 2: %} c''2.  a'4 | %{ bar 3: %} g'4. e'8 g'4 g'8 a'8 | %{ bar 4: %} g'2. e'4 | %{ bar 5: %} d'4 d'8. e'16 d'8. c'16 a4 | 
  %{ bar 6: %} d'4 d'8. e'16 d'8. c'16 a4 | %{ bar 7: %} c'1 | %{ bar 8: %} r4 r4 e'4 f'4 | %{ bar 9: %} g'4. g'8 a'4 g'4 | %{ bar 10: %} e'2. d'4 |
  %{ bar 11: %} c'4. e'8 d'4 c'4 | %{ bar 12: %} a2. a4 | %{ bar 13: %} g2 c'4 d'4 | %{ bar 14: %} e'4 g'4 a'4 e'4 | %{ bar 15: %} d'1
  \repeat volta 2 { | %{ bar 16: %} r4 r4 e'4 f'4 | %{ bar 17: %} g'4. g'8 a'4 g'4 | %{ bar 18: %} e'2. d'4 | %{ bar 19: %} c'4. e'8 d'4 c'4 | %{ bar 20: %} a2. a4 |
  %{ bar 21: %} g2 c'4 ( e'4 ) | %{ bar 22: %} d'4. ( c'8 ) a4 c'4 | %{ bar 23: %} c'1     \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible      \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "Fine" \bar "|."    | %{ bar 24: %} r4 r4 e'4 g'4 | %{ bar 25: %} a'2. c''4 |
  %{ bar 26: %} a'4 ( f'4 ) g'4 ( a'4 ) | %{ bar 27: %} g'2. e'4 | %{ bar 28: %} g'2 e'4 ( g'4 ) | %{ bar 29: %} a'2. c''4 | %{ bar 30: %} c''4 ( a'4 ) g'4 e'4 |
  %{ bar 31: %} d'1 } | %{ bar 32: %} 
  }
} 


melody_change = {
  \key c \major
  \transpose c c { 
    \melody
  }
}

sk = \skip1
verse = \lyricmode {
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   莫 说 青 山 多 障 碍 \sk \sk 风 也 急 风 也 劲 \sk \sk 白 云 \sk 过 山 峰 也 可 传 情 \sk \sk \sk \sk \sk 
   莫 说 水 中 多 变 幻 \sk \sk 水 也 清 水 也 静 \sk \sk 柔 情 \sk 似 水 爱 共 永 \sk \sk \sk \sk \sk
   未 怕 罡 \sk \sk  风 吹 散 了 \sk \sk  热 爱 \sk 万 水 \sk \sk 千 山 总 是 情 \sk \sk
}

verserr = \lyricmode {
    %
    \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk  \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk 
   聚 散 也 有 天 注 定 \sk \sk 不 怨 天 不 怨 命 \sk \sk 但 求 \sk 有 山水 共 作 证
}


chord = \chordmode {
  s1 s1 s1 s1 s1 s1 s1 s1
  c c a:m f c c g g c c a:m f c f c c f a:m g e:m a:m f g
}

\include "predefined-guitar-fretboards.ly"

theChords = \chordmode {
  % insert chords for chordnames and fretboards here
  c4 d:m e:m f g a:m
}

\score {
<<
  \context ChordNames { \theChords }
  \context FretBoards { \theChords }  
>>
}

\score {
<<
 

  %\new Staff  \new Voice = number    { \global   \melody_change }
  
  
  \new ChordNames {
    %\set chordChanges = ##t
    \chord
 }
 
  \new JianpuStaff \jianpuMusic \new Voice = number { \global  \melody }
  %\new Lyrics \lyricsto solfege {  \verse }
  \new Lyrics = "IX" { \lyricsto number {  \verse } } 
  \new Lyrics = "IY" { \lyricsto number {  \verserr } } 
>>

 \layout { 
   #(layout-set-staff-size 18)
 }

}
