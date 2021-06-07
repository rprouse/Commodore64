10 print tab(34);"bowl"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
270 dim c(15),a(100,6)
360 print "welcome to the alley"
450 print "bring your friends"
540 print "okay let's first get acquainted"
630 print ""
720 print "the instructions (y/n)"
810 input z$
900 if z$="y" then 990
960 if z$="n" then 1530
990 print "the game of bowling takes mind and skill.during the game"
1080 print "the computer will keep score.you may compete with"
1170 print "other players[up to four].you will be playing ten frames"
1260 print "on the pin diagram 'o' means the pin is down...'+' means the"
1350 print "pin is standing.after the game the computer will show your"
1440 print "scores ."
1530 print "first of all...how many are playing";
1620 input r
1710 print 
1800 print "very good..."
1890 for i=1 to 100: for j=1 to 6: a(i,j)=0: next j: next i
1980 f=1
2070 for p=1 to r
2160 m=0
2250 b=1
2340 m=0: q=0
2430 for i=1 to 15: c(i)=0: next i
2520 rem ark ball generator using mod '15' system
2610 print "type roll to get the ball going."
2700 input n$
2790 k=0: d=0
2880 for i=1 to 20
2970 x=int(rnd(1)*100)
3060 for j=1 to 10
3150 if x<15*j then 3330
3240 next j
3330 c(15*j-x)=1
3420 next i
3510 rem ark pin diagram
3600 print "player:"p;"frame:";f"ball:"b
3690 for i=0 to 3
3780 print
3870 for j=1 to 4-i
3960 k=k+1
4050 if c(k)=1 then 4320
4140 print tab(i);"+ ";
4230 goto 4410
4320 print tab(i);"o ";
4410 next j
4500 next i
4590 print ""
4680 rem ark roll analysis
4770 for i=1 to 10
4860 d=d+c(i)
4950 next i
5040 if d-m <> 0 then 5220
5130 print "gutter!!"
5220 if b<>1 or d<>10 then 5490
5310 print "strike!!!!!"
5400 q=3
5490 if b<>2 or d<>10 then 5760
5580 print "spare!!!!"
5670 q=2
5760 if b<>2 or d>=10 then 6030
5850 print "error!!!"
5940 q=1
6030 if b<>1 or d>=10 then 6210
6120 print "roll your 2nd ball"
6210 rem ark storage of the scores
6300 print 
6390 a(f*p,b)=d
6480 if b=2 then 7020
6570 b=2
6660 m=d
6750 if q=3 then 6210
6840 a(f*p,b)=d-m
6930 if q=0 then 2520
7020 a(f*p,3)=q
7110 next p
7200 f=f+1
7290 if f<11 then 2070
7295 print "frames"
7380 for i=1 to 10
7470 print i;
7560 next i
7650 print 
7740 for p=1 to r
7830 for i=1 to 3
7920 for j=1 to 10
8010 print a(j*p,i);
8100 next j
8105 print 
8190 next i
8280 print 
8370 next p
8460 print "do you want another game"
8550 input a$
8640 if left$(a$,1)="y" then 2610
8730 end
