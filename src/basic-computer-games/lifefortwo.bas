2 print tab(33);"life2"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
7 dim n(6,6),k(18),a(16),x(2),y(2)
8 data 3,102,103,120,130,121,112,111,12
9 data 21,30,1020,1030,1011,1021,1003,1002,1012
10 for m=1 to 18: read k(m): next m
13 data -1,0,1,0,0,-1,0,1,-1,-1,1,-1,-1,1,1,1
14 for o1= 1 to 16: read a(o1): next o1
20 goto 500
50 for j=1 to 5
51 for k=1 to 5
55 if n(j,k)>99 then gosub 200
60 next k
65 next j
90 k=0: m2=0: m3=0
99 for j=0 to 6: print
100 for k=0 to 6
101 if j<>0 then if j<>6 then 105
102 if k=6 then print 0;: goto 125
103 print k;: goto 120
105 if k<>0 then if k<>6 then 110
106 if j=6 then print 0: goto 126
107 print j;: goto 120
110 gosub 300
120 next k
125 next j
126 return
200 b=1: if n(j,k)>999 then b=10
220 for o1= 1 to 15 step 2
230 n(j+a(o1),k+a(o1+1))=n(j+a(o1),k+a(o1+1))+b
231 next o1
239 return
300 if n(j,k)<3 then 399
305 for o1=1 to 18
310 if n(j,k)=k(o1) then 350
315 next o1
320 goto 399
350 if o1>9 then 360
351 n(j,k)=100: m2=m2+1: print " * ";
355 return
360 n(j,k)=1000: m3=m3+1: print " # ";
365 return
399 n(j,k)=0: print "   ";: return
500 print tab(10);"u.b. life game"
505 m2=0: m3=0
510 for j=1 to 5
511 for k=1 to 5
515 n(j,k)=0
516 next k
517 next j
519 for b=1 to 2: p1=3: if b=2 then p1=30
520 print:print "player";b;" - 3 live pieces."
535 for k1=1 to 3: gosub 700
540 n(x(b),y(b))=p1: next k1
542 next b
559 gosub 90
560 print: gosub 50
570 if m2=0 then if m3=0 then 574
571 if m3=0 then b=1: goto 575
572 if m2=0 then b=2: goto 575
573 goto 580
574 print: print "a draw":goto 800
575 print: print "player";b;"is the winner":goto 800
580 for b=1 to 2: print: print: print "player";b;: gosub 700
581 if b=99 then 560
582 next b
586 n(x(1),y(1))=100: n(x(2),y(2))=1000
596 goto 560
700 print "x,y":print"xxxxxx";chr$(13);"$$$$$$";chr$(13);"&&&&&&";
701 print chr$(13);: input y(b),x(b)
705 if x(b)<=5 then if x(b)>0 then 708
706 goto 750
708 if y(b)<=5 then if y(b)>0 then 715
710 goto 750
715 if n(x(b),y(b))<>0 then 750
720 if b=1 then return
725 if x(1)=x(2) then if y(1)=y(2) then 740
730 return
740 print "same coord.  set to 0"
741 n(x(b)+1,y(b)+1)=0: b=99: return
750 print "illegal coords. retype": goto 700
999 end
