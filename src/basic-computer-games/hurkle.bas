10 print tab(33);"hurkle"
20 print tab(15);"creative computing  morristown, new jersey"
30 print:print:print
110 n=5
120 g=10
210 print
220 print "a hurkle is hiding on a";g;"by";g;"grid. homebase"
230 print "on the grid is point 0,0 in the southwest corner,"
235 print "and any point on the grid is designated by a"
240 print "pair of whole numbers seperated by a comma. the first"
245 print "number is the horizontal position and the second number"
246 print "is the vertical position. you must try to"
250 print "guess the hurkle's gridpoint. you get";n;"tries."
260 print "after each try, i will tell you the approximate"
270 print "direction to go to look for the hurkle."
280 print
285 a=int(g*rnd(1))
286 b=int(g*rnd(1))
310 for k=1 to n
320 print "guess #";k;
330 input x,y
340 if abs(x-a)+abs(y-b)=0 then 500
350 rem print info
360 gosub 610
370 print
380 next k
410 print
420 print "sorry, that's";n;"guesses."
430 print "the hurkle is at ";a;",";b
440 print
450 print "let's play again, hurkle is hiding."
460 print
470 goto 285
500 rem
510 print
520 print "you found him in";k;"guesses!"
540 goto 440
610 print "go ";
620 if y=b then 670
630 if y<b then 660
640 print "south";
650 goto 670
660 print "north";
670 if x=a then 720
680 if x<a then 710
690 print "west";
700 goto 720
710 print "east";
720 print
730 return
999 end
