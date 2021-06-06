10 PRINT TAB(26);"BOGA II"
14 PRINT TAB(20);"CREATIVE COMPUTING"
17 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
20 PRINT:PRINT:PRINT
30 INPUT "DO YOU WANT INSTRUCTIONS";Q$
35 PRINT:PRINT
40 IF LEFT$(Q$,1)<>"Y" THEN 220
70 PRINT "  THE BOGA IS HIDING ON A GRID (YOU SPECIFY THE LENGTH"
80 PRINT "AND WIDTH). TRY TO GUESS HIS POSITION USING THE HINTS"
90 PRINT "I GIVE YOU.  EACH GUESS IS TWO NUMBERS SEPERATED BY"
100 PRINT "A COMMA.  PLEASE KEEP IN MIND THAT THE BOGA IS ALSO"
105 PRINT "SEARCHING FOR YOU!!!!"
110 PRINT:PRINT
220 U=0
240 K=1
250 F=0
260 INPUT "HOW BIG SHOULD THE GRID BE(20 MAXIMUM)";G
275 IF G>20 OR G<1 THEN PRINT:GOTO 260
280 S=G
290 REM: PRINTS THE GRID
300 INPUT "WOULD YOU LIKE A SAMPLE GRID";Z$
305 IF LEFT$(Z$,1)="N" THEN 380
310 PRINT
318 A$=""
320 IF G<10 THEN 332
322 FOR X=10 TO G
324 X1=INT(X/10)
326 A$=A$+CHR$(X1+48)+" "
328 NEXT X
330 PRINT TAB(25)JA$
332 A$=""
334 FOR X=0 TO G
336 X1=X-INT(X/10)*10
338 A$=A$+CHR$(X1+48)+" "
340 NEXT X
342 PRINT TAB(5)JA$
344 A$=""
346 FOR X=0 TO G
348 A$=A$+"* "
350 NEXT X
352 FOR X=0 TO G
354 PRINT X;TAB(5);A$
356 NEXT X
380 PRINT
390 H=1
400 INPUT "CHOOSE YOUR POSITION";X1,Y1
411 IF X1>G OR X1<0 OR Y1>G OR Y1<0 THEN PRINT:GOTO 400
420 PRINT "THE BOGA PICKS HIS POSITION!"
440 X2=INT(RND(1)*G)
450 Y2=INT(RND(1)*G)
460 PRINT "GUESS #"K;
470 INPUT X3,Y3
471 IF X3>G OR X3<0 OR Y3>G OR Y3<0 THEN PRINT:GOTO 460
480 K=K+1
490 F=F+1
500 IF K=10 THEN 1040
510 IF ABS(X3-X2)+ABS(Y3-Y2)=0 THEN 1010
520 PRINT "YOU GUESSED"X3","Y3
530 PRINT
540 PRINT "HE'S MORE TO THE ";
550 IF X2=X3 THEN 620
570 PRINT "NORTH";
560 IF X2>X3 THEN 600
590 GOTO 620
600 PRINT "SOUTH";
620 IF Y2=Y3 THEN 700
630 IF Y2>Y3 THEN 670
640 PRINT "WEST"
660 GOTO 700
670 PRINT "EAST"
690 REM: LINES 700-970 AND 1110-1150=BOGAS GUESSING FORMULA
700 PRINT"":IF H=0 THEN 730
710 X4=INT(.5*S)
720 Y4=INT(.5*S)
730 PRINT "THE BOGA GUESSES"X4","Y4
740 U=U+1
750 PRINT ""
760 Q=ABS(Y1-Y4)+ABS(X1-X4)
770 IF Q=0 THEN 980
780 H=0
790 IF Y4=Y1 THEN 880
800 A=1
810 IF ABS(Y4-Y1)<2 THEN 830
820 GOSUB 1140
830 IF Y4<Y1 THEN 860
840 Y4=INT(ABS(Y4-A))
850 GOTO 880
860 Y4=INT(ABS(Y4+A))
870 IF Y4>G THEN 1110
880 IF X4=X1 THEN 970
890 A=1
900 IF ABS(X4-X1)<2 THEN 920
910 GOSUB 1140
920 IF X4<X1 THEN 950
930 X4=INT(ABS(X4-A))
940 GOTO 970
950 X4=INT(ABS(X4+A))
960 IF X4>G THEN 1130
970 GOTO 460
980 PRINT "THE BOGA GUESSED YOUR POSITION IN"U"GUESS(ES)!"
990 PRINT
1000 GOTO 1050
1010 PRINT "YOU GUESSED THE BOGA'S POSITION IN"F"GUESS(ES)!"
1020 PRINT
1030 GOTO 1050
1040 PRINT "YOU USED UP ALL OF YOUR GUESSES."
1050 PRINT "THE BOGA WAS AT"X2","Y2
1060 PRINT
1070 INPUT "DO YOU WANT TO PLAY AGAIN";Q$
1080 IF LEFT$(Q$,1)="Y" THEN 220
1100 GOTO 1160
1110 Y4=.5*G
1120 GOTO 880
1130 X4=.5*G
1140 A=2
1150 RETURN
1160 END