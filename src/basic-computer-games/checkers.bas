5 print tab(32);"checkers"
10 print tab(15);"creative computing  morristown, new jersey"
15 print:print:print
20 print "this is the game of checkers.  the computer is x,"
25 print "and you are o.  the computer will move first."
30 print "squares are referred to by a coordinate system."
35 print "(0,0) is the lower left corner"
40 print "(0,7) is the upper left corner"
45 print "(7,0) is the lower right corner"
50 print "(7,7) is the upper right corner"
55 print "the computer will type '+to' when you have another"
60 print "jump.  type two negative numbers if you cannot jump."
65 print:print:print
80 dim r(4),s(7,7):g=-1:r(0)=-99
90 data 1,0,1,0,0,0,-1,0,0,1,0,0,0,-1,0,-1,15
120 for x=0 to 7:for y=0 to 7:read j:if j=15 then 180
160 s(x,y)=j:goto 200
180 restore:read s(x,y)
200 next y,x
230 for x=0 to 7:for y=0 to 7:if s(x,y)>-1 then 350
310 if s(x,y)=-1 then for a=-1 to 1 step 2:b=g:gosub 650:next a
330 if s(x,y)=-2 then for a=-1 to 1 step 2:for b=-1 to 1 step 2:gosub 650:next b,a
350 next y,x:goto 1140
650 u=x+a:v=y+b:if u<0 or u>7 or v<0 or v>7 then 870
740 if s(u,v)=0 then gosub 910:goto 870
770 if s(u,v)<0 then 870
790 u=u+a:v=v+b:if u<0 or v<0 or u>7 or v>7 then 870
850 if s(u,v)=0 then gosub 910
870 return
910 if v=0 and s(x,y)=-1 then q=q+2
920 if abs(y-v)=2 then q=q+5
960 if y=7 then q=q-2
980 if u=0 or u=7 then q=q+1
1030 for c=-1 to 1 step 2:if u+c<0 or u+c>7 or v+g<0 then 1080
1035 if s(u+c,v+g)<0 then q=q+1:goto 1080
1040 if u-c<0 or u-c>7 or v-g>7 then 1080
1045 if s(u+c,v+g)>0 and(s(u-c,v-g)=0 or(u-c=x and v-g=y))then q=q-2
1080 next c:if q>r(0)then r(0)=q:r(1)=x:r(2)=y:r(3)=u:r(4)=v
1100 q=0:return
1140 if r(0)=-99 then 1880
1230 print chr$(30)"from"r(1);r(2)"to"r(3);r(4);:r(0)=-99
1240 if r(4)=0 then s(r(3),r(4))=-2:goto 1420
1250 s(r(3),r(4))=s(r(1),r(2))
1310 s(r(1),r(2))=0:if abs(r(1)-r(3))<>2 then 1420
1330 s((r(1)+r(3))/2,(r(2)+r(4))/2)=0
1340 x=r(3):y=r(4):if s(x,y)=-1 then b=-2:for a=-2 to 2 step 4:gosub 1370
1350 if s(x,y)=-2 then for a=-2 to 2 step 4:for b=-2 to 2 step 4:gosub 1370:next b
1360 next a:if r(0)<>-99 then print"to"r(3);r(4);:r(0)=-99:goto 1240
1365 goto 1420
1370 u=x+a:v=y+b:if u<0 or u>7 or v<0 or v>7 then 1400
1380 if s(u,v)=0 and s(x+a/2,y+b/2)>0 then gosub 910
1400 return
1420 print:print:print:for y=7 to 0 step-1:for x=0 to 7:i=5*x:print tab(i);
1430 if s(x,y)=0 then print".";
1470 if s(x,y)=1 then print"o";
1490 if s(x,y)=-1 then print"x";
1510 if s(x,y)=-2 then print"x*";
1530 if s(x,y)=2 then print"o*";
1550 next x:print" ":print:next y:print
1552 for l=0 to 7
1554 for m=0 to 7
1556 if s(l,m)=1 or s(l,m)=2 then z=1
1558 if s(l,m)=-1 or s(l,m)=-2 then t=1
1560 next m
1562 next l
1564 if z<>1 then 1885
1566 if t<>1 then 1880
1570 z=0: t=0
1590 input "from";e,h:x=e:y=h:if s(x,y)<=0 then 1590
1670 input "to";a,b:x=a:y=b
1680 if s(x,y)=0 and abs(a-e)<=2 and abs(a-e)=abs(b-h)then 1700
1690 print chr$(7)chr$(11);:goto 1670
1700 i=46
1750 s(a,b)=s(e,h):s(e,h)=0:if abs(e-a)<>2 then 1810
1800 s((e+a)/2,(h+b)/2)=0
1802 input "+to";a1,b1:if a1<0 then 1810
1804 if s(a1,b1)<>0 or abs(a1-a)<>2 or abs(b1-b)<>2 then 1802
1806 e=a:h=b:a=a1:b=b1:i=i+15:goto 1750
1810 if b=7 then s(a,b)=2
1830 goto 230
1880 print: print "you win.": end
1885 print: print "i win.": end
