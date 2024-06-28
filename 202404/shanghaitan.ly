\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "上海滩"
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
  \key f \major
  \transpose  c f {

  e'8 g'8 a'2 e'8 g'8 | %{ bar 2: %} d'2. e'8 g'8 | %{ bar 3: %} a'2 ( a'8 ) g'8 c'8 e'8 | %{ bar 4: %} d'2 (  d'8 ) b8 a8 g8 |
  %{ bar 5: %} c'1 | %{ bar 6: %} c'2. e'8 ( g'8 )
  \repeat volta 3 { | %{ bar 7: %} a'2. e'8 ( g'8 ) | %{ bar 8: %} d'2. e'8 g'8 | %{ bar 9: %} a'8 c''4 a'8 g'4 c'8 e'8 |
                    %{ bar 10: %} d'2. d'8 e'8 | %{ bar 11: %} g'2. d'8 e'8 | %{ bar 12: %} a2. a8 c'8  }
  \alternative { {   | %{ bar 13: %} d'4. e'8 d'8 b8 a8 ( c'8 ) | 
                    %{ bar 14: %} g2. e'8 ( g'8 )  }
                 { | %{ bar 15: %} d'4. e'8 d'8 b8 a8 ( g8 ) | %{ bar 16: %} c'2 r8 c''8 c''8 a'8  |
                    %{ bar 17: %} c''2 r8 a'8 c''8 a'8 | 
                   %{ bar 18: %} g'2. g'8 e'8 | %{ bar 19: %} a'4. g'8 c'4 d'16 ( c'16 d'8 ) | %{ bar 20: %} e'2 r8 e'8 e'8 ( d'8 ) | 
                   %{ bar 21: %} e'2 r8 c''8 c''8 ( b'8 ) | %{ bar 22: %} a'2. e'8 e'8 | %{ bar 23: %} d'4. e'8 c''8 b'8 a'8 ( e'8 ) | 
                   %{ bar 24: %} g'2. e'8 g'8 }
 { %{ bar 25: %} d'4. e'8 d'8 ( b8 ) a8 ( g8 ) | %{ bar 26: %} c'1 }  
  }  

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
   %hun shui bai nian \sk guo ren jian yi xing 
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   \sk \sk \sk \sk \sk \sk  \sk \sk
浪 奔\sk \sk 浪 流 \sk \sk
万 里 滔 滔 江 水 永 不 休 \sk \sk
淘 尽 了 \sk \sk 世 间 事 \sk \sk
混 作 滔 滔 一 片 潮 流 \sk \sk 是

看 不 出 有 未  有 \sk  \sk
爱 你 恨 你 \sk \sk 问 君 知 否 \sk \sk 
似 大 江 一 发 不 收 \sk \sk 
转 千 湾 \sk \sk  转 千 滩 \sk \sk 
亦 未 平 复 此 中 争 斗 \sk \sk 又 有
心 中 起 伏 够

  
   
}

verserr = \lyricmode {
    \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   \sk \sk \sk \sk \sk \sk  \sk \sk
\sk 喜\sk \sk  是 愁\sk \sk 
浪 里 分 不 清 欢 笑 悲 忧\sk \sk 
成\sk 功\sk \sk  失 \sk 败\sk \sk 
浪 里
}

verserrrr = \lyricmode {
    \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
    \sk \sk \sk \sk \sk \sk  \sk \sk
\sk 喜 \sk \sk 又有 愁\sk \sk 
就 算 分 不 清 欢 笑 悲 忧\sk \sk 
仍 愿 翻 \sk \sk 百 千 浪\sk \sk 
在 我

}


chord = \chordmode {
 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 
  d:m s4 s4 s4
  c s4 s4 s4
  d:m s4 s4 s4
  c s4 s4 s4
  a:m s4 s4 s4
  d:m s4 s4 s4
  g s4 s4 s4
  c s4 s4 s4
  g s4 
  c:7 s4 
  f s4 s4 s4
  bes s4 s4 s
  a:m s4 s4 s
  bes s4 s4 s
  f s4 s4 s
  a:m s4 s4 s
  d:m s4 s4 s
  g s4 s4 s
  c s4 s4 s
  g s4 c:7 s4
  f s4 s4 s 
}

\include "predefined-guitar-fretboards.ly"

theChords = \chordmode {
  % insert chords for chordnames and fretboards here
  %c4 d:m e:m f g a:m
  f g:m a:m bes c d:m
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
  \new Lyrics = "IZ" { \lyricsto number {  \verserrrr } } 
>>

 \layout { 
   #(layout-set-staff-size 18)
 }

}
