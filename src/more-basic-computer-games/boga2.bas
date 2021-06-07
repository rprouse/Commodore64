10 print tab(26);"boga ii"
14 print tab(20);"creative computing"
17 print tab(18);"morristown, new jersey"
20 print:print:print
30 input "do you want instructions";q$
35 print:print
40 if left$(q$,1)<>"y" then 220
70 print "  the boga is hiding on a grid (you specify the length"
80 print "and width). try to guess his position using the hints"
90 print "i give you.  each guess is two numbers seperated by"
100 print "a comma.  please keep in mind that the boga is also"
105 print "searching for you!!!!"
110 print:print
220 u=0
240 k=1
250 f=0
260 input "how big should the grid be(20 maximum)";g
275 if g>20 or g<1 then print:goto 260
280 s=g
290 rem: prints the grid
300 input "would you like a sample grid";z$
305 if left$(z$,1)="n" then 380
310 print
318 a$=""
320 if g<10 then 332
322 for x=10 to g
324 x1=int(x/10)
326 a$=a$+chr$(x1+48)+" "
328 next x
330 print tab(25)ja$
332 a$=""
334 for x=0 to g
336 x1=x-int(x/10)*10
338 a$=a$+chr$(x1+48)+" "
340 next x
342 print tab(5)ja$
344 a$=""
346 for x=0 to g
348 a$=a$+"* "
350 next x
352 for x=0 to g
354 print x;tab(5);a$
356 next x
380 print
390 h=1
400 input "choose your position";x1,y1
411 if x1>g or x1<0 or y1>g or y1<0 then print:goto 400
420 print "the boga picks his position!"
440 x2=int(rnd(1)*g)
450 y2=int(rnd(1)*g)
460 print "guess #"k;
470 input x3,y3
471 if x3>g or x3<0 or y3>g or y3<0 then print:goto 460
480 k=k+1
490 f=f+1
500 if k=10 then 1040
510 if abs(x3-x2)+abs(y3-y2)=0 then 1010
520 print "you guessed"x3","y3
530 print
540 print "he's more to the ";
550 if x2=x3 then 620
570 print "north";
560 if x2>x3 then 600
590 goto 620
600 print "south";
620 if y2=y3 then 700
630 if y2>y3 then 670
640 print "west"
660 goto 700
670 print "east"
690 rem: lines 700-970 and 1110-1150=bogas guessing formula
700 print"":if h=0 then 730
710 x4=int(.5*s)
720 y4=int(.5*s)
730 print "the boga guesses"x4","y4
740 u=u+1
750 print ""
760 q=abs(y1-y4)+abs(x1-x4)
770 if q=0 then 980
780 h=0
790 if y4=y1 then 880
800 a=1
810 if abs(y4-y1)<2 then 830
820 gosub 1140
830 if y4<y1 then 860
840 y4=int(abs(y4-a))
850 goto 880
860 y4=int(abs(y4+a))
870 if y4>g then 1110
880 if x4=x1 then 970
890 a=1
900 if abs(x4-x1)<2 then 920
910 gosub 1140
920 if x4<x1 then 950
930 x4=int(abs(x4-a))
940 goto 970
950 x4=int(abs(x4+a))
960 if x4>g then 1130
970 goto 460
980 print "the boga guessed your position in"u"guess(es)!"
990 print
1000 goto 1050
1010 print "you guessed the boga's position in"f"guess(es)!"
1020 print
1030 goto 1050
1040 print "you used up all of your guesses."
1050 print "the boga was at"x2","y2
1060 print
1070 input "do you want to play again";q$
1080 if left$(q$,1)="y" then 220
1100 goto 1160
1110 y4=.5*g
1120 goto 880
1130 x4=.5*g
1140 a=2
1150 return
1160 end
