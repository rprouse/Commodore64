1 print tab(33);"mugwump"
2 print tab(15);"creative computing  morristown, new jersey"
3 print:print:print
4 rem     courtesy people's computer company
10 dim p(4,2)
20 print "the object of this game is to find four mugwumps"
30 print "hidden on a 10 by 10 grid.  homebase is position 0,0."
40 print "any guess you make must be two numbers with each"
50 print "number between 0 and 9, inclusive.  first number"
60 print "is distance to right of homebase and second number"
70 print "is distance above homebase."
80 print
90 print "you get 10 tries.  after each try, i will tell"
100 print "you how far you are from each mugwump."
110 print
240 gosub 1000
250 t=0
260 t=t+1
270 print
275 print
290 print "turn no.";t;"-- what is your guess";
300 input m,n
310 for i=1 to 4
320 if p(i,1)=-1 then 400
330 if p(i,1)<>m then 380
340 if p(i,2)<>n then 380
350 p(i,1)=-1
360 print "you have found mugwump";i
370 goto 400
380 d=sqr((p(i,1)-m)^2+(p(i,2)-n)^2)
390 print "you are";(int(d*10))/10;"units from mugwump";i
400 next i
410 for j=1 to 4
420 if p(j,1)<>-1 then 470
430 next j
440 print
450 print "you got them all in";t;"turns!"
460 goto 580
470 if t<10 then 260
480 print
490 print "sorry, that's 10 tries.  here is where they're hiding:"
540 for i=1 to 4
550 if p(i,1)=-1 then 570
560 print "mugwump";i;"is at (";p(i,1);",";p(i,2);")"
570 next i
580 print
600 print "that was fun! let's play again......."
610 print "four more mugwumps are now in hiding."
630 goto 240
1000 for j=1 to 2
1010 for i=1 to 4
1020 p(i,j)=int(10*rnd(1))
1030 next i
1040 next j
1050 return
1099 end
