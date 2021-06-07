1 print tab(20);"man-eating rabbit"
2 print tab(20);"creative computing"
3 print tab(18);"morristown, new jersey"
4 print:print:print
10 print "you are in a pit with a man-eating rabbit."
15 print "the center is (0,0) and it has a radius of 10"
20 print "if you can avoid the rabbit for 10 moves you will be"
25 print "released.  you and the rabbit can move only 1 space each"
26 print "however the rabbit can do multiple jumps."
27 print "you can travel at these angles"
28 print "0,45,90,135,180,225,270,315,340"
40 x=int(21*rnd(1)-10)
41 y=int(21*rnd(1)-10)
45 d=sqr(abs((x-x1)^2+(y-y1)^2))
46 if d>10 then 40
47 print
48 print
50 print "where would you like to be dropped";
51 input x1,y1
60 if sqr(abs(x1^2+y1^2))>10 then 50
65 if x<>x1 then 70
66 if y<>y1 then 70
67 print "*****squish*****"
69 print "the rabbit is dead!  you are set free!":goto 340
70 for g=1 to 10
71 d=sqr(abs((x-x1)^2+(y-y1)^2))
80 print "rabbit at (";x;",";y;") and distance ";d
90 if d=0 then 330
91 print:print "turn #";g;" human at (";x1;",";y1;")"
100 print "at what angle will you run ";
101 input a
110 if a/45<>int(a/45) then 100
111 print "running ......";:p1=1
112 m=1:if abs((int(a/10)*10)-a)<>5 then 120
113 m=sqr(2)
120 x2=(m*cos(a*(3.14159/180)))
121 y2=(m*sin(a*(3.14159/180)))
125 if sqr(((x1+x2)^2+(y1+y2)^2))<=10 then 130
126 print "you can't go into a wall!"
127 goto 100
130 x1=int(x1*1000)/1000+x2
131 y1=int(y1*1000)/1000+y2
132 x1=int(x1+.5)
133 y1=int(y1+.5)
135 print "human you are now at (";x1;",";y1;")"
136 if x<>x1 then 140
137 if y<>y1 then 140
138 print "you ran right into the rabbit!!"
139 goto 330
140 print "the rabbit is pouncing at angle.....";:p1=p1+1
150 x2=x1-x:y2=y1-y
151 if x2=0 then 280
152 if y2=0 then 300
160 b=int(atn(abs((y2/x2)))/(3.14159/180))
170 on sgn(x2)+2 goto 190,10,180
180 on sgn(y2)+2 goto 240,10,250
190 on sgn(y2)+2 goto 230,10,220
220 b=180-b:goto 250
230 b=b+180:goto 250
240 b=360-b
250 b=int(b/45+.5)*45:print b
255 m=1
256 if abs((int(b/10)*10)-b)<>5 then 260
257 m=1.5
260 x2=(m*cos(b*(3.14159/180)))
261 y2=(m*sin(b*(3.14159/180)))
270 x=int(x+x2+.5)
271 y=int(y+y2+.5)
272 goto 315
280 if y2<0 then 290
281 b=90:goto 315
290 b=270:goto 250
300 if x2<0 then 310
301 b=1:goto 250
310 b=180:goto 250
315 if sqr((x-x1)^2+(y-y1)^2)=0 then 323
320 p=int(p1*rnd(1)+1)
321 if p<>1 then 323
322 goto 140
323 next g:print "you are released!":goto 340
330 print "**crunch** well r.i.p."
340 end
