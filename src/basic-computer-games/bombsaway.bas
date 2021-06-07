8 print "you are a pilot in a world war ii bomber."
10 input "what side -- italy(1), allies(2), japan(3), germany(4)";a
20 if a>0 and a<5 then 25
22 print "try again..." : goto 10
25 on a goto 30, 110, 200, 220
30 input "your target -- albania(1), greece(2), north africa(3)";b
40 if b>0 and b<4 then 45
42 print "try again..." : goto 30
45 print : on b goto 50, 80,90
50 print "should be easy -- you're flying a nazi-made plane."
60 goto 280
80 print "be careful!!!" : goto 280
90 print "you're going for the oil, eh?" : goto 280
110 input "aircraft -- liberator(1), b-29(2), b-17(3), lancaster(4)";g
120 if g>0 and g<5 then 125
122 print "try again..." : goto 110
125 print : on g goto 130, 150, 170, 190
130 print "you've got 2 tons of bombs flying for ploesti." : goto 280
150 print "you're dumping the a-bomb on hiroshima." : goto 280
170 print "you're chasing the bismark in the north sea." : goto 280
190 print "you're busting a german heavy water plant in the ruhr."
195 goto 280
200 print "you're flying a kamikaze mission over the uss lexington."
205 input "your first kamikaze mission(y or n)";f$
207 if f$="n" then s=0 : goto 358
210 print : if rnd(1)>.65 then 325
215 goto 380
220 print "a nazi, eh?  oh well.  are you going for russia(1),"
230 input "england(2), or france(3)";m : if m>0 and m<4 then 235
232 print "try again..." : goto 220
235 print : on m goto 250, 260, 270
250 print "you're nearing stalingrad." : goto 280
260 print "nearing london.  be careful, they've got radar." : goto 280
270 print "nearing versailles.  duck soup.  they're nearly defenseless."
280 print
285 input "how many missions have you flown";d
290 if d<160 then 300
292 print "missions, not miles..." 
295 print "150 missions is high even for old-timers."
297 print "now then, "; : goto 285
300 print:if d<100 then 310
305 print "that's pushing the odds!" : goto 320
310 if d<25 then print "fresh out of training, eh?"
320 print : if d<160*rnd(1) then 330
325 print "direct hit!!!! "int(100*rnd(1))"killed."
327 print "mission successful." : goto 390
330 print "missed target by"int(2+30*rnd(1))"miles!"
335 print "now you're really in for it !!" : print
340 input "does the enemy have guns(1), missiles(2), or both(3)";r
345 if r>0 and r<4 then 350
347 print "try again..." : goto 340
350 print : t=0 : if r=2 then 360
355 input "what's the percent hit rate of enemy gunners (10 to 50)";s
357 if s<10 then print "you lie, but you'll pay...": goto 380
358 print
360 print : if r>1 then t=35
365 if s+t>100*rnd(1) then 380
370 print "you made it through tremendous flak!!" : goto 390
380 print "* * * * boom * * * *"
384 print "you have been shot down....."
386 print "dearly beloved, we are gathered here today to pay our"
387 print "last tribute..."
390 print:print:print:input "another mission (y or n)";u$
395 if u$="y" then 8
400 print "chicken !!!" : print : end
