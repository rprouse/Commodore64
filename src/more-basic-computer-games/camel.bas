10 print tab(26);"camel"
20 print tab(20);"creative computing"
30 print tab(18);"morristown, new jersey"
35 print:print:print
110 print "would you like instructions";
120 input d$
130 if left$(d$,1)="n" then 320
140 print:print "   welcome to camel.  the qbjest is to travel"
150 print "200 miles across the great gobi desert."
160 print "a tribe of knocked kneed pigmies will be chasing you."
170 print "you will be asked for commands every so often."
180 print
190 print
200 print
210 print "c o m m a n d s :"
220 print "#1 drink from your canteen"
230 print "#2 ahead moderate speed"
240 print "#3 ahead full speed"
250 print "#4 stop for the night"
260 print "#5 status check"
270 print "#6 hope for help"
275 print
276 print
277 print
278 print
279 print
280 print "you have one quart of water which will last you six drinks."
290 print "you mave renew your water supply completely at an oases."
300 print "you get a half a quart if found by help."
310 print "if help does not find you after command six, you lose."
320 print "good luck and good cameling !!"
330 print "you are in the middle of the desert at an oasis."
335 gosub 2000
340 if c>199 then 1210
350 z=z-1
355 if z=1 then print "----------w a r n i n g---------- get a drink"
360 if z<0 then 1630
370 p=p+1
380 x2=int(10*rnd(1)+2.5)
390 if q>0 then 940
400 if p<4 then 470
410 c1=c1+x2
420 if c1<c then 460
430 print "the pygmies have captured you.  camel and people soup is"
440 print "their favorite dish !!!!!"
450 goto 1560
460 print "the pygmies are "c-c1;" miles behind you."
470 print "you have travelled ";c;" miles altogether."
480 print "what is your command";
490 input y
500 on y goto 830,610,680,760,790
550 t=int(10*rnd(1))
560 if t<>1 then 1200
570 print "help has found you in a state of unconsciousness."
580 s=3
590 z=4
600 goto 340
610 f=f+1
620 if f=8 then 1190
630 gosub 880
640 x1=int(10*rnd(1))
650 c=c+x1
660 print "your camel likes this pace."
670 goto 340
680 f=f+3
690 if f>7 then 1190
700 gosub 880
710 x1=2*int(10*rnd(1))
720 c=c+x1
730 print "your camel is burning across the desert sands."
740 print
750 goto 340
760 print "your camel thanks you!"
770 f=0
780 goto 350
790 print "your camel has ";7-f;" good days left."
800 print "you have ";s;" drinks left in your canteen."
810 print "you can go ";z;" commands without drinking."
830 s=s-1
840 if s<0 then 1200
850 print "better watch for an oases !"
860 z=4
870 goto 480
880 a=int(100*rnd(1))
890 if a>5 then 1120
900 print "wild berbers hidden in the sand have captured you."
910 print "luckily the local sheik has agreed to their ransom-"
920 print "demands.......but........watch for the pygmies !!!"
930 print "you have a new choice of sub-commands:"
940 print "#7 attempt an escape"
950 print "#8 wait for payment"
960 print "your sub-command ";
970 input x
980 if x=8 then 1060
990 x1 = int(10 * rnd(1))
1000 if x1<5 then 1040
1010 print "congradulations, you successfully escaped !!!!"
1020 q=0
1030 goto 340
1040 print "you were mortally wounded by a pig stabber while escaping."
1050 goto 1410
1060 x1=int(100*rnd(1))
1070 rem
1080 if x1>24 then 1100
1090 print "your ransom has been paid and you are free to go."
1095 q=0
1096 goto 340
1100 print "the local sultan is collecting......just wait......."
1110 goto 340
1120 a=int(10*rnd(1))
1130 if a>2 then 1240
1140 print "you have arrived at an oases--------your camel is"
1150 print "filling your canteen and eating figs."
1160 z=4
1170 s=6
1180 return
1190 print "you dirty rapscallion! you ran your poor camel to death !!"
1200 goto 1410
1210 print "you win, a party is being given in your honor......."
1220 print ".......the pygmies are planning to attend......."
1230 goto 1560
1240 x1=int(100*rnd(1))
1250 if x1>5 then 1350
1260 print "you have been caught in a sandstorm.....good luck!"
1270 x5=int(10*rnd(1))
1280 x6=int(10*rnd(1))
1290 if x6<5 then 1320
1300 c=c+x5
1310 goto 1330
1320 c=c-x5
1330 print "your new position is ";c;" miles so far!"
1340 return
1350 x1=int(100*rnd(1))
1360 if x1>5 then return
1370 c1=c1+1
1380 print "your camel hurt his hump."
1390 print "luckily the pygmies were footweary !!!"
1400 return
1410 u=int(10*rnd(1))
1420 print "you died in the desert."
1430 if u>1 then 1460
1440 print "the national camel's union is not attending your funeral!!!"
1450 goto 1560
1460 if u>3 then 1490
1470 print "your body was eaten by vultures and imported canninbals !!!"
1480 goto 1560
1490 if u>5 then 1520
1500 print "the local sheik now uses your skull for a change purse !!!"
1510 goto 1560
1520 if u>7 then 1550
1530 print "people with little intelligence should stay out of the desert!!!"
1540 goto 1560
1550 print "turkeys should fly, not ride camels !!!!!!!"
1560 print
1570 print
1580 print "want a new camel and a new game ";
1590 input d$
1600 if left$(d$,1)="y" then 320
1620 goto 1650
1630 print "you ran out of water......sorry chum!!!"
1640 goto 1410
1650 print "------------------"
1655 print "     chicken"
1657 print "------------------"
1660 end
2000 z=4
2010 s=6
2020 c=0
2030 c1=0
2040 q=0
2050 f=0
2060 p=0
2070 return
