1 print tab(26);"condot"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey":print
4 print
5 print
6 print "this program will play connect the dots unh you."
7 print "the game is played on a 4 x 4 array. when"
8 print "you want to make a move you must type in"
9 print "the coordinates of the space betueen the two dots you"
10 print "want to connect. enter each of your moves by typing"
11 print "the row number, a comma and the column number."
12 print "the upper left hand corner of the array is 1,1."
13 print "here we go."
20 dim a(12,12)
30 v=0
40 for r=1 to 12
50 for c=1 to 12
60 if r/2=int(r/2) then 100
70 if c/2 = int(c/2) then 100
80 a(r,c)=-50
90 goto 110
100 a(r,c)=0
110 next c
120 next r
130 if v=1 then 200
200 gosub 1000
210 print "your move";
220 input x,y
230 if x=int(x) then 260
240 print "you really don't want to put a line there!!!!"
250 goto 210
260 if (x-1)*(x-7) > 0 then 240
265 x=x+2
270 if (y-1)*(y-7) > 0 then 240
272 y=y+2
280 if (x+y+1)/2 <> int((x+y+1)/2) then 240
290 if a(x,y) <> 0 then 240
300 a(x,y)=50
310 if x/2 =int(x/2) then 380
320 if a(x-2,y)+a(x-1,y+1)+a(x-1,y-1) <> 150 then 350
330 p=1
340 a(x-1,y)=1
350 if a(x+2,y)+a(x+1,y+1)+a(x+1,y-1) <> 150 then 440
360 a(x+1,y)=1
370 goto 200
380 if a(x,y-2)+a(x+1,y-1)+a(x-1,y-1) <> 150 then 410
390 a(x,y-1)=1
400 p=1
410 if a(x,y+2)+a(x+1,y+1)+a(x-1,y+1) <> 150 then 440
420 a(x,y+1)=1
430 goto 200
440 if p=1 then 200
450 gosub 1000
460 print "my move"
470 for r=4 to 10 step 2
480 for c=4 to 10 step 2
490 if a(r-1,c)+a(r+1,c)+a(r,c-1)+a(r,c+1) <> 150 then 680
500 a(r,c)=-1
510 if a(r-1,c) <> 0 then 550
520 a(r-1,c)=50
530 if a(r-3,c)+a(r-2,c-1)+a(r-2,c+1) <> 150 then 450
540 let a(r-2,c)=-1
550 if a(r+1,c) <> 0 then 590
560 a(r+1,c)=50
570 if a(r+3,c)+a(r+2,c-1)+a(r+2,c+1) <> 150 then 450
580 a(r+2,c)=-1
590 if a(r,c-1) <> 0 then 630
600 a(r,c-1)=50
610 if a(r,c-3)+a(r-1,c-2)+a(r+1,c+2) <> 150 then 450
620 a(r,c-2)=-1
630 if a(r,c+1) <> 0 then 450
640 a(r,c+1)=50
650 if a(r,c+3)+a(r-1,c+2)+a(r+1,c+2) <> 150 then 450
660 a(r,c+2)=-1
670 goto 450
680 next c
690 next r
692 if e > 1 then 730
700 if a(12-x,12-y)<>0 then 730
710 a(12-x,12-y)=50
712 if e > 1 then 870
720 goto 200
730 for r=3 to 9
740 for c=3 to 9
750 if (r+c)/2=int((r+c)/2) then 850
760 if a(r,c) <> 0 then 850
780 if r/2 = int(r/2) then 830
790 if a(r-2,c)+a(r-1,c-1)+a(r-1,c+1) = 100 then 850
800 if a(r+2,c)+a(r+1,c-1)+a(r+1,c+1) =100 then 850
810 a(r,c)=50
820 goto 200
830 if a(r,c-2)+a(r-1,c-1)+a(r+1,c-1)=100 then 850
840 if a(r,c+2)+a(r-1,c+2)+a(r+1,c+1) <> 100 then 810
850 next c
860 next r
862 if e > 1 then 700
870 r=int(rnd(1)*7)+3
880 c=int(rnd(1)*7)+3
881 if r/2=int(r/2) then 885
882 if c/2=int(c/2) then 900
883 goto 870
885 if c/2 <> int(c/2) then 900
886 goto 870
900 if a(r,c)<> 0 then 870
910 a(r,c)=50
920 goto 200
930 print "do you want to play again (type 1 for yes or 2 for no)"
940 input b
950 if b = 1 then 40
960 end
1000 p=0
1010 d=0
1020 e=0
1030 for r=3 to 9
1040 for c=3 to 9
1050 if a(r,c) <> 0 then 1080
1060 print "   ";
1070 goto 1240
1080 if a(r,c) <> -50 then 1110
1090 print " . ";
1100 goto 1240
1110 if a(r,c) <> -1 then 1140
1120 print " c ";
1130 goto 1170
1140 if a(r,c) <> 1 then 1200
1150 print " h ";
1170 d=d+a(r,c)
1180 e=e+1
1190 goto 1240
1200 if r/2 = int(r/2) then 1230
1210 print " - ";
1220 goto 1240
1230 print " : ";
1240 next c
1245 print
1250 next r
1260 if e >=9 then 1280
1270 return
1280 if d > 0 then 1310
1290 print "i won"
1300 goto 930
1310 print "you won!!!"
1320 goto 930
1400 end
