10 PRINT TAB(25);"STRIKE 9"
20 PRINT TAB(19);"CREATIVE COMPUTING"
30 PRINT TAB(18);"MORRISTOWN NEW JERSEY"
90 DIM A(9),D(4)
110 PRINT:PRINT:PRINT
170 PRINT "DO YOU NEED INSTRUCTIONS ";
180 INPUT R$
190 IF R$ = "NO" THEN 340
200 IF R$ <> "YES" THEN 170
210 PRINT "STRIKE NINE IS PLAYED WITH A PAIR OF DICE AND A"
220 PRINT "BOARD WITH NINE NUMBERS: 1 2 3 4 5 6 7 8 9. YOU"
230 PRINT "ARE GIVEN A ROLL AND CAN KNOCK OFF UP TO 4 NUMBERS."
240 PRINT "IF YOU INPUT THAT YOU WANT TO REMOVE 5 NUMBERS, YOU"
250 PRINT "WILL BE GIVEN A CHART OF THE NUMBERS YOU HAVE LEFT"
260 PRINT "TO REMOVE. NEXT YOU INPUT HOW MANY NUMBERS YOU WANT"
270 PRINT "TO REMOVE, AND THEN INPUT THE NUMBERS YOU WANT TO "
280 PRINT "TAKE OFF, ONE AT A TIME. THE NUMBERS YOU TAKE OFF"
290 PRINT "MUST ADD UP TO THE ROLL. YOU WIN BY REMOVING EVERY"
300 PRINT "NUMBER FROM THE BOARD. YOU LOSE IF YOU CANNOT"
310 PRINT "REMOVE ALL NUMBERS WITH THE ROLL YOU HAVE."
320 PRINT
340 PRINT "READY TO PLAY?"
350 PRINT
355 PRINT "HERE IS THE BOARD:"
360 REM SET UP THE BOARD
370 FOR B=1 TO 9
380 PRINT B;
390 A(B)=B
400 NEXT B
405 PRINT
410 C=INT(RND(1)*6+1)+INT(RND(1)*6+1)
420 PRINT "YOUR ROLL IS ",C
430 T=0
440 FOR X=1 TO 9
450 T=T+A(X)
460 NEXT X
465 REM CHECK FOR LOSS
470 IF C > T THEN 950
480 IF C=T THEN 1120
490 FOR K=1 TO 9
500 FOR L=1 TO 9
510 FOR M=1 TO 9
520 FOR N=1 TO 9
530 IF N=K THEN 630
540 IF N=L THEN 630
550 IF N=M THEN 630
560 IF M=K THEN 640
570 IF M=L THEN 640
580 IF L=K THEN 650
590 IF C-A(K)=0 THEN 680
600 IF C-A(K)=A(N) THEN 680
610 IF C-A(K)-A(L)=A(N) THEN 680
620 IF C-A(K)-A(M)=A(N) THEN 680
630 NEXT N
640 NEXT M
650 NEXT L
660 NEXT K
670 GOTO 950
680 FOR X=1 TO 4
690 D(X)=0
700 NEXT X
710 PRINT "# OF NUMBERS TO REMOVE ";
720 INPUT E
730 IF INT(E) <> E THEN 760
740 IF E < 1 THEN 760
750 IF E>4 THEN 880
755 GOTO 770
760 PRINT "ANSWER 1, 2, 3, OR 4 (5 FOR THE BOARD)"
765 GOTO 710
770 PRINT "WHAT IS THE NUMBER";
780 FOR F=1 TO E
790 INPUT D(F)
800 IF A(D(F)) <> 0 THEN 825
810 PRINT "YOU REMOVED IT BEFORE, TRY AGAN."
820 GOTO 710
825 NEXT F
830 IF C <> D(1)+D(2)+D(3)+D(4) THEN 870
835 FOR F=1 TO E
840 A(D(F))=0
850 NEXT F
860 GOTO 410
870 PRINT "THOSE NUMBERS DON'T ADD UP TO YOUR ROLL, TRY AGAIN"
875 GOTO 710
880 PRINT "THE NUMBERS YOU HAVE LEFT TO REMOVE ARE:  ";
890 FOR B=1 TO 9
900 IF A(B)=0 THEN 920
910 PRINT A(B);
920 NEXT B
930 PRINT
940 GOTO 710
950 PRINT "SORRY, YOU LOST THIS TIME."
960 T=0
970 FOR B=1 TO 9
980 IF A(B)=0 THEN 1000
990 T=T+1
1000 NEXT B
1010 PRINT "THERE ARE ";T;" NUMBERS LEFT ON THE BOARD:   ";
1020 FOR X=1 TO 9
1030 IF A(X)=0 THEN 1050
1040 PRINT A(X);
1050 NEXT X
1060 PRINT
1070 PRINT "WANT TO TRY AGAIN (YES OR NO)";
1080 INPUT G$
1090 IF G$="YES" THEN 170
1100 IF G$ <> "NO" THEN 1070
1110 END
1120 PRINT "* * * CONGRATULATIONS * * *"
1130 PRINT "* YOU WON *"
1140 PRINT
1150 PRINT
1160 PRINT "PLAY ANOTHER GAME (YES OR NO)";
1170 INPUT H$
1180 IF H$="YES" THEN 170
1190 IF H$ <> "NO" THEN 1160
1200 END
