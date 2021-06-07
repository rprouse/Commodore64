10 print tab(34);"bug"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
40 rem
50 a=0: b=0: h=0: l=0: n=0: p=0: q=0: r=0: s=0: t=0: u=0: v=0: y=0
60 print "the game bug"
70 print "i hope you enjoy this game."
80 print
90 print "do you want instructions";
100 input z$
110 if z$="no" then 300
120 print "the object of bug is to finish your bug before i finish"
130 print "mine. each number stands for a part of the bug body."
140 print "i will roll the die for you, tell you what i rolled for you"
150 print "what the number stands for, and if you can get the part."
160 print "if you can get the part i will give it to you."
170 print "the same will happen on my turn."
180 print "if there is a change in either bug i will give you the"
190 print "option of seeing the pictures of the bugs."
200 print "the numbers stand for parts as follows:"
210 print "number","part","number of part needed"
220 print "1","body","1"
230 print "2","neck","1"
240 print "3","head","1"
250 print "4","feelers","2"
260 print "5","tail","1"
270 print "6","legs","6"
280 print
290 print
300 if y>0 then 2480
310 z=int(6*rnd(1)+1)
320 c=1
330 print "you rolled a";z
340 on z goto 350,430,540,650,760,870
350 print "1=body"
360 if b=1 then 410
370 print "you now have a body."
380 b=1
390 c=0
400 goto 970
410 print "you do not need a body."
420 goto 970
430 print "2=neck"
440 if n=1 then 500
450 if b=0 then 520
460 print "you now have a neck."
470 n=1
480 c=0
490 goto 970
500 print "you do not need a neck."
510 goto 970
520 print "you do not have a body."
530 goto 970
540 print "3=head"
550 if n=0 then 610
560 if h=1 then 630
570 print "you needed a head."
580 h=1
590 c=0
600 goto 970
610 print "you do not have a neck."
620 goto 970
630 print "you have a head."
640 goto 970
650 print "4=feelers"
660 if h=0 then 740
670 if a=2 then 720
680 print "i now give you a feeler."
690 a=a+1
700 c=0
710 goto 970
720 print "you have two feelers already."
730 goto 970
740 print "you do not have a head."
750 goto 970
760 print "5=tail"
770 if b=0 then 830
780 if t=1 then 850
790 print "i now give you a tail."
800 t=t+1
810 c=0
820 goto 970
830 print "you do not have a body."
840 goto 970
850 print "you already have a tail."
860 goto 970
870 print "6=leg"
880 if l=6 then 940
890 if b=0 then 960
900 l=l+1
910 c=0
920 print "you now have";l;"legs."
930 goto 970
940 print "you have 6 feet already."
950 goto 970
960 print "you do not have a body."
970 x=int(6*rnd(1)+1)
971 print
975 for delay=1 to 2000:next delay
980 print "i rolled a";x
990 on x goto 1000,1080,1190,1300,1410,1520
1000 print "1=body"
1010 if p=1 then 1060
1020 print "i now have a body."
1030 c=0
1040 p=1
1050 goto 1630
1060 print "i do not need a body."
1070 goto 1630
1080 print "2=neck"
1090 if q=1 then 1150
1100 if p=0 then 1170
1110 print "i now have a neck."
1120 q=1
1130 c=0
1140 goto 1630
1150 print "i do not need a neck."
1160 goto 1630
1170 print "i do not have a body."
1180 goto 1630
1190 print "3=head"
1200 if q=0 then 1260
1210 if r=1 then 1280
1220 print "i needed a head."
1230 r=1
1240 c=0
1250 goto 1630
1260 print "i do not have a neck."
1270 goto 1630
1280 print "i do not need a head."
1290 goto 1630
1300 print "4=feelers"
1310 if r=0 then 1390
1320 if s=2 then 1370
1330 print "i get a feeler."
1340 s=s+1
1350 c=0
1360 goto 1630
1370 print "i have 2 feelers already."
1380 goto 1630
1390 print "i do not have a head."
1400 goto 1630
1410 print "5=tail"
1420 if p=0 then 1480
1430 if u=1 then 1500
1440 print "i now have a tail."
1450 u=1
1460 c=0
1470 goto 1630
1480 print "i do not have a body."
1490 goto 1630
1500 print "i do not need a tail."
1510 goto 1630
1520 print "6=legs"
1530 if v=6 then 1590
1540 if p=0 then 1610
1550 v=v+1
1560 c=0
1570 print "i now have";v;"legs."
1580 goto 1630
1590 print,"i have 6 feet."
1600 goto 1630
1610 print "i do not have a body."
1620 goto 1630
1630 if a=2 and t=1 and l=6 then 1650
1640 goto 1670
1650 print "your bug is finished."
1660 y=y+1
1670 if s=2 and p=1 and v=6 then 1690
1680 goto 1710
1690 print "my bug is finished."
1700 y=y+2
1710 if c=1 then 300
1720 print "do you want the pictures";
1730 input z$
1740 if z$="no" then 300
1750 print "*****your bug*****"
1760 print
1770 print
1780 if a=0 then 1860
1790 for z=1 to 4
1800 for x=1 to a
1810 print tab(10);
1820 print "a ";
1830 next x
1840 print
1850 next z
1860 if h=0 then 1880
1870 gosub 2470
1880 if n=0 then 1920
1890 for z=1 to 2
1900 print "          n n"
1910 next z
1920 if b=0 then 2000
1930 print "     bbbbbbbbbbbb"
1940 for z=1 to 2
1950 print "     b          b"
1960 next z
1970 if t<>1 then 1990
1980 print "tttttb          b"
1990 print "     bbbbbbbbbbbb"
2000 if l=0 then 2080
2010 for z=1 to 2
2020 print tab(5);
2030 for x=1 to l
2040 print " l";
2050 next x
2060 print
2070 next z
2080 for z=1 to 4
2090 print
2100 next z
2110 print "*****my bug*****"
2120 print
2130 print
2140 print
2150 if s=0 then 2230
2160 for z=1 to 4
2170 print tab(10);
2180 for x=1 to s
2190 print "f ";
2200 next x
2210 print
2220 next z
2230 if r<>1 then 2250
2240 gosub 2470
2250 if q=0 then 2280
2260 print "          n n"
2270 print "          n n"
2280 if p=0 then 2360
2290 print "     bbbbbbbbbbbb"
2300 for z=1 to 2
2310 print "     b          b"
2320 next z
2330 if u<>1 then 2350
2340 print "tttttb          b"
2350 print "     bbbbbbbbbbbb"
2360 if v=0 then 2450
2370 for z=1 to 2
2380 print tab(5);
2390 for x=1 to v
2400 print " l";
2410 next x
2420 print
2430 next z
2450 if y<>0 then 2540
2460 goto 300
2470 print "        hhhhhhh"
2480 print "        h     h"
2490 print "        h o o h"
2500 print "        h     h"
2510 print "        h  v  h"
2520 print "        hhhhhhh"
2530 return
2540 print "i hope you enjoyed the game, play it again soon!!"
2550 end
