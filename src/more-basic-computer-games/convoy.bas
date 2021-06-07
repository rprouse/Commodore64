80 print tab(33)"convoy"
90 print tab(15)"creative computing, morristown, new jersey"
100 print "instructions";
110 input b$
120 if b$="no" then 300
130 print "this naval war game is played on a 10 by 10 matrix"
140 print"you are the sub; the computer is a cargo ship and its two"
145 print"destroyers. the ship starts in square 100 and randomly moves"
150 print"to square 1, moving 0,1,2,or 3 squares at a time."
155 print"one of the ship's destroyers starts at square 78 and moves"
160 print"randomly 0,1,2 or 3 squares at a time searching for the sub."
165 print"the other destroyer stays within one square of the ship as"
166 print"an escort.  the sub starts in square 12, can move up,down, "
167 print"left or right 1 square at a time, 2 moves per turn,and it "
190 print"has torpedoes which it can fire 1 at a time in any straight"
200 print"line. after each sub move, the periscope will search"
210 print"each adjacent square- for the ship. also random reconnaisance"
220 print"reports will be made. the sequence of play is:"
230 print
240 print"1 ship and destroyers move"
245 print"2 your move"
250 print"3 you can fire a torpedo"
270 print"4 periscope search"
275 print"5 your move again"
280 print" and back to 1"
281 print
283 print" the sub wins if it succeeds in hitting the ship within 4 "
285 print"torpedoes without moving to a square occupied by a destroyer."
286 print
287 print"to 'fire?' answer:no,l,r,u,d,lu,ld,ru,or,rd."
288 print"'l'=left,'r'=right,'u'=up,'d'=down,'lu'=left up,'ru'=right "
289 print"up,or 'rd'=rightdown"
290 print
300 print"will you need a board";
310 input b$
320 if b$="no" then 420
330 print
340 print
350 print"  1   2   3   4   5   6   7   8   9  10"
360 for i=1 to9
370 for j=1 to 10
380 printi*10+j;
390 next j
400 print
410 next i
420 print:print
440 d=12
450 t=4
460 s=100
470 c=78
480 c2=78
490 l=100
500 if c=-100 then 550
510 goto 2780
520 y3=0
530 m1=0
540 goto580
550 m1=0
560 if s=2 then 1230
570 y3=1
580 if s=3 then 1230
590 if s=11 then 1230
600 if s=12 then 1230
610 if s=21 then 1230
620 x=rnd(1)
630 if x>.4 then 690
640 if x>.2 then 710
650 if x>.05 then 670
660 goto 1020
670 s1=0
680 goto 720
690 s1=2
700 goto 720
710 s1=1
720 x=rnd(1)
730 if x<.75 then 760
740 p1=1
750 goto 830
760 p1=-1
770 goto 830
780 if s=10*int(s/10) then 820
790 goto 860
800 if s=1+(10*int(s/10)) then 820
810 goto 860
820 p1=p1*(-1)
830 m2=p1*((int(2*(rnd(1)))*9)+1)
840 if m2=1 then 780
850 if m2=-1 then 800
860 if m1=m2*(-1) then 820
870 c1=s+m2
880 if c1=1 then 1230
890 if c1=d then 2720
900 if c1=c then 820
910 if c1<1 then 820
920 if c1>100 then 820
930 m1=m2
940 s=c1
950 c6=s+((int(2*rnd(1))*(-2))+1)*((int(2*rnd(1))*9)+1)
960 if c6<2 then 950
970 if c6>100 then 950
980 if c6= d then 2700
990 if s1=1 then 670
1000 if s1=2 then 710
1010 c3=0
1020 print"ship moved"
1030 if y3=0 then 1060
1040 x1=0
1050 goto 2340
1060 print
1070 x1=1
1080 print"sub at";d
1090 print"ship last seen at";l
1100 print"fire";
1110 input a$
1120 if a$="no" then 1730
1130 if a$="l" then 1250
1140 if a$="r" then 1270
1150 if a$="u" then 1290
1160 if a$="d" then 1310
1180 if a$="lu" then 1330
1185 if a$="ld" then 1350
1190 if a$="ru" then 1370
1200 if a$="rd" then 1390
1210 print"ans: no,l,r,u,d,lu,ld,ru,or,rd"
1220 goto 1100
1230 print"ship's in port"
1240 goto 2750
1250 p1=-1
1260 goto 1400
1270 p1=1
1280 goto 1400
1290 p1=-10
1300 goto 1400
1310 p1=10
1320 goto 1400
1330 p1=-11
1340 goto 1400
1350 p1=9
1360 goto 1400
1370 p1=-9
1380 goto 1400
1390 p1=11
1400 d1=d
1410 d1=d1+p1
1420 print d1;
1430 if d1=s then1500
1440 if d1=c then 1520
1450 if dk11 then 1600
1460 if d1>90 then 1640
1470 if d1=10*int(d1/10) then 1560
1480 if d1=1+(10*int(d1/10)) then 1580
1490 goto 1410
1500 print"ker-boom! cargo ship destroyed!"
1502 print"you win"
1504 q=1
1510 goto 2750
1520 print"whamoh, destroyer sunk."
1530 c=-100
1540 t=t-1
1550 goto 1710
1560 if d=10*int(d/10) then 1410
1570 goto 1680
1580 if d=1+(10*int(d/10)) then 1410
1590 goto 1680
1600 if d>10 then 1680
1610 if d1<2 then 1680
1620 if d1>9 then 1680
1630 goto 1410
1640 if d<91 then 1680
1650 if d1<92 then 1680
1660 if d1>99 then 1680
1670 goto 1410
1680 t=t-1
1690 print"miss"
1700 if t=0 then 2740
1710 print t;"torpedoes left"
1720 goto 1100
1730 print
1740 y=0
1750 print"up periscope"
1760 y2=0
1770 if s=d then 1930
1780 if s=d-1 then 1930
1790 if s=d+1 then 1930
1800 if s=d-10 then 1930
1810 if s=d+10 then 1930
1820 if s=d-9 then 1930
1830 if s=d+9 then 1930
1840 if s=d-11 then 1930
1850 if s=d+11 then 1930
1860 if y=1 then 1960
1870 print"ship not in sight"
1880 x=rnd(1)
1890 if x<.35 then 1960
1900 print
1910 print"recon. shows ";
1920 y2=-1
1930 print"ship at ";s
1940 y2=y2+1
1950 l=s
1960 if c=d then 2280
1970 if c6=d then 2700
1980 if c=d+1 then 2260
1990 if c6=d+1 then 2240
2000 if c=d-1 then 2260
2010 if c6=d-1 then 2240
2020 if c=d+9 then 2260
2030 if c6=d+9 then 2240
2040 if c=d-9 then 2260
2050 if c6=d-9 then 2240
2060 if c=d+10 then 2260
2070 if c6=d+10 then 2240
2080 if c=d-10 then 2260
2090 if c6=d-10 then 2240
2100 if c=d+11 then 2260
2110 if c6=d+11 then 2240
2120 if c=d-11 then 2260
2130 if c6=d-11 then 2240
2140 if c=d+2 then 2260
2150 if c=d-2 then 2260
2160 if c=d+20 then 2260
2170 if c=d-20 then 2260
2180 if c=-100 then 2320
2190 if y=1 then 2330
2200 x=rnd(1)
2210 if x<.6 then 2320
2220 print"recon. plane spots tin can at";c
2230 goto 2300
2240 print"escort very near!"
2250 goto 2320
2260 print"destroyer closing in at";c
2270 goto 2300
2280 print"destroyer directly over head"
2290 goto 2660
2300 c2=c
2310 c3=1
2320 if y=0 then 2340
2330 return
2340 print
2350 print"sub is now at ";d
2360 if c3=1 then 2390
2370 if c=-100 then 2390
2380 print"destroyer last sighted at ";c2
2390 d2=0
2400 print"sub's move";
2410 y=1
2420 input x
2430 if x=d then 2560
2440 if x<2 then 2640
2450 if x>100 then 2640
2460 if x=int(x) then 2480
2470 goto 2640
2480 if x=d+1 then 2530
2490 if x=d-1 then 2550
2500 if x=d+10 then 2560
2510 if x=d-10 then 2560
2520 goto 2640
2530 if d=10*int(d/10) then 2640
2540 goto 2560
2550 if x=10*int(x/10)  then  2640
2560 d=x
2570 gosub 1760
2580 if d2=1 then 2610
2590 d2=1
2600 goto 2400
2610 if x1=0 then 3060
2620 if c=-100 then 550
2630 goto 2780
2640 print"can't do"
2650 goto 2400
2660 x=rnd(1)
2670 if x<.8 then 2700
2680 print"depth charge just missed!"
2690 goto 2300
2700 print"varoom!!sub depth charged!"
2710 goto 2750
2720 print"ship now overhead"
2730 goto 550
2740 print"ammo depleted"
2750 print
2751 if q=0 then 2754
2752 q1=q1+1
2753 goto 2755
2754 q2=q2+1
2755 print"score: computer";q2;"-   sub";q1
2756 print
2757 q=0
2760 print"    new    game";
2761 input n$
2762 if n$="no" then 3080
2770 goto 420
2780 m1=0
2790 s1=0
2800 x=rnd(1)
2810 if x<.6 then 2840
2820 p1=1
2830 goto 2850
2840 p1=-1
2850 m2=(p1*((int(2*rnd(1)))*9)+1)
2860 if m2=1 then 3000
2870 if m2=-1 then 3020
2880 if m1=m2*(-1) then 3040
2890 c1=c+m2
2900 if c1=d then 2700
2910 if c1=s then 3040
2920 if c1<2 then 3040
2930 if c1>100 then 3040
2940 m1=m2
2950 c=c1
2960 if s1=1 then 550
2970 s1=1
2980 print"destroyer has moved"
2990 goto 2800
3000 if c=10*int(c/10) then 3040
3010 goto 2880
3020 if c=1+(10*int(c/10)) then 3040
3030 goto 2880
3040 p1=p1*(-1)
3050 goto 2850
3060 if y2=0 then 1060
3070 goto 520
3080 end
