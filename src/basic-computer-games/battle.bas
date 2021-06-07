5 print tab(33);"battle"
7 print tab(15);"creative computing  morristown, new jersey"
10 rem -- battle written by ray westergard  10/70
20 rem copyright 1971 by the regents of the univ. of calif.
30 rem produced at the lawrence hall of science, berkeley
40 dim f(6,6),h(6,6),a(4),b(4),c(6),l(3)
50 for x=1 to 6
51 for y=1 to 6
52 f(x,y)=0
53 next y
54 next x
60 for i=1 to 3
70 n=4-i
80 for j=1 to 2
90 a=int(6*rnd(1)+1)
100 b=int(6*rnd(1)+1)
110 d=int(4*rnd(1)+1)
120 if f(a,b)>0 then 90
130 m=0
140 on d goto 150,340,550,740
150 b(1)=b
160 b(2)=7:b(3)=7
170 for k=1 to n
180 if m>1 then 240
190 if b(k)=6 then 230
200 if f(a,b(k)+1)>0 then 230
210 b(k+1)=b(k)+1
220 goto 280
230 m=2
240 if b(1)<b(2) and b(1)<b(3) then z=b(1)
242 if b(2)<b(1) and b(2)<b(3) then z=b(2)
244 if b(3)<b(1) and b(3)<b(2) then z=b(3)
250 if z=1 then 90
260 if f(a,z-1)>0 then 90
270 b(k+1)=z-1
280 next k
290 f(a,b)=9-2*i-j
300 for k=1 to n
310 f(a,b(k+1))=f(a,b)
320 next k
330 goto 990
340 a(1)=a
350 b(1)=b
360 a(2)=0:a(3)=0:b(2)=0:b(3)=0
370 for k=1 to n
380 if m>1 then 460
390 if a(k)=1 or b(k)=1 then 450
400 if f(a(k)-1,b(k)-1)>0 then 450
410 if f(a(k)-1,b(k))>0 and f(a(k)-1,b(k))=f(a(k),b(k)-1) then 450
420 a(k+1)=a(k)-1
430 b(k+1)=b(k)-1
440 goto 530
450 m=2
460 if a(1)>a(2) and a(1)>a(3) then z1=a(1)
462 if a(2)>a(1) and a(2)>a(3) then z1=a(2)
464 if a(3)>a(1) and a(3)>a(2) then z1=a(3)
470 if b(1)>b(2) and b(1)>b(3) then z2=b(1)
474 if b(2)>b(1) and b(2)>b(3) then z2=b(2)
476 if b(3)>b(1) and b(3)>b(2) then z2=b(3)
480 if z1=6 or z2=6 then 90
490 if f(z1+1,z2+1)>0 then 90
500 if f(z1,z2+1)>0 and f(z1,z2+1)=f(z1+1,z2) then 90
510 a(k+1)=z1+1
520 b(k+1)=z2+1
530 next k
540 goto 950
550 a(1)=a
560 a(2)=7:a(3)=7
570 for k=1 to n
580 if m>1 then 640
590 if a(k)=6 then 630
600 if f(a(k)+1,b)>0 then 630
610 a(k+1)=a(k)+1
620 goto 680
630 m=2
640 if a(1)<a(2) and a(1)<a(3) then z=a(1)
642 if a(2)<a(1) and a(2)<a(3) then z=a(2)
644 if a(3)<a(1) and a(3)<a(2) then z=a(3)
650 if z=1 then 90
660 if f(z-1,b)>0 then 90
670 a(k+1)=z-1
680 next k
690 f(a,b)=9-2*i-j
700 for k=1 to n
710 f(a(k+1),b)=f(a,b)
720 next k
730 goto 990
740 a(1)=a
750 b(1)=b
760 a(2)=7:a(3)=7
770 b(2)=0:b(3)=0
780 for k=1 to n
790 if m>1 then 870
800 if a(k)=6 or b(k)=1 then 860
810 if f(a(k)+1,b(k)-1)>0 then 860
820 if f(a(k)+1,b(k))>0 and f(a(k)+1,b(k))=f(a(k),b(k)-1) then 860
830 a(k+1)=a(k)+1
840 b(k+1)=b(k)-1
850 goto 940
860 m=2
870 if a(1)<a(2) and a(1)<a(3) then z1=a(1)
872 if a(2)<a(1) and a(2)<a(3) then z1=a(2)
874 if a(3)<a(1) and a(3)<a(2) then z1=a(3)
880 if b(1)>b(2) and b(1)>b(3) then z2=b(1)
882 if b(2)>b(1) and b(2)>b(3) then z2=b(2)
884 if b(3)>b(1) and b(3)>b(2) then z2=b(3)
890 if z1=1 or z2=6 then 90
900 if f(z1-1,z2+1)>0 then 90
910 if f(z1,z2+1)>0 and f(z1,z2+1)=f(z1-1,z2) then 90
920 a(k+1)=z1-1
930 b(k+1)=z2+1
940 next k
950 f(a,b)=9-2*i-j
960 for k=1 to n
970 f(a(k+1),b(k+1))=f(a,b)
980 next k
990 next j
1000 next i
1010 print
1020 print "the following code of the bad guys' fleet disposition"
1030 print "has been captured but not decoded:"
1040 print
1050 for i=1 to 6
1051 for j=1 to 6
1052 h(i,j)=f(j,i)
1053 next j
1054 next i
1060 for i=1 to 6
1061 for j=1 to 6
1062 print h(i,j);
1063 next j
1064 print
1065 next i
1070 print
1080 print "de-code it and use it if you can"
1090 print "but keep the de-coding method a secret."
1100 print
1110 for i=1 to 6
1111 for j=1 to 6
1112 h(i,j)=0
1113 next j
1114 next i
1120 for i=1 to 3
1121 l(i)=0
1122 next i
1130 c(1)=2:c(2)=2
1140 c(3)=1:c(4)=1
1150 c(5)=0:c(6)=0
1160 s=0:h=0
1170 print "start game"
1180 input x,y
1190 if x<1 or x>6 or int(x)<>abs(x) then 1210
1200 if y>0 and y<7 and int(y)=abs(y) then 1230
1210 print "invalid input.  try again."
1220 goto 1180
1230 r=7-y
1240 c=x
1250 if f(r,c)>0 then 1290
1260 s=s+1
1270 print "splash!  try again."
1280 goto 1180
1290 if c(f(r,c))<4 then 1340
1300 print "there used to be a ship at that point, but you sunk it."
1310 print "splash!  try again."
1320 s=s+1
1330 goto 1180
1340 if h(r,c)>0 then 1420
1350 h=h+1
1360 h(r,c)=f(r,c)
1370 print "a direct hit on ship number";f(r,c)
1380 c(f(r,c))=c(f(r,c))+1
1390 if c(f(r,c))>=4 then 1470
1400 print "try again."
1410 goto 1180
1420 print "you already put a hole in ship number";f(r,c);
1430 print "at that point."
1440 print "splash!  try again."
1450 s=s+1
1460 goto 1180
1470 l((int(f(r,c)-1)/2)+1)=l((int(f(r,c)-1)/2)+1)+1
1480 print "and you sunk it.  hurrah for the good guys."
1490 print "so far, the bad guys have lost"
1500 print l(1);"destroyer(s),";l(2);"cruiser(s), and";
1510 print l(3);"aircraft carrier(s)."
1520 print "your current splash/hit ratio is";s/h
1530 if (l(1)+l(2)+l(3))<6 then 1180
1540 print
1550 print "you have totally wiped out the bad guys' fleet"
1560 print "with a final splash/hit ratio of";s/h
1570 if s/h>0 then 1590
1580 print "congratulations -- a direct hit every time."
1590 print
1600 print "****************************"
1610 print
1620 goto 50
1630 end
