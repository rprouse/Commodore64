10 print tab(33);"target"
20 print tab(15);"creative computing  morristown, new jersey"
30 print: print: print
100 r=1: r1=57.296: p=3.14159
110 print "you are the weapons officer on the starship enterprise"
120 print "and this is a test to see how accurate a shot you"
130 print "are in a three-dimensional range.  you will be told"
140 print "the radian offset for the x and z axes, the location"
150 print "of the target in three dimensional rectangular coordinates,"
160 print "the approximate number of degrees from the x and z"
170 print "axes, and the approximate distance to the target."
180 print "you will then proceeed to shoot at the target until it is"
190 print "destroyed!": print: print "good luck!!":print: print
220 a=rnd(1)*2*p: b=rnd(1)*2*p: q=int(a*r1): w=int(b*r1)
260 print "radians from x axis =";a;"   from z axis =";b
280 p1=100000*rnd(1)+rnd(1): x=sin(b)*cos(a)*p1: y=sin(b)*sin(a)*p1
290 z=cos(b)*p1
340 print "target sighted: approximate coordinates:  x=";x;"  y=";y;"  z=";z
345 r=r+1: if r>5 then 390
350 on r goto 355,360,365,370,375
355 p3=int(p1*.05)*20: goto 390
360 p3=int(p1*.1)*10: goto 390
365 p3=int(p1*.5)*2: goto 390
370 p3=int(p1): goto 390
375 p3=p1
390 print "     estimated distance:";p3
400 print:print "input angle deviation from x, deviation from z, distance";
405 input a1,b1,p2
410 print: if p2<20 then print "you blew yourself up!!": goto 580
420 a1=a1/r1: b1=b1/r1: print "radians from x axis =";a1;"  ";
425 print "from z axis =";b1
480 x1=p2*sin(b1)*cos(a1): y1=p2*sin(b1)*sin(a1): z1=p2*cos(b1)
510 d=((x1-x)^2+(y1-y)^2+(z1-z)^2)^(1/2)
520 if d>20 then 670
530 print: print " * * * hit * * *   target is non-functional": print
550 print "distance of explosion from target was";d;"kilometers."
570 print: print "mission accomplished in ";r;" shots."
580 r=0: for i=1 to 5: print: next i: print "next target...": print
590 goto 220
670 x2=x1-x: y2=y1-y: z2=z1-z: if x2<0 then 730
710 print "shot in front of target";x2;"kilometers.": goto 740
730 print "shot behind target";-x2;"kilometers."
740 if y2<0 then 770
750 print "shot to left of target";y2;"kilometers.": goto 780
770 print "shot to right of target";-y2;"kilometers."
780 if z2<0 then 810
790 print "shot above target";z2;"kilometers.": goto 820
810 print "shot below target";-z2;"kilometers."
820 print "approx position of explosion:  x=";x1;"   y=";y1;"   z=";z1
830 print "     distance from target =";d: print: print: print: goto 345
999 end
