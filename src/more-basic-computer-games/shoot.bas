10 print tab(26);"shoot"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
110 input "do you want instructions";a$
120 if left$(a$,1)<>"y" goto 440
130 print
140 print " it is the final hour of man. you and a warring nation"
150 print "have entered into a last contest. all the life now left on"
160 print "earth are you and your enemy. both he and you have found the"
170 print "last remaining atomic missile silo matrices established by"
180 print "the now-dead superpowers. he, like you, wishes not to die"
190 print "but to live in peace."
200 print " however it has become apparent that he feels his peace"
210 print "threatened and is preparing an attack. both you and he have"
220 print "scanners that will warn you of his movements and track the"
230 print "flight of his atomic missiles, thus he is working slowly."
240 print "the enemy, like yourself, has a missile grid nearly"
250 print "identical in structure and operation to yours, because you"
260 print "are the only one left, it will be necessary to fire all your"
270 print "missiles manually. once the fuse is set, you must flee the"
280 print "area and get two grid units away. you may never return to"
290 print "this spot, or a spot where a missile has landed; the"
300 print "radiation is intense and would mean an instant, painful"
310 print "death."
320 print " so the stage has been set. there is peace until the"
330 print "sign that the enemy has moved to his missile range. he will"
340 print "fire every time you will, and do so until one of you is"
350 print "destroyed."
360 print " each time a round of missiles has been fired, the"
370 print "scanners will report the status of both your's and the enemy's"
380 print "grid territory. it will show all areas that have had either"
390 print "a missile hit or a missile fired from it. with this"
400 print "continually updated map, you may be able to inductively"
410 print "discover or trap your opponent. beware, he will be trying to"
420 print "do the same to you."
430 print
440 g$="  -12345678910"
450 c$="scanner computer: "
460 s$=""
470 for x=1 to 14
480 s$=s$+" "
490 next x
510 dim i(10,10),h(10,10),t(8,2),p(8,2)
520 data 10,10 , 1,1 , 10,1 , 1,10 , 10,9 , 9,10 , 1,2 , 2,1
530 data -2,-2 , 0,-2, 2,-2, 2,0 , 2,2 , 0,2 ,-2,2 ,-2,0
540 r=int(rnd(1)*8+1)
550 for x=1 to r
560 read a,b
570 next x
580 for x=1 to 10
590 for y=1 to 10
600 i(x,y)=0
610 h(x,y)=0
620 next y
630 next x
640 if a=2 goto 690
650 for x=1 to 8
660 read c,d
670 if c=2 goto 690
680 next x
690 for x=1 to 8
700 for y=1 to 2
710 read p(x,y)
720 next y
730 next x
740 print c$;"enemy activity on grid at";a;",";b
750 print
760 input "your starting co-ordinates";e,f
770 if e<1 or e>10 or f<1 or f>10 goto 760
780 z=1
790 i(e,f)=1
800 h(a,b)=1
810 print
820 goto 1490
830 input "missile co-ordinates";m,n
840 if m<1 or m>10 or n<1 or n>10 goto 830
850 input "where to move to";s,t
860 if s<1 or s>10 or t<1 or t>10 goto 850
870 if i(s,t) = 1 goto 850
880 for x=1 to 8
890 if p(x,1)+e=s and p(x,2)+f=t goto 920
900 next x
910 goto 850
920 print
930 l=1
940 for x=1 to 8
950 if p(x,1)+e>10 or p(x,1)+e<1 or p(x,2)+f>10 or p(x,2)+f<1 goto 1000
960 if  i(p(x,1)+e,p(x,2)+f)=1 goto 1000
970 t(l,1)=p(x,1)+e
980 t(l,2)=p(x,2)+f
990 l=l+1
1000 next x
1010 l=l-1
1020 if l<>1 goto 1060
1030 c=t(l,1)
1040 d=t(l,2)
1050 goto 1090
1060 g=int(rnd(1)*l+1)
1070 c=t(g,1)
1080 d=t(g,2)
1090 l=1
1100 for x=1 to 8
1110 if p(x,1)+a>10orp(x,1)+a<1 or p(x,2)+b>10orp(x,2)+b<1 then 1160
1120 if h(p(x,1)+a,p(x,2)+b)=1 goto 1160
1130 t(l,1)=p(x,1)+a
1140 t(l,2)=p(x,2)+b
1150 l=l+1
1160 next x
1170 l=l+1
1180 if l<>0 goto 1220
1190 print c$;"the enemy has cornered himself in!!"
1200 z=0
1204 c=e
1207 d=f
1210 goto 1290
1220 if l<>1 goto 1260
1230 j=t(1,1)
1240 k=t(1,2)
1250 goto 1290
1260 g=int(rnd(1)*l+1)
1270 j=t(g,1)
1280 k=t(g,2)
1290 i(e,f)=1
1300 h(a,b)=1
1310 i(c,d)=1
1320 h(m,n)=1
1330 if m<>j or d<>t goto 1390
1340 print c$j"hey! you got him!!"
1350 z=0
1360 if c<>s or d<>t goto 1390
1370 print c$;"you moved right under his missile!!"
1380 z=0
1390 e=s
1400 f=t
1410 a=j
1420 b=k
1430 for x=1 to 8
1440 if p(x,1)+e>10orp(x,1)+e<1 or p(x,2)+f>10orp(x,2)+f<1 goto 1460
1450 if i(p(x,1)+e,p(x,2)+f)=0 goto 1490
1460 next x
1470 print c$;"fool! you have boxed yourself into a corner!!"
1480 z=0
1490 print " your territory ","enemy territory"
1500 print
1510 print g$;s$;g$
1520 for x=1 to 10
1530 if x=10 goto 1560
1540 print x;
1550 goto 1570
1560 print "10 ";
1570 for y=1 to 10
1580 if i(x,y)=1 goto 1610
1590 print ":";
1600 goto 1620
1610 print "*";
1620 next y
1630 print " ";s$;
1640 if x=10 goto 1670
1650 print x;
1660 goto 1680
1670 print "10 ";
1680 for y=1 to 10
1690 if h(x,y)=1 goto 1720
1700 print ":";
1710 goto 1730
1720 print "*";
1730 next y
1740 print
1750 next x
1760 print
1770 if z=1 goto 830
1780 end
