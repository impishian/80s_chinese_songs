\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "一剪梅"
  subtitle = " "
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \numericTimeSignature
  \time 4/4
  %\tempo 4=100
}

melody = {
  \key g \major
  \transpose  c g   {
  
  a4 r4 r4 e'8 g'8 | %{ bar 2: %} a'2 (  a'8 ) c''16 b'16 a'16 g'16 e'16 g'16 | %{ bar 3: %} e'2. r8 a16 c'16 | 
  %{ bar 4: %} d'2 ( d'8 ) e'16 d'16 c'16 d'16 c'16 b16 | %{ bar 5: %} a2. r8 a8 | 
  %{ bar 6: %} a8 ( e'4 ) d'16 ( c'16 ) b8 c'8 b8 ( a16 g16 ) | %{ bar 7: %} a2. r8 a8 |
  %{ bar 8: %} c'4 r8 a16 c'16 d'8 d'8 e'16 ( f'16 e'16 d'16 ) | %{ bar 9: %} e'2.  r8 e'16 ( g'16 ) | 
  %{ bar 10: %} a'4. g'16 ( e'16 ) d'4. c'16 ( d'16 ) | %{ bar 11: %} e'4. d'16 ( e'16 ) a2 |
  %{ bar 12: %} b8 b16 ( a16 ) g8 a8 ( a8 ) g16 e16 c'8( b8 ) | %{ bar 13: %} a1 |
  %{ bar 14: %} a8 ( a'4 ) g'8 e'16 ( g'16 e'16 g'16 ) a'4 | %{ bar 15: %} g'8 d'8 d'8 ( e'16 g'16 ) e'2 | 
  %{ bar 16: %} b16 ( a16 ) a4. b16 ( a16 ) a4 g'16 ( a'16 ) | %{ bar 17: %} e'16 ( d'16 ) e'4. ( e'2 ) |
  %{ bar 18: %} a8 ( a'4 ) g'8 e'16 ( g'16 e'16 g'16 ) a'4 | %{ bar 19: %} g'8 d'8 d'8 ( e'16 g'16 ) e'2 |
  %{ bar 20: %} c'16 ( a16 ) a4. e'16 ( d'16 ) e'4 g'16 ( a'16 ) | %{ bar 21: %} e'16 ( d'16 ) e'4. ( e'2 ) | 
  %{ bar 22: %} a8 ( a'4 ) g'8 e'16 ( g'16 e'16 g'16 ) a'4 | %{ bar 23: %} g'8 d'8 d'8 ( e'16 g'16 ) e'2 |
  %{ bar 24: %} b16 ( a16 ) a4. b16 ( a16 ) a4. | %{ bar 25: %} e'16 ( d'16 ) e'4. e'16 ( d'16 ) e'4. | 
  %{ bar 26: %} r4 r4 e'8 ( g'4 g8 ) | %{ bar 27: %} a1
  
  }
} 


melody_change = {
  \key c \major
  \transpose c c { 
    \melody
    \melody
  }
}

sk = \skip1
verse = \lyricmode {
   %hun shui bai nian \sk guo ren jian yi xing 
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk 
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
真 情 像 草 原 廣 闊 \sk \sk \sk
層 層 \sk 風 雨 不 能 阻 隔 \sk \sk \sk
總 有 雲 開 日 出 時 候 \sk
萬 丈 陽 光 照 耀 你 我 \sk \sk \sk
雪 花 飄 飄 北 風 蕭 蕭 \sk
大 地 一 片 蒼 茫 \sk \sk
一 剪 寒 梅 傲 立 雪 中 \sk
只 為 伊 人 飄 香 \sk \sk
愛 我 所 愛 無 怨 無 悔 \sk
此 情 (此 情) 長 留 (長 留) \sk \sk 心 間

}

verserr = \lyricmode {
    %
    
}


chord = \chordmode {
  %e:m d s4 s4 s4 c s4 s4 s4 b:m s4 s4 s4 e:m s4 s4 s4 d s4 s4 s4 c s4 s4 s4 e:m s4 s4 s4
  s4 s4 s4  s4 
  e:m  s4 s4 s4 
  g s4 s4 s4
  a:m s4 s4 s4
  e:m s4 s4 s4
  e:m s4  d s4 
  e:m s4 s4 s4
  c s4 d s4
  g s4 b:m s4
  e:m  s4  d s4
  g s4 e:m s4
  d s4 b:m s4
  e:m s4 s4 s4
  e:m s4 s4 s4
  d s4 g s4
  e:m s4 s4 s4
  b:m s4 s4 s4
  e:m s4 s4 s4
  d s4 g s4
  e:m s4 g s4
  b:m s4 s4 s4
  e:m s4 s4 s4
  d s4 g s4
  e:m s4 s4 s4
  b:m s4 s4 s4
  g s4 s4 s4
  e:m
  
}

\include "predefined-guitar-fretboards.ly"

theChords = \chordmode {
  % insert chords for chordnames and fretboards here
  %c4 d:m e:m f g a:m
  g a:m b:m c d e:m
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
   #(layout-set-staff-size 26)
 }

}
