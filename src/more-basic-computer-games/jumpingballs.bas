10 print tab(22);"jumping balls"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
1040 dim q(9,1)
1050 print "instructions";
1060 input a$
1070 if left$(a$,1)="n" then 1150
1080 print "in this game you are given 8 balls on a 9 hole"
1090 print "board.  the object is to reverse the order of the balls"
1100 print "the 's' are silver balls and the 'g' are gold."
1110 print "you must set the silver to where the gold are and"
1120 print "the gold to where the silver are.  the space is"
1125 print "a period on the board."
1130 print "good luck!! here is the board:"
1140 s=0
1150 for x=1 to 4
1160 let q(x,1)=1
1170 next x
1180 let q(5,1)=o
1190 for x=6 to 9
1200 let q(x,1)=2
1210 next x
1220 let a$=".sg"
1230 for x=1 to 9
1240 print mid$(a$,q(x,1)+1,1);
1250 print " ";
1260 next x
1265 s=s+1
1270 print "move";
1280 input m,m1
1290 if m<=9 and m>=1 and m1<=9 and m1>=1 then 1320
1300 print "illegal move"
1310 goto 1270
1320 rem:      check for legal move
1330 if m+1=m1 or m-1=m1 then 1430
1340 rem:     subroutine for checking jumps
1350 if m=9 then 1390
1360 if m=1 then 1410
1370 if q(m+1,1)=0 or q(m-1,1)=0 then 1300
1380 goto 1420
1390 if q(m-1,1)=0 then 1300
1400 goto 1420
1410 if q(m+1,1)=0 then 1300
1420 if m+2<>m1 and m-2<>m1 then 1300
1430 if q(m,1)<>0 then 1460
1440 print "nothing at space";m
1450 goto 1270
1460 if q(m1,1)=0 then 1490
1470 print "space";m1;"is occupied"
1480 goto 1270
1490 let q(m1,1)=q(m,1)
1500 let q(m,1)=0
1510 x9=q(1,1)+q(2,1)+q(3,1)+q(4,1)
1512 y9=q(6,1)+q(7,1)+q(8,1)+q(9,1)
1514 if x9=8 and y9=4 then 1530
1520 goto 1230
1530 print "you win!!!"
1535 print "you completed the game in ";s;" moves!!!!"
1540 print "again";
1550 input a$
1560 if left$(a$,1)="y" then 1130
1570 end
