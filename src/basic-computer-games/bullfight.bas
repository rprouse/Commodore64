10 print tab(34);"bull"
20 print tab(15);"creative computing  morristown, new jersey"
30 def fna(k)=int(rnd(1)*2+1)
200 print:print:print
202 l=1
205 print "do you want instructions";
206 input z$
207 if z$="no" then 400
210 print "hello, all you bloodlovers and aficionados."
220 print "here is your big chance to kill a bull."
230 print
240 print "on each pass of the bull, you may try"
250 print "0 - veronica (dangerous inside move of the cape)"
260 print "1 - less dangerous outside move of the cape"
270 print "2 - ordinary swirl of the cape."
280 print
290 print "instead of the above, you may try to kill the bull"
300 print "on any turn: 4 (over the horns), 5 (in the chest)."
310 print "but if i were you,"
320 print "i wouldn't try it before the seventh pass."
330 print
340 print "the crowd will determine what award you deserve"
350 print "(posthumously if necessary)."
360 print "the braver you are, the better the award you receive."
370 print
380 print "the better the job the picadores and toreadores do,"
390 print "the better your chances are."
400 print
410 print
420 d(5)=1
430 d(4)=1
450 dim l$(5)
455 a=int(rnd(1)*5+1)
460 for i=1 to 5
463 read l$(i)
467 next i
470 data "superb","good","fair","poor","awful"
490 print "you have drawn a ";l$(a);" bull."
500 if a>4 then 530
510 if a<2 then 550
520 goto 570
530 print "you're lucky."
540 goto 570
550 print "good luck.  you'll need it."
560 print
570 print
590 a$="picado"
595 b$="res"
600 gosub 1610
610 d(1)=c
630 a$="toread"
635 b$="ores"
640 gosub 1610
650 d(2)=c
660 print
670 print
680 if z=1 then 1310
690 d(3)=d(3)+1
700 print "pass number";d(3)
710 if d(3)<3 then 760
720 print "here comes the bull.  try for a kill";
730 gosub 1930
735 if z1=1 then 1130
740 print "cape move";
750 goto 800
760 print "the bull is charging at you!  you are the matador--"
770 print "do you want to kill the bull";
780 gosub 1930
785 if z1=1 then 1130
790 print "what move do you make with the cape";
800 input e
810 if e<>int(abs(e)) then 830
820 if e<3 then 850
830 print "don't panic, you idiot!  put down a correct number"
840 goto 800
850 rem
860 if e=0 then 920
870 if e=1 then 900
880 m=.5
890 goto 930
900 m=2
910 goto 930
920 m=3
930 l=l+m
940 f=(6-a+m/10)*rnd(1)/((d(1)+d(2)+d(3)/10)*5)
950 if f<.51 then 660
960 print "the bull has gored you!"
970 on fna(0) goto 980,1010
980 print "you are dead."
990 d(4)=1.5
1000 goto 1310
1010 print "you are still alive.":print
1020 print "do you run from the ring";
1030 gosub 1930
1035 if z1=2 then 1070
1040 print "coward"
1050 d(4)=0
1060 goto 1310
1070 print "you are brave.  stupid, but brave."
1080 on fna(0) goto 1090,1110
1090 d(4)=2
1100 goto 660
1110 print "you are gored again!"
1120 goto 970
1130 rem
1140 z=1
1150 print:print "it is the moment of truth.":print
1155 print "how do you try to kill the bull";
1160 input h
1170 if h=4 then 1230
1180 if h=5 then 1230
1190 print "you panicked.  the bull gored you."
1220 goto 970
1230 k=(6-a)*10*rnd(1)/((d(1)+d(2))*5*d(3))
1240 if h=4 then 1290
1250 if k>.2 then 960
1260 print "you killed the bull!"
1270 d(5)=2
1280 goto 1320
1290 if k>.8 then 960
1300 goto 1260
1310 print
1320 print
1330 print
1340 if d(4)<>0 then 1390
1350 print "the crowd boos for ten minutes.  if you ever dare to show"
1360 print "your face in a ring again, they swear they will kill you--"
1370 print "unless the bull does first."
1380 goto 1580
1390 def fnc(q)=fnd(q)*rnd(1)
1395 def fnd(q)=(4.5+l/6-(d(1)+d(2))*2.5+4*d(4)+2*d(5)-d(3)^2/120-a)
1400 if d(4)<>2 then 1430
1410 print "the crowd cheers wildly!"
1420 goto 1450
1430 if d(5)<>2 then 1450
1440 print "the crowd cheers!":print
1450 print "the crowd awards you"
1460 if fnc(q)<2.4 then 1570
1470 if fnc(q)<4.9 then 1550
1480 if fnc(q)<7.4 then 1520
1500 print "ole!  you are 'muy hombre'!! ole!  ole!"
1510 goto 1580
1520 print "both ears of the bull!"
1530 print "ole!"
1540 goto 1580
1550 print "one ear of the bull."
1560 goto 1580
1570 print "nothing at all."
1580 print
1590 print "adios":print:print:print
1600 goto 2030
1610 b=3/a*rnd(1)
1620 if b<.37 then 1740
1630 if b<.5 then 1720
1640 if b<.63 then 1700
1650 if b<.87 then 1680
1660 c=.1
1670 goto 1750
1680 c=.2
1690 goto 1750
1700 c=.3
1710 goto 1750
1720 c=.4
1730 goto 1750
1740 c=.5
1750 t=int(10*c+.2)
1760 print "the ";a$;b$;" did a ";l$(t);" job."
1770 if 4>t then 1900
1780 if 5=t then 1870
1790 on fna(k) goto 1830,1850
1800 if a$="toread" then 1820
1810 print "one of the horses of the ";a$;b$;" was killed."
1820 on fna(k) goto 1830,1850
1830 print "one of the ";a$;b$;" was killed."
1840 goto 1900
1850 print "no ";a$;b$;" were killed."
1860 goto 1900
1870 if a$="toread" then 1890
1880 print fna(k);"of the horses of the ";a$;b$;" killed."
1890 print fna(k);"of the ";a$;b$;" killed."
1900 print
1910 return
1920 rem
1930 input a$
1940 if a$="yes" then 1990
1950 if a$="no" then 2010
1970 print "incorrect answer - - please type 'yes' or 'no'."
1980 goto 1930
1990 z1=1
2000 goto 2020
2010 z1=2
2020 return
2030 end
