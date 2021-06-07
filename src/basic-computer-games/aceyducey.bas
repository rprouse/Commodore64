10 print tab(26);"acey ducey card game"
20 print tab(15);"creative computing  morristown, new jersey"
21 print
22 print
30 print"acey-ducey is played in the following manner "
40 print"the dealer (computer) deals two cards face up"
50 print"you have an option to bet or not bet depending"
60 print"on whether or not you feel the card will have"
70 print"a value between the first two."
80 print"if you do not want to bet, input a 0"
100 n=100
110 q=100
120 print "you now have";q;"dollars."
130 print
140 goto 260
210 q=q+m
220 goto 120
240 q=q-m
250 goto 120
260 print"here are your next two cards: "
270 a=int(14*rnd(1))+2
280 if a<2 then 270
290 if a>14 then 270
300 b=int(14*rnd(1))+2
310 if b<2 then 300
320 if b>14 then 300
330 if a>=b then 270
350 if a<11 then 400
360 if a=11 then 420
370 if a=12 then 440
380 if a=13 then 460
390 if a=14 then 480
400 print a
410 goto 500
420 print"jack"
430 goto 500
440 print"queen"
450 goto 500
460 print"king"
470 goto 500
480 print"ace"
500 if b<11 then 550
510 if b=11 then 570
520 if b=12 then 590
530 if b=13 then 610
540 if b=14 then 630
550 print b
560 goto 650
570 print"jack"
580 goto 650
590 print"queen"
600 goto 650
610 print"king"
620 goto 650
630 print"ace"
640 print
650 print
660 input"what is your bet";m
670 if m<>0 then 680
675 print"chicken!!"
676 print
677 goto 260
680 if m<=q then 730
690 print"sorry, my friend, but you bet too much."
700 print"you have only ";q;" dollars to bet."
710 goto 650
730 c=int(14*rnd(1))+2
740 if c<2 then 730
750 if c>14 then 730
760 if c<11 then 810
770 if c=11 then 830
780 if c=12 then 850
790 if c=13 then 870
800 if c=14 then 890
810 print c
820 goto 910
830 print"jack"
840 goto 910
850 print"queen"
860 goto 910
870 print"king"
880 goto 910
890 print "ace"
900 print
910 if c>a then 930
920 goto 970
930 if c>=b then 970
950 print"you win!!!"
960 goto 210
970 print"sorry, you lose"
980 if m<q then 240
990 print
1000 print
1010 print"sorry, friend, but you blew your wad."
1015 print:print
1020 input"try again (yes or no)";a$
1025 print:print
1030 if a$="yes" then 110
1040 print"o.k., hope you had fun!"
1050 end
