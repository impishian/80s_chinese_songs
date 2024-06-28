%\version "2.24.3"
\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = \markup {
    \override #'(font-size . 6) "敢问路在何方"
  }
  subtitle = " "
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10
  bottom-margin = 10
  left-margin = 15
  right-margin = 15
}

global = {
  \numericTimeSignature
  \time 4/4
  %\tempo 4=100
}


melody = {
  \key g \major
  \transpose  c g   {
  
  e2 a4. b8 | %{ bar 2: %} c'4 a4 f'4. d'8 | %{ bar 3: %} e'4 e'2 . ( |
  %{ bar 4: %} e'1 ) | %{ bar 5: %} e2 a4. b8 | %{ bar 6: %} c'4 a4 f'4. e'8 | %{ bar 7: %} d'4 d'2. |
  %{ bar 8: %} e'8 r8 e'16 e'16 e'16 r16 r8 e'8 e'16 e'16 e'16 r16 | %{ bar 9: %} e'4 c'8 a8 e'8 c'8 a4 | 
  %{ bar 10: %} e'4 c'8 a8 e'8 c'8 a4 | %{ bar 11: %} a8 ( c'4 a8 ) e'4. d'8 | %{ bar 12: %} d'8 ( c'4.  c'2 )  | 
  %{ bar 13: %} b8 ( a4 b8 ) d'4. e'8 | %{ bar 14: %} c'8 ( a4. a2 )  | %{ bar 15: %} e'2 a'4. ( e'8 ) |
  %{ bar 16: %} a'4 ( g'8 f'8 ) e'2 | %{ bar 17: %} c'4. d'8 e'4 (  f'8 e'8 ) | %{ bar 18: %} d'1 |
  %{ bar 19: %} a4 e'4 d'8 (  e'8 a4 ) | %{ bar 20: %} c'2. ( e'4 ) | %{ bar 21: %} d'8 ( b4 e'8 ) d'8 ( a8 c'8 d'8 ) |
  %{ bar 22: %} e'1 | %{ bar 23: %} e'2 a'4. ( e'8 ) | %{ bar 24: %} a'4 ( g'8 f'8 ) e'2 |
  %{ bar 25: %} g'8 ( d'4 f'8 ) e'8 (  d'8 c'4 ) | %{ bar 26: %} d'2. ( e'4 ) | %{ bar 27: %} d'8 ( b4 e'8 ) b8 ( a8 g4 ) | 
  %{ bar 28: %} a2. e'4 | %{ bar 29: %} g'2. e'8 g'8 | %{ bar 30: %} a'4. c''8 b'8 a'8 g'4 | 
  %{ bar 31: %} a'1 | %{ bar 32: %} c''2 b'4. a'8 | %{ bar 33: %} g'8 ( a'8 ) g'2 g'8 (  a'8 )  |
  %{ bar 34: %} e'1 | %{ bar 35: %} c''2 b'4. a'8 | %{ bar 36: %} g'8 (  a'8 ) g'2  g'8 ( a'8 ) | 
  %{ bar 37: %} e'1 | %{ bar 38: %} a4. c'8 e'4. c'8 | %{ bar 39: %} e'4 d'2. |
  %{ bar 40: %} d'8 ( b4 ) e'8  b8 ( a8 g4 ) | %{ bar 41: %} a1 | %{ bar 42: %} a4. c'8 e'4. c'8 |
  %{ bar 43: %} e'4 d'2. | %{ bar 44: %} e'4 ( g'2 ) e'4 | %{ bar 45: %} b'4. ( c''8 b'8 a'8 g'4 ) | 
  %{ bar 46: %} a'1 ( | %{ bar 47: %} a'2. ) r4

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
    \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk  \sk 
    \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk \sk \sk 
   你 挑 着 担 \sk 我 牵 着 马 \sk 迎 \sk 来 日 出 \sk 送 走 晚 霞 \sk \sk \sk 
   踏 平 坎 坷 成 大 道 \sk \sk \sk  斗 \sk 罢 艰 险 \sk  又 出 发 又 出 发 \sk \sk  啦 啦 \sk \sk 啦 啦 啦 啦 啦 啦 啦 啦 \sk \sk \sk 
   一 \sk 番 番 春 秋 \sk 冬 夏 \sk \sk \sk 一 \sk 场 场 酸 甜 \sk 苦 辣 \sk \sk \sk 
   敢 问 路 在 何 方 \sk \sk 路 在 脚 下 \sk \sk \sk 敢 问 路 在 何 方 \sk \sk 路 \sk 在 脚 下
}

