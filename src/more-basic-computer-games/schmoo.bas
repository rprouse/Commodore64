10 print tab(30);"schmoo"
20 print tab(15);"creative computing  morristown new jersey"
21 print
22 print
23 print
30 print "this is a new schmoo game.  schmoos"
32 print "are imaginary creatures who love"
34 print "being splatted with juicy mud balls."
36 print "you, being a schmoo lover, try to"
38 print "make schmoos happy by tossing mud"
40 print "balls at them.  you have a"
42 print "mechanical mud slinger that will"
44 print "sling mud to a maximum distance"
46 print "of 46,500 inches. your job is to"
50 print "set the mud slinger at the correct"
55 print "elevation (0 to 90) and the correct"
60 print "directional angle (0 to 360) to splat the"
65 print "schmoo.  a hit within 100 inches of the schmoo"
70 print "will splatter him."
75 print
90 print
100 k1=0
110 z=int(1+rnd(1)*4-1e-08)
120 on z goto 130,140,150,160
130 p=-1
135 q=-1
138 goto 200
140 p=-1
145 q=1
148 goto 200
150 p=1
155 q=-1
158 goto 200
160 p=1
165 q=1
200 x=(int(26000*rnd(1)+5000))*p
210 y=(int(26000*rnd(1)+5000))*q
220 s=0
230 k1=k1+1
240 if k1 < 2 then 400
250 r=int(7*rnd(1)+5)
260 goto 400
300 print "the elevation must be between 1 and 90."
310 goto 500
320 print "directional angle must be from 0 to 360."
340 goto 500
350 print "*schmoo splatted*";s;" mud balls tossed."
351 print
352 print "i see another schmoo.  to splat"
354 print "him, type mud.  to quit, type quit."
356 print
358 input c$
360 if c$="mud" then 110
361 stop
362 print "you missed the schmoo at (";x;",";y;")."
364 print "your mud hit (";int(x1);",";int(y1);")."
366 print
370 if k1 < 2 then 500
380 if s >= r then 800
390 print "schmoo mud hit ";r2;"inches from you."
395 goto 500
400 print
410 print "coordinates of the schmoo are (";x;",";y;")."
415 if k1 < 2 then 420
417 print "the schmoo is happy to be splatted."
418 print "to make you happy too,"
419 print "he will throw mud at you."
420 print
500 print "mud slinger elevation";
502 input b
504 print "directional angle of mud slinger";
506 input c
520 if b = 90 then 700
530 if b > 90 then 300
540 if b < 1 then 300
550 if c < 0 then 320
560 if c > (360-(1e-08)) then 320
570 s=s+1
580 if k1 < 2 then 595
590 r2=int(abs(300*rnd(1)*(11-2*s))+90)
595 j=3.1415926535/180
596 d=abs(int(93000*sin(b*j)*cos(b*j)))
610 x1=d*cos(c*3.1415926535/180)
620 y1=d*sin(c*3.1415926535/180)
630 d1=sqr((x-x1)^2+(y-y1)^2)
640 if 100 >= d1 then 350
650 goto 362
700 print "you dope!  you splatted yourself."
710 goto 900
800 print "the schmoo has splatted you!"
802 print "clean up and goodbye!"
900 end
