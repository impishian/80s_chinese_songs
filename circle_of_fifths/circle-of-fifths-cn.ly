\version "2.18.2"

%\language "deutsch"
%\language "english"
%%
%% http://lsr.di.unimi.it/LSR/Item?id=1040
%% created by Manuela
%% thanks to the German forum http://www.lilypondforum.de
%% feel free to change and distribute
%%
%% draw a circle of fifths with Lilypond
%% in the style like here https://commons.wikimedia.org/wiki/File:Quintenzirkeldeluxe.png
%% you can use more Scheme if you like
%% e.g. drawing the ticker lines with whitening cirle as one graph
%% needs no include files

%% creating the score snippets
%% we remove some items not needed

\header {
  title = \markup {
    \override #'(font-size . 8)  "五度圈"  %"CIRCLE OF FIFTHS"
  }
  subtitle = " "
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 20
  %bottom-margin = 10
  left-margin = 18
  right-margin = 15
  top-system-spacing = #'((basic-distance . 20) (minimum-distance . 20) (padding . 10) (stretchability . 1))
}

\layout {
  indent = #0
  \context {
    \Staff
    \omit TimeSignature
    \omit BarLine
    explicitClefVisibility = #end-of-line-invisible
    explicitKeySignatureVisibility = #end-of-line-invisible
    \remove "Accidental_engraver"
  }
  \context {
    \Voice
    \omit NoteHead
    \omit Stem
  }
  \context {
    \Score
    \override BarNumber.break-visibility = #all-invisible
    \override KeyCancellation.break-visibility = #'#(#f #f #f)
  }
}

%% define score snippets als markups
%% in order of appearance

