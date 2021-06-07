10 print tab(24);"manuevers"
11 print tab(20);"creative computing"
12 print tab(18);"morristown, new jersey"
13 print:print:print
20 print "do you need instructions";
30 input x$
40 if left$(x$,1)="n" then 500
100 print
110 print "you are the pilot of the enterprise's space shuttle."
120 print "you must deliver a message to each of four starbases,"
130 print "in the least total time.  your initial position is at"
140 print "one corner of a cube, ten parsecs on a side. the bases"
150 print "are at the corners shown below, marked a, b, c, and d in"
160 print "the order in which you must visit them."
170 print "                       z"
180 print "                       :"
190 print "                       :c"
200 print "                       *--------------------* d"
210 print "                      /:                   /:"
220 print "                     / :                  / :"
230 print "                    /  :                 /  :"
240 print "                   /   :                /   :"
250 print "                  *--------------------*b   :"
260 print "                  :    :               :    :"
270 print "                  :    :               :    :"
275 print "                  :    :               :    :"
280 print "                  :    :               :    :"
285 print "                  :    :               :    :"
290 print "                  :    :               :    :"
300 print "               start>>>*---------------:----*---y"
310 print "                  :   /                :   /"
320 print "                  :  /                 :  /"
330 print "                  : /                  : /"
340 print "                 a:/                   :/"
350 print "                  *--------------------*"
360 print "                 /"
370 print "                x"
380 print "for your subspace radio to deliver the message, you"
390 print "must pass within one parsec of each starbase.  your"
400 print "propulsion system is always on, giving you a constant"
410 print "acceleration of 0.2 parsecs per stardate per stardate."
420 print "you can only control the orientation of your ship, to"
430 print "direct your thrust and acceleration.  you specify your"
440 print "ship's attitude by the angle theta (the clockwise angle"
450 print "in the x-y plane starting at the x-axis) and the angle"
460 print "psi (the angle of inclination above the x-y plane)."
470 print "you input new angles each stardate."
500 print
505 let p=3.14159/180
510 let j=1
520 dim t(4,3),c(3)
530 for x=1 to 4
540   for y=1 to 3
550     read t(x,y)
560   next y
570 next x
580 data 10,0,0,10,10,10,0,0,10,0,10,10
590 let a=.2
600 let x1=0
610 let y1=0
620 let z1=0
630 let v1=0
640 let v2=0
650 let v3=0
660 let t0=0
670 let b1=1e-03
680 let b2=1e-03
700 print "elapsed position coordinates:";
710 print tab(38);"orientation"
720 print "time     x         y         z";
730 print tab(38);"theta  ,  psi"
800 print t0;tab(8);int(1000*x1+.5)/1000;tab(18);
805 print int(1000*y1+.5)/1000;tab(28);int(1000*z1+.5)/1000;
806 print tab(38);
810 for k=0 to 1 step .02
820   let c(1)=x+k*v1+a/2*k*k*cos(b2*p)*cos(b1*p)
830   let c(2)=y+k*v2+a/2*k*k*cos(b2*p)*sin(b1*p)
840   let c(3)=z+k*v3+a/2*k*k*sin(b2*p)
850   let d=0
860   for l=1 to 3
870     let d=d+(t(j,l)-c(l))*(t(j,l)-c(l))
880   next l
890   if sqr(d)>1 goto 950
900   print:print  "message delivered to base #";j
910   print "at time";t0+k;tab(38);
920   if j=4 goto 1100
930   let j=j+1
940   goto 960
950 next k
960 let x=x1
970 let y=y1
980 let z=z1
985 let t0=t0+1
990 input  b1,b2
1030 let x1=x+v1+a/2*cos(b2*p)*cos(b1*p)
1040 let y1=y+v2+a/2*cos(b2*p)*sin(b1*p)
1050 let z1=z+v3+a/2*sin(b2*p)
1060 let v1=v1+a*cos(b2*p)*cos(b1*p)
1070 let v2=v2+a*cos(b2*p)*sin(b1*p)
1080 let v3=v3+a*sin(b2*p)
1090 goto 800
1100 print "good job.  do you want to"
1110 print "try to improve your time";
1120 input x$
1130 if left$(x$,1)="y" then 500
1140 end
