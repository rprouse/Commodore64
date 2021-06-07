10 print tab(33);"bombardment"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
100 print "you are on a battlefield with 4 platoons and you"
110 print "have 25 outposts available where they may be placed."
120 print "you can only place one platoon at any one outpost."
130 print "the computer does the same with its four platoons."
135 print
140 print "the object of the game is to fire missles at the"
150 print "outposts of the computer.  it will do the same to you."
160 print "the one who destroys all four of the enemy's platoons"
170 print "first is the winner."
180 print
190 print "good luck... and tell us where you want the bodies sent!"
200 print
210 print "tear off matrix and use it to check off the numbers."
220 for r=1 to 5: print: next r
260 dim m(100)
270 for r=1 to 5
280 i=(r-1)*5+1
290 print i,i+1,i+2,i+3,i+4
300 next r
350 for r=1 to 10: print: next r
380 c=int(rnd(1)*25)+1
390 d=int(rnd(1)*25)+1
400 e=int(rnd(1)*25)+1
410 f=int(rnd(1)*25)+1
420 if c=d then 390
430 if c=e then 400
440 if c=f then 410
450 if d=e then 400
460 if d=f then 410
470 if e=f then 410
480 print "what are your four positions";
490 input g,h,k,l
495 print
500 print "where do you wish to fire your missle";
510 input y
520 if y=c then 710
530 if y=d then 710
540 if y=e then 710
550 if y=f then 710
560 goto 630
570 m=int(rnd(1)*25)+1
575 goto 1160
580 if x=g then 920
590 if x=h then 920
600 if x=l then 920
610 if x=k then 920
620 goto 670
630 print "ha, ha you missed. my turn now:"
640 print: print: goto 570
670 print "i missed you, you dirty rat. i picked";m". your turn:"
680 print: print: goto 500
710 q=q+1
720 if q=4 then 890
730 print "you got one of my outposts!"
740 if q=1 then 770
750 if q=2 then 810
760 if q=3 then 850
770 print "one down, three to go."
780 print: print: goto 570
810 print "two down, two to go."
820 print: print: goto 570
850 print "three down, one to go."
860 print: print: goto 570
890 print "you got me, i'm going fast. but i'll get you when"
900 print "my transisto&s recup%ra*e!"
910 goto 1235
920 z=z+1
930 if z=4 then 1110
940 print "i got you. it won't be long now. post";x;"was hit."
950 if z=1 then 990
960 if z=2 then 1030
970 if z=3 then 1070
990 print "you have only three outposts left."
1000 print: print: goto 500
1030 print "you have only two outposts left."
1040 print: print: goto 500
1070 print "you have only one outpost left."
1080 print: print: goto 500
1110 print "you're dead. your last outpost was at";x;". ha, ha, ha."
1120 print "better luck next time."
1150 goto 1235
1160 p=p+1
1170 n=p-1
1180 for t=1 to n
1190 if m=m(t) then 570
1200 next t
1210 x=m
1220 m(p)=m
1230 goto 580
1235 end
