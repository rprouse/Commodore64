10 print tab(26);"l-game"
11 print tab(20);"creative computing"
12 print tab(18);"morristown, new jersey"
13 print:print:print
20 dim c(4),o(4),t(4),b(16),n(16),m(100)
25 print "instructions";
30 input a$
35 if left$(a$,1)="y" then 3000
40 print "board printout";
45 input a$
50 if left$(a$,1)="n" then 65
55 let f2=0
60 goto 70
65 let f2=1
70 gosub 100
80 goto 210
100 rem initialize data
101 rem b1,b2 = positions of boxes
102 rem c(1,2,3,4) = computer's position (l)
103 rem o(1,2,3,4) = opponent's position (l)
104 rem t(1,2,3,4) = 6,7,10,11 = center positions
105 rem b(1,...16) = board:
106 rem     b(x)=0   empty
107 rem     b(x)=1   opponent's l
108 rem     b(x)=2   computer's l
109 rem     b(x)=3   box
115 restore
120 data 1,16,2,7,6,6,11,7,10,15,10,3,14,11
130 data 3,2,2,0,0,2,1,0,0,2,1,0,0,1,1,3
140 read b1,b2
150 for x=1 to 4
160 read c(x),o(x),t(x)
170 next x
180 for x=1 to 16
190 read b(x)
200 next x
205 return
210 print "do you wish to start";
215 input a$
220 if left$(a$,1) = "n" then 500
230 rem opponent's move
235 gosub 2270
240 print
245 print "your move for l";
250 input d(1),d(2),d(3),d(4)
255 if abs(d(1))+abs(d(2))+abs(d(3))+abs(d(4))=0 then 1280
260 rem bubble sort
265 for x=1 to 4
270 for y=2 to 4
275 if d(y)>d(y-1) then 295
280 let z=d(y)
285 let d(y)=d(y-1)
290 let d(y-1)=z
295 next y
300 next x
305 rem check legality
310 for x=1 to 4
315 let n(x)=d(x)
320 next x
325 let n1=4
330 let f1=0
335 gosub 1800
340 if m1<>4 then 1220
345 for x=1 to 4
350 if b(m(x))>1 then 1220
355 next x
360 for x=1 to 4
365 let b(o(x))=0
370 next x
375 for x=1 to 4
380 let b(m(x))=1
385 let o(x)=m(x)
390 next x
395 let b(b1)=0
400 let b(b2)=0
405 print "your move for the boxes";
410 input x,y
415 if abs(x)+abs(y)<>x+y then 1250
416 if x=y then 1250
420 if b(x)+b(y)>0 then 1250
430 let b1=x
440 let b2=y
450 let b(b1)=3
460 let b(b2)=3
470 print "o.k."
475 gosub 2270
480 rem computer's move
490 rem remove c(1-4) from board
500 for x=1 to 4
510 let b(c(x))=0
520 next x
530 gosub 1420
540 let f1=1
550 let n1=z
560 gosub 1800
570 if m1=0 then 1300
580 rem find move with best center coverage
585 gosub 1370
590 for e=0 to m1-4 step 4
600 for f=1 to 4
610 for g=1 to 4
620 if m(e+f)<>t(g) then 640
630 let n(e/4+1)=n(e/4+1)+1
640 next g
650 next f
660 next e
670 gosub 1500
680 rem put move in c(1-4)
690 let y=(z-1)*4
700 for x=1 to 4
710 let c(x)=m(x+y)
720 let b(c(x))=2
730 next x
740 print
750 print "computer moves to ";c(1);" ";c(2);" ";c(3);" ";c(4)
760 rem find moves for boxes
765 rem remove boxes from board
770 let b(b1)=0
780 let b(b2)=0
790 rem is opponent in corner?
800 for i=1 to 4
810 for j=1 to 4
820 if o(i)=t(j) then 870
830 next j
840 next i
845 rem opponent in corner, ignore center
850 goto 1020
860 rem opponent not in corner, fill center with boxes
870 for x=1 to 4
880 if b(t(x))>0 then 920
890 let b1=t(x)
900 let b(b1)=3
910 goto 950
920 next x
930 rem no spaces in center
940 goto 1020
950 for x=1 to 4
960 if b(t(x))>0 then 1000
970 let b2=t(x)
980 let b(b2)=3
990 goto 1080
1000 next x
1005 rem center filled
1010 goto 1050
1015 rem both boxes to be positioned
1020 gosub 1610
1030 let b1=b3
1040 let b(b1)=3
1045 rem one box to be positioned
1050 gosub 1610
1060 let b2=b3
1070 let b(b2)=3
1080 print tab(9);"moves boxes to ";b1;" and ";b2
1081 for x=1 to 4
1082 let b(o(x))=1
1083 next x
1085 gosub 2270
1090 rem check for win
1100 for x=1 to 4
1110 let b(o(x))=0
1120 next x
1130 gosub 1420
1140 let f1=2
1150 let n1=z
1160 gosub 1800
1170 if m1=0 then 1280
1180 for x=1 to 4
1190 let b(o(x))=1
1200 next x
1210 goto 240
1220 print "illegal move for l."
1230 print
1240 goto 240
1250 print "illegal move for box."
1260 print
1270 goto 405
1280 print "computer wins!"
1290 goto 1310
1300 print "congratulations! you have won."
1310 print
1320 print "play again";
1325 input a$
1330 if left$(a$,1)="y" then 70
1340 goto 4000
1350 rem *** subroutines ***
1360 rem erase n(x)
1370 for x=1 to 16
1380 let n(x)=0
1390 next x
1400 return
1410 rem store locations of unoccupied positions in n(x)
1420 let z=0
1430 for x=1 to 16
1440 if b(x)>0 then 1470
1450 let z=z+1
1460 let n(z)=x
1470 next x
1480 return
1490 rem this subroutine returns the location of the largest
1495 rem value in n(x).  if a tie exists a random choice is made.
1500 let y=0
1510 let z=1
1520 for x=1 to m1/4
1530 if n(x)<y then 1580
1540 if n(x)>y then 1560
1550 if rnd(1)>.5 then 1580
1560 let y=n(x)
1570 let z=x
1580 next x
1590 return
1600 rem box-find
1601 rem this subroutine finds the move for a box that will
1602 rem most restrict the opponent's l in terms of moves possible.
1610 for x=1 to 4
1620 let b(o(x))=0
1630 next x
1640 gosub 1420
1650 let f1=2
1660 let n1=z
1670 gosub 1800
1680 gosub 1370
1690 for x=1 to m1
1700 let n(m(x))=n(m(x))+1
1710 next x
1720 for x=1 to 4
1730 let n(o(x))=0
1740 next x
1750 let n1=64
1760 gosub 1500
1770 let b3=z
1780 return
1790 rem l-find
1791 rem this subroutine calculates all possible moves for an l given all
1792 rem empty positions in n(x).  if f1=1, the current position of the
1793 rem computer's l is omitted.  otherwise, the current position of the
1794 rem opponent's l is omitted.  moves are returned in m(x), and
1795 rem m1 is the length of m(x).  (m1 = number of moves * 4)
1800 let m1=0
1810 let j=4
1820 let k=1
1830 gosub 1880
1840 let j=1
1850 let k=4
1860 gosub 1880
1870 return
1880 let p=0
1890 let p=p+1
1900 let a(1)=n(p)
1910 let x=p
1920 let x=x+1
1930 if x>n1 then 2050
1940 if n(x)-a(1)<>j then 1920
1950 let a(2)=n(x)
1960 let x=x+1
1970 if x>n1 then 2050
1980 if n(x)-a(2)<>j then 1960
1990 let a(3)=n(x)
2000 for e=1 to n1
2010 if abs(n(e)-a(1))=k then 2060
2020 if abs(n(e)-a(3))=k then 2060
2030 next e
2040 goto 1890
2050 if p<n1-2 then 1890
2055 return
2060 let a(4)=n(e)
2070 for f=1 to 4
2080 if a(f)/4<>int(a(f)/4) then 2130
2090 for g=1 to 4
2110 if a(g)=a(f)+1 then 2030
2120 next g
2130 next f
2140 for y=1 to 4
2150 if f1=1 then 2190
2160 if a(y)<>o(y) then 2210
2170 next y
2180 goto 2030
2190 if a(y)<>c(y) then 2210
2200 goto 2170
2210 for y=1 to 4
2220 let m(m1+y)=a(y)
2230 next y
2240 let m1=m1+4
2250 goto 2030
2260 rem board printout subroutine
2270 print
2275 if f2=1 then 2530
2280 for e=1 to 13 step 4
2290 for f=1 to 3
2300 for g=e to e+3
2310 on b(g)+1 goto 2320,2410,2430,2450
2320 if f=2 then 2350
2330 print "====";
2340 goto 2490
2350 print ":";
2360 if g>9 then 2390
2370 print " ";chr$(48+g);":";
2380 goto 2490
2390 print "1";chr$(38+g);":";
2400 goto 2490
2410 print "oooo";
2420 goto 2490
2430 print "////";
2440 goto 2490
2450 if f=2 then 2480
2460 print "****";
2470 goto 2490
2480 print "*  *";
2490 next g
2500 print
2510 next f
2520 next e
2530 print
2540 return
3000 rem instructions
3010 print
3020 print "     l-game is a simple strategic game played on a 4x4"
3030 print "grid by two opposing players, in this case between you"
3040 print "and the computer.  the grid is numbered as follows:"
3050 let f2=0
3060 for x=1 to 16
3070 let b(x)=0
3080 next x
3090 gosub 2270
3100 print "    the game is played with four pieces; both"
3110 print "you and the computer have one 'l', and there are"
3120 print "two 'boxes' which are used by both players."
3130 print "play always begins with the pieces on the board"
3140 print "in the following position:"
3150 gosub 100
3160 gosub 2270
3165 print "(computer is /, you are o)"
3166 print
3170 print "     the object of the game is to position your own"
3180 print "l and the' boxes to prevent the computer from moving"
3190 print "its l.  of course, it is trying to do the same to you!"
3200 print "to move, you must simply enter the four coordinates"
3210 print "where you want to place your l.  it must remain on the"
3220 print "board and must not cover any other pieces.  you must"
3230 print "move your l!  if you cannot find a new position"
3240 print "for your l, then the computer has effectively pinned your"
3250 print "l and it wins the game."
3260 print "assuming you have successfully moved your l, you now"
3270 print "have the option of moving the boxes.  you may move one,"
3280 print "two, or none of the boxes by simply entering the coordinates"
3290 print "where you want to put them.  to leave a box where it is,"
3300 print "enter its present position."
3310 print "after you move the boxes, it is up to the computer"
3320 print "to find a move for its l and play continues in the same"
3330 print "manner.  remember that you must not only try to pin the"
3340 print "computer's l but also keep your own l from being pinned."
3350 print "also, it is easier to play the game with your own board"
3360 print "than the computer printout.  to resign, enter 0,0,0,0"
3370 print "in place of your move.  good luck!"
3380 print
3450 goto 40
4000 end
