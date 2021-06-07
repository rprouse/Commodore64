10 print tab(33);"seabat"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
40 rem
50 rem  program by vincent erikson
60 rem   originally in h.p. basic
70 rem   converted to microsoft basic by s.n.
80 rem
90 rem  note the following about conversions:
100 rem   1) restore <line number> means to set the data
110 rem      pointer to the specified line. this is only
120 rem      present in trs-80 level ii and cp/m basic.
130 rem      for others, improvise by using a restore, and
140 rem      for...next with read statements to skip over
150 rem      the data that should be ignored.
160 rem
170 rem   2) logical expressions are used often.  a true
180 rem      expression evaluates as a (-1) and a false expression
190 rem      evaluates as a (0).  thus if the program says:
200 rem          x = (d<50)
210 rem      it means, let x=0 if d>=50, and let x=-1 if d<50.
220 rem      again, improvise if your basic doesn't have this
230 rem      (but all microsoft basics do.)
240 rem
245 rem   the real name of this program is, "underwater pie lob"
250 rem *** program follows ***
260 rem ***
270 dim a(20,20),d(9)
280 print "what is your name";
290 input n$
300 print
310 rem *** set up area ***
320 for i=1 to 20
322 for j=1 to 20
324 a(i,j)=0
326 next j
328 next i
330 rem *** island ***
340 restore 6300
350 for x=7 to 13
360 for y=7 to 12
370 read a(x,y)
380 next y
390 next x
400 rem *** sub ***
410 s1=10: s2=10
420 a(s1,s2)=2
430 rem *** enemy ships ***
440 s=int(rnd(1)*16)+15
450 restore 6090
460 for x=1 to (int(rnd(1)*4)+1)*2-1
470 read d8,d9
480 next x
490 for x=1 to s
500 x1=int(rnd(1)*20)+1
510 x2=int(rnd(1)*20)+1
520 if a(x1,x2)<>0 then 500
530 a(x1,x2)=3
540 next x
550 print "you must destroy";s;"enemy ships to win ";n$;"."
560 rem *** headquarters ***
570 s3=int(rnd(1)*20)+1
580 s4=int(rnd(1)*20)+1
590 if a(s3,s4)<>0 then 570
600 a(s3,s4)=4
610 rem *** underwater mines ***
620 for x=1 to int(rnd(1)*8)+8
630 x1=int(rnd(1)*20)+1
640 x2=int(rnd(1)*20)+1
650 if a(x1,x2)<>0 then 630
660 a(x1,x2)=5
670 next x
680 rem *** sea monsters ***
690 for x=1 to 4
700 x1=int(rnd(1)*18)+2
710 x2=int(rnd(1)*18)+2
720 if a(x1,x2)<>0 then 700
730 a(x1,x2)=6
740 restore 6090
750 for y=1 to int(rnd(1)*8)+1
760 read m1,m2
770 next y
780 next x
790 rem *** set starting values ***
800 for i=1 to 9
802 d(i)=0
804 next i
810 c=30
820 p=6000
830 f=2500
840 t=10
850 m=3
860 d=100
870 d2=2
880 rem *** command section ***
890 print: print: print "what are your orders ";n$;
900 input o
910 on int(o+1) goto 1040,1680,2220,2680,3250,3410,3700,3880,4400,4660
920 print "the commands are:"
930 print "     #0: navigation"
940 print "     #1: sonar"
950 print "     #2: torpedo control"
960 print "     #3: polaris missile control"
970 print "     #4: manuevering"
980 print "     #5: status/damage report"
990 print "     #6: headquarters"
1000 print "     #7: sabotage"
1010 print "     #8: power conversion"
1020 print "     #9: surrender"
1030 goto 890
1040 rem *** #0: navigation ***
1050 if d(1) >= 0 then 1080
1060 print "engines are under repair ";n$;"."
1070 goto 890
1080 if c>8 then 1110
1090 print "not enough crew to man the engines ";n$;"."
1100 goto 890
1110 d1=1-((.23+rnd(1)/10)*(-(d<=50)))
1120 gosub 6090
1130 print "power available=";p;". power to use";
1140 input p1
1150 if p1<0 or p1>p then 1130
1160 if p1 <= 1000 then 1210
1170 if rnd(1)<.43 then 1210
1180 print "atomic pile goes supercritical ";n$;"!!! headquarters"
1190 print "will warn all subs to stay away from radioactive area!!!"
1200 goto 6180
1210 x=s1
1220 y=s2
1230 q1=1
1240 for x2=1 to int(int(p1/100+.5)*d1+.5)
1250 if x+x1>0 and x+x1<21 and y+y1>0 and y+y1<21 then 1280
1260 print "you can't leave the area ";n$;"!!"
1270 goto 1340
1280 on a(x+x1,y+y1)+1 goto 1290,1330,1630,1390,1440,1470,1490
1290 x=x+x1
1300 y=y+y1
1310 p=p-100
1320 goto 1520
1330 print "you almost ran aground ";n$;"!!"
1340 a(x,y)=2
1350 a(s1,s2)=0
1360 s1=x
1370 s2=y
1380 goto 4690
1390 if d>50 then 1290
1400 print "you rammed a ship!!! you're both sunk!!";n$;"!!"
1410 s=s-1
1420 if s=0 then 6260
1430 goto 6180
1440 if d>50 then 1290
1450 print "you rammed headquarters!! you're sunk!!"
1460 goto 6180
1470 print "you've been blown up by a mine ";n$;"!!"
1480 goto 6180
1490 if rnd(1)<.21 then 1630
1500 print "you were eaten by a sea monster, ";n$;"!!"
1510 goto 6180
1520 rem *** check for nearby sea monsters ***
1530 for x3=x-2 to x+2
1540 for y3=y-2 to y+2
1550 if x3<1 or x3>20 or y3<1 or y3>20 then 1610
1560 if a(x,y)<>6 then 1610
1570 if rnd(1)<.25 then 1500
1580 if q1=0 then 1610
1590 print "you just had a narrow escape with a sea monster ";n$;"!!"
1600 q1=0
1610 next y3
1620 next x3
1630 next x2
1640 print "navigation complete. power left=";p;"."
1650 if p>0 then 1340
1660 print "atomic pile has gone dead!!! sub sinks, crew suffocates"
1670 goto 6180
1680 rem *** #1: sonar ***
1690 if d(2) >= 0 then 1720
1700 print "sonar is under repair ";n$;"."
1710 goto 880
1720 if c>5 then 1750
1730 print "not enough crew to work sonar ";n$;"."
1740 goto 880
1750 print "option #";
1760 input o
1770 on int(o+1) goto 1790,2010
1780 goto 1750
1790 rem *** print out map ***
1800 print
1810 for x=1 to 20
1820 for y=1 to 20
1830 data "   ","***","(x)","\s/","!h!"," $ ","-#-"
1840 if a(x,y)<>0 then 1880
1850 if x<>1 and x<>20 and y<>1 and y<>20 then 1880
1860 print " . ";
1870 goto 1950
1880 restore 1830
1890 for x1=1 to a(x,y)+1
1900 read a$
1910 next x1
1920 if d<50 and rnd(1)<.23 and a(x,y)<>1 and a(a,y)<>2 then 1860
1930 if rnd(1)<.15 and a(x,y)>2 then 1860
1940 print a$;
1950 next y
1960 print
1970 next x
1980 p=p-50
1990 if p>0 then 880
2000 goto 1660
2010 rem *** directional information ***
2020 for i=1 to 5
2022 b(i)=0
2024 next i
2030 print "direction   # of ships    distances"
2040 restore 6090
2050 for x=1 to 8
2060 read x1,y1
2070 x3=0
2080 for x4=1 to 20
2090 if s1+x1*x4<1 or s1+x1*x4>20 or s2+y1*x4<1 or s2+y1*x4>20 then 2140
2100 if a(s1+x1*x4,s2+y1*x4)<>3 then 2130
2110 x3=x3+1
2120 b(x3)=x4
2130 next x4
2140 if x3=0 then 2200
2150 print "   ";x,x3,
2160 for x4=1 to x3
2170 print b(x4);
2180 next x4
2190 print
2200 next x
2210 goto 1980
2220 rem *** #2: torpedo control ***
2230 if d(3) >=0 then 2260
2240 print "torpedo tubes are under repair ";n$;"."
2250 goto 880
2260 if c>=10 then 2290
2270 print "not enough crew to fire torpedo ";n$;"."
2280 goto 880
2290 if t then 2320
2300 print "no torpedos left ";n$;"."
2310 goto 880
2320 if d<2000 then 2360
2330 if rnd(1)>.5 then 2360
2340 print "pressure implodes upon firing...you're crushed!!"
2350 goto 6180
2360 gosub 6080
2370 x=s1
2380 y=s2
2390 for x2=1 to int(7+5*(-(d>50))-rnd(1)*4+.5)
2400 if x+x1>0 and x+x1<21 and y+y1>0 and y+y1<21 then 2460
2410 print "torpedo out of sonar range...ineffectual ";n$;"."
2420 t=t-1
2430 p=p-150
2440 if p>0 then 4690
2450 goto 1660
2460 on a(x+x1,y+y1)+1 goto 2470,2510,2650,2540,2580,2610,2630
2470 x=x+x1
2480 y=y+y1
2490 print "..!..";
2500 goto 2650
2510 print "you took out some island ";n$;"!"
2520 a(x+x1,y+y1)=0
2530 goto 2420
2540 print "ouch!!! you got one ";n$;"!!"
2550 s=s-1
2560 if s<>0 then 2520
2570 goto 6260
2580 print "you blew up your headquarters ";n$;"!!!"
2590 s3=0: s4=0: d2=0
2600 goto 2520
2610 print "blam!! shot wasted on a mine ";n$;"!!"
2620 goto 2520
2630 print "a sea monster had a torpedo for lunch ";n$;"!!"
2640 goto 2420
2650 next x2
2660 print "dud."
2670 goto 2420
2680 rem #3: polaris missile control ***
2690 if d(4) >= 0 then 2720
2700 print "missile silos are under repair ";n$;"."
2710 goto 880
2720 if c>23 then 2750
2730 print "not enough crew to launch a missile ";n$;"."
2740 goto 880
2750 if m<>0 then 2780
2760 print "no missiles left ";n$;"."
2770 goto 880
2780 if d>50 and d<2000 then 2850
2790 print "recommend that you do not fire at this depth...proceed";
2800 input a$
2810 if left$(a$,1)="n" then 880
2820 if rnd(1)<.5 then 2850
2830 print "missile explodes upon firing ";n$;"!! you're dead!!"
2840 goto 6180
2850 gosub 6080
2860 print "fuel (lbs.)";
2870 input f1
2880 if f1>0 and f1 <= f then 2910
2890 print "you have";f;"lbs. left ";n$;"."
2900 goto 2860
2910 f2=int(f1/75+.5)
2920 if s1+x1*f2>0 and s1+x1*f2<21 and s2+y1*f2>0 and s2+y1*f2<21 then 2980
2930 print "missile out of sonar tracking ";n$;". missile lost."
2940 m=m-1
2950 f=f-f1
2960 p=p-300
2970 goto 2440
2980 d3=0: d4=0: d5=0: d6=0
2990 for x=s1+x1*f2-1 to s1+x1*f2+1
3000 for y=s2+y1*f2-1 to s2+y1*f2+1
3010 if x<1 or x>20 or y<1 or y>20 then 3140
3020 d3=d3-(a(x,y)=3)
3030 d4=d4-(a(x,y)=6)
3040 d5=d5-(a(x,y)=5)
3050 d6=d6-(a(x,y)=1)
3060 if a(x,y)<>4 then 3100
3070 print "you've just destroyed your headquarters ";n$;"!!!"
3080 d3=0: s4=0: d2=0
3090 goto 3130
3100 if a(x,y)<>2 then 3130
3110 print "you've just destroyed yourself ";n$;"!!!    dummy!!"
3120 goto 6180
3130 a(x,y)=0
3140 next y
3150 next x
3160 if d6=0 then 3180
3170 print "you blew out some island ";n$;"."
3180 if d5=0 then 3200
3190 print "you destroyed";d5;"mines ";n$;"."
3200 if d4=0 then 3220
3210 print "you got";d4;"sea monsters ";n$;"!!!   good work!!"
3220 print "you destroyed";d3;"enemy ships ";n$;"!!!"
3230 s=s-d3
3240 goto 2940
3250 rem *** manuevering ***
3260 if d(5)>=0 then 3290
3270 print "ballast controls are being repaired ";n$;"."
3280 goto 890
3290 if c>12 then 3320
3300 print "there are not enough crew to work the controls ";n$;"."
3310 goto 880
3320 print "new depth";
3330 input d1
3340 if d1 >= 0 and d1<3000 then 3370
3350 print "hull crushed by pressure ";n$;"!!"
3360 goto 6180
3370 p=p-int(abs((d-d1)/2+.5))
3380 print "manuever complete. power loss=";int(abs((d-d1)/2+.5))
3390 d=d1
3400 goto 4690
3410 rem *** #5: status / damage report ***
3420 if d(6) >= 0 then 3450
3430 print "no reports are able to get through ";n$;"."
3440 goto 880
3450 if c>3 then 3480
3460 print "no one left to give the report ";n$;"."
3470 goto 880
3480 print "# of enemy ships left.......";s
3490 print "# of power units left.......";p
3500 print "# of torpedos left..........";t
3510 print "# of missiles left..........";m
3520 print "# of crewmen left...........";c
3530 print "lbs. of fuel left...........";f
3540 print
3550 print "want a damage report";
3560 input a$
3570 if left$(a$,1)="n" then 3670
3580 print "   item            damage  (+ good, 0 neutral, - bad)"
3590 print "   ----            ------"
3600 data "engines","sonar","torpedos","missiles","manuevering"
3610 data "status","headquarters","sabotage","converter"
3620 restore 3600
3630 for x=1 to 9
3640 read a$
3650 print a$,d(x)
3660 next x
3670 print "you are at location (";s1;",";s2;")."
3680 print
3690 goto 880
3700 rem #6: headquarters ***
3710 if d(7) >=0 then 3740
3720 print "headquarters is damaged.  unable to help ";n$;"."
3730 goto 880
3740 if d2<>0 then 3770
3750 print "headquarters is deserted ";n$;"."
3760 goto 880
3770 if sqr((s1-s3)^2+(s2-s4)^2) <= 2 and d<51 then 3800
3780 print "unable to comply with docking orders ";n$;"."
3790 goto 880
3800 print "divers from head quarters bring out supplys and men."
3810 p=4000
3820 t=8
3830 m=2
3840 f=1500
3850 c=25
3860 d2=d2-1
3870 goto 4690
3880 rem *** #7: sabotage ***
3890 if d(8)>=0 then 3920
3900 print "hatches inaccessible ";n$;".  no sabotages possible."
3910 goto 880
3920 if c>10 then 3950
3930 print "not enough crew to go on mission ";n$;"."
3940 goto 880
3950 d3=0:d4=0
3960 for x=s1-2 to s1+2
3970 for y=s2-2 to s2+2
3980 if x<1 or x>20 or y<1 or y>20 then 4010
3990 d3=d3-(a(x,y)=3)
4000 d4=d4-(a(x,y)=6)
4010 next y
4020 next x
4030 if d3<>0 then 4060
4040 print "no ships in range ";n$;"."
4050 goto 880
4060 print "there are";d3;"ships in range ";n$;"."
4070 print "how many men are going ";n$;
4080 input q1
4090 if c-q1 >= 10 then 4120
4100 print "you must leave at least 10 men on board ";n$;"."
4110 goto 4070
4120 d5=int(d3/q1+.5)
4130 d6=0
4140 for x=s1-2 to s1+2
4150 for y=s2-2 to s2+2
4160 if d3/q1>1-rnd(1) and rnd(1)+d3/q1<.9 then 4220
4170 if a(x,y)<>3 then 4220
4180 d6=d6+1
4190 a(x,y)=0
4200 s=s-1
4210 if s=0 then 6260
4220 next y
4230 next x
4240 print d6;"ships were destroyed ";n$;"."
4250 d6=0: d7=0
4260 for x=1 to q1
4270 d7=d7-(rnd(1)>.6)
4280 next x
4290 for x=1 to q1-d7
4300 d6=d6-(rnd(1)<.15)
4310 next x
4320 if d4=0 then 4360
4330 print "a sea monster smells the men on the way back!!!"
4340 print d7;"men were eaten ";n$;"!!"
4350 c=c-d7
4360 print d6;"men were lost through accidents ";n$;"."
4370 c=c-d6
4380 p=p-int(10*q1+rnd(1)*10)
4390 goto 4700
4400 rem *** #8: power converter ***
4410 if d(9) >= 0 then 4440
4420 print "power converter is damaged ";n$;"."
4430 goto 880
4440 if c>5 then 4470
4450 print "not enough men to work the converter ";n$;"."
4460 goto 880
4470 print "option? (1=fuel to power, 2=power to fuel)";
4480 input o
4490 on o goto 4520,4590
4500 goto 4470
4510 rem *** fuel to power conversion ***
4520 print "fuel available=";f;". convert";
4530 input c1
4540 if c1>f or c1<0 then 4520
4550 f=f-c1
4560 p=p+int(c1/3)
4570 goto 4640
4590 print "power available=";p-1;". convert";
4600 input c1
4610 if c1>p-1 or c1<0 then 4590
4620 p=p-c1
4630 f=f+int(c1*3)
4640 print "conversion complete. power=";p;". fuel=";f;"."
4650 goto 4690
4660 rem *** #9: surrender ***
4670 print "coward!! you're not very patriotic ";n$;"!!!"
4680 goto 6180
4690 rem *** retaliation section ***
4700 q=0
4710 for x=s1-4 to s1+4
4720 for y=s2-4 to s2+4
4730 if x<1 or x>20 or y<1 or y>20 then 4760
4740 if a(x,y)<>3 then 4760
4750 q=q+(rnd(1)/sqr((s1-x)^2+(s2-y)^2))
4760 next y
4770 next x
4780 if q then 4810
4790 print "no ships in range to depth charge you ";n$;"!!"
4800 goto 5210
4810 print "depth charges off ";
4820 if rnd(1)>.5 then 4850
4830 print "port side ";n$;"!!!"
4840 goto 4860
4850 print "starboard side ";n$;"!!!"
4860 if q3>.13 or rnd(1)>.92 then 4890
4870 print "no real damage sustained ";n$;"."
4880 goto 5220
4890 if q>.36 or rnd(1)>.96 then 4940
4900 print "light, superfical damage ";n$;"."
4910 p=p-50
4920 d(int(rnd(1)*9)+1)=-rnd(1)*2
4930 goto 5210
4940 if q>.6 or rnd(1)>.975 then 5020
4950 print "moderate damage. repairs needed."
4960 p=p-75+int(rnd(1)*30)
4970 for y=1 to 2
4980 x=int(rnd(1)*9)+1
4990 d(x)=d(x)-rnd(1)*8
5000 next y
5010 goto 5210
5020 if q>.9 or rnd(1)>.983 then 5100
5030 print "heavy damage!! repairs immediate ";n$;"!!!"
5040 p=p-(200+int(rnd(1)*76))
5050 for x=1 to 4+int(rnd(1)*2)
5060 y=int(rnd(1)*9)+1
5070 d(y)=d(y)-rnd(1)*11
5080 next x
5090 goto 5210
5100 print "damage critical!!!!   we need help!!!"
5110 a$="vravukxcnvpcrhfdrsaxqurlqtrhxyacvfzyitlcbssyykdqipcaegqgpcnotsio"
5120 x=int(rnd(1)*16)+1
5130 print "send 'help' in code. here is the code:";mid$(a$,x,4);
5134 for i=1 to 500:next i
5136 print chr$(13);tab(38);"xxxx";chr$(13);tab(38);"****"
5140 input "enter code";b$
5150 print
5160 if b$<>mid$(a$,x,4) then 5190
5170 print "fast work ";n$;"!! help arrives in time to save you!!!"
5180 goto 5040
5190 print "message garbled ";n$;"...no help arrives!!!"
5200 goto 6180
5210 rem *** move ships / sea monsters ***
5220 if d(1) >= 0 or d(3) >= 0 or d(4) >= 0 or d(5) >= 0 or d(6) >= 0 or d(7) >= 0 then 5260
5230 if d(8) >= 0 or d(9) >= 0 then 5270
5240 print "damage too much ";n$;"!!!   you're sunk!!"
5250 goto 6180
5260 rem *** move ships / sea monsters ***
5270 print: print: print "---*** result of last enemy manuever ***---"
5280 for x=1 to 20
5290 for y=1 to 20
5300 if a(x,y)<>3 then 5690
5310 rem *** move a ship ***
5320 w=d8
5330 v=d9
5340 if x+w>0 and x+w<21 and y+v>0 and y+v<21 then 5420
5350 for x0=19 to 1 step -1
5360 if a(x-w*x0,y-v*x0)<>0 then 5400
5370 a(x-w*x0,y-v*x0)=3
5380 a(x,y)=0
5390 goto 6000
5400 next x0
5410 stop
5420 on a(x+w,y+v)+1 goto 5430,5460,5530,5460,5560,5600,5650
5430 a(x+w,y+v)=3
5440 a(x,y)=0
5450 goto 6000
5460 rem *** change direction ***
5470 restore 6090
5480 for x0=1 to int(rnd(1)*8)+1
5490 read w,v
5500 next x0
5510 if x+w<1 or x+w>20 or y+v<1 or y+v>20 then 5470
5520 goto 5420
5530 if d>50 then 5460
5540 print "*** you've been rammed by a ship ";n$;"!!! ***"
5550 goto 6180
5560 if rnd(1)<.15 then 5460
5570 print "*** your headquarters was rammed ";n$;"!!! ***"
5580 s3=0: s4=0: d2=0: a(x+w,y+v)=0
5590 goto 5620
5600 if rnd(1)<.7 then 5460
5610 print "*** ship destroyed by a mine ";n$;"!!! ***"
5620 s=s-1
5630 if s<>0 then 5440
5640 goto 6260
5650 if rnd(1)<.8 then 5460
5660 print "*** ship eaten by a sea monster ";n$;"!! ***"
5670 s=s-1
5680 goto 5630
5690 rem *** move a sea monster ***
5700 if a(x,y)<>6 then 6000
5710 if x+m1<1 or x+m1>20 or y+m2<1 or y+m2>20 then 5760
5720 on a(x+m1,y+m2)+1 goto 5730,5760,5830,5850,5900,5730,5930
5730 a(x+m1,y+m2)=6
5740 a(x,y)=0
5750 goto 6000
5760 rem *** change direction ***
5770 restore 6090
5780 for x0=1 to int(rnd(1)*8)+1
5790 read m1,m2
5800 next x0
5810 if x+m1<1 or x+m1>20 or y+m2<1 or y+m2>20 then 5760
5820 goto 5720
5830 print "*** you've been eaten by a sea monster ";n$;"!! ***"
5840 goto 6180
5850 if rnd(1)>.2 then 5760
5860 print "*** ship eaten by a sea monster ";n$;"!! ***"
5870 s=s-1
5880 if s<>0 then 5730
5890 goto 6260
5900 print "*** a sea monster ate you headquarters ";n$;"!! ***"
5910 s3=0: s4=0: d2=0
5920 goto 5730
5930 if rnd(1)<.75 then 5760
5940 print "*** a sea monster fight ";n$;"!!! ";
5950 if rnd(1)<.8 then 5980
5960 print "and one dies!! ***"
5970 goto 5730
5980 print "it's a tie!! ***"
5990 goto 5760
6000 next y
6010 next x
6020 rem *** make repairs ***
6030 for y=1 to 9
6040 x=int(rnd(1)*9)+1
6050 d(x)=d(x)+(rnd(1)*(2+rnd(1)*2))*(1+(-(d<51) or -(d>2000)))*(-(d(x)<3))
6060 next y
6070 goto 880
6080 rem *** gosub for course / direction ***
6090 data -1,0,-1,1,0,1,1,1,1,0,1,-1,0,-1,-1,-1
6100 print "course (1-8)";
6110 input c1
6120 if c1<1 or c1>8 then 6100
6130 restore 6090
6140 for x9=1 to int(c1+.5)
6150 read x1,y1
6160 next x9
6170 return
6180 rem *** destroyed ? ***
6190 print "there are still";s;"enemy ships left ";n$;"."
6200 print "you will be demoted to the rank of deck scrubber!!!"
6210 print "want another game";
6220 input a$
6230 if left$(a$,1)<>"y" then 6250
6240 goto 310
6250 stop
6260 print "good work ";n$;"!!!  you got them all!!!"
6270 print "promotion and commendations will be given immediately!!!"
6280 goto 6210
6300 data 0,1,1,1,0,0,0,1,1,1,1,0,1,1,1,0,1,1,1,1,0,0,0,1
6310 data 1,1,0,0,1,1,0,1,1,0,1,0,0,0,1,0,0,0
6320 end
