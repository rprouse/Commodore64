10 print tab(32);"roulette"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
40 print "enter the current date (as in 'january 23, 1979') -";
50 input d$,e$
1000 rem-roulette
1010 rem-david joslin
1020 print "welcome to the roulette table"
1030 print 
1040 print "do you want instructions";
1050 input y$
1060 if left$(y$,1)="n" then 1550
1070 print
1080 print "this is the betting layout"
1090 print "  (*=red)"
1100 print 
1110 print " 1*    2     3*"
1120 print " 4     5*    6 "
1130 print " 7*    8     9*"
1140 print "10    11    12*"
1150 print "---------------"
1160 print "13    14*   15 "
1170 print "16*   17    18*"
1180 print "19*   20    21*"
1190 print "22    23*   24 "
1200 print "---------------"
1210 print "25*   26    27*"
1220 print "28    29    30*"
1230 print "31    32*   33 "
1240 print "34*   35    36*"
1250 print "---------------"
1260 print "    00    0    "
1270 print
1280 print "types of bets"
1290 print 
1300 print "the numbers 1 to 36 signify a straight bet"
1310 print "on that number."
1320 print "these pay off 35:1"
1330 print 
1340 print "the 2:1 bets are:"
1350 print " 37) 1-12     40) first column"
1360 print " 38) 13-24    41) second column"
1370 print " 39) 25-36    42) third column"
1380 print 
1390 print "the even money bets are:"
1400 print " 43) 1-18     46) odd"
1410 print " 44) 19-36    47) red"
1420 print " 45) even     48) black"
1430 print 
1440 print " 49)0 and 50)00 pay off 35:1"
1450 print " note: 0 and 00 do not count under any"
1460 print "       bets except their own."
1470 print
1480 print "when i ask for each bet, type the number"
1490 print "and the amount, separated by a comma."
1500 print "for example: to bet $500 on black, type 48,500"
1510 print "when i ask for a bet."
1520 print 
1530 print "the minimum bet is $5, the maximum is $500."
1540 print 
1550 rem-program begins here
1560 rem-type of bet(number) odds
1570 rem  don't need to dimension strings
1580 dim b(100),c(100),t(100),x(38)
1590 dim a(50)
1600 for i=1 to 38: x(i)=0: next i: rem  mat x=zer
1610 p=1000
1620 d=100000.
1630 print "how many bets";
1640 input y
1650 if y<1 or y<>int(y) then 1630
1660 for i=1 to 50: a(i)=0: next i: rem  mat a=zer
1670 for c=1 to y
1680 print "number";c;
1690 input x,z
1700 b(c)=z
1710 t(c)=x
1720 if x<1 or x>50 or x<>int(x) then 1680
1730 if z<1 or z<>int(z) then 1680
1740 if z<5 or z>500 then 1680
1750 if a(x)=0 then 1780
1760 print "you made that bet once already,dum-dum"
1770 goto 1680
1780 a(x)=1
1790 next c
1800 print "spinning"
1810 print 
1820 print 
1830 s=int(rnd(1)*100)
1840 if s=0 or s>38 then 1830
1850 x(s)=x(s)+1
1860 if s<37 then 1920
1870 if s=37 then 1900
1880 print "00"
1890 goto 2020
1900 print "0"
1910 goto 2020
1920 restore 
1930 for i1=1 to 18
1940 read r
1950 if r=s then 2000
1960 next i1
1970 a$="black"
1980 print s;a$
1990 goto 2020
2000 a$="red"
2010 goto 1980
2020 print
2030 for c=1 to y
2040 if t(c)<37 then 2710
2050 on t(c)-36 goto 2090,2190,2220,2250,2300,2350,2400,2470,2500
2060 on t(c)-45 goto 2530,2560,2630
2070 goto 2710
2080 stop
2090 rem  1-12(37) 2:1
2100 if s <= 12 then 2150
2110 print "you lose";b(c);"dollars on bet";c
2120 d=d+b(c)
2130 p=p-b(c)
2140 goto 2180
2150 print "you win";b(c)*2;"dollars on bet"c
2160 d=d-b(c)*2
2170 p=p+b(c)*2
2180 goto 2810
2190 rem  13-24(38) 2:1
2200 if s>12 and s<25 then 2150
2210 goto 2110
2220 rem  25-36(39) 2:1
2230 if s>24 and s<37 then 2150
2240 goto 2110
2250 rem  first column(40) 2:1
2260 for i=1 to 34 step 3
2270 if s=i then 2150
2280 next i
2290 goto 2110
2300 rem  second column(41) 2:1
2310 for i=2 to 35 step 3
2320 if s=i then 2150
2330 next i
2340 goto 2110
2350 rem  third column(42) 2:1
2360 for i=3 to 36 step 3
2370 if s=i then 2150
2380 next i
2390 goto 2110
2400 rem  1-18(43) 1:1
2410 if s<19 then 2430
2420 goto 2110
2430 print "you win";b(c);"dollars on bet";c
2440 d=d-b(c)
2450 p=p+b(c)
2460 goto 2810
2470 rem  19-36(44) 1:1
2480 if s<37 and s>18 then 2430
2490 goto 2110
2500 rem  even(45) 1:1
2510 if s/2=int(s/2) and s<37 then 2430
2520 goto 2110
2530 rem  odd(46) 1:1
2540 if s/2<>int(s/2) and s<37 then 2430
2550 goto 2110
2560 rem  red(47) 1:1
2570 restore 
2580 for i=1 to 18
2590 read r
2600 if s=r then 2430
2610 next i
2620 goto 2110
2630 rem  black(48) 1:1
2640 restore 
2650 for i=1 to 18
2660 read r
2670 if s=r then 2110
2680 next i
2690 if s>36 then 2110
2700 goto 2430
2710 rem--1to36,0,00(1-36,49,50)35:1
2720 if t(c)<49 then 2760
2730 if t(c)=49 and s=37 then 2780
2740 if t(c)=50 and s=38 then 2780
2750 goto 2110
2760 if t(c)=s then 2780
2770 goto 2110
2780 print "you win";b(c)*35;"dollars on bet";c
2790 d=d-b(c)*35
2800 p=p+b(c)*35
2810 next c
2820 print 
2830 print "totals:","me","you"
2840 print " ",d,p
2850 if p>0 then 2880
2860 print "oops! you just spent your last dollar!"
2870 goto 3190
2880 if d>0 then 2920
2890 print "you broke the house!"
2900 p=101000.
2910 goto 2960
2920 print "again";
2930 input y$
2940 if left$(y$,1)="y" then 1630
2950 data 1,3,5,7,9,12,14,16,18,19,21,23,25,27,30,32,34,36
2960 if p<1 then 3190
2970 print "to whom shall i make the check";
2980 input b$
2990 print 
3000 for i=1 to 72: print "-";: next i: rem print 72 dashes
3010 print tab(50);"check no. ";int(rnd(1)*100)
3020 print 
3030 gosub 3230
3040 print tab(40);m$
3050 print 
3060 print 
3070 print "pay to the order of-----";b$;"-----$ ";
3080 print p
3090 print 
3100 print 
3110 print tab(10),"the memory bank of new york"
3120 print 
3130 print tab(40),"the computer"
3140 print tab(40)"----------x-----"
3150 print 
3160 for i=1 to 62: print "-";: next i
3170 print "come back soon!"
3180 goto 3210
3190 print "thanks for your money."
3200 print "i'll use it to buy a solid gold roulette wheel"
3210 print 
3220 goto 3420
3230 rem
3240 rem     this routine returns the current date in m$
3250 rem     if you have system functions to handle this
3260 rem     they can be used here.  however in this
3270 rem     program, we just input the date at the start
3280 rem     the game
3290 rem
3300 rem     the date is returned in variable m$
3310 m$=d$+", "+e$
3320 return
3420 end
