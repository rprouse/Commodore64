100 print tab(32)"minotaur"
120 print tab(15)"creative computing, morristown, new jersey"
130 print:print:print
160 l1=int(rnd(1)*3)+1
170 x1=int(rnd(1)*(-21))+11
180 y1=int(rnd(1)*(-21))+11
190 print
195 dim b(15),c(15)
200 gosub 1350
210 rem instructions
220 gosub 1660
230 rem barriers
240 gosub 2330
250 rem place player
260 gosub 2420
270 rem start game
280 rem spear
290 if x2=s1 and y2=s2 and l2=s3 and t>1 then 3690
300 rem  is he eaten?
310 if x1=x2 and y2=1 and l1=l2 then 3670
320 rem charging
330 if rnd(1)<.1 then 2850
340 rem turn #
350 t=t+1
360 print"turn";t;".  minotaur is at (";x1;",";y1;"), on l. ";l1;"."
370 print "your control";
380 input z
390 on z goto 400,430,450,480,500,530,550,3270
400 x2=x2+f
410 if abs(x2)>10 then 1160
420 goto 1180
430 x2=x2-f
440 goto 410
450 y2=y2+f
460 if abs(y2)>10 then 1160
470 goto 420
480 y2=y2-f
490 goto 460
500 l2=l2+1
510 if l2>3 or l2<1 then 1330
520 goto 420
530 l2=l2-1
540 goto 510
550 rem  spear-throwing
560 if l1<>l2 then 1080
570 if x1<>x2 and y1<>y2 then 1100
580 if x1<>x2 and abs(y1-y2)>10 then 1120
590 if abs(x1-x2)>10 then 1120
600 if s9=1 then 3720
610 print"in which direction would you like to throw(use 1,2,3,4)"
620 input h1
630 print"how far";
640 input h2
650 s5=x2
660 s6=y2
670 for h3=1 to h2
680 on h1 goto 690,720,740,770
690 s5=s5+1
700 if abs(s5)>10 then 860
710 goto 790
720 s5=s5-1
730 goto 700
740 s6=s6-1
750 if abs(s6)>10 then 860
760 goto 790
770 s6=s6-1
780 goto 750
790 print"spear is at (";s5;",";s6")."
800 rem test for barriers
810 for a=1 to 10
820 if s5=b(a) and s6=c(a) then 850
830 next a
840 goto 870
850 print "smash spear splitered against barrier #";a;""
860 goto 1140
870 next h3
880 if s5<>x1 or s6<>y1 then 1010
890 x=int(rnd(1)*3)+1
900 on x goto 910,1010,1070
910 print"you killed the minotaur in";t;"turns."
920 goto 1450
930 print"would you like to play again";
940 input x$
950 if x$<>"yes" then 3760
960 t=0
970 l1=int(rnd(1)*3)+1
980 x1=int(rnd(1)*(-21))+11
990 y1=int(rnd(1)*(-21))+11
1000 goto 230
1010 print"you missed.  spear is at (";s5;",";s6;"). you must get it."
1020 s1=s5
1030 s2=s6
1040 s3=l2
1050 s9=1
1060 goto 280
1070 gosub 2840
1080 print"you are not on the same level. you cannot throw."
1090 goto 420
1100 print"you are not on the same xor y line. you cannot throw."
1110 goto 420
1120 print"you are not within 10. you cannot throw."
1130 goto 420
1140 print"you are now weaponless. you lose, sucker!"
1150 goto 930
1160 print"yaaaaaaaaaaaaaaaah you fell off the edge"
1170 goto 1150
1180 print"you are at (";x2;",";y2;"), on level ";l2;"."
1190 rem test for barriers
1200 for a=1 to 10
1210 if x2=b(a) and y2=c(a) then 1240
1220 next a
1230 goto 1260
1240 print"you have just fried yourself on an electrified barrier."
1250 goto 1150
1260 rem trapdoors
1270 x=int(rnd(1)*10)+1
1280 if x=5 then 1300
1290 goto 2510
1300 print"yaaaaaaaaaaaaaah trapdoor, you fell down one level"
1310 l2=l2-1
1320 if l2>0 then 1290
1330 print"you fell out of the cavern. you lose."
1340 goto 1150
1350 print"do you want to be the minotaur champion";
1360 input x9$
1370 if x9$<>"yes" then 1440
1380 c2=20
1390 print"you must beat a score of 20."
1391 dim c3$(72)
1419 dim c4$(72)
1440 return
1450 if x9$<>"yes" then 930
1460 c3=(1/t)*100
1470 if c3<20 then 1630
1480 print"you are now a qualified champion!"
1620 goto 930
1630 print"sorry ,you did not beat the champion."
1640 print"do you want to play again";
1650 goto 940
1660 rem instructions
1670 print
1672 forv7=1 to 31
1673 print"*";
1675 next v7
1680 print tab(32)"minotaur";
1681 for v8=1 to 31
1682 print tab(41)"*";
1683 next v8
1720 print
1730 print
1740 print"do you need instructions";
1760 input x$
1770 if x$<>"yes" then 2320
1780 print
1800 print "the object of the game is to kill the minotaur"
1820 print
1825 for v9=1to 31
1826 print"*";
1827 next v9
1830 printtab(33)"cavern";
1832 for v10=1 to 31
1833 print tab(41)"*";
1835 next v10
1836 print
1837 print
1840 print tab(12)"  the cavern of the minotaur is in three"
1850 print tab(12)"levels.  each level is a coordinate plane ."
1860 print tab(12)"outside of the levels there is nothing but "
1870 print tab(12)"vacuum.  the planes stretch out 10 on each axis"
1880 print tab(12)"from the origin."
1890 print
1910 for v11=1 to 31
1920 print"*";
1930 next v11
1940 print tab(32)"hazards";
1945 for v12=1 to 31
1947 print tab(41)"*";
1948 next v12
1950 print
1955 print
1960 print tab(32)"barriers"
1965 print
1970 print tab(12)"  inside the cavern are 10 electrified"
1980 print tab(12)"pillars stretching through the three"
1990 print tab(12)"levels. they will destroy anything that"
2000 print tab(12)"touches them!!"
2010 print
2020 print tab(32)"trapdoors"
2025 print
2030 print tab(12)"  trapdoors will appear out of nowhere"
2040 print tab(12)"and drop you down one level. if you were"
2050 print tab(12)"on level one, you lose!!"
2060 print:print
2070 print tab(27)"charging  minotaur"
2071 print
2080 print tab(12)"  the minotaur will charge if you"
2090 print tab(12)"wound him with your spear.  also, he"
2100 print tab(12)"may charge for no reason at all!!!!"
2110 print
2120 print
2130 printtab(21)" here are your control functions"
2140 print tab(27)"1) moving east"
2150 print tab(27)"2) moving west"
2160 print tab(27)"3) moving north"
2170 print tab(27)"4) moving south"
2180 print tab(27)"5) moving up a level"
2190 print tab(27)"6) moving down a level"
2200 print tab(27)"7) throwing your spear"
2210 print tab(27)"8) getting a map"
2220 print
2230 print
2240 for v13=1 to 29
2250 print"*";
2260 next v13
2270 printtab(31)"have fun";
2280 for v14=1 to 30
2290 print tab(41)"*";
2300 next v14
2310 print
2320 return
2330 rem barriers
2340 print "i will now set the barriers."
2350 for a=1 to 10
2360 b(a)= int(rnd(1)*(-21))+11
2370 c(a)=int(rnd(1)*(-21))+11
2380 print"barrier #";a;":(";b(a);",";c(a);")."
2390 next a
2400 print
2410 return
2420 rem place player
2430 print"which level do you want to start on";
2440 input l2
2450 print"which point";
2460 input x2,y2
2470 print"how far do you want to move per a turn";
2480 input f
2490 print
2500 return
2510 rem move minotaur
2520 x4=x1
2530 y4=y1
2540 l4=l1
2550 x3=int(rnd(1)*6)+1
2560 on x3 goto 2570,2620,2640,2690,2710,2760
2570 x1=x1+1
2580 if abs(x1)>10 then 2600
2590 goto 2780
2600 x1=x4
2610 goto 2550
2620 x1=x1-1
2630 goto 2580
2640 y1=y1+1
2650 if abs(y1)>10 then 2670
2660 goto 2780
2670 y1=y4
2680 goto 2550
2690 if x1=b(a) and y1=c(a) then 2550
2700 goto 2650
2710 l1=l1+1
2720 if l1>3 or l1<1 then 2740
2730 goto 2780
2740 l1=l4
2750 goto 2550
2760 l1=l1-1
2770 goto 2720
2780 for a=1 to 10
2790 if x1=b(a) and y1=c(a) then 255
2800 next a
2810 print
2820 goto280
2830 print
2840 print"you wounded the minotaur"
2850 print"the minotaur is charging."
2860 if x1>x2 then 2890
2870 x3=1
2880 goto 2910
2890 x3=-1
2900 goto 2910
2910 if y1>y2 then 2940
2920 y3=1
2930 goto 2960
2940 y3=-1
2950 goto2960
2960 if l1>l2 then 2990
2970 l3 = 1
2980 goto 3000
2990 l3=-1
3000 if l1=l2 then 3050
3010 l1=l1+l3
3020 print"level";l1;""
3030 goto 3000
3040 rem hi there
3050 if x1=x2 then 3100
3060 x1=x1+x3
3070 gosub 3140
3080 print"(";x1;",";y1;")"
3090 goto 3050
3100 if y1=y2 then 3210
3110 y1=y1+y3
3120 gosub 3140
3130 goto 3080
3140 for p=1 to 10
3150 if b(p)=x1 and c(p)=y1 then 3180
3160 next p
3170 return
3180 print"bzzzzzzzzzzzzzzzzzzzzownt minotaur just fried himself"
3190 print"you win,  you lucky scab"
3200 goto 1450
3210 print"bite "
3220 print"chew"
3230 print"chomp"
3240 print"gulp"
3250 print"you lose ,sucker"
3260 goto930
3270 print"what level";
3280 input l4
3290 for y4=10 to -10 step -1
3300 for x4=-10 to 10
3310 if x4=x2 and y4=y2 and l4=l2 then 3410
3320 if x4=x1 and y4=y1 and l4=l1 then 3430
3330 if l4=s1 and y4=s2 and l4=s3 then 3450
3340 for a=1 to 10
3350 if b(a)=x4 and c(a)=y4 then 3480
3360 next a
3370 if x4=0and y4=0 then 3500
3380 if x4=0 or y4=0 then 3520
3390 print".";
3400 goto 3530
3410 print"y";
3420 goto 3400
3430 print"m";
3440 goto 3400
3450 if s9=0 then 3340
3460 print"s";
3470 goto 3400
3480 print"b";
3490 goto 3400
3500 print"o";
3510 goto 3400
3520 print"x";
3530 next x4
3540 print
3550 next y4
3560 print
3570 print"level:";l4
3580 print tab(34)"key"
3590 print tab(31)"y=you"
3600 print tab(31)"m=minotaur"
3610 print tab(31)"s=spear"
3620 print tab(31)"b=barrier"
3630 print tab(31)"o=origin"
3640 print tab(31)"x=axis"
3650 print
3660 goto 2510
3670 print"minotaur moved to your spot; he said you tasted great!!"
3680 goto 930
3690 print"you have your spear"
3700 s9=0
3710 goto 300
3720 print"how can you throw your spear if you don't have one?"
3730 print"spear is at(";s1;",";s2;") on level ";s3
3740 goto 420
3750 stop
3760 end
