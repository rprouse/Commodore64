10 print tab(30); "rocket"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
70 print "lunar landing simulation"
80 print "----- ------- ----------": print
100 input "do you want instructions (yes or no)";a$
110 if a$="no" then 390
160 print
200 print"you are landing on the moon and and have taken over manual"
210 print"control 1000 feet above a good landing spot. you have a down-"
220 print"ward velocity of 50 feet/sec. 150 units of fuel remain."
225 print
230 print"here are the rules that govern your apollo space-craft:": print
240 print"(1) after each second the height, velocity, and remaining fuel"
250 print"    will be reported via digby your on-board computer."
260 print"(2) after the report a '?' will appear. enter the number"
270 print"    of units of fuel you wish to burn during the next"
280 print"    second. each unit of fuel will slow your descent by"
290 print"    1 foot/sec."
310 print"(3) the maximum thrust of your engine is 30 feet/sec/sec"
320 print"    or 30 units of fuel per second."
330 print"(4) when you contact the lunar surface. your descent engine"
340 print"    will automatically shut down and you will be given a"
350 print"    report of your landing speed and remaining fuel."
360 print"(5) if you run out of fuel the '?' will no longer appear"
370 print"    but your second by second report will continue until"
380 print"    you contact the lunar surface.":print
390 print"beginning landing procedure..........":print
400 print"g o o d  l u c k ! ! !"
420 print:print
430 print"sec  feet      speed     fuel     plot of distance"
450 print
455 t=0:h=1000:v=50:f=150
490 print t;tab(6);h;tab(16);v;tab(26);f;tab(35);"i";tab(h/15);"*"
500 input b
510 if b<0 then 650
520 if b>30 then b=30
530 if b>f then b=f
540 v1=v-b+5
560 f=f-b
570 h=h- .5*(v+v1)
580 if h<=0 then 670
590 t=t+1
600 v=v1
610 if f>0 then 490
615 if b=0 then 640
620 print"**** out of fuel ****"
640 print t;tab(4);h;tab(12);v;tab(20);f;tab(29);"i";tab(h/12+29);"*"
650 b=0
660 goto 540
670 print"***** contact *****"
680 h=h+ .5*(v1+v)
690 if b=5 then 720
700 d=(-v+sqr(v*v+h*(10-2*b)))/(5-b)
710 goto 730
720 d=h/v
730 v1=v+(5-b)*d
760 print"touchdown at";t+d;"seconds."
770 print"landing velocity=";v1;"feet/sec."
780 print f;"units of fuel remaining."
790 if v1<>0 then 810
800 print"congratulations! a perfect landing!!"
805 print"your license will be renewed.......later."
810 if abs(v1)<2 then 840
820 print"***** sorry, but you blew it!!!!"
830 print"appropriate condolences will be sent to your next of kin."
840 print:print:print
850 input "another mission";a$
860 if a$="yes" then 390
870 print: print "control out.": print
999 end
