10 print tab(26);"chase"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
40 print:print:print
41 print "you are within the walls of a high voltage maze"
42 print "there are five security machines trying to destroy you"
60 print "you are the '*'  the interceptors are the '+'"
70 print "the areas marked 'x' are high voltage"
80 print "your only chance for survival is to maneuver each"
90 print "interceptor into an 'x'.-----good luck-----"
100 print "moves are   7.8.9"
110 print "            4.*.6"
120 print "            1.2.3"
130 print
140 print "10 = no move for the rest of the game"
150 print "-1 = gave up, situation hopeless."
160 print " 0 = a tremendous (but unfortunately random) leap"
170 print
180 dim a(10,20),a1(10,20),n(12),l(5),m(5),l1(5),m1(5)
190 rem
210 for b=1 to 10
220 for c=1 to 20
230 x=int(10*rnd(1))
240 if x=5 then 270
250 a(b,c)=asc(" ")
260 goto 280
270 a(b,c)=asc("x")
280 next c
290 next b
300 for d=1 to 10
310 a(d,1)=asc("x"):a(d,20)=asc("x")
320 next d
330 for f=1 to 20
340 a(1,f)=asc("x"):a(10,f)=asc("x")
350 next f
360 goto 410
370 h=int(2+8*rnd(1))
380 i=int(2+18*rnd(1))
390 if a(h,i)<>asc(" ") then 370
400 return
410 gosub 370
420 a(h,i)=asc("*")
430 j=h:k=i
440 for n9=1 to 5
450 gosub 370
460 a(h,i)=asc("+")
470 l(n9)=h:m(n9)=i
480 next n9
490 for b1=1 to 10:for b2=1 to 20:a1(b1,b2)=a(b1,b2):next b2:next b1
500 for b1=1 to 5:l1(b1)=l(b1):m1(b1)=m(b1):next b1
520 j1=j:k1=k
530 y9=0
540 for d2=1 to 10
550 for b2=1 to 20
560 n$=chr$(a(d2,b2))
570 print n$;
580 next b2
590 print
600 next d2
610 if y9 <> 10 then 640
620 print
630 goto 890
640 input y9
650 j2=j:k2=k
660 if y9=0 then 860
670 if y9 < 0 then 1230
680 if y9=10 then 1070
690 on y9 goto 820,800,780,840,890,760,700,720,740
700 j=j-1:k=k-1
710 goto 890
720 j=j-1
730 goto 890
740 j=j-1:k=k+1
750 goto 890
760 k=k+1
770 goto 890
780 j=j+1:k=k+1
790 goto 890
800 j=j+1
810 goto 890
820 j=j+1:k=k-1
830 goto 890
840 k=k-1
850 goto 890
860 print "$6,000,000 jump!!!"
870 j=int(2+8*rnd(1))
880 k=int(2+18*rnd(1))
890 if a(j,k)=asc("x") then 1260
900 a(j2,k2)=asc(" ")
910 a(j,k)=asc("*")
920 goto 1070
930 rem interceptor movement
940 if a(x,y)=asc("x") then 1040
950 x2=x:y2=y
960 x=sgn(j-x):y=sgn(k-y)
970 x=x+x2:y=y+y2
980 if a(x,y)=asc("*") then 1050
990 if a(x,y)=asc(" ") then 1020
1000 a(x2,y2)=asc(" ")
1010 return
1020 a(x,y)=asc("+")
1030 a(x2,y2)=asc(" ")
1040 return
1050 g9=99
1060 return
1070 for n9=1 to 5
1080 x=l(n9):y=m(n9)
1090 g9=0
1100 gosub 940
1110 if g9 <> 0 then 1240
1120 l(n9)=x:m(n9)=y
1130 next n9
1140 for n9=1 to 5
1150 if a(l(n9),m(n9)) <> asc(" ") then 1170
1160 a(l(n9),m(n9))=asc("+")
1170 next n9
1180 for n9=1 to 5
1190 if a(l(n9),m(n9)) <> asc("x") then 540
1200 next n9
1210 print "you have destroyed all your opponents - the game is yours"
1220 goto 1290
1230 print "give up, eh."
1240 print "*** you have been destroyed by a lucky computer ***"
1250 goto 1290
1260 print "high voltage!!!!!!!!!!"
1270 print "***** zap *****  you're dead!!!"
1280 print
1290 print "another game (y/n)";
1300 input n9$
1310 if n9$ <> "y" then 1400
1320 print "same setup (y/n)";
1330 input n9$
1340 if n9$ <> "y" then 190
1350 for b1=1 to 10:for b2=1 to 20:a(b1,b2)=a1(b1,b2):next b2:next b1
1360 for b1=1 to 5:l(b1)=l1(b1):h(b1)=m1(b1):next b1
1380 j=j1:k=k1
1390 goto 530
1400 end
