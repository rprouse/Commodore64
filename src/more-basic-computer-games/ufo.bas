10 print tab(26);"ufo"
20 print tab(19);"creative computing"
30 print tab(18);"morristown new jersey"
40 print:print:print
60 dim p(1)
80 rem ufo
90 print "do you want instructions";
100 input a$
102 if left$(a$,1)="n" then 480
104 if left$(a$,1)="y" then 110
106 goto 90
110 print "you are about to receive high security information"
120 print "please eat the computer read out after reading"
130 print:print:print
140 print "this is the year 2000...civilization as you know it has"
150 print "been destroyed...nations have been reduced to rubble"
160 print "in a massive space war"
170 print "you are onboard a space ship whose sole purpose"
180 print "is to safe guard the 150 people on your ship...the"
190 print "sole survivors...your mission: find a planet suitable"
200 print "for your colonists.....problem: the enemy of earth still"
210 print "exists. strange creatures never seen by man":print
220 print "by the time you read this earth will no longer exist......."
230 print "here is your vital datum:"
240 print tab(10);"you are equipt with 10000 units of energy"
250 print tab(10);"when you run out the aliens will destroy you"
260 print:print:print:print tab(25);"weaponry"
270 print "type";tab(5);"description";tab(17);"capacity";tab(26);
275 print "fuel drain"
280 print "  1";tab(5);"heavy guns";tab(17);"0-11000";tab(27);
285 print "10 units"
290 print "  2";tab(5);"warheads";tab(14);"10000-100000";tab(27);
295 print "100 units"
300 print "  3";tab(5);"laser";tab(13);"10000-20000";tab(27);
305 print "1000 units"
310 print:print:print tab(25);"options"
320 print "  4";tab(5);"approach";tab(17);"---------";tab(26);
325 print "100 units"
327 print "  5";tab(5);"retreat";tab(17);"---------";tab(26);
328 print "100 units"
330 print "  6";tab(5);"by typing 6 you can pass and gain 100 units"
350 print tab(5);"(laborers work to produce power)"
360 print:print:print tab(25);"enemy"
370 print:print "the enemy has the same capabilities that you have"
380 print "each time a ship is hit its energy drain is equal to"
390 print "the amount of energy spent*10 (except laser which equals"
400 print tab(30);"the amount spent*3 units)"
410 print "both ships are on the same mission, destination and both"
420 print "are on equal terms"
430 print "unfortunatly you must kill each other to win"
440 print "your maximum speed is a jump of 50000 units, however"
450 print "speeds vary between 10000-50000"
460 print "warheads travel at 35000 feet per sec...shells 1000";
465 print " per second"
470 print "this message was recorded earth is dead...good luck"
480 print:print:print:print "this is computer control what is your name";
490 input a$:print "very good ";a$
500 p=10000:p(1)=10000:a=rnd(1)*200000
510 print "leaving planetary orbit ";a$;b$;c$;" ship approaching at";
512 print
515 print a;"miles"
520 print "what are your orders ";a$;b$;c$;:input c
530 o=int(rnd(1)*2)+1
540 on c goto 570,650,710,750,780,820
560 print "lets not crack under pressure":goto 520
570 if a>11005 then 560
580 p=p-10
590 print "guns fired":
595 for x=1 to a*2 step 1000
600 next x
610 if o=1 then 630
620 print "missed to bad":goto 830
630 print "direct hit.......enemy ship's power doun"
640 p(1)=p(1)-100:goto 830
650 if a > 100000 then 560
655 if a < 10000 then 560
660 p=p-100:print "warhead launched":for x=1 to a*2 step 35000
670 next x
680 if o=1 then 690:print "missed too bad":goto 830
690 print "direct hit.....enemy ship's power down"
700 p(1)=p(1)-1000
705 goto 830
710 if a < 100000 then 560
714 p=p-1000
716 print "laser fired"
720 if o=1 then 730
725 print "missed too bad":goto 830
730 print "direct hit.....enemy ship's power down"
740 p(1)=p(1)-3000:goto 830
750 b=rnd(1)*40000+10000:a=a-b:p=p-100:if a<1 then 770
760 goto 830
770 print "***collision***":print "both ships destroyed":goto 1080
780 b=rnd(1)*40000+10000:a=a+b:p=p-100:if a > 200050 then 800
790 goto 830
800 print a$;" your range is ";a;"but we cannot run, range is now ";
805 print "200000"
810 a=200000:goto 830
820 p=p+100
830 print "enemy ship report":print "range=";a;"  power=";p(1)
840 if p(1) < 1 then 1110
850 if p(1) < 500 then 1040
860 if a < 5000 then 1070
870 r=int(rnd(1)*3)+1:o=int(rnd(1)*2+1)
880 on r goto 970,920
885 if r=2 then rem
890 if a < 100000 then 870
892 p(1)=p(1)-1000
894 print "enemy fires laser"
900 if o=1 then 910: print "missed...whew!!":goto 1010
910 print "direct hit..... power down": p=p-3000:goto 1010
920 if a > 100000 then 870: if a < 10000 then 870
930 p(1)=p(1)-100: print "enemy warhead fired"
940 for d=1 to a step 35000: next d
950 if o=1 then 960: print "missed... whew!":goto 1010
960 p=p-1000: print "direct hit!...power down":goto 1010
970 if a > 11000 then 870:p(1)=p(1)-10:print "enemy fires shell"
980 for d=1 to a step 1000: next d
990 if o=1 then 1000:print "missed...whew!":goto 1010
1000 print "direct hit .....power down":p=p-100
1010 print:print:print tab(10) ;"status of ship"
1020 print "range=";a;"power supply=";p: if p<1 then 1130
1030 goto 520
1040 p(1)=p(1)+100: print "enemy ship resting":goto 1010
1050 b=int(rnd(1)*40000+10000):a=a-b:print "enemy ship approaching  ";a$;b$;
1055 print c$
1060 goto 1010
1070 b=rnd(1)*40000+10000:a=a+b:print "enemy ship retreating":goto 1010
1080 print "that was a pretty dumb thing to do ";a$;b$;c$
1090 print "your mission is to protect your passengers not destroy"
1100 goto 1140
1110 print "enemy ships power gone no life present"
1120 print "mission successful":goto 1210
1130 print "enemy is victor life support fading crew dying"
1140 rem
1150 print
1160 print
1170 print
1180 print "play again";
1190 input a$
1200 if left$(a$,1)="y" then 80
1210 end
