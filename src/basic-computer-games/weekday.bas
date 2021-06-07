10 print tab(32);"weekday"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
100 print "weekday is a computer demonstration that"
110 print"gives facts about a date of interest to you."
120 print
130 print "enter today's date in the form: 3,24,1979  ";
140 input m1,d1,y1
150 rem this program determines the day of the week
160 rem  for a date after 1582
170 def fna(a)=int(a/4)
180 dim t(12)
190 def fnb(a)=int(a/7)
200 rem space output and read in initial values for months.
210 for i= 1 to 12
220 read t(i)
230 next i
240 print"enter day of birth (or other day of interest)";
250 input m,d,y
260 print
270 let i1 = int((y-1500)/100)
280 rem test for date before current calendar.
290 if y-1582 <0 then 1300
300 let a = i1*5+(i1+3)/4
310 let i2=int(a-fnb(a)*7)
320 let y2=int(y/100)
330 let y3 =int(y-y2*100)
340 let a =y3/4+y3+d+t(m)+i2
350 let b=int(a-fnb(a)*7)+1
360 if m > 2 then 470
370 if y3 = 0 then 440
380 let t1=int(y-fna(y)*4)
390 if t1 <> 0 then 470
400 if b<>0 then 420
410 let b=6
420 let b = b-1
430 goto 470
440 let a = i1-1
450 let t1=int(a-fna(a)*4)
460 if t1 = 0 then 400
470 if b <>0 then 490
480 let b = 7
490 if (y1*12+m1)*31+d1<(y*12+m)*31+d then 550
500 if (y1*12+m1)*31+d1=(y*12+m)*31+d then 530
510 print m;"/";d;"/";y;" was a ";
520 goto 570
530 print m;"/";d;"/";y;" is a ";
540 goto 570
550 print m;"/";d;"/";y;" will be a ";
560 rem print the day of the week the date falls on.
570 if b <>1 then 590
580 print "sunday."
590 if b<>2 then 610
600 print "monday."
610 if b<>3 then 630
620 print "tuesday."
630 if b<>4 then 650
640 print "wednesday."
650 if b<>5 then 670
660 print "thursday."
670 if b<>6 then 690
680 goto 1250
690 if b<>7 then 710
700 print "saturday."
710 if (y1*12+m1)*31+d1=(y*12+m)*31+d then 1120
720 let i5=y1-y
730 print
740 let i6=m1-m
750 let i7=d1-d
760 if i7>=0 then 790
770 let i6= i6-1
780 let i7=i7+30
790 if i6>=0 then 820
800 let i5=i5-1
810 let i6=i6+12
820 if i5<0 then 1310
830 if i7 <> 0 then 850
835 if i6 <> 0 then 850
840 print"***happy birthday***"
850 print " "," ","years","months","days"
855 print " "," ","-----","------","----"
860 print "your age (if birthdate) ",i5,i6,i7
870 let a8 = (i5*365)+(i6*30)+i7+int(i6/2)
880 let k5 = i5
890 let k6 = i6
900 let k7 = i7
910 rem calculate retirement date.
920 let e = y+65
930 rem calculate time spent in the following functions.
940 let f = .35
950 print "you have slept ",
960 gosub 1370
970 let f = .17
980 print "you have eaten ",
990 gosub 1370
1000 let f = .23
1010 if k5 > 3 then 1040
1020 print "you have played",
1030 goto 1080
1040 if k5 > 9 then 1070
1050 print "you have played/studied",
1060 goto  1080
1070 print "you have worked/played",
1080 gosub 1370
1085 goto 1530
1090 print "you have relaxed ",k5,k6,k7
1100 print 
1110 print tab(16);"***  you may retire in";e;" ***"
1120 print
1140 print
1200 print
1210 print
1220 print
1230 print
1240 end
1250 if d=13 then 1280
1260 print "friday."
1270 goto 710
1280 print "friday the thirteenth---beware!"
1290 goto 710
1300 print "not prepared to give day of week prior to mdlxxxii. "
1310 goto 1140
1320 rem table of values for the months to be used in calculations.
1330 data 0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5
1340 rem this is the current date used in the calculations.
1350 rem this is the date to be calculated on.
1360 rem calculate time in years, months, and days
1370 let k1=int(f*a8)
1380 let i5 = int(k1/365)
1390 let k1 = k1- (i5*365)
1400 let i6 = int(k1/30)
1410 let i7 = k1 -(i6*30)
1420 let k5 = k5-i5
1430 let k6 =k6-i6
1440 let k7 = k7-i7
1450 if k7>=0 then 1480
1460 let k7=k7+30
1470 let k6=k6-1
1480 if k6>0 then 1510
1490 let k6=k6+12
1500 let k5=k5-1
1510 print i5,i6,i7
1520 return
1530 if k6=12 then 1550
1540 goto 1090
1550 let k5=k5+1
1560 let k6=0
1570 goto 1090
1580 rem
1590 end
