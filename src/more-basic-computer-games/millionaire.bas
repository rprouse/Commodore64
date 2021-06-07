1 print tab(23);"millionaire"
2 print tab(20);"creative cqhputing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
10 rem    millionaire by craig gunnett
20 print "this is the game of 'millionaire'.  all you must do is"
30 print "type in your name and answer some questions.  the"
40 print "decisions you make will determine how much money you"
50 print "make.  at the time of your death, your life will be"
60 print "rated by the amount of money you made throughout"
70 print "your life.  if you have made $1,000,000 , you will be"
80 print "a millionaire and win the game.  name please";
100 let o=-1
110 dim a$(20),z$(1),m$(36),s(9),q(16)
120 for i=1 to 4
130   let s(i)=150
140 next i
150 input a$
160 print
170 print "o.k., ";a$;", this is your new life!"
180 let m$="janfebmaraprmayjunjulaugsepoctnovdec"
190 if rnd(1)>.5 goto 220
200 print "on a big farm";
210 goto 230
220 print "in a shall town";
230 let t=int(rnd(1)*12)+1
240 print ", on ";mid$(m$,3*t-2,3);int(rnd(1)*28)+1;", 1980,";
250 print " ";a$;" is born."
260 print "your parents are very ";
270 if rnd(1)>.5 goto  310
280 print "rich. ";
290 let m=int(rnd(1)*5000)+10000
300 goto 330
310 print "poor. ";
320 let m=int((rnd(1)+rnd(1))/2*1000)
330 let t=int(rnd(1)*12)+1
340 let y=1996+int(rnd(1)*10)
350 print "on ";mid$(m$,t*3-2,3);t*2;", ";y;", you"
360 print "leave home with $";m
370 let y=y+int(rnd(1)*3)+1
380 gosub  680
390 for j=1 to 13
400 if (j/3)-int(j/3)+e=0 then gosub 680
410   let d=int(28*rnd(1))+1
420   let m1=(int(12*rnd(1))+1)*3
430   print
440 print mid$(m$,m1-2,3);d;",";y
450   if y-1980<70 goto 500
460   if rnd(1)>.5 goto 500
470   print "you are dead (could'nt tell, could you?) at the"
480   print "age of ";y-1980;"."
490   goto 2370
500   if m>=0 goto 540
510   let i=int(.07*y9*(-m))
520   let m=m-i
530   print "the interest on your loan is $";i;".  you have $";m
540   let q=int(13*rnd(1))+1
550   if q(q)=1 goto 540
560   let q(q)=1
570   on q goto 890, 1010, 1100, 1220, 1280, 1430, 1530
580   on (q-7) goto 1850, 1930, 2060, 2120, 2240, 2280
590   print "you now have $";m
600   if o=-2 goto 1530
610   if j=1 goto 640
620   let m=m+(e-c)*y9
630   print "your earnings and expenses leave you with $";m
640   let y9=int(rnd(1)*6)*5
650   let y=y+y9
660 next j
670 goto 470
680 rem      job sub
690 print "you got a new job as a ";
700 on int(rnd(1)*5)+1 goto  740, 770, 800, 830
710 print "teacher";
720 let e=int(rnd(1)*4000)+17000
730 goto 850
740 print "lawyer";
750 let e=int(rnd(1)*40000)+80000
760 goto 850
770 print "computer programmer";
780 let e=int(rnd(1)*5000)+20000
790 goto 850
800 print "bus driver";
810 let e=int(rnd(1)*2000)+16000
820 goto 850
830 print "football player";
840 let e=int(rnd(1)*100000)+100000
850 let c=e-10000+int((rnd(1)+rnd(1))*5000)
860 print ".  you earn $";e;" a year."
870 print "you adjust your expenses to $";c;" a year."
880 return
890 print "you go to las vegas to gamble.  how much do you bet";
900 input s
910 print
920 if s<=0 goto 1000
930 if rnd(1)>.7 goto 970
940 let s2=-int(rnd(1)*s)
950 print "ha! ha! you lost $";-s2
960 goto 990
970 let s2=int((rnd(1)+rnd(1))*s)
980 print "you won $";s2
990 let m=m+s2
1000 goto 590
1010 print "you are offered a coin supposedly worth $100,000."
1020 print "do you buy it";
1030 input z$
1040 print
1050 let v7=int(rnd(1)*200000)+1
1060 if z$<>"y" goto  1080
1070 let m=m-100000+v7
1080 print "the value of the coin is $";v7
1090 goto 590
1100 print "you are seriously sick.  (couldn't tell, could you?)"
1110 print "you have ";
1120 on (int(rnd(1)*3)+1) goto  1150, 1170
1130 print "the asio-dispepsia regionaly hypnotic flu!(oh!)."
1140 goto 1180
1150 print "computer itis."
1160 goto 1180
1170 print "infectious fataly reoccuring chronic bad breath."
1180 let u=int(rnd(1)*1000)+500
1190 let m=m-u
1200 print "health expenses cost you $";u
1210 goto 590
1220 let f=int(rnd(1)*100000)
1230 let c8=int(f/2)-int(rnd(1)*(f/2))
1240 print "your grandfather grovers just died. (oh!)  he left"
1250 print "you $";f;", but funeral expenses are $";c8
1260 let m=m-c8+f
1270 goto 590
1280 if e=0 goto  890
1290 print "news from your boss:"
1300 on (int(rnd(1)*3)+1) goto  1350, 1390
1310 let l=int(rnd(1)*3000)+1
1320 let e=e-l
1330 print "you got a $";l;" decrease in pay.  you now earn$";e
1340 goto 590
1350 print "you're fired! (ha!)"
1360 let e=0
1370 let c=int(c/4)
1380 goto 590
1390 let r6=int(rnd(1)*5000)+1
1400 let e=e+r6
1410 print "you got a raise of $";r6;"  you now earn $";e
1420 goto 590
1430 print "the doctor says you need a vacation.  do you go";
1440 input z$
1450 print
1460 let v=int(rnd(1)*2000)+1000
1470 if z$="n" goto 1500
1480 print "good, the vacation costs $";v
1490 goto 1510
1500 print "you just had a nervous breakdown.  medical costs - $";v
1510 let m=m-v
1520 goto 590
1530 for i=1 to 4
1540   let s(i)=int((int(rnd(1)*100)+100+2*s(i))/3)
1550 next i
1560 print "#           stock name         price   shares owned"
1570 print "1 ibm (incredibly bad machines) ";s(1);"    ";s(5)
1580 print "2 uss (useless & stinky steel)  ";s(2);"    ";s(6)
1590 print "3 ncr (no cash return)          ";s(3);"    ";s(7)
1600 print "4 twa (total wreck airlines)    ";s(4);"    ";s(8)
1610 if s(9)=1 goto 2410
1620 print "do you buy, sell ($100 fee), or not (b,s, or n)";
1630 input z$
1640 print
1650 if z$="s" goto 1740
1660 if z$="n" goto 1810
1670 print "stock # and quantity";
1680 input s3,s(0)
1690 print
1700 let s(4+s3)=s(4+s3)+s(0)
1710 let o=-2
1720 let m=m-s(s3)*s(0)-100
1730 goto 1620
1740 print "stock # and quantity";
1750 input s2,s5
1760 if rnd(1)<.5 goto  1880
1770 if s5>s(4+s2) goto 1740
1780 let s(4+s2)=s(4+s2)-s5
1790 let m=m+s(s2)*s5-100
1800 goto 1620
1810 let s1=s(5)+s(6)+s(7)+s(8)
1820 if s1>0 goto 610
1830 let o=-1
1840 goto 610
1850 print "news flash!!! ";
1860 print "a tornado has just hit the home of ";a$
1870 goto 1890
1880 print "an airplane has just crashed into the home of ";a$
1890 let d8=int(rnd(1)*50000)+1
1900 let m=m-d8
1910 print "damages have been estimated at $";d8
1920 goto 590
1930 print "oh! you just got ";
1940 if y-1980<55 goto  2000
1950 if rnd(1)>.4 goto  1980
1960 print "cancer";
1970 goto 2010
1980 print "a heart attack";
1990 goto 2010
2000 print "leukemia";
2010 let m2=int(rnd(1)*5000)+1000
2020 let m=m-m2
2030 print ".  medical bills are $";m2
2040 if rnd(1)<.5 goto  470
2050 goto 590
2060 print "you just had a car accident!  medical costs"
2070 let m3=int(rnd(1)*3000)+1000
2080 let q7=int(rnd(1)*5000)+100
2090 print "are $";m3;". repairs cost $";q7
2100 let m=m-m3-q7
2110 goto 590
2120 if e=0 goto  1010
2130 let e2=10000+int(rnd(1)*5000)
2140 print "you are offered another job for $";e2;" a year."
2150 print "would you like to moonlight";
2160 input z$
2170 print
2180 if z$="n" goto 590
2190 on int(rnd(1)*3) goto  1350, 2220
2200 let e=e+e2
2210 goto 590
2220 print "from overwork you get ";
2230 goto 1980
2240 let r2=int(rnd(1)*10000)+5000
2250 let m=m-r2
2260 print "your home has been robbed of goods worth $";r2
2270 goto 590
2280 if o=-1 goto 1430
2290 if rnd(1)>.7 goto 1430
2300 let b4=int(rnd(1)*4)
2310 print "stock market crash!!!  each of your";s1;" shares of"
2320 print "stock is worth $";b4;".  you must sell all of them"
2330 print "for a total of $";s1*b4
2340 let m=m+s1*b4
2350 let o=-1
2360 goto 590
2370 print "you had $";m
2380 if o=-1 goto 2430
2390 let s(9)=1
2400 goto 1530
2410 let m=m+s(1)*s(5)+s(2)*s(6)+s(3)*s(7)+s(4)*s(8)
2420 print "with stock value you have $";m
2430 if m<0 goto  2480
2440 if m<500000 goto 2510
2450 if m<1e+06 goto 2530
2460 print a$;" won!!  you are a millionaire!!"
2470 goto 2540
2480 print "you lousy #$%&'*!!! now your poor family has to pay"
2490 print "off your debts.......................... "
2500 goto 2540
2510 print "not bad, ";a$
2520 goto 2540
2530 print "close, ";a$;".  maybe next life."
2540 print "thanks for playing 'millionaire', ";a$;"!!!!"
2550 end
