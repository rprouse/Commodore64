10 print tab(25);"bocce"
20 print tab(19);"creative computing"
30 print tab(17);"morristown  new jersey"
40 print:print:print
1000 q=5
1010 print "this game simulates the game of lawn bowls"
1020 input "do you need instructions? enter yes or no";z$
1030 dim b(9),b1(9),d(9),v(9),x(9),y(9)
1040 print: if z$="yes" then gosub 1770
1045 p1=3.14159
1050 s1=0:s2=0:a=-49.3
1070 x(1)=int(2000+700*rnd(1)): y(1)=int(200-400*rnd(1))
1080 print "the jack is located at ";x(1);y(1)
1090 for p=2 to q
1100 j=p:gosub 1570
1110 next p
1120 for j=2 to q
1130 d1=d1+d(j)
1140 next j
1150 print: print "the total distance of all balls from the jack is ";
1155 print d1;" cm"
1160 if d1 < q^2 then print "magnificent bowling! what an eye!!"
1165 if d1 < q^2 then 1230
1170 if d1<2*q^2 then print"excellent but could be better:":goto 1230
1180 if d1 < 3*q^2 then print "good but needs some improvement":goto1230
1190 if d1 < 6*q^2 then print "fair - you need more practice":goto 1230
1200 if d1 < 10*q^2 then print "poor - try to be more consistant":goto 1230
1210 if d1 < 20*q^2 then print "your game needs lots of work":goto 1230
1220 print "don't play this game for money!!"
1230 for j=1 to q
1232 b(j)=0:b1(j)=0:d(j)=0
1240 v(j)=0:x(j)=0:y(j)=0
1250 next j
1260 print:input "care to try again? enter yes or no";y$
1270 print: if y$="yes" then 1050
1280 goto 1890
1290 k1=-20
1295 if j=1 then k1=0
1300 a1=a*cos(b(j))+k1*cos((p1/2)+b(j))
1305 a2=a*sin(b(j))+k1*sin((p1/2)+b(j))
1310 s3=v(j)*cos(b(j))*.05+1.25e-03*a1
1315 s4=v(j)*sin(b(j))*.05+1.25e-03*a2
1320 b(j)=atn((v(j)*sin(b(j))+a2*.05)/(v(j)*cos(b(j))+a1*.05))
1330 if b1(j)< 0 then s4=-s4
1340 s5=s1+s3: s6=s2+s4
1350 if j=1 then 1370
1360 if abs(s5-x(1))<7 and abs(s6-y(1))<7 then k=1:gosub 1550
1370 for k=2 to q
1380 if k=j or x(k)=0 then 1400
1390 if abs(s5-x(k))< 10 and abs(s6-y(k))< 10 then gosub 1500
1400 next k
1410 if v(j)<abs(a*.05) then 1440
1420 v(j)=v(j)+(a*.05):s1=s5:s2=s6:goto 1290
1430 goto 1290
1440 x(j)=x(j)+s5: y(j)=y(j)+s6:s1=0:s2=0:s5=0:s6=0
1450 for l=1 to q
1460 if v(l)>abs(a*.05) then j=l:goto  1290
1470 b(l)=0:v(l)=0
1480 next l
1490 goto 1630
1500 b(k)=atn((y(k)-s2)/(x(k)-s1)): print chr$(7);
1510 if j=1 then v(j)=v(j)/5
1520 v(j)=abs(v(j)*sin(b(j)-b(k))):v(k)=abs(v(j)*cos(b(j)-b(k)))
1530 b(j)=((p1/2)+b(k)): s5=s1: s6=s2
1540 if k=1 then v(k)=5*v(k)
1550 if j=1 then v(j)=5*v(j)
1560 return
1570 print "ball ";(j-1)
1580 input "velocity";v(j):v(j)=abs(v(j))
1590 if v(j) > 1000 then print "velocity too high":goto 1580
1600 input "angle";b1(j)
1610 if abs(b1(j))> 89 then print "angle to big":goto 1290
1620 print : b(j)=abs(b(j)*p1/180):goto 1290
1630 print "jack at coordinates ";x(1);y(1)
1640 for m=2 to p
1650 d=(sqr((y(1)-y(m))^2+(x(1)-x(m))^2))-7
1655 d(m)=d
1660 if d < 0 then d(m)=0
1670 print"ball ";(m-1);" at coordinates ";x(m);y(m);" it is ";d(m);
1675 print "from the jack"
1680 next m
1690 print
1700 if d(p) < 10 then print tab(15);"excellent shot! ";:goto 1740
1710 if d(p) < 20 then print tab(15);"good shooting! ";:goto 1740
1720 if d(p)< 30 then print tab(15);"nice try !";:goto 1740
1730 if d(p)>500 then print tab(5);"yech! over ";int(d(p)/30.48);
1735 if d(p) > 500 then print "feet away!"
1740 if x(p)>x(1) then print "long and ";
1745 if x(p)< x(1) then print "short and ";
1750 if y(p)>y(1) then print "to the left "
1755 if y(p) < y(1) then print "to the right"
1760 print
1765 return
1770 print "in this game you roll ";q-1;"balls successively at a targ";
1775 print "et"
1780 print "ball (called a jack). the object is to get the balls as close"
1790 print "to the jack as possible.  the balls are 10 cm in diameter and"
1800 print "are weighted so that they roll in a curve. you will have to"
1810 print "roll them at an angle to the line from you at coordinates 0,0"
1820 print "to the jack at coordinates x,y. a positive angle will make"
1830 print "the ball curve clockwise. a negative angle will make it curve"
1840 print "anti-clockwise.  the jack is a 4 cm wide and will roll"
1850 print "straight if you hit it.  balls hit by your thrown ball may"
1860 print "curve in either direction."
1870 print:print "hint. try an initial velocity of 500 and an angle of 10"
1880 print:print:return
1890 end
