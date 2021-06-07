10 print tab(27)"bombrun"
13 print tab(20)"creative computing"
15 print tab(18)"morristown, new jersey"
19 print:print
20 print"this program simulates a bombing run.  do you need"
25 x5=3000
30 print"instructions";
40 input i$
50 if i$="yes" then 90
60 if i$="no" then 290
70 print"illogical response.  reply 'yes' or 'no'."
80 goto 40
90 print"you have the option of making four passes over the target,"
100 print"with the ability to drop a bomb once during each of"
110 print"these passes.  altitude changes may be made through the"
120 print "'climb/dive' command by printing 'climb' or 'dive',fol-"
130 print"lowed by a comma and the desired angle (in degrees). new"
140 print"velocities (ranging from 300 to 900 feet per second) may"
150 print"be input after the 'airspeed' question mark.  'climb/dive'"
160 print"angles, varying from 0 to 15 degrees, will add as spec-"
170 print"ified by 'climb' or'dive' commands to yield a net inclin-"
180 print "ation/declination angle between 0 to 60 degrees, climbing"
190 print "or diving.  a minimum altitude of 100 feet must also be"
200 print"maintained.  willfully exceeding any of the max./min. specs"
210 print"will result in the crash of your bomber. also , a bomb"
220 print"command of 'drop' during a dive will give your bomb an in-"
230 print"itial downward velocity, shortening the drop time, as a"
240 print"'climb' command will lengthen this time.  the bomb will be"
250 print"launched immediately following the most recent 'stats' read-"
260 print "out upon 'drop' command, and will be held for further"
270 print"positioning information upon the command 'stand by'.  the"
280 print"target is 1 foot in diameter.  good luck"
290 z1=1000
300 z2=1000
310 z3=1000
320 z4=1000
330 r=r+1
340 w1=0
350 x2=0
360 w3=0
370 w4=0
380 t=0
390 a1=0
400 a=0
410 v1=rnd(1)
420 v=v1*1000
430 if v<300 or v>900 then 410
440 y1=rnd(1)
450 y=y1*500
460 if y<100 then440
470 x=4500
480 print" "
490 print" "
500 e=x/v
510 print tab(30)"**initial**"
520 print tab(30)"***stats***"
530 goto1430
540 w1=0
550 w2=0
560 w3=0
570 w4=0
580 print" "
590 print"bomb command";
600 input c$
610 if c$="stand by" then 640
620 if c$="drop" then 1680
630 print"unrecognizable command.  reply 'stand by' or 'drop'."
640 print"standing by."
650 print " "
660 goto 700
670 a=a-a1
680 t=t-1
690 goto 770
700 print"maintain present resultant angle";
710 input p$
720 print" "
730 if p$="yes" then 1130
740 if p$="no" then 770
750 print"reply 'yes' or'no'.";
760 goto 710
770 print"'climb/dive' command";
780 input a$,a1
790 print" "
800 if a1<0 then 830
810 if a1>15 then 870
820 goto 930
830 print"angle input must be positve.  if necessary, change the"
840 print"'dive' command to 'climb', or vice versa."
850 print" "
860 goto770
870 w1=w1+1
880 if w1=2 then 2120
890 print"your bomber cannot tolerate the stress caused by angle"
900 print"inputs exceeding 15 degrees.  reconsider your choice."
910 print" "
920 goto 770
930 if a$="climb" then 950
940 a1=-a1
950 a=a+a1
960 if a<-60 then 990
970 if a>60 then 1060
980 goto 1140
990 w2=w2+1
1000 if w2=2 then 2170
1010 print"your present 'dive' command will exceed the maximum re-"
1020 print"sultant dive angle of 60 degrees, causing an irreversible"
1030 print" nosedive.  reconsider your choice."
1040 print" "
1050 goto 670
1060 w3=w3+1
1070 if w3=2 then 2210
1080 print"your present 'climb' command will exceed the maximum re-"
1090 print"sultant climb angle of 60 degrees, causing your"
1100 print" engines to fail and your plane to crash. reconsider your"
1105 print"choice"
1110 print" "
1120 goto 670
1130 rem
1140 print"airspeed";
1150 input v
1160 if v>900 then 1190
1170 if v<300 then 1230
1180 goto 1290
1190 print"your bomber isn't capable of attaining that velocity."
1200 print"input an airspeed less than 900 feet per second."
1210 print" "
1220 goto 1150
1230 w4=w4+1
1240 if w4=2 then 2250
1250 print"if your velocity isn't increased immediately, your bomber"
1260 print"will fall to earth and be destroyed."
1270 print" "
1280 goto 1140
1290 t=t+1
1300 b=a*3.14159/180
1310 y=y+v*sin(b)
1320 if y>100 then 1390
1330 w5=w5+1
1340 if w5=2 then 2290
1350 print"if your altitute isn't increased immediately to a min-"
1360 print"imun of 100 feet, a crash is imminent."
1370 print" "
1380 goto 670
1390 x=x-v*cos(b)
1400 if x<=0 then 2350
1410 e=x/(v*cos(b))
1420 print tab(30)"***stats***"
1430 print" "
1440 if not(t=1)then 1470
1450 print tab(20)"elapsed time... 1 second"
1460 goto 1480
1470 print tab(20)"elapsed time...";t;"seconds"
1480 if not(a1=0) then 1510
1490 print tab(11)"present angle command... 0 degrees"
1500 goto 1550
1510 if a$="climb" then 1540
1520 printtab(11)"present angle command... dive,";-a1;"degrees"
1530 goto 1550
1540 print tab(11)"present angle command... climb,";a1;"degrees"
1550 if a<0 then 1590
1560 if a>0 then 1610
1570 print tab(17)"resultant angle... 0 degrees"
1580 goto 1620
1590 print tab(17)"resultant angle...";-a1;"degrees diving"
1600 goto 1620
1610 print tab(17)"resultant angle...";a;"degrees climbing"
1620 print tab(16)"present velocity... ";v;"feet per second"
1630 print tab(24)"altitude... ";y;"feet"
1640 print tab(14)"distance from site... ";x;"feet"
1650 print tab(7)"estimated time of arrival... ";e;"seconds"
1660 print
1670 goto 540
1680 print"bomb dropped."
1690 t3=(sqr((v*sin(b))^2+64.4*y)+v*sin(b))/32.2
1700 print"time to explosion... ";t3;"seconds"
1710 x=x-v*cos(b)*t3
1720 x=int(x*100)/100
1725 if x5>abs(x5) then x5=abs(x5)
1730 print " "
1740 if x<-.5 then 1780
1750 if x>.5 then 1800
1760 print"congratulations, you scored as perfect hit."
1770 goto 2030
1780 print"the bomb landed";-x;"feet beyond the target's center."
1790 goto 1810
1800 print"the bomb landed";x;"feet in front of the target's center."
1810 if r=1 then 1850
1820 if r=2 then 1870
1830 if r=3 then 1890
1840 if r=4 then 1910
1850 z1=abs(x)
1860 goto 2400
1870 z2=abs(x)
1880 goto 2420
1890 z3=abs(x)
1900 goto 2440
1910 z4=abs(x)
1920 z1=z10(1):z2=z10(2):z3=z10(3):z4=z10(4)
1921 for m=1 to 4
1922 for m1= 4 to 1 step-1
1923 if z10(m)<z10(m1) then z10(m)=x5
1924 if m=m1 and m=1 then 1926
1925 nextm1
1926 next m
1930 print" "
1940 if x5<= 300 then 2000
1950 print"during your";r;"-pass bombrun, you failed to even"
1960 print"threaten the target with a hit. better luck next time "
1970 if r$="no" then 2590
1980 goto 2040
1990 goto 2610
2000 print"during your";r;"-pass bombrun, you managed to strike"
2010 print"within";x5;"feet of the target."
2020 print" "
2030 if r$="no" then 2590
2040 print"would you like to reload and play again?"
2050 input a$
2060 if a$="no" then 2590
2070 if a$="yes" then 2100
2080 print"you must be a lousy speller.  reply 'yes' or'nq'."
2090 goto 2050
2100 r=0
2110 goto 290
2120 print"you tore the wings off of your bomber by exceeding the"
2130 print"maximum angle input of 15 degrees. next time take my advise"
2150 h=1
2160 goto 1920
2170 print"the steep dive angle desired caused an irreversible nose-"
2180 print"dive, resulting in the destruction of your bomber."
2190 h=1
2200 goto 1920
2210 print"the engines of your bomber failed while climbing the"
2220 print"steep angle input during your angle command opportunity."
2230 h=1
2240 goto 1920
2250 print"the velocity of your bomber was insufficient to support"
2260 print"its weight, and consequently it crashed."
2270 h=1
2280 goto 1920
2290 print"your bomber failed to maintain the low altitude you de-"
2300 print"sired and soon crashed."
2310 print"better luck next time."
2320 h=1
2330 goto 1920
2340 print"your bomber just passed up the target, and needless to"
2350 print"say, you no longer threaten its existance."
2360 print" "
2370 if r=2 then 2420
2380 if r=3 then 2440
2390 if r=4 then 1920
2400 q$=" second "
2410 goto 2450
2420 q$="third"
2430 goto 2450
2440 q$="fourth and final"
2450 if r>1 then 2490
2460 print"you have thus far completed 1 run. would you like to"
2470 print"make another pass";
2480 goto2510
2490 print"you have thus far completed ";r;"runs.  would you like to "
2500 print"another pass";
2510 input r$
2520 if r$="yes" then 2560
2530 if r$="no" then 1920
2540 print"simply reply 'yes' or 'no'."
2550 goto 2510
2560 print"your plane has circled, and is now in position to make"
2570 print"its";q$;"pass."
2580 goto 330
2590 print"look over the physics laws governing falling bodies,"
2600 print"and return to play again soon."
2610 end
