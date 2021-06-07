10 print tab(24);"dodgem"
20 print tab(18);"creative computing"
30 print tab(16);"morristown  new jersey"
40 print:print:print
240 print "do you want instructions for dodgem";
250 input a$
260 gosub 2950
270 if left$(a$,1) <> "y" then 290
280 gosub 3130
290 print "board size (3-6)";
300 input a
310 let a=int(a)
320 if (6-a)*(a-3) >= 0 then 340
330 goto 290
340 let p(1,0)=a-1:let p(2,0)=a-1
380 for j=1 to a-1
390 let p(1,j)=10*j+1
400 next j
420 for j=1 to a-1
430 let p(2,j)=10*a+j+1
440 next j
460 let f=1
470 let m$(1)="nes"
480 let m$(2)="ne w"
490 let c$(1)="digits"
500 let  c$(2)="letters"
510 let a$(1)="1234567"
520 let a$(2)="abcdefg"
560 for j=1 to a
570 if j=a then 630
580 let d$(j,1)=chr$(48+j)
590 for k=2 to a
600 let d$(j,k)="."
610 next k
620 goto 670
630 let d$(j,1)="."
640 for k=2 to a
650 let d$(j,k)=chr$(63+k)
660 next k
670 next j
690 print "how many players (1 or 2)";
700 input b
710 if b=2 then 800
720 if b=1 then 740
730 goto 690
740 print "ok, the computer will move the digits."
750 print "who moves first (1=computer, 2=you)";
760 input f
770 if (2-f)*(1-f)=0 then 800
780 print "please type 1 or 2. now,";
790 goto 750
800 print
810 print "here we go..."
840 print
850 for j=1 to a
860 for k=1 to a
870 print "  ";d$(j,k);
880 next k
890 print
900 next j
910 print
950 for j=f to 3-f step 3-2*f
960 rem
980 for j1=1 to a-1
990 let r=int(p(j,j1)/10)
1000 let c=p(j,j1)-10*r
1020 on j goto 1040,1100
1040 if c=a then 1080
1050 if c > a then 1070
1060 goto 1160
1070 goto 1250
1080 goto 1300
1100 if r=1 then 1140
1110 if r=0 then 1130
1120 goto 1160
1130 goto 1250
1140 goto 1300
1160 rem
1165 if d$(r-1,c)="." then 1240
1170 if d$(r,c+1)="." then 1240
1180 if j=2 then 1220
1190 if d$(r+1,c)="." then 1210
1200 goto 1250
1210 goto 1300
1220 if d$(r,c-1)="." then 1240
1230 goto 1250
1240 goto 1300
1245 print "bbs--1245",j1
1250 next j1
1260 print "the ";c$(3-j);" have no legal moves for the ";c$(j);"!"
1270 print "the ";c$(j);" win!!!"
1280 stop
1300 if b=2 then 1750
1310 if j=2 then 1750
1340 let l1=2
1350 for l0=1 to 3
1370 on l0 goto 1450,1380,1430
1380 if rnd(1) < .5 then 1410
1390 let l1=1
1400 goto 1450
1410 let l1=3
1420 goto 1450
1430 let l1=4-l1
1450 let p1=int(rnd(1)*a)
1460 for l2=1 to a-1
1470 let p1=p1+1
1480 if p1 <= a-1 then 1500
1490 let p1=p1-(a-1)
1500 let r=int(p(j,p1)/10)
1510 let c=p(j,p1)-10*r
1520 if c > a then 1720
1540 on l1 goto 1570,1620,1690
1570 if d$(r-1,c)="." then 1590
1580 goto 1720
1590 goto 2090
1620 if d$(r,c+1)="." then 1660
1630 if c=a then 1650
1640 goto 1720
1650 let p(j,0)=p(j,0)-1
1660 goto 2160
1690 if d$(r+1,c)="." then 1710
1700 goto 1720
1710 goto 2230
1720 next l2
1730 next l0
1740 goto 1260
1750 print c$(j);" move";
1760 input a$
1770 gosub 2950
1790 if left$(a$,1)="r" then 2860
1800 if left$(a$,1)="h" then 2460
1810 let a$=mid$(a$,1,2)
1811 p1=0
1813 for b0=1 to a-1
1815 if mid$(a$(j),b0,1)=mid$(a$,1,1) then p1=b0
1817 next b0
1830 if p1=0 then 2430
1832 let p2=0
1834 for b0=1 to 4
1836 if mid$(m$(j),b0,1)=mid$(a$,2,1) then p2=b0
1838 next b0
1850 if p2=0 then 2430
1860 let r=int(p(j,p1)/10)
1870 let c=p(j,p1)-10*r
1880 if r=0 then 2430
1890 if c > a then 2430
1910 on j goto 1930,1990
1930 if c < a then 1970
1940 if p2 <> 2 then 1970
1950 let p(1,0)=p(1,0)-1
1960 goto 2160
1970 goto 2040
1990 if r > 1 then 2040
2000 if p2 <> 1 then 2040
2010 let p(2,0)=p(2,0)-1
2020 goto 2090
2040 on p2 goto 2070,2140,2210,2280
2070 if d$(r-1,c)="." then 2090
2080 goto 2430
2090 let d$(r-1,c)=mid$(a$(j),p1,1)
2100 let p(j,p1)=p(j,p1)-10
2110 goto 2330
2140 if d$(r,c+1)="." then 2160
2150 goto 2430
2160 let d$(r,c+1) = mid$(a$(j),p1,1)
2170 let p(j,p1)=p(j,p1)+1
2180 goto 2330
2210 if d$(r+1,c)="." then 2230
2220 goto 2430
2230 let d$(r+1,c)=mid$(a$(j) ,p1,1)
2240 let p(j,p1)=p(j,p1)+10
2250 goto 2330
2280 if d$(r,c-1)="." then 2300
2290 goto 2430
2300 let d$(r,c-1)=mid$(a$(j),p1,1)
2310 let p(j,p1)=p(j,p1)-1
2330 let d$(r,c)="."
2340 if b=2 then 2380
2350 if j=2 then 2380
2360 print "the digits move: ";mid$(a$(j),p1,1);
2365 print mid$(m$(j),l1,1)
2380 if p(j,0) <> 0 then 2420
2390 print
2400 print "*** the ";c$(j);" win!!!"
2410 end
2420 goto 2900
2430 print "illegal move or bad input."
2440 print "input ignored. type h for help."
2450 goto 1750
2460 print "the ";c$(j);" have these legal moves:"
2480 for j3=1 to a-1
2490 let p$=mid$(a$(j),j3,1)
2500 let r=int(p(j,j3)/10)
2510 let c=p(j,j3)-10*r
2530 on j goto 2550,2620
2550 if c=a then 2590
2560 if c > a then 2580
2570 goto 2690
2580 goto 2830
2590 print " ";p$;"e";
2600 goto 2690
2620 if r=1 then 2660
2630 if r=0 then 2650
2640 goto 2690
2650 goto 2830
2660 goto 2700
2690 if d$(r-1,c) <> "." then 2730
2700 print "  ";p$;"n";
2730 if d$(r,c+1) <> "." then 2770
2740 print "  ";p$;"e";
2770 if j=2 then 2810
2780 if d$(r+1,c) <> "." then 2800
2790 print "  ";p$;"s";
2800 goto 2830
2810 if d$(r,c-1) <> "." then 2830
2820 print "  ";p$;"w";
2830 next j3
2840 print
2850 goto 1750
2860 print "the ";c$(j);" give up!!"
2870 print "*** the ";c$(3-j);" win!!!"
2880 end
2900 next j
2910 goto 840
2950 if len(a$)>10 then 3090
2960 let c1=0
2963 for b0=1 to len(a$)
2965 let a(b0)=asc(mid$(a$,b0,1))
2970 next b0
2975 let a(0)=len(a$)
2980 for j2=1 to a(0)
2990 if a(j2)<96 then 3010
3000 let a(j2)=a(j2)-32
3010 if (57-a(j2))*(a(j2)-48) >= 0 then 3040
3020 if (90-a(j2))*(a(j2)-65) >=  0 then 3040
3030 goto 3060
3040 let c1=c1+1
3050 let a(c1)=a(j2)
3060 next j2
3070 let a(0)=c1
3073 let a$=""
3075 for b0=1 to a(0)
3077 let a$=a$+chr$(a(b0))
3080 next b0
3090 return
3130 print
3140 print "here's a sample playing board:"
3150 print
3160 print "1 . . . ."
3170 print "2 . . . ."
3180 print "3 . . . ."
3190 print "4 . . . ."
3200 print ". a b c d"
3210 print
3220 print "two sets of pieces (digits and letters) race at right ang";
3225 print "les"
3230 print "across a square board. vacant locations are shown as peri";
3235 print "ods."
3240 print "you choose the the board size (the one above is size 5.)"
3260 print "  n"
3270 print "  :"
3280 print "w---e"
3290 print "  :"
3300 print "  s"
3310 print
3320 print "the object is to move all of your pieces across the board"
3330 print "and off the opposite edge. digits leave the board only at"
3340 print "the eastern edge; letters only at the northern. the winner"
3350 print "is the player whose pieces have all left the board."
3360 print
3370 print "the players go in turn, moving one of their pieces to an"
3380 print "adjacent locaton which is either off the board of current";
3385 print "ly"
3390 print "vacant. there are no diagonal moves, no jumps and no capt";
3395 print "ures."
3400 print "digits cannot move west, nor letters move south."
3410 print
3420 print "to move a piece, type its name and the first letter of the"
3430 print "desired direction.  examples:"
3440 print "  2e means that piece 2 wants to go east"
3450 print "  bw means that piece b wants to go west."
3460 print
3470 print "note: you forfet the game if your move leaves your opponent"
3480 print "without any legal move."
3490 print
3500 print "lastly, you may type r to resign and h for help."
3510 print
3520 return
3530 end
