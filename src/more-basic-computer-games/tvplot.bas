10 print tab(26);"tvplot"
20 print tab(20);"creative computing"
40 print tab(18);"morristown, new jersey"
50 print:print:print
55 print "this program automatically comes up with television"
60 print "shows guaranteed to appeal to the masses and win"
70 print "high neilsen ratings.":print
80 print "here is the first plot:"
100 print:gosub 800
110 on x goto 120,130,140,150,160,120,130,140,150,160
120 a$="program":goto 170
130 a$="report":goto 170
140 a$="special":goto 170
150 a$="series":goto 170
160 a$="story"
170 gosub 800
180 on x goto 190,200,210,220,230,240,250,260,270,280
190 b$="swinging":goto 290
200 b$="brilliant":goto 290
210 b$="salty":goto 290
220 b$="hilarious":goto 290
230 b$="sensitive":goto 290
240 b$="doddering":goto 290
250 b$="henpecked":goto 290
260 b$="dedicated":goto 290
270 b$="thoughtful":goto 290
280 b$="heavy"
290 gosub 800
300 on x goto 310,320,330,340,350,360,370,380,390,400
310 c$="girl cowhand":goto 410
320 c$="little boy":goto 410
330 c$="scientest":goto 410
340 c$="lawyer":goto 410
350 c$="town marshall":goto 410
360 c$="dentist":goto 410
370 c$="bus driver":goto 410
380 c$="jungle man":goto 410
390 c$="secret agent":goto 410
400 c$="collie"
410 gosub 800
420 on x goto 430,440,450,460,470,430,440,450,460,470
430 d$="a whiz":goto 480
440 d$="a flop":goto 480
450 d$="mediocre":goto 480
460 d$="a success":goto 480
470 d$="a disaster"
480 gosub 800
490 on x goto 500,510,520,530,540,550,560,570,580,590
500 e$="solving crimes":goto 600
510 e$="roping cows":goto 600
520 e$="cooking health food":goto 600
530 e$="pitching woo":goto 600
540 e$="protecting ecology":goto 600
550 e$="helping children":goto 600
560 e$="two-fisted drinking":goto 600
570 e$="fighting fires":goto 600
580 e$="herding elephants":goto 600
590 e$="winning races":goto 600
600 gosub 800
610 on x goto 620,630,640,650,660,670,680,690,700,710
620 f$="recovers the jewels":goto 720
630 f$="foils the spies":goto 720
640 f$="destroys the city":goto 720
650 f$="finds love":goto 720
660 f$="saves the animals":goto 720
670 f$="confesses":goto 720
680 f$="discovers the secret":goto 720
690 f$="stops the flood":goto 720
700 f$="helps the dog":goto 720
710 f$="makes the sacrifice"
720 print "the ";a$;" is about a ";b$;" ";c$;" who is ";d$;" at"
730 print e$;" and who ";f$".":print:print
740 input "another (yes or no)";a$
750 if a$="no" then 999
760 goto 100
800 x=int(10*rnd(1)+1):return
999 print:print "o.k.  hope you have a successful tv show!!":end
