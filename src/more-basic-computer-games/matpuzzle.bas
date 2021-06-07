1 print tab(26)"matpuzle"
2 printtab(20)"creative computing"
3 print tab(18)"morristown, new jersey"
4 print:print
10 dim a$(6),b$(6,6),c(6,6),c$(6,6)
20 print"this is a puzzle-making game."
30 print"you input up to six words, up to six"
40 print"letters each, and equal in length."
50 print"the computer will scramble then and"
60 print"trint them in a matrix.  the computer "
70 print"will also print a corresponding number"
80 print"board.  when it stops tear it and give it"
90 print"to a friend."
100 print"how many words do you want (up to 6)";
105 input w
110 print"how many letters in each word (must be same)";
115 input l
120 print"type one";l;"letter word on each line"
130 for x=1 to w
140 input a$(x)
150 next x
160 for x=1 to w
170 for  y=1 to l
180 c$(x,y)=mid$(a$(x),y,1):b$(x,y)=mid$(a$(x),y,1)
190 next y
200 next x
210 print
215 for p=1 to 28
220 print"-";
221 next p
225 print tab(29)"( tear here )";
226 for p1=1 to 27
227 print tab(43)"-";
228 next p1
230 print
240 for z=1 to 60
250 f=int(rnd(1)*w+1)
260 d=int(rnd(1)*w+1)
270 g=int(rnd(1)*l+1)
280 e=int(rnd(1)*l+1)
290 j$=b$(f,g)
300 b$(f,g)=b$(d,e)
310 b$(d,e)=j$
320 next z
330 print tab(4);
340 for z1=1 to l
350 print tab(5);z1;" ";
360 next z1
370 print
380 print
390 for z2=1 to w
400 print z2;"   ";
410 for z3=1 to l
420 print b$(z2,z3);"   ";
430 next z3
440 print
450 print
460 next z2
470 print
480 print
490 print
500 for p=1 to l
510 for q=1 to w
520 t=0
530 for r=1 to w
540 for s=1 to l
550 if t=1 then 600
560 if b$(r,s)<>c$(q,p)then 600
570 c(q,p)=r+s
580 t=1
590 b$(r,s)=" "
600 next s
610 next r
620 next q
630 next p
640 for x=1 to w
650 print tab(3)
660 for m=1 to l
670 if c(x,m)>9 then 700
680 print c(x,m);"     ";
690 goto 710
700 print c(x,m);"    ";
710 next m
720 print:print
730 print tab(2);
740 for m1=1 to l
750 print"-----";"   ";
760 next m1
770 print
780 next x
790 print
800 print
810 print"the number above each dash is the sum of two coordinates of"
820 print"the point on the matrix where the correct letter for that "
830 print"spot will appear.  the problem is that the sum of some "
840 print"coordinates are the same so several letters could fit. so "
850 print"try now to find what words were used and solve the puzzle"
855 print"-- good luck"
860 print"do you want another run";
861 input y9$
870 if y9$="yes" then 100
880 end
