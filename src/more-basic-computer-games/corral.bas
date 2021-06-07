1 print tab(26);"corral"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
10 dim a(21)
40 dim s(2,9)
50 for i=1 to 2:for j=0 to 9
55 read s(i,j):next j:next i
60 data 0,1,2,3,3,2,2,1,0,-1
70 data 1,2,3,4,5,4,3,2,1,0
100 print "  you are the cowboy.  go catch your horse in the corral!"
110 input "do you want full instructions";f$
120 if left$(f$,1)="n" goto 190
130 print "you move toward your horse 1 to 5 steps at a time."
140 print "if you more than halve the seperation he will bolt!"
150 print "he may also bolt when he is close to the rail"
160 print "when you come within 2 steps he may kick.  so lookout!!"
180 print
190 print "after '?' type in digit from 1 to 5 for cowboy's next move"
200 c=1:l=1:k=0:h=0:n=0:gosub 800
220 if r>5 then q=-q
225 h=13+q:gosub 810
230 t=2+p:print
300 b$= "            "
310 for j=1 to 21:a(j)=32:next j
320 a(c)=67:a(h)=72
330 print n,"i";
333 for j=1 to 21:print chr$(a(j));:next j
337 print "i",b$;
370 x=abs(h-c):l=sgn(h-c)
380 n=n+1:if k>0 goto 640
390 if n>100 then 980
395 input d
400 if d>0 and d<6 goto 450
420 print "illegal move. try again",;:goto 390
450 e=c+l*d:if e <1 or e>21 then 420
460 c=e:gosub 800
510 g=p:h=h+l*g:gosub 810
530 if x<2*d and d >1 goto 570
540 if h>1 and h<20 then 600
545 gosub 800
550 if r>2 goto 600
555 if x>7 goto 300
570 g=9+2*p:h=h-l*g:l=-l:gosub 810
580 if abs(h-c)>1 then 590
585 h=h-3*l:gosub 810
590 b$="bolted      ":goto 310
600 if abs(h-c)>2 goto 300
605 gosub 800
610 if r>3 goto 700
615 gosub 800
620 k=p+2:m=m+1:h=h-5*l:gosub 810
630 b$="kicked":goto 310
640 if m>t goto 900
650 k=k-1:print:gosub 800
670 h=h+l*(p+1):gosub 810:goto 300
700 if h=c then 930
705 goto 300
800 r=int(10*rnd(1)):p=s(1,r):q=s(2,r):return
810 if h<1 then h=1
820 if h>21 then h=21
830 return
900 print:print "those kicks landed you in the hospital!"
910 print " get well soon!!":goto 960
930 for j=1 to 21:a(j)=32:next j:a(c)=35
940 print ,"i";
943 for j=1 to 21:print chr$(a(j));:next j
947 print "i"
950 print:print "yippee!!  now see if you can catch him in fewer moves"
960 input "another roundup";f$
970 if left$(f$,1)="y" then 200
975 goto 999
980 print:print "enough!! you'd do better as camp cook!":goto 960
999 end
