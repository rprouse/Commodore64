3 print tab(27);"drag"
5 print tab(20);"creative computing"
7 print tab(19);"morristown new jersey"
10 dim p(2),e(2),w(2),s(2),x(2),m(2),c(2),b(2),y(2)
20 dim q(2)
30 print:print:print
35 print "welcome to drag strip."
40 print "would you like the instructions ";
50 input i$
60 if i$="no" then 110
70 print "you may race against one of your friends or you may race"
80 print "against my dragster. you will be asked to design your"
90 print "own machine, specifying hoursepower, read end ratio (x:1),"
100 print "tire width in inches and tire diameter in feet."
110 print "do you want to race against me ";
120 input i$
130 if i$="no" then 200
140 print "i will have car #1."
150 p(1)=600
160 e(1)=5.9
170 w(1)=22
180 d(1)=3.9
190 goto 290
200 print "design car #1:"
210 print "hourspower=";
220 input p(1)
230 print "rear end ratio=";
240 input e(1)
250 print "tire width*";
260 input w(1)
270 print "tire diameter=";
280 input d(1)
290 print "design car #2:"
300 print "horsepower=";
310 input p(2)
320 print "rear end ratio=";
330 input e(2)
340 print "tire width=";
350 input u(2)
360 print "tire diameter=";
370 input d(2)
380 print
390 print "go!"
400 k1=500
410 k2=1.6
420 k3=2
430 k4=6e-04
440 k5=6e-05
450 ks=.2
460 k7=4
470 k8=1.5e-04
480 q(1)=0:q(2)=0
490 s(1)=0:s(2)=0
500 x(1)=0:x(2)=0
510 rem: m is mass
520 for j=1 to 2
530 m(j)=(k1+k2*p(j)+k3*w(j)*d(j)+k7*d(j)^2)/32.2
540 rem: c is drag from wind.
550 c(j)=k4*m(j)^(2/3)+k8*w(j)*d(j)
560 rem: b is the max acceleration without burning
570 b(j)=15+28*w(j)*d(j)/((w(j)+6)*(d(j)+1))
580 rem: y is the scale factor for rpn vs pouer.
590 y(j)=3.7-3.3e-03*p(j)
600 next j
610 print
620 print
630 print "elapsed ";tab(15);"car #1";tab(39);"car #2"
640 print "time   speed     distance     speed     distance"
650 print "(sec)  (mph)      (ft)        (mph)        (ft)"
660 print
670 for t=0 to 100
680 for t1=1 to 100
690 for j=1 to 2
700 rem: r is rpm.
710 r=60*s(j)*e(j)/(3.1415926*d(j))
720 rem: l0 is engine torque.
730 l0=(p(j)/42.5)*(50+7.8e-03*(r/y(j))-4e-10*(r/y(j))^3)
740 rem; l1 is torque from friction.
750 l1=p(j)*(k5*r+k6)
760 rem: r2 is rear axle torque.
770 l2=e(j)*(l0-l1)
780 rem: f is force on road from tires.
790 f=2*l2/d(j)
800 rem: test for burn.
810 if f > m(j)+b(j) then 880
820 rem: a=acceleration
830 if q(j) <> 0 then 860
840 print "car #";j;" stops burning rubber"
850 q(j)=1
860 a=(f-c(j)*s(j)^2)/m(j)
870 goto 900
880 a=b(j)-c(j)*s(j)^2/m(j)
890 rem: s is feet in ft/sec.
900 s(j)=s(j)+a*.01
910 rem: x is distance in ft.
920 x(j)=x(j)+s(j)*.01
930 next j
940 rem: test for finish.
950 if x(1)<5280/4 and x(2)<5280/4 then 1160
960 if x(1)>x(2) then 1080
970 t3=(x(2)-5280/4)/s(2)
980 t=t+t1/100-t3
990 x(2)=5280/4
1000 x(1)=x(1)-s(1)*t3
1010 print t;"   ";s(1)*3600/5280;"  ";x(1)
1015 print s(2)*3600/5280;"   ";x(2)
1020 print tab(40);"winner"
1030 print
1040 print "do you want to try again ";
1050 input i$
1060 if i$="yes" then 110
1070 end
1080 t3=(x(1)-5280/4)/s(1)
1090 t=t+t1/100-t3
1100 x(1)=5280/4
1110 x(2)=x(2)-s(2)*t3
1120 print t;"   ";s(1)*3600/5280;"   ";x(1);
1125 print s(2)*3600/5280;"   ";x(2)
1130 print tab(10);"winner"
1140 print
1150 goto 1040
1160 next t1
1170 print t+1;"   ";s(1)*3600/5280;"   ";x(1);
1175 print s(2)*3600/5280;"   ";x(2)
1180 next t
1200 end
