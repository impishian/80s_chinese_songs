\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "萬里長城永不倒"
  subtitle = "製譜：Ian"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
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
  昏 睡 百 年 \sk 國 人 漸 已 醒 \sk Ah Ah \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  睜 開 眼 吧 小 心 看 吧 那 個 願 臣 虜 自 認 \sk \sk  因 為 畏 縮 與 忍 讓  人 家 嬌 氣 日 盛 \sk \sk
  %開 口 叫 吧 高 聲 叫 吧 這 裡 是 全 國 皆 兵  歷 來 強 盜 要 侵 入 最 終 必 送 命 
  萬 里 長 城 永 不 倒 \sk 千 里 黃 河 水 滔 滔 \sk 江 山 秀 麗 疊 彩 峰 嶺 問 我 國 家 那 像 染 病\sk 沖 開 血 路 揮 手 上 吧
  要 致 力 國 家 中 興 \sk \sk 豈 讓 國 土 再 遭 踐 踏 這 睡 獅 漸 已 醒
   %hun shui bai nian \sk guo ren jian yi xing 
}

verserr = \lyricmode {
    \sk \sk \sk  \sk \sk \sk  \sk \sk \sk \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk  \sk \sk 
    \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk 
  開 口 叫 吧 高 聲 叫 吧 這 裡 是 全 國 皆 兵  \sk \sk 歷 來 強 盜 要 侵 入 最 終 必 送 命 
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
   #(layout-set-staff-size 26)
 }

}
