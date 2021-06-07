10 print tab(13);"wumpus"
20 print "creative computing  morristown, nj"
22 print
24 print
26 print
30 print "instructions (y-n)";
40 input i$
50 if i$="n" then 60
55 gosub 1000
60 rem- set up cave (dodecahedral node list)
70 dim s(20,3)
80 for j=1 to 20
90 for k=1 to 3
100 read s(j,k)
110 next k
120 next j
130 data 2,5,8,1,3,10,2,4,12,3,5,14,1,4,6
140 data 5,7,15,6,8,17,1,7,9,8,10,18,2,9,11
150 data 10,12,19,3,11,13,12,14,20,4,13,15,6,14,16
160 data 15,17,20,7,16,18,9,17,19,11,18,20,13,16,19
170 def fna(x)=int(20*rnd(1))+1
180 def fnb(x)=int(3*rnd(1))+1
190 def fnc(x)=int(4*rnd(1))+1
200 rem- locate l array items
210 rem- 1-you,2-wumpus,3&4-pits,5&6-bats
220 dim l(6),m(6)
230 for j=1 to 6
240 l(j)=fna(0)
260 m(j)=l(j)
270 next j
280 rem- check for crossovers (ie l(1)=l(2), etc)
290 for j=1 to 6
300 for k=1 to 6
310 if j=k then 330
320 if l(j)=l(k) then 240
330 next k
340 next j
350 rem- set# arros
360 a=5
365 l=l(1)
370 rem- run the game
375 print "hunt the wumpus"
380 rem- hazard warning & locations
390 gosub 2000
400 rem- move or shoot
410 gosub 2500
420 on o goto 440,480
430 rem- shoot
440 gosub 3000
450 if f=0 then 390
460 goto 500
470 rem- move
480 gosub 4000
490 if f=0 then 390
500 if f>0 then 550
510 rem- lose
520 print "ha ha ha - you lose!"
530 goto 560
540 rem- win
550 print "hee hee hee - the wumpus'll getcha next time!!"
560 for j=1 to 6
570 l(j)=m(j)
580 next j
590 print "same setup (y-n)";
600 input i$
610 if i$ <> "y" then 230
620 goto 360
1000 rem- instructions
1010 print "welcome to 'hunt the wumpus'"
1015 print
1020 print "the wumpus lives in a cave of 20 rooms."
1025 print "each room has 3 tunnels leading to"
1030 print "other rooms. (look at a dodecahedron to"
1040 print "see how this works-if you don't know"
1050 print "what a dodecahedron is, ask someone)"
1060 print
1070 print "hazards:"
1080 print " bottomless pits - two rooms have"
1085 print "     bottomless pits in them if you go"
1090 print "     there, you fall into the pit"
1095 print "     (& lose!)"
1100 print " super bats - two other rooms have"
1105 print "     super bats. if you go there, a bat"
1110 print "     grabs you and takes you to some"
1115 print "     other room at random. (which may"
1120 print "     be troublesome)"
1130 input z
1140 print "wumpus:"
1150 print " the wumpus is not bothered by hazards"
1155 print " (he has sucker feet and is too big for"
1160 print " a bat to lift). usually he is asleep."
1165 print " two things wake him up: you shooting"
1180 print " an arrow or you entering his room."
1185 print
1190 print " if the wumpus wakes he moves (p=.75)"
1200 print " one room or stays still (p=.25)."
1210 print " after that, if he is where you are, he"
1215 print " eats you up and you lose!"
1220 print
1230 print "you:"
1240 print " each turn you may move or shoot a"
1245 print " crooked arrow"
1247 print
1250 print "moving:"
1255 print " you can move one room (thru 1 tunnel)"
1257 input z
1260 print "arrows:"
1263 print " you have 5 arrows.  you lose when you"
1270 print " run out each arrow can go from 1 to 5"
1280 print " rooms. you aim by telling the"
1285 print " computer the room#s you want the arrow"
1290 print " to go to. if the arrow can't go that"
1300 print " way (if no tunnel) it moves at random"
1305 print " to the next room."
1310 print " if the arrow hits the wumpus, you win."
1320 print " if the arrow hits you, you lose."
1330 print
1340 print "warnings:"
1350 print " when you are one room away from a"
1360 print " wumpus or hazard, the computer says:"
1370 print "  wumpus: 'i smell a wumpus'"
1380 print "  bat   : 'bats nearby'"
1390 print "  pit   : 'i feel a draft'"
1400 print
1410 return
2000 rem- print location & hazard warning
2010 print
2020 for j=2 to 6
2030 for k=1 to 3
2040 if s(l(1),k) <> l(j) then 2110
2050 on j-1 goto 2060,2080,2080,2100,2100
2060 print "i smell a wumpus!"
2070 goto 2110
2080 print "i feel a draft"
2090 goto 2110
2100 print "bats nearby!"
2110 next k
2120 next j
2130 print "you are in room ";l(1)
2140 print "tunnels lead to ";s(l,1);" ";s(l,2);" ";s(l,3)
2150 print
2160 return
2500 rem- choose option ***
2510 print "shoot or move (s-m)";
2520 input i$
2530 if i$ <> "s" then 2560
2540 o=1
2550 return
2560 if i$ <> "m" then 2510
2570 o=2
2580 return
3000 rem- arrow routine
3010 f=0
3020 rem- path of arrow
3030 l=l(1)
3040 print "no. of rooms (1-5)";
3050 input j9
3060 if j9 < 1 or j9 > 5 then 3040
3070 for k=1 to j9
3080 print "room #";
3090 input p(k)
3095 if k <= 2 then 3115
3100 if p(k) <> p(k-2) then 3115
3105 print "arrows aren't that crooked - try another room"
3110 goto 3080
3115 next k
3120 rem- shoot arrow
3140 for k=1 to j9
3150 for k1=1 to 3
3160 if s(l,k1)=p(k) then 3295
3170 next k1
3180 rem- no tunnel for arrow
3190 l=s(l,fnb(1))
3200 goto 3300
3210 next k
3220 print "missed"
3225 l=l(1)
3230 rem- move wumpus
3240 gosub 3370
3250 rem- ammo check
3255 a=a-1
3260 if a > 0 then 3280
3270 f=-1
3280 return
3290 rem- see if arrow is at l(1) or at l(2)
3295 l=p(k)
3300 if l <> l(2) then 3340
3310 print "aha! you got the wumpus!"
3320 f=1
3330 return
3340 if l <> l(1) then 3210
3350 print "ouch! arrow got you!"
3360 goto 3270
3370 rem- move wumpus routine
3380 k=fnc(0)
3390 if k=4 then 3410
3400 l(2)=s(l(2),k)
3410 if l(2) <> l then 3440
3420 print "tsk tsk tsk - wumpus got you!"
3430 f=-1
3440 return
4000 rem- move routine
4010 f=0
4020 print "where to";
4030 input l
4040 if l < 1 or l > 20 then 4020
4050 for k=1 to 3
4060 rem- check if legal move
4070 if s(l(1),k)=l then 4130
4080 next k
4090 if l=l(1) then 4130
4100 print "not possible -";
4110 goto 4020
4120 rem- check for hazards
4130 l(1)=l
4140 rem- wumpus ***
4150 if l <> l(2) then 4220
4160 print "... oops! bumped a wumpus!"
4170 rem- move wumpus
4180 gosub 940
4190 if f=0 then 4220
4200 return
4210 rem- pit ***
4220 if l <> l(3) and l <> l(4) then 4270
4230 print "yyyyiiiieeee . . . fell in pit"
4240 f=-1
4250 return
4260 rem- bats
4270 if l <> l(5) and l <> l(6) then 4310
4280 print "zap--super bat snatch! elsewhereville for you!"
4290 l=fna(1)
4300 goto 4130
4310 return
5000 end
