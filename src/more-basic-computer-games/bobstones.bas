10 print tab(24);"bobstones"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
130 print:print:print
140 print "    this is a number game called bobstones.  the object of"
150 print "bobstones is to guess three things about the roll of a pair"
160 print "of dice.  on each turn, the computer simulates the roll of"
170 print "the dice.  then, you or the computer (your opponent) guess"
180 print
190 print "                                                     score"
200 print " 1. if the sum of the dice is odd or even           1 point"
210 print " 2. the sum of the dice                             2 points"
220 print " 3. the number on each of the two dice              3 points"
230 print
240 print "    the winner is the first player to score 11 points.  if a"
250 print "tie results, the winner is the first player to break the tie."
260 print "    good luck !"
270 def fnd(x)=int(6*rnd(1)+1)
280 dim a(2)
290 let a(1)=0
300 let a(2)=0
310 let z1=-1
320 let z2=-1
330 let z3=-1
340 let z4=-1
350 let z5=-1
360 let j1=0
370 print
380 print
390 print "you first or me";
400 input z$
410 if z$="you" then 450
420 if z$="me" then 450
430 print "/// type the word 'you' or the word 'me'."
440 goto 390
450 let d1=fnd(z1)
460 if z1=0 then 480
470 let z1=0
480 let d2=fnd(0)
490 let s=d1+d2
500 if j1=0 then 650
510 if z$<>"me" then 580
520 if j2<>0 then 1160
530 print
540 print "the score is me";a(2);" - you";a(1);"."
550 if a(1)>=11 then 1900
560 if a(2)>=11 then 1900
570 goto 670
580 if z$<>"you" then 2020
590 if j2<>1 then 670
600 print
610 print "the score is you";a(1);" - me";a(2);"."
620 if a(1)>=11 then 1900
630 if a(2)>=11 then 1900
650 let j1=-1
660 if z$="you" then 1160
670 print
680 print "your turn."
690 let j2=1
700 let r=s-(int(s/2)*2)
710 print "is the sum odd or even";
720 input a$
730 if a$="odd" then 770
740 if a$="even" then 800
750 print "/// type the word 'odd' or the word 'even'."
760 goto 710
770 if r=1 then 820
780 print "sorry, the sum is";s;"."
790 goto 450
800 if r=0 then 820
810 goto 780
820 print "you are correct."
830 let a(1)=a(1)+1
840 print "now, guess the sum";
850 input g1
860 if g1<2 then 890
870 if g1>12 then 890
880 goto 910
890 print "/// the sum must be between 2 and 12."
900 goto 840
910 if g1=s then 940
920 print "sorry, the sum is";s;"."
930 goto 450
940 print "you are correct."
950 let a(1)=a(1)+2
960 print "what are the two numbers which produced ";s;" ";
970 input n1,n2
980 if nk1 then 1030
990 if n2<1 then 1030
1000 if n1>6 then 1030
1010 if n2>6 then 1030
1020 goto 1050
1030 print "/// the numbers must be between 1 and 6."
1040 goto 960
1050 if n1=d1 then 1090
1060 if n2=d1 then 1110
1070 print "sorry, the numbers are";d1;" and";d2;"."
1080 goto 450
1090 if n2=d2 then 1130
1100 goto 1070
1110 if n1=d2 then 1130
1120 goto 1070
1130 print "you are correct."
1140 let a(1)=a(1)+3
1150 goto 450
1160 let j2=0
1170 print
1180 print "my turn."
1190 print "*** on this roll of the dice, the two numbers ";
1195 print "are ";d1;" and ";d2;"."
1200 print "*** the sum is ";s;"."
1210 let a1=int(2*rnd(1)+1)
1220 if z2=0 then 1240
1230 let z2=0
1240 if a1=1 then 1270
1250 print "my guess is that the sum is odd."
1260 goto 1280
1270 print "my guess is that the sum is even."
1280 print "am i right or wrong";
1290 input d$
1300 if d$="right" then 1340
1310 if d$="wrong" then 450
1320 print "/// type the word 'right' or the word 'wrong'."
1330 goto 1280
1340 let a(2)=a(2)+1
1350 if a1=1 then 1410
1360 let b1=int(5*rnd(1)+1)
1370 if z3=0 then 1390
1380 let z3=0
1390 let b2=b1+b1+1
1400 goto 1430
1410 let b1=fnd(0)
1420 let b2=b1+b1
1430 print "my guess of the sum is ";b2
1440 print "am i right or wrong";
1450 input d$
1460 if d$="right" then 1500
1470 if d$="wrong" then 450
1480 print "/// type the word 'right' or the word 'wrong'."
1490 goto 1440
1500 let a(2)=a(2)+2
1510 if b2<>2 then 1550
1520 let c1=1
1530 let c2=1
1540 goto 1810
1550 if b2<>3 then 1590
1560 let c1=1
1570 let c2=2
1580 goto 1810
1590 if b2<>11 then 1630
1600 let c1=5
1610 let c2=6
1620 goto 1810
1630 if b2<>12 then 1670
1640 let c1=6
1650 let c2=6
1660 goto 1810
1670 if b2>7 then 1740
1680 let k1=b2-1
1690 let c1=int(k1*rnd(1)+1)
1700 if z4=0 then 1720
1710 let z4=0
1720 let c2=b2-c1
1730 goto 1810
1740 let k1=b2-6
1750 let k3=k1-1
1760 let k2=7-k1
1770 let c1 = (int(k2*rnd(1)+1)+k3)
1780 if z5=0 then 1800
1790 let z5=0
1800 let c2=b2-c1
1810 print "my guess is that the numbers are ";c1;" and ";c2;"."
1820 print "am i right or wrong";
1830 input d$
1840 if d$="right" then 1880
1850 if d$="wrong" then 450
1860 print "/// type the word 'right' or the word 'wrong'."
1870 goto 1820
1880 let a(2)=a(2)+3
1890 goto 450
1900 if a(1)<>a(2) then 1930
1910 if j2<>0 then 1160
1920 goto 670
1930 if a(1)>a(2) then 2030
1940 print
1950 print "i win! another game";
1960 input c$
1970 if c$="yes" then 290
1980 if c$="no" then 2010
1990 print "/// type the word 'yes' or the word 'no'."
2000 goto 1960
2010 print "see you later."
2020 end
2030 print
2040 print "you win! another game";
2050 goto 1960