verserr = \lyricmode {
    %
    \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk  \sk
    \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk  \sk \sk  \sk \sk  \sk \sk  \sk \sk \sk \sk \sk \sk 
   你 挑 着 担 \sk 我 牵 着 马 \sk 翻 \sk 山 涉 水 \sk 两 肩 霜 花 \sk \sk \sk 
   风 雨 雷 达 任 叱 吒 \sk \sk \sk  一 \sk 路 高 歌 \sk  向 天 涯 向 天 涯 \sk \sk  啦 啦 \sk \sk 啦 啦 啦 啦 啦 啦 啦 啦 \sk \sk \sk 
   一 \sk 番 番 春 秋 \sk 冬 夏 \sk \sk \sk 一 \sk 场 场 酸 甜 \sk 苦 辣 \sk \sk \sk 
   敢 问 路 在 何 方 \sk \sk 路 在 脚 下 \sk \sk \sk 敢 问 路 在 何 方 \sk \sk 路 \sk 在 脚 下
   
}


chord = \chordmode {   
   \override ChordName.color = #(rgb-color 0.8 0.2 0.2)
   a:m s4 s4 s4 f s4 s4 s4 e:m s4 s4 s4 e:m s4 s4 s4 a:m s4 s4 s4  f s4 s4 s4  d:m s4 s4 s4
   e:m s4 s4 s4 a:m s4 s4 s4 a:m s4 s4 s4 a:m s4 s4 s4 f s4 s4 s4 g s4 s4 s4 a:m s4 s4 s4 a:m s4 s4 s4
   a:m s4 s4 s4 f  s4 s4 s4 g  s4 s4 s4 a:m s4 s4 s4  g s4 s4 s4  
   f s4 s4 s4 e:m s4 s4 s4 a:m s4 s4 s4 a:m s4 s4 s4 g s4 c s4
   d:m s4 s4 s4 g s4 s4 s4 a:m s4 s4 s4
   c s4 s4 s4 f s4 g s4 c s4 s4 s4 c s4 s4 s4 f s4 g  s4 c s4 s4 s4 c s4 s4 s4
   f s4  g  s4 c s4 s4 s4 a:m s4 s4 s4 d:m s4 s4 s4 g s4 s4 s4 a:m s4 s4 s4 a:m s4 s4 s4
   d:m s4 s4 s4 e:m s4 s4 s4 f s4 s4 s4 a:m
}

\include "predefined-guitar-fretboards.ly"

theChords = \chordmode {
  % insert chords for chordnames and fretboards here
  c4 d:m e:m f g a:m
}

%\score {
%<<
%  \context ChordNames { \theChords }
%  \context FretBoards { \theChords }  
%>>
%}

\score {
<<
  \new ChordNames {
    %\set chordChanges = ##t

    \set instrumentName = #"italian"
    \italianChords

    \chord
 }
 
  \new JianpuStaff \jianpuMusic \new Voice = number { \global  \melody }

  \new Lyrics = "IX" { \lyricsto number {  \verse } } 

  \new Lyrics = "IY" { \lyricsto number {  \verserr } } 
>>

 \layout { 
   #(layout-set-staff-size 24)
   \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
	   (minimum-distance . 1)
	   (padding . 1))
    }
 }

}
