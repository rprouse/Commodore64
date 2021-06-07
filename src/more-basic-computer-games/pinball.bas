1 print tab(25);"pinball"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
8 dim r$(10),p$(20),l(2)
9 gosub 9500
10 a1=0:a0=0:x9=0
20 print "welcome to computer pinball!!"
30 print "would you like instructions to this "
35 print "fantastic game";
40 input q$:if left$(q$,1)="y" then gosub 1010:goto 50
45 print:print "how about a picture of the table";
46 input q$:if left$(q$,1)="y" then gosub 6010
50 print:print:b=5
55 s=0:p=0
60 t$="abcdefghij":print
61 for z=1 to 10:r$(z)=" ":next z:z3=0
70 a1=0
71 a7=0
80 if b<=0 then 290
100 l(1)=2+int(rnd(1)*6):l(2)=int(rnd(1)*14)+1
110 c=1+int(rnd(1)*7):a1=0
120 print "the ball is now at (";l(1);",";l(2);")."
130 if mid$(p$(l(1)),l(2),1)=" "then 150
140 gosub 2010
150 if a7=7 then 280
160 if a1<>4 then 180
170 goto 260
180 l(1)=l(1)+1
190 a1=0
200 l(2)=l(2)+int(1+rnd(1)*3)-2
210 if l(2)<2 or l(2)>15 then l(1)=l(1)+int(1+rnd(1)*3)-2
215 if l(2)<2 or l(2)>15 then l(2)=int(2+rnd(1)*13)
230 if l(1)>=2 and l(1)<=20 then goto 130
240 l(1)=int(1+rnd(1)*7)
250 goto 130
260 gosub 4010
270 if a0=1 then 400
280 on x9+1 goto 60,340
285 print"you have played your seventh ball and scored ";p;" points!"
286 print"you're very good!":goto 9999
290 print "you have played your five balls, and have scored"
293 print "a total of ";p;" points."
300 if p<1600 then 9999
305 print:print "*** bonus ball ***"
310 b=b+1
320 x9=1
330 goto 60
340 print "you have played your sixth ball and scored ";p;" points!"
341 x9=2
350 if p<2200 then 9999
355 print:print "*** bonus ball ***"
360 b=b+1:s=3
370 goto 60
380 goto 2010
390 goto 150
400 l(1)=2+int(rnd(1)*7)
405 l(2)=2+int(rnd(1)*13):x=0:y=0
410 goto 110
1010 print:print
1030 print "the rules of computer pinball are fairly simple.  you get a total of"
1040 print "five balls.  if you score more than 1600, you get a sixth ball.  if"
1045 print "your six ball score is more than 2200, you get a seventh ball."
1060 print:print "this table has three flippers, each of of which protect an out chute."
1070 print "however, this set differs from other sets, since you may only flip"
1080 print "two of the flippers any time the ball approaches the chute."
1090 print "nota bene:  you do not!!! know for sure where the ball is!!"
1093 print "so, if you flip the wrong two flippers, you lose the ball, and the"
1095 print "next ball is put into play."
1097 print "     you can get a picture of the table every time the ball hits"
1098 print "an object, so that may help you somewhat. also, you are told where"
1099 print "the ball is each time it hits(even if you don't get a picture)."
1100 print "there is some logic to the choice of flippers, but some luck is involved, too."
1110 print "the flippers are numbered 1,2, and 3 from left to right, and are shown"
1120 print "on the picture below as '!' marks."
1123 print "since luck plays only a small part in choosing the correct flipper,"
1125 print "you will do poorly if you just guess which flipper the ball is"
1127 print "headed toward...":print:print:print"the table looks like this:"
1130 print "****************":print:print:for z=1to20:printp$(z):next z
1140 print:print:print"****************"
1230 print "the center bumper($) is the jackpot!"
1240 print "the ball is put into play through the up arrow(^), and goes up and "
1250 print "around, where it is deposited on the upper half of the table.  the ball"
1260 print "may bounce from the side of the table, and may bounce up from the"
1263 print "lines on the side(=) and from the diagonals(\ and /) at the bottom"
1270 print "of the table.  the bumpers are indicated by stars(*)."
1280 print "     flippers are shown as exclamation points(! or !!)."
1285 print "the ball may go out of play through one of the four holes in the board(0),"
1290 print "in which case you will get a bonus but lose the ball."
1300 print "     gates are shown by the numbers 1-9, and knock-down tabs are shown"
1310 print "as the letters a-j.  you get a bonus for these at the end of"
1320 print "a ball, and if you knock all of them down you get a special bonus..."
1330 print:print"***every once in a while, i will show you a picture of the"
1340 print "table as it hits something.  the ball is shown as the #."
1350 print:print:return
2010 if mid$(p$(l(1)),l(2),1)="0" then 2070
2020 if int(rnd(1)+.5)<>1 then 2022
2021 if mid$(p$(l(1)),l(2),1)="/"ormid$(p$(l(1)),l(2),1)="\" then 2160
2022 s8=int(rnd(1)*6+1)
2023 for s7=1 to s8:print chr$(7);:next s7
2025 if mid$(p$(l(1)),l(2),1)<="j"and mid$(p$(l(1)),l(2),1)>="a" then 2190
2040 gosub 3010
2050 return
2070 print "too bad... you have gone straight out a chute hole('0' on the table)."
2075 print "to console you, i will give you an extra"
2090 q=int(rnd(1)*141)
2100 p=p+q
2110 print q;" points, to bring your total to ";p;"."
2115 print "you now have have ";b-1;" balls left."
2120 b=b-1
2130 a7=7
2140 gosub 5010
2150 return
2160 l(1)=l(1)+(1+int(rnd(1)*4))-(1+int(rnd(1)*4))
2170 l(2)=2+int(rnd(1)*14)
2180 return
2190 print
2200 for q=1 to 10
2203 if r$(q)=mid$(p$(l(1)),l(2),1) then 2275
2204 next q
2205 z3=z3+1:r$(z3)=mid$(p$(l(1)),l(2),1)
2210 print:print "tab ";r$(z3);" down..."
2255 if z3=10 then gosub 5010
2260 return
2275 return
3010 if mid$(p$(l(1)),l(2),1)=chr$(8) then return
3015 if mid$(p$(l(1)),l(2),1)="]" then return
3017 if mid$(p$(l(1)),l(2),1)="[" then return
3018 if mid$(p$(l(1)),l(2),1)="^" then 3110
3019 a1=0
3020 if mid$(p$(l(1)),l(2),1)="=" then 3410
3030 c=c-1
3040 if c=0 then 3110
3050 if mid$(p$(l(1)),l(2),1)="!"ormid$(p$(l(1)),l(2),1)="\"then 3110
3060 if mid$(p$(l(1)),l(2),1)="/"ormid$(p$(l(1)),l(2),1)="-"then 3110
3070 if int(1+rnd(1)*25)=4 then gosub 6010
3080 if mid$(p$(l(1)),l(2),1)="$" then 3230
3090 if mid$(p$(l(1)),l(2),1)="*" then 3280
3100 goto 3320
3110 a1=4
3120 goto 3390
3130 if l(2)<6 then goto 3180
3140 if l(2)<11 then 3200
3150 d=2:if int(1+rnd(1)*2)=1 then d=d+(1+int(rnd(1)*3))-2:if d>3 then d=d-3
3170 return
3180 d=1:if int(1+rnd(1)*2)=1 then d=int(rnd(1)*3)+d
3190 return
3200 d=2:if int(1+rnd(1)*2)=1 then d=d+int(rnd(1)*3):ifd>3then d=d-3
3210 return
3230 q=45+int(rnd(1)*146)
3240 print "you have hit the jackpot!!!! you have just won ";q;" points!!"
3250 p=p+q
3260 print "you now have ";p;" points!"
3270 goto 3360
3280 q=int(rnd(1)*64)+1:p=p+q
3290 print "you receive ";q;" points from the bumper at ";l(1);",";l(2);"."
3300 print "score: ";p
3310 goto 3360
3320 q=15*(1+int(rnd(1)*6)):p=p+q
3330 print "you get ";q;" points from gate ";mid$(p$(l(1)),l(2),1)
3340 print "score: ";p
3360 l(1)=(l(1)-int(1+rnd(1)*3))-int(1+rnd(1)*2)
3370 l(2)=l(2)-3+int(rnd(1)*5)+1
3380 return
3390 gosub 7850
3400 goto 3130
3410 l(1)=l(1)-(1+int(rnd(1)*5))
3420 l(2)=l(2)-2+(1+int(rnd(1)*4))
3430 return
4010 print "ball approaching flippers.  enter the two flippers you wish to flip"
4020 input "in the form: x,y ";v,w
4030 if v=d or w=d then 4110
4040 print "no, you have chosen to protect the wrong flippers.  you now have"
4060 print b-1;" balls left."
4070 b=b-1
4080 a0=0
4090 gosub 5010
4100 return
4110 a0=1
4120 c=int(1+rnd(1)*5)
4140 return
5010 if z3=10 then 5090
5020 if z3=0 then return
5030 print "your ball knocked down ";z3;" tags!!"
5040 print "for this stellar performance, you are awarded "
5050 print "*****";10*z3;"*****";:print"  points!!"
5060 p=p+10*z3
5080 goto 5120
5090 p=p+250
5100 print "*****you knocked down all 10 tags!!!*****"
5110 print "you are awarded 250 points and an extra ball!!!"
5114 b=b+1
5120 print "score: ";p:return
6010 print
6020 print:print" p i c t u r e ":print"****************"
6040 for q=1 to l(1)-1:print p$(q):next q
6044 print mid$(p$(l(1)),1,l(2)-1);"#";mid$(p$(l(1)),l(2)+1,16-l(2))
6050 for q=l(1)+1 to 20:print p$(q):next q
6060 print:print"the ball was at the '#'":print:print"***************"
6100 return
7850 l(2)=abs(l(2)-2+int(1+rnd(1)*4))
7860 if l(2)<=15 then return
7870 l(2)=1+int(rnd(1)*15):return
9500 p$(1)="  "
9501 for q=1 to 12:p$(1)=p$(1)+"["+chr$(8)+"]":next q
9502 p$(1)=p$(1)+"  "
9510 p$(2)=" o            o "
9520 p$(3)="o   *  *  *    o"
9530 p$(4)="o  a  b  c  d  o"
9540 p$(5)="o    *   *     o"
9550 p$(6)="o * *  $  *  * o"
9560 p$(7)="o    *   *     o"
9570 p$(8)="o* e  f  g  h *o"
9580 p$(9)="o   *  *  *    o"
9590 p$(10)="o===        ===o"
9600 p$(11)="o  1 2 3 4 5   o"
9610 p$(12)="o * 6 7 8 9  * o"
9620 p$(13)="o===   0    ===o"
9630 p$(14)="o  0   0    0  o"
9640 p$(15)="!!!          !!!"
9650 p$(16)="o  \        /  o"
9660 p$(17)="o   \  i j /   o"
9670 p$(18)="o    \    /    o"
9680 p$(19)="o     \  /     o"
9690 p$(20)="\------!!----^-/"
9700 return
9999 print "come play again sometime!!":end
