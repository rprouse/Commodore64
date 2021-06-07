2 print tab(33);"hockey"
4 print tab(15);"creative computing  morristown, new jersey"
6 print:print:print
10 rem robert puopolo alg. 1 140 mccowan 6/7/73 hockey
30 let x=1
40 print:print:print
50 print "would you like the instructions";:input c$
55 print
60 if c$="no" then 90
65 if c$="yes" then 80
70 print "answer yes or no!!":goto 50 
80 goto 1720
90 dim a$(7),b$(7),h(20),t(5),t1(5),t2(5),t3(5)
100 print "enter the two teams";:input a$(7),b$(7) 
105 print
110 print "enter the number of minutes in a game";:input t6
115 print
120 if t6<1 then 110:print 
130 print "would the " a$(7) " coach enter his team" 
135 print
140 for i=1 to 6:print "player"i;:input a$(i):next i:print 
150 print "would the " b$(7) " coach do the same"
155 print
160 for t=1 to 6:print "player"t;:input b$(t):next t:print 
170 print "input the referee for this game";:input r$  
180 print:print tab(10);a$(7) " starting lineup" 
190 for t=1 to 6:print a$(t):next t  
200 print:print tab(10);b$(7)" starting lineup"
210 for t=1 to 6:print b$(t):next t:print
220 print "we're ready for tonights opening face-off."
230 print r$ " will drop the puck between " a$(2) " and " b$(2)
240 for l=1 to t6:if l=1 then 260
250 print "and we're ready for the face-off" 
260 c=int(2*rnd(x))+1:on c goto 270,280
270 print a$(7) " has control of the puck":goto 290
280 print b$(7) " has control." 
290 print "pass";:input p:for n=1 to 3:h(n)=0:next n 
300 if p<0 then 290
305 if p>3 then 290
310 for j=1 to (p+2) 
320 h(j)=int(5*rnd(x))+1 
330 next j:if h(j-1)=h(j-2) then 310
331 if p+2<3 then 350
335 if h(j-1)=h(j-3) then 310
340 if h(j-2)=h(j-3) then 310
350 if p=0 then 360
355 goto 490
360 input "shot";s:if s<1 then 360
365 if s>4 then 360
370 on c goto 380,480
380 print a$(h(j-1));:g=h(j-1):g1=0:g2=0 
390 on s goto 400,420,440,460
400 print " let's a boomer go from the red line!!" 
410 z=10:goto 890
420 print " flips a wristshot down the ice"
440 print " backhands one in on the goaltender" 
450 z=25:goto 890
460 print " snaps a long flip shot"
470 z=17:goto 890
480 print b$(h(j-1));:g1=0:g2=0:g=h(j-1):goto 390
490 on c goto 500,640
500 on p goto 510,540,570
510 print a$(h(j-2)) " leads " a$(h(j-1)) " with a perfect pass." 
520 print a$(h(j-1)) " cutting in!!!"
530 g=h(j-1):g1=h(j-2):g2=0:z1=3:goto 770
540 print a$(h(j-2)) " gives to a streaking " a$(h(j-1))
550 print a$(h(j-3)) " comes down on " b$(5) " and " b$(4)
560 g=h(j-3):g1=h(j-1):g2=h(j-2):z1=2:goto 770
570 print "oh my god!! a ' 4 on 2 ' situation"
580 print a$(h(j-3)) " leads " a$(h(j-2))
590 print a$(h(j-2)) " is wheeeling through center."
600 print a$(h(j-2)) " gives and goes with " a$(h(j-1))
610 print "pretty passing!"
620 print a$(h(j-1)) " drops it to " a$(h(j-4))
630 g=h(j-4):g1=h(j-1):g2=h(j-2):z1=1:goto 770
640 on p goto 650,670,720
650 print b$(h(j-1)) " hits " b$(h(j-2)) " flying down the left side" 
660 g=h(j-2):g1=h(j-1):g2=0:z1=3:goto 770
670 print "it's a ' 3 on 2 '!"
680 print "only " a$(4) " and " a$(5) " are back."
690 print b$(h(j-2)) " gives off to " b$(h(j-1))
700 print b$(h(j-1)) " drops to " b$(h(j-3))
710 g=h(j-3):g1=h(j-1):g2=h(j-2):z1=2:goto 770 
720 print " a ' 3 on 2 ' with a ' trailer '!" 
730 print b$(h(j-4)) " gives to " b$(h(j-2)) " who shuffles it off to" 
740 print b$(h(j-1)) " who fires a wing to wing pass to "
750 print b$(h(j-3)) " as he cuts in alone!!"    
760 g=h(j-3):g1=h(j-1):g2=h(j-2):z1=1:goto 770 
770 print "shot";:input s:if s>4 then 770:if s<1 then 770
780 on c goto 790,880
790 print a$(g);:on s goto 800,820,840,860 
800 print " let's a big slap shot go!!"  
810 z=4:z=z+z1:goto 890
820 print " rips a wrist shot off" 
830 z=2:z=z+z1:goto 890
840 print " gets a backhand off" 
850 z=3:z=z+z1:goto 890
860 print " snaps off a snap shot"   
870 z=2:z=z+z1:goto 890
880 print b$(g);:on s goto 800,820,840,860 
890 print "area";:input a:if a<1 then 890
895 if a>4 then 890
900 on c goto 910,920
910 s2=s2+1:goto 930 
920 s3=s3+1
930 a1=int(4*rnd(x))+1:if a<>a1 then 1200
940 h(20)=int(100*rnd(x))+1
950 if int(h(20)/z)=h(20)/z then 1160
960 on c goto 970,980
970 print "goal " a$(7):h(9)=h(9)+1:goto 990 
980 print "score " b$(7):h(8)=h(8)+1   
990 for b1=1 to 25:print chr$(7);:next b1:print
1000 print "score: ";:if h(8)>h(9) then 1020
1010 print a$(7)":";h(9),b$(7)":";h(8):goto 1030
1020 print b$(7)":";h(8),a$(7)":";h(9)  
1030 on c goto 1040,1100
1040 print "goal scored by: " a$(g):if g1=0 then 1070
1050 if g2=0 then 1080
1060 print " assisted by: " a$(g1) " and " a$(g2):goto 1090 
1070 print " unassisted.":goto 1090
1080 print " assisted by: " a$(g1)
1090 t(g)=t(g)+1:t1(g1)=t1(g1)+1:t1(g2)=t1(g2)+1:goto 1540
1100 print "goal scored by: " b$(g);
1110 if g1=0 then 1130
1115 if g2=0 then 1140
1120 print " assisted by: " b$(g1) " and " b$(g2):goto 1150 
1130 print " unassisted":goto 1150
1140 print " assisted by: " b$(g1):goto 1150
1150 t2(g)=t2(g)+1:t3(g1)=t3(g1)+1:t3(g2)=t3(g2)+1:goto 1540
1160 a2=int(100*rnd(x))+1:if int(a2/4)=a2/4 then 1170
1165 goto 1200
1170 on c goto 1180,1190
1180 print "save " b$(6) " --  rebound":goto 940
1190 print "save " a$(6) " --  follow up":goto 940
1200 s1=int(6*rnd(x))+1 
1210 on c goto 1220,1380
1220 on s1 goto 1230,1260,1290,1300,1330,1350 
1230 print "kick save and a beauty by " b$(6)
1240 print "cleared out by " b$(3)
1250 goto 260 
1260 print "what a spectacular glove save by " b$(6)
1270 print "and " b$(6) " golfs it into the crowd"
1280 goto 1540
1290 print "skate save on a low steamer by " b$(6):goto 260 
1300 print "pad save by " b$(6) " off the stick" 
1310 print "of "a$(g) " and " b$(6) " covers up"
1320 goto 1540
1330 print "whistles one over the head of " b$(6) 
1340 goto 260 
1350 print b$(6) " makes a face save!! and he is hurt"
1360 print "the defenseman " b$(5) " covers up for him" 
1370 goto 1540
1380 on s1 goto 1390,1410,1440,1470,1490,1520 
1390 print "stick save by " a$(6) 
1400 print "and cleared out by " a$(4):goto 260 
1410 print "oh my god!! " b$(g) " rattles one off the post" 
1420 print "to the right of " a$(6) " and " a$(6) " covers "; 
1430 print "on the loose puck!":goto 1540 
1440 print "skate save by " a$(6)
1450 print a$(6) " whacks the loose puck into the stands" 
1460 goto 1540
1470 print "stick save by " a$(6) " and he clears it out himself" 
1480 goto 260 
1490 print "kicked out by " a$(6) 
1500 print "and it rebounds all the way to center ice"  
1510 goto 260 
1520 print "glove save " a$(6) " and he hangs on" 
1530 goto 1540
1540 next l:for n=1 to 30:print chr$(7);:next n:print "that's the siren"
1550 print:print tab(15);"final score:"
1560 if h(8)>h(9) then 1580
1570 print a$(7)":";h(9),b$(7)":";h(8):goto 1590
1580 print b$(7)":";h(8),a$(7)":";h(9)
1590 print: print tab(10);"scoring summary":print
1600 print tab(25);a$(7)
1610 print tab(5);"name";tab(20);"goals";tab(35);"assists"
1620 print tab(5);"----";tab(20);"-----";tab(35);"-------"
1630 for i=1 to 5:print tab(5);a$(i);tab(21);t(i);tab(36);t1(i) 
1640 next i:print 
1650 print tab(25);b$(7)
1660 print tab(5);"name";tab(20);"goals";tab(35);"assists"  
1670 print tab(5);"----";tab(20);"-----";tab(35);"-------"
1680 for t=1 to 5:print tab(5);b$(t);tab(21);t2(t);tab(36);t3(t)
1690 next t:print 
1700 print "shots on net":print a$(7)":";s2:print b$(7)":";s3 
1710 end
1720 print: print "this is a simulated hockey game."
1730 print "question     response"
1740 print "pass         type in the number of passes you would"
1750 print "             like to make, from 0 to 3."
1760 print "shot         type the number corresponding to the shot"
1770 print "             you want to make.  enter:"
1780 print "             1 for a slapshot"
1790 print "             2 for a wristshot"
1800 print "             3 for a backhand"
1810 print "             4 for a snap shot"
1820 print "area         type in the number corresponding to"
1830 print "             the area you are aiming at.  enter:"
1840 print "             1 for upper left hand corner"
1850 print "             2 for upper right hand corner"
1860 print "             3 for lower left hand corner"
1870 print "             4 for lower right hand corner"
1880 print
1890 print "at the start of the game, you will be asked for the names"
1900 print "of your players.  they are entered in the order: "
1910 print "left wing, center, right wing, left defense,"
1920 print "right defense, goalkeeper.  any other input required will"
1930 print "have explanatory instructions."
1940 goto 90
1950 end
