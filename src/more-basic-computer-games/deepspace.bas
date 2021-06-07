100 print tab(24);"deepspace"
110 print tab(20);"creative computing"
120 print tab(18);"morristown, new jersey"
130 print:print:print
150 print "this is deepspace, a tactical simulation of ship to ship"
160 print "combat in deep space."
170 print "do you wish instructions";:input i$
180 if i$="no" then 610
200 print "you are one of a group of captains assigned to patrol a"
210 print "section of your star empire's border against hostile"
220 print "aliens. all your encounters here will be against hostile"
230 print "vessels. you will first be required to select a vessel"
240 print "from one of three types, each with its own characteristics:"
260 print:print "type","speed","cargo space","protection"
270 print "1 scout","10x","16","1"
280 print "2 cruiser","4x","24","2"
290 print "3 battleship","2x","30","5"
310 print:print "speed is given relative to the other ships."
320 print "cargo space is in units of space aboard ship which can be"
330 print "filled with weapons."
340 print "protection is the relative strength of the ship's armor"
350 print "and force fields."
370 print:print "once a ship has been selected, you will be instructed to arm"
380 print "it with weaponry from the following list:"
390 print
400 print "type                         cargo space    rel. strength"
410 print "1 phaser banks                   12                4"
420 print "2 anti-matter missile             4               20"
430 print "3 hyperspace lance                4               16"
440 print "4 photon torpedo                  2               10"
450 print "5 hyperon neutralization field   20                6"
470 print:print "weapons #1 & #5 can be fired 100 times each; all others can"
480 print "be fired once for each on board."
490 print "a typical load for a cruiser might consist of:"
500 print "          1-#1 phaser bank          = 12"
510 print "          2-#3 hyperspace lances    =  8"
520 print "          2-#4 photon torpedoes     =  4"
530 print "                                  ---------"
540 print "                                      24 units of cargo"
550 print " a word of caution: firing high yield weapons at close (<100)"
560 print "range can be dangerous to your ship and minimal damage can"
570 print "occur as far out as 200 in some circumstances."
590 print:print "range is given in thousands of kilometers."
600 goto 640
610 print "do you wish a manuever chart";:input m$
620 if m$="no" then 770
640 print "     **************"
650 print "     manuever chart":print
670 print " 1      fire phasers"
680 print " 2      fire anti-matter missile"
690 print " 3      fire hyperspace lance"
700 print " 4      fire photon torpedo"
710 print " 5      active hyperon neutralization field"
720 print " 6      self-destruct"
730 print " 7      change velocity"
740 print " 8      disengage"
750 print " 9      proceed"
770 print:print "you have a choice of three systems to patrol."
780 print "1 orion"
790 print "2 deneb"
800 print "3 arcturus"
810 print "select a system(1-3)";:input s9
820 if s9=1 then 2380
830 if s9=2 then 2430
840 goto 2480
850 d0=0
860 d1=0
870 n1=0
880 n2=0
890 n3=0
900 n4=0
910 d=0
920 print "which spacecraft would you like(1-3)";:input s
930 on s goto 1790,1830,1870
960 goto 920
970 c=c0
980 print "you have ";c;"units of cargo space to fill with weaponry."
990 print "choose a weapon and the amount you wish.";:input w,n
1000 on w goto 1910,2010,2100,2190,2280
1050 goto 980
1060 if n*c1>c then 2530
1070 c=c-n*c1
1080 on w goto 1990,2080,2170,2260
1120 goto 2360
1130 if c>1 then 980
1140 rem
1150 s1=s0*rnd(0)
1160 r=(3*rnd(0)+5)*100
1180 print:print "range to target:";r
1190 print "relative velocity:";s1
1200 print "action";:input m
1210 on m goto 1940,2030,2120,2210,2310,1660,1390,2760
1290 if r<500 then 1500
1300 if s1>0 then 1330
1310 r=r+(s1*8.3)^1.25
1320 goto 1340
1330 r=r-(s1*8.3)^1.25
1340 if r>1500 then 2590
1350 if r>0 then 1370
1360 r=-r
1370 print
1380 goto 1180
1390 print "change to be effected";:input s2
1400 if (s1+s2)>s0 then 2550
1410 s1=s1+s2
1420 goto 1180
1430 f0=p1*(z/r)^1.5
1440 rem
1450 d0=(2*f0+3*f0*rnd(0))/5
1460 d=d+d0
1470 print "scanners report enemy damage now:";d
1480 if d>99 then 2720
1490 goto 1510
1500 d0=0
1510 rem
1520 k=e1+e2*rnd(0)
1530 rem
1540 e=e3+e4*rnd(0)+5/p0*rnd(0)
1550 rem
1560 f3=e*(k/r)^1.85
1570 d2=(3*f3+3*f3*rnd(0))/5.5
1580 d1=d1+d2
1590 if (z*d0)/(r*500)>2.2 then 1620
1600 d3=d0*2/(r*2*p0)
1610 d1=d1+d3
1620 print "damage control reports your vessel damage at:";d1
1630 if d1>99 then 2740
1640 if d>99 then 2760
1650 goto 1300
1660 print "self destruct failsafe activated!!"
1670 print "input 1 to release failsafe";:input u
1680 if u=1 then 1700
1690 goto 1290
1700 print "self destruct accomplished"
1710 if r>60 then 1740
1720 print "enemy vessel also destroyed"
1730 goto 2760
1740 d4=3200/r
1750 d=d+d4
1760 if d>99 then 1720
1770 print "enemy vessel survives with";d;"damage"
1780 goto 2760
1790 s0=10
1800 c0=16
1810 p0=1
1820 goto 970
1830 s0=4
1840 c0=24
1850 p0=2
1860 goto 970
1870 s0=2
1880 c0=30
1890 p0=5
1900 goto 970
1910 c1=12
1930 goto 1060
1940 p1=4
1950 if n1=0 then 2160
1960 n1=n1-1
1970 z=200
1980 goto 1430
1990 n1=n1+n
2000 goto 1130
2010 c1=4
2020 goto 1060
2030 p1=20
2040 if n2=0 then 2640
2050 n2=n2-1
2060 z=500
2070 goto 1430
2080 n2=n2+n
2090 goto 1130
2100 c1=4
2110 goto 1060
2120 p1=16
2130 if n3=0 then 2660
2140 n3=n3-1
2150 z=550
2160 goto 1430
2170 n3=n3+n
2180 goto 1130
2190 c1=2
2200 goto 1060
2210 p1=10
2220 if n4=0 then 2680
2230 n4=n4-1
2240 z=400
2250 goto 1430
2260 n4=n4+n
2270 goto 1130
2280 c1=.20
2290 n=100
2300 goto 1060
2310 p1=6
2320 if n5=0 then 2700
2330 n5=n5-1
2340 z=250
2350 goto 1430
2360 n5=n5+n
2370 goto 1130
2380 e1=150
2390 e2=500
2400 e3=3
2410 e4=4
2420 goto 850
2430 e1=200
2440 e2=350
2450 e3=4
2460 e4=3
2470 goto 850
2480 e1=150
2490 e2=400
2500 e3=5
2510 e4=2
2520 goto 850
2530 print "not enough space. reselect"
2540 goto 980
2550 print "change beyond maximum possible"
2560 print "increasing to maximum"
2570 s1=s0
2580 goto 1300
2590 print "out of sensor range. aautomatic disengage."
2600 goto 2760
2610 print "phaser banks drained"
2620 print "select another course of action"
2630 goto 1200
2640 print " all anti-matter missles expended"
2650 goto 2620
2660 print "all hyperspace lances expended"
2670 goto 2620
2680 print "all photon torpedo tubes empty"
2690 goto 2620
2700 print "hyperon neutralization field drained"
2710 goto 2620
2720 print "enemy vessel destroyed"
2730 goto 1510
2740 print "your vessel has been destroyed"
2760 print "another battle";:input r$
2770 if r$="yes" then 810
2780 print "try again later!"
2790 end
