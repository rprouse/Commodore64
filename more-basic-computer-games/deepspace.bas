100 PRINT TAB(24);"DEEPSPACE"
110 PRINT TAB(20);"CREATIVE COMPUTING"
120 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
130 PRINT:PRINT:PRINT
150 PRINT "THIS IS DEEPSPACE, A TACTICAL SIMULATION OF SHIP TO SHIP"
160 PRINT "COMBAT IN DEEP SPACE."
170 PRINT "DO YOU WISH INSTRUCTIONS";:INPUT I$
180 IF I$="NO" THEN 610
200 PRINT "YOU ARE ONE OF A GROUP OF CAPTAINS ASSIGNED TO PATROL A"
210 PRINT "SECTION OF YOUR STAR EMPIRE'S BORDER AGAINST HOSTILE"
220 PRINT "ALIENS. ALL YOUR ENCOUNTERS HERE WILL BE AGAINST HOSTILE"
230 PRINT "VESSELS. YOU WILL FIRST BE REQUIRED TO SELECT A VESSEL"
240 PRINT "FROM ONE OF THREE TYPES, EACH WITH ITS OWN CHARACTERISTICS:"
260 PRINT:PRINT "TYPE","SPEED","CARGO SPACE","PROTECTION"
270 PRINT "1 SCOUT","10X","16","1"
280 PRINT "2 CRUISER","4X","24","2"
290 PRINT "3 BATTLESHIP","2X","30","5"
310 PRINT:PRINT "SPEED IS GIVEN RELATIVE TO THE OTHER SHIPS."
320 PRINT "CARGO SPACE IS IN UNITS OF SPACE ABOARD SHIP WHICH CAN BE"
330 PRINT "FILLED WITH WEAPONS."
340 PRINT "PROTECTION IS THE RELATIVE STRENGTH OF THE SHIP'S ARMOR"
350 PRINT "AND FORCE FIELDS."
370 PRINT:PRINT "ONCE A SHIP HAS BEEN SELECTED, YOU WILL BE INSTRUCTED TO ARM"
380 PRINT "IT WITH WEAPONRY FROM THE FOLLOWING LIST:"
390 PRINT
400 PRINT "TYPE                         CARGO SPACE    REL. STRENGTH"
410 PRINT "1 PHASER BANKS                   12                4"
420 PRINT "2 ANTI-MATTER MISSILE             4               20"
430 PRINT "3 HYPERSPACE LANCE                4               16"
440 PRINT "4 PHOTON TORPEDO                  2               10"
450 PRINT "5 HYPERON NEUTRALIZATION FIELD   20                6"
470 PRINT:PRINT "WEAPONS #1 & #5 CAN BE FIRED 100 TIMES EACH; ALL OTHERS CAN"
480 PRINT "BE FIRED ONCE FOR EACH ON BOARD."
490 PRINT "A TYPICAL LOAD FOR A CRUISER MIGHT CONSIST OF:"
500 PRINT "          1-#1 PHASER BANK          = 12"
510 PRINT "          2-#3 HYPERSPACE LANCES    =  8"
520 PRINT "          2-#4 PHOTON TORPEDOES     =  4"
530 PRINT "                                  ---------"
540 PRINT "                                      24 UNITS OF CARGO"
550 PRINT " A WORD OF CAUTION: FIRING HIGH YIELD WEAPONS AT CLOSE (<100)"
560 PRINT "RANGE CAN BE DANGEROUS TO YOUR SHIP AND MINIMAL DAMAGE CAN"
570 PRINT "OCCUR AS FAR OUT AS 200 IN SOME CIRCUMSTANCES."
590 PRINT:PRINT "RANGE IS GIVEN IN THOUSANDS OF KILOMETERS."
600 GOTO 640
610 PRINT "DO YOU WISH A MANUEVER CHART";:INPUT M$
620 IF M$="NO" THEN 770
640 PRINT "     **************"
650 PRINT "     MANUEVER CHART":PRINT
670 PRINT " 1      FIRE PHASERS"
680 PRINT " 2      FIRE ANTI-MATTER MISSILE"
690 PRINT " 3      FIRE HYPERSPACE LANCE"
700 PRINT " 4      FIRE PHOTON TORPEDO"
710 PRINT " 5      ACTIVE HYPERON NEUTRALIZATION FIELD"
720 PRINT " 6      SELF-DESTRUCT"
730 PRINT " 7      CHANGE VELOCITY"
740 PRINT " 8      DISENGAGE"
750 PRINT " 9      PROCEED"
770 PRINT:PRINT "YOU HAVE A CHOICE OF THREE SYSTEMS TO PATROL."
780 PRINT "1 ORION"
790 PRINT "2 DENEB"
800 PRINT "3 ARCTURUS"
810 PRINT "SELECT A SYSTEM(1-3)";:INPUT S9
820 IF S9=1 THEN 2380
830 IF S9=2 THEN 2430
840 GOTO 2480
850 D0=0
860 D1=0
870 N1=0
880 N2=0
890 N3=0
900 N4=0
910 D=0
920 PRINT "WHICH SPACECRAFT WOULD YOU LIKE(1-3)";:INPUT S
930 ON S GOTO 1790,1830,1870
960 GOTO 920
970 C=C0
980 PRINT "YOU HAVE ";C;"UNITS OF CARGO SPACE TO FILL WITH WEAPONRY."
990 PRINT "CHOOSE A WEAPON AND THE AMOUNT YOU WISH.";:INPUT W,N
1000 ON W GOTO 1910,2010,2100,2190,2280
1050 GOTO 980
1060 IF N*C1>C THEN 2530
1070 C=C-N*C1
1080 ON W GOTO 1990,2080,2170,2260
1120 GOTO 2360
1130 IF C>1 THEN 980
1140 REM
1150 S1=S0*RND(0)
1160 R=(3*RND(0)+5)*100
1180 PRINT:PRINT "RANGE TO TARGET:";R
1190 PRINT "RELATIVE VELOCITY:";S1
1200 PRINT "ACTION";:INPUT M
1210 ON M GOTO 1940,2030,2120,2210,2310,1660,1390,2760
1290 IF R<500 THEN 1500
1300 IF S1>0 THEN 1330
1310 R=R+(S1*8.3)^1.25
1320 GOTO 1340
1330 R=R-(S1*8.3)^1.25
1340 IF R>1500 THEN 2590
1350 IF R>0 THEN 1370
1360 R=-R
1370 PRINT
1380 GOTO 1180
1390 PRINT "CHANGE TO BE EFFECTED";:INPUT S2
1400 IF (S1+S2)>S0 THEN 2550
1410 S1=S1+S2
1420 GOTO 1180
1430 F0=P1*(Z/R)^1.5
1440 REM
1450 D0=(2*F0+3*F0*RND(0))/5
1460 D=D+D0
1470 PRINT "SCANNERS REPORT ENEMY DAMAGE NOW:";D
1480 IF D>99 THEN 2720
1490 GOTO 1510
1500 D0=0
1510 REM
1520 K=E1+E2*RND(0)
1530 REM
1540 E=E3+E4*RND(0)+5/P0*RND(0)
1550 REM
1560 F3=E*(K/R)^1.85
1570 D2=(3*F3+3*F3*RND(0))/5.5
1580 D1=D1+D2
1590 IF (Z*D0)/(R*500)>2.2 THEN 1620
1600 D3=D0*2/(R*2*P0)
1610 D1=D1+D3
1620 PRINT "DAMAGE CONTROL REPORTS YOUR VESSEL DAMAGE AT:";D1
1630 IF D1>99 THEN 2740
1640 IF D>99 THEN 2760
1650 GOTO 1300
1660 PRINT "SELF DESTRUCT FAILSAFE ACTIVATED!!"
1670 PRINT "INPUT 1 TO RELEASE FAILSAFE";:INPUT U
1680 IF U=1 THEN 1700
1690 GOTO 1290
1700 PRINT "SELF DESTRUCT ACCOMPLISHED"
1710 IF R>60 THEN 1740
1720 PRINT "ENEMY VESSEL ALSO DESTROYED"
1730 GOTO 2760
1740 D4=3200/R
1750 D=D+D4
1760 IF D>99 THEN 1720
1770 PRINT "ENEMY VESSEL SURVIVES WITH";D;"DAMAGE"
1780 GOTO 2760
1790 S0=10
1800 C0=16
1810 P0=1
1820 GOTO 970
1830 S0=4
1840 C0=24
1850 P0=2
1860 GOTO 970
1870 S0=2
1880 C0=30
1890 P0=5
1900 GOTO 970
1910 C1=12
1930 GOTO 1060
1940 P1=4
1950 IF N1=0 THEN 2160
1960 N1=N1-1
1970 Z=200
1980 GOTO 1430
1990 N1=N1+N
2000 GOTO 1130
2010 C1=4
2020 GOTO 1060
2030 P1=20
2040 IF N2=0 THEN 2640
2050 N2=N2-1
2060 Z=500
2070 GOTO 1430
2080 N2=N2+N
2090 GOTO 1130
2100 C1=4
2110 GOTO 1060
2120 P1=16
2130 IF N3=0 THEN 2660
2140 N3=N3-1
2150 Z=550
2160 GOTO 1430
2170 N3=N3+N
2180 GOTO 1130
2190 C1=2
2200 GOTO 1060
2210 P1=10
2220 IF N4=0 THEN 2680
2230 N4=N4-1
2240 Z=400
2250 GOTO 1430
2260 N4=N4+N
2270 GOTO 1130
2280 C1=.20
2290 N=100
2300 GOTO 1060
2310 P1=6
2320 IF N5=0 THEN 2700
2330 N5=N5-1
2340 Z=250
2350 GOTO 1430
2360 N5=N5+N
2370 GOTO 1130
2380 E1=150
2390 E2=500
2400 E3=3
2410 E4=4
2420 GOTO 850
2430 E1=200
2440 E2=350
2450 E3=4
2460 E4=3
2470 GOTO 850
2480 E1=150
2490 E2=400
2500 E3=5
2510 E4=2
2520 GOTO 850
2530 PRINT "NOT ENOUGH SPACE. RESELECT"
2540 GOTO 980
2550 PRINT "CHANGE BEYOND MAXIMUM POSSIBLE"
2560 PRINT "INCREASING TO MAXIMUM"
2570 S1=S0
2580 GOTO 1300
2590 PRINT "OUT OF SENSOR RANGE. AAUTOMATIC DISENGAGE."
2600 GOTO 2760
2610 PRINT "PHASER BANKS DRAINED"
2620 PRINT "SELECT ANOTHER COURSE OF ACTION"
2630 GOTO 1200
2640 PRINT " ALL ANTI-MATTER MISSLES EXPENDED"
2650 GOTO 2620
2660 PRINT "ALL HYPERSPACE LANCES EXPENDED"
2670 GOTO 2620
2680 PRINT "ALL PHOTON TORPEDO TUBES EMPTY"
2690 GOTO 2620
2700 PRINT "HYPERON NEUTRALIZATION FIELD DRAINED"
2710 GOTO 2620
2720 PRINT "ENEMY VESSEL DESTROYED"
2730 GOTO 1510
2740 PRINT "YOUR VESSEL HAS BEEN DESTROYED"
2760 PRINT "ANOTHER BATTLE";:INPUT R$
2770 IF R$="YES" THEN 810
2780 PRINT "TRY AGAIN LATER!"
2790 END