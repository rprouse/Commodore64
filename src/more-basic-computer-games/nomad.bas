10 print tab(26);"nomad"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
1160 dim k$(30),d(2,2),r(30,30),e(30,30),p(8,2),c(30)
1170 dim w(30)
1180 dim n$(30)
1190 rem gosub rules
1200 gosub 3340
1210 rem random numbers
1220 def fna(x)=int(rnd(1)*x)+1
1230 rem # of roads
1240 read n
1250 for r=1 to n
1260 rem # of intersec
1270 read q
1280 c(r)=abs(q)
1290 if q<0 then 1320
1300 w(r)=1
1310 goto 1330
1320 w(r)=-1
1330 rem direc, road
1340 for j=1 to c(r)
1350 read e(r,j),r(r,j)
1360 next j
1370 next r
1380 rem name?
1390 print "what is your name";
1400 input n$
1410 rem opening statement
1420 print
1430 print "*good luck*"
1440 rem grammas house
1450 h1=fna(n)
1460 h2=fna(c(h1))
1470 rem drunk drivers
1490 rem police
1500 for a=1 to 8
1510 p(a,1)=fna(n)
1520 p(a,2)=fna(c(p(a,1)))
1530 next a
1540 rem lrac nilknarf namgreb lodge
1550 r=1
1560 j=0
1570 i=1
1580 rem gosub check
1590 gosub 2520
1600 rem gosub telegram
1610 gosub 2570
1620 rem add increment
1630 j=j+i
1640 rem need repair?
1650 if fna(10)=1 then 2940
1660 rem dead end?
1670 if j>c(r) or j=0 then 3060
1680 rem direction
1690 if i=-1 then 1720
1700 d=e(r,j)
1710 goto 1730
1720 d=9-e(r,j)
1730 rem road crossing
1740 c=r(r,j)
1750 rem skip line
1760 print
1770 rem gosub *direc, road on* print
1780 gosub 2680
1790 rem at grammas?
1800 if h1=r and r(r,j)=r(h1,h2) then 2880
1810 if h1=r(r,j) and r=r(h1,h2) then 2880
1820 rem junction
1830 print "junction: road #";r;" & #";c
1840 rem ask what way to turn
1850 print "forward, left, right or u-turn";
1860 input i$
1880 if left$(i$,1)="f" then 2080
1890 if left$(i$,1)="r" then 1970
1900 if left$(i$,1)="l" then 1990
1910 if left$(i$,1)="u" then 1950
1920 rem goofed
1930 print "**you goofed**"
1940 goto 1850
1950 i=1*i
1960 goto 2080
1970 i=w(r)*i
1980 goto 2000
1990 i=-1*w(r)*i
2000 for a=1 to c(c)
2010 if r(c,a)=r then 2040
2020 next a
2030 goto 4210
2040 r=c
2050 j=a
2060 rem dare?
2070 if fna(4)=1 then 2360
2080 rem speed
2090 print "speed";
2100 input s
2110 rem dangerousity crash checks
2120 if s>100 then 3190
2130 if s<30 then 3220
2140 rem illegal?
2150 if s>55 then 3090
2160 rem drunk drivers drive.
2170 for a=1 to 2
2180 if d(a,1)=0 then 2210
2190 d(a,1)=fna(n)
2200 d(a,2)=fna(c(d(a,1)))
2210 next a
2220 rem hit by drunk driver?
2230 for a=1 to 2
2240 if d(a,1)=0 then 2270
2250 if d(a,1)=r and r(r,j)=r(d(a,1),d(a,2)) then 2910
2260 if d(a,1)=r(r,j) and r(d(a,1),d(a,2))=r then 2910
2270 next a
2280 rem is driver caught?
2290 for a=1 to 2
2300 if d(a,1)=0 then 2340
2310 for b=1 to 8
2320 if d(a,1)=p(b,1) and d(a,2)=p(b,2) then 2400
2330 next b
2340 next a
2350 goto 1620
2360 rem speed dare print
2370 on fna(3) goto 2380,2400,2420
2380 print "i dare you to speed ** (daredevil)"
2390 goto 2430
2400 print "*speeding* is fun (so do it)!!"
2410 goto 2430
2420 print "*speed*   i dare you   *speed*   i dare you"
2430 goto 2080
2440 rem drunk caught
2450 print "a drunk driver has been caught.  the policeman who"
2460 print "arrested him will be testifying at court for"
2470 print "the rest of the game."
2480 print
2490 d(a,1)=0:d(a,2)=0:p(b,1)=0:p(b,2)=0
2500 goto 1620
2510 rem check
2520 for a=1 to 8
2530 if h1=p(a,1) and r(h1,h2)=r(p(a,1),p(a,2)) then 1440
2540 if h1=r(p(a,1),p(a,2)) and r(h1,h2)=p(a,1) then 1440
2550 next a
2560 return
2570 rem telegram print-up
2580 print
2590 print "dear ";n$;","
2600 print "how are you?  i live at the corner"
2610 print "of road #";h1;" & #";r(h1,h2);"!!!"
2620 print "come on over."
2630 print "                     love,"
2640 print "                     gramma"
2650 print "((telegramma corp. telegram co.))"
2660 print
2670 return
2680 rem *direc, road on* print-up
2690 print "going ";
2700 on d goto 2710,2730,2750,2770,2790,2810,2830,2850
2710 print "north";
2720 goto 2860
2730 print "west";
2740 goto 2860
2750 print "northeast";
2760 goto 2860
2770 print "southeast";
2780 goto 2860
2790 print "northwest";
2800 goto 2860
2810 print "southwest";
2820 goto 2860
2830 print "east";
2840 goto 2860
2850 print "south";
2860 print " on road #";r
2872 return
2880 rem at grammas *print*
2890 print "you made it to grammas house!!!!!!! !!"
2900 goto 3240
2910 rem drunk hit your car *print*
2920 print "kersplatt--drunk driver hit your car."
2930 goto 3240
2940 rem car needs fixing *print-up*
2950 on fna(5) goto 2960,2980,3000,3020,3040
2960 print "pop...flat tire"
2970 goto 3050
2980 print "flip...your car did a sumersalt"
2990 goto 3050
3000 print "*out of gas*"
3010 goto 3050
3020 print "smoosh...bus flattened your car."
3030 goto 3050
3040 print "pop...bulldog ate your tire!"
3050 goto 3240
3060 rem dead end print
3070 print "*dead end*"
3080 goto 3240
3090 rem speeding
3100 print "*speeding*"
3110 rem caught by police?
3120 for x=1 to 8
3130 if p(x,1)=r and p(x,1)=j then 3170
3140 next x
3150 print "not caught"
3160 goto 2160
3170 print "caught speeding by the police!!"
3180 goto 3240
3190 rem too fast *crash*
3200 print "kersmoushiieeee...went too fast !!!!"
3210 goto 3240
3220 rem too slow *crash*
3230 print "-*<(krunch)>*-  too slow...car behind ran into you!"
3240 rem again?
3250 print
3260 print "again";
3270 input i$
3290 if left$(i$,1)="y" then 1380
3300 rem closing statement
3310 print
3320 print "*see you*"
3330 goto 4210
3340 rem rules?
3350 print "rules";
3360 input i$
3380 if left$(i$,1)="n" then 3950
3390 print
3400 print "gramma nomad is a nice old lady who has not quite"
3410 print "made up her mind where she wants to live."
3420 print "she has narrowed it down to somewhere in garbonzo city"
3430 print "and on a street corner."
3440 print
3450 print "at the beginning, the mailman gives you a telegram written"
3460 print "by gramma telling you where she lives."
3470 print "(i will read it to you)."
3480 print
3490 print "you get into your car it lrac nilknarf namgreb lodge."
3500 print "from theeeeere you go to grammas house."
3510 print
3520 print "you try to get there without:"
3530 print "crashups"
3540 print "tickets"
3550 print "flat tires"
3560 print "running out of gas"
3570 print "dead ends"
3580 print
3590 print "there is an 8-man police force enforcing the laws"
3600 print "of garbonzo city."
3610 print
3620 print "there are 2-drunks on the streets of garbonzo"
3630 print "city."
3640 print
3650 print "if a policeman catches a drunk, he has to"
3660 print "testify in court"
3670 print "(which takes the rest of the game)"
3680 print
3690 print "if a drunk driver hits you, you lose."
3700 print
3810 print "at each junction, i will tell you:"
3820 print "the direction you are going"
3830 print "the road you are on"
3840 print "the road crossing"
3850 print
3860 print "i will ask you:"
3870 print "the way you want to turn (ie left)"
3880 print "speed (in mph)"
3890 print
3900 print "an overpass is not a junction, so it is"
3910 print "merely skipped over. it is unannounced."
3920 print
3930 print "*that is all*"
3940 print
3950 return
3960 rem data lines
3970 data 18
3980 data -8,8,2,8,4,8,5,8,11,8,7,8,8,8,9,8,10
3990 data 3,7,17,7,18,7,1
4000 data 2,7,17,7,18
4010 data 3,7,18,7,11,7,1
4020 data 7,8,8,8,9,8,10,7,18,7,11,7,1,1,6
4030 data -2,7,18,7,5
4040 data 2,7,1,7,11
4050 data 8,7,16,7,15,7,5,7,14,7,13,7,1,7,12,7,11
4060 data 8,7,16,7,15,7,5,7,14,7,13,7,1,7,12,7,11
4070 data 8,7,16,7,15,7,5,7,14,7,13,7,1,7,12,7,11
4080 data -7,4,4,4,5,4,1,4,7,8,8,8,9,8,10
4090 data -3,8,8,8,9,8,10
4100 data -3,8,8,8,9,8,10
4110 data -3,8,8,8,9,8,10
4120 data -3,8,8,8,9,8,10
4130 data -3,8,8,8,9,8,10
4140 data -2,8,2,8,3
4150 data -5,8,2,8,3,8,4,8,5,1,6
4160 data 0,0,0,0,0,0,0
4210 end
