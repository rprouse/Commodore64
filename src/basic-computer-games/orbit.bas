2 print tab(33);"orbit"
4 print tab(15);"creative computing  morristown, new jersey"
6 print:print:print
10 print "somewhere above your planet is a romulan ship."
15 print
20 print "the ship is in a constant polar orbit.  its"
25 print "distance from the center of your planet is from"
30 print "10,000 to 30,000 miles and at its present velocity can"
31 print "circle your planet once every 12 to 36 hours."
35 print
40 print "unfortunately, they are using a cloaking device so"
45 print "you are unable to see them, but with a special"
50 print "instrument you can tell how near their ship your"
55 print "photon bomb exploded.  you have seven hours until they"
60 print "have built up sufficient power in order to escape"
65 print "your planet's gravity."
70 print
75 print "your planet has enough power to fire one bomb an hour."
80 print
85 print "at the beginning of each hour you will be asked to give an"
90 print "angle (between 0 and 360) and a distance in units of"
95 print "100 miles (between 100 and 300), after which your bomb's"
100 print "distance from the enemy ship will be given."
105 print
110 print "an explosion within 5,000 miles of the romulan ship"
111 print "will destroy it."
114 print
115 print "below is a diagram to help you visualize your plight."
116 print
117 print
168 print "                          90"
170 print "                    0000000000000"
171 print "                 0000000000000000000"
172 print "               000000           000000"
173 print "             00000                 00000"
174 print "            00000    xxxxxxxxxxx    00000"
175 print "           00000    xxxxxxxxxxxxx    00000"
176 print "          0000     xxxxxxxxxxxxxxx     0000"
177 print "         0000     xxxxxxxxxxxxxxxxx     0000"
178 print "        0000     xxxxxxxxxxxxxxxxxxx     0000"
179 print "180<== 00000     xxxxxxxxxxxxxxxxxxx     00000 ==>0"
180 print "        0000     xxxxxxxxxxxxxxxxxxx     0000"
181 print "         0000     xxxxxxxxxxxxxxxxx     0000"
182 print "          0000     xxxxxxxxxxxxxxx     0000"
183 print "           00000    xxxxxxxxxxxxx    00000"
184 print "            00000    xxxxxxxxxxx    00000"
185 print "             00000                 00000"
186 print "               000000           000000"
187 print "                 0000000000000000000"
188 print "                    0000000000000"
190 print "                         270"
192 print
195 print "x - your planet"
196 print "o - the orbit of the romulan ship"
197 print
198 print "on the above diagram, the romulan ship is circling"
199 print "counterclockwise around your planet.  don't forget that"
200 print "without sufficient power the romulan ship's altitude"
210 print "and orbital rate will remain constant."
220 print 
230 print "good luck.  the federation is counting on you."
270 a=int(360*rnd(1))
280 d=int(200*rnd(1)+200)
290 r=int(20*rnd(1)+10)
300 h=0
310 if h=7 then 490
320 h=h+1
325 print
326 print
330 print "this is hour";h;", at what angle do you wish to send"
335 print "your photon bomb";
340 input a1
350 print "how far out do you wish to detonate it";
360 input d1
365 print
366 print
370 a=a+r
380 if a<360 then 400
390 a=a-360
400 t=abs(a-a1)
410 if t<180 then 430
420 t=360-t
430 c=sqr(d*d+d1*d1-2*d*d1*cos(t*3.14159/180))
440 print "your photon bomb exploded";c;"*10^2 miles from the"
445 print "romulan ship."
450 if c<=50 then 470
460 goto 310
470 print "you have succesfully completed your mission."
480 goto 500
490 print "you have allowed the romulans to escape."
500 print "another romulan ship has gone into orbit."
510 print "do you wish to try to destroy it";
520 input c$
530 if c$="yes" then 270
540 print "good bye."
999 end
