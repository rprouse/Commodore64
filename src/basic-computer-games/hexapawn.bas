1 print tab(32);"hexapawn"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 rem  hexapawn:  interpretation of hexapawn game as presented in
5 rem  martin gardner's "the unexpected hanging and other mathematic-
6 rem  al diversions", chapter eight:  a matchbox game-learning machine
7 rem  original version for h-p timeshare system by r.a. kaapke 5/5/76
8 rem  instructions by jeff dalton
9 rem  conversion to mits basic by steve north
10 dim b(19,9),m(19,4),s(9),p$(3)
15 w=0: l=0
20 def fnr(x)=-3*(x=1)-(x=3)-4*(x=6)-6*(x=4)-7*(x=9)-9*(x=7)+fns(x)
25 def fns(x)=-x*(x=2 or x=5 or x=8)
30 def fnm(y)=y-int(y/10)*10
35 p$="x.o"
40 for i=1 to 19: for j=1 to 9: read b(i,j): next j: next i
45 for i=1 to 19: for j=1 to 4: read m(i,j): next j: next i
50 print "instructions (y-n)";
60 input a$
70 a$=left$(a$,1)
80 if a$="y" then 2000
90 if a$<>"n" then 50
100 x=0: y=0
111 s(4)=0: s(5)=0: s(6)=0
112 s(1)=-1: s(2)=-1: s(3)=-1
113 s(7)=1: s(8)=1: s(9)=1
115 gosub 1000
120 print "your move";
121 input m1,m2
122 if m1=int(m1)and m2=int(m2)and m1>0 and m1<10 and m2>0 and m2<10 then 130
123 print "illegal co-ordinates."
124 goto 120
130 if s(m1)=1 then 150
140 print "illegal move.": goto 120
150 if s(m2)=1 then 140
160 if m2-m1<>-3 and s(m2)<>-1 then 140
170 if m2>m1 then 140
180 if m2-m1=-3 and (s(m2)<>0) then 140
185 if m2-m1<-4 then 140
186 if m1=7 and m2=3 then 140
190 s(m1)=0
200 s(m2)=1
205 gosub 1000
210 if s(1)=1 or s(2)=1 or s(3)=1 then 820
220 for i=1 to 9
221 if s(i)=-1 then 230
222 next i
223 goto 820
230 for i=1 to 9
240 if s(i)<>-1 then 330
250 if s(i+3)=0 then 350
260 if fnr(i)=i then 320
270 if i>3 then 300
280 if s(5)=1 then 350
290 goto 330
300 if s(8)=1 then 350
310 goto 330
320 if s(i+2)=1 or s(i+4)=1 then 350
330 next i
340 goto 820
350 for i=1 to 19
360 for j=1 to 3
370 for k=3 to 1 step -1
380 t((j-1)*3+k)=b(i,(j-1)*3+4-k)
390 next k
400 next j
410 for j=1 to 9
420 if s(j)<>b(i,j) then 460
430 next j
440 r=0
450 goto 540
460 for j=1 to 9
470 if s(j)<>t(j) then 510
480 next j
490 r=1
500 goto 540
510 next i
511 remember the termination of this loop is impossible
512 print "illegal board pattern."
530 stop
540 x=i
550 for i=1 to 4
560 if m(x,i)<>0 then 600
570 next i
580 print "i resign."
590 goto 820
600 y=int(rnd(1)*4+1)
601 if m(x,y)=0 then 600
610 if r<>0 then 630
620 print "i move from ";str$(int(m(x,y)/10));" to ";str$(fnm(m(x,y)))
622 s(int(m(x,y)/10))=0
623 s(fnm(m(x,y)))=-1
624 goto 640
630 print "i move from ";str$(fnr(int(m(x,y)/10)));" to ";
631 print str$(fnr(fnm(m(x,y))))
632 s(fnr(int(m(x,y)/10)))=0
633 s(fnr(fnm(m(x,y))))=-1
640 gosub 1000
641 if s(7)=-1 or s(8)=-1 or s(9)=-1 then 870
650 for i=1 to 9
660 if s(i)=1 then 690
670 next i
680 goto 870
690 for i=1 to 9
700 if s(i)<>1 then 790
710 if s(i-3)=0 then 120
720 if fnr(i)=i then 780
730 if i<7 then 760
740 if s(5)=-1 then 120
750 goto 790
760 if s(2)=-1 then 120
770 goto 790
780 if s(i-2)=-1 or s(i-4)=-1 then 120
790 next i
800 print "you can't move, so ";
810 goto 870
820 print "you win."
830 m(x,y)=0
840 l=l+1
850 print "i have won";w;"and you";l;"out of";l+w;"games."
851 print
860 goto 100
870 print "i win."
880 w=w+1
890 goto 850
900 data -1,-1,-1,1,0,0,0,1,1,-1,-1,-1,0,1,0,1,0,1
905 data -1,0,-1,-1,1,0,0,0,1,0,-1,-1,1,-1,0,0,0,1
910 data -1,0,-1,1,1,0,0,1,0,-1,-1,0,1,0,1,0,0,1
915 data 0,-1,-1,0,-1,1,1,0,0,0,-1,-1,-1,1,1,1,0,0
920 data -1,0,-1,-1,0,1,0,1,0,0,-1,-1,0,1,0,0,0,1
925 data 0,-1,-1,0,1,0,1,0,0,-1,0,-1,1,0,0,0,0,1
930 data 0,0,-1,-1,-1,1,0,0,0,-1,0,0,1,1,1,0,0,0
935 data 0,-1,0,-1,1,1,0,0,0,-1,0,0,-1,-1,1,0,0,0
940 data 0,0,-1,-1,1,0,0,0,0,0,-1,0,1,-1,0,0,0,0
945 data -1,0,0,-1,1,0,0,0,0
950 data 24,25,36,0,14,15,36,0,15,35,36,47,36,58,59,0
955 data 15,35,36,0,24,25,26,0,26,57,58,0
960 data 26,35,0,0,47,48,0,0,35,36,0,0,35,36,0,0
965 data 36,0,0,0,47,58,0,0,15,0,0,0
970 data 26,47,0,0,47,58,0,0,35,36,47,0,28,58,0,0,15,47,0,0
1000 print
1010 for i=1 to 3
1020 for j=1 to 3
1030 print tab(10);mid$(p$,s((i-1)*3+j)+2,1);
1040 next j
1050 print
1060 next i
1070 print
1080 return
2000 print: print "this program plays the game of hexapawn."
2010 print "hexapawn is played with chess pawns on a 3 by 3 board."
2020 print "the pawns are moved as in chess - one space forward to"
2030 print "an empty space or one space forward and diagonally to"
2040 print "capture an opposing man.  on the board, your pawns"
2050 print "are 'o', the computer's pawns are 'x', and empty "
2060 print "squares are '.'.  to enter a move, type the number of"
2070 print "the square you are moving from, followed by the number"
2080 print "of the square you will move to.  the numbers must be"
2090 print "seperated by a comma.": print
2100 print "the computer starts a series of games knowing only when"
2105 print "the game is won (a draw is impossible) and how to move."
2110 print "it has no strategy at first and just moves randomly."
2120 print "however, it learns from each game.  thus, winning becomes"
2130 print "more and more difficult.  also, to help offset your"
2140 print "initial advantage, you will not be told how to win the"
2150 print "game but must learn this by playing."
2160 print: print "the numbering of the board is as follows:"
2170 print tab(10);"123": print tab(10);"456": print tab(10);"789"
2180 print: print "for example, to move your rightmost pawn forward,"
2190 print "you would type 9,6 in response to the question"
2200 print "'your move ?'.  since i'm a good sport, you'll always"
2210 print "go first.": print
2220 goto 100
9999 end
