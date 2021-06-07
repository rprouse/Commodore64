10 print tab(22);"four in a row"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
100 dim b$(8,8),l(8),s(4),f(4)
110 dim v(16),n(4)
130 data 1,100,500,1e20,1,800,4000,1e20
140 data 1,75,900,1e18,1,450,3000,1e18
150 for z1=1 to 16:read v(z1):next z1
160 print"the game of four in a row"
170 input"do you want instructions";a$
180 if a$="no" then 270
190 if a$="yes" then 210
200 print"yes or no":goto 170
210 print"the game consists of stacking x's"
220 print"and o's (the computer has o) until"
230 print"one of the players gets four in a"
240 print"row vertically, horizontally, or "
250 print"diagonally."
260 print:print
270 x$="x":o$="o"
280 for i=1 to 8:for j=1 to 8:b$(i,j)="-":next j:next i
290 for z1=1 to 8:l(z1)=0:next z1
300 input"do you want to go first";a$
310 if a$="no" then 610
320 gosub 340
330 goto 450
340 for i=8 to 1 step -1
350 for j=1 to 8
360 print"  ";b$(i,j);
370 next j
380 print
390 next i
400 print" ";
410 for i=1 to 8:print i;:next i
420 print:print
430 return
440 print"illegal move, try again."
450 input"a number between 1 and 8";m
460 m=int(m)
470 if m<1 or m>8 then 440
480 l=l(m)
490 if l>7 then 440
500 l(m)=l+1:l=l+1
510 b$(l,m)=x$
520 print
530 gosub 340
540 p$=x$
550 gosub 1240
560 for z=1 to 4
570 if s(z)<4 then 600
580 print"y o u   w i n !!!"
590 goto 1580
600 next z
610 m9=0:v1=0
620 n1=1
630 for m4=1 to 8
640 l=l(m4)+1
650 if l>8 then 1080
660 v=1
670 p$=o$:w=0
680 m=m4
690 gosub 1240
700 for z1=1 to 4:n(z1)=0:next z1
710 for z=1 to 4
720 s=s(z)
730 if s-w>3 then 1130
740 t=s+f(z)
750 if t<4 then 780
760 v=v+4
770 n(s)=n(s)+1
780 next z
790 for i = 1 to 4
800 n=n(i)-1
810 if n=-1 then 840
820 i1=8*w+4*sgn(n)+i
830 v=v + v(i1) + n*v(8*w+i)
840 next i
850 if w=1 then 880
860 w=1:p$=x$
870 goto 690
880 l=l+1
920 if l>8 then 1020
930 gosub 1240
940 for z=1 to 4
950 if s(z)>3 then v=2
960 next z
1020 if v<v1 then 1080
1030 if v>v1 then n1=1: goto 1060
1040 n1=n1 + 1
1050 if rnd(1)>1/n1 then 1080
1060 v1 = v
1070 m9=m4
1080 next m4
1090 if m9<>0 then 1120
1100 print "t i e   g a m e ..."
1110 goto 1580
1120 m=m9
1130 print "computer picks column ";m:print
1140 l=l(m)+1:l(m)=l(m)+1
1150 b$(l,m)=o$
1160 p$=o$:gosub 340
1170 gosub 1240
1180 for z = 1 to 4
1190 if s(z)<4 then 1220
1200 print"c o m p u t e r   w i n s !!!"
1210 goto 1580
1220 next z
1230 goto 450
1240 q$=x$
1250 if p$=x$ then q$=o$
1260 d2=1:d1=0
1270 z=0
1280 gosub 1360
1290 d1=1:d2=1
1300 gosub 1360
1310 d2=0:d1=1
1320 gosub 1360
1330 d2=-1:d1=1
1340 gosub 1360
1350 return
1360 d=1:s=1
1370 t=0
1380 z=z+1
1390 c=0
1400 for k=1 to 3
1410 m5=m+k*d1:l1=l+k*d2
1420 if m5<1 or l1<1 or m5>8 or l1>8 then 1510
1430 b$=b$(l1,m5)
1440 if c=0 then 1480
1450 if b$=q$ then k=3: goto 1510
1460 t = t+1
1470 goto 1510
1480 if b$=p$ then s=s+1:goto 1510
1490 c=1
1500 goto 1450
1510 next k
1520 if d=0 then 1550
1530 d=0:d1=-d1:d2=-d2
1540 goto 1390
1550 s(z)=s
1560 f(z)=t
1570 return
1580 end
