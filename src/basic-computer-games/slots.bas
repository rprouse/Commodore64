10 print tab(30);"slots"
20 print tab(15);"creative computing  morristown, new jersey"
30 print: print: print
100 rem produced by fred mirabelle and bob harper on jan 29, 1973
110 rem it simulates the slot machine.
120 print "you are in the h&m casino,in front of one of our"
130 print "one-arm bandits. bet from $1 to $100."
140 print "to pull the arm, punch the return key after making your bet."
150 let p=0
160 print: print"your bet";
170 input m
180 if m>100 then 860
190 if m<1 then 880
200 m=int(m)
210 gosub 1270 
220 print
230 let x=int(6*rnd(1)+1)
240 let y=int(6*rnd(1)+1)
250 let z=int(6*rnd(1)+1)
260 print
270 if x=1 then 910
280 if x=2 then 930
290 if x=3 then 950
300 if x=4 then 970
310 if x=5 then 990
320 if x=6 then 1010
330 if y=1 then 1030
340 if y=2 then 1050
350 if y=3 then 1070
360 if y=4 then 1090
370 if y=5 then 1110
380 if y=6 then 1130
390 if z=1 then 1150
400 if z=2 then 1170
410 if z=3 then 1190
420 if z=4 then 1210
430 if z=5 then 1230
440 if z=6 then 1250
450 if x=y then 600
460 if x=z then 630
470 if y=z then 650
480 print
490 print "you lost."
500 let p=p-m
510 print "your standings are $"p
520 print "again";
530 input a$
540 if a$="y" then 160
550 print
560 if p<0 then 670
570 if p=0 then 690
580 if p>0 then 710
590 goto 1350
600 if y=z then 730
610 if y=1 then 820
620 goto 1341
630 if z=1 then 820
640 goto 470
650 if z=1 then 820
660 goto 1341
670 print "pay up!  please leave your money on the terminal."
680 goto 1350
690 print"hey, you broke even."
700 goto 1350
710 print "collect your winnings from the h&m cashier."
720 goto 1350
730 if z=1 then 780
740 print: print"**top dollar**"
750 print "you won!"
760 p=(((10*m)+m)+p)
770 goto 510
780 print:print"***jackpot***"
790 print "you won!"
800 p=(((100*m)+m)+p)
810 goto 510
820 print:print"*double bar*"
830 print"you won!"
840 p=(((5*m)+m)+p)
850 goto 510
860 print"house limits are $100"
870 goto 160
880 print"minimum bet is $1"
890 goto 160
900 goto 220
910 print"bar";:gosub 1310
920 goto 330
930 print"bell";:gosub 1310
940 goto 330
950 print"orange";:gosub 1310
960 goto 330
970 print"lemon";:gosub 1310
980 goto 330
990 print"plum";:gosub 1310
1000 goto 330
1010 print"cherry";:gosub 1310
1020 goto 330
1030 print" bar";:gosub 1310
1040 goto 390
1050 print" bell";:gosub 1310
1060 goto 390
1070 print" orange";:gosub 1310
1080 goto 390
1090 print" lemon";:gosub 1310
1100 goto 390
1110 print" plum";:gosub 1310
1120 goto 390
1130 print" cherry";:gosub 1310
1140 goto 390
1150 print" bar"
1160 goto 450
1170 print" bell"
1180 goto 450
1190 print" orange"
1200 goto 450
1210 print" lemon"
1220 goto 450
1230 print" plum"
1240 goto 450
1250 print" cherry"
1260 goto 450
1270 for q4=1 to 10 
1280 print chr$(7);
1290 next q4
1300 return
1310 for t8=1 to 5
1320 print chr$(7);
1330 next t8
1340 return
1341 print: print "double!!"
1342 print"you won!"
1343 p=(((2*m)+m)+p)
1344 goto 510
1350 stop
9999 end
