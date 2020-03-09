\version "2.19.83"

\include "jianpu/work/jianpu.ly"

\header {
  title = "天竺少女"
  subtitle = " "
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
  \key d \major
  \transpose  c d   {
  
  e4 r4 | %{ bar 2: %} r4 r4 | %{ bar 3: %} a4 r4 | %{ bar 4: %} r4 r4 | %{ bar 5: %} e4 r4 | %{ bar 6: %} a4 r4 |
  %{ bar 7: %} e4 r4 | %{ bar 8: %} a4 r4 | %{ bar 9: %} r4 r8 e8 | %{ bar 10: %} a2 ( | %{ bar 11: %} a4 ) c'8 ( d'8 ) | 
  %{ bar 12: %} e'4 d'8 ( b8 ) | %{ bar 13: %} c'4 b8 c'16 ( b16 ) | %{ bar 14: %} a2 (  | %{ bar 15: %} a4. ) e8 |
  %{ bar 16: %} a2 (  | %{ bar 17: %} a4 ) c'8 ( d'8 ) | %{ bar 18: %} e'8 e'8 d'8 ( b8 ) | %{ bar 19: %} c'4 b8 ( c'16 b16 ) |
  %{ bar 20: %} a2 ( | %{ bar 21: %} a2 )  | %{ bar 22: %} d'8 d'8 d'8 b16 b16 | %{ bar 23: %} c'8 ( d'8 ) e'8 ( f'8 ) |
  %{ bar 24: %} d'8 d'8 d'8 d'16 e'16 | %{ bar 25: %} d'8 ( b8 ) c'4 | %{ bar 26: %} b8 b8 b8 b16 c'16 | %{ bar 27: %} b4 ( a8 g8 ) |
  %{ bar 28: %} a4 g8 ( f8 ) | %{ bar 29: %} e2  (  | %{ bar 30: %} e2  )  | %{ bar 31: %} r4 r4 | %{ bar 32: %} e'8 e'4 f'8 | 
  %{ bar 33: %} g'8 ( f'8 ) e'4 | %{ bar 34: %} e'8 e'4 f'8 | %{ bar 35: %} g'8 ( f'8 ) e'8 ( e'8 ) | %{ bar 36: %} f'2 (  | 
  %{ bar 37: %} e'8. f'16 e'8 d'8 ) | %{ bar 38: %} e'2 (  | %{ bar 39: %} e'2  ) | %{ bar 40: %} d'8 d'4 e'8 | 
  %{ bar 41: %} f'8 ( e'8 ) d'4 | %{ bar 42: %} d'8 d'4 ( e'8 ) | %{ bar 43: %} f'8 ( e'8 ) d'4 | %{ bar 44: %} f'2 (  | 
  %{ bar 45: %} e'8. f'16 e'8 d'8 ) | %{ bar 46: %} d'2 ( | %{ bar 47: %} d'2 ) | %{ bar 48: %} e'2 (  |
  %{ bar 49: %} e'4. )  f'16 ( e'16 | %{ bar 50: %} c'8 ) e'8 d'8 b8 | %{ bar 51: %} c'4 b8 c'16 ( b16 ) | %{ bar 52: %} a4 g8 f8 | 
  %{ bar 53: %} e2 ( | %{ bar 54: %} e2 )  | %{ bar 55: %} r4 r4 | %{ bar 56: %} d'2 (  | 
  %{ bar 57: %} d'4. ) e'16 ( d'16  | %{ bar 58: %} c'8 ) e'8 b8 c'8 | %{ bar 59: %} b4 c'8 b8 | 
  %{ bar 60: %} a4 g8 a16 ( b16 ) | %{ bar 61: %} a2 (  | %{ bar 62: %} a2 ) 
  
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
   Ho \sk \sk  \sk  Ha \sk \sk \sk Ho \sk Ha \sk Ho \sk Ha \sk \sk \sk
是 誰 送 你 來 到 我 身 邊
是 那 圓 圓 的 明 月 明 月 \sk
是 那 潺 潺 的 山 泉
是 那 潺 潺 的 山 泉
是 那 潺 潺 的 山 泉 山 泉 \sk \sk \sk
我 像 那 戴 著 露 珠 的 花 瓣 花 瓣 \sk 
甜 甜 地 把 你 把 你 依 戀 依 戀 \sk
哈 啊 沙 嗚 沙 嗚  沙 裏 瓦 沙 裏 瓦 \sk \sk \sk
哈 啊 沙 嗚 沙 嗚  沙 裏 瓦 沙 裏 瓦

}

verserr = \lyricmode {
    %
    \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk \sk
   
}


chord = \chordmode {
  %e:m d s4 s4 s4 c s4 s4 s4 b:m s4 s4 s4 e:m s4 s4 s4 d s4 s4 s4 c s4 s4 s4 e:m s4 s4 s4
  s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  b:m s4 s4 s4
  fis:m7 s4 s4 s4
  b:m s4 s4 s4
  b:m s4 s4 s4
  fis:m7 s4 s4 s4
  b:m s4 s4 s4
  e:m s4 s4 s4 
  fis:m7 s4 s4 s4
  a s4 s4 s4 
  b:m s4 s4 s4 s4 s4
  s4 s4
  b:m s4 s4 s4
  b:m s4 s4 s4
  g s4 s4 s4
  b:m s4 s4 s4 
  e:m s4 fis:m7 s4
  e:m s4 fis:m7 s4 
  g s4 s4 s4
  a:7 s4 s4 s4 
  b:m s4 s4 s4 
  fis:m7 s4 s4 s4
  b:m s4 s4 s4 
  s4 s4 s4 s4
  e:m s4 s4 s4
  fis:m7 s4 s4 s4
  b:m s4 s4 s4
  
}

\include "predefined-guitar-fretboards.ly"

theChords = \chordmode {
  % insert chords for chordnames and fretboards here
  %c4 d:m e:m f g a:m
  d e:m fis:m7 g a b:m
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
