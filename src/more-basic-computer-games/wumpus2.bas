3 print tab(25);"wumpus 2"
4 print tab(20);"creative computing"
5 print tab(18);"morristown  new jersey"
7 print
10 print
15 print
20 rem- wumpus version 2
30 dim s(20,3)
40 dim l(6),m(6),p(5)
50 print "instructions";
60 input i$
70 print
80 if left$(i$,1) <> "y" then 130
100 gosub 700
110 rem- choose and set up cave
130 gosub 2530
140 def fna(x)=int(20*rnd(1))+1
150 def fnb(x)=int(3*rnd(1))+1
160 def fnc(x)=int(4*rnd(1))+1
170 rem locate l array items
180 rem 1-you, 2-wumpus, 3&4-pits, 5&6-bats
210 for j=1 to 6
220 l(j)=fna(0)
230 h(j)=l(j)
240 next j
250 rem check for crossovers (ie l(1)=l<2) etc)
260 for j=1 to 6
270 for k=j to 6
280 if j=k then 300
290 if l(j)=l(k) then 210
300 next k
310 next j
320 rem set # arrows
330 a=5
340 l=l(1)
350 rem- run the game
360 print "hunt the wumpus"
370 rem-hazards warnings and location
380 gosub 1230
390 rem move or shoot
400 gosub 1400
410 on o goto 430,470
420 rem shoot
430 gosub 1550
440 if f=0 then 400
450 goto 490
460 rem move
470 gosub 2150
480 if f=0 then 380
490 if f > 0 then 540
500 rem lose
510 print "ha ha ha - you loose!"
520 goto 550
530 rem win
540 print "hee hee hee - the wumpus'll get you next time!!"
550 for j=1 to 6
560 l(j)=m(j)
570 next j
580 print "play again";
590 input i$
595 print
600 print
620 if left$(i$,1) <> "y" then 3310
640 print "same set-up ";
650 input i$
660 print
670 if left$(i$,1) <> "y" then 130
680 goto 330
700 rem- instructions
710 print "welcome to wumpus ii"
720 print "this version has the same rules as 'hunt the wumpus'."
730 print "however, you nou have a choice of caves to play in."
740 print "some caves are easier than others. all caves have 20"
750 print "rooms and 3 tunnels leading from one room to other rooms."
760 print "the caves are:"
770 print "  0  -  dodecahedron   the rooms of this cave are on a"
780 print "        12-sided object, each forming a pentagon."
790 print "        the rooms are at the corners of the pentagons."
800 print "        each room having tunnels that lead to 3 other rooms"
805 print
810 print "  1  -  mobius strip   this cave is two rooms"
820 print "        wide and 10 rooms around (like a belt)"
830 print "        you will notice there is a half twist"
840 print "        somewhere."
850 print
860 print "  2  -  string of beads   five beads in a circle."
870 print "        each bead is a diamond with a vertical"
880 print "        cross-bar. the right & left corners lead"
890 print "        to neighboring beads. (this one is difficult"
900 print "        to play)"
910 print
920 print "  3  -  hex nework   imagine a hex tile floor. take"
930 print "        a rectangle with 20 points (intersections)"
940 print "        inside (4x4). join right 2 left sides to make a"
950 print "        cylinder. then join top & bottom to form a"
960 print "        torus (doughnut)."
970 print "        have fun imagining this one!!"
980 print
990 print "  caves 1-3 are regular in a sense that each room"
1000 print "goes to three other rooms & tunnels allow two-"
1010 print "way traffic. here are some 'irregular' caves:"
1020 print
1030 print "  4  -  dendrite with degeneracies   pull a plant from"
1040 print "        the ground. the roots & branches form a "
1050 print "        dendrite - ie., there are no looping paths"
1060 print "        degeneracy means a) some rooms connect to"
1070 print "        themselves and b) some rooms have more than one"
1080 print "        tunnel to the same other room ie, 12 has "
1090 print "        two tunnels to 13."
1100 print
1110 print "  5  -  one way lattice     here all tunnels go one"
1120 print "        way only. to return, you must go around the cave"
1130 print "        (about 5 moves)."
1140 print
1160 print "  6  -  enter your own cave    the computer will ask you"
1170 print "        the rooms next to each room in the cave."
1180 print "          for example:"
1190 print "           room #1     ? 2,3,4       - your reply of 2,3,4"
1200 print "            means room 1 has tunnels going to rooms:"
1210 print "            2, 3, & 4."
1220 print "  happy hunting!"
1225 return
1230 rem
1240 print
1250 for j=2 to 6
1260 for k=1 to 3
1270 if s(l(1),k) <> l(j) then 1340
1280 on j-1 goto 1290,1310,1310,1330,1330
1290 print "i shell a wumpus!"
1300 goto 1340
1310 print "i feel a draft!"
1320 goto 1340
1330 print "bats nearby!"
1340 next k
1350 next j
1360 print "you are in room ";l(1);
1370 print " tunnels lead to ";s(l,1);s(l,2);s(l,3)
1380 print
1390 return
1400 rem- choose option
1410 goto 1450
1420 print "error   ";
1430 input z9
1440 print "";
1450 print "shoot or move ";
1460 input i$
1470 print
1490 if left$(i$,1) <> "s" then 1520
1500 o=1
1510 return
1520 if left$(i$,1) <> "m" then 1420
1530 o=2
1540 return
1550 rem- arrow routine
1560 f=0
1570 rem- path of arrow
1590 goto 1630
1600 print "error   ";
1610 input z9
1620 print "";
1630 print "no. of rooms ";
1640 input j9
1650 print
1670 if j9 < 1 or j9 > 5 or int(j9) <> abs(j9) then 1600
1680 for k=1 to j9
1690 print "room #";
1700 input p(k)
1710 print
1730 if p(k) > 0 and p(k) < 21 and int(p(k))=abs(p(k)) then 1780
1740 print "error  ";
1750 input z9
1760 print "";
1770 goto 1690
1780 next k
1790 print
1800 rem -  shoot arrow
1810 a=a-j9
1820 a9=l(1)
1830 for k=1 to j9
1840 for k1=1 to 3
1850 if s(a9,k1)=p(k) then 1990
1860 next k1
1870 rem -  no tunnel for the arrow
1880 a9=s(a9,fnb(1))
1890 goto 2000
1900 next k
1910 print "missed"
1920 rem -  move wumpus
1930 gosub 2070
1940 rem -  ammo check
1950 if a > 0 then 1970
1955 print "you have used all of your arrows."
1960 f=-1
1970 return
1980 rem -  see if arrow is at l[1] ot l[2]
1990 a9=p(k)
2000 if a9 <> l(2) then 2040
2010 print "aha! you got the wumpus! he was in room";l(2)
2020 f=1
2030 return
2040 if a9 <> l(1) then 1900
2050 print "ouch! arrow got you!"
2060 goto 1960
2070 rem -  move wumpus routine
2080 k=fnc(0)
2090 if k=4 then 2140
2100 l(2)=s(l(2),k)
2110 if l(2) <> l then 2140
2120 print "tsk tsk tsk- wumpus got you!"
2130 f=-1
2140 return
2150 rem -  move routine
2160 f=0
2170 goto 2210
2180 print "error   ";
2190 input z9
2200 print "";
2210 print "where to ";
2220 input l
2230 print
2240 if l < 1 or l > 20 or abs(l) <> int(l) then 2180
2250 for k=1 to 3
2260 rem -  check if legal move
2270 if s(l(1),k)=l then 2350
2280 next k
2290 if l=l(1) then 2350
2300 print "not possible - ";
2310 input z9
2320 print "";
2330 goto 2210
2340 rem -  check for hazards
2350 l(1)=l
2360 rem -  wumpus
2370 if l <> l(2) then 2430
2380 print "... oops! bumped a wumpus!"
2390 rem -  move a wumpus
2400 gosub 2080
2410 if f=0 then 2430
2420 rem -  pit
2430 if l <> l(3) and l <> l(4) then 2480
2440 print "yyyiiieeee . . . fell in a pit"
2450 f=-1
2460 return
2470 rem -  bats
2480 if l <> l(5) and l <> l(6) then 2520
2490 print "zap--super bat snatch! elsewheresville for you!"
2500 l=fna(1)
2510 goto 2350
2520 return
2530 rem -  select cave
2540 goto 2580
2550 print "error   ";
2560 input z9
2570 print "";
2580 print "cave #(0-6) ";
2585 restore
2590 input n
2600 print
2620 if n<0 or n>6 or int(n) <> abs(n) then 2550
2630 on n+1 gosub 2650,2730,2810,2890,2970,3050,3130
2640 return
2650 rem -  dodecahedron
2670 data 2,5,8,1,3,10,2,4,12,3,5,14,1,4,6
2680 data 5,7,15,6,8,17,1,7,9,8,10,18,2,9,11
2690 data 10,12,19,3,11,13,12,14,20,4,13,15,6,4,16
2700 data 15,17,20,7,16,18,9,17,19,11,18,20,13,16,19
2710 gosub 3240
2720 return
2730 rem -  mobius strip
2735 for b1=1 to 1
2737 for b2=1 to 60
2740 read b0
2742 next b2
2744 next b1
2750 data 20,2,3,19,1,4,1,4,5,2,3,6,3,6,7
2760 data 4,5,8,5,8,9,6,7,10,7,10,11,8,9,12
2770 data 9,12,13,10,11,14,11,14,15,12,13,16,12,16,17
2780 data 14,15,18,15,18,19,16,17,20,2,17,20,1,18,19
2790 gosub 3240
2800 return
2810 rem -  string of beads
2815 for b1=1 to 2
2817 for b2=1 to 60
2820 read b0
2822 next b2
2824 next b1
2830 data 2,3,20,1,3,4,1,2,4,2,3,5,4,6,7
2840 data 5,7,8,5,6,8,6,7,9,8,10,11,9,11,12
2850 data 9,10,12,10,11,13,12,14,15,13,15,16,13,14,16
2860 data 14,15,17,16,18,19,17,19,20,17,18,20,1,18,19
2870 gosub 3240
2880 return
2890 rem - hex nut on torus
2895 for b1=1 to 3
2897 for b2=1 to 60
2900 read b0
2902 next b2
2904 next b1
2910 data 6,10,16,6,7,17,7,8,18,8,9,19,9,10,20
2920 data 1,2,15,2,3,11,3,4,12,4,5,13,5,6,14
2930 data 7,16,20,8,16,17,9,17,18,10,18,19,6,19,20
2940 data 1,11,12,2,12,13,3,13,14,4,14,15,5,11,15
2950 gosub 3240
2960 return
2970 rem -  dendrite w/ degeneracies
2975 for b1=1 to 4
2977 for b2=1 to 60
2980 read b0
2982 next b2
2984 next b1
2990 data 1,1,5,2,2,5,3,3,6,4,4,6,1,2,7
3000 data 3,4,7,5,6,10,8,9,9,8,8,10,7,9,11
3010 data 10,13,14,12,13,13,11,12,12,11,15,16,14,17,18
3020 data 14,19,20,15,17,17,15,18,18,16,19,19,16,20,20
3030 gosub 3240
3040 return
3050 rem -  one way lattice
3055 for b1=1 to 5
3057 for b2=1 to 60
3060 read b0
3062 next b2
3064 next b1
3070 data 5,4,8,1,5,6,2,6,7,3,7,8,8,9,12
3080 data 5,9,10,6,10,11,7,11,12,12,13,16,9,13,14
3090 data 10,14,15,11,15,16,16,17,20,13,17,18,14,18,19
3100 data 15,19,20,1,4,20,1,2,17,2,3,18,3,4,19
3110 gosub 3240
3120 return
3130 rem -  input your own cave
3140 for j=1 to 20
3150 print "room #";j;
3160 input s(j,1),s(j,2),s(j,3)
3170 for k=1 to 3
3180 if s(j,k) > 0 and s(j,k) < 21 and abs(s(j,k))=abs(s(j,k)) then3210
3190 print "***** error!!!!!"
3200 goto 3150
3210 next k
3220 next j
3230 return
3240 rem -  input cave
3250 for j=1 to 20
3260 for k=1 to 3
3270 read s(j,k)
3280 next k
3290 next j
3300 return
3310 end
