10 print tab(33);"towers"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
90 print
100 rem*** initialize
110 dim t(7,3)
120 e=0
130 for d=1 to 7
140 for n=1 to 3
150 t(d,n)=0
160 next n
170 next d
180 print "towers of hanoi puzzle.": print
200 print "you must transfer the disks from the left to the right"
205 print "tower, one at a time, never putting a larger disk on a"
210 print "smaller disk.": print
215 input "how many disks do you want to move (7 is max)";s
220 print
230 m=0
240 for q=1 to 7
250 if q=s then 350
260 next q
270 e=e+1
280 if e>2 then 310
290 print "sorry, but i can't do that job for you.": goto 215
310 print "all right, wise guy, if you can't play the game right, i'll"
320 print "just take my puzzle and go home.  so long.": stop
340 rem *** store disks from smallest to largest
350 print "in this program, we shall refer to disks by numerical code."
355 print "3 will represent the smallest disk, 5 the next size,"
360 print "7 the next, and so on, up to 15.  if you do the puzzle with"
365 print "2 disks, their code names would be 13 and 15.  with 3 disks"
370 print "the code names would be 11, 13 and 15, etc.  the needles"
375 print "are numbered from left to right, 1 to 3.  we will"
380 print "start with the disks on needle 1, and attempt to move them"
385 print "to needle 3."
390 print: print "good luck!": print
400 y=7: d=15
420 for x=s to 1 step -1
430 t(y,1)=d: d=d-2: y=y-1
460 next x
470 gosub 1230
480 print "which disk would you like to move";:e=0
500 input d
510 if (d-3)*(d-5)*(d-7)*(d-9)*(d-11)*(d-13)*(d-15)=0 then 580
520 print "illegal entry... you may only type 3,5,7,9,11,13, or 15."
530 e=e+1: if e>1 then 560
550 goto 500
560 print "stop wasting my time.  go bother someone else.": stop
580 rem *** check if requested disk is below another
590 for r=1 to 7
600 for c=1 to 3
610 if t(r,c)=d then 640
620 next c: next r
640 for q=r to 1 step -1
645 if t(q,c)=0 then 660
650 if t(q,c)<d then 680
660 next q
670 goto 700
680 print "that disk is below another one.  make another choice."
690 goto 480
700 e=0
705 input "place disk on which needle";n
730 if (n-1)*(n-2)*(n-3)=0 then 800
735 e=e+1
740 if e>1 then 780
750 print "i'll assume you hit the wrong key this time.  but watch it,"
760 print "i only allow one mistake.": goto 705
780 print "i tried to warn you, but you wouldn't listen."
790 print "bye bye, big shot.":stop
800 for r=1 to 7
810 if t(r,n)<>0 then 840
820 next r
830 goto 880
835 rem *** check if disk to be placed on a larger one
840 if d<t(r,n) then 880
850 print "you can't place a larger disk on top of a smaller one,"
860 print "it might crush it!": print "now then, ";:goto 480
875 rem *** move relocated disk
880 for v=1 to 7: for w=1 to 3
900 if t(v,w)=d then 930
910 next w: next v
925 rem *** locate empty space on needle n
930 for u=1 to 7
940 if t(u,n)<>0 then 970
950 next u
960 u=7: goto 980
965 rem *** move disk and set old location to 0
970 u=u-1
980 t(u,n)=t(v,w): t(v,w)=0
995 rem *** print out current status
1000 gosub 1230
1018 rem *** check if done
1020 m=m+1
1030 for r=1 to 7: for c=1 to 2
1050 if t(r,c)<>0 then 1090
1060 next c: next r
1080 goto 1120
1090 if m<=128 then 480
1100 print "sorry, but i have orders to stop if you make more than"
1110 print "128 moves.": stop
1120 if m<>2^s-1 then 1140
1130 print:print "congratulations!!":print
1140 print "you have performed the task in";m;"moves."
1150 print: print "try again (yes or no)";: input a$
1160 if a$="no" then 1390
1170 if a$="yes" then 90
1180 print: print "'yes' or 'no' please";: input a$: goto 1160
1230 rem *** print subroutine
1240 for k=1 to 7
1250 z=10
1260 for j=1 to 3
1270 if t(k,j)=0 then 1330
1280 print tab(z-int(t(k,j)/2));
1290 for v=1 to t(k,j)
1300 print "*";
1310 next v
1320 goto 1340
1330 print tab(z);"*";
1340 z=z+21
1350 next j
1360 print
1370 next k
1380 return
1390 print: print "thanks for the game!": print: end
