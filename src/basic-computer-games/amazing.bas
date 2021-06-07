10 print tab(28);"amazing program"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print:print
100 input "what are your width and length";h,v
102 if h<>1 and v<>1 then 110
104 print "meaningless dimensions.  try again.":goto 100
110 dim w(h,v),v(h,v)
120 print
130 print
140 print
150 print
160 q=0:z=0:x=int(rnd(1)*h+1)
165 for i=1 to h
170 if i=x then 173
171 print ".--";:goto 180
173 print ".  ";
180 next i
190 print "."
195 c=1:w(x,1)=c:c=c+1
200 r=x:s=1:goto 260
210 if r<>h then 240
215 if s<>v then 230
220 r=1:s=1:goto 250
230 r=1:s=s+1:goto 250
240 r=r+1
250 if w(r,s)=0 then 210
260 if r-1=0 then 530
265 if w(r-1,s)<>0 then 530
270 if s-1=0 then 390
280 if w(r,s-1)<>0 then 390
290 if r=h then 330
300 if w(r+1,s)<>0 then 330
310 x=int(rnd(1)*3+1)
320 on x goto 790,820,860
330 if s<>v then 340
334 if z=1 then 370
338 q=1:goto 350
340 if w(r,s+1)<>0 then 370
350 x=int(rnd(1)*3+1)
360 on x goto 790,820,910
370 x=int(rnd(1)*2+1)
380 on x goto 790,820
390 if r=h then 470
400 if w(r+1,s)<>0 then 470
405 if s<>v then 420
410 if z=1 then 450
415 q=1:goto 430
420 if w(r,s+1)<>0 then 450
430 x=int(rnd(1)*3+1)
440 on x goto 790,860,910
450 x=int(rnd(1)*2+1)
460 on x goto 790,860
470 if s<>v then 490
480 if z=1 then 520
485 q=1:goto 500
490 if w(r,s+1)<>0 then 520
500 x=int(rnd(1)*2+1)
510 on x goto 790,910
520 goto 790
530 if s-1=0 then 670
540 if w(r,s-1)<>0 then 670
545 if r=h then 610
547 if w(r+1,s)<>0 then 610
550 if s<>v then 560
552 if z=1 then 590
554 q=1:goto 570
560 if w(r,s+1)<>0 then 590
570 x=int(rnd(1)*3+1)
580 on x goto 820,860,910
590 x=int(rnd(1)*2+1)
600 on x goto 820,860
610 if s<>v then 630
620 if z=1 then 660
625 q=1:goto 640
630 if w(r,s+1)<>0 then 660
640 x=int(rnd(1)*2+1)
650 on x goto 820,910
660 goto 820
670 if r=h then 740
680 if w(r+1,s)<>0 then 740
685 if s<>v then 700
690 if z=1 then 730
695 q=1:goto 710
700 if w(r,s+1)<>0 then 730
710 x=int(rnd(1)*2+1)
720 on x goto 860,910
730 goto 860
740 if s<>v then 760
750 if z=1 then 780
755 q=1:goto 770
760 if w(r,s+1)<>0 then 780
770 goto 910
780 goto 1000
790 w(r-1,s)=c
800 c=c+1:v(r-1,s)=2:r=r-1
810 if c=h*v+1 then 1010
815 q=0:goto 260
820 w(r,s-1)=c
830 c=c+1
840 v(r,s-1)=1:s=s-1:if c=h*v+1 then 1010
850 q=0:goto 260
860 w(r+1,s)=c
870 c=c+1:if v(r,s)=0 then 880
875 v(r,s)=3:goto 890
880 v(r,s)=2
890 r=r+1
900 if c=h*v+1 then 1010
905 goto 530
910 if q=1 then 960
920 w(r,s+1)=c:c=c+1:if v(r,s)=0 then 940
930 v(r,s)=3:goto 950
940 v(r,s)=1
950 s=s+1:if c=h*v+1 then 1010
955 goto 260
960 z=1
970 if v(r,s)=0 then 980
975 v(r,s)=3:q=0:goto 1000
980 v(r,s)=1:q=0:r=1:s=1:goto 250
1000 goto 210
1010 for j=1 to v
1011 print "i";
1012 for i=1 to h
1013 if v(i,j)<2 then 1030
1020 print "   ";
1021 goto 1040
1030 print "  i";
1040 next i
1041 print
1043 for i=1 to h
1045 if v(i,j)=0 then 1060
1050 if v(i,j)=2 then 1060
1051 print ":  ";
1052 goto 1070
1060 print ":--";
1070 next i
1071 print "."
1072 next j
1073 end
