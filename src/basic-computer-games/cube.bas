10 print tab(34);"cube"
20 print tab(15);"creative computing  morristown, new jersey"
30 print : print : print
100 print "do you want to see the instructions? (yes--1,no--0)"
110 input b7
120 if b7=0 then 370
130 print"this is a game in which you will be playing against the"
140 print"random decision of the computer. the field of play is a"
150 print"cube of side 3. any of the 27 locations can be designated"
160 print"by inputing three numbers such as 2,3,1. at the start,"
170 print"you are automatically at location 1,1,1. the object of"
180 print"the game is to get to location 3,3,3. one minor detail:"
190 print"the computer will pick, at random, 5 locations at which"
200 print"it will plant land mines. if you hit one of these locations"
210 print"you lose. one other detail: you may move only one space "
220 print"in one direction each move. for  example: from 1,1,2 you"
230 print"may move to 2,1,2 or 1,1,3. you may not change"
240 print"two of the numbers on the same move. if you make an illegal"
250 print"move, you lose and the computer takes the money you may"
260 print"have bet on that round."
270 print
280 print
290 print"all yes or no questions will be answered by a 1 for yes"
300 print"or a 0 (zero) for no."
310 print
320 print"when stating the amount of a wager, print only the number"
330 print"of dollars (example: 250)  you are automatically started with"
340 print"500 dollars in your account."
350 print
360 print "good luck!"
370 let a1=500
380 let a=int(3*(rnd(x)))
390 if a<>0 then 410
400 let a=3
410 let b=int(3*(rnd(x)))
420 if b<>0 then 440
430 let b=2
440 let c=int(3*(rnd(x)))
450 if c<>0 then 470
460 let c=3
470 let d=int(3*(rnd(x)))
480 if d<>0 then 500
490 let d=1
500 let e=int(3*(rnd(x)))
510 if e<>0 then 530
520 let e=3
530 let f=int(3*(rnd(x)))
540 if f<>0 then 560
550 let f=3
560 let g=int(3*(rnd(x)))
570 if g<>0 then 590
580 let g=3
590 let h=int(3*(rnd(x)))
600 if h<>0 then 620
610 let h=3
620 let i=int(3*(rnd(x)))
630 if i<>0 then 650
640 let i=2
650 let j=int(3*(rnd(x)))
660 if j<>0 then 680
670 let j=3
680 let k=int(3*(rnd(x)))
690 if k<>0 then 710
700 let k=2
710 let l=int(3*(rnd(x)))
720 if l<>0 then 740
730 let l=3
740 let m=int(3*(rnd(x)))
750 if m<>0 then 770
760 let m=3
770 let n=int(3*(rnd(x)))
780 if n<>0 then 800
790 let n=1
800 let o=int (3*(rnd(x)))
810 if o <>0 then 830
820 let o=3
830 print "want to make a wager?"
840 input z
850 if z=0 then 880
860 print "how much ";
870 input z1
876 if a1<z1 then 1522
880 let w=1
890 let x=1
900 let y=1
910 print
920 print "it's your move:  ";
930 input p,q,r
940 if p>w+1 then 1030
950 if p=w+1 then 1000
960 if q>x+1 then 1030
970 if q=(x+1) then 1010
980 if r >(y+1)  then 1030
990 goto 1050
1000 if q>= x+1 then 1030
1010 if r>=y+1 then 1030
1020 goto 1050
1030 print:print "illegal move. you lose."
1040 goto 1440
1050 let w=p
1060 let x=q
1070 let y=r
1080 if p=3 then 1100
1090 goto 1130
1100 if  q=3 then 1120
1110 goto 1130
1120 if r=3 then 1530
1130 if p=a then 1150
1140 goto 1180
1150 if q=b then 1170
1160 goto 1180
1170 if r=c then 1400
1180 if p=d then 1200
1190 goto 1230
1200 if q=e then 1220
1210 goto 1230
1220 if  r=f then 1400
1230 if p=g then 1250
1240 goto 1280
1250 if q=h then 1270
1260 goto 1280
1270 if r=i then 1400
1280 if p=j then 1300
1290 goto 1330
1300 if q=k then 1320
1310 goto 1330
1320 if r=l then 1400
1330 if p=m then 1350
1340 goto 1380
1350 if q=n then 1370
1360 goto 1380
1370 if r=o then 1400
1380 print "next move: ";
1390 goto 930 
1400 print"******bang******"
1410 print "you lose!"
1420 print
1430 print
1440 if   z=0 then 1580
1450 print 
1460 let z2=a1-z1
1470 if z2>0 then 1500
1480 print "you bust."
1490 goto 1610
1500 print " you now have"; z2; "dollars."
1510 let a1=z2
1520 goto 1580
1522 print"tried to fool me; bet again";
1525 goto 870
1530 print"congratulations!"
1540 if z=0 then 1580
1550 let z2=a1+z1
1560 print "you now have"; z2;"dollars."
1570 let a1=z2
1580 print"do you want to try again ";
1590 input s
1600 if s=1 then 380
1610 print "tough luck!"
1620 print
1630 print "goodbye."
1640 end
