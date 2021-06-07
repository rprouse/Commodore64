10 print tab(33);"digits"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
210 print "this is a game of guessing."
220 print "for instructions, type '1', else type '0'";
230 input e
240 if e=0 then 360
250 print
260 print "please take a piece of paper and write down"
270 print "the digits '0', '1', or '2' thirty times at random."
280 print "arrange them in three lines of ten digits each."
290 print "i will ask for then ten at a time."
300 print "i will always guess them first and then look at your"
310 print "next number to see if i was right. by pure luck,"
320 print "i ought to be right ten times. but i hope to do better"
330 print "than that *****"
340 print:print
360 read a,b,c
370 data 0,1,3
380 dim m(26,2),k(2,2),l(8,2)
400 for i=0 to 26: for j=0 to 2: m(i,j)=1: next j: next i
410 for i=0 to 2: for j=0 to 2: k(i,j)=9: next j: next i
420 for i=0 to 8: for j=0 to 2: l(i,j)=3: next j: next i
450 l(0,0)=2: l(4,1)=2: l(8,2)=2
480 z=26: z1=8: z2=2
510 x=0
520 for t=1 to 3
530 print
540 print "ten numbers, please";
550 input n(1),n(2),n(3),n(4),n(5),n(6),n(7),n(8),n(9),n(10)
560 for i=1 to 10
570 w=n(i)-1
580 if w=sgn(w) then 620
590 print "only use the digits '0', '1', or '2'."
600 print "let's try again.":goto 530
620 next i
630 print: print "my guess","your no.","result","no. right":print
660 for u=1 to 10
670 n=n(u): s=0
690 for j=0 to 2
700 s1=a*k(z2,j)+b*l(z1,j)+c*m(z,j)
710 if s>s1 then 760
720 if s<s1 then 740
730 if rnd(1)<.5 then 760
740 s=s1: g=j
760 next j
770 print "  ";g,"   ";n(u),
780 if g=n(u) then 810
790 print " wrong",x
800 goto 880
810 x=x+1
820 print " right",x
830 m(z,n)=m(z,n)+1
840 l(z1,n)=l(z1,n)+1
850 k(z2,n)=k(z2,n)+1
860 z=z-int(z/9)*9
870 z=3*z+n(u)
880 z1=z-int(z/9)*9
890 z2=n(u)
900 next u
910 next t
920 print
930 if x>10 then 980
940 if x<10 then 1010
950 print "i guessed exactly 1/3 of your numbers."
960 print "it's a tie game."
970 goto 1030
980 print "i guessed more than 1/3 of your numbers."
990 print "i win.": for q=1 to 10: print chr$(7);: next q
1000 goto 1030
1010 print "i guessed less than 1/3 of your numbers."
1020 print "you beat me.  congratulations *****"
1030 print
1040 print "do you want to try again (1 for yes, 0 for no)";
1060 input x
1070 if x=1 then 400
1080 print:print "thanks for the game."
1090 end
