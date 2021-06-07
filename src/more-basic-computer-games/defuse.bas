1 print tab(26);"defuse"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
10 print "you are in a government experimental building with"
20 print "1,000,000 rooms in it. the building is 100 rooms"
30 print "long(0-99), 100 rooms wide(0-99), and 100 rooms high(0-99)."
40 print:print "in it a bomb is hidden. the bomb sends out signals that"
50 print "get stronger as you get closer. you have 200 seconds"
60 print "to deactivate it."
70 print:a=int(100*rnd(1)):b=int(100*rnd(1))
80 c=int(100*rnd(1)):if a>0 then 90
85 if b>0 then 90
87 if c=0 then 80
90 d=0:e=0:f=0:g=0
100 print "signal";tab(15);"l";tab(20);"w";tab(25);"h";
105 print tab(35);"sec.";tab(50);"coordinates(l,w,h)"
110 print 10000-abs((a/100+b+c*100)-(d/100+e+f*100));
112 print tab(14);d;tab(19);e;tab(24);f;tab(35);g;tab(50);
120 input d,e,f:g=g+10:if a<>d then 130
125 if b<>e then 130
127 if c=f then 170
130 if g=200 then 140
135 goto 180
140 print "boooooommm!!!":print "you blew it. the building blew up."
145 print "the bomb was located at the coordinates(l,w,h):";a;b;c:print
150 print "want to play again";
160 input z$:if left$(z$,1)="y" then 70
165 goto 999
170 print "bomb deactivated at";g;" seconds!!!":goto 150
180 if d>99 then 200
183 if d<0 then 200
185 if e>99 then 200
187 if e<0 then 200
190 if f>99 then 220
195 if f<0 then 230
197 goto 110
200 print "you walked out a window on the";:if f<4 then 240
205 print f;"th floor!!!"
210 print "you were killed and";200-g;" seconds later the building"
215 print "blew up!!!":goto 150
220 print "you are now";f*9;" feet in the air!!!":goto 210
230 print "you are now";-1*(f*9)"feet underground!!!":goto 210
240 on f goto 250,260,270
250 print " 1st floor!!!":goto 210
260 print " 2nd floor!!!":goto 210
270 print " 3rd floor!!!":goto 210
999 end
