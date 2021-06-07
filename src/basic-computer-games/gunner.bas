10 print tab(30);"gunner"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
130 print "you are the officer-in-charge, giving orders to a gun"
140 print "crew, telling them the degrees of elevation you estimate"
150 print "will place a projectile on target.  a hit within 100 yards"
160 print "of the target will destroy it." : print
170 r=int(40000*rnd(1)+20000)
180 print "maximum range of your gun is";r;" yards."
185 z=0
190 print
195 s1=0
200 t=int(r*(.1+.8*rnd(1)))
210 s=0
220 goto 370
230 print "minimum elevation is one degree."
240 goto 390
250 print "maximum elevation is 89 degrees."
260 goto 390
270 print "over target by ";abs(e);"yards."
280 goto 390
290 print "short of target by "abs(e);"yards."
300 goto 390
320 print "*** target destroyed ***  ";s;"rounds of ammunition expended."
325 s1=s1+s
330 if z=4 then 490
340 z=z+1
345 print
350 print "the forward observer has sighted more enemy activity..."
360 goto 200
370 print "distance to the target is "t;" yards."
380 print
390 print
400 input "elevation";b
420 if b>89 then 250
430 if b<1 then 230
440 s=s+1
442 if s<6 then 450
444 print:print "boom !!!!   you have just been destroyed ";
446 print "by the enemy." : print : print : print : goto 495
450 b2=2*b/57.3 : i=r*sin(b2) : x=t-i : e=int(x)
460 if abs(e)<100 then 320
470 if e>100 then 290
480 goto 270
490 print : print : print "total rounds expended were:";s1
492 if s1>18 then 495
493 print "nice shooting !!" : goto 500
495 print "better go back to fort sill for refresher training!"
500 print : input "try again (y or n)";z$
510 if z$="y" then 170
520 print:print "ok.  return to base camp."
999 end
