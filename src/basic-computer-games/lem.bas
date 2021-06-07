2 print tab(34);"lem"
4 print tab(15);"creative computing  morristown, new jersey"
7 rem rockt2 is an interactive game that simulates a lunar
8 rem landing is similar to that of the apollo program.
9 rem there is absolutely no chance involved
10 z$="go"
15 b1=1
20 m=17.95
25 f1=5.25
30 n=7.5
35 r0=926
40 v0=1.29
45 t=0
50 h0=60
55 r=r0+h0
60 a=-3.425
65 r1=0
70 a1=8.84361e-04
75 r3=0
80 a3=0
85 m1=7.45
90 m0=m1
95 b=750
100 t1=0
105 f=0
110 p=0
115 n=1
120 m2=0
125 s=0
130 c=0
135 if z$="yes" then 1150
140 print
145 print "lunar landing simulation"
150 print
155 print "have you flown an apollo/lem mission before";
160 print " (yes or no)";
165 input q$
170 if q$="yes" then 190
175 if q$="no" then 205
180 print "just answer the question, please, ";
185 goto 160
190 print
195 print "input measurement option number";
200 goto 225
205 print
210 print "which system of measurement do you prefer?"
215 print " 1=metric     0=english"
220 print "enter the appropriate number";
225 input k
230 print
235 if k=0 then 280
240 if k=1 then 250
245 goto 220
250 z=1852.8
255 m$="meters"
260 g3=3.6
265 n$=" kilometers"
270 g5=1000
275 goto 305
280 z=6080
285 m$="feet"
290 g3=.592
295 n$="n.miles"
300 g5=z
305 if b1=3 then 670
310 if q$="yes" then 485
315 print
320 print "  you are on a lunar landing mission.  as the pilot of"
325 print "the lunar excursion module, you will be expected to"
330 print "give certain commands to the module navigation system."
335 print "the on-board computer will give a running account"
340 print "of information needed to navigate the ship."
345 print
350 print
355 print "the attitude angle called for is described as follows."
360 print "+ or -180 degrees is directly away from the moon"
365 print "-90 degrees is on a tangent in the direction of orbit"
370 print "+90 degrees is on a tangent from the direction of orbit"
375 print "0 (zero) degrees is directly toward the moon"
380 print
385 print tab(30);"-180|+180"
390 print tab(34);"^"
395 print tab(27);"-90 < -+- > +90"
400 print tab(34);"!"
405 print tab(34);"0"
410 print tab(21);"<<<< direction of orbit <<<<"
415 print
420 print tab(20);"------ surface of moon ------"
425 print
430 print
435 print "all angles between -180 and +180 degrees are accepted."
440 print
445 print "1 fuel unit = 1 sec. at max thrust"
450 print "any discrepancies are accounted for in the use of fuel"
455 print "for an attitude change."
460 print "available engine power: 0 (zero) and any value between"
465 print "10 and 100 percent."
470 print
475 print"negative thrust or time is prohibited."
480 print
485 print
490 print "input: time interval in seconds ------ (t)"
495 print "       percentage of thrust ---------- (p)"
500 print "       attitude angle in degrees ----- (a)"
505 print
510 if q$="yes" then 535
515 print "for example:"
520 print "t,p,a? 10,65,-60"
525 print "to abort the mission at any time, enter 0,0,0"
530 print
535 print "output: total time in elapsed seconds"
540 print "        height in ";m$
545 print "        distance from landing site in ";m$
550 print "        vertical velocity in ";m$;"/second"
555 print "        horizontal velocity in ";m$;"/second"
560 print "        fuel units remaining"
565 print
570 goto 670
575 print
580 print "t,p,a";
585 input t1,f,p
590 f=f/100
595 if t1<0 then 905
600 if t1=0 then 1090
605 if abs(f-.05)>1 then 945
610 if abs(f-.05)<.05 then 945
615 if abs(p)>180 then 925
620 n=20
625 if t1<400 then 635
630 n=t1/20
635 t1=t1/n
640 p=p*3.14159/180
645 s=sin(p)
650 c=cos(p)
655 m2=m0*t1*f/b
660 r3=-.5*r0*((v0/r)^2)+r*a1*a1
665 a3=-2*r1*a1/r
670 for i=1 to n
675 if m1=0 then 715
680 m1=m1-m2
685 if m1>0 then 725
690 f=f*(1+m1/m2)
695 m2=m1+m2
700 print "you are out of fuel."
705 m1=0
710 goto 725
715 f=0
720 m2=0
725 m=m-.5*m2
730 r4=r3
735 r3=-.5*r0*((v0/r)^2)+r*a1*a1
740 r2=(3*r3-r4)/2+.00526*f1*f*c/m
745 a4=a3
750 a3=-2*r1*a1/r
755 a2=(3*a3-a4)/2+.0056*f1*f*s/(m*r)
760 x=r1*t1+.5*r2*t1*t1
765 r=r+x
770 h0=h0+x
775 r1=r1+r2*t1
780 a=a+a1*t1+.5*a2*t1*t1
785 a1=a1+a2*t1
790 m=m-.5*m2
795 t=t+t1
800 if h0<3.287828e-04 then 810
805 next i
810 h=h0*z
815 h1=r1*z
820 d=r0*a*z
825 d1=r*a1*z
830 t2=m1*b/m0
835 print " ";t;tab(10);h;tab(23);d;
840 print tab(37);h1;tab(49);d1;tab(60);t2
845 if h0<3.287828e-04 then 880
850 if r0*a>164.474 then 1050
855 if m1>0 then 580
860 t1=20
865 f=0
870 p=0
875 goto 620
880 if r1<-8.21957e-04 then 1020
885 if abs(r*a1)>4.93174e-04 then 1020
890 if h0<-3.287828e-04 then 1020
895 if abs(d)>10*z then 1065
900 goto 995
905 print
910 print "this spacecraft is not able to violate the space-";
915 print "time continuum."
920 goto 575
925 print
930 print "if you want to spin around, go outside the module"
935 print "for an e.v.a."
940 goto 575
945 print
950 print "impossible thrust value ";
955 if f<0 then 985
960 if f-.05<.05 then 975
965 print "too large"
970 goto 575
975 print "too small"
980 goto 575
985 print "negative"
990 goto 575
995 print
1000 print "tranquility base here -- the eagle has landed."
1005 print "congratulations -- there was no spacecraft damage."
1010 print "you may now proceed with surface exploration."
1015 goto 1100
1020 print
1025 print "crash !!!!!!!!!!!!!!!!"
1030 print "your impact created a crater";abs(h);m$;" deep."
1035 x1=sqr(d1*d1+h1*h1)*g3
1040 print "at contact you were traveling";x1;n$;"/hr"
1045 goto 1100
1050 print
1055 print "you have been lost in space with no hope of recovery."
1060 goto 1100
1065 print "you are down safely - "
1075 print
1080 print "but missed the landing site by";abs(d/g5);n$;"."
1085 goto 1100
1090 print
1095 print "mission abended"
1100 print 
1105 print "do you want to try it again (yes/no)?"
1110 input z$
1115 if z$="yes" then 20
1120 if z$="no" then 1130
1125 goto 1105
1130 print
1135 print "too bad, the space program hates to lose experienced"
1140 print "astronauts."
1145 stop
1150 print
1155 print "ok, do you want the complete instructions or the input -"
1160 print "output statements?"
1165 print "1=complete instructions"
1170 print "2=input-output statements"
1175 print "3=neither"
1180 input b1
1185 q$="no"
1190 if b1=1 then 205
1195 q$="yes"
1200 if b1=2 then 190
1205 if b1=3 then 190
1210 goto 1165
1215 end
