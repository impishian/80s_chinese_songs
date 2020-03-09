\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "明天會更好"
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
  \key c \major
  \transpose  c c {

  a'4 r4 r4 e'8 f'8 |
  %{ bar 2: %} g'2. r8 e'16 d'16 | %{ bar 3: %} c'2. r8 e'16 f'16 |
  %{ bar 4: %} g'2 r8 c''8 g'8 e'16 f'16 | %{ bar 5: %} f'2. r8 e'16 f'16 | %{ bar 6: %} g'2 r8 c''8 c''8. b'16 | 
  %{ bar 7: %} a'2. r8 e'16 f'16 | %{ bar 8: %} g'2 r8 f'8 e'8 d'16 c'16 ( | %{ bar 9: %} c'2. )  r8 e'16 f'16 | 
  %{ bar 10: %} g'8 g'8 g'16 g'8 g'16 a'16 ( g'16 ) f'8 r8 e'16 f'16 | %{ bar 11: %} g'8 g'8 e'16 d'16 c'16 d'16 ( d'4. ) e'16 d'16 |
  %{ bar 12: %} c'16 c'8 c'16 c''16 c''8. b'16 b'8 ( c''16 ) b'16 ( a'16 ) g'8 | %{ bar 13: %} a'16 g'16 f'16 f'16 ( f'16 ) g'16 a'16 ( g'16 ) g'2 |
  %{ bar 14: %} c''8 c''4 a'16 e'16 g'8 ( a'16 ) g'16 ( g'4 ) | %{ bar 15: %} a'8 a'8 g'8 c'16 d'16 e'4. d'8 |
  %{ bar 16: %} c'8. c'16 c'8 e'8 e'8 d'16 d'16 ( d'8. ) a'16 | %{ bar 17: %} g'8. e'16 d'16 g16 e'16 ( d'16 ) c'2 
  \repeat volta 2 { | %{ bar 18: %} a'16 a'16 a'16 b'16 c''8. a'16 b'16 b'8 c''16 d''8 b'8 |
                    %{ bar 19: %} c''16 b'16 a'16 g'16 ( g'16 ) g'16 c'16 d'16 e'2 | %{ bar 20: %} e'8 b'8 b'8 e'16 e'16 d''8 d''8 c''16 b'8. |
                    %{ bar 21: %} a'1 | %{ bar 22: %} a'16 a'16 a'16 b'16 c''8. a'16 b'16 b'8 c''16 d''8 b'16 b'16 } 
  \alternative { { | %{ bar 23: %} e''4. ( d''8 ) c''4. b'8 | %{ bar 24: %} a'8 a'8 a'16 a'8. g'8 g'8 d'16 e'8. | %{ bar 25: %} c'1 }
                 { | %{ bar 26: %} e''4. ( d''8 ) c''4. b'8 | %{ bar 27: %} a'8 a'8 a'16 a'8. g'8 g'8 d''16 e''8. | %{ bar 28: %} c''1 }}
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
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
輕 輕 敲 醒 沉 睡 的 心 靈 \sk 慢 慢 張 開 你 的 眼 睛
看 看 忙 碌 的 世 界 是 否 依 然 孤 獨 地 轉 個 不 停 \sk
春 風 不 解 風 情 吹 動 少 年 的 心
使 真 情 溶 化 成 音 符  傾 訴 遙 遠 的 祝 福 \sk
唱 出 你 的 熱 情 伸 出 你 雙 手
讓 我 擁 抱 著 你 的 夢 \sk 讓 我 擁 有 你 真 心 的 面 孔 \sk  \sk  \sk
讓 我 們 的 笑 容 充 滿 著 青 春 的 驕 傲
為 明 天 獻 出 虔 誠 的 祈 禱 \sk \sk \sk 驕 傲 
讓 我 們 期 待 明 天 會 更 好
   
}

verserr = \lyricmode {
    %
}


chord = \chordmode {
  s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  c  s4 f s4 g s4 s4 s4  c  s4 e:m  s4 f  s4 g  s4 a:m s4 g s4  a:m s4 s4 s4 c s4 g s4 g s4 c s4 a:m s4 e:m s4
  c s4  s4 s4 e:m s4 e:m s4 a:m s4 s4 s4  a:m s4 e:m s4 c s4  s4 s4 f s4 g s4 c s4 s4 s4 c s4 s4 s4 f s4 g s4 c 
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
