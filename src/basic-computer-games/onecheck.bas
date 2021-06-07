2 print tab(30);"one check"
4 print tab(15);"creative computing  morristown, new jersey"
6 print: print: print
8 dim a(64)
10 print "solitaire checker puzzle by david ahl"
15 print
20 print "48 checkers are placed on the 2 outside spaces of a"
25 print "standard 64-square checkerboard.  the object is to"
30 print "remove as many checkers as possible by diagonal jumps"
35 print "(as in standard checkers).  use the numbered board to"
40 print "indicate the square you wish to jump from and to.  on"
45 print "the board printed out on each turn '1' indicates a"
50 print "checker and '0' an empty square.  when you have no"
55 print "possible jumps remaining, input a '0' in response to"
60 print "question 'jump from ?'"
62 print
63 print "here is the numerical board:"
66 print
70 for j=1 to 57 step 8
74 print j;tab(4);j+1;tab(8);j+2;tab(12);j+3;tab(16);j+4;tab(20);j+5;
75 print tab(24);j+6;tab(28);j+7
76 next j
77 print
78 print "and here is the opening position of the checkers."
79 print
80 for j=1 to 64
82 a(j)=1
84 next j
86 for j=19 to 43 step 8
88 for i=j to j+3
90 a(i)=0
92 next i
94 next j
96 m=0
98 goto 340
100 input "jump from";f
105 if f=0 then 500
110 input "to";t
112 print
118 rem *** check legality of move
120 f1=int((f-1)/8)
130 f2=f-8*f1
140 t1=int((t-1)/8)
150 t2=t-8*t1
160 if f1>7 then 230
170 if t1>7 then 230
180 if f2>8 then 230
190 if t2>8 then 230
200 if abs(f1-t1)<>2 then 230
210 if abs(f2-t2)<>2 then 230
212 if a((t+f)/2)=0 then 230
215 if a(f)=0 then 230
220 if a(t)=1 then 230
225 goto 250
230 print "illegal move.  try again..."
240 goto 100
245 rem *** update board
250 a(t)=1
260 a(f)=0
270 a((t+f)/2)=0
290 m=m+1
310 rem *** print board
340 for j=1 to 57 step 8
350 for i=j to j+7
360 print a(i);
370 next i
380 print
390 next j
400 print
410 goto 100
490 rem *** end game summary
500 s=0
510 for i=1 to 64
520 s=s+a(i)
530 next i
540 print:print "you made";m;"jumps and had";s;"pieces"
550 print "remaining on the board."
560 print
562 input "try again";a$
570 if a$="yes" then 70
575 if a$="no" then 600
580 print "please answer 'yes' or 'no'."
590 goto 562
600 print
610 print "o.k.  hope you had fun!!"
999 end
