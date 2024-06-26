\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "依稀往梦"
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
  \key g \major
  \transpose  c g   {
  
  g'4 r4 r4 e'8 g'8 | a'4. g'8 a'4 g'8 e'8 | %{ bar 2: %} g'4 d'2. | %{ bar 3: %} c'4. a8 d'8 e'8 g'8 fis'8 | %{ bar 4: %} e'2. e'8 g'8 |
  %{ bar 5: %} a'4. g'8 a'4 g'8 e'8 | %{ bar 6: %} g'4 d'2. | %{ bar 7: %} c'4. a8 d'8 e'8 g8 b8 | %{ bar 8: %} a1 | 
  %{ bar 9: %} r4 e'8 d'8 c'4. b8 | %{ bar 10: %} a4. e8 a2 | %{ bar 11: %} r4 a8 ( g8 ) e4 g8 d8 | %{ bar 12: %} e1 |
  %{ bar 13: %} r4 e'8 d'8 c'4. b8 | %{ bar 14: %} a4. e8 a2 | %{ bar 15: %} r4 d'8 ( c'8 ) a4 c'8 d'8 | %{ bar 16: %} e'2. e'4 | 
  %{ bar 17: %} a'4. g'8 a'4 g'8 e'8 | %{ bar 18: %} g'4 d'2. | %{ bar 19: %} c'4. a8 d'8 e'8 g'8 ( fis'8 ) | %{ bar 20: %} e'2. e'8 ( g'8 ) | 
  %{ bar 21: %} a'4. g'8 a'4 g'8 e'8 | %{ bar 22: %} g'4 d'2. | %{ bar 23: %} c'4. a8 d'8 e'8 g8 b8 | %{ bar 24: %} a1 | 
  %{ bar 25: %} r4 e'8 d'8 c'4 c'8 b8 | %{ bar 26: %} a4. e8 a2 | %{ bar 27: %} r4 a8 g8 e4 g8 d8 | %{ bar 28: %} e1
  \repeat volta 2 { | %{ bar 29: %} r4 e'8 d'8 c'4 c'8 b8 | %{ bar 30: %} a4. e'8 d'2 | %{ bar 31: %} r4 d'8 ( c'8 ) a4 b8 g8 | %{ bar 32: %} a1 }
  
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
   \sk \sk \sk \sk \sk
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk 
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk 
依 稀 往 梦 似 曾 见 \sk \sk
心 内 波 澜 现 \sk \sk \sk \sk
抛 开 世 事 断 愁 怨 \sk \sk
相 伴 到 天 边 \sk \sk
逐 草 四 方 沙 漠 苍 茫 \sk \sk
那 怕 雪 霜 扑 面 \sk \sk
射 雕 引 弓 塞 外 奔 驰 \sk \sk
笑 傲 此 生 无 厌 倦 \sk \sk \sk \sk
应 知 爱 意 似 是 流 水 \sk \sk
斩 不 断 理 还 乱 \sk \sk \sk \sk
身 经 百 劫 也 在 心 间 \sk \sk
恩 义 两 难 断
}

verserr = \lyricmode {
    %
    \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   
}


chord = \chordmode {
  %e:m d s4 s4 s4 c s4 s4 s4 b:m s4 s4 s4 e:m s4 s4 s4 d s4 s4 s4 c s4 s4 s4 e:m s4 s4 s4
  s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  e:m s4 s4 s4
  e:m s4 s4 s4
  b:m s4 s4 s4
  b:m s4 s4 s4
  e:m s4 s4 s4 
  e:m s4 s4 s4
  a:m s4 e:m s4
  b:m s4 s4 s4 
  e:m s4 s4 s4
  a:m s4 s4 s4
  g s4 a:m s4
  b:m s4 s4 s4
  e:m s4 s4 s4
  a:m s4 s4 s4
  g s4 a:m s4
  a:m s4 s4 s4
  b:m s4 a:m s4
  g s4 e:m s4
  b:m s4 s4 s4
  b:m s4 s4 s4
  b:m s4 a:m s4
  e:m s4 a:m s4
  a:m s4 e:m s4
  e:m s4 s4 s4
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
   #(layout-set-staff-size 18)
 }

}
