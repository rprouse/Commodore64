1 print tab(33);"h-i-q"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 dim b(70),t(9,9)
5 print "here is the board:": print
6 print "          !    !    !"
7 print "         13   14   15": print
8 print "          !    !    !"
9 print "         22   23   24": print
10 print "!    !    !    !    !    !    !"
11 print "29   30   31   32   33   34   35": print
12 print "!    !    !    !    !    !    !"
13 print "38   39   40   41   42   43   44": print
14 print "!    !    !    !    !    !    !"
15 print "47   48   49   50   51   52   53": print
16 print "          !    !    !"
17 print "         58   59   60": print
18 print "          !    !    !"
19 print "         67   68   69": print
20 print "to save typing time, a compressed version of the game board"
22 print "will be used during play.  refer to the above one for peg"
24 print "numbers.  ok, let's begin."
28 rem *** set up board
29 for r=1 to 9
30 for c=1 to 9
31 if (r-4)*(r-5)*(r-6)=0 then 40
32 if (c-4)*(c-5)*(c-6)=0 then 40
35 t(r,c)=-5
36 goto 50
40 if (r-1)*(c-1)*(r-9)*(c-9)=0 then 35
42 t(r,c)=5
50 next c
60 next r
65 t(5,5)=0: gosub 500
70 rem *** input move and check on legality
75 for w=1 to 33
77 read m
79 data 13,14,15,22,23,24,29,30,31,32,33,34,35,38,39,40,41
81 data 42,43,44,47,48,49,50,51,52,53,58,59,60,67,68,69
83 b(m)=-7: next w
86 b(41)=-3
100 input "move which piece";z
110 if b(z)=-7 then 140
120 print "illegal move, try again...": goto 100
140 input "to where";p
150 if b(p)=0 then 120
153 if b(p)=-7 then 120
156 if z=p then 100
160 if ((z+p)/2)=int((z+p)/2) then 180
170 goto 120
180 if (abs(z-p)-2)*(abs(z-p)-18)<>0 then 120
190 gosub 1000
200 gosub 500
210 gosub 1500
220 goto 100
500 rem *** print board
510 for x=1 to 9
520 for y=1 to 9
525 if (x-1)*(x-9)*(y-1)*(y-9)=0 then 550
530 if (x-4)*(x-5)*(x-6)=0 then 570
540 if (y-4)*(y-5)*(y-6)=0 then 570
550 rem
560 goto 610
570 if t(x,y)<>5 then 600
580 print tab(y*2);"!";
590 goto 610
600 print tab(y*2);"o";
610 rem
615 next y
620 print
630 next x
640 return
1000 rem *** update board
1005 c=1: for x=1 to 9
1020 for y=1 to 9
1030 if c<>z then 1220
1040 if c+2<>p then 1080
1045 if t(x,y+1)=0 then 120
1050 t(x,y+2)=5
1060 t(x,y+1)=0: b(c+1)=-3
1070 goto 1200
1080 if c+18<>p then 1130
1085 if t(x+1,y)=0 then 120
1090 t(x+2,y)=5: t(x+1,y)=0: b(c+9)=-3
1120 goto 1200
1130 if c-2<>p then 1170
1135 if t(x,y-1)=0 then 120
1140 t(x,y-2)=5: t(x,y-1)=0: b(c-1)=-3
1160 goto 1200
1170 if c-18<>p then 1220
1175 if t(x-1,y)=0 then 120
1180 t(x-2,y)=5: t(x-1,y)=0: b(c-9)=-3
1200 b(z)=-3: b(p)=-7
1210 t(x,y)=0: goto 1240
1220 c=c+1
1225 next y
1230 next x
1240 return
1500 rem*** check if game is over
1505 f=0
1510 for r=2 to 8
1520 for c=2 to 8
1530 if t(r,c)<>5 then 1580
1535 f=f+1
1540 for a=r-1 to r+1
1545 t=0
1550 for b=c-1 to c+1
1560 t=t+t(a,b)
1561 next b
1564 if t<>10 then 1567
1565 if t(a,c)<>0 then 1630
1567 next a
1568 for x=c-1 to c+1
1569 t=0
1570 for y=r-1 to r+1
1571 t=t+t(y,x)
1572 next y
1573 if t<>10 then 1575
1574 if t(r,x)<>0 then 1630
1575 next x
1580 next c
1590 next r
1600 rem *** game is over
1605 print "the game is over."
1610 print "you had";f;"pieces remaining."
1611 if f<>1 then 1615
1612 print "bravo!  you made a perfect score!"
1613 print "save this paper as a record of your accomplishment!"
1615 print: input "play again (yes or no)";a$
1617 if a$="no" then 2000
1618 restore: goto 28
1620 stop
1630 return
2000 print: print "so long for now.": print
2010 end
