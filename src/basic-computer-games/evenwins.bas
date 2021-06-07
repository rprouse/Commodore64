1 print tab(31);"even wins"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print
4 y1=0
10 m1=0
20 dim m(20),y(20)
30 print "     this is a two person game called 'even wins.'"
40 print "to play the game, the players need 27 marbles or"
50 print "other objects on a table."
60 print
70 print 
80 print "     the 2 players alternate turns, with each player"
90 print "removing from 1 to 4 marbles on each move.  the game"
100 print "ends when there are no marbles left, and the winner"
110 print "is the one with an even number of marbles."
120 print
130 print
140 print "     the only rules are that (1) you must alternate turns,"
150 print "(2) you must take between 1 and 4 marbles each turn,"
160 print "and (3) you cannot skip a turn."
170 print
180 print
190 print
200 print "     type a '1' if you want to go first, and type"
210 print "a '0' if you want me to go first."
220 input c
225 print
230 if c=0 then 250
240 goto 1060
250 t=27
260 m=2
270 print:print "total=";t:print
280 m1=m1+m
290 t=t-m
300 print "i pick up";m;"marbles."
310 if t=0 then 880
320 print:print "total=";t
330 print
340 print "     and what is your next move, my total is";m1
350 input y
360 print
370 if y<1 then 1160
380 if y>4 then 1160
390 if y<=t then 430
400 print "     you have tried to take more marbles than there are"
410 print "left.  try again."
420 goto 350
430 y1=y1+y
440 t=t-y
450 if t=0 then 880
460 print "total=";t
470 print
480 print "your total is";y1
490 if t<.5 then 880
500 r=t-6*int(t/6)
510 if int(y1/2)=y1/2 then 700
520 if t<4.2 then 580
530 if r>3.4 then 620
540 m=r+1
550 m1=m1+m
560 t=t-m
570 goto 300
580 m=t
590 t=t-m
600 goto 830
610 rem     250 is where i win.
620 if r<4.7 then 660
630 if r>3.5 then 660
640 m=1
650 goto 670
660 m=4
670 t=t-m
680 m1=m1+m
690 goto 300
700 rem     i am ready to encode the strat for when opp tot is even
710 if r<1.5 then 1020
720 if r>5.3 then 1020
730 m=r-1
740 m1=m1+m
750 t=t-m
760 if t<.2 then 790
770 rem     is # zero here
780 goto 300
790 rem     is = zero here
800 print "i pick up";m;"marbles."
810 print
820 goto 880
830 rem    this is where i win
840 print "i pick up";m;"marbles."
850 print
860 print "total = 0"
870 m1=m1+m
880 print "that is all of the marbles."
890 print
900 print " my total is";m1;", your total is";y1
910 print
920 if int(m1/2)=m1/2 then 950
930 print "     you won.  do you want to play"
940 goto 960
950 print "     i won.  do you want to play"
960 print "again?  type 1 for yes and 0 for no."
970 input a1
980 if a1=0 then 1030
990 m1=0
1000 y1=0
1010 goto 200
1020 goto 640
1030 print
1040 print "ok.  see you later."
1050 goto 1230
1060 t=27
1070 print
1080 print
1090 print
1100 print "total=";t
1110 print
1120 print
1130 print "what is your first move";
1140 input y
1150 goto 360
1160 print
1170 print "the number of marbles you take must be a positive"
1180 print "integer between 1 and 4."
1190 print
1200 print "     what is your next move?"
1210 print
1220 goto 350
1230 end
