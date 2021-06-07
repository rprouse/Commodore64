5 print tab(24);"bridge-it"
10 print tab(20);"creative computing"
20 print tab(18);"morristown, new jersey"
30 i=i-2
42 print
50 print
70 print"do you want instructions";
80 input b4$
90 print
100 if left$(b4$,1)="n" then 300
120 print"the object of this game is for you to go from the left "
130 print"column to the right column by connecting the o's. the com-"
140 print"puter must go from the top to the bottom by connecting"
145 print"the x's."
150 print
160 print"you make your moves by typing in the coordinates (x,y) or"
170 print"(column,row)"
171 print"of the 'o' you wish to move from after the computer"
172 print" types:"
180 print
190 print"your move from?"
200 print
210 print"and by typing in the coordinates of the'o' you wish to move"
220 print"to after the computer types:"
230 print
240 print"to?"
250 print
260 print"you can move either vertically or horizontally,"
270 print"but not diagonally.  you cannot move vertically in either"
280 print"the first column or the thirteenth column. the computer will"
281 print"move first."
290 print:print
300 dim x(20,20)
320 dimo(20,20)
330 dimt(20,20)
340 for x=1 to 13 step 2
350 for y=2 to 12 step2
360 o(x,y)=1
370 x(y,x)=1
380 next y
390 next x
400 goto480
410 print
420 print"board (yes or no)";
430 inputb$
440 print
450 if left$(b$,1)="n" then 490
480 gosub 990:rem print board subroutine
490 if e<>5 then 510
500 goto 3010
510 gosub1640:rem computer move
520 gosub 640:rem computer win subroutine
530 print
540 if e=5 then 420
550 gosub2710:rem player win subroutine
560 print
570 print"your move from";
580 input f,g
590 print"to";
600 input f1,g1
610 print
620 gosub 2220:rem error and change board subroutine
630 goto 420
640 rem win subroutine ************************************************
650 rem first test
660 for h=1 to 11 step 2
670 j=12
680 if o(h,j)=3 then 710
690 next h
700 goto 980
710 for i=1 to 11 step 2
720 j=2
730 if o(i,j)=3 then 760
740 next i
750 goto 980
760 rem other tests
770 j=j+2
780 if j=12 then 960
790 if o(i,j)=3 then 870
800 if o(i+1,j+1)=2 then 890
810 if i-1<0 then 840
820 if o(i-1,j-1)=2 then 920
830 if x(i+1,j+1)=2 then 890
840 if i-1<0 then980
850 if x(i-1,j-1) then 890
860 goto 740
870 j=j+2
880 goto 780
890 j=j
900 i=i+2
910 goto 780
920 j=j
950 goto 980
960 print"i win'!!!!"
970 e=5
980 return
990 rem print board subroutine ****************************************
1000 r=r+1
1010 if r>1 then 1150
1020 print"tear on line"
1030 print"---------------------------"
1040 print"you may use this board to mark the moves on, or"
1050 print"you can get an updated board after you make each move."
1060 print
1070 print
1080 print
1090 print
1100 print
1110 print
1120 print tab(5);chr$(7);chr$(13);tab(5);chr$(7)
1130 print
1140 print
1150 d=0
1160 print tab(13)"1111"
1170 print tab(4)"1234567890123"
1180 for y=13 to 1 step -1
1190 if y<10 then 1220
1200 print y;
1210 goto 1230
1220 print" "y;
1230 for x=1 to 13 step1
1240 if y/2=int(y/2) then 1330
1250 if x(x,y)=0 then 1420
1260 onx(x,y) goto 1270,1290,1310
1270 print"x ";
1280 goto 1450
1290 print"x-";
1300 goto 1450
1310 print"x!";
1320 goto 1450
1330 d=0
1340 if o(x,y)=0 then 1450
1350 on o(x,y) goto 1360,1380,1400
1360 print "o ";
1370 goto 1450
1380 print"o-";
1390 goto 1450
1400 print"o!";
1410 goto 1450
1420 d=d+1
1430 ifd>1 then 1450
1440 print " ";
1450 next x
1460 gosub 1620
1470 next y
1480 print tab(4)"1234567891111"
1490 print tab(13)"0123"
1500 r1=r1+1
1510 if r1>1 then 1590
1520 print
1530 print
1540 print"---------------------------------"
1550 print"tear on line"
1560 print
1570 print
1580 print
1590 print
1600 print
1610 return
1620 print
1630 return
1640 rem computer move subroutine *************************************
1650 b=b+1
1660 if b>1 then 1710
1670 o(1,2)=3
1680 print "i move from 2,1 to 2,3"
1690 b1=b1+1
1700 if b1>1 then 1890
1710 for c=3 to 11 step 2
1720 t(c,c+1)=1
1730 t(c-2,c+1)=1
1740 goto 1790
1750 next c
1760 t(2,3)=3
1770 t(7,12)=2
1780 goto 1890
1790 for q=c+3 to 12 step 2
1800 t(c-2,q)=2
1810 t(c-1,q+1)=2
1820 t(c-1,q-1)=2
1830 next q
1840 for s=c to 3 step -2
1850 t(c-1,s)=3
1860 t(c,s-1)=3
1870 next s
1880 goto 1750
1890 if f>f1 then 1950
1900 if f<>f1 then 1920
1910 if g>g1 then 1950
1920 x=f
1930 y=g
1940 goto 1970
1950 x=f1
1960 y=g1
1970 if t(x,y)=0 then 2210
1980 if f<>f1 then 2000
1990 on t(x-1,y+1) goto 2010,2080,2150
2000 on t(x,y) goto 2010,2080,2150
2010 if x=y-1 then 2050
2020 o(x+2,y)=3
2030 print"i move from ";x+3;",";y-1;"to ";x+3;",";y+1
2040 goto 2210
2050 o(x-2,y)=3
2060 print"i move from ";x-1;",";y-1;"to ";x-1;",";y+1
2070 goto 2210
2080 if x(x-1,y+1)=3 then 2120
2090 x(x+1,y-1)=2
2100 print"i move from ";x+1;",";y-1;"to ";x+3;",";y-1
2110 goto2210
2120 o(x-2,y+2)=3
2130 print"i move from ";x-1",";y+1;"to ";x-1;",";y+3
2140 goto 2210
2150 if x(x-1,y+1)=3 then 2190
2160 x(x-1,y+1)=2
2170 print"i move from ";x-1;",";y+1;"to ";x+1;",";y+1
2180 goto 2210
2190 o(x,y)=3
2200 print"i move from ";x+1;",";y-1;"to ";x+1",";y+1
2210 return
2220 rem error and change board subroutine*****************************
2230 if f<>f1 then 2280
2240 if f=1 then 2630
2250 if f=13 then 2630
2260 if f1=13 then 2630
2270 if g=g1 then 2630
2280 if f/2=int(f/2) then 2630
2290 if f>13 then 2630
2300 if g>12 then 2630
2310 if g/2<> int(g/2) then 2630
2320 if f<>int(f) then 2630
2330 if f<1 then 2630
2340 if g<1 then 2630
2350 if f1/2=int(f1/2) then 2630
2360 if f1>13 then 2630
2370 if g1>12 then 2630
2380 if g1/2 <>int(g1/2) then 2630
2390 if f1<>int(f1) then 2630
2400 if g1<1 then 2630
2410 if f=f1 then 2530
2420 if g<>g1 then 2630
2430 if abs(f-f1)<>2 then 2630:rem print error
2440 if f>f1 then 2490
2450 if o(f,g)=2 then 2630
2460 if o(f,g)=3 then 2630
2470 o(f,g)=2
2480 goto 2700:rem return
2490 if o(f1,g1)=2 then 2630
2500 if o(f1,g1)=3 then 2630
2510 o(f1,g1)=2
2520 goto 2700: rem return
2530 if abs(g-g1)<>2 then 2530:rem print error
2540 if g>g1 then 2590
2550 if x(f-1,g+1)=2 then 2630
2560 if x(f-1,g+1)=3 then 2630
2570 x(f-1,g+1)=3
2580 goto 2700:rem return
2590 if x(f1-1,g1+1)=2 then 2630
2600 if x(f1-1,g1+1)=3 then 2630
2610 x(f1-1,g1+1)=3
2620 goto 2700:rem return
2630 print"invalid move -- try again"
2640 print
2650 print"your move from";
2660 input f,g
2670 print"to";
2680 input f1,g1
2690 goto 2220
2700 return
2710 rem player win routine *******************************************
2720 for h=1 to11 step 2
2730 i=12
2740 if x(i,h)=3 then 2770
2750 next h
2760 goto 3000
2770 for  j=1 to 11 step 2
2780 i=2
2790 if x(i,j)=3 then 2820
2800 next j
2810 goto 3000
2820 i=i+2
2830 if i=12 then 2970
2840 if x(i,j)=3 then 2910
2850 if x(i+1,j+1)=2 then 2930
2860 if j-1<0 then 2890
2870 if x(i-1,j-1)=2 then 2950
2880 ifo(i+1,j+1)=2 then 2930
2890 if j-1<0 then 3000
2900 goto 2808
2910 i=i+2
2920 goto 2830
2930 j=j+2
2940 goto 2830
2950 j=j-2
2960 goto 2830
2970 if o(1,2)<>2 then 3000
2980 print"you win !!! congratulations!!!"
2990 e=5
3000 return
3010 end

