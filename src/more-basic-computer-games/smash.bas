10 print tab(26);"smash"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
50 dim a(7),j(6)
70 print"do you need instructions";
80 input z$
90 print
100 for x=1 to 7:read a(x):next x
105 for x=1 to 6:read j(x):next x
120 if left$(z$,1)="n" then 350
130 print"this is smash--the game that simulates a car race."
140 print"you will respond with one of the following manuevers"
150 print "when a '?' is typed.  the position numbers refer to the"
160 print"point at which you are on the track-they go as follows:"
170 print
180 print "  1-the start line"
190 print "  2-mid straight-away"
200 print "  3-coming up on a left turn"
210 print "  4-mid left turn"
220 print "  5-coming up on a right turn"
230 print "  6-mid-right turn"
240 print "  7-the finish line"
250 print
260 print"     maneuvers"
270 print"  1-floor it"
280 print"  2-accelerate(moderate)"
290 print"  3-brake slight"
300 print"  4-jam on the brakes"
310 print"  5-sharp right"
320 print"  6-moderate right"
330 print"  7-sharp left"
340 print"  8-moderate left"
350 print
360 print"time(sec)","miles to go","m.p.h.","position","move"
370 let a=int(10+rnd(1)*5):y=a
380 let b=o:t=o
390 let c=1
400 goto 420
410 let c=(int(2+rnd(1)*5))
420 print t,a,b,c,
430 input d
440 if d<>int(d) then 470
450 if d>8 then 470
460 if d>=1 then 490
470 print"one thru eight only"
480 goto 420
490 if d<>1 then 510
500 let b=3*b+20+int(10+rnd(1)*91)/10
510 if d<>2 then 530
520 let b=3*b/2+7+int(10+rnd(1)*61)/10
530 if d<>3 then 550
540 let b=7*b/8-6+int(10+rnd(1)*41)/10
550 if d<>4 then 570
560 let b=4*b/7-26+int(10+rnd(1)*81)/10
570 if d=7 then 590
580 if d<>5 then 600
590 let b=9*b/10*(.7+rnd(1)*.6)
600 if d=8 then 620
610 if d<>6 then 630
620 let b=13*b/14*(.7+rnd(1)*.6)
630 if b>0 then 650
640 let b=0
650 if a-b/120>0 then 730
660 let t=t+a*3600/b
670 print t,0,b,7
680 print"that ends the race, you placed #"int(t/(20*y)+.5)
690 print"your average speed was"y*3600/t"m.p.h."
700 if int(t/(20*y)+.5)<>1 then 980
710 print"that was a perfect race, champ!"
720 goto 980
730 if c<>2 then 760
740 if d=7 then 960
750 if d=5 then 960
760 if c=3 then 780
770 if c<>4 then 800
780 if d=5 then 960
790 if d=6 then 960
800 if c=6 then 820
810 if c<>5 then 840
820 if d=7 then 960
830 if d=8 then 960
840 if b>j(c) then 970
850 if int(1+rnd(0)*77)<>40 then 880
860 print"smash--you have been hit by another car!!"
870 goto 980
880 let t=t+30
890 let a=a-b/120
900 if c=1 then 410
910 if c=4 then 410
920 if c-2 then 410
930 if c=6 then 410
940 let c=c+1
950 goto 420
960 print"bad move!"
970 print "smash--you went right into the wall!"
980 print"do you want to play again";
990 input z$
1000 if left$(z$,1)="y" then 350
1020 data 2,3,5,2,3,5,2,200,240,180,170,180,170
1030 end
