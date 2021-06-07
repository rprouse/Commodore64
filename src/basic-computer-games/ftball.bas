10 print tab(33);"ftball"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print
220 print "this is dartmouth championship football.":print
230 print "you will quarterback dartmouth. call plays as follows:"
240 print "1= simple run; 2= tricky run; 3= short pass;"
250 print "4= long pass; 5= punt; 6= quick kick; 7= place kick."
260 print
270 print "choose your opponent";
280 input o$(1)
290 o$(0)="dartmouth"
300 print
310 let s(0)=0: let s(1)=0
320 rem
330 dim l$(20)
340 for i=1 to 20: read l$(i): next i
350 data "kick","receive"," yard ","run back for ","ball on "
360 data "yard line"," simple run"," tricky run"," short pass"
370 data " long pass","punt"," quick kick "," place kick"," loss "
380 data " no gain","gain "," touchdown "," touchback ","safety***"
385 data "junk"
390 let p=int(rnd(1)*2)
400 print o$(p);" won the toss"
410 def fnf(x)=1-2*p
420 def fng(z)=p*(x1-x)+(1-p)*(x-x1)
430 if p=0 then 470
440 print o$(1);" elects to receive."
450 print
460 goto 580
470 print "do you elect to kick or receive";
480 input a$
490 print
500 for e=1 to 2
510 if a$=l$(e) then 550
520 next e
530 print "incorrect answer.  please type 'kick' or 'receive'";
540 goto 480
550 if e=2 then 580
560 let p=1
580 let x=40+(1-p)*20
590 let y=int(200*(rnd(1)-.5)^3+55)
600 print y;l$(3);" kickoff"
610 let x=x-fnf(1)*y
620 if abs(x-50)>=50 then 700
630 let y=int(50*rnd(1)^2)+(1-p)*int(50*rnd(1)^4)
640 let x=x+fnf(1)*y
650 if abs(x-50)>=50 then 655
651 print y;l$(3);" runback"
652 goto 720
655 print l$(4);
660 goto 2600
700 print "touchback for ";o$(p);"."
710 let x=20+p*60
720 rem first down
730 gosub 800
740 let x1=x
750 let d=1
760 print:print "first down ";o$(p);"***"
770 print
780 print
790 goto 860
800 rem print position
810 if x>50 then 840
820 print l$(5);o$(0);x;l$(6)
830 goto 850
840 print l$(5);o$(1);100-x;l$(6)
850 return
860 rem new play
870 let t=t+1
880 if t=30 then 1060
890 if t<50 then 940
900 if rnd(1)>.2 then 940
910 print "end of game  ***"
920 print "final score:  ";o$(0);": ";s(0);"  ";o$(1);": ";s(1)
930 stop
940 if p=1 then 1870
950 print "next play";
960 input z
970 if z<>int(z) then 990
980 if abs(z-4)<=3 then 1010
990 print "illegal play number, retype";
1000 goto 960
1010 let f=0
1020 print l$(z+6);".  ";
1030 let r=rnd(1)*(.98+fnf(1)*.02)
1040 let r1=rnd(1)
1050 on z goto 1110,1150,1260,1480,1570,1570,1680
1060 rem  jean's special
1070 if rnd(1)> 1/3 then 940
1080 print "game delayed.  dog on field."
1090 print
1100 goto 940
1110 rem  simple run
1120 let y=int(24*(r-.5)^3+3)
1130 if rnd(1)<.05 then 1180
1140 goto 2190
1150 rem  tricky run
1160 let y=int(20*r-5)
1170 if rnd(1)>.1 then 2190
1180 let f=-1
1190 let x3=x
1200 let x=x+fnf(1)*y
1210 if abs(x-50)>=50 then 1240
1220 print "***  fumble after ";
1230 goto 2230
1240 print "***  fumble."
1250 goto 2450
1260 rem  short pass
1270 let y=int(60*(r1-.5)^3+10)
1280 if r<.05 then 1330
1290 if r<.15 then 1390
1300 if r<.55 then 1420
1310 print "complete.  ";
1320 goto 2190
1330 if d=4 then 1420
1340 print "intercepted."
1350 let f=-1
1360 let x=x+fnf(1)*y
1370 if abs(x-50)>=50 then 2450
1380 goto 2300
1390 print "passer tackled.  ";
1400 let y=-int(10*r1)
1410 goto 2190
1420 let y=0
1430 if rnd(1)<.3 then 1460
1440 print "incomplete.  ";
1450 goto 2190
1460 print "batted down.  ";
1470 goto 2190
1480 rem  long pass
1490 let y=int(160*(r1-.5)^3+30)
1500 if r<.1 then 1330
1510 if r<.3 then 1540
1520 if r<.75 then 1420
1530 goto 1310
1540 print "passer tackled.  ";
1550 let y=-int(15*r1+3)
1560 goto 2190
1570 rem  punt or kick
1580 let y=int(100*(r-.5)^3+35)
1590 if d=4 then 1610
1600 let y=int(y*1.3)
1610 print y;l$(3);" punt"
1620 if abs(x+y*fnf(1)-50)>=50 then 1670
1630 if d<4 then 1670
1640 let y1=int(r1^2*20)
1650 print y1;l$(3);" run back"
1660 let y=y-y1
1670 goto 1350
1680 rem  place kick
1690 let y=int(100*(r-.5)^3+35)
1700 if r1>.15 then 1750
1710 print "kick is blocked  ***"
1720 let x=x-5*fnf(1)
1730 let p=1-p
1740 goto 720
1750 let x=x+fnf(1)*y
1760 if abs(x-50)>=60 then 1810
1770 print "kick is short."
1780 if abs(x-50)>=50 then 2710
1790 p=1-p
1800 goto 630
1810 if r1>.5 then 1840
1820 print "kick is off to the side."
1830 goto 2710
1840 print "field goal ***"
1850 let s(p)=s(p)+3
1860 goto 2640
1870 rem  opponent's play
1880 if d>1 then 1940
1890 if rnd(1)>1/3 then 1920
1900 let z=3
1910 goto 1010
1920 let z=1
1930 goto 1010
1940 if d=4 then 2090
1950 if 10+x-x1<5 then 1890
1960 if x<5 then 1890
1970 if x<=10 then 2160
1980 if x>x1 then 2020
1990 let a=int(2*rnd(1))
2000 let z=2+a*2
2010 goto 1010
2020 if d<3 then 1990
2030 if x<45 then 1990
2040 if rnd(1)>1/4 then 2070
2050 let z=6
2060 goto 1010
2070 let z=4
2080 goto 1010
2090 if x>30 then 2140
2100 if 10+x-x1<3 then 1890
2110 if x<3 then 1890
2120 let z=7
2130 goto 1010
2140 let z=5
2150 goto 1010
2160 let a=int(2*rnd(1))
2170 let z=2+a
2180 goto 1010
2190 rem gain or loss
2200 let x3=x
2210 let x=x+fnf(1)*y
2220 if abs(x-50)>=50 then 2450
2230 if y=0 then 2250
2240 print abs(y);l$(3);
2250 print l$(15+sgn(y))
2280 if abs(x3-50)>40 then 2300
2290 if rnd(1)<.1 then 2860
2300 gosub 800
2310 if f=0 then 2340
2320 let p=1-p
2330 goto 740
2340 if fng(1)>=10 then 740
2350 if d=4 then 2320
2360 let d=d+1
2370 print "down: ";d;"     ";
2380 if (x1-50)*fnf(1)<40 then 2410
2390 print "goal to go"
2400 goto 2420
2410 print "yards to go: ";10-fng(1)
2420 print
2430 print
2440 goto 860
2450 rem ball in end-zone
2460 if x>=100 then 2490
2470 let e=0
2480 goto 2500
2490 let e=1
2500 on 1+e-f*2+p*4 goto 2510,2590,2760,2710,2590,2510,2710,2760
2510 rem safety
2520 let s(1-p)=s(1-p)+2
2530 print l$(19)
2540 gosub 2800
2550 print o$(p);" kicks off from its 20 yard line."
2560 let x=20+p*60
2570 let p=1-p
2580 goto 590
2590 rem offensive td
2600 print l$(17);"***"
2610 if rnd(1)>.8 then 2680
2620 let s(p)=s(p)+7
2630 print "kick is good."
2640 gosub 2800
2650 print o$(p);" kicks off"
2660 let p=1-p
2670 goto 580
2680 print "kick is off to the side"
2690 let s(p)=s(p)+6
2700 goto 2640
2710 rem touchback
2720 print l$(18)
2730 let p=1-p
2740 let x=20+p*60
2750 goto 720
2760 rem defensive td
2770 print l$(17);"for ";o$(1-p);"***"
2780 let p=1-p
2790 goto 2600
2800 rem score
2810 print
2820 print "score:  ";s(0);" to ";s(1)
2830 print
2840 print
2850 return
2860 rem penalty
2870 let p3=int(2*rnd(1))
2880 print o$(p3);" offsides -- penalty of 5 yards."
2890 print
2900 print
2910 if p3=0 then 2980
2920 print "do you accept the penalty";
2930 input a$
2940 if a$="no" then 2300
2950 if a$="yes" then 3110
2960 print "type 'yes' or 'no'";
2970 goto 2930
2980 rem opponent's strategy on penalty
2990 if p=1 then 3040
3000 if y<=0 then 3080
3010 if f<0 then 3080
3020 if fng(1)<3*d-2 then 3080
3030 goto 3100
3040 if y<=5 then 3100
3050 if f<0 then 3100
3060 if d<4 then 3080
3070 if fng(1)<10 then 3100
3080 print "penalty refused."
3090 goto 2300
3100 print "penalty accepted."
3110 let f=0
3120 let d=d-1
3130 if p<>p3 then 3160
3140 let x=x3-fnf(1)*5
3150 goto 2300
3160 let x=x3+fnf(1)*5
3170 goto 2300
3180 end
