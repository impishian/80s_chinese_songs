\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "倩女幽魂"
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

  a''16 g''16 e''8 ( e''2. )  | %{ bar 2: %} d''8 e''8 d''4 c''4 r8 g'8 | %{ bar 3: %} a'16 c''16 a'8 ( a'2. ) 
  \repeat volta 2 { | %{ bar 4: %} r4 r4 a4. a'8 | %{ bar 5: %} e'1 | %{ bar 6: %} r4 c'8 b8 c'4. b8 | %{ bar 7: %} a1 |
                    %{ bar 8: %} r4 r4 e4. g'8 | %{ bar 9: %} c''4 c''2 (  a'4 ) | %{ bar 10: %} g'8 g'4  ( e'8 ) c'4 a4 | %{ bar 11: %} d'1 | 
                    %{ bar 12: %} r4 r4 d'8 ( d'4 ) d'8 | %{ bar 13: %} f'1 | %{ bar 14: %} r4 f'8 e'8 f'4 a'4 | %{ bar 15: %} e'4. d'8 c'2 |
                    %{ bar 16: %} r4 r8 f'8 e'4 d'4 | %{ bar 17: %} b4 b2 f'4 | %{ bar 18: %} e'4. ( d'8 ) c'2 | %{ bar 19: %} b4. g8 g4 e8 ( g8 ) | 
                    %{ bar 20: %} a1 
  } |
  %{ bar 21: %} r4 f'4 e'4 d'4 | %{ bar 22: %} b4 b2 f'4 | %{ bar 23: %} e'4. ( d'8 ) c'2 |
  %{ bar 24: %} b4. g8 g4 e8 ( g8 ) | %{ bar 25: %} a1
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
  人 生 路 \sk \sk \sk \sk 美 夢 似 路 長  \sk \sk \sk \sk \sk 路 裏 風 霜 風 霜 撲 面 幹 \sk \sk \sk
  \sk \sk 紅 塵 裏 \sk \sk \sk \sk 美 夢 有 幾 多 方 向 \sk \sk \sk  找 癡 癡 夢 幻  \sk 中 心 愛 \sk 路 隨 人 茫 茫 \sk \sk \sk
  \sk 一 絲 絲 夢 幻 \sk 般 風 雨 \sk 路 隨 人 茫 茫
   
}

verserr = \lyricmode {
    \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   人 間 路 \sk \sk \sk \sk 快 樂 少 年 郎 \sk \sk \sk \sk \sk 路 裡 崎 嶇 崎 嶇 不見 陽 光\sk \sk \sk
   \sk \sk  泥 塵 裡 \sk \sk \sk \sk 快 樂 有 幾 多 方 向 \sk \sk \sk  一 絲 絲 夢 幻 \sk 般 風 雨 \sk 路 隨 人 茫 茫 \sk \sk \sk
}


chord = \chordmode {
 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  a:m s4 s4 s4 a:m s4 s4 s4 f s4 g s4 a:m s4 s4 s4 a:m s4 s4 s4 f s4 s4 s4 c s4 s4 s4 g s4 s4 s4 g s4 s4 s4  f s4 s4 s4 
  f s4 s4 s4  c s4 s4 s4  d:m s4 s4 s4 e:m s4 s4 s4  a:m  s4 s4 s4 g s4 s4 s4 a:m s4 s4 s4 
  d:m s4 s4 s4 e:m s4 s4 s4  a:m  s4 s4 s4 g  s4 s4 s4 a:m
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