Csharp=\markup \score { { \key cis \major g'4 } \layout {  } }
Cflat=\markup \score { { \key ces \major g'4 } \layout {  } }

CDur=\markup \score { { \key c \major g'4 } \layout {  } }
GDur=\markup \score { { \key g \major g'4 } \layout {  } }
DDur=\markup \score { { \key d \major g'4 } \layout {  } }
ADur=\markup \score { { \key a \major g'4 } \layout {  } }
EDur=\markup \score { { \key e \major g'4 } \layout {  } }
HDur=\markup \score { { \key b \major g'4 } \layout {  } }
FisDur=\markup \score { { \key fis \major g'4 } \layout {  } }
GesDur=\markup \score { { \key ges \major g'4 } \layout {  } }
DesDur=\markup \score { { \key des \major g'4 } \layout {  } }
AsDur=\markup \score { { \key as \major g'4 } \layout {  } }
EsDur=\markup \score { { \key es \major g'4 } \layout {  } }
BesDur=\markup \score { { \key bes \major g'4 } \layout {  } }
FDur=\markup \score { { \key f \major g'4 } \layout {  } }

#(define (st-rot stencil myangle)
   ;; just for shortening the code
   (ly:stencil-rotate stencil myangle 0 0))

#(define (x-width mystencil)
   (let* ((x-ext (ly:stencil-extent mystencil X)))
     (- (cdr x-ext) (car x-ext))))

#(define (y-width mystencil)
   (let* ((y-ext (ly:stencil-extent mystencil Y)))
     (- (cdr y-ext) (car y-ext))))

#(define (bogen winkel)
   (* ( / winkel 180) PI))

#(define (kreis-punkt radius winkel)
   ;; this function returns the coordinates of a point on a circumference
   ;; as pair depending on radius and angle
   ;; like a clock: start at midnight ;-)
   ;; winkel = angle (in degrees)
   ;; '(x . y)
   (let* ((wiboma (bogen winkel)) ;; calculate angle as radian measure
           (x-sin (sin wiboma))
           (y-cos (cos wiboma))
           (x-cor (* x-sin radius))
           (y-cor (* y-cos radius)))
     (cons x-cor y-cor)))

#(define (mittel-punkt stencil)
   ;; returns the coordinates of the middle of the stencil als pair
   ;; '( x-middle . y-middle)
   (let*
    ((x-li (car (ly:stencil-extent stencil X)))
     (x-re (cdr (ly:stencil-extent stencil X)))
     (y-li (car (ly:stencil-extent stencil Y)))
     (y-re (cdr (ly:stencil-extent stencil Y))))
    (cons (/ (+ x-li x-re) 2) (/ (+ y-li y-re) 2))))

#(define (move-to-circle radius winkel stencil)
   ;; move a stencil to the edge of a cirle
   ;; depending on radius and angle
   ;; the arithmetic middle of the stenil coordinates is the reference point
   ;; which is moved with its `mittel-punkt' to `kreis-punkt'
   (let* ((mittel (mittel-punkt stencil))
          (mittel-x (car mittel))
          (mittel-y (cdr mittel))
          (kreis (kreis-punkt radius winkel))
          (kreis-x (car kreis))
          (kreis-y (cdr kreis)))
     (ly:stencil-translate stencil
       (cons
        (- kreis-x mittel-x)
        (- kreis-y mittel-y)))))

#(define-markup-command (move-markup layout props mymark radius winkel)
   (markup? number? number?)
   (move-to-circle radius winkel (interpret-markup layout props mymark)))

#(define (move-to-circle-x radius winkel stencil delta)
   ;; move stencil down (at six)
   ;; winkel=0:  left aligned
   ;; winkel<>0: right aligned
   ;; just for Fis/Ges Dur needed
   ;; two scales at six
   (let* ((mittel (mittel-punkt stencil))
          (mittel-x (car mittel))
          (mittel-y (cdr mittel))
          (kreis (kreis-punkt radius winkel))
          (kreis-x (car kreis))
          (kreis-y (cdr kreis)))
     (if (= winkel 0)
         (ly:stencil-translate stencil
           (cons
            (+ (* -2 mittel-x) delta)
            (* radius -1)))
         (ly:stencil-translate stencil
           (cons
            delta
            (* radius -1))))))

#(define-markup-command (move-markup-x layout props mymark radius winkel delta)
   (markup? number? number? number?)
   (move-to-circle-x radius winkel (interpret-markup layout props mymark) delta))

#(define-markup-command (move-and-scale layout props mymark faktor x-offset)
   (markup? number? number?)
   (ly:stencil-translate
    (ly:stencil-scale
     (interpret-markup layout props mymark)
     faktor faktor)
    (cons x-offset 0))
   )

#(define QC-radius 35) %% inner radius of the cirle
#(define Abstand 1.45)  %% try what looks best
#(define ticker-len 1.07)
#(define outer-radius (* QC-radius Abstand)) %% outer radius
#(define Dur-radius (* QC-radius 1.16))  %% try what looks best
#(define moll-radius (/ QC-radius 1.3)) %% try what looks best

#(define ticker-line
   ;; this is the archetype of the ticker lines
   ;; that connect the majors with the minors
   ;; I combine six of them rotated at 30, 60, ... degrees
   (make-filled-box-stencil (cons -0.1 0.1)
     (cons (* -1 QC-radius ticker-len) (* QC-radius ticker-len))))

%%%% Remark
%% While 2.20.-update use markup-command \overlay instead of
%% multiple \combine
QuiZi=
\markup {
  %% Score snippets
  \combine \move-markup \CDur #outer-radius #0
  \combine \move-markup \GDur #outer-radius #30
  \combine \move-markup \DDur #outer-radius #60
  \combine \move-markup \ADur #outer-radius #90
  \combine \move-markup \EDur #outer-radius #120
  \combine \move-markup \HDur #outer-radius #150
  \combine \move-markup-x \FisDur #outer-radius #180 #0.5
  \combine \move-markup-x \GesDur #outer-radius #0 #-0.5
  \combine \move-markup \DesDur #outer-radius #210
  %\combine \move-markup \Csharp #outer-radius #0 #0.5
  \combine \move-markup \AsDur #outer-radius #240
  \combine \move-markup \EsDur #outer-radius #270
  \combine \move-markup \BesDur #outer-radius #300
  \combine \move-markup \FDur #outer-radius #330
  %% ticker lines
  \combine \stencil \ticker-line
  \combine \stencil #(st-rot ticker-line 30)
  \combine \stencil #(st-rot ticker-line 60)
  \combine \stencil #(st-rot ticker-line 90)
  \combine \stencil #(st-rot ticker-line 120)
  \combine \stencil #(st-rot ticker-line 150)
  %% whiten the interior of the circle
  \with-color #white
  \combine \draw-circle #(/ QC-radius ticker-len) #0 ##t
  %% add major letters in blue
  \with-color #blue
  \abs-fontsize #22 \bold
  \combine \move-markup \circle "C" #Dur-radius #0
  \combine \move-markup "G" #Dur-radius #30
  \combine \move-markup "D" #Dur-radius #60
  \combine \move-markup "A" #Dur-radius #90
  \combine \move-markup "E" #Dur-radius #120
  \combine \move-markup "B" #Dur-radius #150
  \combine \move-markup \concat { \raise#2 \flat "G/" \raise#2 \sharp "F" }  #Dur-radius #180
  \combine \move-markup \concat { \raise#2 \flat "D"}  #Dur-radius #210
  \combine \move-markup \concat { \raise#2 \flat "A"}  #Dur-radius #240
  \combine \move-markup \concat { \raise#2 \flat "E"}  #Dur-radius #270
  \combine \move-markup \concat { \raise#2 \flat "B"}  #Dur-radius #300
  \combine \move-markup "F" #Dur-radius #330
  \with-color #red
  \combine \move-markup \circle "Am" #moll-radius #0
  \combine \move-markup "Em" #moll-radius #30
  \combine \move-markup "Bm" #moll-radius #60
  \combine \move-markup \concat { \raise#2 \sharp "Fm"}  #moll-radius #90
  \combine \move-markup \concat { \raise#2 \sharp "Cm"}  #moll-radius #120
  \combine \move-markup \concat { \raise#2 \sharp "Gm"}  #moll-radius #143
  \combine \move-markup \concat { \raise#2 \flat "Em/" \raise#2 \sharp "Dm" }  #moll-radius #180
  \combine \move-markup \concat { \raise#2 \flat "Bm"}  #moll-radius #218
  \combine \move-markup "Fm" #moll-radius #240
  \combine \move-markup "Cm" #moll-radius #270
  \combine \move-markup "Gm" #moll-radius #300
  \combine \move-markup "Dm" #moll-radius #330
  \abs-fontsize #30
  \with-color #blue
  \combine \move-markup "" #outer-radius #0
  \with-color #red
  \combine \move-markup "" #(* moll-radius 0.6) #0
  \with-color #black
  \draw-circle #QC-radius #0.5 ##f

}
%% usage example
\markup { \vspace #2 } % 在标题和乐谱之间增加空行

\markup \move-and-scale \QuiZi #1.0 #50

\markup {
  \vspace #1.8

  \with-color #blue \abs-fontsize #22 \bold
  \concat { "      " \raise#2 \sharp "C"} \Csharp

  \halign #-20

  \with-color #blue \abs-fontsize #22 \bold
  \concat { \raise #2 \flat  "C"} \Cflat
}
