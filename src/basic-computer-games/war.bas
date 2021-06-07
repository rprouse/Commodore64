10 print tab(33);"war"
20 print tab(15);"creative computing  morristown, new jersey"
30 print: print: print
100 print "this is the card game of war.  each card is given by suit-#"
110 print "as s-7 for spade 7.  ";
120 print "do you want directions";
130 input b$
140 if b$="no" then 210
150 if b$="yes" then 180
160 print "yes or no, please.  ";
170 goto 120
180 print "the computer gives you and it a 'card'.  the higher card"
190 print "(numerically) wins.  the game ends when you choose not to"
200 print "continue or when you have finished the pack."
210 print
220 print
230 dim a$(52),l(54)
240 for i=1 to 52
250 read a$(i)
260 next i
270 rem
280 for j=1 to 52
290 let l(j)=int(52*rnd(1))+1
295 if j=1 then 350
300 for k=1 to j-1
310 if l(k)<>l(j) then 340
320 rem
330 goto 290
340 next k
350 next j
360 p=p+1
370 m1=l(p)
380 p=p+1
390 m2=l(p)
400 print
420 print "you: ";a$(m1),"computer: ";a$(m2)
430 n1=int((m1-.5)/4)
440 n2=int((m2-.5)/4)
450 if n1>=n2 then 490
460 a1=a1+1
470 print "the computer wins!!! you have";b1;"and the computer has";a1
480 goto 540
490 if n1=n2 then 530
500 b1=b1+1
510 print "you win. you have";b1;"and the computer has";a1
520 goto 540
530 print "tie.  no score change."
540 if l(p+1)=0 then 610
550 print "do you want to continue";
560 input v$
570 if v$="yes" then 360
580 if v$="no" then 650
590 print "yes or no, please.  ";
600 goto 540
610 print
620 print
630 print "we have run out of cards.  final score:  you: ";b1;
640 print "  the computer: ";a1:print
650 print "thanks for playing.  it was fun."
655 print
660 data "s-2","h-2","c-2","d-2","s-3","h-3","c-3","d-3"
670 data "s-4","h-4","c-4","d-4","s-5","h-5","c-5","d-5"
680 data "s-6","h-6","c-6","d-6","s-7","h-7","c-7","d-7"
690 data "s-8","h-8","c-8","d-8","s-9","h-9","c-9","d-9"
700 data "s-10","h-10","c-10","d-10","s-j","h-j","c-j","d-j"
710 data "s-q","h-q","c-q","d-q","s-k","h-k","c-k","d-k"
720 data "s-a","h-a","c-a","d-a"
999 end
