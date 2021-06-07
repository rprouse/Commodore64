1 print tab(26)"guess-it"
2 printtab(20)"creative computing"
3 print tab(18)"morristown, new jersey"
4 print
5 print
10 print
20 g1=0:c1=0
50 a1=rnd(1)
70 h=5
80 dim p(10,10)
90 for k=1 to h
100 p(k,0)=1
110 p(0,k)=1/(k+1)
120 next k
130 for i=1 to h
140 for j=i to h
150 p(i,j)=(1+j*p(j,i-1)*(1-p(j-1,i)))/(1+(j+2)*p(j,i-1))
160 p(j,i)=(1+i*p(i,j-1)*(1-p(i-1,j)))/(1+(i+1)*p(i,j-1))
170 next j
180 next i
190 z=11
200 dim u(z),n(z)
210 print"do you want instructions-type yes or no"
220 input a$
230 if a$="yes" then 1730
240 if a$<>"no" then 210
250 print
260 g1=g1+1
270 for j=2 to z
280 u(j)=0
290 next j
300 e=0:t=0:c=0:p=0:l=0
310 gosub 1630
320 rem n(1) to n(h)= comp hand n(h+1)=to n(z)= other hand
330 d=(z)
340 print"your hand is"
350 print
360 for i=h+1 to z-1
370 print n(i);
380 next i
390 print
400 print
410 print"do you want to go first";
420 input a$
430 if a$="yes" then 470
440 if a$<>"no" then 390
450 k=1
460 goto 480
470 k=0
480 k=k+1
490 m=h-c
500 n=h-p
510 print
520 if k=(int(k/2))*2 then 860
530 print
540 print"do you want to guess the down number";
550 input a$
560 if a$="yes" then 1250
570 if a$<>"no" then 530
580 print
590 print"what number do you want to ask about";
600 input e
610 for i=1 to z
620 if e=u(i) then 650
630 next i
640 goto 670
650 print e;" was asked before try again"
660 goto 580
670 for j=1 to h
680 if n(j)=e then 800
690 next j
700 print
710 print;"is not in my hand"
720 if m=0 then 1460
730 if n=0 then 1440
740 y=((m+1)*p(m,n-1)-m*p(m-1,n))/(1+(m+1)*p(m,n-1))
750 if rnd(1)<y then 1380
760 gosub 1220
770 if (h-p)=1 then 1460
780 p=p+1
790 goto 480
800 print
810 print e;"is in my hand"
820 c=c+1
830 gosub 1220
840 goto 480
850 rem comp seq starts
860 if t<>0 then 1410
870 if h-c<>0 then 890
880 goto 1460
890 if h-p<>0 then910
900 goto 1460
910 if (2*h-2)-(p+c)<>0 then 930
920 goto 1460
930 rem rnd decision to bluff or not on asking for card
940 if rnd(1)>1/(1+(n+1)*p(n,m-1)) then 1060
950 print
960 a=int(h*rnd(1))+1
970 for j=1 to z
980 if n(a)=u(j) then 960
990 next j
1000 print"do you have";n(a)
1010 c=c+1
1020 input a$
1030 e=n(a)
1040 gosub 1220
1050 goto 480
1060 gosub 1170
1070 print
1080 print"do you have ";n(a)
1090 input a$
1100 if a$="yes" then 1130
1110 t=1
1120 goto 480
1130 e=n(a)
1140 p=p+1
1150 gosub 1220
1160 goto 480
1170 a=int((h+1)*rnd(1))+(h+1)
1180 for j=1 to z
1190 if n(a)=u(j) then goto 1170
1200 next j
1210 return
1220 l=l+1
1230 u(l)=e
1240 return
1250 print
1260 print"what do you think the down number is"
1270 input b
1280 print
1290 print"the down number is";n(z)
1300 if b=n(z) then 1360
1310 print
1320 print"your  guess of";b;" is not correct-you lose"
1330 c1=c1+1
1340 goto 1520
1350 print
1360 print"your guess of";b;"is correct - you win"
1370 goto 1520
1380 print"i think you were  not bluffing when you asked about";e
1390 g=e
1400 goto 1480
1410 printn(a);"was not a bluff"
1420 g=n(a)
1430 goto 1480
1440 g=n(z)
1450 goto 1480
1460 gosub 1170
1470 g=n(a)
1480 print"i guess the down number is";g
1490 if g=n(z) then 1590
1500 print
1510 print"the down number is";n(z);"i was wrong... you win"
1520 print"do you want to play again";
1530 input a$
1540 if a$="yes" then 250
1550 if a$<>"no" then 1520
1560 print
1570 print"you played";g1;"games.  you lost";c1;"you won";g1-c1
1580 stop
1590 print
1600 print"the down number is";n(z);"i was correct...you lose"
1610 c1=c1+1
1620 goto 1520
1630 for i=1 to z
1640 n(i)=i
1650 next i
1660 for i=1 to z
1670 r=int(rnd(1)*((z+1)-i))+i
1680 w=n(r)
1690 n(r)=n(i)
1700 n(i)=w
1710 next i
1720 return
1730 print
1740 print"the object of this game is to guess an unknown number"
1750 print"called the 'down number'.  the game is played with the"
1760 print"numbers 1 to";z;".  you will be given a hand of ";h
1770 print"randomly selected numbers between 1 and";z;". the "
1780 print"computer will have a similar hand.  the down number will "
1785 print"always be the number not in either player hands."
1790 print
1800 print"you alternate moves with the computer. on any move there"
1810 print"are two options- guess the down number or ask about some "
1820 print"number."
1830 print
1840 print"when a player guesses the down number the game stops."
1850 print"if the guess is correct that player wins."
1860 print"if the guess is not correct that player loses."
1870 print
1880 print"all questions about numbers in the other players hand"
1890 print"must be answered truthfully.  a player may'bluff' by"
1900 print"asking about a number in his own hand.  the computer"
1910 print"will sometimes do this."
1920 print
1930 print"a number may be asked about only once."
1940 print
1950 print"good luck"
1960 goto 250
1970 end
