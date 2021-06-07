100 print tab(21);"close encounters"
110 print tab(20),"creative computing"
120 print tab(18);"morristown, new jersey"
130 gosub 1100
140 print:print:print
150 print "you are situated at coordinates (0,0).  a ufo is"
160 print "heading for impact at that location."
170 print
180 print "at first track, the ufo is on a course of"y"degrees ";
190 print "longitude"
200 print "and"z"degrees latitude."
210 print "   (also it's falling at a speed of"x"miles/per hour)"
220 print "you have the following alternatives:"
230 print "a) you can attempt to shoot the ufo out of the sky.  or"
240 print "b) you can do nothing, and hope that air friction"
250 print "   will cause the course of the ufo to deviate, and thus"
260 print "   miss your location.":print
270 print "what is your plan of action (a or b)";:input d$
280 print
290 if left$(d$,1)="b" then 790
300 print "launch an i.c.b.m. on a course that will intercept the ufo"
310 print "without the ufo being too close to your location.  if the ";
320 print "speed"
330 print "of the ufo exceeds"h"m.p.h., your missiles are useless!"
340 print "--scanners predict you have"m"minutes to destroy the ufo"
350 print "before it is too close to impact.":print
360 c=z-y+i-int(rnd(1)*4)+1
370 print "--computer indicates course at first sighting is approx.";c+f
380 print
390 print "type in a course on the chart belou":print
400 print
410 print "time","speed","longitude","latitude","course"
420 for t=0to 5 step .5
430 print t,x,y,z,:input a
440 if t=int(t) and t=m then 620
450 if x<=h then 490
460 print "sorry--the speed of the ufo has exceeded"h"m.p.h."
470 print "this speed is to great for your defense screen to track!"
480 print "therefore, you are (ha ha) doomed!":print:goto 750
490 if a=c then 720
500 if a>10 then 550
510 print "at that course you shot your missile straight up, so when"
520 print "it runs out of fuel in about"f"hours, it will fall";
530 print "through"
540 print "your roof!!!!!!!!!!  goodbye!!!!!!":goto 660
550 if a<200 goto 580
560 print "good work! there goes the missile--------right towards"
570 print "russia!!!! now you're definitely in trouble!!":goto 660
580 if a=c-1 then 670
590 if a=c+1 then 710
600 x=x+v+1200:y=y-i+5:z=z-i+5:c=z-y+5
610 next t
620 print "---------------attention----------------"
630 print "elapsed-time-indicates-that-"m"minutes-have-passed.--if-you-"
640 print "were-to-hit-the-ufo-now----the-force-of-the-explosion-would"
650 print "----------destroy-you-as-well-as-the-ufo-!":print
660 goto 750
670 print "you are shy of the ufo's coordinates,"
680 print "however this is only a slight deviation so the"
690 print "ufo has been destroyed!":print
710 print "you overshot the ufo's coordinates,":goto 680
720 print "fantastic!!!!  you hit the ufo exactly on projected course"
730 print "you must be very sharp!":print
740 print
750 print "try again";:input j$:if left$(j$,1)="n" then 1220
760 gosub 1100
770 gosub 1070
780 print:print:goto 340
790 print
800 f=0
810 a=int(rnd(1)*5)+1:c=z-y+a
820 m=12000
830 print "miles","speed","longitude","latitude","course"
840 print "-----","-----","---------","--------","------"
850 p=x+1
860 print m,x,y,z,c
870 c=z-y
880 x=x+int(rnd(1)*5000)+2000:m=m-x/60
890 y=y-int(rnd(1)*10):z=z-int(rnd(1)*10):c=z-y+aa2
900 if x-p>5700 then f=f+1
910 if m>0 then 850
920 print
930 print "---------impact-at-"x"-miles-per-hour--"
940 if f<=2 then 980
950 print "good work.  friction of"f"% has caused the course"
960 print "of the ufo to deviate.  impact coordinates are"
970 print "now ("f","o-f").  you made it!":goto 1020
980 print "-----------upi-wire-service----on-line-"a":"a+5":"a+10":--"
990 print "---  have just observed explosion at coordinates ("0-f",0)."
1000 a=(a+2)*a
1010 print "blast seen from"a^3"miles away.  no survivors.":print
1020 input "try again";j$
1030 if left$(j$,1)="n" then 1220
1040 gosub 1100
1050 gosub 1070
1060 print:print:goto 300
1070 input "plan (a or b)";d$
1080 if left$(d$,1)="b" then 790
1090 return
1100 i=int(rnd(1)*20)+1:v=int(rnd(1)*400)+200:f=int(rnd(1)*5)+1
1110 x=int(rnd(1)*5000)+2001:h=x+8000:q=int(rnd(1)*5)+1
1120 z=int(rnd(1)*140):if z<100 then 1120
1130 y=int(rnd(1)*60):if y<40 then 1130
1140 if x>=3000 then 1160
1150 m=5:goto 1210
1160 if x>=3700 then 1180
1170 m=4:goto 1210
1180 if x>=4700 then 1200
1190 m=3:goto 1210
1200 m=2
1210 return
1220 end
