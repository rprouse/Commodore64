100 print tab(26),"father":print
110 print tab(20);"creative computing"
120 print tab(18);"morristown, new jersey "
130 print:print:print
140 print "want to have a debate with your father, eh??":print
150 dim m$(2)
160 a=2
170 m$(2)="father"
180 print "do you want instructions";
190 input q1$
200 if q1$="yes" then 220
210 goto 310
220 print "you are going to play in a game in which you will discuss"
230 print "a problem with your ";m$(a);" and attempt to get him to"
240 print "agree with you in three tries."
250 print
260 print "for each statement you make, i will tell you what "
270 print "your ";m$(a);" replied."
280 print
290 print "you must select your statement from one"
300 print "of the following six."
310 print "**********"
320 print "1.     o.k. i will stay home."
330 print "2.     but i'd really like to go. all my friends are going."
340 print "3.     if all my work is done, i should be able to go."
350 print "4.     if you let me go out i'll babysit all next week"
360 print "5.     you never let me do what i want to do."
370 print "6.     i'm going anyway!"
380 print "**********"
390 print
400 print "when a question mark appears, type the number"
410 print "of your response followed by a return."
420 print
430 print "you will receive points based on how successfull you"
440 print "are at convincing your father."
450 print
460 print "the issue is:"
470 print "    you want to go out saturday night."
480 print "     your ";m$(a);" opposes the idea."
490 print
500 print "when you first bring up the idea, your ";m$(a);" states:"
510 p1=-1
520 p3=2
530 p5=-1
540 c=1
550 p6=-2
560 x=0
570 i6=0
580 print
590 print "no, you can't go out on a date sat. nite and that's that."
600 print "how would you approach your ";m$(a)
610 print "what would you say first";:input i1
620 on i1 goto 720,760,1070,1070,750,700
630 print "no, you can not go out on a sat. night."
640 x=x-2:i6=i6+i1
650 if i6=i2 then 830
660 c=c+1
670 if c=3 then 1040
680 if i2=6 then 840
690 goto 780
700 print "your ";m$(a);" said:"
710 goto 630
720 print "agreement reached"
730 x=x+p1
740 goto 1040
750 x=x+p5
760 print "your ";m$(a);" said:"
770 print "i don't think you deserve to go out sat. nite."
780 print "what is your reply";
790 input i2
800 on i2 goto 720,960,1010,1010,950,700
810 print "your ";m$(a);" said:"
820 x=x+p3
830 print "what is your reply";
840 input i3
850 on i3 goto 910,1050,890,890,910,920
860 x=x+p1
870 x=x+p1
880 goto 1050
890 x=x+2
900 goto 1050
910 x=x-1:goto 1050
920 x=x-2
930 print "discussion ended. no agreement reached."
940 goto 1040
950 x=x+p5
960 print "your  ";m$(a);" said:"
970 print "no, i'm sorry, but you really don't deserve to go ";
980 print "sat. night."
990 print "what is your reply";:input i3
1000 on i3 goto 720,890,1010,1010,870,860
1010 print "your father said:"
1020 x=x+p3
1030 print "o.k. if you do that you can go out sat. night "
1040 print
1050 print "on a scale of -7 to 4, your score was ";x;" points."
1060 goto 1120
1070 print "your ";m$(a);" said:"
1080 x=x+p3
1090 print "well, maybe, but i don't think you should go."
1100 print "what is your reply";:goto 790
1110 print
1120 print "it is now sat. night, which do you do?"
1130 print "     1. go out."
1140 print "     2. stay home."
1150 input q3
1160 if q3 > 1 then 1180
1170 goto 1220
1180 if i2 > 1 then 1200
1190 goto 1220
1200 if i3 < 5 then 1220
1210 goto 1230
1220 if rnd(1) > .5 then 1250
1230 print "your father checked up on you."
1240 goto 1270
1250 print "you father didn't check up on you."
1260 goto 1270
1270 on q3 goto 1360,1280
1280 print "your score is now ";x;" points."
1290 goto 1410
1300 if i2=3then 1330
1310 if i2=4 then 1330
1320 goto 1350
1330 x=x+1
1340 goto 1280
1350 on i3 goto 1280,1280,1330,1330,1280,1280
1360 if i1=1 then 1390
1370 on i2 goto 1390,1380,1280,1280,1380,1380
1380 on i3 goto 1390,1390,1280,1280,1390,1390
1390 x=x-1
1400 goto 1280
1410 on x+8 goto 1420,1420,1420,1420,1450,1450,1450,1450,1470,1500,1500,1500
1420 print "you didn't really succeed in changing your"
1430 print m$(a);"'s ideas at all."
1440 goto 1510
1450 print "you didn't succeed in convincing your ";m$(a);"."
1460 goto 1510
1470 print "you convinced you ";m$(a);" but it took you too"
1480 print "many tries."
1490 goto 1510
1500 print "well done!"
1510 print
1520 t1=t1+1
1530 print "would you like to try again";:input q5$
1540 if q5$="yes" then 500
1550 end
