5 print tab(31);"basketball"
7 print tab(15);"creative computing  morristown, new jersey"
8 print:print:print
10 print "this is dartmouth college basketball.  you will be dartmouth"
20 print " captain and playmaker.  call shots as follows:  1. long"
30 print " (30 ft.) jump shot; 2. short (15 ft.) jump shot; 3. lay"
40 print " up; 4. set shot."
60 print "both teams will use the same defense.  call defense as"
70 print "follows:  6. press; 6.5 man-to man; 7. zone; 7.5 none."
72 print "to change defense, just type 0 as your next shot."
76 input "your starting defense will be";d:if d<6 then 2010
79 print
80 input "choose your opponent";o$
370 print "center jump"
390 if rnd(1)> 3/5 then 420
400 print o$;" controls the tap."
410 goto 3000
420 print "dartmouth controls the tap."
425 print
430 input "your shot";z
440 p=0
445 if z<>int(z) then 455
446 if z<0 or z>4 then 455
447 goto 460
455 print "incorrect answer.  retype it. ";:goto 430
460 if rnd(1)<.5 then 1000
480 if t<100 then 1000
490 print
491 if s(1)<>s(0) then 510
492 print:print "   ***** end of second half *****":print
493 print "score at end of regulation time:"
494 print "        dartmouth:";s(1);"  ";o$;":";s(0)
495 print
496 print "begin two minute overtime period"
499 t=93
500 goto 370
510 print "   ***** end of game *****"
515 print "final score: dartmouth:";s(1);"  ";o$;":";s(0)
520 stop
600 print
610 print "   *** two minutes left in the game ***"
620 print
630 return
1000 on z goto 1040,1040
1030 goto 1300
1040 t=t+1
1041 if t=50 then 8000
1042 if t=92 then 1046
1043 goto 1050
1046 gosub 600
1050 print "jump shot"
1060 if rnd(1)>.341*d/8 then 1090
1070 print "shot is good."
1075 gosub 7000
1085 goto 3000
1090 if rnd(1)>.682*d/8 then 1200
1100 print "shot is off target."
1105 if d/6*rnd(1)>.45 then 1130
1110 print "dartmouth controls the rebound."
1120 goto 1145
1130 print "rebound to ";o$
1140 goto 3000
1145 if rnd(1)>.4 then 1158
1150 goto 1300
1158 if d=6 then 5100
1160 print "ball passed back to you. ";
1170 goto 430
1180 if rnd(1)>.9 then 1190
1185 print "player fouled, two shots."
1187 gosub 4000
1188 goto 3000
1190 print "ball stolen. ";o$;"'s ball."
1195 goto 3000
1200 if rnd(1)>.782*d/8 then 1250
1210 print "shot is blocked.  ball controlled by ";
1230 if rnd(1)>.5 then 1242
1235 print "dartmouth."
1240 goto 430
1242 print o$;"."
1245 goto 3000
1250 if rnd(1)>.843*d/8 then 1270
1255 print "shooter is fouled.  two shots."
1260 gosub 4000
1265 goto 3000
1270 print "charging foul.  dartmouth loses ball."
1280 goto 3000
1300 t=t+1
1301 if t=50 then 8000
1302 if t=92 then 1304
1303 goto 1305
1304 gosub 600
1305 if z=0 then 2010
1310 if z>3 then 1700
1320 print "lay up."
1330 if 7/d*rnd(1)>.4 then 1360
1340 print "shot is good.  two points."
1345 gosub 7000
1355 goto 3000
1360 if 7/d*rnd(1)>.7 then 1500
1370 print "shot is off the rim."
1380 if rnd(1)>2/3 then 1415
1390 print o$;" controls the rebound."
1400 goto 3000
1415 print "dartmouth controls the rebound."
1420 if rnd(1)>.4 then 1440
1430 goto 1300
1440 print "ball passed back to you.";
1450 goto 430
1500 if 7/d*rnd(1)>.875 then 1600
1510 print "shooter fouled.  two shots."
1520 gosub 4000
1530 goto 3000
1600 if 7/d*rnd(1)>.925 then 1630
1610 print "shot blocked. ";o$;"'s ball."
1620 goto 3000
1630 print "charging foul.  dartmouth loses the ball."
1640 goto 3000
1700 print "set shot."
1710 goto 1330
2010 input "your new defensive allignment is";d
2030 if d<6 then 2010
2040 goto 425
3000 p=1
3005 t=t+1
3008 if t=50 then 8000
3012 goto 3018
3015 gosub 600
3018 print
3020 z1=10/4*rnd(1)+1
3030 if z1>2 then 3500
3040 print "jump shot."
3050 if 8/d*rnd(1)>.35 then 3100
3060 print "shot is good."
3080 gosub 6000
3090 goto 425
3100 if 8/d*rnd(1)>.75 then 3200
3105 print "shot is off rim."
3110 if d/6*rnd(1)>.5 then 3150
3120 print "dartmouth controls the rebound."
3130 goto 425
3150 print o$;" controls the rebound."
3160 if d=6 then 5000
3165 if rnd(1)>.5 then 3175
3168 print "pass back to ";o$;" guard."
3170 goto 3000
3175 goto 3500
3200 if 8/d*rnd(1)>.9 then 3310
3210 print "player fouled.  two shots."
3220 gosub 4000
3230 goto 425
3310 print "offensive foul.  dartmouth's ball."
3320 goto 425
3500 if z1>3 then 3800
3510 print "lay up."
3520 if 7/d*rnd(1)>.413 then 3600
3530 print "shot is good."
3540 gosub 6000
3550 goto 425
3600 print "shot is missed."
3610 goto 3110
3800 print "set shot."
3810 goto 3520
4000 rem foul shooting
4010 if rnd(1)>.49 then 4050
4020 print "shooter makes both shots."
4030 s(1-p)=s(1-p)+2
4040 gosub 6010
4041 return
4050 if rnd(1)>.75 then 4100
4060 print "shooter makes one shot and misses one."
4070 s(1-p)=s(1-p)+1
4080 goto 4040
4100 print "both shots missed."
4110 goto 4040
5000 if rnd(1)>.75 then 5010
5005 goto 3165
5010 print "ball stolen.  easy lay up for dartmouth."
5015 gosub 7000
5030 goto 3000
5100 if rnd(1)>.6 then 5120
5110 goto 1160
5120 print "pass stolen by ";o$;" easy layup."
5130 gosub 6000
5140 goto 425
6000 s(0)=s(0)+2
6010 print "score: ";s(1);"to";s(0)
6020 return
7000 s(1)=s(1)+2
7010 gosub 6010
7020 return
8000 print:print "   ***** end of first half *****":print
8010 print "score: dartmouth:";s(1);"  ";o$;":";s(0)
8015 print
8016 print
8020 goto 370
9999 end
