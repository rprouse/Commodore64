10 print tab(33);"chomp"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
40 dim a(10,10)
100 rem *** the game of chomp *** copyright pcc 1973 ***
110 print 
120 print "this is the game of chomp (scientific american, jan 1973)"
130 print "do you want the rules (1=yes, 0=no!)";
140 input r
150 if r=0 then 340
160 f=1
170 r=5
180 c=7
190 print "chomp is for 1 or more players (humans only)."
200 print
210 print "here's how a board looks (this one is 5 by 7):"
220 gosub 540
230 print
240 print "the board is a big cookie - r rows high and c columns"
250 print "wide. you input r and c at the start. in the upper left"
260 print "corner of the cookie is a poison square (p). the one who"
270 print "chomps the poison square loses. to take a chomp, type the"
280 print "row and column of one of the squares on the cookie."
290 print "all of the squares below and to the right of that square"
300 print "(including that square, too) disappear -- chomp!!"
310 print "no fair chomping squares that have already been chomped,"
320 print "or that are outside the original dimensions of the cookie."
330 print 
340 print "here we go..."
350 rem 
360 f=0
370 for i=1 to 10
372 for j=1 to 10
375 a(i,j)=0
377 next j
379 next i
380 print 
390 print "how many players";
400 input p
410 i1=0
420 print "how many rows";
430 input r
440 if r <= 9 then 470
450 print "too many rows (9 is maximum). now, ";
460 goto 420
470 print "how many columns";
480 input c
490 if c <= 9 then 530
500 print "too many columns (9 is maximum). now, ";
510 goto 470
530 print 
540 for i=1 to r
550 for j=1 to c
560 a(i,j)=1
570 next j
580 next i
590 a(1,1)=-1
600 rem print the board
610 print 
620 print tab(7);"1 2 3 4 5 6 7 8 9"
630 for i=1 to r
640 print i;tab(7);
650 for j=1 to c
660 if a(i,j)=-1 then 700
670 if a(i,j)=0 then 720
680 print "* ";
690 goto 710
700 print "p ";
710 next j
720 print 
730 next i
740 print 
750 if f=0 then 770
760 return 
770 rem get chomps for each player in turn
780 let i1=i1+1
790 let p1=i1-int(i1/p)*p
800 if p1 <> 0 then 820
810 p1=p
820 print "player";p1
830 print "coordinates of chomp (row,column)";
840 input r1,c1
850 if r1<1 then 920
860 if r1>r then 920
870 if c1<1 then 920
880 if c1>c then 920
890 if a(r1,c1)=0 then 920
900 if a(r1,c1)=-1 then 1010
910 goto 940
920 print "no fair. you're trying to chomp on empty space!"
930 goto 820
940 for i=r1 to r
950 for j=c1 to c
960 a(i,j)=0
970 next j
980 next i
990 goto 610
1000 rem end of game detected in line 900
1010 print "you lose, player";p1
1020 print 
1030 print "again (1=yes, 0=no!)";
1040 input r
1050 if r=1 then 340
1060 end
