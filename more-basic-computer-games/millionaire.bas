1 PRINT TAB(23);"MILLIONAIRE"
2 PRINT TAB(20);"CREATIVE CQHPUTING"
3 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
4 PRINT:PRINT:PRINT
10 REM    MILLIONAIRE BY CRAIG GUNNETT
20 PRINT "THIS IS THE GAME OF 'MILLIONAIRE'.  ALL YOU MUST DO IS"
30 PRINT "TYPE IN YOUR NAME AND ANSWER SOME QUESTIONS.  THE"
40 PRINT "DECISIONS YOU MAKE WILL DETERMINE HOW MUCH MONEY YOU"
50 PRINT "MAKE.  AT THE TIME OF YOUR DEATH, YOUR LIFE WILL BE"
60 PRINT "RATED BY THE AMOUNT OF MONEY YOU MADE THROUGHOUT"
70 PRINT "YOUR LIFE.  IF YOU HAVE MADE $1,000,000 , YOU WILL BE"
80 PRINT "A MILLIONAIRE AND WIN THE GAME.  NAME PLEASE";
100 LET O=-1
110 DIM A$(20),Z$(1),M$(36),S(9),Q(16)
120 FOR I=1 TO 4
130   LET S(I)=150
140 NEXT I
150 INPUT A$
160 PRINT
170 PRINT "O.K., ";A$;", THIS IS YOUR NEW LIFE!"
180 LET M$="JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC"
190 IF RND(1)>.5 GOTO 220
200 PRINT "ON A BIG FARM";
210 GOTO 230
220 PRINT "IN A SHALL TOWN";
230 LET T=INT(RND(1)*12)+1
240 PRINT ", ON ";MID$(M$,3*T-2,3);INT(RND(1)*28)+1;", 1980,";
250 PRINT " ";A$;" IS BORN."
260 PRINT "YOUR PARENTS ARE VERY ";
270 IF RND(1)>.5 GOTO  310
280 PRINT "RICH. ";
290 LET M=INT(RND(1)*5000)+10000
300 GOTO 330
310 PRINT "POOR. ";
320 LET M=INT((RND(1)+RND(1))/2*1000)
330 LET T=INT(RND(1)*12)+1
340 LET Y=1996+INT(RND(1)*10)
350 PRINT "ON ";MID$(M$,T*3-2,3);T*2;", ";Y;", YOU"
360 PRINT "LEAVE HOME WITH $";M
370 LET Y=Y+INT(RND(1)*3)+1
380 GOSUB  680
390 FOR J=1 TO 13
400 IF (J/3)-INT(J/3)+E=0 THEN GOSUB 680
410   LET D=INT(28*RND(1))+1
420   LET M1=(INT(12*RND(1))+1)*3
430   PRINT
440 PRINT MID$(M$,M1-2,3);D;",";Y
450   IF Y-1980<70 GOTO 500
460   IF RND(1)>.5 GOTO 500
470   PRINT "YOU ARE DEAD (COULD'NT TELL, COULD YOU?) AT THE"
480   PRINT "AGE OF ";Y-1980;"."
490   GOTO 2370
500   IF M>=0 GOTO 540
510   LET I=INT(.07*Y9*(-M))
520   LET M=M-I
530   PRINT "THE INTEREST ON YOUR LOAN IS $";I;".  YOU HAVE $";M
540   LET Q=INT(13*RND(1))+1
550   IF Q(Q)=1 GOTO 540
560   LET Q(Q)=1
570   ON Q GOTO 890, 1010, 1100, 1220, 1280, 1430, 1530
580   ON (Q-7) GOTO 1850, 1930, 2060, 2120, 2240, 2280
590   PRINT "YOU NOW HAVE $";M
600   IF O=-2 GOTO 1530
610   IF J=1 GOTO 640
620   LET M=M+(E-C)*Y9
630   PRINT "YOUR EARNINGS AND EXPENSES LEAVE YOU WITH $";M
640   LET Y9=INT(RND(1)*6)*5
650   LET Y=Y+Y9
660 NEXT J
670 GOTO 470
680 REM      JOB SUB
690 PRINT "YOU GOT A NEW JOB AS A ";
700 ON INT(RND(1)*5)+1 GOTO  740, 770, 800, 830
710 PRINT "TEACHER";
720 LET E=INT(RND(1)*4000)+17000
730 GOTO 850
740 PRINT "LAWYER";
750 LET E=INT(RND(1)*40000)+80000
760 GOTO 850
770 PRINT "COMPUTER PROGRAMMER";
780 LET E=INT(RND(1)*5000)+20000
790 GOTO 850
800 PRINT "BUS DRIVER";
810 LET E=INT(RND(1)*2000)+16000
820 GOTO 850
830 PRINT "FOOTBALL PLAYER";
840 LET E=INT(RND(1)*100000)+100000
850 LET C=E-10000+INT((RND(1)+RND(1))*5000)
860 PRINT ".  YOU EARN $";E;" A YEAR."
870 PRINT "YOU ADJUST YOUR EXPENSES TO $";C;" A YEAR."
880 RETURN
890 PRINT "YOU GO TO LAS VEGAS TO GAMBLE.  HOW MUCH DO YOU BET";
900 INPUT S
910 PRINT
920 IF S<=0 GOTO 1000
930 IF RND(1)>.7 GOTO 970
940 LET S2=-INT(RND(1)*S)
950 PRINT "HA! HA! YOU LOST $";-S2
960 GOTO 990
970 LET S2=INT((RND(1)+RND(1))*S)
980 PRINT "YOU WON $";S2
990 LET M=M+S2
1000 GOTO 590
1010 PRINT "YOU ARE OFFERED A COIN SUPPOSEDLY WORTH $100,000."
1020 PRINT "DO YOU BUY IT";
1030 INPUT Z$
1040 PRINT
1050 LET V7=INT(RND(1)*200000)+1
1060 IF Z$<>"Y" GOTO  1080
1070 LET M=M-100000+V7
1080 PRINT "THE VALUE OF THE COIN IS $";V7
1090 GOTO 590
1100 PRINT "YOU ARE SERIOUSLY SICK.  (COULDN'T TELL, COULD YOU?)"
1110 PRINT "YOU HAVE ";
1120 ON (INT(RND(1)*3)+1) GOTO  1150, 1170
1130 PRINT "THE ASIO-DISPEPSIA REGIONALY HYPNOTIC FLU!(OH!)."
1140 GOTO 1180
1150 PRINT "COMPUTER ITIS."
1160 GOTO 1180
1170 PRINT "INFECTIOUS FATALY REOCCURING CHRONIC BAD BREATH."
1180 LET U=INT(RND(1)*1000)+500
1190 LET M=M-U
1200 PRINT "HEALTH EXPENSES COST YOU $";U
1210 GOTO 590
1220 LET F=INT(RND(1)*100000)
1230 LET C8=INT(F/2)-INT(RND(1)*(F/2))
1240 PRINT "YOUR GRANDFATHER GROVERS JUST DIED. (OH!)  HE LEFT"
1250 PRINT "YOU $";F;", BUT FUNERAL EXPENSES ARE $";C8
1260 LET M=M-C8+F
1270 GOTO 590
1280 IF E=0 GOTO  890
1290 PRINT "NEWS FROM YOUR BOSS:"
1300 ON (INT(RND(1)*3)+1) GOTO  1350, 1390
1310 LET L=INT(RND(1)*3000)+1
1320 LET E=E-L
1330 PRINT "YOU GOT A $";L;" DECREASE IN PAY.  YOU NOW EARN$";E
1340 GOTO 590
1350 PRINT "YOU'RE FIRED! (HA!)"
1360 LET E=0
1370 LET C=INT(C/4)
1380 GOTO 590
1390 LET R6=INT(RND(1)*5000)+1
1400 LET E=E+R6
1410 PRINT "YOU GOT A RAISE OF $";R6;"  YOU NOW EARN $";E
1420 GOTO 590
1430 PRINT "THE DOCTOR SAYS YOU NEED A VACATION.  DO YOU GO";
1440 INPUT Z$
1450 PRINT
1460 LET V=INT(RND(1)*2000)+1000
1470 IF Z$="N" GOTO 1500
1480 PRINT "GOOD, THE VACATION COSTS $";V
1490 GOTO 1510
1500 PRINT "YOU JUST HAD A NERVOUS BREAKDOWN.  MEDICAL COSTS - $";V
1510 LET M=M-V
1520 GOTO 590
1530 FOR I=1 TO 4
1540   LET S(I)=INT((INT(RND(1)*100)+100+2*S(I))/3)
1550 NEXT I
1560 PRINT "#           STOCK NAME         PRICE   SHARES OWNED"
1570 PRINT "1 IBM (INCREDIBLY BAD MACHINES) ";S(1);"    ";S(5)
1580 PRINT "2 USS (USELESS & STINKY STEEL)  ";S(2);"    ";S(6)
1590 PRINT "3 NCR (NO CASH RETURN)          ";S(3);"    ";S(7)
1600 PRINT "4 TWA (TOTAL WRECK AIRLINES)    ";S(4);"    ";S(8)
1610 IF S(9)=1 GOTO 2410
1620 PRINT "DO YOU BUY, SELL ($100 FEE), OR NOT (B,S, OR N)";
1630 INPUT Z$
1640 PRINT
1650 IF Z$="S" GOTO 1740
1660 IF Z$="N" GOTO 1810
1670 PRINT "STOCK # AND QUANTITY";
1680 INPUT S3,S(0)
1690 PRINT
1700 LET S(4+S3)=S(4+S3)+S(0)
1710 LET O=-2
1720 LET M=M-S(S3)*S(0)-100
1730 GOTO 1620
1740 PRINT "STOCK # AND QUANTITY";
1750 INPUT S2,S5
1760 IF RND(1)<.5 GOTO  1880
1770 IF S5>S(4+S2) GOTO 1740
1780 LET S(4+S2)=S(4+S2)-S5
1790 LET M=M+S(S2)*S5-100
1800 GOTO 1620
1810 LET S1=S(5)+S(6)+S(7)+S(8)
1820 IF S1>0 GOTO 610
1830 LET O=-1
1840 GOTO 610
1850 PRINT "NEWS FLASH!!! ";
1860 PRINT "A TORNADO HAS JUST HIT THE HOME OF ";A$
1870 GOTO 1890
1880 PRINT "AN AIRPLANE HAS JUST CRASHED INTO THE HOME OF ";A$
1890 LET D8=INT(RND(1)*50000)+1
1900 LET M=M-D8
1910 PRINT "DAMAGES HAVE BEEN ESTIMATED AT $";D8
1920 GOTO 590
1930 PRINT "OH! YOU JUST GOT ";
1940 IF Y-1980<55 GOTO  2000
1950 IF RND(1)>.4 GOTO  1980
1960 PRINT "CANCER";
1970 GOTO 2010
1980 PRINT "A HEART ATTACK";
1990 GOTO 2010
2000 PRINT "LEUKEMIA";
2010 LET M2=INT(RND(1)*5000)+1000
2020 LET M=M-M2
2030 PRINT ".  MEDICAL BILLS ARE $";M2
2040 IF RND(1)<.5 GOTO  470
2050 GOTO 590
2060 PRINT "YOU JUST HAD A CAR ACCIDENT!  MEDICAL COSTS"
2070 LET M3=INT(RND(1)*3000)+1000
2080 LET Q7=INT(RND(1)*5000)+100
2090 PRINT "ARE $";M3;". REPAIRS COST $";Q7
2100 LET M=M-M3-Q7
2110 GOTO 590
2120 IF E=0 GOTO  1010
2130 LET E2=10000+INT(RND(1)*5000)
2140 PRINT "YOU ARE OFFERED ANOTHER JOB FOR $";E2;" A YEAR."
2150 PRINT "WOULD YOU LIKE TO MOONLIGHT";
2160 INPUT Z$
2170 PRINT
2180 IF Z$="N" GOTO 590
2190 ON INT(RND(1)*3) GOTO  1350, 2220
2200 LET E=E+E2
2210 GOTO 590
2220 PRINT "FROM OVERWORK YOU GET ";
2230 GOTO 1980
2240 LET R2=INT(RND(1)*10000)+5000
2250 LET M=M-R2
2260 PRINT "YOUR HOME HAS BEEN ROBBED OF GOODS WORTH $";R2
2270 GOTO 590
2280 IF O=-1 GOTO 1430
2290 IF RND(1)>.7 GOTO 1430
2300 LET B4=INT(RND(1)*4)
2310 PRINT "STOCK MARKET CRASH!!!  EACH OF YOUR";S1;" SHARES OF"
2320 PRINT "STOCK IS WORTH $";B4;".  YOU MUST SELL ALL OF THEM"
2330 PRINT "FOR A TOTAL OF $";S1*B4
2340 LET M=M+S1*B4
2350 LET O=-1
2360 GOTO 590
2370 PRINT "YOU HAD $";M
2380 IF O=-1 GOTO 2430
2390 LET S(9)=1
2400 GOTO 1530
2410 LET M=M+S(1)*S(5)+S(2)*S(6)+S(3)*S(7)+S(4)*S(8)
2420 PRINT "WITH STOCK VALUE YOU HAVE $";M
2430 IF M<0 GOTO  2480
2440 IF M<500000 GOTO 2510
2450 IF M<1E+06 GOTO 2530
2460 PRINT A$;" WON!!  YOU ARE A MILLIONAIRE!!"
2470 GOTO 2540
2480 PRINT "YOU LOUSY #$%&'*!!! NOW YOUR POOR FAMILY HAS TO PAY"
2490 PRINT "OFF YOUR DEBTS.......................... "
2500 GOTO 2540
2510 PRINT "NOT BAD, ";A$
2520 GOTO 2540
2530 PRINT "CLOSE, ";A$;".  MAYBE NEXT LIFE."
2540 PRINT "THANKS FOR PLAYING 'MILLIONAIRE', ";A$;"!!!!"
2550 END
