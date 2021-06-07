1 rem lines 70-100 commented out.
8 print tab(22);"artillery 3"
9 print tab(20);"creative computing"
10 print tab(18);"morristown, new jersey"
11 print:print:print
20 t=0
60 dim v(3),x(3),p(3),r(3,3)
70 rem mat v=zer
80 rem mat x=zer
90 rem mat p=zer
100 rem mat r=zer
110 data 1,2,2,3,3,1,1,3,3,2,2,1,2,3,3,1,1,2,0
120 print "welcome to 'war3'. two or three humans may play!"
130 print "do you wish some assistance";
140 input a$
150 if a$="yes" then 1310
160 print ""
170 print "no. of players";
180 input n
190 if n=2 then 240
200 if n=3 then 270
210 print "error--two or three players!"
220 print
230 goto 160
240 n1=1
250 print ""
260 goto 290
270 n1=n
280 print ""
290 for j=1 to n1
300 read a,b
310 print "distance (ft.) ";a;" to ";b;
320 input r(a,b)
330 r(b,a)=r(a,b)
340 next j
350 print ""
360 restore
370 if n=2 then 460
380 for j=1 to n
390 read a,b,c,d,e,f
400 if r(a,b)<r(c,d)+r(e,f) then 440
410 print "error--illegal triangle. re-enter ranges."
420 restore
430 goto 290
440 next j
450 print
460 for j=1 to n
470 print "muzzle velocity (ft./sec.) of ";j;
480 input v(j)
490 next j
500 print ""
510 for j=1 to n
520 x(j)=v(j)^2/32
530 next j
540 for a=1 to n
550 for b=1 to n
560 if x(a)>r(a,b) then 610
570 print "error--";a;" cannot reach ";b
580 print "what is the muzzle velocity of ";a;
590 input v(a)
600 goto 510
610 next b
620 next a
630 n1=n
640 print ""
650 print ""
660 print "round ";t+1
670 print
680 for m=1 to n
690 if n=3 then 750
700 c=1
710 if m<> 1 then 730
720 c=2
730 print "player ";m;" shooting at ";c
740 goto 890
750 if p(m)=12 then 1280
760 print "player ";m;"shooting at";
770 input c
780 on c goto 830,830,830
810 print "error--players designated 1,2,3."
820 goto 760
830 if c<> m then 860
840 print "error--cannot shoot self."
850 goto 760
860 if p(c) <> 12 then 890
870 print "error-- ";c;" is defunct"
880 goto 760
890 print "firing angle";
900 input a3
910 if a3<0 then 940
920 if a3>180 then 940
930 goto 970
940 print "error--fired into ground. ";m;" now defunct."
950 p(m)=12
960 goto 760
970 if a3<90 then 1000
980 print "error--fired wrong way, lose shot."
990 goto 760
1000 z=sin(a3*3.49064e-02)*v(m)^2/32
1010 x=(r(m,c)/1000*rnd(1))-(r(m,c)/1000*rnd(1))
1020 d=x+z
1030 d1=r(m,c)*.05
1040 if d<d1 then 1080
1050 if abs(d-r(m,c))<d1 then 1110
1060 if d<r(m,c) then 1140
1070 if d>r(m,c) then 1160
1080 print " too close- ";m;" is defunct."
1090 p(m)=12
1100 goto 1180
1110 print " a hit - ";c;" is defunct."
1120 p(c)=12
1130 goto 1180
1140 print " you undershot by ";abs(d-r(m,c));" feet."
1150 goto 1270
1160 print " you overshot by ";abs(d-r(m,c));" feet."
1170 goto 1270
1180 n1=n1-1
1190 if n1>1 then 1270
1200 for m1=1 to n
1210 if p(m1)=12 then 1250
1220 print
1230 print "game over. ";m1;" wins."
1240 goto 1430
1250 next m1
1260 stop
1270 print ""
1280 next m
1290 t=t+1
1300 goto 650
1310 print
1320 print "this is a war game. two or three players are given"
1330 print "(theoretical) cannons with which they attempt to shoot each"
1340 print "other. the parameters for distances and muzzle velocities are"
1350 print "set at the beginning of the game. the shots are fired by"
1360 print "giving a firing angle, expressed in degrees from horizontal"
1370 print
1380 print "the computer will keep track of the game and report all"
1390 print "moves. a 'hit' is scored by firing a shot within 5% of the"
1400 print "total distance fired over. good luck"
1410 print ""
1420 goto 160
1430 end
