2 print tab(24);"pasart"
4 print tab(18);"creative computing"
6 print tab(16);"morristown   new jersey"
8 print:print:print
20 dim p(36,36)
22 for b1=1 to 36
24 for b2=1 to 36
26 p(b1,b2)=0
28 next b2
30 next b1
40 print "this program creates artist designs based on pascal's trian";
42 print "gle."
50 print "you have 3 basic types of designs to select from:"
60 print "1. a single pascal's triangle (played with an artistic flar";
63 print "e)"
70 print "2. two 'artsy' pascal's triangles printed back to back"
80 print "3. four 'artsy' triangles in the corner of"
90 print "   a square array."
100 print "what's your pleasure? 1, 2 or 3";
110 input o
120 if (o-1)*(o-2)*(o-3) <> 0 then 100
130 print "which multiples do you want represented with blanks";
140 input q
150 print "how many rows and colums in the array (36 is maximum)";
160 input t
170 if t*(36-t) < 0 then 150
180 on o goto 230,440,690
190 rem
200 rem
210 rem time to create and print a single piece of pasart
220 rem first build the pascals triangle
230 for r=1 to t
240 for c=1 to t
250 if (r-1)*(c-1)=0 then 280
260 p(r,c)=p(r,c-1)+p(r-1,c)
270 goto 290
280 p(r,c)=1
290 next c
300 next r
310 rem time to play back the triangle with an artistic flare.
320 for r=1 to t
330 for c=1 to t
340 if p(r,c)=0 then 380
350 if (p(r,c)/q)=int(p(r,c)/q) then 380
360 print "* ";
370 goto 390
380 print "  ";
390 next c
400 print
410 next r
420 end
430 rem time to create and print double piece of pasart
440 z=t
450 rem build the upper left hand half of the array.
460 let n=z
470 for r=1 to n
480 for c=1 to z-1
490 if (r-1)*(c-1)=0 then 520
500 p(r,c)=p(r,c-1)+p(r-1,c)
510 goto 530
520 p(r,c)=1
530 next c
540 z=z-1
550 next r
560 rem build the lower right half of the array.
570 z=n
580 n=2
590 for r=z to 1 step -1
600 for c=z to n step -1
610 if (r-z)*(c-z)=0 then 640
620 p(r,c)=p(r,c+1)+p(r+1,c)
630 goto 650
640 p(r,c)=1
650 next c
660 n=n+1
670 next r
680 goto 320
690 m=q
700 rem build the upper left half corner of the array.
710 y=t
720 z=int(y/2)
730 b5=z*2
740 z1=z
750 z2=z1
760 z3=z2
770 x4=z3
780 x5=x4
790 for i=1 to z1
800 for j=1 to z
810 if (j-1)*(i-1)=0 then 840
820 p(i,j)=p(i,j-1)+p(i-1,j)
830 goto 850
840 p(i,j)=1
850 next j
860 z=z-1
870 next i
880 n=z1
890 rem build the upper right hand corner of the array.
900 for i=1 to z1
910 for j=y to x5+1 step -1
920 if i=1 then 960
930 if j=y then 960
940 p(i,j)=p(i,j+1)+p(i-1,j)
950 goto 970
960 p(i,j)=1
970 next j
980 x5=x5+1
990 next i
1000 n=z2
1010 rem build the lower left corner of the array
1020 for i=y to x4+1 step -1
1030 for j=1 to z2
1040 if j=1 then 1080
1050 if i=y then 1080
1060 p(i,j)=p(i,j-1)+p(i+1,j)
1070 goto 1090
1080 p(i,j)=1
1090 next j
1100 z2=z2-1
1110 next i
1120 n=z3
1130 rem build the lower right corner of the array.
1140 for i=y to n+1 step -1
1150 for j=y to z3+1 step -1
1160 if j=y then 1200
1170 if i=y then 1200
1180 p(i,j)=p(i+1,j)+p(i,j+1)
1190 goto 1210
1200 p(i,j)=1
1210 next j
1220 z3=z3+1
1230 next i
1240 goto 320
1250 end
