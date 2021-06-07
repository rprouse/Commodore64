10 print tab(33);"splat"
20 print tab(15);"creative computing  morristown, new jersey"
40 print:print:print
50 dim a(42)
95 print "welcome to 'splat' -- the game that simulates a parachute"
96 print "jump.  try to open your chute at the last possible" 
97 print "moment without going splat."
118 print:print:d1=0:v=0:a=0:n=0:m=0:d1=int(9001*rnd(1)+1000)
119 print "select your own terminal velocity (yes or no)";:input a1$    
120 if a1$="no" then 128
121 if a1$<>"yes" then print "yes or no";:input a1$:goto 120
123 print "what terminal velocity (mi/hr)";:input v1 
125 v1=v1*(5280/3600):v=v1+((v1*rnd(1))/20)-((v1*rnd(1))/20):goto 135
128 v1=int(1000*rnd(1))
130 print "ok.  terminal velocity ="v1"mi/hr"
131 v1=v1*(5280/3600):v=v1+((v1*rnd(1))/20)-((v1*rnd(1))/20) 
135  print "want to select acceleration due to gravity (yes or no)"; 
136 input b1$
140 if b1$="no" then 150
141 if b1$<>"yes" then print "yes or no";:input b1$:goto 140
143 print "what acceleration (ft/sec/sec)";:input a2 
145 a=a2+((a2*rnd(1))/20)-((a2*rnd(1))/20):goto 205
150 on int(1+(10*rnd(1)))goto 151,152,153,154,155,156,157,158,159,160 
151 print"fine. you're on mercury. acceleration=12.2 ft/sec/sec.":goto 161
152 print"all right. you're on venus. acceleration=28.3 ft/sec/sec.":goto 162
153 print "then you're on earth. acceleration=32.16 ft/sec/sec.":goto 163 
154 print"fine. you're on the moon. acceleration=5.15 ft/sec/sec.":goto 164
155 print"all right. you're on mars. acceleration=12.5 ft/sec/sec.":goto 165 
156 print"then you're on jupiter. acceleration=85.2 ft/sec/sec.":goto 166
157 print"fine. you're on saturn. acceleration=37.6 ft/sec/sec.":goto 167
158 print"all right. you're on uranus. acceleration=33.8 ft/sec/sec.":goto 168 
159 print"then you're on neptune. acceleration=39.6 ft/sec/sec.":goto 169
160 print"fine. you're on the sun. acceleration=896 ft/sec/sec.":goto 170
161 a2=12.2:goto 145 
162 a2=28.3:goto 145 
163 a2=32.16:goto 145
164 a2=5.15:goto 145 
165 a2=12.5:goto 145 
166 a2=85.2:goto 145 
167 a2=37.6:goto 145 
168 a2=33.8 :goto 145
169 a2=39.6:goto 145 
170 a2=896:goto 145
205 print
206 print "    altitude         ="d1"ft" 
207 print "    term. velocity   ="v1"ft/sec +/-5%"
208 print "    acceleration     ="a2"ft/sec/sec +/-5%"
210 print "set the timer for your freefall."
211 print "how many seconds";:input t
215 print "here we go."
217 print
218 print "time (sec)","dist to fall (ft)" 
219 print "==========","=================" 
300 for i=0 to t step (t/8)
310 if i>v/a then 400
320 d=d1-((a/2)*i^2) 
330 if d<=0 then 1000
340 print i,d
350 next i 
360 goto 500 
400 print "terminal velocity reached at t plus"v/a"seconds."
405 for i=i to t step (t/8)
410 d=d1-((v^2/(2*a))+(v*(i-(v/a)))) 
420 if d<=0 then 1010
430 print i,d
440 next i 
500 print "chute open"
510 k=0:k1=0 
550 for j=0 to 42
555 if a(j)=0 then 620 
560 k=k+1
570 if d>=a(j) then 600
580 k1=k1+1
600 next j 
610 goto 540 
620 a(j)=d 
630 if j>2 then 650
635 print "amazing!!! not bad for your ";
636 if j=0 then print "1st ";
637 if j=1 then print "2nd ";
638 if j=2 then print "3rd ";
639 print "successful jump!!!":goto 2000
650 if k-k1<=.1*k then 700 
660 if k-k1<=.25*k then 710
670 if k-k1<=.5*k then 720 
680 if k-k1<=.75*k then 730
690 if k-k1<=.9*k then 740 
695 goto 750 
700 print "wow!  that's some jumping.  of the"k"successful jumps"
701 print "before yours, only"k-k1"opened their chutes lower than" 
702 print "you did." 
703 goto 2000
710 print "pretty good! " k"successful jumps preceded yours and only"
711 print k-k1" of them got lower than you did before their chutes"
712 print "opened." :goto 2000 
720 print "not bad.  there have been"k"successful jumps before yours." 
721 print"you were beaten out by"k-k1"of them.":goto 2000  
730 print "conservative, aren't you?  you ranked only"k-k1"in the"
731 print k"successful jumps before yours.":goto 2000
740 print "humph!  don't you have any sporting blood?  there were" 
741 print k"successful jumps before yours and you came in"k1"jumps"
742 print "better than the worst.  shape up!!!":goto 2000
750 print "hey!  you pulled the rip cord much too soon.  "k"successful"
751 print "jumps before yours and you came in number"k-k1"!  get with it!" 
752 goto 2000
800 print "requiescat in pace.":goto 1950
801 print "may the angel of heaven lead you into paradise.":goto 1950 
802 print "rest in peace.":goto 1950
803 print "son-of-a-gun.":goto 1950 
804 print "#$%&&%!$":goto 1950 
805 print "a kick in the pants is a boost if you're headed right.":goto 1950
806 print "hmmm. should have picked a shorter time.":goto 1950 
807 print "mutter. mutter. mutter.":goto 1950
808 print "pushing up daisies.":goto 1950 
809 print "easy come, easy go.":goto 1950  
1000 print sqr(2*d1/a),"splat"
1005 on int(1+(10*rnd(1)))goto 800,801,802,803,804,805,806,807,808,809
1010 print (v/a)+((d1-(v^2/(2*a)))/v),"splat"
1020 goto 1005
1950 print "i'll give you another chance.":goto 2000
2000 print "do you want to play again";:input z$  
2001 if z$="yes" then 118
2002 if z$="no" then 2005
2003 print "yes or no":goto 2000
2005 print "please";:input z$:if z$="yes" then 118
2006 if z$<>"no" then print "yes or no ";:goto 2005
2007 print "ssssssssss.":print:goto 2046
2046 end
