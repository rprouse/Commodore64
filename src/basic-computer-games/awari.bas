5 print tab(34);"awari"
7 print tab(15);"creative computing  morristown, new jersey"
10 data 0
15 dim b(13),g(13),f(50):read n
20 print:print:e=0
25 for i=0 to 12:b(i)=3:next i
30 c=0:f(n)=0:b(13)=0:b(6)=0
35 gosub 500
40 print "your move";:gosub 110
45 if e=0 then 80
50 if m=h then gosub 100
55 if e=0 then 80
60 print "my move is ";:gosub 800
65 if e=0 then 80
70 if m=h then print ",";:gosub 800
75 if e>0 then 35
80 print:print"game over"
85 d=b(6)-b(13):if d<0 then print "i win by";-d;"points":goto 20
90 n=n+1:if d=0 then print "drawn game":goto 20
95 print "you win by";d;"points":goto 20
100 print "again";
110 input m:if m<7 then if m>0 then m=m-1:goto 130
120 print "illegal move":goto 100
130 if b(m)=0 then 120
140 h=6:gosub 200
150 goto 500
200 k=m:gosub 600
205 e=0:if k>6 then k=k-7
210 c=c+1:if c<9 then f(n)=f(n)*6+k
215 for i=0 to 5:if b(i)<>0 then 230
220 next i
225 return
230 for i=7 to 12:if b(i)<>0 then e=1:return
235 goto 220
500 print:print"   ";
505 for i=12 to 7 step -1:gosub 580
510 next i
515 print:i=13:gosub 580
520 print "                       ";:print b(6):print "   ";
525 for i=0 to 5:gosub 580
530 next i
535 print:print:return
580 if b(i)<10 then print " ";
585 print b(i);:return
600 p=b(m):b(m)=0
605 for p=p to 1 step -1:m=m+1:if m>13 then m=m-14
610 b(m)=b(m)+1:next p
615 if b(m)=1 then if m<>6 then if m<>13 then if b(12-m)<>0 then 625
620 return
625 b(h)=b(h)+b(12-m)+1:b(m)=0:b(12-m)=0:return
800 d=-99:h=13
805 for i=0 to 13:g(i)=b(i):next i
810 for j=7 to 12:if b(j)=0 then 885
815 q=0:m=j:gosub 600
820 for i=0 to 5:if b(i)=0 then 845
825 l=b(i)+i:r=0
830 if l>13 then l=l-14:r=1:goto 830
835 if b(l)=0 then if l<>6 then if l<>13 then r=b(12-l)+r
840 if r>q then q=r
845 next i
850 q=b(13)-b(6)-q:if c>8 then 875
855 k=j:if k>6 then k=k-7
860 for i=0 to n-1:if f(n)*6+k=int(f(i)/6^(7-c)+.1) then q=q-2
870 next i
875 for i=0 to 13:b(i)=g(i):next i
880 if q>=d then a=j:d=q
885 next j
890 m=a:print chr$(42+m);:goto 200
900 for i=0 to n-1:print b(i):next i
999 end
