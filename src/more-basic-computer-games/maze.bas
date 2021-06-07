10 print tab(27);"maze"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
100 rem  mouse in maze - solution section by richard schaal fmcc
110 rem  original maze program from "101 basic computer games"
120 print "do you need instructions";:input a$
130 if left$(a$,1)="y" then 150
140 goto 200
150 print:print:print "this program will simulate a near-sighted mouse in"
160 print "a maze.  you select the difficulty factor -size!"
170 print "you may have a maze of any size permitted by the size of your"
180 print "system. dimensions less than 5 are too trivial."
190 print "each maze is different, and has only one way through it."
200 print
210 print "what are your dimensions (horizontal, vertical)";
220 clear 100: rem erase all arrays and variable values
230 input h,v
240 h=int(abs(h)):v=int(abs(v))
250 if h>=5 and v>=5 then 270
260 goto 150
270 dim w(h,v),v(h,v)
280 print:print
290 q=0:z=0
300 x=int(rnd(1)*h+1)
310 for i=1 to h
320 if i=x then 350
330 print ":--";
340 goto 360
350 print ":  ";
360 next i
370 print ":"
380 c=1:w(x,1)=c:c=c+1:r=x:s=1
390 goto 470
400 if r<>h then 450
410 if s<>v then 440
420 r=1:s=1
430 goto 460
440 r=1:s=s+1:goto 460
450 r=r+1
460 if w(r,s)=0 then 400
470 if r=1 then 830
480 if w(r-1,s)>0 then 830
490 if s=1 then 640
500 if w(r,s-1)<>0 then 640
510 if r=h then 550
520 if w(r+1,s)>0 then 550
530 x=int(rnd(1)*3+1)
540 on x goto 1200,1240,1280
550 if s<>v then 590
560 if z=1 then 620
570 q=1
580 goto 600
590 if w(r,s+1)>0 then 620
600 x=int(rnd(1)*3+1)
610 on x goto 1200,1240,1370
620 x=int(rnd(1)*2+1)
630 on x goto 1200,1240
640 if r=h then 750
650 if w(r+1,s)>0 then 750
660 if s<>v then 700
670 if z=1 then 730
680 q=1
690 goto 710
700 if w(r,s+1)>0 then 730
710 x=int(rnd(1)*3+1)
720 on x goto 1200,1280,1370
730 x=int(rnd(1)*2+1)
740 on x goto 1200,1280
750 if s<>v then 790
760 if z=1 then 820
770 q=1
780 goto 800
790 if w(r,s+1)>0 then 820
800 x=int(rnd(1)*2+1)
810 on x goto 1200,1370
820 goto 1200
830 if s=1 then 1040
840 if w(r,s-1)>0 then 1040
850 if r=h then 960
860 if w(r+1,s)>0 then 960
870 if s<>v then 910
880 if z=1 then 940
890 q=1
900 goto 920
910 if w(r,s+1)>0 then 940
920 x=int(rnd(1)*3+1)
930 on x goto 1240,1280,1370
940 x=int(rnd(1)*2+1)
950 on x goto 1240,1280
960 if s<>v then 1000
970 if z=1 then 1030
980 q=1
990 goto 1010
1000 if w(r,s+1)>0 then 1030
1010 x=int(rnd(1)*2+1)
1020 on x goto 1240,1370
1030 goto 1240
1040 if r=h then 1140
1050 if w(r+1,s)>0 then 1140
1060 if s<>v then 1100
1070 if z=1 then 1130
1080 q=1
1090 goto 1110
1100 if w(r,s+1)>0 then 1130
1110 x=int(rnd(1)*2+1)
1120 on x goto 1280,1370
1130 goto 1280
1140 if s<>v then 1180
1150 if z=1 then 400
1160 q=1
1170 goto 1190
1180 if w(r,s+1)>0 then 400
1190 goto 1370
1200 w(r-1,s)=c:c=c+1:v(r-1,s)=2:r=r-1
1210 if c=h*v+1 then 1510
1220 q=0
1230 goto 470
1240 w(r,s-1)=c:c=c+1:v(r,s-1)=1:s=s-1
1250 if c=h*v+1 then 1510
1260 q=0
1270 goto 470
1280 w(r+1,s)=c:c=c+1
1290 if v(r,s)=0 then 1320
1300 v(r,s)=3
1310 goto 1330
1320 v(r,s)=2
1330 r=r+1
1340 if c=h*v+1 then 1510
1350 q=0
1360 goto 830
1370 if q=1 then 1470
1380 w(r,s+1)=c
1390 c=c+1
1400 if v(r,s)=0 then 1430
1410 v(r,s)=3
1420 goto 1440
1430 v(r,s)=1
1440 s=s+1
1450 if c=h*v+1 then 1510
1460 goto 470
1470 z=1
1480 if v(r,s)=0 then 1500
1490 v(r,s)=3:q=0:goto 400
1500 v(r,s)=1:q=0:r=1:s=1:goto 460
1510 if z=1 then 1540
1520 r=int(rnd(1)*h)+1:s=v
1530 v(r,s)=v(r,s)+1
1540 gosub 2320
1550 print "do you want the solution";:input a$
1560 if left$(a$,1)<>"y" then 2620
1570 print "do you want to see each step";:input a$:print:print
1580 for i=1 to h:if w(i,1)=1 then s=i:goto 1720
1590 next i
1600 rem now we can clear w array as entry point is found.
1610 rem elements in v are either 0,1,2 or 3
1620 rem 0 is closed on the right and at the bottom
1630 rem 1 is closed on the right
1640 rem 2 is closed on the bottom
1650 rem 3 is open on the right and at the bottom
1660 rem directions will be coded:
1670 rem  1 : up
1680 rem  2 : down
1690 rem  4 : right
1700 rem  8 : left
1710 rem scan v array for possible moves in all directions
1720 for i=1 to h:for j=1 to v
1730 w(i,j)=0
1740 rem try up
1750 if j=1 then 1780
1760 if v(i,j-1)=1 or v(i,j-1)=3 then w(i,j)=w(i,j)+1
1770 rem try down
1780 if j=v then 1810
1790 if v(i,j)=1 or v(i,j)=3 then w(i,j)=w(i,j)+2
1800 rem try right
1810 if i=h then 1840
1820 if v(i,j)=2 or v(i,j)=3 then w(i,j)=w(i,j)+4
1830 rem try left
1840 if i=1 then 1860
1850 if v(i-1,j)=2 or v(i-1,j)=3 then w(i,j)=w(i,j)+8
1860 next j
1870 next i
1880 for i=1 to h
1890 if v(i,v)=1 or v(i,v)=3 then w(i,v)=w(i,v)+2:e=i:goto 1920
1900 next i
1910 rem have to go down first
1920 y=1:x=s
1930 v(x,y)=v(x,y)+4
1940 rem check for possible directions now...
1950 if y=v and x=e then print:gosub 2250:print:print:goto 2620
1960 gosub 2230
1970 rem check possible directions
1980 if (w(x,y) and 2) <> 0 then 2030
1990 if (w(x,y) and 4) <> 0 then 2080
2000 if (w(x,y) and 8) <> 0 then 2130
2010 if (w(x,y) and 1) <> 0 then 2180
2020 goto 1950
2030 if (v(x,y+1)>3) and ((w(x,y) and 13)=0) then 2060
2040 if v(x,y+1)>3 then 1990
2050 y=y+1:v(x,y)=v(x,y)+4:goto 1950
2060 v(x,y)=v(x,y)-4:w(x,y)=(w(x,y) and 13):y=y+1:w(x,y)=(w(x,y) and 14)
2070 goto 1950
2080 if (v(x+1,y)>3) and ((w(x,y) and 11)=0) then 2110
2090 if v(x+1,y)>3 then 2000
2100 x=x+1:v(x,y)=v(x,y)+4:goto 1950
2110 v(x,y)=v(x,y)-4:w(x,y)=(w(x,y) and 11):x=x+1:w(x,y)=(w(x,y) and 7)
2120 goto 1950
2130 if (v(x-1,y)>3) and ((w(x,y) and 7)=0) then 2160
2140 if v(x-1,y)>3 then 2010
2150 x=x-1:v(x,y)=v(x,y)+4:goto 1950
2160 v(x,y)=v(x,y)-4:w(x,y)=(w(x,y) and 7):x=x-1:w(x,y)=(w(x,y) and 11)
2170 goto 1950
2180 if (v(x,y-1)>3) and ((w(x,y) and 14)=0) then 2210
2190 if v(x,y-1)>3 then 1980
2200 y=y-1:v(x,y)=v(x,y)+4:goto 1950
2210 v(x,y)=v(x,y)-4:w(x,y)=(w(x,y) and 14):y=y-1:w(x,y)=(w(x,y) and 13)
2220 goto 1950
2230 if left$(a$,1)<>"y" then return
2240 print
2250 for i=1 to h
2260 if i=s then 2290
2270 print ":--";
2280 goto 2300
2290 print ":**";
2300 next i
2310 print ":"
2320 for j=1 to v
2330 print "i";
2340 for i=1 to h
2350 if v(i,j)>3 then z=v(i,j)-4:goto 2370
2360 z=v(i,j)
2370 if z<2 then 2420
2380 if z<>v(i,j) and v(i+1,j)>3 then print "***";:goto 2440
2390 if z<>v(i,j) then print "** ";:goto 2440
2400 print "   ";
2410 goto 2440
2420 if z<>v(i,j) then print "**i";:goto 2440
2430 print "  i";
2440 next i
2450 print
2460 for i=1 to h
2470 if v(i,j)>3 then z=v(i,j)-4:goto 2490
2480 z=v(i,j)
2490 if z=0 then 2560
2500 if z=2 then 2560
2510 if z<>v(i,j) and j=v then print ":**";:goto 2570
2520 if j=v then 2540
2530 if z<>v(i,j) and v(i,j+1)>3 then print ":**";:goto 2570
2540 print ":  ";
2550 goto 2570
2560 print ":--";
2570 next i
2580 print ":"
2590 next j
2600 print:print
2610 return
2620 print:print:print "do you want another maze";:input a$
2630 if left$(a$,1)="y" then print : goto 210
2640 print:end
