100 print tab(33);"nim"
110 print tab(15);"creative computing  morristown, new jersey"
120 print:print:print
210 dim a(100),b(100,10),d(2)
220 print "this is the game of nim."
230 print "do you want instructions";
240 input z$
250 if z$="no" then 440
260 if z$="no" then 440
270 if z$="yes" then 310
280 if z$="yes" then 310
290 print "please answer yes or no"
300 goto 240
310 print "the game is played with a number of piles of objects."
320 print "any number of objects are removed from one pile by you and"
330 print "the machine alternately.  on your turn, you may take"
340 print "all the objects that remain in any pile, but you must"
350 print "take at least one object, and you may take objects from"
360 print "only one pile on a single turn.  you must specify whether"
370 print "winning is defined as taking or not taking the last object,"
380 print "the number of piles in the game, and how many objects are"
390 print "originally in each pile.  each pile may contain a"
400 print "different number of objects."
410 print "the machine will show its move by listing each pile and the"
420 print "number of objects remaining in the piles after  each of its"
430 print "moves."
440 print
450 print "enter win option - 1 to take last, 2 to avoid last";
460 input w
470 if w=1 then 490
480 if w<>2 then 450
490 print "enter number of piles";
500 input n
510 if n>100 then 490
520 if n<1 then 490
530 if n<>int(n) then 490
540 print "enter pile sizes"
550 for i=1 to n
560 print i;
570 input a(i)
580 if a(i)>2000 then 560
590 if a(i)<1 then 560
600 if a(i)<>int(a(i)) then 560
610 next i
620 print "do you want to move first";
630 input q9$
640 if q9$="yes" then 1450
650 if q9$="yes" then 1450
660 if q9$="no" then 700
670 if q9$="no" then 700
680 print "please answer yes or no."
690 goto 630
700 if w=1 then 940
710 let c=0
720 for i=1 to n
730 if a(i)=0 then 770
740 let c=c+1
750 if c=3 then 840
760 let d(c)=i
770 next i
780 if c=2 then 920
790 if a(d(1))>1 then 820
800 print "machine loses"
810 goto 1640
820 print "machine wins"
830 goto 1640
840 let c=0
850 for i=1 to n
860 if a(i)>1 then 940
870 if a(i)=0 then 890
880 let c=c+1
890 next i
900 if c/2<>int(c/2) then 800
910 goto 940
920 if a(d(1))=1 then 820
930 if a(d(2))=1 then 820
940 for i=1 to n
950 let e=a(i)
960 for j=0 to 10
970 let f=e/2
980 let b(i,j)=2*(f-int(f))
990 let e=int(f)
1000 next j
1010 next i
1020 for j=10 to 0 step -1
1030 let c=0
1040 let h=0
1050 for i=1 to n
1060 if b(i,j)=0 then 1110
1070 let c=c+1
1080 if a(i)<=h then 1110
1090 let h=a(i)
1100 let g=i
1110 next i
1120 if c/2<>int(c/2) then 1190
1130 next j
1140 let e=int(n*rnd(1)+1)
1150 if a(e)=0 then 1140
1160 let f=int(a(e)*rnd(1)+1)
1170 let a(e)=a(e)-f
1180 goto 1380
1190 let a(g)=0
1200 for j=0 to 10
1210 let b(g,j)=0
1220 let c=0
1230 for i=1 to n
1240 if b(i,j)=0 then 1260
1250 let c=c+1
1260 next i
1270 let a(g)=a(g)+2*(c/2-int(c/2))*2^j
1280 next j
1290 if w=1 then 1380
1300 let c=0
1310 for i=1 to n
1320 if a(i)>1 then 1380
1330 if a(i)=0 then 1350
1340 let c=c+1
1350 next i
1360 if c/2<>int(c/2) then 1380
1370 let a(g)=1-a(g)
1380 print "pile  size"
1390 for i=1 to n
1400 print i;a(i)
1410 next i
1420 if w=2 then 1450
1430 gosub 1570
1440 if z=1 then 820
1450 print "your move - pile, number to be removed";
1460 input x,y
1470 if x>n then 1450
1480 if x<1 then 1450
1490 if x<>int(x) then 1450
1500 if y>a(x) then 1450
1510 if y<1 then 1450
1520 if y<>int(y) then 1450
1530 let a(x)=a(x)-y
1540 gosub 1570
1550 if z=1 then 800
1560 goto 700
1570 let z=0
1580 for i=1 to n
1590 if a(i)=0 then 1610
1600 return
1610 next i
1620 let z=1
1630 return
1640 print "do you want to play another game";
1650 input q9$
1660 if q9$="yes" then 1720
1670 if q9$="yes" then 1720
1680 if q9$="no" then 1730
1690 if q9$="no" then 1730
1700 print "please.  yes or no."
1710 goto 1650 
1720 goto 440
1730 end
