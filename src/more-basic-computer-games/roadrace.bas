10 print tab(27);"roadrace"
20 print tab(15);"creative computing  morristown new jersey"
30 print
40 print
50 print
100 print "       this is the pittsfield-albany road rally"
120 print
130 print "welcome to the first annual pittsfield-albany road rally."
140 print "you'll be driving rt. 20. trying to win the race and"
150 print "stay alive in the bargin. good luck!!"
160 print
170 print "yoy have your choice of: (1) a vw; (2) 283 nova;"
180 print "(3) z-28; or (4) ferrari"
190 print
200 print "choose the car you want by the number in front of it."
210 print "remember, the better the car, the more gas it uses."
220 print "which car";
230 input c1
240 let c1=int(c1)
250 if c1 > 4 then 280
260 if c1 < 1 then 280
270 goto 300
280 print "invalid car number. new car ";
290 goto 230
300 print
310 if n2=1 then 345
320 print "now you choose which course you want to race on."
330 print "the easiest course is number 1, and is the straightest"
340 print "route. number 5 consists mostly of turns and twists."
345 print "which route do you want";
350 input c2
360 let c2=int(c2)
380 if c2 < 1 then 410
390 if c2 > 5 then 410
400 goto 430
410 print "invalid course number. new choice ";
420 goto 350
430 if n2=1 then 490
435 print
440 print "you will need to travel 5 miles with .5 gallons of gas."
450 print "your status will be shown each 10 seconds. after each "
460 print "status check you will be asked for a new rate of gas. "
470 print "a rate of +10 is hard acceleration, and -10 is hard braking"
480 print "any number in between is allowable."
490 for i=1 to c1
500 read b,m,s
510 let b=b/10
520 next i
530 let a1=.5
540 let m1=0
550 let c1=c1/2
560 let v=0
570 print
580 let r1=0
590 let t=0
600 let d=0
610 let q1=0
620 print "present velocity =";v;" no. of gallons =";a1
630 print "no. of miles =";m1;" time passed =";t;"seconds"
640 if m1>= 5 then 1460
650 print "what is your new rate of gas ";
660 input g
670 if g < -10 then 700
680 if g > 10 then 700
690 goto 720
700 print "not valid. new rate ";
710 goto 660
720 if g < 9 then 780
730 let z=z+1
740 if z> 4 then 760
750 goto 790
760 print "your engine blew. you got hit by a piston."
770 goto 1270
780 let z=0
790 let v=int(b*g-m*v+v)
800 let t=t+10
810 print
820 print "road conditions:";
830 if v > 0 then 850
840 let v=0
850 let m1=m1+v/460
860 if g<0 then 890
870 let a1=a1-(g*s)/5000
880 if a1< 0 then 1380
890 if r1=1 then 1050
900 if q1=1 then 980
910 let q=int((c2+1)*rnd(1))
920 let r=int((3.75-c2)*rnd(1))
930 if r > 0 then 1290
940 if q > 0 then 1340
950 print "clear an straight"
960 print
970 goto 620
980 let h=int(15+35*rnd(1))
990 let h=h+5*c1
1000 if v>h then 1500
1010 print "through curve"
1020 print
1030 let q1=0
1040 goto 620
1050 let e=e-(v-d)*3
1060 if e < 0 then 1100
1070 print "vechicle ";e;" feet ahead"
1080 print
1090 goto 620
1100 if v-d < 5 then 1180
1110 print "vechicle passed by ";
1120 let d=v-d
1130 print d;
1140 print "mph"
1150 print
1160 let r1=0
1170 goto 620
1180 print "vechicle being passed "
1190 let d=int(25+40*rnd(1))
1200 print "greyhound bus in other lane ";
1210 print "doing ";
1220 print d;
1230 print " mph ";
1240 let d=v+d
1250 print "crash velocity = ";d
1270 print "where is your funeral being held ?"
1280 goto 1560
1290 print "vechicle ahead 1000 feet"
1300 print
1310 let d=int(25+35*rnd(1))
1320 let r1=1
1330 goto 620
1340 print " warning: curve ahead "
1350 let q1=1
1360 print
1370 goto 620
1380 print "excellent but wait!"
1390 print
1400 print "you ran out of gas"
1410 goto 1550
1420 print "but some how you made it"
1430 print
1440 let r1=0
1450 goto 620
1460 print
1470 print
1480 print "you made it (lucky) !!!!!!!"
1490 goto 1560
1500 print "are terrible"
1510 let h=h-5*c1
1520 print h;" was the speed through the curve"
1530 print v;" was your speed, by the way ";
1540 goto 1270
1550 print "you lead footed $%&''%$&$&&((&$&$'$($(($&'%#%##%%%"
1560 print "you want to try again, right !!!!"
1570 print "1-yes, 2-no";
1580 input v
1590 if v=2 then 1620
1600 n2=1
1610 goto 1640
1620 print "chicken"
1630 goto 1700
1640 restore
1650 goto 220
1660 data 45,.53,10
1665 data 60,.5,13
1670 data 70,.41,15
1680 data 80,.39,18
1700 end
