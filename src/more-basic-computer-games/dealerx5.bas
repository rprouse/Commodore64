100 print tab(21);"dealer's choice"
110 print tab(20);"creative computing"
120 print tab(18);"morristown, new jersey"
130 print:print:print
140 print "this program will simulate the t.v. show, dealer's choice."
150 print "you have $100 to start with. enjoy the game.":print
160 o=100
170 print "for the first game, we will play on the wheel of chance."
180 print "the object is simple. guess what suite will appear on the"
190 print "wheel and you will get paid at those odds if you are right."
200 print "they are as follows:":print
210 print "1=diamonds at 11 to 1 odds          2=spades at 1 to 1 odds."
220 print "3=hearts at 3 to 1 odds             4=clubs at 3 to 1 odds."
230 print "you may bet up to $25. good luck!":print
240 print "what suite do you want";:input a
250 if a > 4 or a < 1 then 270
260 if a <=4 then 280
270 print "***you picked a wrong suite***":goto 240
280 print "what is the bet";:input b8
290 if b8 > 25 or b8 <= 0 then 310
300 if b8 <= 25 then 320
310 print "***you bet over the house limit***":goto 280
320 print "o.k. now that your bet is in, we will spin"
330 print "the wheel, good luck!":for b1=1 to 10*570:next b1
340 print "the wheel is slowing down."
350 for b1=1 to 7*570:next b1:print "the wheel is stopping."
360 for b1=1 to 4*570:next b1
370 print "the suite is ":for b1=1 to 4*570
380 next b1
390 z=int(4*rnd(1)+1):print "****";z;"****"
400 if z=a then 420
410 if z <> a then 470
420 on z goto 430,440,450,460
430 o=o+(11*b8):print "you win on diamonds":goto 480
440 o=o+(1*b8):print "you win on spades":goto 480
450 o=o+(3*b8):print "you win on hearts":goto 480
460 o=o+(3*b8):print "you win on clubs":goto 480
470 o=o-(1*b8):print "you lose.":goto 480
480 print "at the end of part 1, you have $";o
490 for p=1 to 5:print:next p
500 print "this is the game of in between. the object is: 5 cards will"
510 print "be dealt out. if any card is less than a 3 or greater than a"
520 print "10, the game is over. you may bet up to $30. your money"
530 print "will be doubled each time you are right. good luck!":print
540 print "what is the bet";:input a
550 if a > 30 then print "***you bet over the house limit ***":goto 540
560 t=t+1:z=int(12*rnd(1)+1)
570 print "card number ";t;" is a ";z:b=b+(2*a)
580 if z < 3 or z > 10 then 630
590 if t=5 then 650
600 print "you are still in the game. you have ";b
610 print "stop or go";:input a$:if a$="go" then 560
620 if a$="stop" then 650
630 o=o-a
640 print "you lost. at the end of part 2, you have $";o:goto 660
650 print "you win. at the end of part 2, you have $";b+o:b=b+o
660 for p=1 to 5:print:next p
670 print "this is the game of blackjack <dealer's choice style>"
680 print "the object is to beat the dealer with over 17 or 21 or"
690 print "under. you may bet up to $50. you may stop when you wish."
700 print "if you make blackjack, your money is doubled."
710 print "if the house deals out less than a total of 17 in 6 tries,"
720 print "you will keep the money you bet. good luck!":print
730 z5=0:z1=0:print "the dealer will get his cards first":print
740 c=0:c3=0
750 print "here i go"
760 q=int(12*rnd(1)+1)
770 z5=q+z5
780 print "the card is a ";q:c=c+1
790 print "so far:";z5:if c=6 then 850
800 if z5<17 then 760
810 if z5 > 21 then 910
820 if z5=21 then 880
830 if z5 < 21 then 870
840 if z5 >= 17 then 870
850 if z5 < 17 then 890
860 if z5 >= 17 then 800
870 print "i stop. the total for me is ";z5:print "now you go":print:goto930
880 print "i got blackjack":print:goto 930
890 print "the house delt out less than 17. now you must try to"
900 print "beat me";:print:goto 930
910 print "i blew it. you win the greatest amount allowed to be"
920 print "bet by the house.":goto 1160
930 print "what is the bet";:input a
940 if a > o then 980
950 if a > 50 or a <= 0 then 970
960 if a <= 50 then 990
970 print "***you bet over the house limit***":goto 930
980 print "***you bet over what you have***":goto 930
990 q1=int(12*rnd(1)+1):print "your card is a ";q1:c3=c3+1
1000 z1=q1+z1:print "so far the total for you is ";z1:if c3=6 then 1090
1010 if z1 > 21 then 1120
1020 print "stop or go";:input a$
1030 if a$="stop" then 1050
1040 if a$="go" then 990
1050 if z1=z5 then 1100
1060 if z1 < z5 then 1120
1070 if z1=21 then 1110
1080 if z5 <z1 then 1130
1090 if z1 < 17 then 1140
1100 print "we are the same so we will play again":goto 730
1110 o=o+(2*a):print "you beat the dealer with blackjack!!":goto 1170
1120 o=o-(1*a):print "the dealer beat you. you lose":goto 1170
1130 o=o+(1*a):print "the dealer lost. you win":goto 1170
1140 o=o+(1*a):print "the house delt out less than 17 in"
1150 print "6 tries. you get the money you bet":goto 1170
1160 o=o+50:print "you keep it with our best wishes.":goto 1170
1170 print "at the end of part 3, you have $";o
1180 if o<=0 then 1580
1190 for p=1 to 5:print:next p
1200 print "now we enter the last chance round. if you make up to"
1210 print "$300 you will be able to go into the bonus round. the"
1220 print "object is to guess into which category the total of 5 cards"
1230 print "will add up to. these are the categories:":print
1240 print "1=31-40 at 1 to 1 odds     2=41-50 at 3 to 1 odds"
1250 print "3=21-31 at 3 to 1 odds     4=6-20 at 20 to 1 odds"
1260 print "good luck!!":print
1270 print "at this point in the game you have $";o
1280 print "what category do you want";:input a
1290 if a <= 4 then 1320
1300 if a > 4 then 1310
1310 print "***you bet on a wrong category***":goto 1280
1320 print "what is the bet";:input b
1330 if b <= o then 1360
1340 if b > o then 1350
1350 print "***you bet over what you have***":goto 1320
1360 print "the cards are now being added up":print "good luck!"
1370 q=int(12*rnd(1)+1):c1=c1+1
1380 print "card number ";c1;" is a ";q
1390 z=z+q:print "so far: ";z
1400 if c1=5 then 1420
1410 goto 1370
1420 on a goto 1430,1460,1490,1520
1430 if z < 31 then 1540
1440 if z < 40 then 1550
1450 if z > 40 then 1540
1460 if z < 41 then 1540
1470 if z < 50 then 1560
1480 if z > 50 then 1540
1490 if z < 21 then 1540
1500 if z < 31 then 1560
1510 if z > 31 then 1540
1520 if z < 6 then 1540
1530 if z < 20 then 1570
1540 o=o-(1*b):print "you lose":goto 1580
1550 o=o+(1*b):print "you win":goto 1580
1560 o=o+(3*b):goto 1580
1570 o=o+(20*b):print "you win":goto 1580
1580 print "at the end of the game you have a grand total of $";o
1590 if o < 300 then 1940
1600 for x=1 to 6:print chr$(7);:for b1=1 to 570:next b1:next x
1610 print "you are eligible for the bonus round."
1620 print "do you want to play it";:input a$
1630 if a$="no" then 1940
1640 print "this is the bonus round. if you get a total of 1,000"
1650 print "without getting a spade in the rolls, you will get"
1660 print "a grand prize of $10,000.00. you may stop at any point"
1670 print "during the game. you will keep what you made. good luck!"
1680 print
1690 dim a(5),b(4):a9$="spades"
1700 print "the dice are rolling":print "good luck."
1710 print "the dice are"
1720 for b1=1 to 570*5:next b1
1730 x=int(5*rnd(1)+1)
1740 a(1)=50:a(2)=100:a(3)=150:a(4)=200:a(5)=0
1750 y=int(4*rnd(1)+1)
1760 b(1)=50:b(2)=100:b(3)=150:b(4)=200
1770 if a(x)=0 then 1790
1780 print "****";a(x);b(y);"****":print "total ";a(x)+b(y):goto 1810
1790 print "****";a9$;b(y);"****"
1800 print "total ";b(y):goto 1870
1810 b7=b7+(a(x)+b(y)):print "you now have ";b7:if b7 >= 1000 then 1890
1820 print "stop or go":input b$
1830 if b$="go" then 1700
1840 print "smart move. you get the money from the beginning of"
1850 print "the game plus the bonus round. at the end of the game"
1860 print "you have the grand total of $";b7+o:goto 1940
1870 print "you lose the money from the last chance"
1880 print "round but you still have a grand total of $";o:goto 1940
1890 for t=1 to 3:print chr$(7);:for b1=1 to 570:next b1:next t
1900 b7=o+10000:print tab(15);"****congratulations****"
1910 print "you won the grand prize. at the end of the game, you have"
1920 for p=1 to 3:print:next p
1930 print tab(18);"*******";b7;"******"
1940 print "this is the end of the game. i hope you enjoyed it."
1950 end
