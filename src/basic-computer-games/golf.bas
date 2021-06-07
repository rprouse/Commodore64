1 print tab(34);"golf"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 print "welcome to the creative computing country club,"
5 print "an eighteen hole championship layout located a short"
6 print "distance from scenic downtown morristown.  the"
7 print "commentator will explain the game as you play."
8 print "enjoy your game; see you at the 19th hole..."
9 print:print: dim l(10)
10 g1=18
20 g2=0
30 g3=0
40 a=0
50 n=.8
60 s2=0
70 f=1
80 print "what is your handicap";
90 input h:print
100 if h>30 then 470
110 if h<0 then 470
120 print "difficulties at golf include:"
130 print "0=hook, 1=slice, 2=poor distance, 4=trap shots, 5=putting"
140 print "which one (only one) is your worst";
150 input t:print
160 if t>5 then 120
170 s1=0
210 rem
230 l(0)=0
240 j=0
245 q=0
250 s2=s2+1
260 k=0
270 if f=1 then 310
290 print "your score on hole";f-1;"was";s1
291 goto 1750
292 if s1>p+2 then 297
293 if s1=p then 299
294 if s1=p-1 then 301
295 if s1=p-2 then 303
296 goto 310
297 print "keep your head down."
298 goto 310
299 print "a par.  nice going."
300 goto 310
301 print "a birdie."
302 goto 310
303 if p=3 then 306
304 print "a great big eagle."
305 goto 310
306 print "a hole in one."
310 if f=19 then 1710
315 s1=0
316 print
320 if s1=0 then 1590
330 if l(0)<1 then 1150
340 x=0
350 if l(0)>5 then 1190
360 print "shot went";d1;"yards.  it's";d2;"yards from the cup."
362 print "ball is";int(o);"yards off line... in ";
380 gosub 400
390 goto 620
400 if l(x)=1 then 480
410 if l(x)=2 then 500
420 if l(x)=3 then 520
430 if l(x)=4 then 540
440 if l(x)=5 then 560
450 if l(x)=6 then 580
460 print "out of bounds."
465 goto 1690
470 print "pga handicaps range from 0 to 30."
472 goto 80
480 print "fairway."
490 goto 1690
500 print "rough."
510 goto 1690
520 print "trees."
530 goto 1690
540 print "adjacent fairway."
550 goto 1690
560 print "trap."
570 goto 1690
580 print "water."
590 goto 1690
620 if a=1 then 629
621 print "selection of clubs"
622 print "yardage desired                       suggested clubs"
623 print "200 to 280 yards                           1 to 4"
624 print "100 to 200 yards                          19 to 13"
625 print "  0 to 100 yards                          29 to 23"
626 a=1
629 print "what club do you choose";
630 input c
632 print
635 if c<1 then 690
637 if c>29 then 690
640 if c>4 then 710
650 if l(0)<=5 then 740
660 if c=14 then 740
665 if c=23 then 740
670 goto 690
680 s1=s1-1
690 print "that club is not in the bag."
693 print
700 goto 620
710 if c<12 then 690
720 c=c-6
730 goto 650
740 s1=s1+1
741 w=1
742 if c>13 then 960
746 if int(f/3)=f/3 then 952
752 if c<4 then 756
754 goto 760
756 if l(0)=2 then 862
760 if s1>7 then 867
770 d1=int(((30-h)*2.5+187-((30-h)*.25+15)*c/2)+25*rnd(1))
780 d1=int(d1*w)
800 if t=2 then 1170
830 o=(rnd(1)/.8)*(2*h+16)*abs(tan(d1*.0035))
840 d2=int(sqr(o^2+abs(d-d1)^2))
850 if d-d1<0 then 870
860 goto 890
862 print "you dubbed it."
864 d1=35
866 goto 830
867 if d<200 then 1300
868 goto 770
870 if d2<20 then 890
880 print "too much club. you're past the hole."
890 b=d
900 d=d2
910 if d2>27 then 1020
920 if d2>20 then 1100
930 if d2>.5 then 1120
940 l(0)=9
950 goto 1470
952 if s2+q+(10*(f-1)/18)<(f-1)*(72+((h+1)/.85))/18 then 956
954 goto 752
956 q=q+1
957 if s1/2<>int(s1/2) then 1011
958 goto 862
960 print "now gauge your distance by a percentage (1 to 100)"
961 print "of a full swing";
970 input w: w=w/100
972 print
980 if w>1 then 680
985 if l(0)=5 then 1280
990 if c=14 then 760
1000 c=c-10
1010 goto 760
1011 if d<95 then 862
1012 print "ball hit tree - bounced into rough";d-75;"yards from hole."
1014 d=d-75
1018 goto 620
1020 if o<30 then 1150
1022 if j>0 then 1150
1030 if t>0 then 1070
1035 s9=(s2+1)/15
1036 if int(s9)=s9 then 1075
1040 print "you hooked- ";
1050 l(0)=l(2)
1055 if o>45 then 1092
1060 goto 320
1070 s9=(s2+1)/15
1071 if int(s9)=s9 then 1040
1075 print "you sliced- ";
1080 l(0)=l(1)
1090 goto 1055
1092 print "badly."
1094 goto 320
1100 l(0)=5
1110 goto 320
1120 l(0)=8
1130 d2=int(d2*3)
1140 goto 1380
1150 l(0)=1
1160 goto 320
1170 d1=int(.85*d1)
1180 goto 830
1190 if l(0)>6 then 1260
1200 print "your shot went into the water."
1210 s1=s1+1
1220 print "penalty stroke assessed.  hit from previous location."
1230 j=j+1
1240 l(0)=1
1242 d=b
1250 goto 620
1260 print "your shot went out of bounds."
1270 goto 1210
1280 if t=3 then 1320
1300 d2=1+(3*int((80/(40-h))*rnd(1)))
1310 goto 1380
1320 if rnd(1)>n then 1360
1330 n=n*.2
1340 print "shot dubbed, still in trap."
1350 goto 620
1360 n=.8
1370 goto 1300
1380 print "on green,";d2;"feet from the pin."
1381 print "choose your putt potency (1 to 13):";
1400 input i
1410 s1=s1+1
1420 if s1+1-p>(h*.072)+2 then 1470
1425 if k>2 then 1470
1428 k=k+1
1430 if t=4 then 1530
1440 d2=d2-i*(4+2*rnd(1))+1.5
1450 if d2<-2 then 1560
1460 if d2>2 then 1500
1470 print "you holed it."
1472 print
1480 f=f+1
1490 goto 230
1500 print "putt short."
1505 d2=int(d2)
1510 goto 1380
1530 d2=d2-i*(4+1*rnd(1))+1
1550 goto 1450
1560 print "passed by cup."
1570 d2=-d2
1580 goto 1505
1590 read d,p,l(1),l(2)
1595 print
1600 print "you are at the tee off hole";f;"distance";d;"yards, par";p
1605 g3=g3+p
1620 print "on your right is ";
1630 x=1
1640 gosub 400
1650 print "on your left is ";
1660 x=2
1670 gosub 400
1680 goto 620
1690 return
1700 data 361,4,4,2,389,4,3,3,206,3,4,2,500,5,7,2
1702 data 408,4,2,4,359,4,6,4,424,4,4,2,388,4,4,4
1704 data 196,3,7,2,400,4,7,2,560,5,7,2,132,3,2,2
1706 data 357,4,4,4,294,4,2,4,475,5,2,3,375,4,4,2
1708 data 180,3,6,2,550,5,6,6
1710 print
1750 g2=g2+s1
1760 print "total par for";f-1;"holes is";g3;"  your total is";g2
1761 if g1=f-1 then 1770
1765 goto 292
1770 end
