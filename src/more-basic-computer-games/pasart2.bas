10 print tab(25);"pasart2"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
50 rem *** this program requires around 16k free work space
60 rem *** to obtain larger pictures, expand the array in line
70 rem *** 110 to p(72,72)
110 dim p(36,36)
130 print "  this program creates artist designs based on"
135 print "pascal's triangle."
140 print "do you want a list of options";
150 input s1$
170 if left$(s1$,1)<>"y" then 630
180 print "please tear off this list and save or post for future reference"
190 print "---------------------------------------------------------------"
200 print "1. a single pascals triangle played back like this:"
210 print "         before printing     after printing"
220 print "              1 1 1              ***"
230 print "              1 2 3              * *"
240 print "              1 3 6              **"
250 print "2. a single pascals triangle played back like this:"
260 print "         before printing     after printing"
270 print "                1                 *"
280 print "                1 1               **"
290 print "                1 2 1             * *"
300 print "3. a single pascals triangle played back like this:"
310 print "         before printing     after printing"
320 print "                1                  *"
330 print "              1 2 1              *   *"
340 print "             1 3 3 1            * * * *"
350 print "4. two pascals triangles printed back to back like this:"
360 print "         before printing     after printing"
370 print "             1 1 1 0             ***"
380 print "             1 2 0 1             *  *"
390 print "             1 0 2 1             *  *"
400 print "             0 1 1 1              ***"
410 print "5. four pascal triangles printed in a square like this:"
420 print "         before printing     after printing"
430 print "            1 1 1 1 1 1        ******"
440 print "            1 2     2 1        *    *"
450 print "            1         1        *    *"
460 print "            1         1        *    *"
470 print "            1 2     2 1        *    *"
480 print "            1 1 1 1 1 1        ******"
490 print "6. four pascals triangles printed in a square like this:"
500 print "         before printing     after printing"
510 print "            1 1 1 1 1 1        ******"
520 print "            1 2 3 3 2 1        * ** *"
530 print "            1 3 6 6 3 1        **  **"
540 print "            1 3 6 6 3 1        **  **"
550 print "            1 2 3 3 2 1        * ** *"
560 print "            1 1 1 1 1 1        ******"
570 print "7. starting pascals triangle in any desired row & column"
580 print "   so that a user can tape together several pictures"
590 print "   to make a larger design.  this option extends"
600 print "   pictures like those shown in option 1 in 36 x 36 character"
610 print "   chunks.  entries up to 1000 rows and columns are accepted."
620 print "---------------------------------------------------------------"
630 print "what's your pleasure (1,2,3,4,5,6 or 7)";
640 input o
650 if o<=7 and o>=1 then 660
655 print "i'm supposed to be your friend, so how about it:":goto 630
660 print "your picture should highlight the multiples of what number";
670 input q
680 print "what character would you like the computer to type representing"
690 print "the multiples of ";q; "(enter '' '' for a blank)";
700 input s$
710 print "what character would you like the computer to type representing"
720 print "each of the other numbers in the pattern (enter '' '' for a blank)";
730 input t$
740 if o=7 then 780
750 print "how many rows and columns in the array (36 is max.)";
760 input t
770 if t>36 then print "be reasonable!":goto 750
780 print "would you like a calendar printed with your picture";
800 input r5$
810 if left$(r5$,1)<>"y" then 850
820 print "what year between 1600 and 2300 would you like";
830 input y9
840 if y9*(3099-y9)<=0 then print "even i make mistakes!":goto 820
850 on o goto 940,2190,2330,1210,1510,1510,2550
920 rem time to create and print a single piece of pasart
930 rem first build the pascals triangle
940 for r=1 to t
950 for c=1 to t
960 if (r-1)*(c-1)=0 then 1010
970 p(r,c)=p(r-1,c)+p(r,c-1)
980 if p(r,c)<q*q*q then 1020
990 p(r,c)=p(r,c)-q*q
1000 goto 980
1010 p(r,c)=1
1020 next c
1030 next r
1040 rem time to play back the triangle with an artistic flare
1050 if o<>3 then 1070
1060 let t=t*2-1
1070 for r=1 to t
1080 for c=1 to t
1090 if p(r,c)=0 then 1130
1100 if(p(r,c)/q-int(p(r,c)/q))*q<.95 then 1130
1110 print t$;
1120 goto 1140
1130 print s$;
1140 next c
1150 print
1160 next r
1170 if left$(r5$,1)="y" then 3260
1180 goto 3710
1190 rem option 4 lines 1210-1490
1200 rem time to create and print a double piece of pasart
1210 z=t
1220 rem build the upper left hand corner of the array
1230 let n=z
1240 for r=1 to n
1250 for c=1 to z-1
1260 if (r-1)*(c-1)=0 then 1310
1270 p(r,c)=p(r-1,c)+p(r,c-1)
1280 if p(r,c)<q*q*q then 1320
1290 p(r,c)=p(r,c)-q*q
1300 goto 1280
1310 p(r,c)=1
1320 next c
1330 z=z-1
1340 next r
1350 rem build the lower right half of the array
1360 z=n
1370 n=2
1380 for r=z to 1 step -1
1390 for c=z to n step -1
1400 if (r-z)*(c-z)=0 then 1450
1410 p(r,c)=p(r,c+1)+p(r+1,c)
1420 if p(r,c)<q*q*q then 1460
1430 p(r,c)=p(r,c)-q*q
1440 goto 1420
1450 p(r,c)=1
1460 next c
1470 n=n+1
1480 next r
1490 goto 1070
1500 rem options 5 and 6 lines 1500-2120
1510 m=q
1520 rem build the upper left corner of the array
1530 y=t
1540 z=int(y/2)
1550 b5=z*2
1560 z1=z
1570 z2=z1
1580 z3=z2
1590 x4=z3
1600 x5=x4
1610 for i=1 to z1
1620 for j=1 to z
1630 if (j-1)*(i-1)=0 then 1680
1640 p(i,j)=p(i,j-1)+p(i-1,j)
1650 if p(i,j)<q*q*q then 1690
1660 p(i,j)=p(i,j)-q*q
1670 goto 1650
1680 p(i,j)=1
1690 next j
1700 if o=6 then 1720
1710 z=z-1
1720 next i
1730 n=z1
1740 rem build the upper right corner of the array
1750 for i=1 to z1
1760 for j=y to x5+1 step -1
1770 if i=1 then 1830
1780 if j=y then 1830
1790 p(i,j)=p(i,j+1)+p(i-1,j)
1800 if p(i,j)<q*q*q then 1840
1810 p(i,j)=p(i,j)-q*q
1820 goto 1800
1830 p(i,j)=1
1840 next j
1850 if o=6 then 1870
1860 x5=x5+1
1870 next i
1880 n=z2
1890 rem build the lower left corner of the array
1900 for i=y to x4+1 step -1
1910 for j=1 to z2
1920 if j=1 then 1980
1930 if i=y then 1980
1940 p(i,j)=p(i,j-1)+p(i+1,j)
1950 if p(i,j)<q*q*q then 1990
1960 p(i,j)=p(i,j)-q*q
1970 goto 1950
1980 p(i,j)=1
1990 next j
2000 if o=6 then 2020
2010 z2=z2-1
2020 next i
2030 n=z3
2040 rem build the lower right corner of the array
2050 for i=y to n+1 step -1
2060 for j=y to z3+1 step -1
2070 if j=y then 2130
2080 if i=y then 2130
2090 p(i,j)=p(i+1,j)+p(i,j+1)
2100 if p(i,j)<q*q*q then 2140
2110 p(i,j)=p(i,j)-q*q
2120 goto 2100
2130 p(i,j)=1
2140 next j
2150 if o=6 then 2170
2160 z3=z3+1
2170 next i
2180 goto 1070
2190 rem pasform c option 2 lines 2150-2240
2200 for r=1 to t
2210 for c=1 to t
2220 if c>r then 2300
2230 if(c-1)=0 then 2290
2240 if r=c then 2290
2250 let p(r,c)=p(r-1,c-1)+p(r-1,c)
2260 if p(r,c)<q*q*q then 2300
2270 let p(r,c)=p(r,c)-q*q
2280 goto 2260
2290 let p(r,c)=1
2300 next c
2310 next r
2320 goto 1040
2330 rem pasform a option 3 lines 2290-2480
2340 if t<=36 then 2370
2350 print "max. of 36 rows allowed with this option...here they come"
2360 let t=36
2370 let p(1,t)=1
2380 for r=2 to t
2390 let c=1
2400 if c>t*2-1 then 2530
2410 if r+c=t+1 then 2470
2420 if c=1 then 2480
2430 let p(r,c)=p(r-1,c-1)+p(r-1,c+1)
2440 if p(r,c)<q*q*q then 2480
2450 let p(r,c)=p(r,c)-q+q
2460 goto 2440
2470 let p(r,c)=1
2480 if r+c<t+1 then 2510
2490 let c=c+2
2500 goto 2400
2510 let c=c+1
2520 goto 2400
2530 next r
2540 goto 1040
2550 rem option 7 lines 2540-3190
2570 rem pushes the boundaries way out
2580 rem note the protection against the time out problem on univ 1110
2590 print "what will be the coordinates (r,c) of the upper left corner"
2600 print "of this section";
2610 input r1,c1
2620 dim r(1000),c(1000)
2630 rem *** t=tim(1)
2640 for l1=1 to 72:for l2=1 to 72:p(l1,l2)=0:next l2:next l1
2650 for l2=1 to 1000:r(l2)=1:c(l2)=1:next l2
2670 if r1=1 then 2780
2680 for r=2 to r1
2690 for c=2 to c1+72
2700 r(c)=r(c)+r(c-1)
2710 if r(c)<q*q*q then 2740
2720 r(c)=r(c)-q*q
2730 goto 2710
2740 next c
2750 rem *** if tim(1)-t<6 then 2770
2760 gosub 3210
2770 next r
2780 if c1=1 then 2900
2790 for c=2 to c1
2800 c(r1)=r(c)
2810 for r=r1+1 to r1+72
2820 c(r)=c(r)+c(r-1)
2830 if c(r)<q*q*q then 2860
2840 c(r)=c(r)-q*q
2850 goto 2830
2860 next r
2870 rem *** if tim(1)-t<6 then 2890
2880 gosub 3210
2890 next c
2900 for c=1 to 72
2910 p(1,c)=r(c+c1-1)
2920 p(c,1)=c(c+r1-1)
2930 next c
2940 for r=2 to 72
2950 for c=2 to 72
2960 p(r,c)=p(r-1,c)+p(r,c-1)
2970 if p(r,c)<q*q*q then 3000
2980 p(r,c)=p(r,c)-q*q
2990 goto 2970
3000 next c
3010 rem *** if tim(1)-t<6 then 3030
3020 gosub 3210
3030 next r
3040 gosub 3210
3050 print
3060 print
3070 for r=1 to 70
3080 for c=1 to 70
3090 if (p(r,c)/q-int(p(r,c)/q))*q<.98 then 3120
3100 print t$;
3110 goto 3130
3120 print s$;
3130 next c
3140 rem *** if tim(1)-t<6 then 3160
3150 gosub 3210
3160 print
3170 next r
3180 print
3190 print
3200 goto 1170
3210 print " ";
3220 rem *** linput as
3230 rem *** t=tim(1)
3240 return
3250 goto 1170
3260 rem calendar
3270 let x=y9
3280 rem lines 3240-3640 produce a calendar
3290 rem program is a subroutine that uses variable x=year of calendar
3300 rem
3310 c=6
3320 for j=1600 to x step 1
3330 if j=x then 3390
3340 if j/4 <> int(j/4) then 3380
3350 if (j-1700)*(j-1800)*(j-1900)*(j-2100)*(j-2200)*(j-2300)=0 then 3380
3360 c=c+2
3370 goto 3390
3380 c=c+1
3390 if c<7 then 3410
3400 c=c-7
3410 next j
3420 print
3430 for r=1 to 12
3440 read a$
3450 print tab(17);a$;" ";x
3460 read b
3470 if x/4 <> int(x/4) then 3500
3480 if a$ <> "february" then 3500
3490 let b=b+1
3500 rem time to print the calendar for the year x
3510 print "========================================="
3520 print "!sun   mon   tue   wed   thu   fri   sat!"
3530 print "========================================="
3540 for d=1 to b
3550 print tab(6*c);d;
3560 let c=c+1
3570 if c<7 then 3600
3580 print
3590 c=0
3600 next d
3610 print
3620 print "========================================="
3630 for p=1 to 3
3640 print
3650 next p
3660 next r
3670 data "january",31,"february",28,"march",31,"april",30,"may",31
3680 data "june",30,"july",31,"august",31,"september",30,"october",31
3690 data "november",30,"december",31
3700 rem the end
3710 end
