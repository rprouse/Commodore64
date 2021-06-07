50 print chr$(26):rem width 80
100 print tab(33);"qubic":print
110 print tab(15);"creative computing  morristown, new jersey"
120 print:print:print
210 print "do you want instructions";
220 input c$
230 if left$(c$,1)="n" then 315
240 if left$(c$,1)="y" then 265
250 print "incorrect answer.  please type 'yes' or 'no'";
260 goto 220
265 print
270 print "the game is tic-tac-toe in a 4 x 4 x 4 cube."
280 print "each move is indicated by a 3 digit number, with each"
290 print "digit between 1 and 4 inclusive.  the digits indicate the"
300 print "level, row, and column, respectively, of the occupied"
305 print "place.  "
306 print
307 print "to print the playing board, type 0 (zero) as your move."
308 print "the program will print the board with your moves indi-"
309 print "cated with a (y), the machine's moves with an (m), and"
310 print "unused squares with a ( ).  output is on paper."
311 print
312 print "to stop the program run, type 1 as your move."
313 print:print
315 dim x(64),l(76),m(76,4),y(16)
320 for i = 1 to 16
330 read y(i)
340 next i
350 for i=1 to 76
360 for j = 1 to 4
370 read m(i,j)
380 next j
390 next i
400 for i = 1 to 64
410 let x (i) =0
420 next i
430 let z=1
440 print "do you want to move first";
450 input s$
460 if left$(s$,1)="n" then 630
470 if left$(s$,1)="y" then 500
480 print "incorrect answer.  please type 'yes' or 'no'.";
490 goto 450
500 print " "
510 print "your move";
520 input j1
521 if j1=1 then 2770
522 if j1<>0 then 525
523 gosub 2550
524 goto 500
525 if j1<111 then 2750
526 if j1>444 then 2750
530 gosub 2500
540 let k1=int(j1/100)
550 let j2=(j1-k1*100)
560 let k2=int(j2/10)
570 let k3= j1 - k1*100 -k2*10
580 let m=16*k1+4*k2+k3-20
590 if x(m)=0 then 620
600 print "that square is used, try again."
610 goto 500
620 let x(m)=1
630 gosub 1640
640 j=1
650 i=1
660 if j=1 then 720
670 if j=2 then 790
680 if j=3 then 930
690 i=i+1: if i<=76 then 660
700 j=j+1: if j<=3 then 650
710 goto 1300
720 if l(i)<>4 then 690
730 print "you win as follows";
740 for j=1 to 4
750 let m=m(i,j)
760 gosub 1570
770 next j
780 goto 1490
790 if l(i)<>15 then 690
800 for j=1 to 4
810 let m=m(i,j)
820 if x(m)<>0 then 860
830 let x(m)=5
840 print "machine moves to";
850 gosub 1570
860 next j
870 print ", and wins as follows"
880 for j=1 to 4
890 let m=m(i,j)
900 gosub 1570
910 next j
920 goto 1490
930 if l(i)<>3 then 690
940 print "nice try. machine moves to";
950 for j=1 to 4 
960 let m=m(i,j)
970 if x(m)<>0 then 1010
980 let x(m)=5
990 gosub 1570
1000 goto 500
1010 next j
1020 goto 1300
1030 i=1
1040 let l(i)=x(m(i,1))+x(m(i,2))+x(m(i,3))+x(m(i,4))
1050 let l = l(i)
1060 if l <2 then 1130
1070 if l>=3 then 1130
1080 if l>2 then 2230
1090 for j = 1 to 4
1100 if x(m(i,j))<>0 then 1120
1110 let x(m(i,j))=1/8
1120 next j
1130 i=i+1: if i<=76 then 1040
1140 gosub 1640
1150 i=1
1160 if l(i)=1/2 then 2360
1170 if l(i)=1+3/8 then 2360
1180 i=i+1: if i<=76 then 1160
1190 goto 1830
1200 let z = 1
1210 if x(y(z))=0 then 1250
1220 let z=z+1
1230 if z<>17 then 1210
1240 goto 1720
1250 let m=y(z)
1260 let x(m)=5
1270 print "machine moves to";
1280 gosub 1570
1290 goto 500
1300 let x=x
1310 i=1
1320 let l(i)=x(m(i,1))+x(m(i,2))+x(m(i,3))+x(m(i,4))
1330 let l=l(i)
1340 if l<10 then 1410
1350 if l>=11 then 1410
1360 if l>10 then 2230
1370 for j=1 to 4
1380 if x(m(i,j))<>0 then 1400
1390 let x(m(i,j))=1/8
1400 next j
1410 i=i+1: if i<=76 then 1320
1420 gosub 1640
1430 i=1
1440 if l(i)=.5 then 2360
1450 if l(i)=5+3/8 then 2360
1460 i=i+1: if i<=76 then 1440
1470 gosub 2500
1480 goto 1030
1490 print " "
1500 print "do you want to try another game";
1510 input x$
1520 if left$(x$,1)="y" then 400
1530 if left$(x$,1)="n" then 1560
1540 print "incorrect answer. please type 'yes' or 'no'";
1550 goto 1510
1560 end
1570 let k1=int((m-1)/16)+1
1580 let j2=m-16*(k1-1)
1590 let k2=int((j2-1)/4)+1
1600 let k3=m-(k1-1)*16-(k2-1)*4
1610 let m=k1*100+k2*10+k3
1620 print m;
1630 return
1640 for s=1 to 76
1650 let j1 = m(s,1)
1660 let j2=m(s,2)
1670 let j3=m(s,3)
1680 let j4=m(s,4)
1690 let l(s)=x(j1)+x(j2)+x(j3)+x(j4)
1700 next s
1710 return
1720 for i=1 to 64
1730 if x(i)<>0 then 1800
1740 let x(i)=5
1750 let m=i
1760 print "machine likes";
1770 gosub 1570
1780 print " "
1790 goto 500
1800 next i
1810 print "the game is a draw."
1820 goto 1490
1830 for k=1 to 18
1840 let p=0
1850 for i=4*k-3 to 4*k
1860 for j=1 to 4
1870 let p=p+x(m(i,j))
1880 next j
1890 next i
1900 if p<4 then 1940
1910 if p<5 then 1970
1920 if p<9 then 1940
1930 if p<10 then 1970
1940 next k
1950 gosub 2500
1960 goto 1200
1970 let s=1/8
1980 for i=4*k-3 to 4*k
1990 goto 2370
2000 next i
2010 let s=0
2020 goto 1980
2030 data 1,49,52,4,13,61,64,16,22,39,23,38,26,42,27,43
2040 data 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
2050 data 21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38
2060 data 39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56
2070 data 57,58,59,60,61,62,63,64
2080 data 1,17,33,49,5,21,37,53,9,25,41,57,13,29,45,61
2090 data 2,18,34,50,6,22,38,54,10,26,42,58,14,30,46,62
2100 data 3,19,35,51,7,23,39,55,11,27,43,59,15,31,47,63
2110 data 4,20,36,52,8,24,40,56,12,28,44,60,16,32,48,64
2120 data 1,5,9,13,17,21,25,29,33,37,41,45,49,53,57,61
2130 data 2,6,10,14,18,22,26,30,34,38,42,46,50,54,58,62
2140 data 3,7,11,15,19,23,27,31,35,39,43,47,51,55,59,63
2150 data 4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64
2160 data 1,6,11,16,17,22,27,32,33,38,43,48,49,54,59,64
2170 data 13,10,7,4,29,26,23,20,45,42,39,36,61,58,55,52
2180 data 1,21,41,61,2,22,42,62,3,23,43,63,4,24,44,64
2190 data 49,37,25,13,50,38,26,14,51,39,27,15,52,40,28,16
2200 data 1,18,35,52,5,22,39,56,9,26,43,60,13,30,47,64
2210 data 49,34,19,4,53,38,23,8,57,42,27,12,61,46,31,16
2220 data 1,22,43,64,16,27,38,49,4,23,42,61,13,26,39,52
2230 for j=1 to 4
2240 if x(m(i,j))<>1/8 then 2330
2250 let x(m(i,j))=5
2260 if l(i)<5 then 2290
2270 print "let's see you get out of this:  machine moves to";
2280 goto 2300
2290 print "you fox.  just in the nick of time, machine moves to";
2300 let m=m(i,j)
2310 gosub 1570
2320 goto 500
2330 next j
2340 print "machine concedes this game."
2350 goto 1490
2360 let s=1/8
2370 if i-int(i/4)*4>1 then 2400
2380 let a=1
2390 goto 2410
2400 let a=2
2410 for j=a to 5-a step 5-2*a
2420 if x(m(i,j))=s then 2450
2430 next j
2440 goto 2000
2450 let x(m(i,j))=5
2460 let m=m(i,j)
2470 print "machine takes";
2480 gosub 1570
2490 goto 500
2500 for i=1 to 64
2510 if x(i)<>1/8 then 2530
2520 let x(i)=0
2530 next i
2540 return
2550 for xx=1 to 9:print:next:for i=1 to 4
2560 for j=1 to 4
2562 for i1=1 to j
2564 print"   ";
2566 next i1
2570 for k=1 to 4
2600 let q=16*i+4*j+k-20
2610 if x(q)<>o then 2630
2620 print"( )      ";
2630 if x(q)<>5 then 2650
2640 print"(m)      ";
2650 if x(q)<>1 then 2660
2655 print"(y)      ";
2660 if x(q)<>1/8 then 2670
2665 print"( )      ";
2670 next k
2680 print
2690 print
2700 next j
2710 print
2720 print
2730 next i
2735 rem print chr$(12)
2740 return
2750 print"incorrect move, retype it--";
2760 goto 520
2770 end
