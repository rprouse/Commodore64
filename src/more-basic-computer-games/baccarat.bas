10 print tab(26);"bacrat"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey":print:print:print
40 print"baccarat -- chemin de fer"
so print
60 print"do you need instructions";
70 input q$
80 if q$<>"yes" then 210
90 print"    baccarat is a very popular game in las"
100 print"vegas.  the player and banker each receive"
110 print"two cards from a 'shoe' containing 8 decks"
120 print"of cards.   all card combinations totaling"
130 print"ten are not counted.  the one that ends up"
140 print"closer to nine wins.  the stakes are high,"
150 print"all of the players start with ten thousand"
160 print"dollars.  you can bet on the dealer or the"
170 print"player.   a third card is given only under"
180 print"certain conditions, as you will see.   let"
190 print"us begin.      good luck!"
200 print
210 dim m(20),f1(20),f(20),b$(13),v(13),g$(20)
220 dim z(9,10),q(4,13)
240 for x=3 to 6
250 for y=1 to 10
260 read z(x,y)
270 next y,x
280 for s1=1 to 10:read w(s1):next
283 for s1=1 to 4:read a$(s1):next
285 for s1=1 to 13:read b$(s1):next
287 for s1=1 to 13:read v(s1):next
290 print
300 print"how many players";
310 input p1
320 for j=1 to p1
330 print"what is the name of player"j;
340 input g$(j)
350 m(j)=10000
360 next j
370 for s1=1 to 4
373 for s2=1 to 13
375 q(s1,s2)=0
377 next s2
379 next s1
380 for j=1 to 6
390 c=int(1+rnd(1)*4)
400 d=int(1+rnd(1)*13)
410 q(c,d)=q(c,d)+1
420 if q(c,d)>=32 then 390
430 b(j)=v(d)
440 c$(j)=b$(d)+" of "+a$(c)
450 next j
460 w1=2
470 for j=1 to p1
480 if m(j)<1 then 380
490 print g$(j)" has $"m(j)".   bet";
500 input f(j)
510 if f(j)>m(j) then 490
520 if f(j)<>int(f(j)) then 490
530 if f(j)<1 then 490
540 print"(1) banker or (2) player";
550 input f1(j)
560 if f1(j)>=1000 then 490
570 if (f1(j)-1)*(f1(j)-2)<>0 then 540
580 next j
590 j=0
600 t1=b(1)+b(2)
610 t2=b(3)+b(4)
620 print
630 print"banker"tab(20)"player"
640 print c$(3)tab(20)c$(1)
650 print c$(4)tab(20)c$(2)
660 if t1<10 then 680
670 t1=t1-10
680 if t2<10 then 700
690 t2=t2-10
700 if w(t1+1)=0 then 770
710 print"player must draw."
720 print c$(5)
730 t1=t1+b(5)
740 if t1<10 then 770
750 t1=t1-10
760 goto 790
770 print"player cannot draw."
780 j=11
790 print"players total:"t1
800 print
810 if t2<3 then 870
820 if t2>6 then 930
830 if j<>11 then 860
840 if t2=6 then 930
850 goto 870
860 if z(t2,b(5)+1)=0 then 930
870 print"banker must draw."
880 print c$(6)
890 t2=t2+b(6)
900 if t2<10 then 920
910 t2=t2-10
920 goto 940
930 print"banker cannot draw."
940 print"bankers total:"t2
950 print
960 if t2<>t1 then 990
970 print"it's a tie.  the hand is played over."
980 goto 380
990 if t2<t1 then 1030
1000 w1=1
1010 print"banker wins!!"
1020 goto 1040
1030 print"player wins!!"
1040 for j=1 to p1
1050 if m(j)<=0 then 1130
1060 print g$(j)" ";
1070 if f1(j)=w1 then 1110
1080 m(j)=m(j)-f(j)
1090 print"loses $"f(j)", for a total of $"m(j)"."
1100 goto 1130
1110 m(j)=m(j)+f(j)
1120 print"wins $"f(j)", for a total of $"m(j)"."
1130 next j
1140 for j=1 to p1
1150 if m(j)<>0 then 1190
1160 next j
1170 print"thank you for your money, and ";
1180 goto 1320
1190 print
1200 print"---------- new game ----------"
1210 print
1220 for x=1 to 4
1230 for y=1 to 13
1240 if q(x,y)<>8 then 380
1250 next y,x
1260 goto 370
1270 data 1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1,1,1,0,0
1280 data 0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,0,0
1290 data 1,1,1,1,1,1,0,0,0,0,spades,hearts,diamonds
1300 data clubs,ace,two,three,four,five,six,seven,eight
1310 data nine,ten,jack,queen,king,1,2,3,4,5,6,7,8,9,0,0,0,0
1320 print"thank you for playing."
1330 end
