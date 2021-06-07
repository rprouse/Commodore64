5 print tab(26);"seawar"
6 print tab(20);"creative computing"
7 print tab(18) "morristown, new jersey"
9 print:print:print
10 print "you command a fleet of ships operating in"
15 print "enemy territory!!!"
20 print "do you need any assistance";
40 input q$
50 if q$="yes" then 90
60 if q$="no" then 170
70 print "input 'yes' or 'no'"
80 goto 40
90 print "you tell your gun crews the elevation to set their guns."
100 print "elevation is in degrees from 0 to 360."
119 print "your task force consists of 3 destroyers, 2 cruisers,"
120 print "2 battleships, and 2 heavy aircraft carriers."
130 print "the enemy has 9 ships for his defense."
140 print "if you succeed in sinking all his ships before he sinks"
150 print"yours, you have won. however, if he sinks all your ships"
160 print "before you have defeated him, you have lost!!"
170 print "let us begin!!!"
210 print ""
220 read z$
230 a=a+1
240 goto 320
250 restore
260 if o=9 or a=9 then 840
270 for x=1 to a
280 read z$
290 next x
300 read z$
310 a=a+1
320 if z$="aircraft carrier" then 390
330 if z$="u-boat" then 2000
340 if z$="torpedo boat" then 360
350 p=1
360 goto 405
390 restore
405 print:print "your flagship reports the sighting of an enemy ";z$
410 t=43000.-30000*rnd(0)+(rnd(0)*10)*.987654+102
420 if t<10000 then 410
430 s=0:p2=0
440 t=int(t)
450 if z$="u-boat" then 2030
460 print "your instruments read the range to the target as ";t;" meters."
480 if p=1 then 1480
490 if s>4 then 510
500 goto 540
510 print "all right, bad shot, the target has moved out of"
520 print "range !!! let's try it again !!!"
525 s1=s1+s
530 goto 320
540 print "what elevation ** ";
550 input b
551 print
570 print ""
590 print "-----fire!!!"
600 s=s+1
620 if b>360 then 1410
630 if b<0 then 750
640 if b=0 then 770
650 if b=90 then 980
660 if b>330 then 770
670 if b>180 then 1370
680 if b>150 then 1300
690 if b>90 then 1020
700 v1=675.285
705 e=int(t-(v1^2/9.80665*sin(2*b/57.3)))
710 if abs(e) <= 100 then 1050
720 if e>100 then 1200
730 if e<-100 then 1250
750 print "gun backfired, killing crew!"
760 goto 820
770 print "what are you trying to do? killsome fish? the shell"
780 print "exploded under water fifty meters from your ship!!!"
790 goto 1590
820 print "              admiral please !!!!"
830 goto 1590
840 print "            ********  peace  ********"
870 print:print:print
890 print "you fired ",s1," rounds. the enemy fired ",s2," rounds."
900 if o=9 then 920
910 if a=9 then 950
920 print "all of your ships have been sunk.  so sorry"
930 print "the battle is over..........the enemy wins!"
940 goto 2220
950 print "you have decimated the enemy..........that's nice"
960 print "the battle is over..........you win!!!!!"
970 goto 2220
980 print "you idiot!! you shot straight up!!, and the shell"
990 print "landed on your own gun position, destroying it!!!"
1000 goto 1590
1020 print "hey stupid, you're firing on your own ships!!!"
1030 goto 1590
1050 if z$="u-boat" then 1070
1060 goto 1090
1070 print "depth charge exploded right on top of that baby!!!"
1080 goto 1100
1090 print "  ** boom  **"
1100 print ""
1110 m$="target destroyed!!!     **"
1120 n$=" ** rounds expended."
1130 print m$;s;n$
1142 print "you have lost ";o;" ships, and the enemy has lost ";a;"."
1150 s1=s1+s
1160 pi=0
1190 goto 250
1200 if z$="u-boat" then 2130
1210 print "shot fell ";abs(e);" meters short of target."
1230 goto 1590
1250 if z$="u-boat" then 2160
1260 print "shell overshot target by ";abs(e);" meters."
1280 goto 1590
1310 print "  you shot a projectile, into the air,"
1320 print "  it fell to the water, you know not where."
1330 print "but i do, you idiot, you just sank your own fleet tanker!!"
1340 s1=s1+1
1350 if p=1 then 1590
1360 goto 490
1370 print "what are you trying to do?? drill a new hatch?? the shell"
1380 print "exploded in your ship, destroying it!!!"
1385 o=o+1
1386 if o=9 then 840
1390 if p=1 then 1590
1400 goto 820
1410 print "where did u learn to type? ";b;"degrees exceeds 360 by"
1420 print b-360;" degrees."
1430 s1=s1+1
1440 if p=1 then 1590
1450 goto 490
1480 print "the enemy ";z$;" is firing on your ships!"
1490 p4=1234*rnd(rnd(0))+(rnd(0)*10)
1500 if p4>500 then 1490
1510 if p2=1 then 1600
1520 if int(p4)<100 then 1800
1530 if z$="u-boat" then 2100
1540 print "his first round fell ";int(p4);" meters short."
1560 s2=s2+1
1570 goto 490
1590 if p2=1 then 1490
1600 p1=1250*rnd(rnd(0))+(rnd(0)*10)
1610 if p1>p4 then 1600
1620 if p1<(p4-400) then 1600
1630 if p1<100 then 1710
1640 p4=p1
1650 s2=s2+1
1660 if z$="u-boat" then 2190
1670 print "the enemy round fell ";int(p1);" meters short."
1700 goto 490
1710 s2=s2+1
1720 p2=1
1730 gosub 1850
1750 print "the enemy ";z$;" sank ";d$
1760 o=o+1
1770 if o=9 then 840
1780 if d$="your last battleship!!" then 840
1790 goto 490
1800 r2=1
1810 gosub 1850
1820 print "in fact, he just sank ";d$
1830 o=o+1
1840 goto 1770
1850 restore
1860 for c=1 to (9+o)
1870 read d$
1880 next c
1890 read d$
1920 data "u-boat","210 mm shore gun","70,000 ton cruiser"
1930 data "battleship","torpedo boat","heavyfrigate"
1940 data "e-type destroyer","guided-missle ship","aircraft carrier"
1950 data "one of your destroyers!!","your heavy cruiser!!"
1960 data "another of your destroyers!!","one of your battleships!!"
1970 data "your last destroyer!!","your aircraft carrier!!"
1975 data "your light cruiser!!","your last aircraft carrier!!"
1980 data "your last battleship!!"
1990 return
2000 print "your flagship has detected a u-boat approaching at 5 ";
2005 print "phantoms."
2010 p=1
2020 goto 410
2030 print "your submarine detection equipment reads the range to the";
2031 print " target"
2040 t=int(t-1500)
2050 if t<0 then 410
2060 print "as ";t;" meters."
2080 print "the u-boat has commenced firing torpedoes at your ships."
2090 goto 1490
2100 print "his first torpedo exploded ";(int(p4)-50);" meters behind";
2105 print " your ship."
2120 goto 1560
2130 print "depth charge exploded ";abs(e);" meters short of target."
2150 goto 1590
2160 print "depth charge exploded ";abs(e);" meters aft of target."
2180 goto 1590
2190 print "the enemy torpedo exploded ";(int(p1)-50);"meters in"
2201 print "front of your ship."
2210 goto 490
2220 end
