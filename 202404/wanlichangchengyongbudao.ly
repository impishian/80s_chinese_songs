\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "万里长城永不倒"
  subtitle = "制谱：Ian"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a5")
}

global = {
  \numericTimeSignature
  \time 2/4
  %\tempo 4=100
}

melody = {
  \key c \major
  \transpose  c c   {
    
 a4 a8 b8 | %{ bar 2: %} c'4 d'4 | %{ bar 3: %} e'2 ( | %{ bar 4: %} e'2 ) | %{ bar 5: %} r4 c'8 d'8 | %{ bar 6: %} e'4 a'4 | %{ bar 7: %} b'2 ( | %{ bar 8: %} b'2 ) | %{ bar 9: %} b'2 ( | %{ bar 10: %} b'2 )
  
  c''4 e'8 g'8 | %{ bar 2: %} d'2  | %{ bar 3: %} g'8. d'16 e'8 g'8 | %{ bar 4: %} a'2 | %{ bar 5: %} d''4 e''8 d''8 |
  %{ bar 6: %} c''4. d''16 c''16 | %{ bar 7: %} b'4 a'8 g'8 | %{ bar 8: %} a'2 \repeat volta 2 { | %{ bar 9: %} c''8. a'16 g'8 e'8 | %{ bar 10: %} c''8. a'16 g'8 e'8 | 
  %{ bar 11: %} c''16 c''8 a'16 g'8 c''8 | %{ bar 12: %} a'16 a'16 r8 r4 | %{ bar 13: %} e'8. c'16 d'8 e'8 | %{ bar 14: %} g'8 a'16 ( g'16 ) e'4 |
  %{ bar 15: %} d'8. g'16 e'8 c'8 | %{ bar 16: %} a16 a16 r8 r4 }      \repeat volta 2 {    | %{ bar 17: %} a16 c'16 g16 a16 d'8 g'8 | %{ bar 18: %} e'2 | %{ bar 19: %} a'16 g'16 e'16 g'16 c''8 b'8 |
  %{ bar 20: %} a'2 | %{ bar 21: %} c''8. a'16 g'8 e'8 | %{ bar 22: %} d'8 g'8 e'8 c'8 | %{ bar 23: %} a16 c'16 d'16 e'16 g'16 e'16 c''16 ( b'16 ) | %{ bar 24: %} a'4 (  a'8 )  r8 | 
  %{ bar 25: %} c''8. a'16 g'8 e'8 | %{ bar 26: %} c''8. a'16 g'8 e'8 | %{ bar 27: %} c''16 c''8 a'16 g'8 c''8 | %{ bar 28: %} a'16 a'16 r8 r4 | %{ bar 29: %} e'8. c'16 d'8 e'8 |
  %{ bar 30: %} g'8 a'16 g'16 e'4 }  c''8. a'16 d''8  ( c''8 )  | e'4 g'4 | a'2 ( | a'8 )  r8  r4 
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
  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk 
  昏 睡 百 年 \sk 国 人 渐 已 醒 \sk Ah Ah \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  睁 开 眼 吧 小 心 看 吧 那 个 愿 臣 虏 自 认 \sk \sk  因 为 畏 缩 与 忍 让  人 家 娇 气 日 盛 \sk \sk
  %开 口 叫 吧 高 声 叫 吧 这 里 是 全 国 皆 兵  历 来 强 盗 要 侵 入 最 终 必 送 命 
  万 里 长 城 永 不 倒 \sk 千 里 黄 河 水 滔 滔 \sk 江 山 秀 丽 叠 彩 峰 岭 问 我 国 家 那 像 染 病\sk 冲 开 血 路 挥 手 上 吧
  要 致 力 国 家 中 兴 \sk \sk 岂 让 国 土 再 遭 践 踏 这 睡 狮 渐 已 醒
   %hun shui bai nian \sk guo ren jian yi xing 
}

verserr = \lyricmode {
    \sk \sk \sk  \sk \sk \sk  \sk \sk \sk \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk  \sk \sk 
    \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk 
  开 口 叫 吧 高 声 叫 吧 这 里 是 全 国 皆 兵  \sk \sk 历 来 强 盗 要 侵 入 最 终 必 送 命 
}


chord = \chordmode {
  %c1/c | cis/cis
  %b1/b | bis/bis | bes/bes
  a:m s4 s4 s4 e:m s4 s4 s4 a:m s4 s4 s4 e:m s4 s4 s4 e:m s4 s4 s4
  
  a:m   s4  d:m  s4 e:m  s4  a:m  s4  d:m s4   a:m  s4 e:m  s4 a:m s4  a:m  e:m  a:m e:m  f g a:m s4 a:m g  c s4 g e:m a:m s4
  f g a:m s4 f g a:m s4 a:m e:m g c f g a:m s4 a:m e:m a:m e:m f g a:m s4 a:m g c s4 f g e:m g a:m
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
