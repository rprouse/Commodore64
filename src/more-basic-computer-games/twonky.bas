10 print tab(24);"twonky"
20 print tab(18);"creative computing"
30 print tab(16);"morristown  new jersey"
40 print:print:print
140 gosub 2250
150 dim a(15,15)
160 let r9=0
170 gosub 1830
180 print "------------------------------------------"
190 print
200 gosub 1450
210 print
220 print "move or shoot (m/s)";
230 input q8$
240 if q8$="m" then 270
250 if q8$="s" then 950
260 goto 210
270 print "which way (f/b/r/l)";
280 input q$
290 if q$="f" then 340
300 if q$="b" then 370
310 if q$="l" then 400
320 if q$="r" then 430
330 goto 210
340 let x5=x
350 let y5=y-1
360 goto 460
370 let x5=x
380 let y5=y+1
390 goto 460
400 let x5=x-1
410 let y5=y
420 goto 460
430 let x5=x+1
440 let y5=y
450 goto 460
460 if x5<1 then 510
470 if x5>15 then 510
480 if y5<1 then 510
490 if y5>15 then 510
500 goto 540
510 print "that move takes you out of the maze."
520 print "move not allowed."
530 goto 1430
540 on (a(x5,y5)+1) goto 550,620,630,660,760,800,920
550 rem *** empty space
560 let a(x,y)=0
570 let a(x5,y5)=1
580 let x=x5
590 let y=y5
600 print "move allowed."
610 goto 1430
620 rem *** impossible to get here
630 rem *** blocked space routine.
640 print "that space is blocked."
650 goto 1430
660 rem *** relocation routine.
670 print "you've been   r e l o c a t e d !!!"
680 gosub 2710
690 if a(z,w)>2 then 540
700 if a(z,w) <> 0 then 680
710 let a(z,w)=1
720 let a(x,y)=0
730 let x=z
740 let y=w
750 goto 1430
760 rem *** change all, super trap.
770 print "   you hit the super trap!! you get a new maze."
780 gosub 1830
790 goto 1430
800 rem *** he won!
810 print
820 print "i don't believe it but you won the game!"
830 print "you got to the objective before"
840 print "   the twonky got you!!"
850 print
860 print
870 print "try again (y/n)";
880 input q$
890 if q$="y" then 160
900 if q$="n" then 2750
910 goto 870
920 rem *** he landed on twonky!]
930 print "you stepped on the twonky!"
940 goto 1790
950 rem *** shoot routine
960 print "which may (f/b/r/l)";
970 input q$
980 if q$="f" then 1030
990 if q$="b" then 1060
1000 if q$="r" then 1120
1010 if q$="l" then 1090
1020 goto 210
1030 let s1=0
1040 let s2=-1
1050 goto 1140
1060 let s1=0
1070 let s2=1
1080 goto 1140
1090 let s1=-1
1100 let s2=0
1110 goto 1140
1120 let s1=1
1130 let s2=0
1140 let r1=x
1150 let r2=y
1160 let r1=r1+s1
1170 let r2=r2+s2
1180 print "z a p --";
1190 if r1 < 1 then 1240
1200 if r1 > 15 then 1240
1210 if r2 < 1 then 1240
1220 if r2 > 15 then 1240
1230 goto 1280
1240 print "fizzle..."
1250 print "shot left maze."
1260 print "shot missed."
1270 goto 1430
1280 if a(r1,r2) <>2 then 1330
1290 print "blast!!!!"
1300 print "you hit wall."
1310 print "shot missed."
1320 goto 1430
1330 if a(r1,r2) <> 6 then 1160
1340 print " ouch!!"
1350 print "twonky retreates."
1360 let a (r1,r2)=r9
1370 gosub 2710
1380 if a(z,w) <> 0 then 1370
1390 let a(z,w)=6
1410 let x1=z
1420 let y1=w
1430 gosub 1450
1440 goto 1570
1450 rem *** pribnt twonky and objective distance
1455 print
1460 print "the twonky is ";
1470 d=(sqr(abs((x1-x)^2+(y1-y)^2)))
1490 print d;
1500 print " units away."
1510 print "the objective is ";
1520 d1=(sqr(abs(x2-x)^2+(y2-y)^2))
1530 print d1;
1540 print " units away."
1550 print
1560 return
1570 rem *** twonkys logic
1580 if d<2 then 1790
1590 let z2=y1
1600 let z1=x1
1610 if x < x1 then 1680
1620 if x > x1 then 1700
1630 if y < y1 then 1660
1640 let z2=y1+1
1650 goto 1710
1660 let z2=y1-1
1670 goto 1710
1680 let z1=x1-1
1690 goto 1710
1700 let z1=x1+1
1710 let a(x1,y1)=r9
1720 let r9=a(z1,z2)
1730 let a(z1,z2)=6
1740 let x1=z1
1750 let y1=z2
1760 print "twonky moves...."
1770 gosub 1450
1780 if d >= 2 then 210
1790 print
1800 print "> > > schloorp !!! < < <"
1810 print "the twonky just absorbed you !! you lose."
1820 goto 850
1830 rem *** set up new maze routine
1840 rem *** 1=player, 2=blocked spaces
1850 rem *** 3=relocations, 4=super trap
1860 rem *** 5=objective, 6=twonky
1870 rem *** 0-empty spaces
1880 rem *** clear maze
1883 for b0=1 to 15
1885 for b1=1 to 15
1890 let a(b0,b1)=0
1893 next b1
1895 next b0
1910 for i=1 to 30
1920 gosub 2710
1930 if a(z,w) <> 0 then 1920
1940 let a(z,w)=2
1950 next i
1960 rem *** place relocations
1970 for i=1 to 22
1980 gosub 2710
1990 if a(z,w) <> 0 then 1980
2000 let a(z,w)=3
2010 next i
2020 rem *** place the special trap
2030 gosub 2710
2040 if a(z,w) <> 0 then 2030
2050 let a(z,w)=4
2060 rem *** place the player
2070 gosub 2710
2080 if a(z,w) <> 0 then 2070
2090 let a(z,w)=1
2100 let x=z
2110 let y=w
2120 rem *** place the objective
2130 gosub 2710
2140 if a(z,w) <> 0 then 2130
2150 let a(z,w)=5
2160 let x2=z
2170 let y2=w
2180 rem *** place the twonky
2190 gosub 2710
2200 if a(z,w) <> 0 then 2190
2210 let a(z,w)=6
2220 let x1=z
2230 let y1=w
2240 return
2250 rem
2310 print "do you want instructions (y/n)";
2320 input q$
2330 if q$="n" then 2700
2340 if q$ <> "y" then 2310
2350 print:print:print
2380 print "this is the game of twonky."
2410 print "you have landed on the planet of twinky and"
2420 print "its king (kong:their king is king kong) has "
2430 print "captured you. he has put you in a maze that is"
2440 print "15 * 15 units long. you are in the dark and cannot"
2450 print "see... you must get to the objective square and"
2460 print "be set free."
2470 print
2480 print "     hazards include:"
2490 print "squares that you cannot go into (30)."
2500 print "squares that randomly throw you around the maze (22)."
2510 print "square that sets up a new maze and all that's in it (1)"
2520 print "monster called twonky that chases you and will"
2530 print "    absorb you if the distance it is from you falls"
2540 print "    below 2 units."
2550 print "    twonky is also immune to all traps including"
2560 print "      walls."
2570 print
2590 print "    you can:"  
2600 print "move one square at a time to find the objective"
2610 print "     or escape fron the twonky."
2620 print "shoot at the twonky one direction at a time."
2630 print "  if the twonky is hit, he will be replaced in the"
2640 print "        maze randomly."
2645 print
2650 print "if the twonky absorbs you...you lose."
2660 print " if you land on the objective square you win."
2670 print
2680 print "good luck!"
2690 print
2700 return
2710 rem *** subroutine to get 2 random numbers
2720 let z=int(rnd(1)*15+1)
2730 let w=int(rnd(1)*15+1)
2740 return
2750 end
